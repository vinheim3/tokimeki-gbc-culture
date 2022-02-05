; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $052", ROMX[$4000], BANK[$52]

	add b                                            ; $4000: $80
	cp $f0                                           ; $4001: $fe $f0
	cp a                                             ; $4003: $bf
	ld a, b                                          ; $4004: $78
	rla                                              ; $4005: $17
	db $fd                                           ; $4006: $fd
	rst SubAFromHL                                          ; $4007: $d7
	sbc $ac                                          ; $4008: $de $ac
	cp b                                             ; $400a: $b8
	ret nz                                           ; $400b: $c0

	rst SubAFromBC                                          ; $400c: $e7
	ld hl, sp-$05                                    ; $400d: $f8 $fb
	cpl                                              ; $400f: $2f
	xor [hl]                                         ; $4010: $ae
	ld e, h                                          ; $4011: $5c
	ld e, h                                          ; $4012: $5c
	db $fc                                           ; $4013: $fc
	rst $38                                          ; $4014: $ff
	sbc h                                            ; $4015: $9c
	ld a, [$48f6]                                    ; $4016: $fa $f6 $48
	ld h, h                                          ; $4019: $64
	ld [hl], b                                       ; $401a: $70
	rst $38                                          ; $401b: $ff
	inc bc                                           ; $401c: $03
	ld a, h                                          ; $401d: $7c
	db $fc                                           ; $401e: $fc
	ldh a, [$7e]                                     ; $401f: $f0 $7e
	jp z, $fc83                                      ; $4021: $ca $83 $fc

	ld d, h                                          ; $4024: $54
	ld [hl], $8e                                     ; $4025: $36 $8e
	ld a, [hl+]                                      ; $4027: $2a
	ld d, $05                                        ; $4028: $16 $05
	inc bc                                           ; $402a: $03
	dec b                                            ; $402b: $05
	cp d                                             ; $402c: $ba
	jp c, $3efa                                      ; $402d: $da $fa $3e

	ld e, $0e                                        ; $4030: $1e $0e
	ld b, $03                                        ; $4032: $06 $03
	ldh [$72], a                                     ; $4034: $e0 $72
	pop af                                           ; $4036: $f1
	ld hl, sp-$04                                    ; $4037: $f8 $fc
	ld l, [hl]                                       ; $4039: $6e
	xor $ea                                          ; $403a: $ee $ea
	db $fc                                           ; $403c: $fc

jr_052_403d:
	db $fc                                           ; $403d: $fc
	ld a, [hl]                                       ; $403e: $7e
	ld a, e                                          ; $403f: $7b
	ld c, a                                          ; $4040: $4f
	rst SubAFromDE                                          ; $4041: $df
	rst $38                                          ; $4042: $ff
	add b                                            ; $4043: $80
	ld d, [hl]                                       ; $4044: $56
	xor d                                            ; $4045: $aa
	add hl, hl                                       ; $4046: $29
	ld d, l                                          ; $4047: $55
	sub h                                            ; $4048: $94
	ld a, [bc]                                       ; $4049: $0a
	ld a, d                                          ; $404a: $7a
	ld [hl], d                                       ; $404b: $72
	xor c                                            ; $404c: $a9
	ld d, l                                          ; $404d: $55

jr_052_404e:
	ld d, [hl]                                       ; $404e: $56
	ld a, [hl+]                                      ; $404f: $2a
	dec hl                                           ; $4050: $2b
	or l                                             ; $4051: $b5
	sub l                                            ; $4052: $95
	sbc l                                            ; $4053: $9d
	ld hl, sp+$50                                    ; $4054: $f8 $50
	ld l, b                                          ; $4056: $68
	inc h                                            ; $4057: $24
	or d                                             ; $4058: $b2
	sub d                                            ; $4059: $92
	ld e, c                                          ; $405a: $59
	ld e, c                                          ; $405b: $59
	jr c, @-$4e                                      ; $405c: $38 $b0

	sbc b                                            ; $405e: $98
	call c, Call_052_6e4e                            ; $405f: $dc $4e $6e
	and a                                            ; $4062: $a7
	sbc d                                            ; $4063: $9a
	and a                                            ; $4064: $a7
	jr c, @+$73                                      ; $4065: $38 $71

	ret nc                                           ; $4067: $d0

	sbc b                                            ; $4068: $98
	sbc $1a                                          ; $4069: $de $1a
	sbc e                                            ; $406b: $9b
	sub d                                            ; $406c: $92
	ccf                                              ; $406d: $3f
	ld a, [hl]                                       ; $406e: $7e
	cp a                                             ; $406f: $bf
	db $dd                                           ; $4070: $dd
	ccf                                              ; $4071: $3f
	sub c                                            ; $4072: $91
	cp a                                             ; $4073: $bf
	ld [hl], $b4                                     ; $4074: $36 $b4
	or h                                             ; $4076: $b4
	inc [hl]                                         ; $4077: $34
	inc c                                            ; $4078: $0c
	ld l, $1c                                        ; $4079: $2e $1c
	ld a, [de]                                       ; $407b: $1a
	ld hl, sp+$78                                    ; $407c: $f8 $78
	ld a, b                                          ; $407e: $78
	ld hl, sp-$10                                    ; $407f: $f8 $f0
	sbc $e0                                          ; $4081: $de $e0
	rst SubAFromDE                                          ; $4083: $df
	add b                                            ; $4084: $80
	sbc d                                            ; $4085: $9a

Call_052_4086:
	ld c, b                                          ; $4086: $48
	rst $38                                          ; $4087: $ff
	ld d, b                                          ; $4088: $50
	inc b                                            ; $4089: $04
	inc b                                            ; $408a: $04
	halt                                             ; $408b: $76
	ld bc, $ff9d                                     ; $408c: $01 $9d $ff
	cpl                                              ; $408f: $2f
	cp $99                                           ; $4090: $fe $99
	ld [$4c98], sp                                   ; $4092: $08 $98 $4c
	db $fc                                           ; $4095: $fc

jr_052_4096:
	pop af                                           ; $4096: $f1
	jr nc, jr_052_4096                               ; $4097: $30 $fd

	ld a, l                                          ; $4099: $7d
	sbc l                                            ; $409a: $9d
	db $fd                                           ; $409b: $fd
	sub [hl]                                         ; $409c: $96
	ld [hl], $c6                                     ; $409d: $36 $c6
	jp $0363                                         ; $409f: $c3 $63 $03


	ld bc, $5141                                     ; $40a2: $01 $41 $51
	ld bc, $1b7a                                     ; $40a5: $01 $7a $1b
	db $fd                                           ; $40a8: $fd
	sub [hl]                                         ; $40a9: $96
	ld a, d                                          ; $40aa: $7a
	jr nc, jr_052_403d                               ; $40ab: $30 $90

	sbc b                                            ; $40ad: $98
	cp b                                             ; $40ae: $b8
	stop                                             ; $40af: $10 $00
	inc b                                            ; $40b1: $04
	db $fd                                           ; $40b2: $fd
	halt                                             ; $40b3: $76
	rst GetHLinHL                                          ; $40b4: $cf
	ld a, a                                          ; $40b5: $7f
	jr nz, jr_052_404e                               ; $40b6: $20 $96

	ei                                               ; $40b8: $fb
	ld [hl], $2c                                     ; $40b9: $36 $2c
	sbc h                                            ; $40bb: $9c
	ld l, h                                          ; $40bc: $6c
	jr jr_052_40f7                                   ; $40bd: $18 $38

	ld [hl], b                                       ; $40bf: $70
	ld h, b                                          ; $40c0: $60
	reti                                             ; $40c1: $d9


	rst $38                                          ; $40c2: $ff
	ld a, a                                          ; $40c3: $7f
	db $db                                           ; $40c4: $db
	ld a, [hl]                                       ; $40c5: $7e
	cp [hl]                                          ; $40c6: $be
	ld a, a                                          ; $40c7: $7f
	ld e, b                                          ; $40c8: $58
	sbc l                                            ; $40c9: $9d
	inc b                                            ; $40ca: $04
	ld [$ffd9], sp                                   ; $40cb: $08 $d9 $ff
	sbc l                                            ; $40ce: $9d
	xor c                                            ; $40cf: $a9
	ret                                              ; $40d0: $c9


	sbc $db                                          ; $40d1: $de $db
	sbc d                                            ; $40d3: $9a
	cp e                                             ; $40d4: $bb
	xor e                                            ; $40d5: $ab
	xor d                                            ; $40d6: $aa
	or $f6                                           ; $40d7: $f6 $f6
	sbc $e4                                          ; $40d9: $de $e4
	sub h                                            ; $40db: $94
	call nz, $d5d4                                   ; $40dc: $c4 $d4 $d5
	db $f4                                           ; $40df: $f4
	db $f4                                           ; $40e0: $f4
	or $f2                                           ; $40e1: $f6 $f2
	push af                                          ; $40e3: $f5
	call nc, $dadc                                   ; $40e4: $d4 $dc $da
	sbc $08                                          ; $40e7: $de $08
	add b                                            ; $40e9: $80
	inc c                                            ; $40ea: $0c
	ld c, $2f                                        ; $40eb: $0e $2f
	daa                                              ; $40ed: $27
	daa                                              ; $40ee: $27
	adc c                                            ; $40ef: $89
	and b                                            ; $40f0: $a0
	sbc h                                            ; $40f1: $9c
	inc c                                            ; $40f2: $0c
	ld b, a                                          ; $40f3: $47
	add d                                            ; $40f4: $82
	ldh [$60], a                                     ; $40f5: $e0 $60

jr_052_40f7:
	ld b, [hl]                                       ; $40f7: $46

Call_052_40f8:
	ld b, a                                          ; $40f8: $47
	ld h, e                                          ; $40f9: $63
	ld [hl], e                                       ; $40fa: $73
	add hl, sp                                       ; $40fb: $39
	dec a                                            ; $40fc: $3d
	rra                                              ; $40fd: $1f
	sbc a                                            ; $40fe: $9f
	and b                                            ; $40ff: $a0
	ld hl, sp+$5e                                    ; $4100: $f8 $5e
	rra                                              ; $4102: $1f
	rrca                                             ; $4103: $0f
	add a                                            ; $4104: $87
	rst JumpTable                                          ; $4105: $c7
	ld h, e                                          ; $4106: $63
	ld a, a                                          ; $4107: $7f
	ccf                                              ; $4108: $3f
	sbc [hl]                                         ; $4109: $9e
	cp a                                             ; $410a: $bf
	ld a, e                                          ; $410b: $7b
	rla                                              ; $410c: $17
	ld a, l                                          ; $410d: $7d
	jp z, $7e8e                                      ; $410e: $ca $8e $7e

	ccf                                              ; $4111: $3f
	rrca                                             ; $4112: $0f
	pop bc                                           ; $4113: $c1
	rst $38                                          ; $4114: $ff
	rst $38                                          ; $4115: $ff
	cp a                                             ; $4116: $bf
	ld a, a                                          ; $4117: $7f
	rst $38                                          ; $4118: $ff
	pop af                                           ; $4119: $f1
	cp $ff                                           ; $411a: $fe $ff
	ld a, $00                                        ; $411c: $3e $00
	ld h, b                                          ; $411e: $60
	ret nz                                           ; $411f: $c0

	rrca                                             ; $4120: $0f
	ld l, c                                          ; $4121: $69
	and a                                            ; $4122: $a7
	ld a, [hl]                                       ; $4123: $7e
	add $9e                                          ; $4124: $c6 $9e
	nop                                              ; $4126: $00
	ld [hl], l                                       ; $4127: $75
	ld c, h                                          ; $4128: $4c
	sub h                                            ; $4129: $94
	nop                                              ; $412a: $00
	db $fc                                           ; $412b: $fc
	ldh a, [c]                                       ; $412c: $f2
	ld sp, hl                                        ; $412d: $f9
	ldh a, [$f0]                                     ; $412e: $f0 $f0
	ldh [$c0], a                                     ; $4130: $e0 $c0
	nop                                              ; $4132: $00
	inc e                                            ; $4133: $1c
	dec de                                           ; $4134: $1b
	ld l, h                                          ; $4135: $6c
	adc $93                                          ; $4136: $ce $93
	ld [hl], b                                       ; $4138: $70
	or $c4                                           ; $4139: $f6 $c4
	ret nz                                           ; $413b: $c0

	ld h, b                                          ; $413c: $60
	jr nz, jr_052_413f                               ; $413d: $20 $00

jr_052_413f:
	nop                                              ; $413f: $00
	ldh [$fc], a                                     ; $4140: $e0 $fc
	db $fc                                           ; $4142: $fc
	ld hl, sp+$77                                    ; $4143: $f8 $77
	add hl, sp                                       ; $4145: $39
	ld a, a                                          ; $4146: $7f
	ld [hl], d                                       ; $4147: $72
	ld [hl], l                                       ; $4148: $75
	jr z, @+$01                                      ; $4149: $28 $ff

	ld a, a                                          ; $414b: $7f
	inc a                                            ; $414c: $3c
	ld l, a                                          ; $414d: $6f
	ldh [$97], a                                     ; $414e: $e0 $97
	db $eb                                           ; $4150: $eb
	push hl                                          ; $4151: $e5
	push af                                          ; $4152: $f5
	push af                                          ; $4153: $f5
	db $f4                                           ; $4154: $f4
	db $fc                                           ; $4155: $fc
	rst $38                                          ; $4156: $ff
	ldh a, [$da]                                     ; $4157: $f0 $da
	rst $38                                          ; $4159: $ff
	add b                                            ; $415a: $80
	ldh a, [$29]                                     ; $415b: $f0 $29
	add hl, sp                                       ; $415d: $39
	cp l                                             ; $415e: $bd
	sub l                                            ; $415f: $95
	sbc h                                            ; $4160: $9c
	sbc $ce                                          ; $4161: $de $ce
	xor $de                                          ; $4163: $ee $de
	adc $ce                                          ; $4165: $ce $ce
	xor $e7                                          ; $4167: $ee $e7
	rst SubAFromBC                                          ; $4169: $e7
	rst FarCall                                          ; $416a: $f7
	rst FarCall                                          ; $416b: $f7
	ld c, b                                          ; $416c: $48
	inc l                                            ; $416d: $2c
	inc l                                            ; $416e: $2c
	inc h                                            ; $416f: $24
	sub [hl]                                         ; $4170: $96
	sbc d                                            ; $4171: $9a
	sbc e                                            ; $4172: $9b
	ld c, l                                          ; $4173: $4d
	or a                                             ; $4174: $b7
	db $d3                                           ; $4175: $d3
	db $d3                                           ; $4176: $d3
	db $db                                           ; $4177: $db
	ld l, c                                          ; $4178: $69
	ld l, l                                          ; $4179: $6d
	sub c                                            ; $417a: $91
	ld l, l                                          ; $417b: $6d
	cp a                                             ; $417c: $bf
	add $4e                                          ; $417d: $c6 $4e
	inc c                                            ; $417f: $0c
	ld [hl], h                                       ; $4180: $74

Jump_052_4181:
	db $f4                                           ; $4181: $f4
	or h                                             ; $4182: $b4
	inc [hl]                                         ; $4183: $34
	jr nc, jr_052_4205                               ; $4184: $30 $7f

	ccf                                              ; $4186: $3f
	ccf                                              ; $4187: $3f
	ld a, a                                          ; $4188: $7f
	halt                                             ; $4189: $76
	cp [hl]                                          ; $418a: $be
	add h                                            ; $418b: $84
	add hl, de                                       ; $418c: $19
	db $10                                           ; $418d: $10
	inc d                                            ; $418e: $14
	inc c                                            ; $418f: $0c
	ld c, $08                                        ; $4190: $0e $08
	ld bc, $e201                                     ; $4192: $01 $01 $e2
	ldh [$e0], a                                     ; $4195: $e0 $e0
	ldh a, [$f0]                                     ; $4197: $f0 $f0
	db $f4                                           ; $4199: $f4
	db $fc                                           ; $419a: $fc
	db $fc                                           ; $419b: $fc
	ld bc, $0347                                     ; $419c: $01 $47 $03
	call nz, $a0a0                                   ; $419f: $c4 $a0 $a0
	ldh [$a0], a                                     ; $41a2: $e0 $a0
	nop                                              ; $41a4: $00
	nop                                              ; $41a5: $00
	ccf                                              ; $41a6: $3f
	db $fd                                           ; $41a7: $fd
	sbc e                                            ; $41a8: $9b
	ld [$1e81], sp                                   ; $41a9: $08 $81 $1e
	rst $38                                          ; $41ac: $ff
	ld a, e                                          ; $41ad: $7b
	adc [hl]                                         ; $41ae: $8e
	sbc e                                            ; $41af: $9b
	inc c                                            ; $41b0: $0c
	inc l                                            ; $41b1: $2c
	ld [bc], a                                       ; $41b2: $02
	rst $38                                          ; $41b3: $ff
	ld [hl], d                                       ; $41b4: $72
	pop bc                                           ; $41b5: $c1
	sub e                                            ; $41b6: $93
	nop                                              ; $41b7: $00
	inc sp                                           ; $41b8: $33
	ld c, [hl]                                       ; $41b9: $4e
	ld hl, sp-$5f                                    ; $41ba: $f8 $a1
	pop bc                                           ; $41bc: $c1
	sub a                                            ; $41bd: $97
	xor l                                            ; $41be: $ad
	and b                                            ; $41bf: $a0
	nop                                              ; $41c0: $00
	add c                                            ; $41c1: $81
	rst $38                                          ; $41c2: $ff
	ld a, c                                          ; $41c3: $79
	ld e, h                                          ; $41c4: $5c
	sbc e                                            ; $41c5: $9b
	ld [de], a                                       ; $41c6: $12
	rra                                              ; $41c7: $1f
	inc c                                            ; $41c8: $0c
	ld l, h                                          ; $41c9: $6c
	sbc $e7                                          ; $41ca: $de $e7
	sbc d                                            ; $41cc: $9a
	ld h, d                                          ; $41cd: $62
	nop                                              ; $41ce: $00
	ld [$93f3], sp                                   ; $41cf: $08 $f3 $93
	sbc $18                                          ; $41d2: $de $18
	sub h                                            ; $41d4: $94
	sbc l                                            ; $41d5: $9d
	rst $38                                          ; $41d6: $ff
	rst $38                                          ; $41d7: $ff
	inc b                                            ; $41d8: $04
	inc b                                            ; $41d9: $04
	ld b, $07                                        ; $41da: $06 $07
	add e                                            ; $41dc: $83
	add e                                            ; $41dd: $83
	add a                                            ; $41de: $87
	rlca                                             ; $41df: $07
	ld l, h                                          ; $41e0: $6c
	inc [hl]                                         ; $41e1: $34
	ld a, a                                          ; $41e2: $7f
	add hl, de                                       ; $41e3: $19
	rst $38                                          ; $41e4: $ff
	rst SubAFromDE                                          ; $41e5: $df
	add hl, sp                                       ; $41e6: $39
	sbc e                                            ; $41e7: $9b
	sbc c                                            ; $41e8: $99
	pop de                                           ; $41e9: $d1
	dec d                                            ; $41ea: $15
	add hl, sp                                       ; $41eb: $39
	reti                                             ; $41ec: $d9


	rst $38                                          ; $41ed: $ff
	sub e                                            ; $41ee: $93
	ld [$6aca], a                                    ; $41ef: $ea $ca $6a
	xor b                                            ; $41f2: $a8
	ldh [$60], a                                     ; $41f3: $e0 $60
	ldh [$e0], a                                     ; $41f5: $e0 $e0
	sub l                                            ; $41f7: $95
	or l                                             ; $41f8: $b5
	or l                                             ; $41f9: $b5
	ld [hl], a                                       ; $41fa: $77
	halt                                             ; $41fb: $76
	db $10                                           ; $41fc: $10
	add a                                            ; $41fd: $87
	adc $6d                                          ; $41fe: $ce $6d
	ld h, l                                          ; $4200: $65
	jr nz, @-$56                                     ; $4201: $20 $a8

	cp b                                             ; $4203: $b8
	sub h                                            ; $4204: $94

jr_052_4205:
	ld d, h                                          ; $4205: $54
	inc sp                                           ; $4206: $33
	sub e                                            ; $4207: $93
	sbc e                                            ; $4208: $9b
	rst SubAFromDE                                          ; $4209: $df
	rst SubAFromDE                                          ; $420a: $df
	rst GetHLinHL                                          ; $420b: $cf
	rst AddAOntoHL                                          ; $420c: $ef
	rst AddAOntoHL                                          ; $420d: $ef
	jr c, jr_052_4224                                ; $420e: $38 $14

	ld b, $83                                        ; $4210: $06 $83
	jp $2041                                         ; $4212: $c3 $41 $20


	db $10                                           ; $4215: $10
	ld a, c                                          ; $4216: $79
	sub h                                            ; $4217: $94
	call c, Call_052_7dff                            ; $4218: $dc $ff $7d
	adc d                                            ; $421b: $8a
	sbc c                                            ; $421c: $99
	dec bc                                           ; $421d: $0b
	add a                                            ; $421e: $87
	db $e3                                           ; $421f: $e3
	ld sp, hl                                        ; $4220: $f9
	rst AddAOntoHL                                          ; $4221: $ef
	ld l, a                                          ; $4222: $6f
	halt                                             ; $4223: $76

jr_052_4224:
	call c, $7e83                                    ; $4224: $dc $83 $7e
	sbc a                                            ; $4227: $9f
	sbc a                                            ; $4228: $9f
	ret c                                            ; $4229: $d8

	rst $38                                          ; $422a: $ff
	rst $38                                          ; $422b: $ff
	ld a, h                                          ; $422c: $7c
	rst FarCall                                          ; $422d: $f7
	rst AddAOntoHL                                          ; $422e: $ef
	db $fd                                           ; $422f: $fd
	db $dd                                           ; $4230: $dd
	pop de                                           ; $4231: $d1
	add b                                            ; $4232: $80
	add b                                            ; $4233: $80
	jp $1fef                                         ; $4234: $c3 $ef $1f


	rra                                              ; $4237: $1f
	cp c                                             ; $4238: $b9
	add hl, sp                                       ; $4239: $39
	db $fc                                           ; $423a: $fc
	ld hl, sp+$78                                    ; $423b: $f8 $78
	ldh a, [rSVBK]                                   ; $423d: $f0 $70
	ret nz                                           ; $423f: $c0

	and b                                            ; $4240: $a0
	ret nc                                           ; $4241: $d0

	ld a, b                                          ; $4242: $78
	ld [hl+], a                                      ; $4243: $22
	sbc d                                            ; $4244: $9a
	ret nz                                           ; $4245: $c0

	add b                                            ; $4246: $80
	ret nz                                           ; $4247: $c0

	ldh [$e0], a                                     ; $4248: $e0 $e0
	ei                                               ; $424a: $fb
	sbc l                                            ; $424b: $9d
	jr nc, jr_052_4286                               ; $424c: $30 $38

	ld a, [$f775]                                    ; $424e: $fa $75 $f7
	ldh a, [$dd]                                     ; $4251: $f0 $dd
	ld bc, $f667                                     ; $4253: $01 $67 $f6
	ld a, [hl]                                       ; $4256: $7e
	ld h, b                                          ; $4257: $60
	sbc [hl]                                         ; $4258: $9e
	sbc h                                            ; $4259: $9c
	sbc $8c                                          ; $425a: $de $8c
	add b                                            ; $425c: $80
	sbc h                                            ; $425d: $9c
	cp b                                             ; $425e: $b8
	db $fc                                           ; $425f: $fc
	sbc [hl]                                         ; $4260: $9e
	adc a                                            ; $4261: $8f
	add a                                            ; $4262: $87
	add [hl]                                         ; $4263: $86
	add [hl]                                         ; $4264: $86
	inc b                                            ; $4265: $04
	inc c                                            ; $4266: $0c
	rst $38                                          ; $4267: $ff
	daa                                              ; $4268: $27
	ld h, b                                          ; $4269: $60
	rlca                                             ; $426a: $07
	rst FarCall                                          ; $426b: $f7
	and a                                            ; $426c: $a7
	ld l, a                                          ; $426d: $6f
	cp e                                             ; $426e: $bb
	ccf                                              ; $426f: $3f
	rra                                              ; $4270: $1f
	rra                                              ; $4271: $1f
	jr @+$0a                                         ; $4272: $18 $08

	ld e, b                                          ; $4274: $58
	db $10                                           ; $4275: $10
	inc b                                            ; $4276: $04
	rst $38                                          ; $4277: $ff
	rst $38                                          ; $4278: $ff
	pop bc                                           ; $4279: $c1
	add a                                            ; $427a: $87
	jp c, Jump_052_699c                              ; $427b: $da $9c $69

	cp $f6                                           ; $427e: $fe $f6
	db $dd                                           ; $4280: $dd
	rst $38                                          ; $4281: $ff
	add b                                            ; $4282: $80
	cp h                                             ; $4283: $bc
	rst JumpTable                                          ; $4284: $c7
	ld b, a                                          ; $4285: $47

jr_052_4286:
	ld a, b                                          ; $4286: $78
	ld sp, $f5b5                                     ; $4287: $31 $b5 $f5
	scf                                              ; $428a: $37
	dec de                                           ; $428b: $1b
	jp c, $1a9b                                      ; $428c: $da $9b $1a

	ld a, $be                                        ; $428f: $3e $be
	ld a, [hl]                                       ; $4291: $7e
	inc a                                            ; $4292: $3c
	inc a                                            ; $4293: $3c
	ld a, l                                          ; $4294: $7d
	cp h                                             ; $4295: $bc
	dec a                                            ; $4296: $3d
	jp $9f93                                         ; $4297: $c3 $93 $9f


	ld a, $3e                                        ; $429a: $3e $3e
	ld e, $1e                                        ; $429c: $1e $1e
	ld l, $3c                                        ; $429e: $2e $3c
	ld l, h                                          ; $42a0: $6c
	ld h, b                                          ; $42a1: $60
	rst SubAFromDE                                          ; $42a2: $df
	ret nz                                           ; $42a3: $c0

	rst SubAFromDE                                          ; $42a4: $df
	ldh [$99], a                                     ; $42a5: $e0 $99
	ret nc                                           ; $42a7: $d0

	jr nz, jr_052_42ac                               ; $42a8: $20 $02

	db $10                                           ; $42aa: $10
	inc b                                            ; $42ab: $04

jr_052_42ac:
	inc b                                            ; $42ac: $04
	sbc $80                                          ; $42ad: $de $80
	sbc e                                            ; $42af: $9b
	ld [$0818], sp                                   ; $42b0: $08 $18 $08
	ld [$99fd], sp                                   ; $42b3: $08 $fd $99
	inc c                                            ; $42b6: $0c
	ld e, $3f                                        ; $42b7: $1e $3f
	inc hl                                           ; $42b9: $23
	jr nc, jr_052_42d8                               ; $42ba: $30 $1c

	ld [hl], h                                       ; $42bc: $74
	and l                                            ; $42bd: $a5
	add c                                            ; $42be: $81
	ld a, [hl]                                       ; $42bf: $7e
	ld h, c                                          ; $42c0: $61
	ld h, b                                          ; $42c1: $60
	ld a, b                                          ; $42c2: $78
	ld a, [hl]                                       ; $42c3: $7e
	ccf                                              ; $42c4: $3f
	and b                                            ; $42c5: $a0
	add b                                            ; $42c6: $80
	ret nz                                           ; $42c7: $c0

	ret nz                                           ; $42c8: $c0

	ld h, b                                          ; $42c9: $60
	inc e                                            ; $42ca: $1c
	add a                                            ; $42cb: $87
	pop hl                                           ; $42cc: $e1
	rra                                              ; $42cd: $1f
	ccf                                              ; $42ce: $3f
	ccf                                              ; $42cf: $3f
	rst $38                                          ; $42d0: $ff
	ccf                                              ; $42d1: $3f
	rrca                                             ; $42d2: $0f
	inc bc                                           ; $42d3: $03
	add b                                            ; $42d4: $80
	ld [$1c1c], sp                                   ; $42d5: $08 $1c $1c

jr_052_42d8:
	dec [hl]                                         ; $42d8: $35
	dec [hl]                                         ; $42d9: $35
	dec l                                            ; $42da: $2d
	ld a, l                                          ; $42db: $7d
	cp $d9                                           ; $42dc: $fe $d9
	rst $38                                          ; $42de: $ff
	rst $38                                          ; $42df: $ff
	rst SubAFromDE                                          ; $42e0: $df
	ret nz                                           ; $42e1: $c0

	sbc e                                            ; $42e2: $9b
	and b                                            ; $42e3: $a0
	sub b                                            ; $42e4: $90
	add h                                            ; $42e5: $84
	jp nz, $ffde                                     ; $42e6: $c2 $de $ff

	ld a, a                                          ; $42e9: $7f
	ld a, l                                          ; $42ea: $7d
	ld a, a                                          ; $42eb: $7f
	ldh [hDisp1_WX], a                                     ; $42ec: $e0 $96
	add c                                            ; $42ee: $81
	add hl, sp                                       ; $42ef: $39
	inc a                                            ; $42f0: $3c
	ld e, $58                                        ; $42f1: $1e $58
	ld e, h                                          ; $42f3: $5c
	ld e, [hl]                                       ; $42f4: $5e
	ld a, [hl+]                                      ; $42f5: $2a
	cp [hl]                                          ; $42f6: $be
	reti                                             ; $42f7: $d9


	rst $38                                          ; $42f8: $ff
	sbc e                                            ; $42f9: $9b
	ldh [c], a                                       ; $42fa: $e2
	ldh a, [c]                                       ; $42fb: $f2

jr_052_42fc:
	ldh a, [c]                                       ; $42fc: $f2
	pop af                                           ; $42fd: $f1
	sbc $f9                                          ; $42fe: $de $f9
	ld l, h                                          ; $4300: $6c
	add e                                            ; $4301: $83
	sbc $ff                                          ; $4302: $de $ff
	sub a                                            ; $4304: $97
	ld c, d                                          ; $4305: $4a
	ld hl, $1021                                     ; $4306: $21 $21 $10
	ld [$8684], sp                                   ; $4309: $08 $84 $86
	jp $326c                                         ; $430c: $c3 $6c $32


	rst SubAFromDE                                          ; $430f: $df
	rst $38                                          ; $4310: $ff
	sbc e                                            ; $4311: $9b
	ld [$8106], sp                                   ; $4312: $08 $06 $81
	ldh [$78], a                                     ; $4315: $e0 $78
	ld l, [hl]                                       ; $4317: $6e
	sbc [hl]                                         ; $4318: $9e
	add e                                            ; $4319: $83
	reti                                             ; $431a: $d9


	rst $38                                          ; $431b: $ff
	add b                                            ; $431c: $80
	cpl                                              ; $431d: $2f
	rra                                              ; $431e: $1f
	adc e                                            ; $431f: $8b
	ld a, l                                          ; $4320: $7d
	rra                                              ; $4321: $1f
	adc l                                            ; $4322: $8d
	db $fd                                           ; $4323: $fd

jr_052_4324:
	db $fc                                           ; $4324: $fc
	ldh a, [$f0]                                     ; $4325: $f0 $f0
	db $fc                                           ; $4327: $fc
	cp $f0                                           ; $4328: $fe $f0
	cp $fb                                           ; $432a: $fe $fb
	di                                               ; $432c: $f3
	pop de                                           ; $432d: $d1
	ld sp, hl                                        ; $432e: $f9
	ei                                               ; $432f: $fb
	ei                                               ; $4330: $fb
	ret c                                            ; $4331: $d8

	rst AddAOntoHL                                          ; $4332: $ef
	cp a                                             ; $4333: $bf
	or a                                             ; $4334: $b7
	add hl, sp                                       ; $4335: $39
	add hl, de                                       ; $4336: $19
	rra                                              ; $4337: $1f
	add hl, de                                       ; $4338: $19
	inc a                                            ; $4339: $3c
	jr nc, jr_052_42fc                               ; $433a: $30 $c0

	sub d                                            ; $433c: $92
	ld a, b                                          ; $433d: $78
	ret nz                                           ; $433e: $c0

	add sp, -$74                                     ; $433f: $e8 $8c
	sbc b                                            ; $4341: $98
	jr nc, jr_052_4324                               ; $4342: $30 $e0

	ret nz                                           ; $4344: $c0

	ldh a, [$c8]                                     ; $4345: $f0 $c8
	db $fc                                           ; $4347: $fc
	ld hl, sp-$10                                    ; $4348: $f8 $f0
	db $fd                                           ; $434a: $fd
	sbc h                                            ; $434b: $9c
	dec sp                                           ; $434c: $3b
	inc e                                            ; $434d: $1c
	inc e                                            ; $434e: $1c
	db $fc                                           ; $434f: $fc
	sbc l                                            ; $4350: $9d
	ld b, $02                                        ; $4351: $06 $02
	ld a, [$309b]                                    ; $4353: $fa $9b $30

jr_052_4356:
	ld b, b                                          ; $4356: $40
	ld [$fe98], sp                                   ; $4357: $08 $98 $fe
	ld a, h                                          ; $435a: $7c
	db $dd                                           ; $435b: $dd
	sbc [hl]                                         ; $435c: $9e
	jr nz, jr_052_43d9                               ; $435d: $20 $7a

	db $10                                           ; $435f: $10
	ld [hl], l                                       ; $4360: $75
	add b                                            ; $4361: $80
	sbc $03                                          ; $4362: $de $03
	sbc h                                            ; $4364: $9c
	rlca                                             ; $4365: $07
	inc bc                                           ; $4366: $03
	rrca                                             ; $4367: $0f
	sbc $01                                          ; $4368: $de $01
	sbc $02                                          ; $436a: $de $02
	rst SubAFromDE                                          ; $436c: $df
	ld b, $df                                        ; $436d: $06 $df
	ld hl, sp-$22                                    ; $436f: $f8 $de
	ldh a, [$df]                                     ; $4371: $f0 $df
	ldh [hDisp0_LCDC], a                                     ; $4373: $e0 $82
	ret nz                                           ; $4375: $c0

	inc c                                            ; $4376: $0c
	ld a, [bc]                                       ; $4377: $0a
	dec e                                            ; $4378: $1d
	add hl, de                                       ; $4379: $19
	inc de                                           ; $437a: $13
	dec [hl]                                         ; $437b: $35
	inc hl                                           ; $437c: $23
	ld l, l                                          ; $437d: $6d
	ld a, l                                          ; $437e: $7d
	xor $ea                                          ; $437f: $ee $ea
	ld [hl], $8f                                     ; $4381: $36 $8f
	inc h                                            ; $4383: $24
	sub $35                                          ; $4384: $d6 $35
	nop                                              ; $4386: $00
	db $10                                           ; $4387: $10
	inc d                                            ; $4388: $14
	ret z                                            ; $4389: $c8

	ld [hl], b                                       ; $438a: $70
	ret c                                            ; $438b: $d8

	jr z, jr_052_4356                                ; $438c: $28 $c8

	ld d, d                                          ; $438e: $52
	ld h, d                                          ; $438f: $62
	jp hl                                            ; $4390: $e9


	ld h, c                                          ; $4391: $61
	ld a, c                                          ; $4392: $79
	or b                                             ; $4393: $b0
	adc d                                            ; $4394: $8a
	jr nc, @+$62                                     ; $4395: $30 $60

	ret nz                                           ; $4397: $c0

	ld b, b                                          ; $4398: $40
	jr nz, jr_052_43fb                               ; $4399: $20 $60

	ld h, b                                          ; $439b: $60
	jr nz, jr_052_43be                               ; $439c: $20 $20

	ld a, [bc]                                       ; $439e: $0a
	ld c, $0d                                        ; $439f: $0e $0d
	adc l                                            ; $43a1: $8d
	db $e4                                           ; $43a2: $e4
	ld h, [hl]                                       ; $43a3: $66
	daa                                              ; $43a4: $27
	ld h, d                                          ; $43a5: $62
	dec a                                            ; $43a6: $3d
	dec a                                            ; $43a7: $3d
	ccf                                              ; $43a8: $3f
	cp a                                             ; $43a9: $bf
	ld [hl], l                                       ; $43aa: $75
	ld a, h                                          ; $43ab: $7c
	sbc [hl]                                         ; $43ac: $9e
	ld c, $7a                                        ; $43ad: $0e $7a
	sub a                                            ; $43af: $97
	rst SubAFromDE                                          ; $43b0: $df
	ccf                                              ; $43b1: $3f
	sbc l                                            ; $43b2: $9d
	dec a                                            ; $43b3: $3d
	inc a                                            ; $43b4: $3c
	ld [hl], h                                       ; $43b5: $74
	ld b, h                                          ; $43b6: $44
	rst SubAFromDE                                          ; $43b7: $df
	ret nz                                           ; $43b8: $c0

	sub l                                            ; $43b9: $95
	jp nz, $92c3                                     ; $43ba: $c2 $c3 $92

	db $fc                                           ; $43bd: $fc

jr_052_43be:
	ld c, d                                          ; $43be: $4a
	jr z, jr_052_43e7                                ; $43bf: $28 $26

	ld [hl+], a                                      ; $43c1: $22
	db $10                                           ; $43c2: $10
	sub c                                            ; $43c3: $91
	halt                                             ; $43c4: $76
	jr nc, jr_052_4441                               ; $43c5: $30 $7a

	xor a                                            ; $43c7: $af
	sub e                                            ; $43c8: $93
	ld h, b                                          ; $43c9: $60
	add h                                            ; $43ca: $84
	inc b                                            ; $43cb: $04
	dec b                                            ; $43cc: $05
	dec c                                            ; $43cd: $0d
	add hl, bc                                       ; $43ce: $09
	dec hl                                           ; $43cf: $2b
	dec bc                                           ; $43d0: $0b
	dec de                                           ; $43d1: $1b
	dec bc                                           ; $43d2: $0b
	inc bc                                           ; $43d3: $03
	ld [bc], a                                       ; $43d4: $02
	ld [hl], e                                       ; $43d5: $73
	ld l, [hl]                                       ; $43d6: $6e
	sbc e                                            ; $43d7: $9b
	ld a, b                                          ; $43d8: $78

jr_052_43d9:
	ld e, $0f                                        ; $43d9: $1e $0f
	rlca                                             ; $43db: $07
	ld [hl], l                                       ; $43dc: $75
	inc b                                            ; $43dd: $04
	sbc l                                            ; $43de: $9d
	ldh [$f8], a                                     ; $43df: $e0 $f8
	ld l, [hl]                                       ; $43e1: $6e
	call Call_052_7e97                               ; $43e2: $cd $97 $7e
	rra                                              ; $43e5: $1f
	add a                                            ; $43e6: $87

jr_052_43e7:
	db $e3                                           ; $43e7: $e3
	rst $38                                          ; $43e8: $ff
	rst $38                                          ; $43e9: $ff
	ld hl, sp-$08                                    ; $43ea: $f8 $f8
	ld a, d                                          ; $43ec: $7a
	or h                                             ; $43ed: $b4
	sbc h                                            ; $43ee: $9c
	nop                                              ; $43ef: $00
	jp $deec                                         ; $43f0: $c3 $ec $de


	ldh a, [$9d]                                     ; $43f3: $f0 $9d
	ld a, h                                          ; $43f5: $7c
	cp $7b                                           ; $43f6: $fe $7b
	rst SubAFromBC                                          ; $43f8: $e7
	ld a, a                                          ; $43f9: $7f
	ldh a, [c]                                       ; $43fa: $f2

jr_052_43fb:
	ld a, a                                          ; $43fb: $7f
	push bc                                          ; $43fc: $c5
	sub c                                            ; $43fd: $91
	ldh a, [$f8]                                     ; $43fe: $f0 $f8
	inc e                                            ; $4400: $1c
	and $18                                          ; $4401: $e6 $18
	ld b, $ff                                        ; $4403: $06 $ff
	ld a, a                                          ; $4405: $7f
	ccf                                              ; $4406: $3f
	rla                                              ; $4407: $17
	rlca                                             ; $4408: $07
	nop                                              ; $4409: $00
	add b                                            ; $440a: $80
	ldh [$72], a                                     ; $440b: $e0 $72
	or d                                             ; $440d: $b2
	ld a, d                                          ; $440e: $7a
	ld a, d                                          ; $440f: $7a
	ld [hl], a                                       ; $4410: $77
	ldh [c], a                                       ; $4411: $e2
	ld a, c                                          ; $4412: $79
	ld h, [hl]                                       ; $4413: $66
	ld a, [hl]                                       ; $4414: $7e
	add e                                            ; $4415: $83
	db $db                                           ; $4416: $db
	rst $38                                          ; $4417: $ff
	sub a                                            ; $4418: $97
	ld a, a                                          ; $4419: $7f
	db $e3                                           ; $441a: $e3
	pop af                                           ; $441b: $f1
	ld e, h                                          ; $441c: $5c
	db $db                                           ; $441d: $db
	push hl                                          ; $441e: $e5
	jp Jump_052_78c1                                 ; $441f: $c3 $c1 $78


	ld l, h                                          ; $4422: $6c
	sub c                                            ; $4423: $91
	rst SubAFromDE                                          ; $4424: $df
	db $db                                           ; $4425: $db
	push af                                          ; $4426: $f5
	db $e3                                           ; $4427: $e3
	pop bc                                           ; $4428: $c1
	pop bc                                           ; $4429: $c1
	ldh a, [rIE]                                     ; $442a: $f0 $ff
	rst SubAFromDE                                          ; $442c: $df
	rst SubAFromDE                                          ; $442d: $df
	ld c, a                                          ; $442e: $4f
	ld l, l                                          ; $442f: $6d
	dec l                                            ; $4430: $2d
	inc l                                            ; $4431: $2c
	reti                                             ; $4432: $d9


	rst $38                                          ; $4433: $ff
	sub l                                            ; $4434: $95
	push af                                          ; $4435: $f5
	ei                                               ; $4436: $fb
	db $fd                                           ; $4437: $fd
	or a                                             ; $4438: $b7
	db $db                                           ; $4439: $db
	reti                                             ; $443a: $d9


	call z, $fbec                                    ; $443b: $cc $ec $fb
	db $fc                                           ; $443e: $fc
	ld l, a                                          ; $443f: $6f
	sub b                                            ; $4440: $90

jr_052_4441:
	sub h                                            ; $4441: $94
	ld l, l                                          ; $4442: $6d
	ccf                                              ; $4443: $3f
	db $e3                                           ; $4444: $e3
	add b                                            ; $4445: $80
	rst $38                                          ; $4446: $ff
	rst SubAFromDE                                          ; $4447: $df
	rst GetHLinHL                                          ; $4448: $cf
	ld c, a                                          ; $4449: $4f
	sbc [hl]                                         ; $444a: $9e
	rst $38                                          ; $444b: $ff
	nop                                              ; $444c: $00
	call c, $9bff                                    ; $444d: $dc $ff $9b
	db $fc                                           ; $4450: $fc
	cp a                                             ; $4451: $bf
	ld l, a                                          ; $4452: $6f
	ld a, c                                          ; $4453: $79
	ld [hl], l                                       ; $4454: $75
	ld d, $7e                                        ; $4455: $16 $7e
	ld c, c                                          ; $4457: $49
	ld a, [hl]                                       ; $4458: $7e
	and d                                            ; $4459: $a2
	ld [hl], d                                       ; $445a: $72
	ld b, b                                          ; $445b: $40
	ld a, e                                          ; $445c: $7b
	sub l                                            ; $445d: $95
	sbc [hl]                                         ; $445e: $9e
	ret nz                                           ; $445f: $c0

	ld [hl], d                                       ; $4460: $72
	jr c, @+$01                                      ; $4461: $38 $ff

	ld l, [hl]                                       ; $4463: $6e
	jr nc, jr_052_44e1                               ; $4464: $30 $7b

	ld hl, sp+$7f                                    ; $4466: $f8 $7f
	inc hl                                           ; $4468: $23
	sbc [hl]                                         ; $4469: $9e
	pop bc                                           ; $446a: $c1
	halt                                             ; $446b: $76
	push bc                                          ; $446c: $c5
	db $dd                                           ; $446d: $dd
	rst $38                                          ; $446e: $ff
	add d                                            ; $446f: $82
	rlca                                             ; $4470: $07
	rra                                              ; $4471: $1f
	cpl                                              ; $4472: $2f
	rst $38                                          ; $4473: $ff
	cp $fe                                           ; $4474: $fe $fe
	db $fc                                           ; $4476: $fc
	db $fc                                           ; $4477: $fc
	inc c                                            ; $4478: $0c
	inc c                                            ; $4479: $0c
	dec e                                            ; $447a: $1d
	ld sp, hl                                        ; $447b: $f9
	ei                                               ; $447c: $fb
	ldh a, [c]                                       ; $447d: $f2
	or $f6                                           ; $447e: $f6 $f6
	ldh [c], a                                       ; $4480: $e2
	add l                                            ; $4481: $85
	ld c, e                                          ; $4482: $4b
	or d                                             ; $4483: $b2
	ld h, d                                          ; $4484: $62
	add [hl]                                         ; $4485: $86
	ld hl, sp-$71                                    ; $4486: $f8 $8f
	add l                                            ; $4488: $85
	jp nz, $0d84                                     ; $4489: $c2 $84 $0d

	dec e                                            ; $448c: $1d
	ld a, e                                          ; $448d: $7b
	or [hl]                                          ; $448e: $b6
	add a                                            ; $448f: $87
	xor $45                                          ; $4490: $ee $45
	xor b                                            ; $4492: $a8
	cp l                                             ; $4493: $bd
	ld a, [$d0a8]                                    ; $4494: $fa $a8 $d0
	call nc, $b810                                   ; $4497: $d4 $10 $b8
	ld d, b                                          ; $449a: $50
	ld b, b                                          ; $449b: $40
	nop                                              ; $449c: $00
	ld d, e                                          ; $449d: $53
	dec l                                            ; $449e: $2d
	pop hl                                           ; $449f: $e1
	or b                                             ; $44a0: $b0
	ld a, d                                          ; $44a1: $7a

Call_052_44a2:
	jr c, jr_052_44dc                                ; $44a2: $38 $38

	rrca                                             ; $44a4: $0f
	ld l, $bc                                        ; $44a5: $2e $bc
	cp [hl]                                          ; $44a7: $be
	ld a, d                                          ; $44a8: $7a
	push bc                                          ; $44a9: $c5
	sub d                                            ; $44aa: $92
	ld h, b                                          ; $44ab: $60
	ld [hl], b                                       ; $44ac: $70
	sub c                                            ; $44ad: $91
	inc de                                           ; $44ae: $13
	ld de, $b8f8                                     ; $44af: $11 $f8 $b8
	jr z, jr_052_44de                                ; $44b2: $28 $2a

	ld l, d                                          ; $44b4: $6a
	xor e                                            ; $44b5: $ab
	pop de                                           ; $44b6: $d1
	ld d, b                                          ; $44b7: $50
	ld [hl], h                                       ; $44b8: $74
	ld b, h                                          ; $44b9: $44
	halt                                             ; $44ba: $76
	cp [hl]                                          ; $44bb: $be
	add h                                            ; $44bc: $84
	ld a, d                                          ; $44bd: $7a
	ld a, a                                          ; $44be: $7f
	dec a                                            ; $44bf: $3d
	dec sp                                           ; $44c0: $3b
	inc de                                           ; $44c1: $13
	rlca                                             ; $44c2: $07
	ld h, e                                          ; $44c3: $63
	add c                                            ; $44c4: $81
	add l                                            ; $44c5: $85
	add b                                            ; $44c6: $80
	jp nz, $ecc4                                     ; $44c7: $c2 $c4 $ec

	ld hl, sp-$64                                    ; $44ca: $f8 $9c
	ld a, [hl]                                       ; $44cc: $7e
	adc l                                            ; $44cd: $8d
	sbc l                                            ; $44ce: $9d
	dec e                                            ; $44cf: $1d
	ld a, c                                          ; $44d0: $79
	inc sp                                           ; $44d1: $33
	ld [de], a                                       ; $44d2: $12
	or [hl]                                          ; $44d3: $b6
	adc [hl]                                         ; $44d4: $8e
	ld h, b                                          ; $44d5: $60
	ld h, b                                          ; $44d6: $60
	ldh [$78], a                                     ; $44d7: $e0 $78
	pop af                                           ; $44d9: $f1
	sub l                                            ; $44da: $95
	ld b, b                                          ; $44db: $40

jr_052_44dc:
	ld [hl], b                                       ; $44dc: $70
	sbc e                                            ; $44dd: $9b

jr_052_44de:
	cp e                                             ; $44de: $bb
	ld a, a                                          ; $44df: $7f
	ld a, e                                          ; $44e0: $7b

jr_052_44e1:
	jp c, $fbda                                      ; $44e1: $da $da $fb

	db $db                                           ; $44e4: $db
	ld sp, hl                                        ; $44e5: $f9
	sbc e                                            ; $44e6: $9b
	ld h, h                                          ; $44e7: $64
	halt                                             ; $44e8: $76
	sub $d6                                          ; $44e9: $d6 $d6
	ld a, e                                          ; $44eb: $7b
	add b                                            ; $44ec: $80
	adc [hl]                                         ; $44ed: $8e
	ldh a, [$9b]                                     ; $44ee: $f0 $9b
	adc c                                            ; $44f0: $89
	add hl, hl                                       ; $44f1: $29
	add hl, hl                                       ; $44f2: $29
	ld bc, $0301                                     ; $44f3: $01 $01 $03
	rrca                                             ; $44f6: $0f
	ld a, a                                          ; $44f7: $7f
	ld a, a                                          ; $44f8: $7f
	ld [hl], b                                       ; $44f9: $70
	ld a, $3f                                        ; $44fa: $3e $3f
	ld a, a                                          ; $44fc: $7f
	ld [hl], b                                       ; $44fd: $70
	ld [hl], b                                       ; $44fe: $70
	ld a, e                                          ; $44ff: $7b
	ld e, h                                          ; $4500: $5c
	rst SubAFromDE                                          ; $4501: $df
	ldh [hDisp0_WX], a                                     ; $4502: $e0 $89
	rst GetHLinHL                                          ; $4504: $cf
	ret nc                                           ; $4505: $d0

	ldh [$c3], a                                     ; $4506: $e0 $c3
	jp hl                                            ; $4508: $e9


	inc a                                            ; $4509: $3c
	rrca                                             ; $450a: $0f
	di                                               ; $450b: $f3
	reti                                             ; $450c: $d9


	ld d, h                                          ; $450d: $54
	ld a, [bc]                                       ; $450e: $0a
	ld bc, $18f0                                     ; $450f: $01 $f0 $18

Call_052_4512:
	ld b, $01                                        ; $4512: $06 $01
	ldh [$38], a                                     ; $4514: $e0 $38
	inc c                                            ; $4516: $0c
	ld hl, sp-$04                                    ; $4517: $f8 $fc
	cp $7a                                           ; $4519: $fe $7a
	db $d3                                           ; $451b: $d3
	sub b                                            ; $451c: $90
	rst SubAFromDE                                          ; $451d: $df
	ccf                                              ; $451e: $3f
	nop                                              ; $451f: $00
	add b                                            ; $4520: $80
	ld b, b                                          ; $4521: $40
	jr nz, jr_052_4544                               ; $4522: $20 $20

	and b                                            ; $4524: $a0
	ld h, b                                          ; $4525: $60
	jr nz, jr_052_4547                               ; $4526: $20 $1f

	rrca                                             ; $4528: $0f
	rlca                                             ; $4529: $07
	dec bc                                           ; $452a: $0b
	rlca                                             ; $452b: $07
	ld a, c                                          ; $452c: $79
	ei                                               ; $452d: $fb
	ld a, d                                          ; $452e: $7a
	or c                                             ; $452f: $b1
	ld a, [hl]                                       ; $4530: $7e
	ld a, b                                          ; $4531: $78
	ld a, d                                          ; $4532: $7a
	ld [hl], a                                       ; $4533: $77
	sub a                                            ; $4534: $97
	jp $e4c2                                         ; $4535: $c3 $c2 $e4


	add sp, -$30                                     ; $4538: $e8 $d0
	ld hl, sp-$1c                                    ; $453a: $f8 $e4
	jp nz, $f877                                     ; $453c: $c2 $77 $f8

	rst SubAFromDE                                          ; $453f: $df
	ld hl, sp+$7f                                    ; $4540: $f8 $7f
	ld hl, sp-$21                                    ; $4542: $f8 $df

jr_052_4544:
	or h                                             ; $4544: $b4
	rst SubAFromDE                                          ; $4545: $df
	xor [hl]                                         ; $4546: $ae

jr_052_4547:
	sbc $9a                                          ; $4547: $de $9a
	sbc h                                            ; $4549: $9c
	jp c, $efef                                      ; $454a: $da $ef $ef

	db $db                                           ; $454d: $db
	rst FarCall                                          ; $454e: $f7
	sub a                                            ; $454f: $97
	and h                                            ; $4550: $a4
	and [hl]                                         ; $4551: $a6
	sub [hl]                                         ; $4552: $96
	ld d, d                                          ; $4553: $52
	ld d, d                                          ; $4554: $52
	ld d, e                                          ; $4555: $53
	ld c, e                                          ; $4556: $4b
	ld c, c                                          ; $4557: $49
	reti                                             ; $4558: $d9


	rst $38                                          ; $4559: $ff
	sbc h                                            ; $455a: $9c
	ld h, a                                          ; $455b: $67
	daa                                              ; $455c: $27
	daa                                              ; $455d: $27
	sbc $22                                          ; $455e: $de $22
	sbc l                                            ; $4560: $9d
	ld [de], a                                       ; $4561: $12
	ld d, d                                          ; $4562: $52
	jp c, Jump_052_7fff                              ; $4563: $da $ff $7f

	add hl, sp                                       ; $4566: $39
	sbc b                                            ; $4567: $98
	cp l                                             ; $4568: $bd
	cp h                                             ; $4569: $bc
	sub h                                            ; $456a: $94
	sub $d6                                          ; $456b: $d6 $d6
	or $ee                                           ; $456d: $f6 $ee
	ld [hl], e                                       ; $456f: $73
	di                                               ; $4570: $f3
	sbc h                                            ; $4571: $9c
	cp a                                             ; $4572: $bf
	sbc a                                            ; $4573: $9f
	sub a                                            ; $4574: $97
	ld a, d                                          ; $4575: $7a

Jump_052_4576:
	or h                                             ; $4576: $b4
	sbc d                                            ; $4577: $9a
	ld l, a                                          ; $4578: $6f
	ld c, a                                          ; $4579: $4f
	ld c, a                                          ; $457a: $4f
	ld c, [hl]                                       ; $457b: $4e
	ld c, [hl]                                       ; $457c: $4e
	db $dd                                           ; $457d: $dd
	rst $38                                          ; $457e: $ff
	halt                                             ; $457f: $76
	ret c                                            ; $4580: $d8

	adc h                                            ; $4581: $8c
	add b                                            ; $4582: $80
	ld a, b                                          ; $4583: $78
	ld c, h                                          ; $4584: $4c
	adc $27                                          ; $4585: $ce $27
	rst FarCall                                          ; $4587: $f7
	ld hl, sp+$75                                    ; $4588: $f8 $75
	rst $38                                          ; $458a: $ff
	add a                                            ; $458b: $87
	add e                                            ; $458c: $83
	ld hl, $7070                                     ; $458d: $21 $70 $70
	ld [hl], e                                       ; $4590: $73
	ld a, [$7e7c]                                    ; $4591: $fa $7c $7e
	ld a, $dc                                        ; $4594: $3e $dc
	ccf                                              ; $4596: $3f
	add b                                            ; $4597: $80
	or $f7                                           ; $4598: $f6 $f7
	db $eb                                           ; $459a: $eb
	jp hl                                            ; $459b: $e9


	jp hl                                            ; $459c: $e9


	pop hl                                           ; $459d: $e1
	ldh [$e1], a                                     ; $459e: $e0 $e1
	rlca                                             ; $45a0: $07
	daa                                              ; $45a1: $27
	rla                                              ; $45a2: $17
	adc e                                            ; $45a3: $8b

Jump_052_45a4:
	ld a, [bc]                                       ; $45a4: $0a
	dec bc                                           ; $45a5: $0b
	sub e                                            ; $45a6: $93
	rst FarCall                                          ; $45a7: $f7
	rst $38                                          ; $45a8: $ff
	rra                                              ; $45a9: $1f
	adc a                                            ; $45aa: $8f
	ld b, a                                          ; $45ab: $47
	ld h, a                                          ; $45ac: $67
	and [hl]                                         ; $45ad: $a6
	adc $ce                                          ; $45ae: $ce $ce
	rst $38                                          ; $45b0: $ff
	ld e, h                                          ; $45b1: $5c
	pop hl                                           ; $45b2: $e1
	or d                                             ; $45b3: $b2
	or $bb                                           ; $45b4: $f6 $bb
	ld sp, $bb9e                                     ; $45b6: $31 $9e $bb
	ld a, e                                          ; $45b9: $7b
	jp nz, $fd9e                                     ; $45ba: $c2 $9e $fd

	ld a, e                                          ; $45bd: $7b
	ld b, h                                          ; $45be: $44
	sub d                                            ; $45bf: $92
	ld a, [hl]                                       ; $45c0: $7e
	rst $38                                          ; $45c1: $ff
	inc bc                                           ; $45c2: $03
	ld h, c                                          ; $45c3: $61
	ld c, b                                          ; $45c4: $48
	ldh a, [$78]                                     ; $45c5: $f0 $78
	and h                                            ; $45c7: $a4
	ld [$fcf0], a                                    ; $45c8: $ea $f0 $fc
	sbc [hl]                                         ; $45cb: $9e
	or a                                             ; $45cc: $b7
	ld [hl], l                                       ; $45cd: $75
	add $94                                          ; $45ce: $c6 $94
	or b                                             ; $45d0: $b0
	ld [hl], h                                       ; $45d1: $74
	rst FarCall                                          ; $45d2: $f7
	or d                                             ; $45d3: $b2
	ld [hl-], a                                      ; $45d4: $32
	ld a, d                                          ; $45d5: $7a
	add e                                            ; $45d6: $83
	sub e                                            ; $45d7: $93
	ccf                                              ; $45d8: $3f
	ld a, a                                          ; $45d9: $7f
	cp [hl]                                          ; $45da: $be
	call c, $f93f                                    ; $45db: $dc $3f $f9
	reti                                             ; $45de: $d9


	rst $38                                          ; $45df: $ff
	sub a                                            ; $45e0: $97
	rrca                                             ; $45e1: $0f
	rra                                              ; $45e2: $1f
	ld a, $b7                                        ; $45e3: $3e $b7
	ld a, a                                          ; $45e5: $7f
	dec [hl]                                         ; $45e6: $35
	ld sp, $7a31                                     ; $45e7: $31 $31 $7a
	ld c, l                                          ; $45ea: $4d
	sbc h                                            ; $45eb: $9c
	ld c, b                                          ; $45ec: $48
	add b                                            ; $45ed: $80
	jp z, $b07b                                      ; $45ee: $ca $7b $b0

	sub l                                            ; $45f1: $95
	rra                                              ; $45f2: $1f
	ld e, a                                          ; $45f3: $5f
	cp l                                             ; $45f4: $bd
	ld sp, hl                                        ; $45f5: $f9
	db $db                                           ; $45f6: $db
	rst SubAFromDE                                          ; $45f7: $df
	rst SubAFromDE                                          ; $45f8: $df
	nop                                              ; $45f9: $00
	ldh [$a0], a                                     ; $45fa: $e0 $a0
	ld [hl], c                                       ; $45fc: $71
	ld a, a                                          ; $45fd: $7f
	sbc h                                            ; $45fe: $9c
	ldh [$ce], a                                     ; $45ff: $e0 $ce
	sbc h                                            ; $4601: $9c
	sbc $fc                                          ; $4602: $de $fc
	sbc d                                            ; $4604: $9a
	db $fd                                           ; $4605: $fd
	dec e                                            ; $4606: $1d
	rra                                              ; $4607: $1f
	ld sp, $de63                                     ; $4608: $31 $63 $de
	inc bc                                           ; $460b: $03
	sbc l                                            ; $460c: $9d
	ld [bc], a                                       ; $460d: $02
	ldh [c], a                                       ; $460e: $e2
	sbc $3f                                          ; $460f: $de $3f
	call c, $807f                                    ; $4611: $dc $7f $80
	ldh [$e3], a                                     ; $4614: $e0 $e3
	pop hl                                           ; $4616: $e1
	pop bc                                           ; $4617: $c1
	pop bc                                           ; $4618: $c1
	jp nz, $c0c0                                     ; $4619: $c2 $c0 $c0

	inc b                                            ; $461c: $04
	ld h, e                                          ; $461d: $63
	db $d3                                           ; $461e: $d3
	ld a, c                                          ; $461f: $79
	rst GetHLinHL                                          ; $4620: $cf
	or a                                             ; $4621: $b7
	cp a                                             ; $4622: $bf
	rst $38                                          ; $4623: $ff
	ld b, $83                                        ; $4624: $06 $83
	pop hl                                           ; $4626: $e1
	pop af                                           ; $4627: $f1
	ld a, c                                          ; $4628: $79
	ld c, [hl]                                       ; $4629: $4e
	ld b, b                                          ; $462a: $40
	nop                                              ; $462b: $00
	cpl                                              ; $462c: $2f
	db $e3                                           ; $462d: $e3
	push hl                                          ; $462e: $e5
	pop bc                                           ; $462f: $c1
	add b                                            ; $4630: $80
	nop                                              ; $4631: $00
	add b                                            ; $4632: $80
	sbc e                                            ; $4633: $9b
	db $fc                                           ; $4634: $fc
	jr nc, @+$3e                                     ; $4635: $30 $3c

	jp nz, $98fc                                     ; $4637: $c2 $fc $98

	add c                                            ; $463a: $81
	add b                                            ; $463b: $80
	add b                                            ; $463c: $80
	add c                                            ; $463d: $81
	pop bc                                           ; $463e: $c1
	ld h, c                                          ; $463f: $61
	ld hl, $01dd                                     ; $4640: $21 $dd $01
	db $fc                                           ; $4643: $fc
	ld a, e                                          ; $4644: $7b
	res 0, b                                         ; $4645: $cb $80
	call nz, $b8c8                                   ; $4647: $c4 $c8 $b8
	ret nc                                           ; $464a: $d0

	ret c                                            ; $464b: $d8

	pop bc                                           ; $464c: $c1
	pop bc                                           ; $464d: $c1
	jp $ecc6                                         ; $464e: $c3 $c6 $ec


	ret c                                            ; $4651: $d8

	sub b                                            ; $4652: $90
	adc b                                            ; $4653: $88
	ld e, d                                          ; $4654: $5a
	sbc $de                                          ; $4655: $de $de
	ld e, l                                          ; $4657: $5d

jr_052_4658:
	ld e, l                                          ; $4658: $5d
	ld d, l                                          ; $4659: $55
	ld d, l                                          ; $465a: $55
	ld d, a                                          ; $465b: $57
	ld [hl], a                                       ; $465c: $77
	di                                               ; $465d: $f3
	di                                               ; $465e: $f3
	ld [hl], e                                       ; $465f: $73
	ld [hl], e                                       ; $4660: $73
	ld a, e                                          ; $4661: $7b
	ld a, e                                          ; $4662: $7b
	ld a, c                                          ; $4663: $79
	ld l, c                                          ; $4664: $69
	add hl, hl                                       ; $4665: $29
	sbc c                                            ; $4666: $99
	add hl, hl                                       ; $4667: $29
	dec h                                            ; $4668: $25
	inc h                                            ; $4669: $24
	inc h                                            ; $466a: $24
	inc [hl]                                         ; $466b: $34
	inc d                                            ; $466c: $14
	reti                                             ; $466d: $d9


	rst $38                                          ; $466e: $ff
	add l                                            ; $466f: $85
	ld e, d                                          ; $4670: $5a
	ld e, b                                          ; $4671: $58
	ld hl, sp-$04                                    ; $4672: $f8 $fc
	db $fc                                           ; $4674: $fc
	cp h                                             ; $4675: $bc
	or [hl]                                          ; $4676: $b6
	or [hl]                                          ; $4677: $b6
	or a                                             ; $4678: $b7
	or a                                             ; $4679: $b7
	sub a                                            ; $467a: $97
	sub e                                            ; $467b: $93
	sub e                                            ; $467c: $93
	db $d3                                           ; $467d: $d3
	reti                                             ; $467e: $d9


	reti                                             ; $467f: $d9


	xor [hl]                                         ; $4680: $ae
	and [hl]                                         ; $4681: $a6
	sub d                                            ; $4682: $92
	add d                                            ; $4683: $82
	sub d                                            ; $4684: $92
	or a                                             ; $4685: $b7
	xor l                                            ; $4686: $ad
	xor l                                            ; $4687: $ad
	sub a                                            ; $4688: $97
	sub a                                            ; $4689: $97
	db $dd                                           ; $468a: $dd
	add a                                            ; $468b: $87
	rst SubAFromDE                                          ; $468c: $df
	sub a                                            ; $468d: $97
	sbc l                                            ; $468e: $9d
	ld c, a                                          ; $468f: $4f
	ld c, l                                          ; $4690: $4d
	db $db                                           ; $4691: $db
	ld c, a                                          ; $4692: $4f
	sbc e                                            ; $4693: $9b
	db $fc                                           ; $4694: $fc
	ld sp, hl                                        ; $4695: $f9
	ld sp, hl                                        ; $4696: $f9
	ei                                               ; $4697: $fb
	ld a, d                                          ; $4698: $7a
	pop bc                                           ; $4699: $c1
	sub e                                            ; $469a: $93
	db $fc                                           ; $469b: $fc
	rst $38                                          ; $469c: $ff
	db $dd                                           ; $469d: $dd
	adc [hl]                                         ; $469e: $8e
	ld b, $83                                        ; $469f: $06 $83
	add c                                            ; $46a1: $81
	ret z                                            ; $46a2: $c8

	adc [hl]                                         ; $46a3: $8e
	ld hl, sp-$08                                    ; $46a4: $f8 $f8
	db $fc                                           ; $46a6: $fc
	ld a, c                                          ; $46a7: $79
	ld e, d                                          ; $46a8: $5a
	add b                                            ; $46a9: $80
	scf                                              ; $46aa: $37
	ld [hl], c                                       ; $46ab: $71
	ld a, $2e                                        ; $46ac: $3e $2e
	sbc [hl]                                         ; $46ae: $9e
	ld d, a                                          ; $46af: $57
	ccf                                              ; $46b0: $3f
	cp b                                             ; $46b1: $b8
	ldh a, [$b8]                                     ; $46b2: $f0 $b8
	rst $38                                          ; $46b4: $ff
	pop af                                           ; $46b5: $f1
	ld [hl], c                                       ; $46b6: $71
	jr c, jr_052_4658                                ; $46b7: $38 $9f

	ret nc                                           ; $46b9: $d0

	ret c                                            ; $46ba: $d8

	add sp, $24                                      ; $46bb: $e8 $24
	inc [hl]                                         ; $46bd: $34
	jr z, @-$06                                      ; $46be: $28 $f8

	ld a, [$7075]                                    ; $46c0: $fa $75 $70
	ld [hl], d                                       ; $46c3: $72
	xor $ee                                          ; $46c4: $ee $ee
	or $f6                                           ; $46c6: $f6 $f6
	inc d                                            ; $46c8: $14
	sub e                                            ; $46c9: $93
	jr jr_052_46e8                                   ; $46ca: $18 $1c

	inc e                                            ; $46cc: $1c
	sub $cc                                          ; $46cd: $d6 $cc
	ld h, d                                          ; $46cf: $62
	or [hl]                                          ; $46d0: $b6
	ldh [$f8], a                                     ; $46d1: $e0 $f8
	ld e, b                                          ; $46d3: $58
	ldh a, [c]                                       ; $46d4: $f2
	ccf                                              ; $46d5: $3f
	ld a, d                                          ; $46d6: $7a
	rra                                              ; $46d7: $1f
	sub c                                            ; $46d8: $91
	rra                                              ; $46d9: $1f
	rlca                                             ; $46da: $07
	rlca                                             ; $46db: $07
	dec c                                            ; $46dc: $0d
	sub h                                            ; $46dd: $94
	push af                                          ; $46de: $f5
	ld e, a                                          ; $46df: $5f
	ld e, d                                          ; $46e0: $5a
	ld h, l                                          ; $46e1: $65
	ld l, d                                          ; $46e2: $6a
	cp b                                             ; $46e3: $b8
	dec [hl]                                         ; $46e4: $35
	ld bc, $dd00                                     ; $46e5: $01 $00 $dd

jr_052_46e8:
	add b                                            ; $46e8: $80
	sbc c                                            ; $46e9: $99
	ld b, b                                          ; $46ea: $40
	ret nz                                           ; $46eb: $c0

	db $d3                                           ; $46ec: $d3
	ld [hl], e                                       ; $46ed: $73
	ei                                               ; $46ee: $fb
	ld sp, hl                                        ; $46ef: $f9
	sbc $e8                                          ; $46f0: $de $e8
	sbc [hl]                                         ; $46f2: $9e
	ldh [rSVBK], a                                   ; $46f3: $e0 $70
	ld b, e                                          ; $46f5: $43
	ld a, c                                          ; $46f6: $79
	ld a, e                                          ; $46f7: $7b
	sbc [hl]                                         ; $46f8: $9e
	nop                                              ; $46f9: $00
	call c, $9d90                                    ; $46fa: $dc $90 $9d
	inc de                                           ; $46fd: $13
	ld e, e                                          ; $46fe: $5b
	reti                                             ; $46ff: $d9


	rst $38                                          ; $4700: $ff
	ld a, a                                          ; $4701: $7f
	ret c                                            ; $4702: $d8

	sub c                                            ; $4703: $91
	jr z, jr_052_4736                                ; $4704: $28 $30

	ld d, b                                          ; $4706: $50
	ld a, [bc]                                       ; $4707: $0a
	ld c, $07                                        ; $4708: $0e $07
	cp $ff                                           ; $470a: $fe $ff
	rst SubAFromHL                                          ; $470c: $d7
	rst GetHLinHL                                          ; $470d: $cf
	xor a                                            ; $470e: $af
	push af                                          ; $470f: $f5
	pop af                                           ; $4710: $f1
	ld hl, sp+$76                                    ; $4711: $f8 $76
	ld a, [hl-]                                      ; $4713: $3a
	ld a, [hl]                                       ; $4714: $7e
	halt                                             ; $4715: $76
	sbc l                                            ; $4716: $9d
	ld [hl], l                                       ; $4717: $75
	push af                                          ; $4718: $f5
	ei                                               ; $4719: $fb
	ld a, [hl]                                       ; $471a: $7e
	or $8f                                           ; $471b: $f6 $8f
	rst $38                                          ; $471d: $ff
	ei                                               ; $471e: $fb
	ld a, [$edfa]                                    ; $471f: $fa $fa $ed
	add sp, $78                                      ; $4722: $e8 $78
	ld a, h                                          ; $4724: $7c
	nop                                              ; $4725: $00
	inc b                                            ; $4726: $04
	dec b                                            ; $4727: $05
	dec b                                            ; $4728: $05
	inc bc                                           ; $4729: $03
	rlca                                             ; $472a: $07
	add a                                            ; $472b: $87
	add e                                            ; $472c: $83
	ld [hl], h                                       ; $472d: $74
	ld l, c                                          ; $472e: $69
	db $fd                                           ; $472f: $fd
	ld a, h                                          ; $4730: $7c
	ld d, c                                          ; $4731: $51
	ld a, a                                          ; $4732: $7f
	ld h, b                                          ; $4733: $60
	ret c                                            ; $4734: $d8

	rst $38                                          ; $4735: $ff

jr_052_4736:
	sbc h                                            ; $4736: $9c
	cp $be                                           ; $4737: $fe $be
	db $fc                                           ; $4739: $fc
	cp $74                                           ; $473a: $fe $74
	cp c                                             ; $473c: $b9
	jp c, $9dff                                      ; $473d: $da $ff $9d

	rst FarCall                                          ; $4740: $f7
	db $e3                                           ; $4741: $e3
	db $fc                                           ; $4742: $fc
	sub h                                            ; $4743: $94
	ld hl, sp-$02                                    ; $4744: $f8 $fe
	rst $38                                          ; $4746: $ff
	ld bc, $c683                                     ; $4747: $01 $83 $c6
	call z, $f0d8                                    ; $474a: $cc $d8 $f0
	ldh [$80], a                                     ; $474d: $e0 $80
	ld a, c                                          ; $474f: $79
	ld b, h                                          ; $4750: $44
	sub b                                            ; $4751: $90
	ld b, $0c                                        ; $4752: $06 $0c
	add hl, de                                       ; $4754: $19
	ld [hl], d                                       ; $4755: $72
	rst GetHLinHL                                          ; $4756: $cf
	sbc h                                            ; $4757: $9c
	adc [hl]                                         ; $4758: $8e
	rlca                                             ; $4759: $07
	ld d, a                                          ; $475a: $57
	dec b                                            ; $475b: $05
	xor b                                            ; $475c: $a8
	ld a, d                                          ; $475d: $7a
	ld l, l                                          ; $475e: $6d
	adc h                                            ; $475f: $8c
	ld b, $74                                        ; $4760: $06 $74
	ld [hl+], a                                      ; $4762: $22
	rst SubAFromDE                                          ; $4763: $df
	add b                                            ; $4764: $80
	sbc $4f                                          ; $4765: $de $4f
	rst SubAFromDE                                          ; $4767: $df
	res 3, h                                         ; $4768: $cb $9c
	ld l, d                                          ; $476a: $6a
	ld a, [hl+]                                      ; $476b: $2a
	jr @-$20                                         ; $476c: $18 $de

	ld a, c                                          ; $476e: $79
	rst SubAFromDE                                          ; $476f: $df
	db $fd                                           ; $4770: $fd
	sbc d                                            ; $4771: $9a
	ld a, l                                          ; $4772: $7d
	dec a                                            ; $4773: $3d
	rra                                              ; $4774: $1f
	inc d                                            ; $4775: $14
	inc d                                            ; $4776: $14
	sbc $12                                          ; $4777: $de $12
	sbc $92                                          ; $4779: $de $92
	reti                                             ; $477b: $d9


	rst $38                                          ; $477c: $ff
	rst SubAFromDE                                          ; $477d: $df
	xor $99                                          ; $477e: $ee $99
	ld l, [hl]                                       ; $4780: $6e
	ld a, d                                          ; $4781: $7a
	ld e, e                                          ; $4782: $5b
	ld e, e                                          ; $4783: $5b
	ld d, a                                          ; $4784: $57
	ld d, l                                          ; $4785: $55
	sbc $d9                                          ; $4786: $de $d9
	sbc [hl]                                         ; $4788: $9e
	call $ecde                                       ; $4789: $cd $de $ec
	sbc c                                            ; $478c: $99
	xor $ed                                          ; $478d: $ee $ed
	db $ed                                           ; $478f: $ed
	xor c                                            ; $4790: $a9
	pop hl                                           ; $4791: $e1
	ld l, c                                          ; $4792: $69
	sbc $49                                          ; $4793: $de $49
	rst SubAFromDE                                          ; $4795: $df
	sub a                                            ; $4796: $97
	sbc h                                            ; $4797: $9c
	rst SubAFromHL                                          ; $4798: $d7
	rst SubAFromDE                                          ; $4799: $df
	rst SubAFromDE                                          ; $479a: $df
	sbc $ff                                          ; $479b: $de $ff
	sbc [hl]                                         ; $479d: $9e
	ld c, a                                          ; $479e: $4f
	db $dd                                           ; $479f: $dd
	cpl                                              ; $47a0: $2f
	sbc $af                                          ; $47a1: $de $af
	sbc [hl]                                         ; $47a3: $9e
	db $fc                                           ; $47a4: $fc
	jp c, $83f8                                      ; $47a5: $da $f8 $83

	adc [hl]                                         ; $47a8: $8e
	add [hl]                                         ; $47a9: $86
	ld c, $8d                                        ; $47aa: $0e $8d
	add a                                            ; $47ac: $87
	add a                                            ; $47ad: $87
	dec b                                            ; $47ae: $05
	ld a, [bc]                                       ; $47af: $0a
	ld [hl], c                                       ; $47b0: $71
	ld a, c                                          ; $47b1: $79
	pop af                                           ; $47b2: $f1
	ld [hl], e                                       ; $47b3: $73
	ld a, c                                          ; $47b4: $79
	ld a, c                                          ; $47b5: $79
	ei                                               ; $47b6: $fb
	push af                                          ; $47b7: $f5
	sbc b                                            ; $47b8: $98
	ret c                                            ; $47b9: $d8

	adc b                                            ; $47ba: $88
	xor b                                            ; $47bb: $a8
	sbc b                                            ; $47bc: $98
	adc h                                            ; $47bd: $8c
	db $ec                                           ; $47be: $ec
	cp h                                             ; $47bf: $bc
	add sp, -$58                                     ; $47c0: $e8 $a8
	cp b                                             ; $47c2: $b8
	sbc b                                            ; $47c3: $98
	db $dd                                           ; $47c4: $dd
	adc b                                            ; $47c5: $88
	sub [hl]                                         ; $47c6: $96
	ld [hl], e                                       ; $47c7: $73
	ld [hl], a                                       ; $47c8: $77
	ld [hl], l                                       ; $47c9: $75
	ld [hl], a                                       ; $47ca: $77
	halt                                             ; $47cb: $76
	ld [hl], e                                       ; $47cc: $73
	ld [hl], c                                       ; $47cd: $71
	ld [hl], b                                       ; $47ce: $70
	inc e                                            ; $47cf: $1c
	sbc $18                                          ; $47d0: $de $18
	sub b                                            ; $47d2: $90
	add hl, de                                       ; $47d3: $19
	inc e                                            ; $47d4: $1c
	ld e, $1f                                        ; $47d5: $1e $1f
	sbc $bc                                          ; $47d7: $de $bc
	rst $38                                          ; $47d9: $ff
	xor $bf                                          ; $47da: $ee $bf
	ld a, a                                          ; $47dc: $7f
	ld a, a                                          ; $47dd: $7f
	cp a                                             ; $47de: $bf
	ld bc, $0003                                     ; $47df: $01 $03 $00
	halt                                             ; $47e2: $76
	call Call_052_4086                               ; $47e3: $cd $86 $40
	jr nc, @-$44                                     ; $47e6: $30 $ba

	dec e                                            ; $47e8: $1d
	add hl, de                                       ; $47e9: $19
	sbc b                                            ; $47ea: $98
	ld de, $96de                                     ; $47eb: $11 $de $96
	ret nz                                           ; $47ee: $c0

jr_052_47ef:
	ld b, b                                          ; $47ef: $40
	ldh [$e0], a                                     ; $47f0: $e0 $e0
	ld h, a                                          ; $47f2: $67
	db $fc                                           ; $47f3: $fc
	jr c, jr_052_486e                                ; $47f4: $38 $78

	ldh [$e0], a                                     ; $47f6: $e0 $e0
	db $ec                                           ; $47f8: $ec
	xor $ff                                          ; $47f9: $ee $ff
	xor $cf                                          ; $47fb: $ee $cf
	adc $6c                                          ; $47fd: $ce $6c
	ld b, d                                          ; $47ff: $42
	sub l                                            ; $4800: $95
	ld a, $7f                                        ; $4801: $3e $7f
	ld d, [hl]                                       ; $4803: $56
	ld c, h                                          ; $4804: $4c
	and h                                            ; $4805: $a4
	ldh [$e0], a                                     ; $4806: $e0 $e0
	ldh a, [$d0]                                     ; $4808: $f0 $d0
	ldh a, [$5e]                                     ; $480a: $f0 $5e
	ret nz                                           ; $480c: $c0

	rst $38                                          ; $480d: $ff
	sbc [hl]                                         ; $480e: $9e
	jr nz, jr_052_47ef                               ; $480f: $20 $de

	ld hl, $167f                                     ; $4811: $21 $7f $16
	rst SubAFromDE                                          ; $4814: $df
	rst $38                                          ; $4815: $ff
	sbc [hl]                                         ; $4816: $9e
	rst SubAFromDE                                          ; $4817: $df
	sbc $de                                          ; $4818: $de $de
	ld a, l                                          ; $481a: $7d
	ld [hl], e                                       ; $481b: $73
	sbc h                                            ; $481c: $9c
	ld a, [hl]                                       ; $481d: $7e
	cp $f9                                           ; $481e: $fe $f9
	sbc $fb                                          ; $4820: $de $fb
	sbc h                                            ; $4822: $9c
	ld b, b                                          ; $4823: $40
	add b                                            ; $4824: $80
	add b                                            ; $4825: $80
	db $fc                                           ; $4826: $fc
	sbc d                                            ; $4827: $9a
	ld a, l                                          ; $4828: $7d
	xor l                                            ; $4829: $ad
	dec b                                            ; $482a: $05
	rrca                                             ; $482b: $0f
	ccf                                              ; $482c: $3f
	sbc $fe                                          ; $482d: $de $fe
	sbc d                                            ; $482f: $9a
	add d                                            ; $4830: $82
	ld [bc], a                                       ; $4831: $02
	ld a, [bc]                                       ; $4832: $0a
	nop                                              ; $4833: $00
	nop                                              ; $4834: $00
	sbc $01                                          ; $4835: $de $01
	sbc $20                                          ; $4837: $de $20
	sbc d                                            ; $4839: $9a
	and b                                            ; $483a: $a0
	add h                                            ; $483b: $84
	add h                                            ; $483c: $84
	add l                                            ; $483d: $85
	adc c                                            ; $483e: $89
	sbc $df                                          ; $483f: $de $df
	sbc [hl]                                         ; $4841: $9e
	ld e, a                                          ; $4842: $5f
	db $dd                                           ; $4843: $dd
	ld a, a                                          ; $4844: $7f
	sub a                                            ; $4845: $97
	dec a                                            ; $4846: $3d
	scf                                              ; $4847: $37
	ld [hl], $36                                     ; $4848: $36 $36
	ld e, $1b                                        ; $484a: $1e $1b
	dec sp                                           ; $484c: $3b
	dec de                                           ; $484d: $1b
	reti                                             ; $484e: $d9


	rst $38                                          ; $484f: $ff
	sub a                                            ; $4850: $97
	rst JumpTable                                          ; $4851: $c7
	sbc [hl]                                         ; $4852: $9e
	sbc c                                            ; $4853: $99
	or c                                             ; $4854: $b1
	ld [$e4c2], a                                    ; $4855: $ea $c2 $e4
	pop af                                           ; $4858: $f1
	halt                                             ; $4859: $76
	ld a, b                                          ; $485a: $78
	add b                                            ; $485b: $80
	push af                                          ; $485c: $f5
	db $fd                                           ; $485d: $fd
	ei                                               ; $485e: $fb
	cp $74                                           ; $485f: $fe $74
	ld b, a                                          ; $4861: $47
	ld e, b                                          ; $4862: $58
	ld a, [hl+]                                      ; $4863: $2a
	ld l, h                                          ; $4864: $6c
	ld [hl], $c5                                     ; $4865: $36 $c5
	ldh a, [c]                                       ; $4867: $f2
	adc e                                            ; $4868: $8b
	cp b                                             ; $4869: $b8
	and a                                            ; $486a: $a7
	pop de                                           ; $486b: $d1
	sub e                                            ; $486c: $93
	ret                                              ; $486d: $c9


jr_052_486e:
	jr c, jr_052_4879                                ; $486e: $38 $09

	db $f4                                           ; $4870: $f4
	cp e                                             ; $4871: $bb
	ld [hl], d                                       ; $4872: $72
	ld d, a                                          ; $4873: $57
	ld [hl], $ad                                     ; $4874: $36 $ad
	rst SubAFromBC                                          ; $4876: $e7
	ld a, l                                          ; $4877: $7d
	nop                                              ; $4878: $00

jr_052_4879:
	ld b, b                                          ; $4879: $40
	adc b                                            ; $487a: $88
	sub h                                            ; $487b: $94
	and b                                            ; $487c: $a0
	ld c, b                                          ; $487d: $48
	ld b, b                                          ; $487e: $40
	ld [$1c80], sp                                   ; $487f: $08 $80 $1c
	ld l, h                                          ; $4882: $6c
	call c, $febc                                    ; $4883: $dc $bc $fe
	ld a, a                                          ; $4886: $7f
	ld a, b                                          ; $4887: $78
	ld hl, sp-$21                                    ; $4888: $f8 $df
	rrca                                             ; $488a: $0f
	sub a                                            ; $488b: $97
	rra                                              ; $488c: $1f
	scf                                              ; $488d: $37
	inc hl                                           ; $488e: $23
	ld b, c                                          ; $488f: $41
	add b                                            ; $4890: $80
	sub d                                            ; $4891: $92
	sub d                                            ; $4892: $92
	sub c                                            ; $4893: $91
	sbc $49                                          ; $4894: $de $49
	rst SubAFromDE                                          ; $4896: $df
	ret z                                            ; $4897: $c8

	reti                                             ; $4898: $d9


	rst $38                                          ; $4899: $ff
	sbc l                                            ; $489a: $9d
	ld b, l                                          ; $489b: $45
	dec h                                            ; $489c: $25

Call_052_489d:
	ld a, c                                          ; $489d: $79
	ld [hl], c                                       ; $489e: $71
	sbc h                                            ; $489f: $9c
	ld [hl+], a                                      ; $48a0: $22
	sub d                                            ; $48a1: $92
	sub d                                            ; $48a2: $92
	sbc $fe                                          ; $48a3: $de $fe
	call c, $97ff                                    ; $48a5: $dc $ff $97
	ld l, c                                          ; $48a8: $69
	ld h, l                                          ; $48a9: $65
	dec h                                            ; $48aa: $25
	dec h                                            ; $48ab: $25
	inc [hl]                                         ; $48ac: $34
	inc [hl]                                         ; $48ad: $34
	ld [hl-], a                                      ; $48ae: $32
	ld a, [hl-]                                      ; $48af: $3a
	reti                                             ; $48b0: $d9


	rst $38                                          ; $48b1: $ff
	sbc $d7                                          ; $48b2: $de $d7
	rst SubAFromDE                                          ; $48b4: $df
	rst FarCall                                          ; $48b5: $f7
	sbc $fb                                          ; $48b6: $de $fb
	adc c                                            ; $48b8: $89
	db $fc                                           ; $48b9: $fc
	ld a, h                                          ; $48ba: $7c
	ld a, h                                          ; $48bb: $7c
	inc a                                            ; $48bc: $3c
	cp h                                             ; $48bd: $bc
	sbc [hl]                                         ; $48be: $9e
	adc [hl]                                         ; $48bf: $8e
	adc [hl]                                         ; $48c0: $8e
	ld a, [bc]                                       ; $48c1: $0a
	inc b                                            ; $48c2: $04
	inc b                                            ; $48c3: $04
	ld [bc], a                                       ; $48c4: $02
	ld a, [bc]                                       ; $48c5: $0a
	ld b, $01                                        ; $48c6: $06 $01
	ld bc, $fbf5                                     ; $48c8: $01 $f5 $fb
	ei                                               ; $48cb: $fb
	db $fd                                           ; $48cc: $fd
	push af                                          ; $48cd: $f5
	ld sp, hl                                        ; $48ce: $f9
	ld a, b                                          ; $48cf: $78
	ld l, $94                                        ; $48d0: $2e $94
	ld a, h                                          ; $48d2: $7c
	db $ec                                           ; $48d3: $ec
	db $fc                                           ; $48d4: $fc
	inc c                                            ; $48d5: $0c
	ld l, h                                          ; $48d6: $6c
	call z, $883c                                    ; $48d7: $cc $3c $88
	adc b                                            ; $48da: $88
	ld [$7708], sp                                   ; $48db: $08 $08 $77
	db $fc                                           ; $48de: $fc
	sbc d                                            ; $48df: $9a
	ld [hl], b                                       ; $48e0: $70
	jr nc, jr_052_4913                               ; $48e1: $30 $30

	jr c, jr_052_491d                                ; $48e3: $38 $38

	ld a, d                                          ; $48e5: $7a
	jp $1fde                                         ; $48e6: $c3 $de $1f


	rst SubAFromDE                                          ; $48e9: $df
	rla                                              ; $48ea: $17
	add b                                            ; $48eb: $80
	inc de                                           ; $48ec: $13
	rla                                              ; $48ed: $17
	rla                                              ; $48ee: $17
	xor a                                            ; $48ef: $af
	ld l, a                                          ; $48f0: $6f
	scf                                              ; $48f1: $37
	ld e, a                                          ; $48f2: $5f
	rra                                              ; $48f3: $1f
	ccf                                              ; $48f4: $3f
	ld a, $3e                                        ; $48f5: $3e $3e
	ld d, b                                          ; $48f7: $50
	sub b                                            ; $48f8: $90
	ret z                                            ; $48f9: $c8

	and b                                            ; $48fa: $a0
	ldh [$c0], a                                     ; $48fb: $e0 $c0
	pop bc                                           ; $48fd: $c1
	pop bc                                           ; $48fe: $c1
	sub $ae                                          ; $48ff: $d6 $ae
	add h                                            ; $4901: $84
	and a                                            ; $4902: $a7
	and e                                            ; $4903: $a3
	ld [hl], l                                       ; $4904: $75
	ld h, e                                          ; $4905: $63
	ld l, e                                          ; $4906: $6b
	jr c, jr_052_497a                                ; $4907: $38 $71

	ld a, e                                          ; $4909: $7b
	ld e, b                                          ; $490a: $58
	sbc e                                            ; $490b: $9b
	ld e, h                                          ; $490c: $5c
	adc d                                            ; $490d: $8a
	sbc h                                            ; $490e: $9c
	sub h                                            ; $490f: $94
	ld b, a                                          ; $4910: $47
	nop                                              ; $4911: $00
	db $dd                                           ; $4912: $dd

jr_052_4913:
	ld h, [hl]                                       ; $4913: $66
	sbc l                                            ; $4914: $9d
	ld d, h                                          ; $4915: $54
	ld b, d                                          ; $4916: $42
	db $dd                                           ; $4917: $dd
	ld [hl+], a                                      ; $4918: $22
	ld [hl], e                                       ; $4919: $73
	or $dc                                           ; $491a: $f6 $dc
	ld [hl+], a                                      ; $491c: $22

jr_052_491d:
	db $dd                                           ; $491d: $dd
	ld h, [hl]                                       ; $491e: $66
	sbc [hl]                                         ; $491f: $9e
	ld d, d                                          ; $4920: $52
	ld h, e                                          ; $4921: $63
	or $db                                           ; $4922: $f6 $db
	ld [hl+], a                                      ; $4924: $22
	ld h, a                                          ; $4925: $67
	or $99                                           ; $4926: $f6 $99
	inc h                                            ; $4928: $24
	inc sp                                           ; $4929: $33
	ld h, [hl]                                       ; $492a: $66
	ld h, a                                          ; $492b: $67
	ld [hl], a                                       ; $492c: $77
	halt                                             ; $492d: $76
	ld l, e                                          ; $492e: $6b
	or $9c                                           ; $492f: $f6 $9c
	ld h, [hl]                                       ; $4931: $66
	ld [hl], a                                       ; $4932: $77
	ld [hl], d                                       ; $4933: $72
	sbc $22                                          ; $4934: $de $22
	sbc l                                            ; $4936: $9d
	inc hl                                           ; $4937: $23
	ld b, e                                          ; $4938: $43
	ld a, e                                          ; $4939: $7b
	or $9e                                           ; $493a: $f6 $9e
	ld h, a                                          ; $493c: $67
	db $dd                                           ; $493d: $dd
	ld [hl+], a                                      ; $493e: $22
	sbc [hl]                                         ; $493f: $9e
	ld d, e                                          ; $4940: $53
	ld l, a                                          ; $4941: $6f
	or $9e                                           ; $4942: $f6 $9e
	inc hl                                           ; $4944: $23
	ld a, e                                          ; $4945: $7b
	or $df                                           ; $4946: $f6 $df
	inc sp                                           ; $4948: $33
	ld a, e                                          ; $4949: $7b
	or $9d                                           ; $494a: $f6 $9d
	ld [hl], h                                       ; $494c: $74
	ld b, e                                          ; $494d: $43
	ld l, e                                          ; $494e: $6b
	or $9b                                           ; $494f: $f6 $9b
	ld h, [hl]                                       ; $4951: $66
	ld h, e                                          ; $4952: $63
	inc sp                                           ; $4953: $33
	ld d, d                                          ; $4954: $52
	ld [hl], a                                       ; $4955: $77
	or $e4                                           ; $4956: $f6 $e4
	adc c                                            ; $4958: $89
	db $fd                                           ; $4959: $fd
	sbc e                                            ; $495a: $9b
	dec b                                            ; $495b: $05
	rlca                                             ; $495c: $07
	ld [hl+], a                                      ; $495d: $22
	ldh [c], a                                       ; $495e: $e2
	ei                                               ; $495f: $fb
	rst SubAFromDE                                          ; $4960: $df
	ld bc, $fc7b                                     ; $4961: $01 $7b $fc
	sbc d                                            ; $4964: $9a
	ld b, b                                          ; $4965: $40
	add b                                            ; $4966: $80
	cp b                                             ; $4967: $b8
	ld a, [bc]                                       ; $4968: $0a
	sbc $fd                                          ; $4969: $de $fd
	rst SubAFromDE                                          ; $496b: $df
	ld b, b                                          ; $496c: $40
	add l                                            ; $496d: $85

jr_052_496e:
	pop af                                           ; $496e: $f1
	ld hl, $fec2                                     ; $496f: $21 $c2 $fe
	rst FarCall                                          ; $4972: $f7
	ld c, a                                          ; $4973: $4f
	ld [hl+], a                                      ; $4974: $22
	add hl, de                                       ; $4975: $19
	db $e3                                           ; $4976: $e3
	rst SubAFromHL                                          ; $4977: $d7
	nop                                              ; $4978: $00
	nop                                              ; $4979: $00

jr_052_497a:
	ld [$1d30], sp                                   ; $497a: $08 $30 $1d
	ld h, $9c                                        ; $497d: $26 $9c
	ld a, b                                          ; $497f: $78
	sbc a                                            ; $4980: $9f
	ld a, [hl]                                       ; $4981: $7e
	db $ed                                           ; $4982: $ed
	rst AddAOntoHL                                          ; $4983: $ef
	ld a, d                                          ; $4984: $7a
	ld a, [$04c4]                                    ; $4985: $fa $c4 $04
	ld [hl], a                                       ; $4988: $77
	db $d3                                           ; $4989: $d3
	rst SubAFromDE                                          ; $498a: $df
	inc bc                                           ; $498b: $03
	rst SubAFromDE                                          ; $498c: $df
	rlca                                             ; $498d: $07
	add b                                            ; $498e: $80
	adc b                                            ; $498f: $88
	rst $38                                          ; $4990: $ff
	cp [hl]                                          ; $4991: $be
	ld a, h                                          ; $4992: $7c
	ld hl, sp-$08                                    ; $4993: $f8 $f8
	ret c                                            ; $4995: $d8

	pop af                                           ; $4996: $f1
	rst $38                                          ; $4997: $ff
	ld a, a                                          ; $4998: $7f
	jp $0884                                         ; $4999: $c3 $84 $08


	jr c, jr_052_4a0e                                ; $499c: $38 $70

	pop hl                                           ; $499e: $e1
	ld h, b                                          ; $499f: $60
	add b                                            ; $49a0: $80
	nop                                              ; $49a1: $00
	inc bc                                           ; $49a2: $03
	rra                                              ; $49a3: $1f
	ld l, h                                          ; $49a4: $6c
	and $72                                          ; $49a5: $e6 $72
	ldh a, [$80]                                     ; $49a7: $f0 $80
	nop                                              ; $49a9: $00
	rlca                                             ; $49aa: $07
	inc e                                            ; $49ab: $1c
	jr nc, jr_052_496e                               ; $49ac: $30 $c0

	sub d                                            ; $49ae: $92
	add c                                            ; $49af: $81
	inc b                                            ; $49b0: $04
	nop                                              ; $49b1: $00
	cp a                                             ; $49b2: $bf
	rst GetHLinHL                                          ; $49b3: $cf
	ld hl, sp-$32                                    ; $49b4: $f8 $ce
	ld [hl], e                                       ; $49b6: $73
	add h                                            ; $49b7: $84
	inc bc                                           ; $49b8: $03

jr_052_49b9:
	nop                                              ; $49b9: $00
	ld a, a                                          ; $49ba: $7f
	ldh a, [$fe]                                     ; $49bb: $f0 $fe
	add b                                            ; $49bd: $80
	add hl, de                                       ; $49be: $19
	ldh a, [$6f]                                     ; $49bf: $f0 $6f
	rst $38                                          ; $49c1: $ff
	call z, Call_052_4512                            ; $49c2: $cc $12 $45

jr_052_49c5:
	sub d                                            ; $49c5: $92
	ld c, c                                          ; $49c6: $49
	ldh a, [rAUD3LEVEL]                              ; $49c7: $f0 $1c
	rst $38                                          ; $49c9: $ff
	inc bc                                           ; $49ca: $03
	ld bc, $2408                                     ; $49cb: $01 $08 $24
	sub d                                            ; $49ce: $92
	ld a, [$fffe]                                    ; $49cf: $fa $fe $ff
	rst $38                                          ; $49d2: $ff
	ld a, a                                          ; $49d3: $7f
	ccf                                              ; $49d4: $3f
	add hl, sp                                       ; $49d5: $39
	inc e                                            ; $49d6: $1c
	jr c, jr_052_49b9                                ; $49d7: $38 $e0

	ret nz                                           ; $49d9: $c0

	add b                                            ; $49da: $80
	ret nz                                           ; $49db: $c0

	ldh [hDisp1_WY], a                                     ; $49dc: $e0 $95
	ldh [$f0], a                                     ; $49de: $e0 $f0
	nop                                              ; $49e0: $00
	ret nz                                           ; $49e1: $c0

	pop bc                                           ; $49e2: $c1
	pop bc                                           ; $49e3: $c1
	add b                                            ; $49e4: $80
	push bc                                          ; $49e5: $c5
	rst $38                                          ; $49e6: $ff
	rst $38                                          ; $49e7: $ff
	ld sp, hl                                        ; $49e8: $f9
	sbc b                                            ; $49e9: $98
	inc b                                            ; $49ea: $04
	ld b, $8e                                        ; $49eb: $06 $8e
	rst GetHLinHL                                          ; $49ed: $cf
	rst $38                                          ; $49ee: $ff
	rst $38                                          ; $49ef: $ff
	cp $63                                           ; $49f0: $fe $63
	ldh a, [$8b]                                     ; $49f2: $f0 $8b
	scf                                              ; $49f4: $37
	ld a, b                                          ; $49f5: $78
	inc l                                            ; $49f6: $2c
	inc c                                            ; $49f7: $0c
	inc b                                            ; $49f8: $04
	ld c, $bf                                        ; $49f9: $0e $bf
	adc $00                                          ; $49fb: $ce $00
	rlca                                             ; $49fd: $07
	inc bc                                           ; $49fe: $03
	inc bc                                           ; $49ff: $03
	dec bc                                           ; $4a00: $0b
	ld bc, $3100                                     ; $4a01: $01 $00 $31
	rst $38                                          ; $4a04: $ff
	sub a                                            ; $4a05: $97
	ld bc, $7b72                                     ; $4a06: $01 $72 $7b
	cp [hl]                                          ; $4a09: $be
	sub [hl]                                         ; $4a0a: $96
	ld c, $00                                        ; $4a0b: $0e $00
	ld l, b                                          ; $4a0d: $68

jr_052_4a0e:
	cp $8d                                           ; $4a0e: $fe $8d
	nop                                              ; $4a10: $00
	nop                                              ; $4a11: $00
	add b                                            ; $4a12: $80
	pop af                                           ; $4a13: $f1
	sbc $ff                                          ; $4a14: $de $ff
	ld a, a                                          ; $4a16: $7f
	cp e                                             ; $4a17: $bb
	sbc h                                            ; $4a18: $9c
	or b                                             ; $4a19: $b0
	add [hl]                                         ; $4a1a: $86
	ld e, $fe                                        ; $4a1b: $1e $fe
	add b                                            ; $4a1d: $80
	rra                                              ; $4a1e: $1f
	rrca                                             ; $4a1f: $0f
	ld c, a                                          ; $4a20: $4f
	ld a, c                                          ; $4a21: $79
	pop hl                                           ; $4a22: $e1
	ld [hl], c                                       ; $4a23: $71
	nop                                              ; $4a24: $00
	add $e4                                          ; $4a25: $c6 $e4
	ld b, b                                          ; $4a27: $40
	db $10                                           ; $4a28: $10
	ld d, b                                          ; $4a29: $50
	ld b, b                                          ; $4a2a: $40
	adc [hl]                                         ; $4a2b: $8e
	rst $38                                          ; $4a2c: $ff
	add hl, sp                                       ; $4a2d: $39
	dec de                                           ; $4a2e: $1b
	cp a                                             ; $4a2f: $bf
	rst AddAOntoHL                                          ; $4a30: $ef
	rst AddAOntoHL                                          ; $4a31: $ef
	rst $38                                          ; $4a32: $ff
	add b                                            ; $4a33: $80
	ret nz                                           ; $4a34: $c0

	nop                                              ; $4a35: $00
	ld bc, $190c                                     ; $4a36: $01 $0c $19
	add hl, sp                                       ; $4a39: $39
	inc c                                            ; $4a3a: $0c
	ld a, a                                          ; $4a3b: $7f
	ccf                                              ; $4a3c: $3f
	db $db                                           ; $4a3d: $db
	rst $38                                          ; $4a3e: $ff
	ld a, e                                          ; $4a3f: $7b
	add hl, sp                                       ; $4a40: $39

jr_052_4a41:
	rst $38                                          ; $4a41: $ff
	sbc h                                            ; $4a42: $9c
	jr jr_052_49c5                                   ; $4a43: $18 $80

	sub b                                            ; $4a45: $90
	reti                                             ; $4a46: $d9


	rst $38                                          ; $4a47: $ff
	add b                                            ; $4a48: $80
	add d                                            ; $4a49: $82
	add l                                            ; $4a4a: $85
	add a                                            ; $4a4b: $87
	add c                                            ; $4a4c: $81
	dec bc                                           ; $4a4d: $0b
	ld [hl], h                                       ; $4a4e: $74
	xor $b9                                          ; $4a4f: $ee $b9
	db $fc                                           ; $4a51: $fc
	ld hl, sp-$08                                    ; $4a52: $f8 $f8
	cp $fc                                           ; $4a54: $fe $fc
	ei                                               ; $4a56: $fb
	rst $38                                          ; $4a57: $ff
	cp $38                                           ; $4a58: $fe $38
	di                                               ; $4a5a: $f3
	rst JumpTable                                          ; $4a5b: $c7
	adc a                                            ; $4a5c: $8f
	rra                                              ; $4a5d: $1f
	ld a, a                                          ; $4a5e: $7f
	rst $38                                          ; $4a5f: $ff
	rst $38                                          ; $4a60: $ff
	rlca                                             ; $4a61: $07
	inc c                                            ; $4a62: $0c
	jr c, jr_052_4ad5                                ; $4a63: $38 $70

	ldh [$80], a                                     ; $4a65: $e0 $80
	nop                                              ; $4a67: $00
	ld a, a                                          ; $4a68: $7f
	ld a, [hl-]                                      ; $4a69: $3a
	jp c, $7bff                                      ; $4a6a: $da $ff $7b

	push af                                          ; $4a6d: $f5
	db $fc                                           ; $4a6e: $fc
	sub c                                            ; $4a6f: $91
	xor e                                            ; $4a70: $ab
	add a                                            ; $4a71: $87
	sbc a                                            ; $4a72: $9f
	ld c, $52                                        ; $4a73: $0e $52
	ccf                                              ; $4a75: $3f
	ld l, l                                          ; $4a76: $6d
	sbc c                                            ; $4a77: $99
	ld d, b                                          ; $4a78: $50
	ld [hl], b                                       ; $4a79: $70
	ld h, b                                          ; $4a7a: $60
	pop af                                           ; $4a7b: $f1
	db $fd                                           ; $4a7c: $fd
	rst SubAFromBC                                          ; $4a7d: $e7
	ld a, e                                          ; $4a7e: $7b
	ld d, a                                          ; $4a7f: $57
	add l                                            ; $4a80: $85
	db $fc                                           ; $4a81: $fc
	add h                                            ; $4a82: $84
	ld d, d                                          ; $4a83: $52
	ld b, d                                          ; $4a84: $42
	ld b, h                                          ; $4a85: $44
	db $fc                                           ; $4a86: $fc
	rst GetHLinHL                                          ; $4a87: $cf
	ld bc, $7b03                                     ; $4a88: $01 $03 $7b
	xor l                                            ; $4a8b: $ad
	cp h                                             ; $4a8c: $bc
	cp a                                             ; $4a8d: $bf
	adc a                                            ; $4a8e: $8f
	ld b, $ed                                        ; $4a8f: $06 $ed
	ld [hl-], a                                      ; $4a91: $32
	jp hl                                            ; $4a92: $e9


	jr nz, jr_052_4a41                               ; $4a93: $20 $ac

	ret nz                                           ; $4a95: $c0

	add c                                            ; $4a96: $81
	ld b, b                                          ; $4a97: $40
	ldh [$cc], a                                     ; $4a98: $e0 $cc
	ld d, $77                                        ; $4a9a: $16 $77
	ld l, h                                          ; $4a9c: $6c
	sbc e                                            ; $4a9d: $9b
	add b                                            ; $4a9e: $80
	adc b                                            ; $4a9f: $88
	add hl, bc                                       ; $4aa0: $09
	ld de, $12de                                     ; $4aa1: $11 $de $12
	sbc e                                            ; $4aa4: $9b
	ld [hl], d                                       ; $4aa5: $72
	or d                                             ; $4aa6: $b2
	rrca                                             ; $4aa7: $0f
	rrca                                             ; $4aa8: $0f
	db $db                                           ; $4aa9: $db
	rra                                              ; $4aaa: $1f
	add b                                            ; $4aab: $80
	and d                                            ; $4aac: $a2
	dec h                                            ; $4aad: $25
	ld l, a                                          ; $4aae: $6f
	ld l, e                                          ; $4aaf: $6b
	ld a, e                                          ; $4ab0: $7b
	ld d, a                                          ; $4ab1: $57
	ld d, a                                          ; $4ab2: $57
	ld a, a                                          ; $4ab3: $7f
	db $e3                                           ; $4ab4: $e3
	and $c4                                          ; $4ab5: $e6 $c4
	call z, $f8cc                                    ; $4ab7: $cc $cc $f8
	ld hl, sp-$10                                    ; $4aba: $f8 $f0
	pop af                                           ; $4abc: $f1
	ldh [$e0], a                                     ; $4abd: $e0 $e0
	call nz, $8890                                   ; $4abf: $c4 $90 $88
	inc hl                                           ; $4ac2: $23
	dec h                                            ; $4ac3: $25
	ld [$060c], sp                                   ; $4ac4: $08 $0c $06
	inc hl                                           ; $4ac7: $23
	inc hl                                           ; $4ac8: $23
	inc sp                                           ; $4ac9: $33
	sbc c                                            ; $4aca: $99
	add h                                            ; $4acb: $84
	sbc c                                            ; $4acc: $99
	add d                                            ; $4acd: $82
	add hl, hl                                       ; $4ace: $29
	ld [bc], a                                       ; $4acf: $02
	ld c, $07                                        ; $4ad0: $0e $07
	ld d, a                                          ; $4ad2: $57
	ld [hl], d                                       ; $4ad3: $72
	ld a, [de]                                       ; $4ad4: $1a

jr_052_4ad5:
	inc c                                            ; $4ad5: $0c
	ld b, $37                                        ; $4ad6: $06 $37
	inc sp                                           ; $4ad8: $33
	cp e                                             ; $4ad9: $bb
	cp e                                             ; $4ada: $bb
	sbc a                                            ; $4adb: $9f
	rst $38                                          ; $4adc: $ff
	dec a                                            ; $4add: $3d
	db $db                                           ; $4ade: $db
	inc l                                            ; $4adf: $2c
	xor h                                            ; $4ae0: $ac

jr_052_4ae1:
	ld e, h                                          ; $4ae1: $5c
	ld e, d                                          ; $4ae2: $5a
	rst FarCall                                          ; $4ae3: $f7
	db $fc                                           ; $4ae4: $fc
	bit 5, l                                         ; $4ae5: $cb $6d
	db $dd                                           ; $4ae7: $dd
	rst $38                                          ; $4ae8: $ff
	sub l                                            ; $4ae9: $95

jr_052_4aea:
	ei                                               ; $4aea: $fb
	jp $1f1d                                         ; $4aeb: $c3 $1d $1f


	sbc a                                            ; $4aee: $9f
	cp a                                             ; $4aef: $bf
	cp a                                             ; $4af0: $bf
	rst $38                                          ; $4af1: $ff
	rst $38                                          ; $4af2: $ff
	cp a                                             ; $4af3: $bf
	sbc $f0                                          ; $4af4: $de $f0
	rst SubAFromDE                                          ; $4af6: $df
	ldh [$7a], a                                     ; $4af7: $e0 $7a
	cp a                                             ; $4af9: $bf
	ld a, a                                          ; $4afa: $7f
	ld e, $99                                        ; $4afb: $1e $99
	cp a                                             ; $4afd: $bf
	rst JumpTable                                          ; $4afe: $c7
	xor a                                            ; $4aff: $af
	rst GetHLinHL                                          ; $4b00: $cf
	rra                                              ; $4b01: $1f
	cp b                                             ; $4b02: $b8
	ld a, d                                          ; $4b03: $7a
	ld b, d                                          ; $4b04: $42
	sbc d                                            ; $4b05: $9a
	jr c, jr_052_4b58                                ; $4b06: $38 $50

	jr nc, jr_052_4aea                               ; $4b08: $30 $e0

	rst JumpTable                                          ; $4b0a: $c7
	ld a, d                                          ; $4b0b: $7a
	db $e4                                           ; $4b0c: $e4
	sbc d                                            ; $4b0d: $9a
	rst SubAFromDE                                          ; $4b0e: $df
	rst $38                                          ; $4b0f: $ff
	ld l, a                                          ; $4b10: $6f
	rrca                                             ; $4b11: $0f
	cpl                                              ; $4b12: $2f
	ld a, e                                          ; $4b13: $7b
	add l                                            ; $4b14: $85
	rst $38                                          ; $4b15: $ff
	adc c                                            ; $4b16: $89
	sub b                                            ; $4b17: $90
	ldh a, [$d0]                                     ; $4b18: $f0 $d0
	ret z                                            ; $4b1a: $c8

	ld hl, sp-$0f                                    ; $4b1b: $f8 $f1
	ldh [$e1], a                                     ; $4b1d: $e0 $e1
	adc $80                                          ; $4b1f: $ce $80
	sbc h                                            ; $4b21: $9c
	scf                                              ; $4b22: $37
	rlca                                             ; $4b23: $07
	ld c, $1f                                        ; $4b24: $0e $1f
	ld e, $31                                        ; $4b26: $1e $31
	ld a, a                                          ; $4b28: $7f
	ld h, e                                          ; $4b29: $63
	inc e                                            ; $4b2a: $1c
	db $e3                                           ; $4b2b: $e3
	add e                                            ; $4b2c: $83
	halt                                             ; $4b2d: $76
	sbc d                                            ; $4b2e: $9a
	sbc e                                            ; $4b2f: $9b
	dec b                                            ; $4b30: $05
	db $e3                                           ; $4b31: $e3
	inc e                                            ; $4b32: $1c
	ld a, h                                          ; $4b33: $7c
	call c, $9bff                                    ; $4b34: $dc $ff $9b
	rra                                              ; $4b37: $1f
	cp $7c                                           ; $4b38: $fe $7c
	jr @-$01                                         ; $4b3a: $18 $fd

	sbc e                                            ; $4b3c: $9b
	ldh [rSB], a                                     ; $4b3d: $e0 $01
	add e                                            ; $4b3f: $83
	rst SubAFromBC                                          ; $4b40: $e7
	ld [hl], e                                       ; $4b41: $73
	jr jr_052_4bbe                                   ; $4b42: $18 $7a

	pop hl                                           ; $4b44: $e1
	sbc e                                            ; $4b45: $9b
	add hl, bc                                       ; $4b46: $09
	inc de                                           ; $4b47: $13
	inc de                                           ; $4b48: $13
	ld a, [bc]                                       ; $4b49: $0a
	ld l, a                                          ; $4b4a: $6f
	ld [$f37d], sp                                   ; $4b4b: $08 $7d $f3
	db $fd                                           ; $4b4e: $fd
	sbc e                                            ; $4b4f: $9b
	jr z, jr_052_4ae1                                ; $4b50: $28 $8f

	rlca                                             ; $4b52: $07
	cp [hl]                                          ; $4b53: $be
	db $dd                                           ; $4b54: $dd
	rst $38                                          ; $4b55: $ff
	sbc [hl]                                         ; $4b56: $9e
	rst SubAFromDE                                          ; $4b57: $df

jr_052_4b58:
	ld a, e                                          ; $4b58: $7b
	db $eb                                           ; $4b59: $eb
	sbc b                                            ; $4b5a: $98
	nop                                              ; $4b5b: $00
	ld b, a                                          ; $4b5c: $47
	rra                                              ; $4b5d: $1f
	ld a, c                                          ; $4b5e: $79
	rst SubAFromBC                                          ; $4b5f: $e7
	ld sp, hl                                        ; $4b60: $f9
	rst FarCall                                          ; $4b61: $f7
	ld a, e                                          ; $4b62: $7b
	adc c                                            ; $4b63: $89
	ld a, a                                          ; $4b64: $7f
	db $e3                                           ; $4b65: $e3
	ld a, [hl]                                       ; $4b66: $7e
	adc $7f                                          ; $4b67: $ce $7f
	ld b, b                                          ; $4b69: $40
	sbc l                                            ; $4b6a: $9d
	di                                               ; $4b6b: $f3
	adc a                                            ; $4b6c: $8f
	ld l, a                                          ; $4b6d: $6f
	sub $9e                                          ; $4b6e: $d6 $9e
	db $fc                                           ; $4b70: $fc
	ld a, c                                          ; $4b71: $79
	rst $38                                          ; $4b72: $ff
	db $fd                                           ; $4b73: $fd
	reti                                             ; $4b74: $d9


	rst $38                                          ; $4b75: $ff
	ld sp, hl                                        ; $4b76: $f9
	ld b, a                                          ; $4b77: $47
	ldh a, [hDisp0_SCY]                                     ; $4b78: $f0 $83
	ld e, $34                                        ; $4b7a: $1e $34
	rst FarCall                                          ; $4b7c: $f7
	db $e3                                           ; $4b7d: $e3
	jp nc, $8084                                     ; $4b7e: $d2 $84 $80

	add b                                            ; $4b81: $80
	ld hl, sp-$08                                    ; $4b82: $f8 $f8
	ld a, a                                          ; $4b84: $7f
	rst SubAFromDE                                          ; $4b85: $df
	db $eb                                           ; $4b86: $eb
	ld a, c                                          ; $4b87: $79
	ld a, b                                          ; $4b88: $78
	nop                                              ; $4b89: $00
	scf                                              ; $4b8a: $37
	ld [hl], a                                       ; $4b8b: $77
	call nz, $20d0                                   ; $4b8c: $c4 $d0 $20
	nop                                              ; $4b8f: $00
	nop                                              ; $4b90: $00

jr_052_4b91:
	ld e, h                                          ; $4b91: $5c
	dec bc                                           ; $4b92: $0b
	ld c, $2a                                        ; $4b93: $0e $2a
	and c                                            ; $4b95: $a1
	cp $9c                                           ; $4b96: $fe $9c
	jr nz, jr_052_4b9b                               ; $4b98: $20 $01

	add b                                            ; $4b9a: $80

jr_052_4b9b:
	ld a, c                                          ; $4b9b: $79
	sbc c                                            ; $4b9c: $99
	sbc h                                            ; $4b9d: $9c
	jr nc, jr_052_4b91                               ; $4b9e: $30 $f1

	db $fc                                           ; $4ba0: $fc
	ld h, [hl]                                       ; $4ba1: $66
	sub b                                            ; $4ba2: $90
	call c, $9cf2                                    ; $4ba3: $dc $f2 $9c
	ld a, [$79f9]                                    ; $4ba6: $fa $f9 $79
	call c, $de1f                                    ; $4ba9: $dc $1f $de
	rrca                                             ; $4bac: $0f
	rst SubAFromDE                                          ; $4bad: $df
	xor a                                            ; $4bae: $af
	sub [hl]                                         ; $4baf: $96
	xor c                                            ; $4bb0: $a9
	and c                                            ; $4bb1: $a1
	and c                                            ; $4bb2: $a1
	and l                                            ; $4bb3: $a5
	ld d, h                                          ; $4bb4: $54
	ld d, d                                          ; $4bb5: $52
	ldh a, [$f0]                                     ; $4bb6: $f0 $f0
	or $de                                           ; $4bb8: $f6 $de
	cp $df                                           ; $4bba: $fe $df
	rst $38                                          ; $4bbc: $ff
	add b                                            ; $4bbd: $80

jr_052_4bbe:
	ld c, $4a                                        ; $4bbe: $0e $4a
	xor d                                            ; $4bc0: $aa
	cp c                                             ; $4bc1: $b9
	sbc l                                            ; $4bc2: $9d
	adc l                                            ; $4bc3: $8d
	ld c, a                                          ; $4bc4: $4f
	ld c, a                                          ; $4bc5: $4f
	sbc c                                            ; $4bc6: $99
	sbc l                                            ; $4bc7: $9d
	db $dd                                           ; $4bc8: $dd
	rst GetHLinHL                                          ; $4bc9: $cf
	rst AddAOntoHL                                          ; $4bca: $ef
	rst $38                                          ; $4bcb: $ff
	ei                                               ; $4bcc: $fb
	ld a, [$df9b]                                    ; $4bcd: $fa $9b $df
	rst SubAFromDE                                          ; $4bd0: $df
	cp a                                             ; $4bd1: $bf
	ld a, a                                          ; $4bd2: $7f
	rst $38                                          ; $4bd3: $ff
	cp $f6                                           ; $4bd4: $fe $f6
	cp $f4                                           ; $4bd6: $fe $f4
	db $f4                                           ; $4bd8: $f4
	ld [hl], b                                       ; $4bd9: $70
	ldh a, [hDisp1_SCY]                                     ; $4bda: $f0 $90
	nop                                              ; $4bdc: $00
	add b                                            ; $4bdd: $80
	ld h, b                                          ; $4bde: $60
	and a                                            ; $4bdf: $a7
	ld a, h                                          ; $4be0: $7c
	xor b                                            ; $4be1: $a8
	cp h                                             ; $4be2: $bc
	ld a, [$0c12]                                    ; $4be3: $fa $12 $0c
	nop                                              ; $4be6: $00
	call c, Call_052_64bc                            ; $4be7: $dc $bc $64
	ld a, h                                          ; $4bea: $7c
	inc a                                            ; $4beb: $3c
	inc e                                            ; $4bec: $1c
	nop                                              ; $4bed: $00
	nop                                              ; $4bee: $00
	sbc a                                            ; $4bef: $9f
	adc a                                            ; $4bf0: $8f
	ld b, a                                          ; $4bf1: $47
	ld b, e                                          ; $4bf2: $43
	ld b, c                                          ; $4bf3: $41
	ld hl, $2830                                     ; $4bf4: $21 $30 $28
	ldh a, [$f8]                                     ; $4bf7: $f0 $f8
	db $fc                                           ; $4bf9: $fc
	ld a, [hl]                                       ; $4bfa: $7e
	ld a, a                                          ; $4bfb: $7f
	ld a, a                                          ; $4bfc: $7f
	rst SubAFromDE                                          ; $4bfd: $df
	ccf                                              ; $4bfe: $3f
	jp c, $9eff                                      ; $4bff: $da $ff $9e

	ld a, a                                          ; $4c02: $7f
	ei                                               ; $4c03: $fb
	ld a, l                                          ; $4c04: $7d
	jp nc, $1f94                                     ; $4c05: $d2 $94 $1f

	db $fc                                           ; $4c08: $fc
	di                                               ; $4c09: $f3
	rst $38                                          ; $4c0a: $ff
	cp $fc                                           ; $4c0b: $fe $fc
	db $fc                                           ; $4c0d: $fc
	ret c                                            ; $4c0e: $d8

	ldh [$03], a                                     ; $4c0f: $e0 $03
	inc c                                            ; $4c11: $0c
	ld [hl], l                                       ; $4c12: $75
	rrca                                             ; $4c13: $0f
	sbc d                                            ; $4c14: $9a
	daa                                              ; $4c15: $27
	db $fc                                           ; $4c16: $fc
	db $fc                                           ; $4c17: $fc
	sub b                                            ; $4c18: $90
	jr c, jr_052_4c96                                ; $4c19: $38 $7b

	ld h, b                                          ; $4c1b: $60
	sbc c                                            ; $4c1c: $99
	ld [$0303], sp                                   ; $4c1d: $08 $03 $03
	ld l, a                                          ; $4c20: $6f
	rst JumpTable                                          ; $4c21: $c7
	rst SubAFromDE                                          ; $4c22: $df
	sbc $ff                                          ; $4c23: $de $ff
	sub a                                            ; $4c25: $97
	add c                                            ; $4c26: $81
	add b                                            ; $4c27: $80
	inc bc                                           ; $4c28: $03
	ld bc, $b050                                     ; $4c29: $01 $50 $b0
	rla                                              ; $4c2c: $17
	ld bc, $ffdd                                     ; $4c2d: $01 $dd $ff
	ld a, a                                          ; $4c30: $7f
	sub a                                            ; $4c31: $97
	ld a, [hl]                                       ; $4c32: $7e
	cp $7f                                           ; $4c33: $fe $7f
	pop af                                           ; $4c35: $f1
	sbc d                                            ; $4c36: $9a
	ld [$8720], sp                                   ; $4c37: $08 $20 $87
	dec e                                            ; $4c3a: $1d
	ccf                                              ; $4c3b: $3f
	halt                                             ; $4c3c: $76
	ld h, d                                          ; $4c3d: $62
	ld [hl], a                                       ; $4c3e: $77
	pop hl                                           ; $4c3f: $e1
	sub [hl]                                         ; $4c40: $96
	rst $38                                          ; $4c41: $ff
	ccf                                              ; $4c42: $3f
	add e                                            ; $4c43: $83
	ld a, h                                          ; $4c44: $7c
	inc c                                            ; $4c45: $0c
	sub a                                            ; $4c46: $97
	db $eb                                           ; $4c47: $eb
	rst $38                                          ; $4c48: $ff
	and [hl]                                         ; $4c49: $a6
	ld [hl], e                                       ; $4c4a: $73
	di                                               ; $4c4b: $f3
	ld a, e                                          ; $4c4c: $7b
	db $ec                                           ; $4c4d: $ec
	sbc b                                            ; $4c4e: $98
	ld a, l                                          ; $4c4f: $7d
	db $e3                                           ; $4c50: $e3
	db $db                                           ; $4c51: $db
	cp l                                             ; $4c52: $bd
	ld a, [hl]                                       ; $4c53: $7e
	db $db                                           ; $4c54: $db
	rlca                                             ; $4c55: $07
	halt                                             ; $4c56: $76
	db $db                                           ; $4c57: $db
	ld a, c                                          ; $4c58: $79
	call nc, $f89b                                   ; $4c59: $d4 $9b $f8
	add b                                            ; $4c5c: $80
	add a                                            ; $4c5d: $87
	sbc a                                            ; $4c5e: $9f
	ld l, a                                          ; $4c5f: $6f
	adc l                                            ; $4c60: $8d
	sbc h                                            ; $4c61: $9c
	ld hl, sp-$20                                    ; $4c62: $f8 $e0
	ret nz                                           ; $4c64: $c0

	ld d, [hl]                                       ; $4c65: $56
	ldh [$9e], a                                     ; $4c66: $e0 $9e
	db $fd                                           ; $4c68: $fd
	ld a, [$029e]                                    ; $4c69: $fa $9e $02
	db $db                                           ; $4c6c: $db
	rst $38                                          ; $4c6d: $ff
	sbc l                                            ; $4c6e: $9d
	ld a, [hl]                                       ; $4c6f: $7e
	ei                                               ; $4c70: $fb
	ld l, e                                          ; $4c71: $6b
	ld [hl], b                                       ; $4c72: $70
	ld a, e                                          ; $4c73: $7b
	ldh [$7d], a                                     ; $4c74: $e0 $7d
	ld l, e                                          ; $4c76: $6b
	sbc e                                            ; $4c77: $9b
	xor $f7                                          ; $4c78: $ee $f7
	cp a                                             ; $4c7a: $bf
	ld a, [$72f9]                                    ; $4c7b: $fa $f9 $72
	add sp, $7b                                      ; $4c7e: $e8 $7b
	ld h, a                                          ; $4c80: $67
	ld sp, hl                                        ; $4c81: $f9
	adc d                                            ; $4c82: $8a
	ld h, b                                          ; $4c83: $60
	and h                                            ; $4c84: $a4
	call nc, Call_052_75dc                           ; $4c85: $d4 $dc $75
	cp $f8                                           ; $4c88: $fe $f8
	rst $38                                          ; $4c8a: $ff
	inc h                                            ; $4c8b: $24
	inc d                                            ; $4c8c: $14
	sub h                                            ; $4c8d: $94
	ld l, h                                          ; $4c8e: $6c
	inc a                                            ; $4c8f: $3c
	inc c                                            ; $4c90: $0c
	ld b, $02                                        ; $4c91: $06 $02
	ld c, h                                          ; $4c93: $4c
	rst SubAFromDE                                          ; $4c94: $df
	rst $38                                          ; $4c95: $ff

jr_052_4c96:
	db $fc                                           ; $4c96: $fc
	db $fd                                           ; $4c97: $fd
	ld e, d                                          ; $4c98: $5a
	sub b                                            ; $4c99: $90
	sub l                                            ; $4c9a: $95
	ld sp, hl                                        ; $4c9b: $f9
	sbc h                                            ; $4c9c: $9c
	call c, $fefe                                    ; $4c9d: $dc $fe $fe
	db $fd                                           ; $4ca0: $fd
	push af                                          ; $4ca1: $f5
	rst $38                                          ; $4ca2: $ff
	rrca                                             ; $4ca3: $0f
	rlca                                             ; $4ca4: $07
	ld a, b                                          ; $4ca5: $78
	cp a                                             ; $4ca6: $bf
	rst SubAFromDE                                          ; $4ca7: $df
	ld bc, $0096                                     ; $4ca8: $01 $96 $00
	ld c, d                                          ; $4cab: $4a
	xor l                                            ; $4cac: $ad
	and a                                            ; $4cad: $a7
	ld d, e                                          ; $4cae: $53
	ld d, e                                          ; $4caf: $53
	add hl, hl                                       ; $4cb0: $29
	add hl, hl                                       ; $4cb1: $29
	and h                                            ; $4cb2: $a4
	reti                                             ; $4cb3: $d9


	rst $38                                          ; $4cb4: $ff
	add d                                            ; $4cb5: $82
	dec l                                            ; $4cb6: $2d
	ld l, $1f                                        ; $4cb7: $2e $1f
	rst GetHLinHL                                          ; $4cb9: $cf
	di                                               ; $4cba: $f3
	di                                               ; $4cbb: $f3
	cp l                                             ; $4cbc: $bd
	rst $38                                          ; $4cbd: $ff
	ld a, [$f9f9]                                    ; $4cbe: $fa $f9 $f9
	ld hl, sp-$04                                    ; $4cc1: $f8 $fc
	sbc h                                            ; $4cc3: $9c
	adc $c3                                          ; $4cc4: $ce $c3
	ldh a, [$98]                                     ; $4cc6: $f0 $98
	ldh [$7c], a                                     ; $4cc8: $e0 $7c
	ret z                                            ; $4cca: $c8

	ldh a, [$fe]                                     ; $4ccb: $f0 $fe
	rst $38                                          ; $4ccd: $ff
	ldh a, [$b0]                                     ; $4cce: $f0 $b0
	ld hl, sp-$18                                    ; $4cd0: $f8 $e8
	jr nc, jr_052_4d4b                               ; $4cd2: $30 $77

	and b                                            ; $4cd4: $a0
	sub h                                            ; $4cd5: $94
	ld h, b                                          ; $4cd6: $60
	nop                                              ; $4cd7: $00
	db $10                                           ; $4cd8: $10
	inc c                                            ; $4cd9: $0c
	nop                                              ; $4cda: $00
	nop                                              ; $4cdb: $00
	pop bc                                           ; $4cdc: $c1
	nop                                              ; $4cdd: $00
	db $10                                           ; $4cde: $10
	inc b                                            ; $4cdf: $04
	ld [$97fd], sp                                   ; $4ce0: $08 $fd $97
	inc [hl]                                         ; $4ce3: $34
	ld a, [hl+]                                      ; $4ce4: $2a
	ld [hl], l                                       ; $4ce5: $75
	ld a, [hl+]                                      ; $4ce6: $2a
	ld [hl], l                                       ; $4ce7: $75
	ld a, [$f66d]                                    ; $4ce8: $fa $6d $f6
	sbc $3f                                          ; $4ceb: $de $3f
	sbc $7f                                          ; $4ced: $de $7f
	ld a, e                                          ; $4cef: $7b
	db $10                                           ; $4cf0: $10
	ld a, [hl]                                       ; $4cf1: $7e
	ld l, e                                          ; $4cf2: $6b
	adc c                                            ; $4cf3: $89
	add a                                            ; $4cf4: $87
	ld b, e                                          ; $4cf5: $43
	and c                                            ; $4cf6: $a1
	ld de, $e080                                     ; $4cf7: $11 $80 $e0
	or b                                             ; $4cfa: $b0
	ret c                                            ; $4cfb: $d8

	call z, $f7e6                                    ; $4cfc: $cc $e6 $f7
	di                                               ; $4cff: $f3
	ei                                               ; $4d00: $fb
	adc h                                            ; $4d01: $8c
	add b                                            ; $4d02: $80
	and b                                            ; $4d03: $a0
	db $10                                           ; $4d04: $10
	ld [$b220], sp                                   ; $4d05: $08 $20 $b2
	adc e                                            ; $4d08: $8b
	ld [hl], e                                       ; $4d09: $73
	ld [hl], a                                       ; $4d0a: $77
	db $e3                                           ; $4d0b: $e3
	sub h                                            ; $4d0c: $94
	rst $38                                          ; $4d0d: $ff
	call $08f4                                       ; $4d0e: $cd $f4 $08
	nop                                              ; $4d11: $00
	add b                                            ; $4d12: $80
	ld bc, $5312                                     ; $4d13: $01 $12 $53
	inc bc                                           ; $4d16: $03
	adc a                                            ; $4d17: $8f
	ld [hl], a                                       ; $4d18: $77
	nop                                              ; $4d19: $00
	add a                                            ; $4d1a: $87
	rst AddAOntoHL                                          ; $4d1b: $ef
	xor a                                            ; $4d1c: $af
	rst $38                                          ; $4d1d: $ff
	ld a, a                                          ; $4d1e: $7f
	dec e                                            ; $4d1f: $1d
	scf                                              ; $4d20: $37
	xor $b0                                          ; $4d21: $ee $b0
	db $e3                                           ; $4d23: $e3
	res 0, e                                         ; $4d24: $cb $83
	rrca                                             ; $4d26: $0f
	db $e3                                           ; $4d27: $e3
	rst GetHLinHL                                          ; $4d28: $cf
	rra                                              ; $4d29: $1f
	ld a, a                                          ; $4d2a: $7f
	db $fc                                           ; $4d2b: $fc
	db $f4                                           ; $4d2c: $f4
	db $fc                                           ; $4d2d: $fc
	ldh a, [$f9]                                     ; $4d2e: $f0 $f9
	add e                                            ; $4d30: $83
	ld b, b                                          ; $4d31: $40
	db $eb                                           ; $4d32: $eb
	db $db                                           ; $4d33: $db
	rst $38                                          ; $4d34: $ff
	sbc l                                            ; $4d35: $9d
	cp a                                             ; $4d36: $bf
	inc d                                            ; $4d37: $14
	ld [hl], c                                       ; $4d38: $71
	ld a, b                                          ; $4d39: $78
	ld [hl], l                                       ; $4d3a: $75
	sbc e                                            ; $4d3b: $9b
	db $dd                                           ; $4d3c: $dd
	rst $38                                          ; $4d3d: $ff
	ld [hl], h                                       ; $4d3e: $74
	add e                                            ; $4d3f: $83
	ld bc, $ffb0                                     ; $4d40: $01 $b0 $ff
	ld a, [hl]                                       ; $4d43: $7e
	ldh [c], a                                       ; $4d44: $e2
	ld a, d                                          ; $4d45: $7a
	jp $de7e                                         ; $4d46: $c3 $7e $de


	sbc l                                            ; $4d49: $9d
	db $fd                                           ; $4d4a: $fd

jr_052_4d4b:
	inc b                                            ; $4d4b: $04
	ld a, [$fd97]                                    ; $4d4c: $fa $97 $fd
	rst AddAOntoHL                                          ; $4d4f: $ef
	push af                                          ; $4d50: $f5
	ld e, d                                          ; $4d51: $5a
	and l                                            ; $4d52: $a5
	jp nc, Jump_052_66cd                             ; $4d53: $d2 $cd $66

	ld sp, hl                                        ; $4d56: $f9
	sbc b                                            ; $4d57: $98
	ld c, l                                          ; $4d58: $4d
	and e                                            ; $4d59: $a3
	ld l, l                                          ; $4d5a: $6d
	sub [hl]                                         ; $4d5b: $96
	ld l, a                                          ; $4d5c: $6f
	db $db                                           ; $4d5d: $db
	ld l, [hl]                                       ; $4d5e: $6e
	ld h, e                                          ; $4d5f: $63
	ret nc                                           ; $4d60: $d0

	ld a, [hl]                                       ; $4d61: $7e
	db $fc                                           ; $4d62: $fc
	ld a, e                                          ; $4d63: $7b
	db $fc                                           ; $4d64: $fc
	sbc h                                            ; $4d65: $9c
	dec bc                                           ; $4d66: $0b
	rrca                                             ; $4d67: $0f
	rla                                              ; $4d68: $17
	ld sp, hl                                        ; $4d69: $f9
	sbc l                                            ; $4d6a: $9d
	db $fc                                           ; $4d6b: $fc
	rst $38                                          ; $4d6c: $ff
	ld a, c                                          ; $4d6d: $79
	ld sp, hl                                        ; $4d6e: $f9
	ld a, e                                          ; $4d6f: $7b
	adc l                                            ; $4d70: $8d
	halt                                             ; $4d71: $76
	db $e4                                           ; $4d72: $e4
	ld l, a                                          ; $4d73: $6f
	and b                                            ; $4d74: $a0
	ld a, a                                          ; $4d75: $7f
	di                                               ; $4d76: $f3
	ld a, b                                          ; $4d77: $78
	cp [hl]                                          ; $4d78: $be
	sbc [hl]                                         ; $4d79: $9e
	rst AddAOntoHL                                          ; $4d7a: $ef
	ld a, d                                          ; $4d7b: $7a
	sub [hl]                                         ; $4d7c: $96
	ld a, l                                          ; $4d7d: $7d
	di                                               ; $4d7e: $f3
	sbc h                                            ; $4d7f: $9c
	ld h, b                                          ; $4d80: $60
	jr nz, @+$32                                     ; $4d81: $20 $30

	ld [hl], l                                       ; $4d83: $75
	sbc h                                            ; $4d84: $9c
	ld d, a                                          ; $4d85: $57
	sub b                                            ; $4d86: $90
	sub [hl]                                         ; $4d87: $96
	sub h                                            ; $4d88: $94
	ld d, d                                          ; $4d89: $52
	jp z, $ede9                                      ; $4d8a: $ca $e9 $ed

	db $f4                                           ; $4d8d: $f4
	or $fa                                           ; $4d8e: $f6 $fa
	rst $38                                          ; $4d90: $ff
	ld [hl], l                                       ; $4d91: $75
	jp $6e79                                         ; $4d92: $c3 $79 $6e


	sub [hl]                                         ; $4d95: $96
	rst AddAOntoHL                                          ; $4d96: $ef
	ld a, a                                          ; $4d97: $7f
	ld e, [hl]                                       ; $4d98: $5e
	cpl                                              ; $4d99: $2f
	dec h                                            ; $4d9a: $25
	sbc l                                            ; $4d9b: $9d
	sbc c                                            ; $4d9c: $99
	db $fd                                           ; $4d9d: $fd
	di                                               ; $4d9e: $f3
	ld a, e                                          ; $4d9f: $7b
	ret c                                            ; $4da0: $d8

	ld a, b                                          ; $4da1: $78
	rst AddAOntoHL                                          ; $4da2: $ef
	sbc l                                            ; $4da3: $9d
	cp $cf                                           ; $4da4: $fe $cf
	ld a, e                                          ; $4da6: $7b
	ret nz                                           ; $4da7: $c0

	sbc d                                            ; $4da8: $9a
	ldh a, [$97]                                     ; $4da9: $f0 $97
	dec e                                            ; $4dab: $1d
	ld sp, $7bf0                                     ; $4dac: $31 $f0 $7b
	xor h                                            ; $4daf: $ac
	add b                                            ; $4db0: $80
	rra                                              ; $4db1: $1f
	jr jr_052_4dd2                                   ; $4db2: $18 $1e

	ld bc, $fff9                                     ; $4db4: $01 $f9 $ff
	xor $93                                          ; $4db7: $ee $93
	inc hl                                           ; $4db9: $23
	add b                                            ; $4dba: $80
	pop hl                                           ; $4dbb: $e1
	cp [hl]                                          ; $4dbc: $be
	rlca                                             ; $4dbd: $07
	rst $38                                          ; $4dbe: $ff
	ldh a, [c]                                       ; $4dbf: $f2
	ldh [c], a                                       ; $4dc0: $e2
	pop bc                                           ; $4dc1: $c1
	ld bc, $c000                                     ; $4dc2: $01 $00 $c0
	ei                                               ; $4dc5: $fb
	ld l, l                                          ; $4dc6: $6d
	inc hl                                           ; $4dc7: $23
	adc c                                            ; $4dc8: $89
	ld e, c                                          ; $4dc9: $59
	di                                               ; $4dca: $f3
	ld b, h                                          ; $4dcb: $44
	xor a                                            ; $4dcc: $af
	rst $38                                          ; $4dcd: $ff
	rst $38                                          ; $4dce: $ff
	ld b, a                                          ; $4dcf: $47
	adc c                                            ; $4dd0: $89
	rlca                                             ; $4dd1: $07

jr_052_4dd2:
	add c                                            ; $4dd2: $81
	ret nz                                           ; $4dd3: $c0

	ldh [$37], a                                     ; $4dd4: $e0 $37
	ld c, b                                          ; $4dd6: $48
	and [hl]                                         ; $4dd7: $a6
	push hl                                          ; $4dd8: $e5
	ld d, d                                          ; $4dd9: $52
	ld l, c                                          ; $4dda: $69
	db $fd                                           ; $4ddb: $fd
	db $f4                                           ; $4ddc: $f4
	ld a, [$fdfd]                                    ; $4ddd: $fa $fd $fd
	cp $bf                                           ; $4de0: $fe $bf
	sbc a                                            ; $4de2: $9f
	adc a                                            ; $4de3: $8f
	adc a                                            ; $4de4: $8f
	ld b, a                                          ; $4de5: $47
	ld a, a                                          ; $4de6: $7f
	ld a, d                                          ; $4de7: $7a
	xor a                                            ; $4de8: $af
	sbc c                                            ; $4de9: $99
	rlca                                             ; $4dea: $07
	add a                                            ; $4deb: $87
	add e                                            ; $4dec: $83
	jp $e0c0                                         ; $4ded: $c3 $c0 $e0


	ld a, c                                          ; $4df0: $79
	ld e, [hl]                                       ; $4df1: $5e
	sub [hl]                                         ; $4df2: $96
	db $fc                                           ; $4df3: $fc
	cp $fe                                           ; $4df4: $fe $fe
	ld a, [hl]                                       ; $4df6: $7e
	ld hl, sp-$03                                    ; $4df7: $f8 $fd
	add hl, de                                       ; $4df9: $19
	rlca                                             ; $4dfa: $07
	ld e, a                                          ; $4dfb: $5f
	ld [hl], b                                       ; $4dfc: $70
	ld [hl], h                                       ; $4dfd: $74
	ld a, a                                          ; $4dfe: $7f
	and c                                            ; $4dff: $a1
	sbc h                                            ; $4e00: $9c
	and b                                            ; $4e01: $a0
	nop                                              ; $4e02: $00
	nop                                              ; $4e03: $00
	ld h, l                                          ; $4e04: $65
	ld c, a                                          ; $4e05: $4f
	ld l, l                                          ; $4e06: $6d
	jp nz, $e002                                     ; $4e07: $c2 $02 $e0

	ld a, e                                          ; $4e0a: $7b
	ldh a, [$9d]                                     ; $4e0b: $f0 $9d
	db $fd                                           ; $4e0d: $fd
	db $ed                                           ; $4e0e: $ed
	ld l, a                                          ; $4e0f: $6f
	ldh a, [$9d]                                     ; $4e10: $f0 $9d
	ld [bc], a                                       ; $4e12: $02
	ld [de], a                                       ; $4e13: $12
	ld l, a                                          ; $4e14: $6f
	ldh a, [$7b]                                     ; $4e15: $f0 $7b
	ld d, a                                          ; $4e17: $57
	sbc h                                            ; $4e18: $9c
	rst GetHLinHL                                          ; $4e19: $cf
	db $fc                                           ; $4e1a: $fc
	cp [hl]                                          ; $4e1b: $be
	ld sp, hl                                        ; $4e1c: $f9
	sub a                                            ; $4e1d: $97
	rst FarCall                                          ; $4e1e: $f7
	cp d                                             ; $4e1f: $ba
	ld h, a                                          ; $4e20: $67
	ld a, [$9855]                                    ; $4e21: $fa $55 $98
	di                                               ; $4e24: $f3
	ld h, $f9                                        ; $4e25: $26 $f9
	sbc b                                            ; $4e27: $98
	call $a4fb                                       ; $4e28: $cd $fb $a4
	rst GetHLinHL                                          ; $4e2b: $cf
	cp $bb                                           ; $4e2c: $fe $bb
	rst SubAFromDE                                          ; $4e2e: $df
	ld h, e                                          ; $4e2f: $63
	ret nz                                           ; $4e30: $c0

	sbc e                                            ; $4e31: $9b
	ld d, c                                          ; $4e32: $51
	xor a                                            ; $4e33: $af
	xor e                                            ; $4e34: $ab
	rst SubAFromHL                                          ; $4e35: $d7
	ld d, a                                          ; $4e36: $57
	or b                                             ; $4e37: $b0
	sbc l                                            ; $4e38: $9d
	rlca                                             ; $4e39: $07
	ld [bc], a                                       ; $4e3a: $02
	halt                                             ; $4e3b: $76
	rst SubAFromHL                                          ; $4e3c: $d7
	ld a, l                                          ; $4e3d: $7d
	ld a, a                                          ; $4e3e: $7f
	ld sp, hl                                        ; $4e3f: $f9
	add b                                            ; $4e40: $80
	ld [hl], a                                       ; $4e41: $77
	and [hl]                                         ; $4e42: $a6
	sub h                                            ; $4e43: $94
	ld bc, $e103                                     ; $4e44: $01 $03 $e1
	jp c, $88fe                                      ; $4e47: $da $fe $88

	ld e, c                                          ; $4e4a: $59
	ld l, e                                          ; $4e4b: $6b
	ld a, [hl]                                       ; $4e4c: $7e
	jr c, jr_052_4e55                                ; $4e4d: $38 $06

	dec b                                            ; $4e4f: $05
	ld bc, $eff7                                     ; $4e50: $01 $f7 $ef
	ei                                               ; $4e53: $fb
	rst FarCall                                          ; $4e54: $f7

jr_052_4e55:
	db $fd                                           ; $4e55: $fd
	inc sp                                           ; $4e56: $33
	ld b, $9d                                        ; $4e57: $06 $9d
	jr jr_052_4e73                                   ; $4e59: $18 $18

	inc c                                            ; $4e5b: $0c
	inc c                                            ; $4e5c: $0c
	ld b, $ce                                        ; $4e5d: $06 $ce
	ei                                               ; $4e5f: $fb

jr_052_4e60:
	sbc [hl]                                         ; $4e60: $9e
	ld h, e                                          ; $4e61: $63
	ld l, b                                          ; $4e62: $68
	and c                                            ; $4e63: $a1

jr_052_4e64:
	sbc [hl]                                         ; $4e64: $9e
	sbc a                                            ; $4e65: $9f
	ld l, c                                          ; $4e66: $69
	ld b, d                                          ; $4e67: $42
	sbc e                                            ; $4e68: $9b
	ld h, b                                          ; $4e69: $60
	ei                                               ; $4e6a: $fb
	ld a, [$ddfc]                                    ; $4e6b: $fa $fc $dd
	ld hl, sp-$62                                    ; $4e6e: $f8 $9e
	db $fc                                           ; $4e70: $fc
	reti                                             ; $4e71: $d9


	rrca                                             ; $4e72: $0f

jr_052_4e73:
	sub e                                            ; $4e73: $93
	ld [hl], d                                       ; $4e74: $72
	ld sp, hl                                        ; $4e75: $f9
	ldh [$9f], a                                     ; $4e76: $e0 $9f
	ld a, a                                          ; $4e78: $7f
	rst $38                                          ; $4e79: $ff
	rst JumpTable                                          ; $4e7a: $c7
	ld b, b                                          ; $4e7b: $40
	adc a                                            ; $4e7c: $8f
	rlca                                             ; $4e7d: $07
	rra                                              ; $4e7e: $1f
	ld h, b                                          ; $4e7f: $60
	ld a, d                                          ; $4e80: $7a
	ld c, $90                                        ; $4e81: $0e $90
	add b                                            ; $4e83: $80
	db $10                                           ; $4e84: $10

jr_052_4e85:
	jr nz, jr_052_4e60                               ; $4e85: $20 $d9

	ld h, d                                          ; $4e87: $62
	and $f8                                          ; $4e88: $e6 $f8
	rst $38                                          ; $4e8a: $ff
	nop                                              ; $4e8b: $00
	ld h, b                                          ; $4e8c: $60
	ret c                                            ; $4e8d: $d8

	db $fc                                           ; $4e8e: $fc
	db $fd                                           ; $4e8f: $fd
	rra                                              ; $4e90: $1f
	rlca                                             ; $4e91: $07
	ld a, e                                          ; $4e92: $7b
	ld d, b                                          ; $4e93: $50
	add b                                            ; $4e94: $80
	add a                                            ; $4e95: $87
	ld c, a                                          ; $4e96: $4f
	ld [$5f6a], sp                                   ; $4e97: $08 $6a $5f
	inc hl                                           ; $4e9a: $23
	dec bc                                           ; $4e9b: $0b
	ld a, h                                          ; $4e9c: $7c
	inc bc                                           ; $4e9d: $03
	add h                                            ; $4e9e: $84
	add sp, -$04                                     ; $4e9f: $e8 $fc
	cp h                                             ; $4ea1: $bc
	rst $38                                          ; $4ea2: $ff
	rlca                                             ; $4ea3: $07
	inc a                                            ; $4ea4: $3c
	reti                                             ; $4ea5: $d9


	ldh a, [rSVBK]                                   ; $4ea6: $f0 $70
	scf                                              ; $4ea8: $37
	cp $eb                                           ; $4ea9: $fe $eb
	db $e4                                           ; $4eab: $e4
	jr jr_052_4e64                                   ; $4eac: $18 $b6

	halt                                             ; $4eae: $76
	jr c, jr_052_4ed0                                ; $4eaf: $38 $1f

	ccf                                              ; $4eb1: $3f
	ld h, h                                          ; $4eb2: $64
	ret nz                                           ; $4eb3: $c0

	sub d                                            ; $4eb4: $92
	ei                                               ; $4eb5: $fb
	rst SubAFromDE                                          ; $4eb6: $df
	ld e, l                                          ; $4eb7: $5d
	ld a, e                                          ; $4eb8: $7b
	rst SubAFromDE                                          ; $4eb9: $df
	sub e                                            ; $4eba: $93
	sub b                                            ; $4ebb: $90
	jr nc, jr_052_4e85                               ; $4ebc: $30 $c7

	db $e3                                           ; $4ebe: $e3
	ld h, e                                          ; $4ebf: $63
	ld a, l                                          ; $4ec0: $7d
	rst GetHLinHL                                          ; $4ec1: $cf
	cp $9a                                           ; $4ec2: $fe $9a
	ld h, c                                          ; $4ec4: $61
	and c                                            ; $4ec5: $a1
	pop de                                           ; $4ec6: $d1
	ld e, c                                          ; $4ec7: $59
	ld e, l                                          ; $4ec8: $5d
	sbc $bf                                          ; $4ec9: $de $bf
	sbc $ff                                          ; $4ecb: $de $ff
	sbc d                                            ; $4ecd: $9a
	rst AddAOntoHL                                          ; $4ece: $ef
	rst SubAFromBC                                          ; $4ecf: $e7

jr_052_4ed0:
	db $e3                                           ; $4ed0: $e3
	pop hl                                           ; $4ed1: $e1
	ldh [rOCPD], a                                   ; $4ed2: $e0 $6b
	add b                                            ; $4ed4: $80
	ld l, e                                          ; $4ed5: $6b
	ld b, b                                          ; $4ed6: $40
	rst SubAFromDE                                          ; $4ed7: $df
	add b                                            ; $4ed8: $80
	jp c, $9eff                                      ; $4ed9: $da $ff $9e

	db $fc                                           ; $4edc: $fc
	ld l, c                                          ; $4edd: $69
	ldh a, [c]                                       ; $4ede: $f2
	sbc [hl]                                         ; $4edf: $9e
	inc c                                            ; $4ee0: $0c
	db $db                                           ; $4ee1: $db
	rst $38                                          ; $4ee2: $ff
	sbc [hl]                                         ; $4ee3: $9e
	rlca                                             ; $4ee4: $07
	ld l, [hl]                                       ; $4ee5: $6e
	inc bc                                           ; $4ee6: $03
	sbc l                                            ; $4ee7: $9d
	ld hl, sp+$06                                    ; $4ee8: $f8 $06
	ld [hl], b                                       ; $4eea: $70
	jr z, jr_052_4f48                                ; $4eeb: $28 $5b

	db $10                                           ; $4eed: $10
	ld h, a                                          ; $4eee: $67
	ret nc                                           ; $4eef: $d0

	ld e, h                                          ; $4ef0: $5c
	or b                                             ; $4ef1: $b0
	ld a, [hl]                                       ; $4ef2: $7e
	or b                                             ; $4ef3: $b0
	sbc l                                            ; $4ef4: $9d
	xor e                                            ; $4ef5: $ab
	ld [hl], a                                       ; $4ef6: $77
	ld d, [hl]                                       ; $4ef7: $56
	and b                                            ; $4ef8: $a0
	ld a, a                                          ; $4ef9: $7f
	di                                               ; $4efa: $f3
	sbc e                                            ; $4efb: $9b
	cp $fc                                           ; $4efc: $fe $fc
	pop af                                           ; $4efe: $f1
	rst $38                                          ; $4eff: $ff
	ld [hl], a                                       ; $4f00: $77
	add l                                            ; $4f01: $85
	ld a, [hl]                                       ; $4f02: $7e
	ld hl, sp-$67                                    ; $4f03: $f8 $99
	ld c, $00                                        ; $4f05: $0e $00
	jr nc, @+$01                                     ; $4f07: $30 $ff

	rst $38                                          ; $4f09: $ff
	sbc a                                            ; $4f0a: $9f
	ld l, e                                          ; $4f0b: $6b
	ret nc                                           ; $4f0c: $d0

	ld a, h                                          ; $4f0d: $7c
	rst JumpTable                                          ; $4f0e: $c7
	ld [hl], $70                                     ; $4f0f: $36 $70
	ld a, h                                          ; $4f11: $7c
	ld a, d                                          ; $4f12: $7a
	sbc c                                            ; $4f13: $99
	nop                                              ; $4f14: $00
	jr nz, @-$0d                                     ; $4f15: $20 $f1

	di                                               ; $4f17: $f3
	ei                                               ; $4f18: $fb
	ld sp, hl                                        ; $4f19: $f9
	ld sp, hl                                        ; $4f1a: $f9
	add b                                            ; $4f1b: $80
	sbc $fd                                          ; $4f1c: $de $fd
	cp $ff                                           ; $4f1e: $fe $ff
	push hl                                          ; $4f20: $e5
	ld [hl], b                                       ; $4f21: $70
	db $f4                                           ; $4f22: $f4
	ldh [rSB], a                                     ; $4f23: $e0 $01
	ld [bc], a                                       ; $4f25: $02
	ld bc, $1a00                                     ; $4f26: $01 $00 $1a
	rrca                                             ; $4f29: $0f
	dec bc                                           ; $4f2a: $0b
	rra                                              ; $4f2b: $1f
	rrca                                             ; $4f2c: $0f
	inc b                                            ; $4f2d: $04
	add hl, bc                                       ; $4f2e: $09
	ld hl, $c630                                     ; $4f2f: $21 $30 $c6
	ld [bc], a                                       ; $4f32: $02
	ld [bc], a                                       ; $4f33: $02
	pop af                                           ; $4f34: $f1
	ei                                               ; $4f35: $fb
	or $de                                           ; $4f36: $f6 $de
	rst GetHLinHL                                          ; $4f38: $cf
	add hl, sp                                       ; $4f39: $39
	db $fd                                           ; $4f3a: $fd
	adc [hl]                                         ; $4f3b: $8e
	db $fd                                           ; $4f3c: $fd
	inc de                                           ; $4f3d: $13
	rst GetHLinHL                                          ; $4f3e: $cf
	cp a                                             ; $4f3f: $bf
	ld a, a                                          ; $4f40: $7f
	pop bc                                           ; $4f41: $c1
	inc sp                                           ; $4f42: $33
	ld l, e                                          ; $4f43: $6b
	ld e, a                                          ; $4f44: $5f
	db $ec                                           ; $4f45: $ec
	or b                                             ; $4f46: $b0
	ret nz                                           ; $4f47: $c0

jr_052_4f48:
	ret nz                                           ; $4f48: $c0

	ld a, [hl]                                       ; $4f49: $7e
	db $ec                                           ; $4f4a: $ec
	or h                                             ; $4f4b: $b4
	or b                                             ; $4f4c: $b0
	sbc $fe                                          ; $4f4d: $de $fe
	ld l, a                                          ; $4f4f: $6f
	ld c, [hl]                                       ; $4f50: $4e
	ld l, b                                          ; $4f51: $68
	jr nc, @-$77                                     ; $4f52: $30 $87

	ld h, b                                          ; $4f54: $60
	jr nc, jr_052_4f8f                               ; $4f55: $30 $38

	inc e                                            ; $4f57: $1c
	sbc [hl]                                         ; $4f58: $9e
	adc a                                            ; $4f59: $8f
	rst GetHLinHL                                          ; $4f5a: $cf
	rst SubAFromBC                                          ; $4f5b: $e7
	add b                                            ; $4f5c: $80
	ret nz                                           ; $4f5d: $c0

	ret nz                                           ; $4f5e: $c0

	ldh [$e0], a                                     ; $4f5f: $e0 $e0
	ldh a, [$f0]                                     ; $4f61: $f0 $f0
	ld hl, sp-$10                                    ; $4f63: $f8 $f0
	ld a, a                                          ; $4f65: $7f
	ld c, $07                                        ; $4f66: $0e $07
	ld bc, $e101                                     ; $4f68: $01 $01 $e1
	di                                               ; $4f6b: $f3
	ld a, e                                          ; $4f6c: $7b
	ld [hl], c                                       ; $4f6d: $71
	db $fc                                           ; $4f6e: $fc
	sub l                                            ; $4f6f: $95
	ld bc, $00f8                                     ; $4f70: $01 $f8 $00
	rst $38                                          ; $4f73: $ff
	db $fc                                           ; $4f74: $fc
	ldh [$80], a                                     ; $4f75: $e0 $80
	add b                                            ; $4f77: $80
	nop                                              ; $4f78: $00
	rlca                                             ; $4f79: $07
	ld l, a                                          ; $4f7a: $6f
	ld a, l                                          ; $4f7b: $7d
	adc c                                            ; $4f7c: $89
	and b                                            ; $4f7d: $a0
	rra                                              ; $4f7e: $1f
	rrca                                             ; $4f7f: $0f
	ld sp, hl                                        ; $4f80: $f9

Jump_052_4f81:
	ld bc, $e432                                     ; $4f81: $01 $32 $e4
	ret z                                            ; $4f84: $c8

	ld h, b                                          ; $4f85: $60
	ldh a, [rIE]                                     ; $4f86: $f0 $ff
	rlca                                             ; $4f88: $07
	ld b, $0c                                        ; $4f89: $06 $0c
	jr jr_052_4fbd                                   ; $4f8b: $18 $30

	ld h, c                                          ; $4f8d: $61
	ret nz                                           ; $4f8e: $c0

jr_052_4f8f:
	ld a, d                                          ; $4f8f: $7a
	rst $38                                          ; $4f90: $ff
	ld bc, $7a03                                     ; $4f91: $01 $03 $7a
	sub a                                            ; $4f94: $97
	sbc l                                            ; $4f95: $9d
	nop                                              ; $4f96: $00
	inc b                                            ; $4f97: $04
	ld [hl], e                                       ; $4f98: $73
	rst SubAFromDE                                          ; $4f99: $df
	sbc c                                            ; $4f9a: $99
	ccf                                              ; $4f9b: $3f
	ld e, a                                          ; $4f9c: $5f
	sbc $fe                                          ; $4f9d: $de $fe
	ei                                               ; $4f9f: $fb
	ldh [$78], a                                     ; $4fa0: $e0 $78
	ld a, b                                          ; $4fa2: $78
	sbc h                                            ; $4fa3: $9c
	ldh [$60], a                                     ; $4fa4: $e0 $60
	db $fc                                           ; $4fa6: $fc
	ld [hl], a                                       ; $4fa7: $77
	ld [$7fdf], a                                    ; $4fa8: $ea $df $7f
	adc h                                            ; $4fab: $8c
	ld a, [hl]                                       ; $4fac: $7e
	db $fc                                           ; $4fad: $fc
	rst $38                                          ; $4fae: $ff
	rlca                                             ; $4faf: $07
	inc bc                                           ; $4fb0: $03
	add hl, de                                       ; $4fb1: $19
	ld a, a                                          ; $4fb2: $7f
	ld bc, $0406                                     ; $4fb3: $01 $06 $04
	rst $38                                          ; $4fb6: $ff
	rlca                                             ; $4fb7: $07
	inc c                                            ; $4fb8: $0c
	ld [$f8f0], sp                                   ; $4fb9: $08 $f0 $f8
	sub a                                            ; $4fbc: $97

jr_052_4fbd:
	rst SubAFromHL                                          ; $4fbd: $d7
	rst $38                                          ; $4fbe: $ff
	ld a, d                                          ; $4fbf: $7a
	and d                                            ; $4fc0: $a2
	ld a, a                                          ; $4fc1: $7f
	ld hl, sp-$66                                    ; $4fc2: $f8 $9a
	sub h                                            ; $4fc4: $94
	sub e                                            ; $4fc5: $93
	sub d                                            ; $4fc6: $92
	jp nc, Jump_052_7bd6                             ; $4fc7: $d2 $d6 $7b

	call z, $8099                                    ; $4fca: $cc $99 $80
	ldh [$f0], a                                     ; $4fcd: $e0 $f0
	call c, $fece                                    ; $4fcf: $dc $ce $fe
	ld l, [hl]                                       ; $4fd2: $6e
	ld [hl+], a                                      ; $4fd3: $22
	sbc l                                            ; $4fd4: $9d
	ld [hl], b                                       ; $4fd5: $70
	ldh a, [$71]                                     ; $4fd6: $f0 $71
	ld b, b                                          ; $4fd8: $40
	ld a, b                                          ; $4fd9: $78
	sbc e                                            ; $4fda: $9b
	sbc d                                            ; $4fdb: $9a
	ld b, b                                          ; $4fdc: $40
	jr nz, jr_052_4fef                               ; $4fdd: $20 $10

	ld [$7b04], sp                                   ; $4fdf: $08 $04 $7b
	inc l                                            ; $4fe2: $2c
	ld b, $b0                                        ; $4fe3: $06 $b0
	inc bc                                           ; $4fe5: $03
	ldh a, [$7e]                                     ; $4fe6: $f0 $7e
	add hl, sp                                       ; $4fe8: $39
	ld d, e                                          ; $4fe9: $53
	ldh a, [$9c]                                     ; $4fea: $f0 $9c
	ret z                                            ; $4fec: $c8

	rst $38                                          ; $4fed: $ff
	ei                                               ; $4fee: $fb

jr_052_4fef:
	ld [hl], c                                       ; $4fef: $71
	cpl                                              ; $4ff0: $2f
	rst $38                                          ; $4ff1: $ff
	add b                                            ; $4ff2: $80
	inc c                                            ; $4ff3: $0c
	ld e, $1e                                        ; $4ff4: $1e $1e
	rrca                                             ; $4ff6: $0f
	rlca                                             ; $4ff7: $07
	rrca                                             ; $4ff8: $0f
	ld hl, sp-$05                                    ; $4ff9: $f8 $fb
	rst $38                                          ; $4ffb: $ff
	cp $f9                                           ; $4ffc: $fe $f9
	and h                                            ; $4ffe: $a4
	ret nc                                           ; $4fff: $d0

	ret nz                                           ; $5000: $c0

	rlca                                             ; $5001: $07
	inc b                                            ; $5002: $04
	nop                                              ; $5003: $00
	ld bc, wShiftedFarTextByteAddr                                     ; $5004: $01 $06 $d8
	ldh [$80], a                                     ; $5007: $e0 $80
	ldh [$f8], a                                     ; $5009: $e0 $f8
	add b                                            ; $500b: $80
	ld h, b                                          ; $500c: $60
	inc h                                            ; $500d: $24
	daa                                              ; $500e: $27
	ld [hl], $33                                     ; $500f: $36 $33
	rra                                              ; $5011: $1f
	add b                                            ; $5012: $80
	rlca                                             ; $5013: $07
	ld a, a                                          ; $5014: $7f
	xor a                                            ; $5015: $af
	dec hl                                           ; $5016: $2b
	jr z, jr_052_5042                                ; $5017: $28 $29

	inc d                                            ; $5019: $14
	scf                                              ; $501a: $37
	cpl                                              ; $501b: $2f
	dec de                                           ; $501c: $1b
	scf                                              ; $501d: $37
	cp h                                             ; $501e: $bc
	dec hl                                           ; $501f: $2b
	ld e, [hl]                                       ; $5020: $5e
	dec bc                                           ; $5021: $0b
	ret c                                            ; $5022: $d8

	ret c                                            ; $5023: $d8

	db $ec                                           ; $5024: $ec
	call z, $c646                                    ; $5025: $cc $46 $c6
	and e                                            ; $5028: $a3
	db $e3                                           ; $5029: $e3
	rst FarCall                                          ; $502a: $f7
	call c, $a3b6                                    ; $502b: $dc $b6 $a3
	rst JumpTable                                          ; $502e: $c7
	rra                                              ; $502f: $1f
	cp a                                             ; $5030: $bf

jr_052_5031:
	rra                                              ; $5031: $1f
	ld a, [$d17f]                                    ; $5032: $fa $7f $d1
	sbc l                                            ; $5035: $9d
	rst $38                                          ; $5036: $ff
	rst SubAFromBC                                          ; $5037: $e7
	ld a, d                                          ; $5038: $7a
	jp z, $977c                                      ; $5039: $ca $7c $97

	ld [hl], b                                       ; $503c: $70
	ld sp, $467b                                     ; $503d: $31 $7b $46
	sbc e                                            ; $5040: $9b
	db $e3                                           ; $5041: $e3

jr_052_5042:
	ld a, h                                          ; $5042: $7c
	cp $1b                                           ; $5043: $fe $1b
	ld [hl], a                                       ; $5045: $77
	ld [$1c9b], sp                                   ; $5046: $08 $9b $1c
	add e                                            ; $5049: $83
	pop hl                                           ; $504a: $e1
	db $fc                                           ; $504b: $fc
	db $dd                                           ; $504c: $dd
	rst $38                                          ; $504d: $ff
	sbc b                                            ; $504e: $98
	pop hl                                           ; $504f: $e1
	rst $38                                          ; $5050: $ff
	ccf                                              ; $5051: $3f
	add a                                            ; $5052: $87
	ld bc, $1ce0                                     ; $5053: $01 $e0 $1c
	ld a, e                                          ; $5056: $7b
	db $ed                                           ; $5057: $ed
	sbc l                                            ; $5058: $9d
	ret nz                                           ; $5059: $c0

	ld a, b                                          ; $505a: $78
	halt                                             ; $505b: $76
	add [hl]                                         ; $505c: $86
	sbc [hl]                                         ; $505d: $9e
	or [hl]                                          ; $505e: $b6
	ld [hl], c                                       ; $505f: $71
	or c                                             ; $5060: $b1
	sbc h                                            ; $5061: $9c
	rrca                                             ; $5062: $0f
	ret nz                                           ; $5063: $c0

	ld b, b                                          ; $5064: $40
	ld [hl], e                                       ; $5065: $73
	ld [hl-], a                                      ; $5066: $32
	ld a, [hl]                                       ; $5067: $7e
	cp e                                             ; $5068: $bb
	rst $38                                          ; $5069: $ff
	ld a, [hl]                                       ; $506a: $7e
	db $10                                           ; $506b: $10
	ld a, h                                          ; $506c: $7c
	ld h, a                                          ; $506d: $67
	sbc l                                            ; $506e: $9d
	add b                                            ; $506f: $80
	ccf                                              ; $5070: $3f
	ld [hl], d                                       ; $5071: $72
	sub h                                            ; $5072: $94
	ld a, a                                          ; $5073: $7f
	adc h                                            ; $5074: $8c
	ld a, [hl]                                       ; $5075: $7e
	or h                                             ; $5076: $b4
	ld a, c                                          ; $5077: $79
	rst $38                                          ; $5078: $ff
	sbc [hl]                                         ; $5079: $9e
	rrca                                             ; $507a: $0f
	ld a, e                                          ; $507b: $7b
	add hl, bc                                       ; $507c: $09
	cp $7e                                           ; $507d: $fe $7e
	sbc l                                            ; $507f: $9d
	ld a, e                                          ; $5080: $7b
	rst GetHLinHL                                          ; $5081: $cf
	sub b                                            ; $5082: $90
	pop hl                                           ; $5083: $e1
	db $e3                                           ; $5084: $e3
	pop af                                           ; $5085: $f1
	rst $38                                          ; $5086: $ff
	di                                               ; $5087: $f3
	cp a                                             ; $5088: $bf
	ld a, a                                          ; $5089: $7f
	db $fc                                           ; $508a: $fc
	add hl, de                                       ; $508b: $19
	ld de, $1212                                     ; $508c: $11 $12 $12
	ld e, $53                                        ; $508f: $1e $53
	sbc a                                            ; $5091: $9f
	ld [hl], e                                       ; $5092: $73
	jr c, jr_052_5031                                ; $5093: $38 $9c

	ld hl, sp+$7e                                    ; $5095: $f8 $7e
	rst SubAFromDE                                          ; $5097: $df
	ld [hl], e                                       ; $5098: $73
	ret nc                                           ; $5099: $d0

	halt                                             ; $509a: $76
	push bc                                          ; $509b: $c5
	sub c                                            ; $509c: $91
	cpl                                              ; $509d: $2f
	ld a, e                                          ; $509e: $7b
	rra                                              ; $509f: $1f
	dec b                                            ; $50a0: $05
	inc de                                           ; $50a1: $13
	inc bc                                           ; $50a2: $03
	add hl, de                                       ; $50a3: $19
	add c                                            ; $50a4: $81
	jr jr_052_50e3                                   ; $50a5: $18 $3c

	inc c                                            ; $50a7: $0c
	ld b, $0e                                        ; $50a8: $06 $0e
	ld bc, $8677                                     ; $50aa: $01 $77 $86
	rst SubAFromDE                                          ; $50ad: $df
	add b                                            ; $50ae: $80
	ld a, [hl]                                       ; $50af: $7e
	ld [hl], $7f                                     ; $50b0: $36 $7f
	push bc                                          ; $50b2: $c5
	ld h, l                                          ; $50b3: $65
	ld d, b                                          ; $50b4: $50
	ld a, d                                          ; $50b5: $7a
	or b                                             ; $50b6: $b0
	ld [hl], a                                       ; $50b7: $77
	ld l, c                                          ; $50b8: $69
	sbc e                                            ; $50b9: $9b
	inc bc                                           ; $50ba: $03
	ld b, b                                          ; $50bb: $40
	jr nz, jr_052_50ee                               ; $50bc: $20 $30

	ld a, d                                          ; $50be: $7a
	xor a                                            ; $50bf: $af
	sbc l                                            ; $50c0: $9d
	ld b, $02                                        ; $50c1: $06 $02
	ld a, [hl-]                                      ; $50c3: $3a
	ret nc                                           ; $50c4: $d0

	ld a, l                                          ; $50c5: $7d
	add b                                            ; $50c6: $80
	ld a, a                                          ; $50c7: $7f
	sbc a                                            ; $50c8: $9f
	sbc [hl]                                         ; $50c9: $9e
	rst SubAFromDE                                          ; $50ca: $df
	ld [hl], c                                       ; $50cb: $71
	add b                                            ; $50cc: $80
	sub a                                            ; $50cd: $97
	inc c                                            ; $50ce: $0c
	ld b, b                                          ; $50cf: $40
	jr nz, @+$01                                     ; $50d0: $20 $ff

	rst SubAFromBC                                          ; $50d2: $e7
	rst SubAFromDE                                          ; $50d3: $df
	ccf                                              ; $50d4: $3f
	ld a, a                                          ; $50d5: $7f
	ld [hl], a                                       ; $50d6: $77
	ldh [$9c], a                                     ; $50d7: $e0 $9c
	jr jr_052_50fb                                   ; $50d9: $18 $20

	ret nz                                           ; $50db: $c0

	ld a, b                                          ; $50dc: $78
	or b                                             ; $50dd: $b0
	ld [hl], d                                       ; $50de: $72
	or b                                             ; $50df: $b0
	ld [hl], a                                       ; $50e0: $77
	ld c, b                                          ; $50e1: $48
	ld h, e                                          ; $50e2: $63

jr_052_50e3:
	ret nc                                           ; $50e3: $d0

	sub h                                            ; $50e4: $94
	ld [$f4ec], a                                    ; $50e5: $ea $ec $f4
	db $e4                                           ; $50e8: $e4
	db $e4                                           ; $50e9: $e4
	xor $f6                                          ; $50ea: $ee $f6
	ld c, $1c                                        ; $50ec: $0e $1c

jr_052_50ee:
	inc d                                            ; $50ee: $14
	inc b                                            ; $50ef: $04
	sbc $14                                          ; $50f0: $de $14
	sbc [hl]                                         ; $50f2: $9e
	ld a, [bc]                                       ; $50f3: $0a
	db $fc                                           ; $50f4: $fc
	sbc l                                            ; $50f5: $9d
	ld [bc], a                                       ; $50f6: $02
	rrca                                             ; $50f7: $0f
	ld l, [hl]                                       ; $50f8: $6e
	ldh a, [$7b]                                     ; $50f9: $f0 $7b

jr_052_50fb:
	cp [hl]                                          ; $50fb: $be
	adc e                                            ; $50fc: $8b
	rla                                              ; $50fd: $17
	ld d, $1f                                        ; $50fe: $16 $1f
	ld l, a                                          ; $5100: $6f
	cp e                                             ; $5101: $bb
	rst SubAFromDE                                          ; $5102: $df
	xor h                                            ; $5103: $ac
	ld d, c                                          ; $5104: $51
	inc d                                            ; $5105: $14
	ld d, $17                                        ; $5106: $16 $17
	add hl, de                                       ; $5108: $19
	ld a, b                                          ; $5109: $78
	ret z                                            ; $510a: $c8

	dec bc                                           ; $510b: $0b
	ld c, $71                                        ; $510c: $0e $71
	call nz, $bf7f                                   ; $510e: $c4 $7f $bf
	halt                                             ; $5111: $76
	db $10                                           ; $5112: $10
	rst SubAFromDE                                          ; $5113: $df
	inc bc                                           ; $5114: $03
	ld a, a                                          ; $5115: $7f
	ld [hl], e                                       ; $5116: $73
	ld [hl], a                                       ; $5117: $77
	dec bc                                           ; $5118: $0b
	ld [hl], a                                       ; $5119: $77
	and h                                            ; $511a: $a4
	db $dd                                           ; $511b: $dd
	rst $38                                          ; $511c: $ff
	ld [hl], a                                       ; $511d: $77
	and h                                            ; $511e: $a4
	ld d, [hl]                                       ; $511f: $56
	ld d, b                                          ; $5120: $50
	ld l, l                                          ; $5121: $6d
	sub d                                            ; $5122: $92
	ld l, a                                          ; $5123: $6f
	ld b, c                                          ; $5124: $41
	sbc $c0                                          ; $5125: $de $c0
	ld [hl], h                                       ; $5127: $74
	adc b                                            ; $5128: $88
	db $dd                                           ; $5129: $dd
	ld a, a                                          ; $512a: $7f
	sub h                                            ; $512b: $94
	ccf                                              ; $512c: $3f
	ld bc, $ff3f                                     ; $512d: $01 $3f $ff
	rst $38                                          ; $5130: $ff
	ccf                                              ; $5131: $3f
	inc bc                                           ; $5132: $03
	ld e, $7d                                        ; $5133: $1e $7d
	rst $38                                          ; $5135: $ff
	ret nz                                           ; $5136: $c0

	ld a, d                                          ; $5137: $7a
	cp [hl]                                          ; $5138: $be
	adc c                                            ; $5139: $89
	db $fc                                           ; $513a: $fc
	pop hl                                           ; $513b: $e1
	add d                                            ; $513c: $82
	rst $38                                          ; $513d: $ff
	rst GetHLinHL                                          ; $513e: $cf
	call z, $9d9c                                    ; $513f: $cc $9c $9d
	ccf                                              ; $5142: $3f
	ld a, a                                          ; $5143: $7f
	rst AddAOntoHL                                          ; $5144: $ef
	rst $38                                          ; $5145: $ff
	ccf                                              ; $5146: $3f
	inc sp                                           ; $5147: $33
	ld h, e                                          ; $5148: $63
	ld h, e                                          ; $5149: $63
	jp nz, $1884                                     ; $514a: $c2 $84 $18

	ei                                               ; $514d: $fb
	rst AddAOntoHL                                          ; $514e: $ef
	rst SubAFromDE                                          ; $514f: $df
	ld [hl], a                                       ; $5150: $77
	ld e, [hl]                                       ; $5151: $5e
	ld a, a                                          ; $5152: $7f
	push hl                                          ; $5153: $e5
	sbc h                                            ; $5154: $9c
	ldh a, [$e0]                                     ; $5155: $f0 $e0
	ret nz                                           ; $5157: $c0

	sbc $40                                          ; $5158: $de $40
	ld a, c                                          ; $515a: $79
	ldh [$7e], a                                     ; $515b: $e0 $7e
	or d                                             ; $515d: $b2
	ld a, [hl]                                       ; $515e: $7e
	ld a, [hl-]                                      ; $515f: $3a
	ld a, c                                          ; $5160: $79
	daa                                              ; $5161: $27
	ld h, e                                          ; $5162: $63
	and b                                            ; $5163: $a0
	sbc [hl]                                         ; $5164: $9e
	ld a, l                                          ; $5165: $7d
	ld [hl], e                                       ; $5166: $73
	adc l                                            ; $5167: $8d
	ld a, b                                          ; $5168: $78
	ld d, h                                          ; $5169: $54
	db $fc                                           ; $516a: $fc
	sbc h                                            ; $516b: $9c
	rst AddAOntoHL                                          ; $516c: $ef
	db $fd                                           ; $516d: $fd
	ld a, a                                          ; $516e: $7f
	ld a, b                                          ; $516f: $78
	inc hl                                           ; $5170: $23
	rst SubAFromDE                                          ; $5171: $df
	rst SubAFromDE                                          ; $5172: $df
	sbc l                                            ; $5173: $9d
	ld e, $03                                        ; $5174: $1e $03
	ld a, e                                          ; $5176: $7b
	sbc b                                            ; $5177: $98
	sbc d                                            ; $5178: $9a
	ld b, b                                          ; $5179: $40
	ld h, b                                          ; $517a: $60
	ld h, b                                          ; $517b: $60
	ldh a, [$f1]                                     ; $517c: $f0 $f1
	ld a, e                                          ; $517e: $7b
	ret nz                                           ; $517f: $c0

Call_052_5180:
	sbc d                                            ; $5180: $9a
	pop af                                           ; $5181: $f1
	ldh a, [$e0]                                     ; $5182: $f0 $e0
	rrca                                             ; $5184: $0f
	ldh [$6e], a                                     ; $5185: $e0 $6e
	xor l                                            ; $5187: $ad
	sub a                                            ; $5188: $97
	ld hl, sp-$48                                    ; $5189: $f8 $b8
	cp h                                             ; $518b: $bc
	ld a, [hl]                                       ; $518c: $7e
	rst SubAFromDE                                          ; $518d: $df
	rst $38                                          ; $518e: $ff
	ld a, a                                          ; $518f: $7f
	cpl                                              ; $5190: $2f
	ld [hl], a                                       ; $5191: $77
	ld a, d                                          ; $5192: $7a
	sbc e                                            ; $5193: $9b
	ld h, b                                          ; $5194: $60
	jr nz, @+$12                                     ; $5195: $20 $10

	jr @+$75                                         ; $5197: $18 $73

	or a                                             ; $5199: $b7
	ld a, e                                          ; $519a: $7b
	ld l, h                                          ; $519b: $6c
	ld h, a                                          ; $519c: $67
	xor [hl]                                         ; $519d: $ae
	ld [hl], a                                       ; $519e: $77
	ld l, b                                          ; $519f: $68
	halt                                             ; $51a0: $76
	ld d, $7b                                        ; $51a1: $16 $7b
	db $ec                                           ; $51a3: $ec
	ld a, a                                          ; $51a4: $7f
	jp nz, $e07b                                     ; $51a5: $c2 $7b $e0

	ld [hl], d                                       ; $51a8: $72
	ldh [$7f], a                                     ; $51a9: $e0 $7f
	ld a, e                                          ; $51ab: $7b
	sbc [hl]                                         ; $51ac: $9e
	cp [hl]                                          ; $51ad: $be
	ld d, c                                          ; $51ae: $51
	sub b                                            ; $51af: $90
	sbc h                                            ; $51b0: $9c
	db $fd                                           ; $51b1: $fd
	or $b8                                           ; $51b2: $f6 $b8
	ld d, [hl]                                       ; $51b4: $56
	and b                                            ; $51b5: $a0
	sbc e                                            ; $51b6: $9b
	db $ed                                           ; $51b7: $ed
	or d                                             ; $51b8: $b2
	ld d, l                                          ; $51b9: $55
	ld [$80f9], a                                    ; $51ba: $ea $f9 $80
	ld [hl], d                                       ; $51bd: $72
	ld [de], a                                       ; $51be: $12
	sub [hl]                                         ; $51bf: $96
	rst GetHLinHL                                          ; $51c0: $cf
	rst SubAFromBC                                          ; $51c1: $e7
	rst GetHLinHL                                          ; $51c2: $cf
	sbc a                                            ; $51c3: $9f
	ld a, e                                          ; $51c4: $7b
	adc d                                            ; $51c5: $8a
	ld [$376b], a                                    ; $51c6: $ea $6b $37
	rlca                                             ; $51c9: $07
	rra                                              ; $51ca: $1f
	ccf                                              ; $51cb: $3f
	rst SubAFromBC                                          ; $51cc: $e7
	ld a, [hl-]                                      ; $51cd: $3a
	or l                                             ; $51ce: $b5
	rst SubAFromDE                                          ; $51cf: $df
	cp h                                             ; $51d0: $bc
	ld [hl], b                                       ; $51d1: $70
	db $e3                                           ; $51d2: $e3
	add a                                            ; $51d3: $87
	sbc a                                            ; $51d4: $9f
	db $10                                           ; $51d5: $10
	ld h, b                                          ; $51d6: $60
	add b                                            ; $51d7: $80
	inc bc                                           ; $51d8: $03
	rrca                                             ; $51d9: $0f
	inc e                                            ; $51da: $1c
	ld a, b                                          ; $51db: $78
	sbc e                                            ; $51dc: $9b
	ldh [$a3], a                                     ; $51dd: $e0 $a3
	rrca                                             ; $51df: $0f
	rra                                              ; $51e0: $1f
	ld [hl], e                                       ; $51e1: $73
	ld d, b                                          ; $51e2: $50
	sbc h                                            ; $51e3: $9c
	inc e                                            ; $51e4: $1c
	ld [hl], b                                       ; $51e5: $70
	ldh [$72], a                                     ; $51e6: $e0 $72
	db $dd                                           ; $51e8: $dd
	db $db                                           ; $51e9: $db
	rst $38                                          ; $51ea: $ff
	sbc [hl]                                         ; $51eb: $9e
	rst AddAOntoHL                                          ; $51ec: $ef

jr_052_51ed:
	ld l, c                                          ; $51ed: $69
	sub b                                            ; $51ee: $90
	sbc [hl]                                         ; $51ef: $9e
	db $10                                           ; $51f0: $10
	halt                                             ; $51f1: $76
	add sp, $11                                      ; $51f2: $e8 $11
	db $10                                           ; $51f4: $10
	ld a, b                                          ; $51f5: $78
	inc a                                            ; $51f6: $3c

jr_052_51f7:
	ld a, l                                          ; $51f7: $7d
	ld [hl], c                                       ; $51f8: $71
	rst SubAFromDE                                          ; $51f9: $df
	ld hl, sp-$62                                    ; $51fa: $f8 $9e
	ldh a, [$7b]                                     ; $51fc: $f0 $7b
	ld e, h                                          ; $51fe: $5c

Call_052_51ff:
	call c, $921f                                    ; $51ff: $dc $1f $92
	di                                               ; $5202: $f3
	rst JumpTable                                          ; $5203: $c7
	rra                                              ; $5204: $1f
	ld a, [hl]                                       ; $5205: $7e
	db $fd                                           ; $5206: $fd
	db $e3                                           ; $5207: $e3
	add [hl]                                         ; $5208: $86
	ld a, [bc]                                       ; $5209: $0a
	inc c                                            ; $520a: $0c
	jr c, jr_052_51ed                                ; $520b: $38 $e0

	add c                                            ; $520d: $81
	inc bc                                           ; $520e: $03
	ld a, e                                          ; $520f: $7b
	and l                                            ; $5210: $a5
	sbc l                                            ; $5211: $9d
	rst SubAFromDE                                          ; $5212: $df
	cp a                                             ; $5213: $bf
	ld a, d                                          ; $5214: $7a
	ld [hl], b                                       ; $5215: $70
	sbc $ff                                          ; $5216: $de $ff
	sbc e                                            ; $5218: $9b
	jr nc, @+$62                                     ; $5219: $30 $60

	ret nz                                           ; $521b: $c0

	ret nz                                           ; $521c: $c0

	call $df80                                       ; $521d: $cd $80 $df
	inc bc                                           ; $5220: $03
	rst SubAFromDE                                          ; $5221: $df
	rlca                                             ; $5222: $07
	rst SubAFromDE                                          ; $5223: $df
	rrca                                             ; $5224: $0f
	rst SubAFromDE                                          ; $5225: $df
	rra                                              ; $5226: $1f
	daa                                              ; $5227: $27
	and b                                            ; $5228: $a0
	ld a, a                                          ; $5229: $7f
	jp $efdf                                         ; $522a: $c3 $df $ef


	sub e                                            ; $522d: $93
	or a                                             ; $522e: $b7
	rst $38                                          ; $522f: $ff
	ld c, e                                          ; $5230: $4b
	sub a                                            ; $5231: $97
	ld h, b                                          ; $5232: $60
	jr nz, jr_052_5265                               ; $5233: $20 $30

	jr nc, @+$7a                                     ; $5235: $30 $78

	ld a, b                                          ; $5237: $78
	db $fc                                           ; $5238: $fc
	db $ec                                           ; $5239: $ec
	ld [hl], a                                       ; $523a: $77
	sub d                                            ; $523b: $92
	ld a, l                                          ; $523c: $7d
	ld [bc], a                                       ; $523d: $02
	ld e, a                                          ; $523e: $5f
	ldh [$df], a                                     ; $523f: $e0 $df
	rrca                                             ; $5241: $0f
	sbc h                                            ; $5242: $9c
	dec b                                            ; $5243: $05
	inc bc                                           ; $5244: $03
	inc bc                                           ; $5245: $03
	ld a, d                                          ; $5246: $7a
	db $d3                                           ; $5247: $d3
	ld [hl], l                                       ; $5248: $75
	sub h                                            ; $5249: $94
	halt                                             ; $524a: $76
	call z, Call_052_707b                            ; $524b: $cc $7b $70
	ld a, a                                          ; $524e: $7f
	ldh [$9c], a                                     ; $524f: $e0 $9c
	ld a, [hl]                                       ; $5251: $7e
	cp [hl]                                          ; $5252: $be
	ld e, a                                          ; $5253: $5f
	ld l, [hl]                                       ; $5254: $6e
	inc h                                            ; $5255: $24
	ld a, [hl]                                       ; $5256: $7e
	jr z, jr_052_51f7                                ; $5257: $28 $9e

	ld c, $79                                        ; $5259: $0e $79
	ld [hl], h                                       ; $525b: $74
	halt                                             ; $525c: $76
	or l                                             ; $525d: $b5
	ld [hl], e                                       ; $525e: $73
	ldh [$fe], a                                     ; $525f: $e0 $fe
	sbc h                                            ; $5261: $9c
	rst SubAFromDE                                          ; $5262: $df
	db $fd                                           ; $5263: $fd
	rst $38                                          ; $5264: $ff

jr_052_5265:
	ld a, d                                          ; $5265: $7a
	ld [hl], b                                       ; $5266: $70
	rst SubAFromDE                                          ; $5267: $df
	ld a, a                                          ; $5268: $7f
	ld l, e                                          ; $5269: $6b
	ldh [$9e], a                                     ; $526a: $e0 $9e
	ld b, b                                          ; $526c: $40
	ld b, a                                          ; $526d: $47
	sub b                                            ; $526e: $90
	sbc d                                            ; $526f: $9a
	or $fa                                           ; $5270: $f6 $fa
	ld [$fff4], a                                    ; $5272: $ea $f4 $ff
	ld a, d                                          ; $5275: $7a
	xor $f9                                          ; $5276: $ee $f9
	sbc d                                            ; $5278: $9a
	cp [hl]                                          ; $5279: $be
	ld hl, sp-$0d                                    ; $527a: $f8 $f3
	add a                                            ; $527c: $87
	rra                                              ; $527d: $1f
	ld a, c                                          ; $527e: $79
	db $ec                                           ; $527f: $ec
	sbc d                                            ; $5280: $9a
	ld b, e                                          ; $5281: $43
	rlca                                             ; $5282: $07
	inc c                                            ; $5283: $0c
	ld a, b                                          ; $5284: $78
	ldh [$79], a                                     ; $5285: $e0 $79
	db $ec                                           ; $5287: $ec
	ld a, e                                          ; $5288: $7b
	push af                                          ; $5289: $f5
	db $dd                                           ; $528a: $dd
	rst $38                                          ; $528b: $ff
	sbc [hl]                                         ; $528c: $9e
	db $fd                                           ; $528d: $fd
	ld a, e                                          ; $528e: $7b
	push af                                          ; $528f: $f5
	ld [hl], c                                       ; $5290: $71
	halt                                             ; $5291: $76
	ld a, a                                          ; $5292: $7f
	sub e                                            ; $5293: $93
	sbc [hl]                                         ; $5294: $9e

jr_052_5295:
	di                                               ; $5295: $f3
	ld [hl], b                                       ; $5296: $70
	sbc [hl]                                         ; $5297: $9e
	ld a, a                                          ; $5298: $7f
	sbc c                                            ; $5299: $99
	sbc [hl]                                         ; $529a: $9e
	inc c                                            ; $529b: $0c
	ld [hl], e                                       ; $529c: $73
	xor [hl]                                         ; $529d: $ae
	ld a, a                                          ; $529e: $7f
	and h                                            ; $529f: $a4
	sbc h                                            ; $52a0: $9c
	cp $fd                                           ; $52a1: $fe $fd
	rst FarCall                                          ; $52a3: $f7
	ld a, d                                          ; $52a4: $7a
	ld l, l                                          ; $52a5: $6d
	ld a, l                                          ; $52a6: $7d
	add l                                            ; $52a7: $85
	sbc e                                            ; $52a8: $9b
	ld bc, $0802                                     ; $52a9: $01 $02 $08
	db $10                                           ; $52ac: $10
	ld [hl], a                                       ; $52ad: $77
	jr nc, jr_052_531d                               ; $52ae: $30 $6d

	ld a, [hl]                                       ; $52b0: $7e
	ld a, e                                          ; $52b1: $7b
	push hl                                          ; $52b2: $e5
	inc sp                                           ; $52b3: $33
	jr nz, jr_052_5295                               ; $52b4: $20 $df

	ldh a, [$de]                                     ; $52b6: $f0 $de
	ldh [$de], a                                     ; $52b8: $e0 $de
	ret nz                                           ; $52ba: $c0

	rst SubAFromDE                                          ; $52bb: $df
	rra                                              ; $52bc: $1f
	sbc $3f                                          ; $52bd: $de $3f
	sbc $7f                                          ; $52bf: $de $7f
	sbc c                                            ; $52c1: $99
	db $10                                           ; $52c2: $10
	ld a, [hl+]                                      ; $52c3: $2a
	ld [hl-], a                                      ; $52c4: $32
	ld d, a                                          ; $52c5: $57
	ld d, a                                          ; $52c6: $57
	rst FarCall                                          ; $52c7: $f7
	ld a, d                                          ; $52c8: $7a
	call $f599                                       ; $52c9: $cd $99 $f5
	db $ed                                           ; $52cc: $ed
	add sp, -$18                                     ; $52cd: $e8 $e8
	ret z                                            ; $52cf: $c8

	ret nz                                           ; $52d0: $c0

	ld a, c                                          ; $52d1: $79
	and b                                            ; $52d2: $a0
	ld a, e                                          ; $52d3: $7b
	ld d, e                                          ; $52d4: $53
	ld [hl], l                                       ; $52d5: $75
	ld b, b                                          ; $52d6: $40
	db $dd                                           ; $52d7: $dd
	add b                                            ; $52d8: $80
	ld [hl], c                                       ; $52d9: $71
	push hl                                          ; $52da: $e5
	ld a, a                                          ; $52db: $7f
	ld c, e                                          ; $52dc: $4b
	sbc l                                            ; $52dd: $9d
	jp Jump_052_6fe7                                 ; $52de: $c3 $e7 $6f


	ldh a, [$df]                                     ; $52e1: $f0 $df
	ld b, b                                          ; $52e3: $40
	ld a, l                                          ; $52e4: $7d
	or c                                             ; $52e5: $b1
	ld a, e                                          ; $52e6: $7b
	sra [hl]                                         ; $52e7: $cb $2e
	ld h, b                                          ; $52e9: $60
	rst SubAFromDE                                          ; $52ea: $df
	ld bc, $02df                                     ; $52eb: $01 $df $02
	sub d                                            ; $52ee: $92
	inc b                                            ; $52ef: $04
	ld [$bb18], sp                                   ; $52f0: $08 $18 $bb
	ld a, a                                          ; $52f3: $7f
	rst $38                                          ; $52f4: $ff
	cp $fe                                           ; $52f5: $fe $fe
	rst $38                                          ; $52f7: $ff
	db $fd                                           ; $52f8: $fd
	ei                                               ; $52f9: $fb
	add $83                                          ; $52fa: $c6 $83
	db $dd                                           ; $52fc: $dd
	ld bc, $937e                                     ; $52fd: $01 $7e $93
	ld e, a                                          ; $5300: $5f
	add b                                            ; $5301: $80
	ld a, d                                          ; $5302: $7a
	db $e3                                           ; $5303: $e3
	ld a, d                                          ; $5304: $7a
	push de                                          ; $5305: $d5
	ld a, e                                          ; $5306: $7b
	ld a, [$f977]                                    ; $5307: $fa $77 $f9
	sbc [hl]                                         ; $530a: $9e
	db $fc                                           ; $530b: $fc
	ld sp, hl                                        ; $530c: $f9
	sbc d                                            ; $530d: $9a
	cpl                                              ; $530e: $2f
	ld d, a                                          ; $530f: $57
	dec sp                                           ; $5310: $3b
	dec c                                            ; $5311: $0d
	ld e, $de                                        ; $5312: $1e $de
	rlca                                             ; $5314: $07
	sbc d                                            ; $5315: $9a
	ld [hl], b                                       ; $5316: $70
	jr c, @+$1e                                      ; $5317: $38 $1c

	ld e, $0f                                        ; $5319: $1e $0f
	ld a, b                                          ; $531b: $78
	scf                                              ; $531c: $37

jr_052_531d:
	ld [hl], e                                       ; $531d: $73
	jp c, Jump_052_7c9d                              ; $531e: $da $9d $7c

	cp [hl]                                          ; $5321: $be
	ld [hl], h                                       ; $5322: $74
	ld d, b                                          ; $5323: $50
	ld [hl], e                                       ; $5324: $73
	call $2168                                       ; $5325: $cd $68 $21
	sbc [hl]                                         ; $5328: $9e
	ld bc, $2174                                     ; $5329: $01 $74 $21
	sbc [hl]                                         ; $532c: $9e
	inc c                                            ; $532d: $0c
	ld a, d                                          ; $532e: $7a
	xor l                                            ; $532f: $ad
	ld b, a                                          ; $5330: $47
	jr nc, @+$7e                                     ; $5331: $30 $7c

	inc hl                                           ; $5333: $23
	sbc $fe                                          ; $5334: $de $fe
	sbc h                                            ; $5336: $9c
	db $fd                                           ; $5337: $fd
	cp $eb                                           ; $5338: $fe $eb
	ld sp, hl                                        ; $533a: $f9
	dec sp                                           ; $533b: $3b
	nop                                              ; $533c: $00
	sbc d                                            ; $533d: $9a
	inc sp                                           ; $533e: $33
	ld [hl], $22                                     ; $533f: $36 $22
	ld [hl+], a                                      ; $5341: $22
	ld h, e                                          ; $5342: $63
	db $db                                           ; $5343: $db
	inc sp                                           ; $5344: $33
	ld d, e                                          ; $5345: $53
	or $9e                                           ; $5346: $f6 $9e
	ld h, [hl]                                       ; $5348: $66
	ld h, e                                          ; $5349: $63
	or $9e                                           ; $534a: $f6 $9e
	ld h, $da                                        ; $534c: $26 $da
	inc sp                                           ; $534e: $33
	sbc [hl]                                         ; $534f: $9e
	ld h, d                                          ; $5350: $62
	ld h, e                                          ; $5351: $63
	pop hl                                           ; $5352: $e1
	sbc d                                            ; $5353: $9a
	ld [hl], l                                       ; $5354: $75
	ld d, l                                          ; $5355: $55
	ld d, d                                          ; $5356: $52
	inc hl                                           ; $5357: $23
	ld h, [hl]                                       ; $5358: $66
	ld [hl], e                                       ; $5359: $73
	rst SubAFromDE                                          ; $535a: $df
	ld a, a                                          ; $535b: $7f
	or $df                                           ; $535c: $f6 $df
	ld d, l                                          ; $535e: $55
	ld l, a                                          ; $535f: $6f
	push de                                          ; $5360: $d5
	sbc [hl]                                         ; $5361: $9e
	scf                                              ; $5362: $37
	ld [hl], a                                       ; $5363: $77
	or $6f                                           ; $5364: $f6 $6f
	push de                                          ; $5366: $d5
	sbc l                                            ; $5367: $9d
	ld [hl], l                                       ; $5368: $75
	ld d, d                                          ; $5369: $52
	sbc $22                                          ; $536a: $de $22
	ld [hl], e                                       ; $536c: $73
	push de                                          ; $536d: $d5
	ld [hl], e                                       ; $536e: $73
	or $6f                                           ; $536f: $f6 $6f
	rst SubAFromHL                                          ; $5371: $d7
	ld [hl], a                                       ; $5372: $77
	or $7f                                           ; $5373: $f6 $7f
	pop hl                                           ; $5375: $e1
	jp hl                                            ; $5376: $e9


	adc d                                            ; $5377: $8a
	sbc e                                            ; $5378: $9b
	nop                                              ; $5379: $00
	add b                                            ; $537a: $80
	ldh [$f6], a                                     ; $537b: $e0 $f6
	sbc $ff                                          ; $537d: $de $ff
	sbc [hl]                                         ; $537f: $9e
	cp e                                             ; $5380: $bb
	ld sp, hl                                        ; $5381: $f9
	sbc e                                            ; $5382: $9b
	ld e, $0e                                        ; $5383: $1e $0e
	ld e, $7e                                        ; $5385: $1e $7e
	sbc $fe                                          ; $5387: $de $fe
	sbc [hl]                                         ; $5389: $9e
	cp d                                             ; $538a: $ba
	ld sp, hl                                        ; $538b: $f9
	sbc e                                            ; $538c: $9b
	or l                                             ; $538d: $b5
	cp b                                             ; $538e: $b8
	or l                                             ; $538f: $b5
	cp d                                             ; $5390: $ba
	ld [hl], a                                       ; $5391: $77
	db $fc                                           ; $5392: $fc
	reti                                             ; $5393: $d9


	ld c, a                                          ; $5394: $4f
	sbc e                                            ; $5395: $9b
	dec b                                            ; $5396: $05
	ld b, d                                          ; $5397: $42
	dec b                                            ; $5398: $05
	add d                                            ; $5399: $82
	ld [hl], a                                       ; $539a: $77
	db $fc                                           ; $539b: $fc
	reti                                             ; $539c: $d9


	rst $38                                          ; $539d: $ff
	sub e                                            ; $539e: $93
	ld b, l                                          ; $539f: $45
	xor e                                            ; $53a0: $ab
	rla                                              ; $53a1: $17
	xor [hl]                                         ; $53a2: $ae
	ld c, [hl]                                       ; $53a3: $4e
	xor h                                            ; $53a4: $ac
	dec e                                            ; $53a5: $1d
	cp l                                             ; $53a6: $bd
	rst $38                                          ; $53a7: $ff
	cp $fc                                           ; $53a8: $fe $fc
	db $fc                                           ; $53aa: $fc
	sbc $f8                                          ; $53ab: $de $f8
	add b                                            ; $53ad: $80
	ldh a, [$dd]                                     ; $53ae: $f0 $dd
	cp e                                             ; $53b0: $bb
	ld [hl], d                                       ; $53b1: $72
	ld d, h                                          ; $53b2: $54
	call nz, $ab89                                   ; $53b3: $c4 $89 $ab
	ld [hl+], a                                      ; $53b6: $22
	nop                                              ; $53b7: $00
	nop                                              ; $53b8: $00
	ld bc, $2323                                     ; $53b9: $01 $23 $23
	ld h, [hl]                                       ; $53bc: $66
	ld b, [hl]                                       ; $53bd: $46
	adc $99                                          ; $53be: $ce $99
	inc sp                                           ; $53c0: $33
	ld h, h                                          ; $53c1: $64
	xor d                                            ; $53c2: $aa
	ld b, h                                          ; $53c3: $44
	inc d                                            ; $53c4: $14
	ld [$6688], sp                                   ; $53c5: $08 $88 $66
	call z, $1199                                    ; $53c8: $cc $99 $11
	inc sp                                           ; $53cb: $33
	ld h, e                                          ; $53cc: $63
	rst SubAFromDE                                          ; $53cd: $df
	ld h, a                                          ; $53ce: $67
	sub [hl]                                         ; $53cf: $96
	adc b                                            ; $53d0: $88
	db $10                                           ; $53d1: $10
	ld de, $2321                                     ; $53d2: $11 $21 $23
	ld b, d                                          ; $53d5: $42
	ld b, [hl]                                       ; $53d6: $46
	add $7f                                          ; $53d7: $c6 $7f
	jp c, $97ff                                      ; $53d9: $da $ff $97

	add b                                            ; $53dc: $80
	add h                                            ; $53dd: $84
	inc b                                            ; $53de: $04
	ld [$1808], sp                                   ; $53df: $08 $08 $18
	db $10                                           ; $53e2: $10
	ld de, $ffd9                                     ; $53e3: $11 $d9 $ff
	sub [hl]                                         ; $53e6: $96
	nop                                              ; $53e7: $00
	ld [$0a08], sp                                   ; $53e8: $08 $08 $0a
	ld b, [hl]                                       ; $53eb: $46
	add $85                                          ; $53ec: $c6 $85
	add l                                            ; $53ee: $85
	rst $38                                          ; $53ef: $ff
	sbc $f7                                          ; $53f0: $de $f7
	db $dd                                           ; $53f2: $dd
	ei                                               ; $53f3: $fb
	add b                                            ; $53f4: $80
	ld h, e                                          ; $53f5: $63
	ld d, d                                          ; $53f6: $52
	jr nc, jr_052_5422                               ; $53f7: $30 $29

	ld [$0410], sp                                   ; $53f9: $08 $10 $04
	inc b                                            ; $53fc: $04
	sbc h                                            ; $53fd: $9c
	adc h                                            ; $53fe: $8c
	adc $c6                                          ; $53ff: $ce $c6
	rst SubAFromBC                                          ; $5401: $e7
	rst SubAFromBC                                          ; $5402: $e7
	di                                               ; $5403: $f3
	di                                               ; $5404: $f3
	ld [hl], e                                       ; $5405: $73
	cp b                                             ; $5406: $b8
	sbc h                                            ; $5407: $9c
	db $10                                           ; $5408: $10
	ld c, d                                          ; $5409: $4a
	add h                                            ; $540a: $84
	inc b                                            ; $540b: $04
	ld h, d                                          ; $540c: $62
	adc h                                            ; $540d: $8c
	ld b, a                                          ; $540e: $47
	ld h, e                                          ; $540f: $63
	ld h, e                                          ; $5410: $63
	ld sp, $b839                                     ; $5411: $31 $39 $b8
	add b                                            ; $5414: $80
	sbc h                                            ; $5415: $9c
	sub d                                            ; $5416: $92
	ret                                              ; $5417: $c9


	inc h                                            ; $5418: $24
	db $10                                           ; $5419: $10
	ld [$040c], sp                                   ; $541a: $08 $0c $04
	add d                                            ; $541d: $82
	inc c                                            ; $541e: $0c
	ld b, $c3                                        ; $541f: $06 $c3
	pop hl                                           ; $5421: $e1

jr_052_5422:
	ldh a, [$f0]                                     ; $5422: $f0 $f0
	ld hl, sp+$7c                                    ; $5424: $f8 $7c
	jp z, $b567                                      ; $5426: $ca $67 $b5

	sub l                                            ; $5429: $95
	ld a, [de]                                       ; $542a: $1a
	ld a, [hl+]                                      ; $542b: $2a
	ld c, $16                                        ; $542c: $0e $16
	ld a, h                                          ; $542e: $7c
	inc a                                            ; $542f: $3c
	ld e, $1e                                        ; $5430: $1e $1e
	rrca                                             ; $5432: $0f
	rrca                                             ; $5433: $0f
	rst SubAFromDE                                          ; $5434: $df
	ld h, a                                          ; $5435: $67
	adc e                                            ; $5436: $8b
	ld [$0c54], sp                                   ; $5437: $08 $54 $0c
	xor d                                            ; $543a: $aa
	add d                                            ; $543b: $82
	add [hl]                                         ; $543c: $86
	add l                                            ; $543d: $85
	push de                                          ; $543e: $d5
	ld a, b                                          ; $543f: $78
	inc l                                            ; $5440: $2c
	inc [hl]                                         ; $5441: $34
	ld d, $16                                        ; $5442: $16 $16
	ld [bc], a                                       ; $5444: $02
	inc bc                                           ; $5445: $03
	inc bc                                           ; $5446: $03
	nop                                              ; $5447: $00
	nop                                              ; $5448: $00
	inc de                                           ; $5449: $13
	ccf                                              ; $544a: $3f
	ld a, e                                          ; $544b: $7b
	add h                                            ; $544c: $84
	sbc [hl]                                         ; $544d: $9e
	xor $f9                                          ; $544e: $ee $f9
	sbc l                                            ; $5450: $9d
	ld bc, $db61                                     ; $5451: $01 $61 $db
	pop hl                                           ; $5454: $e1
	reti                                             ; $5455: $d9


	ld c, $f9                                        ; $5456: $0e $f9
	reti                                             ; $5458: $d9


	rst $38                                          ; $5459: $ff
	sbc e                                            ; $545a: $9b
	ld h, l                                          ; $545b: $65
	ld [hl], d                                       ; $545c: $72
	ld h, l                                          ; $545d: $65
	ld l, b                                          ; $545e: $68
	ld [hl], a                                       ; $545f: $77
	db $fc                                           ; $5460: $fc
	reti                                             ; $5461: $d9


	rst SubAFromDE                                          ; $5462: $df
	sbc l                                            ; $5463: $9d
	ld h, b                                          ; $5464: $60
	and b                                            ; $5465: $a0
	ld l, a                                          ; $5466: $6f
	cp $d9                                           ; $5467: $fe $d9
	ret nc                                           ; $5469: $d0

	sbc l                                            ; $546a: $9d
	ld d, l                                          ; $546b: $55
	xor d                                            ; $546c: $aa
	ld a, e                                          ; $546d: $7b
	cp $9c                                           ; $546e: $fe $9c
	adc b                                            ; $5470: $88
	ld d, l                                          ; $5471: $55
	or d                                             ; $5472: $b2
	ld a, [$c09c]                                    ; $5473: $fa $9c $c0
	ld d, h                                          ; $5476: $54
	xor d                                            ; $5477: $aa
	ld a, e                                          ; $5478: $7b
	cp $9c                                           ; $5479: $fe $9c
	adc d                                            ; $547b: $8a
	ld d, b                                          ; $547c: $50
	ld a, [hl+]                                      ; $547d: $2a
	ld [bc], a                                       ; $547e: $02
	ret nz                                           ; $547f: $c0

	jp c, $97ff                                      ; $5480: $da $ff $97

	ld e, l                                          ; $5483: $5d
	cp a                                             ; $5484: $bf
	rra                                              ; $5485: $1f
	cp a                                             ; $5486: $bf
	ld c, a                                          ; $5487: $4f
	xor a                                            ; $5488: $af
	rra                                              ; $5489: $1f
	and a                                            ; $548a: $a7
	db $dd                                           ; $548b: $dd
	ldh a, [$de]                                     ; $548c: $f0 $de
	ld hl, sp-$6a                                    ; $548e: $f8 $96
	db $fc                                           ; $5490: $fc
	ld [hl+], a                                      ; $5491: $22
	and l                                            ; $5492: $a5
	or l                                             ; $5493: $b5
	or l                                             ; $5494: $b5
	sub l                                            ; $5495: $95
	ld d, h                                          ; $5496: $54
	ld b, h                                          ; $5497: $44
	ld h, [hl]                                       ; $5498: $66
	db $dd                                           ; $5499: $dd
	adc $93                                          ; $549a: $ce $93
	xor $ef                                          ; $549c: $ee $ef
	rst $38                                          ; $549e: $ff
	rst $38                                          ; $549f: $ff
	ld h, b                                          ; $54a0: $60
	ld [hl], c                                       ; $54a1: $71
	ld [hl], c                                       ; $54a2: $71
	ld h, c                                          ; $54a3: $61
	ld h, c                                          ; $54a4: $61
	ld h, e                                          ; $54a5: $63
	ld h, e                                          ; $54a6: $63
	ld b, e                                          ; $54a7: $43
	sbc $cf                                          ; $54a8: $de $cf

Call_052_54aa:
	rst SubAFromDE                                          ; $54aa: $df
	rst SubAFromDE                                          ; $54ab: $df
	rst SubAFromDE                                          ; $54ac: $df
	sbc $9b                                          ; $54ad: $de $9b
	cp $c4                                           ; $54af: $fe $c4
	call z, $decc                                    ; $54b1: $cc $cc $de
	adc $9a                                          ; $54b4: $ce $9a
	sbc $df                                          ; $54b6: $de $df
	rst $38                                          ; $54b8: $ff
	rst $38                                          ; $54b9: $ff
	ld a, a                                          ; $54ba: $7f
	sbc $7b                                          ; $54bb: $de $7b
	sbc l                                            ; $54bd: $9d
	ld [hl], e                                       ; $54be: $73

jr_052_54bf:
	ld [hl], c                                       ; $54bf: $71
	sbc $31                                          ; $54c0: $de $31
	sbc $51                                          ; $54c2: $de $51
	sbc l                                            ; $54c4: $9d
	ld [hl], c                                       ; $54c5: $71
	ld d, c                                          ; $54c6: $51
	db $db                                           ; $54c7: $db
	rst $38                                          ; $54c8: $ff
	ld a, a                                          ; $54c9: $7f
	jp hl                                            ; $54ca: $e9


	sub [hl]                                         ; $54cb: $96
	add a                                            ; $54cc: $87
	sub e                                            ; $54cd: $93
	sub e                                            ; $54ce: $93
	sub d                                            ; $54cf: $92
	sub b                                            ; $54d0: $90
	sbc b                                            ; $54d1: $98
	ld e, b                                          ; $54d2: $58
	call z, $def9                                    ; $54d3: $cc $f9 $de
	db $fd                                           ; $54d6: $fd
	sbc $ff                                          ; $54d7: $de $ff
	add e                                            ; $54d9: $83
	ld a, a                                          ; $54da: $7f
	ld a, [bc]                                       ; $54db: $0a
	adc d                                            ; $54dc: $8a
	add [hl]                                         ; $54dd: $86
	push bc                                          ; $54de: $c5
	pop bc                                           ; $54df: $c1
	pop hl                                           ; $54e0: $e1
	pop hl                                           ; $54e1: $e1
	ldh a, [$f3]                                     ; $54e2: $f0 $f3
	di                                               ; $54e4: $f3
	ei                                               ; $54e5: $fb
	ei                                               ; $54e6: $fb
	rst $38                                          ; $54e7: $ff
	cp a                                             ; $54e8: $bf
	cp a                                             ; $54e9: $bf
	sbc a                                            ; $54ea: $9f
	ld [hl], b                                       ; $54eb: $70
	ld sp, $2828                                     ; $54ec: $31 $28 $28
	ld [$840c], sp                                   ; $54ef: $08 $0c $84
	add h                                            ; $54f2: $84
	sbc [hl]                                         ; $54f3: $9e
	sbc $df                                          ; $54f4: $de $df
	ld a, e                                          ; $54f6: $7b
	cp h                                             ; $54f7: $bc
	rst SubAFromDE                                          ; $54f8: $df
	rst $38                                          ; $54f9: $ff
	add a                                            ; $54fa: $87
	inc bc                                           ; $54fb: $03
	ld b, c                                          ; $54fc: $41
	add c                                            ; $54fd: $81
	and b                                            ; $54fe: $a0
	ld b, b                                          ; $54ff: $40
	jr z, @+$3a                                      ; $5500: $28 $38

	inc d                                            ; $5502: $14
	ld a, h                                          ; $5503: $7c
	ld a, $3e                                        ; $5504: $3e $3e
	rra                                              ; $5506: $1f
	sbc a                                            ; $5507: $9f
	rst SubAFromDE                                          ; $5508: $df
	rst GetHLinHL                                          ; $5509: $cf
	rst AddAOntoHL                                          ; $550a: $ef
	ld h, [hl]                                       ; $550b: $66
	ld l, d                                          ; $550c: $6a
	ld a, [hl+]                                      ; $550d: $2a
	sub d                                            ; $550e: $92
	sub d                                            ; $550f: $92
	or d                                             ; $5510: $b2
	ldh a, [c]                                       ; $5511: $f2
	halt                                             ; $5512: $76
	sbc $37                                          ; $5513: $de $37
	rst SubAFromDE                                          ; $5515: $df
	ccf                                              ; $5516: $3f
	rst SubAFromDE                                          ; $5517: $df
	rra                                              ; $5518: $1f
	adc [hl]                                         ; $5519: $8e
	sbc a                                            ; $551a: $9f
	ld c, c                                          ; $551b: $49
	ld c, e                                          ; $551c: $4b
	ld c, e                                          ; $551d: $4b
	ld b, e                                          ; $551e: $43
	inc bc                                           ; $551f: $03
	inc bc                                           ; $5520: $03
	rla                                              ; $5521: $17
	scf                                              ; $5522: $37
	sub e                                            ; $5523: $93
	sub c                                            ; $5524: $91
	sub c                                            ; $5525: $91
	sbc c                                            ; $5526: $99
	reti                                             ; $5527: $d9


	reti                                             ; $5528: $d9


	ret                                              ; $5529: $c9


	ret                                              ; $552a: $c9


	ld [hl], e                                       ; $552b: $73
	ld [de], a                                       ; $552c: $12
	sbc h                                            ; $552d: $9c
	adc b                                            ; $552e: $88
	ld [hl+], a                                      ; $552f: $22
	adc b                                            ; $5530: $88
	ld sp, hl                                        ; $5531: $f9
	sub a                                            ; $5532: $97
	ld b, c                                          ; $5533: $41
	and c                                            ; $5534: $a1
	ld b, c                                          ; $5535: $41
	add b                                            ; $5536: $80
	ld b, c                                          ; $5537: $41
	add d                                            ; $5538: $82
	jr nz, jr_052_54bf                               ; $5539: $20 $84

	sbc $0e                                          ; $553b: $de $0e
	adc e                                            ; $553d: $8b
	rrca                                             ; $553e: $0f
	ld c, $0c                                        ; $553f: $0e $0c
	inc c                                            ; $5541: $0c
	ld [rRAMG], sp                                   ; $5542: $08 $00 $00
	ld b, $0f                                        ; $5545: $06 $0f
	db $ed                                           ; $5547: $ed
	ld [hl], a                                       ; $5548: $77
	add d                                            ; $5549: $82
	ld a, $ff                                        ; $554a: $3e $ff
	rst $38                                          ; $554c: $ff
	ld sp, hl                                        ; $554d: $f9
	ldh a, [rAUD3HIGH]                               ; $554e: $f0 $1e
	ld c, $7f                                        ; $5550: $0e $7f
	ld [hl], d                                       ; $5552: $72
	ret nz                                           ; $5553: $c0

	sbc [hl]                                         ; $5554: $9e
	push hl                                          ; $5555: $e5
	ld l, d                                          ; $5556: $6a
	ret nz                                           ; $5557: $c0

	sbc [hl]                                         ; $5558: $9e
	ld e, a                                          ; $5559: $5f
	ld a, [hl-]                                      ; $555a: $3a
	ret nz                                           ; $555b: $c0

	sub [hl]                                         ; $555c: $96
	ld a, a                                          ; $555d: $7f
	rlca                                             ; $555e: $07
	nop                                              ; $555f: $00
	rra                                              ; $5560: $1f
	rst $38                                          ; $5561: $ff
	rrca                                             ; $5562: $0f
	inc bc                                           ; $5563: $03
	nop                                              ; $5564: $00
	ld hl, sp-$26                                    ; $5565: $f8 $da
	rst $38                                          ; $5567: $ff
	sub h                                            ; $5568: $94
	ld b, h                                          ; $5569: $44
	ld [$fcf0], a                                    ; $556a: $ea $f0 $fc
	rrca                                             ; $556d: $0f
	inc bc                                           ; $556e: $03
	add c                                            ; $556f: $81
	add b                                            ; $5570: $80
	nop                                              ; $5571: $00
	nop                                              ; $5572: $00
	ldh [$73], a                                     ; $5573: $e0 $73
	db $ed                                           ; $5575: $ed
	ld [hl], d                                       ; $5576: $72
	ret nz                                           ; $5577: $c0

	sbc h                                            ; $5578: $9c
	ld hl, sp-$0b                                    ; $5579: $f8 $f5
	cp $dc                                           ; $557b: $fe $dc
	ld c, a                                          ; $557d: $4f
	sbc h                                            ; $557e: $9c
	rst GetHLinHL                                          ; $557f: $cf
	rst $38                                          ; $5580: $ff
	rst $38                                          ; $5581: $ff
	ld b, [hl]                                       ; $5582: $46
	ret nz                                           ; $5583: $c0

	sub l                                            ; $5584: $95
	ld b, a                                          ; $5585: $47
	xor e                                            ; $5586: $ab
	ld de, $44aa                                     ; $5587: $11 $aa $44
	xor d                                            ; $558a: $aa

jr_052_558b:
	ld de, $fcab                                     ; $558b: $11 $ab $fc
	cp $db                                           ; $558e: $fe $db
	rst $38                                          ; $5590: $ff
	sub a                                            ; $5591: $97
	ld [hl+], a                                      ; $5592: $22
	ld [hl-], a                                      ; $5593: $32
	ld de, $cc89                                     ; $5594: $11 $89 $cc
	and [hl]                                         ; $5597: $a6
	or e                                             ; $5598: $b3
	cp a                                             ; $5599: $bf
	db $db                                           ; $559a: $db
	rst $38                                          ; $559b: $ff
	rst SubAFromDE                                          ; $559c: $df
	ld a, a                                          ; $559d: $7f
	sub [hl]                                         ; $559e: $96
	ld b, e                                          ; $559f: $43
	ld h, l                                          ; $55a0: $65
	ld h, h                                          ; $55a1: $64
	inc [hl]                                         ; $55a2: $34
	or a                                             ; $55a3: $b7
	ld d, a                                          ; $55a4: $57
	ld a, a                                          ; $55a5: $7f
	or [hl]                                          ; $55a6: $b6
	cp $7b                                           ; $55a7: $fe $7b
	ldh [$de], a                                     ; $55a9: $e0 $de
	db $fc                                           ; $55ab: $fc
	add b                                            ; $55ac: $80
	db $fd                                           ; $55ad: $fd
	pop af                                           ; $55ae: $f1
	rst $38                                          ; $55af: $ff
	cp $30                                           ; $55b0: $fe $30

jr_052_55b2:
	rst SubAFromDE                                          ; $55b2: $df
	scf                                              ; $55b3: $37
	cp a                                             ; $55b4: $bf
	ld hl, sp+$3f                                    ; $55b5: $f8 $3f
	ccf                                              ; $55b7: $3f
	pop af                                           ; $55b8: $f1
	rst SubAFromDE                                          ; $55b9: $df
	jr nc, jr_052_558b                               ; $55ba: $30 $cf

	ld a, a                                          ; $55bc: $7f
	rst $38                                          ; $55bd: $ff
	ld a, c                                          ; $55be: $79
	ld a, c                                          ; $55bf: $79
	db $fd                                           ; $55c0: $fd
	db $fd                                           ; $55c1: $fd
	cp a                                             ; $55c2: $bf
	ld a, a                                          ; $55c3: $7f
	rst SubAFromDE                                          ; $55c4: $df
	rst AddAOntoHL                                          ; $55c5: $ef
	rst AddAOntoHL                                          ; $55c6: $ef
	rst GetHLinHL                                          ; $55c7: $cf
	rst JumpTable                                          ; $55c8: $c7
	rst JumpTable                                          ; $55c9: $c7
	jp $7e83                                         ; $55ca: $c3 $83 $7e


	ret c                                            ; $55cd: $d8

	sbc d                                            ; $55ce: $9a
	call z, $eeee                                    ; $55cf: $cc $ee $ee
	rst FarCall                                          ; $55d2: $f7
	rst FarCall                                          ; $55d3: $f7
	ld [hl], a                                       ; $55d4: $77
	add $df                                          ; $55d5: $c6 $df
	dec sp                                           ; $55d7: $3b
	add e                                            ; $55d8: $83
	dec e                                            ; $55d9: $1d
	inc e                                            ; $55da: $1c
	inc c                                            ; $55db: $0c
	ld b, $02                                        ; $55dc: $06 $02
	ld [hl], b                                       ; $55de: $70
	ld e, b                                          ; $55df: $58
	ld h, h                                          ; $55e0: $64
	ld a, [hl]                                       ; $55e1: $7e
	rst $38                                          ; $55e2: $ff
	ldh a, [$fe]                                     ; $55e3: $f0 $fe
	pop hl                                           ; $55e5: $e1
	rst SubAFromDE                                          ; $55e6: $df
	rst AddAOntoHL                                          ; $55e7: $ef
	rst $38                                          ; $55e8: $ff
	rst SubAFromDE                                          ; $55e9: $df
	jp $316f                                         ; $55ea: $c3 $6f $31


	ld e, $c6                                        ; $55ed: $1e $c6
	ldh [c], a                                       ; $55ef: $e2
	ld [hl], e                                       ; $55f0: $73
	ld a, c                                          ; $55f1: $79
	dec a                                            ; $55f2: $3d
	or d                                             ; $55f3: $b2
	ld e, l                                          ; $55f4: $5d
	ld a, e                                          ; $55f5: $7b
	and b                                            ; $55f6: $a0
	ld a, [hl]                                       ; $55f7: $7e
	db $d3                                           ; $55f8: $d3
	sub d                                            ; $55f9: $92
	rst SubAFromBC                                          ; $55fa: $e7
	rst $38                                          ; $55fb: $ff
	rst $38                                          ; $55fc: $ff
	ld [hl], d                                       ; $55fd: $72
	inc d                                            ; $55fe: $14
	inc c                                            ; $55ff: $0c
	ld c, $0a                                        ; $5600: $0e $0a
	add e                                            ; $5602: $83
	jp $e3c3                                         ; $5603: $c3 $c3 $e3


	rst AddAOntoHL                                          ; $5606: $ef
	sbc $f7                                          ; $5607: $de $f7
	sbc $ff                                          ; $5609: $de $ff
	sub [hl]                                         ; $560b: $96
	cp a                                             ; $560c: $bf
	ld d, [hl]                                       ; $560d: $56
	ld d, [hl]                                       ; $560e: $56
	ld d, h                                          ; $560f: $54
	inc d                                            ; $5610: $14
	inc e                                            ; $5611: $1c
	inc a                                            ; $5612: $3c
	cp h                                             ; $5613: $bc
	cp h                                             ; $5614: $bc
	sbc $bf                                          ; $5615: $de $bf
	call c, $dfff                                    ; $5617: $dc $ff $df
	or a                                             ; $561a: $b7
	sbc $b3                                          ; $561b: $de $b3
	sbc d                                            ; $561d: $9a
	sbc e                                            ; $561e: $9b
	sbc d                                            ; $561f: $9a
	sbc d                                            ; $5620: $9a
	ld c, c                                          ; $5621: $49
	ld c, c                                          ; $5622: $49
	sbc $4d                                          ; $5623: $de $4d
	sbc $65                                          ; $5625: $de $65
	ld l, [hl]                                       ; $5627: $6e
	add $df                                          ; $5628: $c6 $df
	add b                                            ; $562a: $80
	ei                                               ; $562b: $fb
	rst SubAFromDE                                          ; $562c: $df
	add b                                            ; $562d: $80
	sbc d                                            ; $562e: $9a
	jr nz, jr_052_55b2                               ; $562f: $20 $81

	ld bc, $0001                                     ; $5631: $01 $01 $00
	sbc $02                                          ; $5634: $de $02
	db $dd                                           ; $5636: $dd
	ld [$09dd], sp                                   ; $5637: $08 $dd $09
	sub a                                            ; $563a: $97
	ld a, l                                          ; $563b: $7d
	ld a, [$dfc9]                                    ; $563c: $fa $c9 $df
	adc $c0                                          ; $563f: $ce $c0
	jp nc, $dbe0                                     ; $5641: $d2 $e0 $db

	rst $38                                          ; $5644: $ff
	sbc d                                            ; $5645: $9a
	db $ed                                           ; $5646: $ed
	rst SubAFromDE                                          ; $5647: $df
	push hl                                          ; $5648: $e5
	ldh a, [c]                                       ; $5649: $f2
	push hl                                          ; $564a: $e5
	ld de, $7e80                                     ; $564b: $11 $80 $7e
	push de                                          ; $564e: $d5
	sbc [hl]                                         ; $564f: $9e
	ld b, b                                          ; $5650: $40
	ld [hl], a                                       ; $5651: $77
	cp b                                             ; $5652: $b8
	sbc h                                            ; $5653: $9c
	ret nz                                           ; $5654: $c0

	db $fc                                           ; $5655: $fc
	ld a, [hl]                                       ; $5656: $7e
	ld [hl], e                                       ; $5657: $73
	sub b                                            ; $5658: $90
	ld a, [hl]                                       ; $5659: $7e
	or c                                             ; $565a: $b1
	ld a, h                                          ; $565b: $7c
	ld sp, hl                                        ; $565c: $f9
	sub c                                            ; $565d: $91
	ld [hl], c                                       ; $565e: $71
	jr nc, jr_052_5679                               ; $565f: $30 $18

	jr @+$32                                         ; $5661: $18 $30

	ld hl, sp+$3c                                    ; $5663: $f8 $3c
	ld e, $8e                                        ; $5665: $1e $8e
	rst GetHLinHL                                          ; $5667: $cf
	rst SubAFromBC                                          ; $5668: $e7
	rst SubAFromBC                                          ; $5669: $e7
	rst GetHLinHL                                          ; $566a: $cf
	ld h, e                                          ; $566b: $63
	db $dd                                           ; $566c: $dd
	add b                                            ; $566d: $80
	sbc h                                            ; $566e: $9c
	ld h, b                                          ; $566f: $60
	jr c, jr_052_568e                                ; $5670: $38 $1c

	ld a, d                                          ; $5672: $7a
	push af                                          ; $5673: $f5
	rst SubAFromDE                                          ; $5674: $df
	ld a, a                                          ; $5675: $7f
	sub a                                            ; $5676: $97
	sbc a                                            ; $5677: $9f
	rst JumpTable                                          ; $5678: $c7

jr_052_5679:
	db $e3                                           ; $5679: $e3
	db $fd                                           ; $567a: $fd
	sbc $6f                                          ; $567b: $de $6f
	dec sp                                           ; $567d: $3b
	add hl, sp                                       ; $567e: $39
	sbc $0c                                          ; $567f: $de $0c
	sbc e                                            ; $5681: $9b
	rst $38                                          ; $5682: $ff
	ccf                                              ; $5683: $3f
	sbc a                                            ; $5684: $9f
	rst GetHLinHL                                          ; $5685: $cf
	ld a, d                                          ; $5686: $7a
	or c                                             ; $5687: $b1
	ld a, [hl]                                       ; $5688: $7e
	ret nz                                           ; $5689: $c0

	sub a                                            ; $568a: $97
	xor d                                            ; $568b: $aa
	ld d, $ad                                        ; $568c: $16 $ad

jr_052_568e:
	ld c, l                                          ; $568e: $4d
	xor l                                            ; $568f: $ad
	sbc e                                            ; $5690: $9b
	db $eb                                           ; $5691: $eb
	cp $78                                           ; $5692: $fe $78
	ld b, b                                          ; $5694: $40
	sbc [hl]                                         ; $5695: $9e
	db $fc                                           ; $5696: $fc
	sbc $f9                                          ; $5697: $de $f9
	sub a                                            ; $5699: $97
	rst SubAFromDE                                          ; $569a: $df
	ld d, a                                          ; $569b: $57
	sub [hl]                                         ; $569c: $96
	sub $f2                                          ; $569d: $d6 $f2
	ld [hl], d                                       ; $569f: $72
	ldh a, [c]                                       ; $56a0: $f2
	or e                                             ; $56a1: $b3
	ld a, b                                          ; $56a2: $78
	call c, $bfde                                    ; $56a3: $dc $de $bf
	ld a, h                                          ; $56a6: $7c
	push de                                          ; $56a7: $d5
	sbc e                                            ; $56a8: $9b
	rst AddAOntoHL                                          ; $56a9: $ef
	pop af                                           ; $56aa: $f1
	ld sp, hl                                        ; $56ab: $f9
	ldh a, [$dd]                                     ; $56ac: $f0 $dd
	ld e, b                                          ; $56ae: $58
	sbc l                                            ; $56af: $9d
	rst FarCall                                          ; $56b0: $f7
	di                                               ; $56b1: $f3
	ld [hl], l                                       ; $56b2: $75

jr_052_56b3:
	ld h, c                                          ; $56b3: $61
	rst SubAFromDE                                          ; $56b4: $df
	ld hl, sp-$6f                                    ; $56b5: $f8 $91
	ld h, c                                          ; $56b7: $61
	or a                                             ; $56b8: $b7
	ld a, $46                                        ; $56b9: $3e $46
	nop                                              ; $56bb: $00
	inc b                                            ; $56bc: $04
	rst $38                                          ; $56bd: $ff
	ld a, a                                          ; $56be: $7f
	or b                                             ; $56bf: $b0
	ld l, a                                          ; $56c0: $6f
	ld a, a                                          ; $56c1: $7f
	cpl                                              ; $56c2: $2f
	jr nz, jr_052_5728                               ; $56c3: $20 $63

	ld a, b                                          ; $56c5: $78
	ret c                                            ; $56c6: $d8

	sbc [hl]                                         ; $56c7: $9e
	ld a, a                                          ; $56c8: $7f
	ld a, c                                          ; $56c9: $79
	jp c, $3f96                                      ; $56ca: $da $96 $3f

	rst $38                                          ; $56cd: $ff
	rst $38                                          ; $56ce: $ff
	ldh [$e0], a                                     ; $56cf: $e0 $e0
	jr nz, jr_052_56b3                               ; $56d1: $20 $e0

	ld h, b                                          ; $56d3: $60
	ret nz                                           ; $56d4: $c0

	ld e, h                                          ; $56d5: $5c
	ret z                                            ; $56d6: $c8

	ld sp, hl                                        ; $56d7: $f9
	add h                                            ; $56d8: $84
	sbc a                                            ; $56d9: $9f
	rst $38                                          ; $56da: $ff
	db $fc                                           ; $56db: $fc
	add sp, -$11                                     ; $56dc: $e8 $ef
	db $eb                                           ; $56de: $eb
	pop af                                           ; $56df: $f1
	db $e4                                           ; $56e0: $e4
	ld a, a                                          ; $56e1: $7f
	ld a, a                                          ; $56e2: $7f
	jr z, jr_052_56ed                                ; $56e3: $28 $08

	rrca                                             ; $56e5: $0f
	rrca                                             ; $56e6: $0f
	dec bc                                           ; $56e7: $0b
	jr jr_052_5759                                   ; $56e8: $18 $6f

	rst $38                                          ; $56ea: $ff
	rst FarCall                                          ; $56eb: $f7
	ld a, l                                          ; $56ec: $7d

jr_052_56ed:
	rst AddAOntoHL                                          ; $56ed: $ef
	add $c6                                          ; $56ee: $c6 $c6
	adc h                                            ; $56f0: $8c
	sbc b                                            ; $56f1: $98
	db $e4                                           ; $56f2: $e4
	ld a, b                                          ; $56f3: $78
	ld a, c                                          ; $56f4: $79
	call c, $e495                                    ; $56f5: $dc $95 $e4
	sbc b                                            ; $56f8: $98
	di                                               ; $56f9: $f3
	ld sp, hl                                        ; $56fa: $f9
	push af                                          ; $56fb: $f5
	di                                               ; $56fc: $f3
	ld [hl], e                                       ; $56fd: $73
	ldh a, [c]                                       ; $56fe: $f2
	ld [hl], d                                       ; $56ff: $72
	ld d, h                                          ; $5700: $54
	db $dd                                           ; $5701: $dd
	rra                                              ; $5702: $1f
	sbc d                                            ; $5703: $9a
	sbc a                                            ; $5704: $9f
	ccf                                              ; $5705: $3f
	ccf                                              ; $5706: $3f
	ld a, a                                          ; $5707: $7f
	cp h                                             ; $5708: $bc
	sbc $ec                                          ; $5709: $de $ec
	sbc $e4                                          ; $570b: $de $e4
	sbc [hl]                                         ; $570d: $9e
	or [hl]                                          ; $570e: $b6
	reti                                             ; $570f: $d9


	rst $38                                          ; $5710: $ff
	add l                                            ; $5711: $85
	db $db                                           ; $5712: $db
	ret c                                            ; $5713: $d8

	ret nc                                           ; $5714: $d0

	call nc, $c5c5                                   ; $5715: $d4 $c5 $c5
	xor b                                            ; $5718: $a8
	add sp, $64                                      ; $5719: $e8 $64
	ld h, [hl]                                       ; $571b: $66
	ld h, [hl]                                       ; $571c: $66
	ld h, d                                          ; $571d: $62
	ld [hl], d                                       ; $571e: $72
	ld [hl], d                                       ; $571f: $72
	ld [hl], e                                       ; $5720: $73
	inc sp                                           ; $5721: $33
	add b                                            ; $5722: $80
	add b                                            ; $5723: $80
	ld b, b                                          ; $5724: $40
	ret nz                                           ; $5725: $c0

	ld b, b                                          ; $5726: $40
	ld b, b                                          ; $5727: $40

jr_052_5728:
	jr nz, jr_052_578a                               ; $5728: $20 $60

	add b                                            ; $572a: $80
	add b                                            ; $572b: $80
	ld a, e                                          ; $572c: $7b
	ld sp, hl                                        ; $572d: $f9
	sbc h                                            ; $572e: $9c
	ld b, b                                          ; $572f: $40
	ld h, b                                          ; $5730: $60
	jr nz, @-$25                                     ; $5731: $20 $d9

	ld [bc], a                                       ; $5733: $02
	reti                                             ; $5734: $d9


	add hl, bc                                       ; $5735: $09
	sub [hl]                                         ; $5736: $96
	ldh [$d5], a                                     ; $5737: $e0 $d5
	ld [$ead5], a                                    ; $5739: $ea $d5 $ea
	sub l                                            ; $573c: $95
	xor d                                            ; $573d: $aa
	or a                                             ; $573e: $b7
	rst SubAFromDE                                          ; $573f: $df
	ld a, e                                          ; $5740: $7b
	ld sp, hl                                        ; $5741: $f9
	ld a, e                                          ; $5742: $7b
	cp $9e                                           ; $5743: $fe $9e
	ret z                                            ; $5745: $c8

	inc b                                            ; $5746: $04
	ld b, b                                          ; $5747: $40
	sub e                                            ; $5748: $93
	ld h, b                                          ; $5749: $60
	jr nc, jr_052_5754                               ; $574a: $30 $08

	inc c                                            ; $574c: $0c
	ld b, $03                                        ; $574d: $06 $03
	ld bc, $3f00                                     ; $574f: $01 $00 $3f
	rra                                              ; $5752: $1f
	rrca                                             ; $5753: $0f

jr_052_5754:
	rlca                                             ; $5754: $07
	ld a, e                                          ; $5755: $7b
	ld sp, hl                                        ; $5756: $f9
	ld a, h                                          ; $5757: $7c
	ccf                                              ; $5758: $3f

jr_052_5759:
	sbc [hl]                                         ; $5759: $9e
	rrca                                             ; $575a: $0f
	halt                                             ; $575b: $76
	cp d                                             ; $575c: $ba
	sbc e                                            ; $575d: $9b
	cp a                                             ; $575e: $bf
	rst SubAFromDE                                          ; $575f: $df
	ccf                                              ; $5760: $3f
	ldh a, [$72]                                     ; $5761: $f0 $72
	xor c                                            ; $5763: $a9
	adc [hl]                                         ; $5764: $8e
	ld h, b                                          ; $5765: $60
	ld d, $1a                                        ; $5766: $16 $1a
	sbc d                                            ; $5768: $9a
	adc l                                            ; $5769: $8d
	call $c6cc                                       ; $576a: $cd $cc $c6
	ld b, [hl]                                       ; $576d: $46
	pop hl                                           ; $576e: $e1
	pop hl                                           ; $576f: $e1
	ld h, c                                          ; $5770: $61
	ld [hl], b                                       ; $5771: $70
	jr nc, @+$32                                     ; $5772: $30 $30

	jr c, @+$3a                                      ; $5774: $38 $38

	call c, $9c04                                    ; $5776: $dc $04 $9c
	ld b, $86                                        ; $5779: $06 $86
	add [hl]                                         ; $577b: $86
	ld h, l                                          ; $577c: $65
	and b                                            ; $577d: $a0
	ld a, a                                          ; $577e: $7f
	ret z                                            ; $577f: $c8

	sbc b                                            ; $5780: $98
	adc a                                            ; $5781: $8f
	add a                                            ; $5782: $87
	jp Jump_052_60c1                                 ; $5783: $c3 $c1 $60


	ld h, b                                          ; $5786: $60
	ld sp, hl                                        ; $5787: $f9
	ld [hl], h                                       ; $5788: $74
	sub d                                            ; $5789: $92

jr_052_578a:
	sbc $ff                                          ; $578a: $de $ff
	sub a                                            ; $578c: $97
	cp e                                             ; $578d: $bb
	ld sp, hl                                        ; $578e: $f9
	ld sp, hl                                        ; $578f: $f9
	ld e, l                                          ; $5790: $5d
	ld c, a                                          ; $5791: $4f
	ret c                                            ; $5792: $d8

	call c, Call_052_7afe                            ; $5793: $dc $fe $7a
	ret nz                                           ; $5796: $c0

	rst SubAFromDE                                          ; $5797: $df
	rst $38                                          ; $5798: $ff
	sub e                                            ; $5799: $93
	ldh a, [$e0]                                     ; $579a: $f0 $e0
	ret nz                                           ; $579c: $c0

	ld c, h                                          ; $579d: $4c
	ld c, b                                          ; $579e: $48
	ld c, b                                          ; $579f: $48
	ld c, h                                          ; $57a0: $4c
	db $ec                                           ; $57a1: $ec
	cp h                                             ; $57a2: $bc
	ld l, $0c                                        ; $57a3: $2e $0c
	ld hl, sp-$23                                    ; $57a5: $f8 $dd
	db $fc                                           ; $57a7: $fc
	sbc e                                            ; $57a8: $9b
	ld a, h                                          ; $57a9: $7c
	inc e                                            ; $57aa: $1c
	ld b, $7f                                        ; $57ab: $06 $7f
	call c, $df3f                                    ; $57ad: $dc $3f $df
	rra                                              ; $57b0: $1f
	ld sp, hl                                        ; $57b1: $f9
	ld a, c                                          ; $57b2: $79
	ld l, d                                          ; $57b3: $6a
	rst SubAFromDE                                          ; $57b4: $df
	ld a, [$c47f]                                    ; $57b5: $fa $7f $c4
	sub d                                            ; $57b8: $92
	db $fc                                           ; $57b9: $fc
	nop                                              ; $57ba: $00
	nop                                              ; $57bb: $00
	ld [bc], a                                       ; $57bc: $02
	ld b, $07                                        ; $57bd: $06 $07
	inc bc                                           ; $57bf: $03
	nop                                              ; $57c0: $00
	inc bc                                           ; $57c1: $03
	ld a, a                                          ; $57c2: $7f
	rra                                              ; $57c3: $1f
	rrca                                             ; $57c4: $0f
	rra                                              ; $57c5: $1f
	halt                                             ; $57c6: $76
	ld [hl], $f9                                     ; $57c7: $36 $f9
	sbc [hl]                                         ; $57c9: $9e
	ld sp, hl                                        ; $57ca: $f9
	db $db                                           ; $57cb: $db
	rst $38                                          ; $57cc: $ff

jr_052_57cd:
	sbc l                                            ; $57cd: $9d
	cp $06                                           ; $57ce: $fe $06
	ld sp, hl                                        ; $57d0: $f9
	sbc d                                            ; $57d1: $9a
	jr nz, jr_052_57cd                               ; $57d2: $20 $f9

	pop hl                                           ; $57d4: $e1
	add c                                            ; $57d5: $81
	inc bc                                           ; $57d6: $03
	ld a, c                                          ; $57d7: $79
	ret nc                                           ; $57d8: $d0

	ld a, [hl]                                       ; $57d9: $7e
	sub h                                            ; $57da: $94
	sbc $01                                          ; $57db: $de $01
	rst SubAFromDE                                          ; $57dd: $df
	inc bc                                           ; $57de: $03
	sub a                                            ; $57df: $97
	call nc, $aca4                                   ; $57e0: $d4 $a4 $ac
	ld c, c                                          ; $57e3: $49
	ld e, c                                          ; $57e4: $59
	ld e, l                                          ; $57e5: $5d
	push af                                          ; $57e6: $f5
	ei                                               ; $57e7: $fb
	ld [hl], e                                       ; $57e8: $73
	sub b                                            ; $57e9: $90
	sub l                                            ; $57ea: $95
	ei                                               ; $57eb: $fb
	cp e                                             ; $57ec: $bb
	or a                                             ; $57ed: $b7
	or [hl]                                          ; $57ee: $b6
	or d                                             ; $57ef: $b2
	or d                                             ; $57f0: $b2
	sub d                                            ; $57f1: $92
	sbc d                                            ; $57f2: $9a
	sbc d                                            ; $57f3: $9a
	cp d                                             ; $57f4: $ba
	ld l, c                                          ; $57f5: $69
	nop                                              ; $57f6: $00
	rst SubAFromDE                                          ; $57f7: $df
	rst $38                                          ; $57f8: $ff
	sub [hl]                                         ; $57f9: $96
	ld h, b                                          ; $57fa: $60
	ld h, d                                          ; $57fb: $62
	ld h, d                                          ; $57fc: $62
	ld d, h                                          ; $57fd: $54
	ld d, h                                          ; $57fe: $54
	ld [hl], b                                       ; $57ff: $70
	inc sp                                           ; $5800: $33
	ld [hl-], a                                      ; $5801: $32
	cp e                                             ; $5802: $bb
	db $dd                                           ; $5803: $dd
	cp c                                             ; $5804: $b9
	adc d                                            ; $5805: $8a
	sbc l                                            ; $5806: $9d
	call c, $a0dc                                    ; $5807: $dc $dc $a0
	sub b                                            ; $580a: $90
	sub b                                            ; $580b: $90
	jr nc, jr_052_585e                               ; $580c: $30 $50

	ld c, b                                          ; $580e: $48
	ld [$2018], sp                                   ; $580f: $08 $18 $20
	jr nc, jr_052_5844                               ; $5812: $30 $30

	sub b                                            ; $5814: $90
	sub b                                            ; $5815: $90
	sbc b                                            ; $5816: $98
	ret c                                            ; $5817: $d8

	ret z                                            ; $5818: $c8

	ld [bc], a                                       ; $5819: $02
	ld [bc], a                                       ; $581a: $02
	db $db                                           ; $581b: $db
	ld a, [bc]                                       ; $581c: $0a
	rst SubAFromDE                                          ; $581d: $df
	add hl, bc                                       ; $581e: $09
	db $db                                           ; $581f: $db
	ld bc, $ad9e                                     ; $5820: $01 $9e $ad
	jp c, $9ebf                                      ; $5823: $da $bf $9e

	jp nc, $c0da                                     ; $5826: $d2 $da $c0

	sbc d                                            ; $5829: $9a
	ld h, l                                          ; $582a: $65
	ld l, d                                          ; $582b: $6a
	ld h, c                                          ; $582c: $61
	ld h, h                                          ; $582d: $64
	ld h, c                                          ; $582e: $61
	ld a, e                                          ; $582f: $7b
	db $fc                                           ; $5830: $fc
	ld h, $c0                                        ; $5831: $26 $c0
	pop af                                           ; $5833: $f1
	sub d                                            ; $5834: $92
	ld e, a                                          ; $5835: $5f
	ld l, $36                                        ; $5836: $2e $36
	ld a, [de]                                       ; $5838: $1a
	rrca                                             ; $5839: $0f
	dec b                                            ; $583a: $05
	ld b, $03                                        ; $583b: $06 $03
	ld h, b                                          ; $583d: $60
	jr nc, @+$1a                                     ; $583e: $30 $18

	inc c                                            ; $5840: $0c
	inc b                                            ; $5841: $04
	ld a, d                                          ; $5842: $7a
	and a                                            ; $5843: $a7

jr_052_5844:
	sbc l                                            ; $5844: $9d
	ld [bc], a                                       ; $5845: $02
	add e                                            ; $5846: $83
	db $dd                                           ; $5847: $dd
	ld bc, $819b                                     ; $5848: $01 $9b $81
	pop bc                                           ; $584b: $c1
	ld a, h                                          ; $584c: $7c
	ld a, h                                          ; $584d: $7c
	db $dd                                           ; $584e: $dd
	cp $95                                           ; $584f: $fe $95
	ld a, [hl]                                       ; $5851: $7e
	ld a, $06                                        ; $5852: $3e $06
	ld b, d                                          ; $5854: $42
	ld b, d                                          ; $5855: $42
	ld b, e                                          ; $5856: $43
	jp $d3d3                                         ; $5857: $c3 $d3 $d3


	ei                                               ; $585a: $fb
	ld l, [hl]                                       ; $585b: $6e
	ld hl, sp+$7e                                    ; $585c: $f8 $7e

jr_052_585e:
	rst FarCall                                          ; $585e: $f7

jr_052_585f:
	sub a                                            ; $585f: $97
	ld [hl], c                                       ; $5860: $71
	ld [hl], e                                       ; $5861: $73
	halt                                             ; $5862: $76
	ld a, l                                          ; $5863: $7d
	ld a, e                                          ; $5864: $7b
	ld a, a                                          ; $5865: $7f
	rst $38                                          ; $5866: $ff
	rst SubAFromDE                                          ; $5867: $df
	ld [hl], a                                       ; $5868: $77
	inc e                                            ; $5869: $1c
	add b                                            ; $586a: $80
	db $fc                                           ; $586b: $fc
	ldh a, [$e0]                                     ; $586c: $f0 $e0
	ldh [rIE], a                                     ; $586e: $e0 $ff
	ld a, h                                          ; $5870: $7c
	db $fd                                           ; $5871: $fd
	ei                                               ; $5872: $fb
	cp $eb                                           ; $5873: $fe $eb
	rst $38                                          ; $5875: $ff
	ld e, a                                          ; $5876: $5f
	add b                                            ; $5877: $80
	add e                                            ; $5878: $83
	inc bc                                           ; $5879: $03
	rlca                                             ; $587a: $07
	rlca                                             ; $587b: $07
	inc e                                            ; $587c: $1c
	jr nc, jr_052_585f                               ; $587d: $30 $e0

	inc bc                                           ; $587f: $03
	rst $38                                          ; $5880: $ff
	db $e3                                           ; $5881: $e3
	and c                                            ; $5882: $a1
	ld hl, sp-$04                                    ; $5883: $f8 $fc
	db $fd                                           ; $5885: $fd
	rst AddAOntoHL                                          ; $5886: $ef
	ld [bc], a                                       ; $5887: $02
	rra                                              ; $5888: $1f
	pop af                                           ; $5889: $f1
	ld a, c                                          ; $588a: $79
	and d                                            ; $588b: $a2
	sub l                                            ; $588c: $95
	inc bc                                           ; $588d: $03
	ld e, $1f                                        ; $588e: $1e $1f
	sbc a                                            ; $5890: $9f
	sbc a                                            ; $5891: $9f
	rst $38                                          ; $5892: $ff
	cp a                                             ; $5893: $bf
	rst GetHLinHL                                          ; $5894: $cf
	rst SubAFromBC                                          ; $5895: $e7
	inc de                                           ; $5896: $13
	ld a, d                                          ; $5897: $7a
	ld d, [hl]                                       ; $5898: $56
	sub [hl]                                         ; $5899: $96
	ldh [$f0], a                                     ; $589a: $e0 $f0
	ld a, b                                          ; $589c: $78

jr_052_589d:
	cp $3f                                           ; $589d: $fe $3f
	db $fd                                           ; $589f: $fd
	rst FarCall                                          ; $58a0: $f7
	or $fc                                           ; $58a1: $f6 $fc
	sbc $fe                                          ; $58a3: $de $fe
	sbc h                                            ; $58a5: $9c
	rst $38                                          ; $58a6: $ff
	ld b, $0f                                        ; $58a7: $06 $0f
	ld a, d                                          ; $58a9: $7a
	ld b, b                                          ; $58aa: $40
	ld a, [hl]                                       ; $58ab: $7e
	db $ed                                           ; $58ac: $ed
	sbc [hl]                                         ; $58ad: $9e
	add b                                            ; $58ae: $80
	halt                                             ; $58af: $76
	ld l, e                                          ; $58b0: $6b
	ld a, c                                          ; $58b1: $79
	ld [hl], c                                       ; $58b2: $71
	sub d                                            ; $58b3: $92
	rst $38                                          ; $58b4: $ff
	add b                                            ; $58b5: $80
	ret nz                                           ; $58b6: $c0

	ldh [$e0], a                                     ; $58b7: $e0 $e0
	ret nz                                           ; $58b9: $c0

	nop                                              ; $58ba: $00
	add b                                            ; $58bb: $80
	nop                                              ; $58bc: $00
	cp $fc                                           ; $58bd: $fe $fc
	ld hl, sp-$08                                    ; $58bf: $f8 $f8
	ld a, d                                          ; $58c1: $7a
	ld a, c                                          ; $58c2: $79
	ld l, b                                          ; $58c3: $68
	sub b                                            ; $58c4: $90
	ld a, e                                          ; $58c5: $7b
	cp [hl]                                          ; $58c6: $be
	sub a                                            ; $58c7: $97
	rlca                                             ; $58c8: $07
	rrca                                             ; $58c9: $0f
	rra                                              ; $58ca: $1f
	inc e                                            ; $58cb: $1c
	jr c, jr_052_5941                                ; $58cc: $38 $73

	db $ed                                           ; $58ce: $ed
	inc bc                                           ; $58cf: $03
	ld a, e                                          ; $58d0: $7b
	rst FarCall                                          ; $58d1: $f7
	ld a, a                                          ; $58d2: $7f
	or $9d                                           ; $58d3: $f6 $9d
	inc a                                            ; $58d5: $3c
	ld [hl], d                                       ; $58d6: $72
	ld a, c                                          ; $58d7: $79
	ld b, [hl]                                       ; $58d8: $46
	sbc d                                            ; $58d9: $9a
	rlca                                             ; $58da: $07
	ld [hl-], a                                      ; $58db: $32
	ret                                              ; $58dc: $c9


	ld [hl], h                                       ; $58dd: $74
	cp d                                             ; $58de: $ba
	sbc $ff                                          ; $58df: $de $ff
	sbc d                                            ; $58e1: $9a
	ld hl, sp-$34                                    ; $58e2: $f8 $cc
	ld [hl-], a                                      ; $58e4: $32
	adc c                                            ; $58e5: $89
	ld b, h                                          ; $58e6: $44
	ld a, e                                          ; $58e7: $7b
	pop bc                                           ; $58e8: $c1
	sbc d                                            ; $58e9: $9a
	ld c, a                                          ; $58ea: $4f
	or e                                             ; $58eb: $b3
	ld c, c                                          ; $58ec: $49
	sub h                                            ; $58ed: $94
	ld c, b                                          ; $58ee: $48
	ld [hl], h                                       ; $58ef: $74
	inc [hl]                                         ; $58f0: $34
	sub d                                            ; $58f1: $92
	ld c, a                                          ; $58f2: $4f
	scf                                              ; $58f3: $37

Jump_052_58f4:
	dec bc                                           ; $58f4: $0b
	add a                                            ; $58f5: $87
	jr z, jr_052_5911                                ; $58f6: $28 $19

	add hl, de                                       ; $58f8: $19
	sbc l                                            ; $58f9: $9d
	add h                                            ; $58fa: $84

jr_052_58fb:
	add h                                            ; $58fb: $84
	add $66                                          ; $58fc: $c6 $66
	sbc $de                                          ; $58fe: $de $de

jr_052_5900:
	xor $dd                                          ; $5900: $ee $dd
	rst $38                                          ; $5902: $ff
	rst SubAFromDE                                          ; $5903: $df
	jr z, jr_052_589d                                ; $5904: $28 $97

	add h                                            ; $5906: $84
	inc b                                            ; $5907: $04
	inc b                                            ; $5908: $04
	inc c                                            ; $5909: $0c
	call c, $c884                                    ; $590a: $dc $84 $c8
	ret z                                            ; $590d: $c8

	sbc $6c                                          ; $590e: $de $6c
	sbc e                                            ; $5910: $9b

jr_052_5911:
	ld h, h                                          ; $5911: $64
	inc h                                            ; $5912: $24
	inc [hl]                                         ; $5913: $34
	ld a, [bc]                                       ; $5914: $0a
	jp c, $9e02                                      ; $5915: $da $02 $9e

	ld bc, $09da                                     ; $5918: $01 $da $09
	reti                                             ; $591b: $d9


	cp a                                             ; $591c: $bf
	reti                                             ; $591d: $d9


	ret nz                                           ; $591e: $c0

	halt                                             ; $591f: $76
	call nz, $fe77                                   ; $5920: $c4 $77 $fe
	ld e, $c0                                        ; $5923: $1e $c0
	sbc c                                            ; $5925: $99

jr_052_5926:
	sub b                                            ; $5926: $90
	ld bc, $1502                                     ; $5927: $01 $02 $15
	ld a, [bc]                                       ; $592a: $0a
	sub l                                            ; $592b: $95
	ld sp, hl                                        ; $592c: $f9
	ld a, a                                          ; $592d: $7f
	ld a, $98                                        ; $592e: $3e $98
	ld bc, $0125                                     ; $5930: $01 $25 $01
	ld d, b                                          ; $5933: $50
	xor c                                            ; $5934: $a9
	ld b, e                                          ; $5935: $43
	ld bc, $7479                                     ; $5936: $01 $79 $74
	ld a, a                                          ; $5939: $7f
	di                                               ; $593a: $f3
	ld a, a                                          ; $593b: $7f
	ld e, e                                          ; $593c: $5b
	sbc l                                            ; $593d: $9d
	jr nz, jr_052_5900                               ; $593e: $20 $c0

	db $dd                                           ; $5940: $dd

jr_052_5941:
	ret nc                                           ; $5941: $d0

	sbc e                                            ; $5942: $9b
	xor h                                            ; $5943: $ac
	inc l                                            ; $5944: $2c
	sbc a                                            ; $5945: $9f
	sbc a                                            ; $5946: $9f
	db $dd                                           ; $5947: $dd
	adc a                                            ; $5948: $8f
	rst SubAFromDE                                          ; $5949: $df
	rst JumpTable                                          ; $594a: $c7
	sub a                                            ; $594b: $97
	db $eb                                           ; $594c: $eb
	rst AddAOntoHL                                          ; $594d: $ef
	rst AddAOntoHL                                          ; $594e: $ef
	rst $38                                          ; $594f: $ff
	rst FarCall                                          ; $5950: $f7
	rst FarCall                                          ; $5951: $f7
	ld [hl], a                                       ; $5952: $77
	ld [hl], e                                       ; $5953: $73
	sbc $1f                                          ; $5954: $de $1f
	sbc $0f                                          ; $5956: $de $0f
	rst SubAFromDE                                          ; $5958: $df
	adc a                                            ; $5959: $8f
	ld a, a                                          ; $595a: $7f
	jr nz, jr_052_58fb                               ; $595b: $20 $9e

	ei                                               ; $595d: $fb
	ld [hl], b                                       ; $595e: $70
	ld d, [hl]                                       ; $595f: $56
	sbc h                                            ; $5960: $9c
	pop bc                                           ; $5961: $c1
	jp $dcc4                                         ; $5962: $c3 $c4 $dc


	ret nz                                           ; $5965: $c0

	add b                                            ; $5966: $80
	cp a                                             ; $5967: $bf
	cp $fb                                           ; $5968: $fe $fb
	ldh a, [c]                                       ; $596a: $f2
	pop af                                           ; $596b: $f1
	db $eb                                           ; $596c: $eb
	rst $38                                          ; $596d: $ff
	rst $38                                          ; $596e: $ff
	ret nz                                           ; $596f: $c0

	ld bc, $0c07                                     ; $5970: $01 $07 $0c
	ld [$0010], sp                                   ; $5973: $08 $10 $00
	nop                                              ; $5976: $00
	or h                                             ; $5977: $b4
	rst SubAFromDE                                          ; $5978: $df
	ld a, a                                          ; $5979: $7f
	cp $f6                                           ; $597a: $fe $f6
	jp $ada7                                         ; $597c: $c3 $a7 $ad


	ld a, b                                          ; $597f: $78
	ldh [$80], a                                     ; $5980: $e0 $80
	ld bc, $3c0f                                     ; $5982: $01 $0f $3c
	ld b, b                                          ; $5985: $40
	sub [hl]                                         ; $5986: $96
	ld b, d                                          ; $5987: $42
	jr jr_052_5926                                   ; $5988: $18 $9c

	and $ee                                          ; $598a: $e6 $ee
	ld e, h                                          ; $598c: $5c
	adc h                                            ; $598d: $8c
	call z, $7bec                                    ; $598e: $cc $ec $7b
	jp nz, $f79d                                     ; $5991: $c2 $9d $f7

	adc a                                            ; $5994: $8f
	sbc $07                                          ; $5995: $de $07
	sub [hl]                                         ; $5997: $96
	rst $38                                          ; $5998: $ff
	ccf                                              ; $5999: $3f
	rrca                                             ; $599a: $0f
	rlca                                             ; $599b: $07
	rlca                                             ; $599c: $07
	rra                                              ; $599d: $1f
	rra                                              ; $599e: $1f
	dec sp                                           ; $599f: $3b
	ldh [$75], a                                     ; $59a0: $e0 $75
	ld e, a                                          ; $59a2: $5f
	sbc h                                            ; $59a3: $9c
	db $ec                                           ; $59a4: $ec
	rst AddAOntoHL                                          ; $59a5: $ef
	rst GetHLinHL                                          ; $59a6: $cf
	ld a, d                                          ; $59a7: $7a
	ld a, d                                          ; $59a8: $7a
	ld a, l                                          ; $59a9: $7d
	adc l                                            ; $59aa: $8d
	sbc h                                            ; $59ab: $9c
	db $fc                                           ; $59ac: $fc
	rst FarCall                                          ; $59ad: $f7
	rst SubAFromDE                                          ; $59ae: $df
	db $fd                                           ; $59af: $fd
	ld a, h                                          ; $59b0: $7c
	push af                                          ; $59b1: $f5
	add b                                            ; $59b2: $80
	ld hl, sp-$1d                                    ; $59b3: $f8 $e3
	ld bc, $7f0f                                     ; $59b5: $01 $0f $7f
	cp $f5                                           ; $59b8: $fe $f5
	db $e4                                           ; $59ba: $e4
	rst AddAOntoHL                                          ; $59bb: $ef
	ld e, a                                          ; $59bc: $5f
	nop                                              ; $59bd: $00
	rlca                                             ; $59be: $07
	ccf                                              ; $59bf: $3f
	rst $38                                          ; $59c0: $ff
	cp $ff                                           ; $59c1: $fe $ff
	ld hl, sp-$10                                    ; $59c3: $f8 $f0
	call c, Call_052_62b1                            ; $59c5: $dc $b1 $62
	call $16db                                       ; $59c8: $cd $db $16
	ld sp, $e36e                                     ; $59cb: $31 $6e $e3
	rst GetHLinHL                                          ; $59ce: $cf
	sbc a                                            ; $59cf: $9f
	ld a, $3c                                        ; $59d0: $3e $3c
	add b                                            ; $59d2: $80
	ld sp, hl                                        ; $59d3: $f9
	cp $f1                                           ; $59d4: $fe $f1
	dec e                                            ; $59d6: $1d
	ld l, $b0                                        ; $59d7: $2e $b0
	rst JumpTable                                          ; $59d9: $c7
	sbc b                                            ; $59da: $98
	ld h, b                                          ; $59db: $60
	sub h                                            ; $59dc: $94
	ld c, c                                          ; $59dd: $49
	ldh [c], a                                       ; $59de: $e2
	pop de                                           ; $59df: $d1
	ld c, a                                          ; $59e0: $4f
	jr c, jr_052_5a4a                                ; $59e1: $38 $67

	sbc c                                            ; $59e3: $99
	ld h, b                                          ; $59e4: $60
	and [hl]                                         ; $59e5: $a6
	jr nz, @-$7d                                     ; $59e6: $20 $81

	ld [hl], b                                       ; $59e8: $70
	add d                                            ; $59e9: $82
	ld a, h                                          ; $59ea: $7c
	ld d, l                                          ; $59eb: $55
	ld d, $2c                                        ; $59ec: $16 $2c
	ld b, b                                          ; $59ee: $40
	ld a, [hl]                                       ; $59ef: $7e
	add c                                            ; $59f0: $81
	ld a, h                                          ; $59f1: $7c
	add e                                            ; $59f2: $83
	add e                                            ; $59f3: $83
	add b                                            ; $59f4: $80
	ld h, c                                          ; $59f5: $61
	db $10                                           ; $59f6: $10
	cp a                                             ; $59f7: $bf
	ld e, a                                          ; $59f8: $5f
	cpl                                              ; $59f9: $2f
	rlca                                             ; $59fa: $07
	ld b, e                                          ; $59fb: $43
	sub e                                            ; $59fc: $93
	add hl, bc                                       ; $59fd: $09
	ld h, [hl]                                       ; $59fe: $66
	ld a, a                                          ; $59ff: $7f
	ccf                                              ; $5a00: $3f
	rst SubAFromDE                                          ; $5a01: $df
	ccf                                              ; $5a02: $3f
	adc a                                            ; $5a03: $8f
	ld h, a                                          ; $5a04: $67
	di                                               ; $5a05: $f3
	add hl, bc                                       ; $5a06: $09
	inc b                                            ; $5a07: $04
	ld b, h                                          ; $5a08: $44
	ld c, h                                          ; $5a09: $4c
	ld c, h                                          ; $5a0a: $4c
	inc h                                            ; $5a0b: $24
	and h                                            ; $5a0c: $a4
	and h                                            ; $5a0d: $a4
	xor b                                            ; $5a0e: $a8
	db $dd                                           ; $5a0f: $dd
	or h                                             ; $5a10: $b4
	sbc $dc                                          ; $5a11: $de $dc
	sbc [hl]                                         ; $5a13: $9e
	ret c                                            ; $5a14: $d8

	ld b, h                                          ; $5a15: $44
	ld b, b                                          ; $5a16: $40
	call c, $9cbf                                    ; $5a17: $dc $bf $9c
	xor e                                            ; $5a1a: $ab
	sub l                                            ; $5a1b: $95
	xor d                                            ; $5a1c: $aa
	call c, $9cc0                                    ; $5a1d: $dc $c0 $9c
	call nc, $d5ea                                   ; $5a20: $d4 $ea $d5
	ld l, [hl]                                       ; $5a23: $6e
	jp nz, Jump_052_619d                             ; $5a24: $c2 $9d $61

	ld h, b                                          ; $5a27: $60
	ld d, d                                          ; $5a28: $52
	ret nz                                           ; $5a29: $c0

	sbc h                                            ; $5a2a: $9c
	add b                                            ; $5a2b: $80
	ld b, b                                          ; $5a2c: $40
	nop                                              ; $5a2d: $00
	reti                                             ; $5a2e: $d9


	ret nc                                           ; $5a2f: $d0

	sub a                                            ; $5a30: $97
	ld a, [hl+]                                      ; $5a31: $2a
	dec [hl]                                         ; $5a32: $35
	ld c, e                                          ; $5a33: $4b
	or [hl]                                          ; $5a34: $b6
	ld a, [de]                                       ; $5a35: $1a
	xor l                                            ; $5a36: $ad
	ld e, e                                          ; $5a37: $5b
	and [hl]                                         ; $5a38: $a6
	ld l, d                                          ; $5a39: $6a
	jp nz, $0396                                     ; $5a3a: $c2 $96 $03

	and l                                            ; $5a3d: $a5
	ld a, [$e474]                                    ; $5a3e: $fa $74 $e4
	ret z                                            ; $5a41: $c8

	sub c                                            ; $5a42: $91
	ld sp, $7a73                                     ; $5a43: $31 $73 $7a
	inc hl                                           ; $5a46: $23
	adc l                                            ; $5a47: $8d
	ccf                                              ; $5a48: $3f
	ld a, a                                          ; $5a49: $7f

jr_052_5a4a:
	cp $fe                                           ; $5a4a: $fe $fe
	db $fc                                           ; $5a4c: $fc
	ld [hl-], a                                      ; $5a4d: $32
	ld [hl], $7e                                     ; $5a4e: $36 $7e
	db $fd                                           ; $5a50: $fd
	db $fd                                           ; $5a51: $fd
	rst AddAOntoHL                                          ; $5a52: $ef
	xor $ee                                          ; $5a53: $ee $ee
	rst JumpTable                                          ; $5a55: $c7
	jp $0383                                         ; $5a56: $c3 $83 $03


	inc bc                                           ; $5a59: $03
	sbc $11                                          ; $5a5a: $de $11
	rst SubAFromDE                                          ; $5a5c: $df
	inc hl                                           ; $5a5d: $23
	ld a, l                                          ; $5a5e: $7d
	ld l, h                                          ; $5a5f: $6c
	ld a, l                                          ; $5a60: $7d
	ld [hl], c                                       ; $5a61: $71
	rst SubAFromDE                                          ; $5a62: $df
	add c                                            ; $5a63: $81
	rst SubAFromDE                                          ; $5a64: $df
	rst SubAFromDE                                          ; $5a65: $df
	push de                                          ; $5a66: $d5
	rst $38                                          ; $5a67: $ff
	rst SubAFromDE                                          ; $5a68: $df
	ld a, a                                          ; $5a69: $7f
	reti                                             ; $5a6a: $d9


	add b                                            ; $5a6b: $80
	reti                                             ; $5a6c: $d9


	rst $38                                          ; $5a6d: $ff
	ld sp, hl                                        ; $5a6e: $f9
	sub [hl]                                         ; $5a6f: $96
	db $fd                                           ; $5a70: $fd
	ld hl, sp-$20                                    ; $5a71: $f8 $e0
	pop hl                                           ; $5a73: $e1
	ret nz                                           ; $5a74: $c0

	jp $81c3                                         ; $5a75: $c3 $c3 $81


	inc bc                                           ; $5a78: $03
	ld a, d                                          ; $5a79: $7a
	ld [hl], b                                       ; $5a7a: $70
	ld [hl], h                                       ; $5a7b: $74
	adc a                                            ; $5a7c: $8f
	add e                                            ; $5a7d: $83
	inc [hl]                                         ; $5a7e: $34
	call nc, $fbd5                                   ; $5a7f: $d4 $d5 $fb
	cp h                                             ; $5a82: $bc
	ei                                               ; $5a83: $fb
	rst FarCall                                          ; $5a84: $f7
	rst GetHLinHL                                          ; $5a85: $cf
	rst AddAOntoHL                                          ; $5a86: $ef
	rst AddAOntoHL                                          ; $5a87: $ef
	xor [hl]                                         ; $5a88: $ae
	adc h                                            ; $5a89: $8c
	db $d3                                           ; $5a8a: $d3
	rst SubAFromBC                                          ; $5a8b: $e7
	rst GetHLinHL                                          ; $5a8c: $cf
	rst $38                                          ; $5a8d: $ff
	ld a, e                                          ; $5a8e: $7b
	reti                                             ; $5a8f: $d9


	sbc h                                            ; $5a90: $9c
	push bc                                          ; $5a91: $c5
	inc l                                            ; $5a92: $2c
	ld l, $ae                                        ; $5a93: $2e $ae
	sub e                                            ; $5a95: $93
	adc a                                            ; $5a96: $8f
	rrca                                             ; $5a97: $0f
	rrca                                             ; $5a98: $0f
	ld c, $de                                        ; $5a99: $0e $de
	rst JumpTable                                          ; $5a9b: $c7
	add b                                            ; $5a9c: $80
	rst SubAFromBC                                          ; $5a9d: $e7
	cp h                                             ; $5a9e: $bc
	or $cb                                           ; $5a9f: $f6 $cb
	call nc, $36f5                                   ; $5aa1: $d4 $f5 $36
	ld a, a                                          ; $5aa4: $7f
	add hl, hl                                       ; $5aa5: $29
	rst GetHLinHL                                          ; $5aa6: $cf
	add hl, sp                                       ; $5aa7: $39
	db $f4                                           ; $5aa8: $f4
	db $eb                                           ; $5aa9: $eb
	ld l, e                                          ; $5aaa: $6b
	cp a                                             ; $5aab: $bf
	sbc h                                            ; $5aac: $9c
	sbc $50                                          ; $5aad: $de $50
	ld l, l                                          ; $5aaf: $6d
	ld a, d                                          ; $5ab0: $7a
	db $fd                                           ; $5ab1: $fd
	ld [hl], l                                       ; $5ab2: $75
	xor $11                                          ; $5ab3: $ee $11
	and h                                            ; $5ab5: $a4
	rst $38                                          ; $5ab6: $ff
	di                                               ; $5ab7: $f3
	rst SubAFromBC                                          ; $5ab8: $e7
	add $8e                                          ; $5ab9: $c6 $8e
	add hl, de                                       ; $5abb: $19
	add b                                            ; $5abc: $80
	cp $7b                                           ; $5abd: $fe $7b
	pop af                                           ; $5abf: $f1
	adc l                                            ; $5ac0: $8d
	sub $4a                                          ; $5ac1: $d6 $4a
	and l                                            ; $5ac3: $a5
	or d                                             ; $5ac4: $b2
	dec [hl]                                         ; $5ac5: $35
	ldh [c], a                                       ; $5ac6: $e2
	adc $72                                          ; $5ac7: $ce $72
	add hl, hl                                       ; $5ac9: $29
	sub l                                            ; $5aca: $95
	ld c, d                                          ; $5acb: $4a
	ld c, l                                          ; $5acc: $4d
	jp z, $b41d                                      ; $5acd: $ca $1d $b4

	ld c, [hl]                                       ; $5ad0: $4e
	sub c                                            ; $5ad1: $91
	adc d                                            ; $5ad2: $8a
	ld d, l                                          ; $5ad3: $55
	sbc d                                            ; $5ad4: $9a
	jr nz, @+$4a                                     ; $5ad5: $20 $48

	ld c, c                                          ; $5ad7: $49
	sub c                                            ; $5ad8: $91
	ld l, $34                                        ; $5ad9: $2e $34
	adc b                                            ; $5adb: $88
	add b                                            ; $5adc: $80
	ld h, c                                          ; $5add: $61
	rst SubAFromDE                                          ; $5ade: $df
	or b                                             ; $5adf: $b0
	push bc                                          ; $5ae0: $c5
	xor b                                            ; $5ae1: $a8
	ld e, b                                          ; $5ae2: $58
	xor b                                            ; $5ae3: $a8
	ld h, d                                          ; $5ae4: $62
	add b                                            ; $5ae5: $80
	add c                                            ; $5ae6: $81
	ld [bc], a                                       ; $5ae7: $02
	ld [$2515], sp                                   ; $5ae8: $08 $15 $25
	ld b, l                                          ; $5aeb: $45
	add h                                            ; $5aec: $84
	ld a, a                                          ; $5aed: $7f
	nop                                              ; $5aee: $00
	ld a, h                                          ; $5aef: $7c
	ld a, [bc]                                       ; $5af0: $0a
	ldh [c], a                                       ; $5af1: $e2
	db $e4                                           ; $5af2: $e4
	dec b                                            ; $5af3: $05
	nop                                              ; $5af4: $00
	dec b                                            ; $5af5: $05
	ld b, l                                          ; $5af6: $45
	inc h                                            ; $5af7: $24
	push hl                                          ; $5af8: $e5
	dec d                                            ; $5af9: $15
	inc de                                           ; $5afa: $13
	di                                               ; $5afb: $f3
	sbc e                                            ; $5afc: $9b
	rlca                                             ; $5afd: $07
	ld a, [$4282]                                    ; $5afe: $fa $82 $42
	sbc $a8                                          ; $5b01: $de $a8
	sbc $b0                                          ; $5b03: $de $b0
	rst SubAFromDE                                          ; $5b05: $df
	and b                                            ; $5b06: $a0
	sbc $d8                                          ; $5b07: $de $d8
	sbc $d0                                          ; $5b09: $de $d0
	rst SubAFromDE                                          ; $5b0b: $df
	ldh [rWY], a                                     ; $5b0c: $e0 $4a
	ret nz                                           ; $5b0e: $c0

	adc e                                            ; $5b0f: $8b
	add hl, de                                       ; $5b10: $19
	sub l                                            ; $5b11: $95
	adc d                                            ; $5b12: $8a
	and l                                            ; $5b13: $a5
	sub d                                            ; $5b14: $92
	add h                                            ; $5b15: $84
	add c                                            ; $5b16: $81
	sub b                                            ; $5b17: $90
	sub d                                            ; $5b18: $92
	ld [$daf5], a                                    ; $5b19: $ea $f5 $da
	db $ed                                           ; $5b1c: $ed
	ei                                               ; $5b1d: $fb
	cp $ef                                           ; $5b1e: $fe $ef
	db $fd                                           ; $5b20: $fd
	ld h, c                                          ; $5b21: $61
	ld h, b                                          ; $5b22: $60
	ld h, c                                          ; $5b23: $61
	call c, $d960                                    ; $5b24: $dc $60 $d9
	rst SubAFromDE                                          ; $5b27: $df
	sub a                                            ; $5b28: $97
	ld b, b                                          ; $5b29: $40
	jr nz, jr_052_5b94                               ; $5b2a: $20 $68

	jr nc, jr_052_5b8e                               ; $5b2c: $30 $60

	inc b                                            ; $5b2e: $04
	jr jr_052_5b33                                   ; $5b2f: $18 $02

	sbc $d0                                          ; $5b31: $de $d0

jr_052_5b33:
	rst SubAFromDE                                          ; $5b33: $df
	ret z                                            ; $5b34: $c8

	sub h                                            ; $5b35: $94
	add sp, -$1c                                     ; $5b36: $e8 $e4
	db $f4                                           ; $5b38: $f4
	ld c, l                                          ; $5b39: $4d
	inc de                                           ; $5b3a: $13
	daa                                              ; $5b3b: $27
	ld l, a                                          ; $5b3c: $6f
	ccf                                              ; $5b3d: $3f
	rst $38                                          ; $5b3e: $ff
	ld a, [hl]                                       ; $5b3f: $7e
	cp $78                                           ; $5b40: $fe $78
	jp hl                                            ; $5b42: $e9


	sbc l                                            ; $5b43: $9d
	rra                                              ; $5b44: $1f
	rst SubAFromDE                                          ; $5b45: $df
	ld a, b                                          ; $5b46: $78
	rst JumpTable                                          ; $5b47: $c7
	sub a                                            ; $5b48: $97
	db $e3                                           ; $5b49: $e3
	pop hl                                           ; $5b4a: $e1
	pop hl                                           ; $5b4b: $e1
	ldh [$b0], a                                     ; $5b4c: $e0 $b0
	db $10                                           ; $5b4e: $10
	ld [$7804], sp                                   ; $5b4f: $08 $04 $78
	xor e                                            ; $5b52: $ab
	call c, $dfff                                    ; $5b53: $dc $ff $df
	rst GetHLinHL                                          ; $5b56: $cf
	adc h                                            ; $5b57: $8c
	sbc a                                            ; $5b58: $9f
	rra                                              ; $5b59: $1f
	dec a                                            ; $5b5a: $3d
	ccf                                              ; $5b5b: $3f
	dec a                                            ; $5b5c: $3d
	inc a                                            ; $5b5d: $3c
	jr nc, jr_052_5b90                               ; $5b5e: $30 $30

	ld h, b                                          ; $5b60: $60
	ldh [$c2], a                                     ; $5b61: $e0 $c2
	ret nz                                           ; $5b63: $c0

	jp nz, $c1c3                                     ; $5b64: $c2 $c3 $c1

	ld b, c                                          ; $5b67: $41
	ld b, c                                          ; $5b68: $41
	ld h, c                                          ; $5b69: $61
	ld h, e                                          ; $5b6a: $63
	sbc $7f                                          ; $5b6b: $de $7f
	ld e, [hl]                                       ; $5b6d: $5e
	add $db                                          ; $5b6e: $c6 $db
	rst $38                                          ; $5b70: $ff
	rst SubAFromDE                                          ; $5b71: $df
	add b                                            ; $5b72: $80
	ei                                               ; $5b73: $fb
	ld [hl], h                                       ; $5b74: $74
	jr c, jr_052_5bf5                                ; $5b75: $38 $7e

	adc d                                            ; $5b77: $8a
	ld a, h                                          ; $5b78: $7c
	adc e                                            ; $5b79: $8b
	ld sp, hl                                        ; $5b7a: $f9
	sbc l                                            ; $5b7b: $9d
	add e                                            ; $5b7c: $83
	rlca                                             ; $5b7d: $07
	ld a, b                                          ; $5b7e: $78
	sub a                                            ; $5b7f: $97
	ld a, l                                          ; $5b80: $7d
	sbc a                                            ; $5b81: $9f
	sbc [hl]                                         ; $5b82: $9e
	rrca                                             ; $5b83: $0f
	ld a, b                                          ; $5b84: $78
	sub b                                            ; $5b85: $90
	rst SubAFromDE                                          ; $5b86: $df
	rlca                                             ; $5b87: $07
	ld a, d                                          ; $5b88: $7a
	ld l, e                                          ; $5b89: $6b
	sbc d                                            ; $5b8a: $9a
	sbc c                                            ; $5b8b: $99
	or b                                             ; $5b8c: $b0
	ld h, b                                          ; $5b8d: $60

jr_052_5b8e:
	ret nz                                           ; $5b8e: $c0

	ret nz                                           ; $5b8f: $c0

jr_052_5b90:
	ld a, e                                          ; $5b90: $7b
	db $d3                                           ; $5b91: $d3
	reti                                             ; $5b92: $d9


	rst $38                                          ; $5b93: $ff

jr_052_5b94:
	sbc $97                                          ; $5b94: $de $97
	sbc $0d                                          ; $5b96: $de $0d
	rst SubAFromDE                                          ; $5b98: $df
	dec b                                            ; $5b99: $05
	sbc $e3                                          ; $5b9a: $de $e3
	sbc $f3                                          ; $5b9c: $de $f3
	rst SubAFromDE                                          ; $5b9e: $df
	ei                                               ; $5b9f: $fb
	sub a                                            ; $5ba0: $97
	jr @-$4d                                         ; $5ba1: $18 $b1

	and $fb                                          ; $5ba3: $e6 $fb
	ldh a, [$e0]                                     ; $5ba5: $f0 $e0
	call nc, $de88                                   ; $5ba7: $d4 $88 $de
	rst $38                                          ; $5baa: $ff
	add b                                            ; $5bab: $80
	db $fc                                           ; $5bac: $fc
	rst $38                                          ; $5bad: $ff
	pop bc                                           ; $5bae: $c1
	adc c                                            ; $5baf: $89
	ld sp, $9e5b                                     ; $5bb0: $31 $5b $9e
	pop hl                                           ; $5bb3: $e1
	nop                                              ; $5bb4: $00
	db $fc                                           ; $5bb5: $fc
	nop                                              ; $5bb6: $00
	xor d                                            ; $5bb7: $aa
	xor d                                            ; $5bb8: $aa
	db $e4                                           ; $5bb9: $e4
	pop hl                                           ; $5bba: $e1
	ld e, $ff                                        ; $5bbb: $1e $ff
	nop                                              ; $5bbd: $00
	rst $38                                          ; $5bbe: $ff
	ld d, l                                          ; $5bbf: $55
	ld d, l                                          ; $5bc0: $55
	sub l                                            ; $5bc1: $95
	ld a, b                                          ; $5bc2: $78
	add h                                            ; $5bc3: $84
	ld b, d                                          ; $5bc4: $42
	ld h, b                                          ; $5bc5: $60
	ld e, $85                                        ; $5bc6: $1e $85
	cp c                                             ; $5bc8: $b9
	ld h, d                                          ; $5bc9: $62
	add a                                            ; $5bca: $87
	add b                                            ; $5bcb: $80
	ld a, b                                          ; $5bcc: $78
	add c                                            ; $5bcd: $81
	rra                                              ; $5bce: $1f
	pop hl                                           ; $5bcf: $e1
	ld a, d                                          ; $5bd0: $7a
	ld b, [hl]                                       ; $5bd1: $46
	inc h                                            ; $5bd2: $24
	sub e                                            ; $5bd3: $93
	ld c, [hl]                                       ; $5bd4: $4e
	ld a, [hl+]                                      ; $5bd5: $2a
	ld l, b                                          ; $5bd6: $68
	sub l                                            ; $5bd7: $95
	add sp, $26                                      ; $5bd8: $e8 $26
	jp $300c                                         ; $5bda: $c3 $0c $30


	ret nz                                           ; $5bdd: $c0

	add a                                            ; $5bde: $87
	ld [$1010], sp                                   ; $5bdf: $08 $10 $10
	ld a, h                                          ; $5be2: $7c
	sbc d                                            ; $5be3: $9a
	xor h                                            ; $5be4: $ac
	sub l                                            ; $5be5: $95
	add [hl]                                         ; $5be6: $86
	ld c, d                                          ; $5be7: $4a
	ld c, e                                          ; $5be8: $4b
	ld c, e                                          ; $5be9: $4b
	add e                                            ; $5bea: $83
	sbc e                                            ; $5beb: $9b
	ld h, b                                          ; $5bec: $60
	db $10                                           ; $5bed: $10
	ld [$de08], sp                                   ; $5bee: $08 $08 $de
	add h                                            ; $5bf1: $84
	adc [hl]                                         ; $5bf2: $8e
	sub d                                            ; $5bf3: $92
	ld c, c                                          ; $5bf4: $49

jr_052_5bf5:
	and c                                            ; $5bf5: $a1
	ld de, $9448                                     ; $5bf6: $11 $48 $94
	adc c                                            ; $5bf9: $89
	db $10                                           ; $5bfa: $10
	inc h                                            ; $5bfb: $24
	sub h                                            ; $5bfc: $94
	ld c, h                                          ; $5bfd: $4c
	inc l                                            ; $5bfe: $2c
	inc d                                            ; $5bff: $14
	ld [hl+], a                                      ; $5c00: $22
	jr nc, jr_052_5c32                               ; $5c01: $30 $2f

	ldh [$db], a                                     ; $5c03: $e0 $db
	rst $38                                          ; $5c05: $ff
	sbc l                                            ; $5c06: $9d
	add a                                            ; $5c07: $87
	rst $38                                          ; $5c08: $ff
	ld a, e                                          ; $5c09: $7b
	ld a, e                                          ; $5c0a: $7b
	sbc $80                                          ; $5c0b: $de $80
	sub d                                            ; $5c0d: $92
	ld hl, sp+$12                                    ; $5c0e: $f8 $12
	or $f6                                           ; $5c10: $f6 $f6
	ld a, [$fff4]                                    ; $5c12: $fa $f4 $ff
	ei                                               ; $5c15: $fb
	rst $38                                          ; $5c16: $ff
	jp hl                                            ; $5c17: $e9


	add hl, bc                                       ; $5c18: $09
	add hl, bc                                       ; $5c19: $09
	dec c                                            ; $5c1a: $0d
	ld a, b                                          ; $5c1b: $78
	or $95                                           ; $5c1c: $f6 $95
	nop                                              ; $5c1e: $00
	ei                                               ; $5c1f: $fb
	db $fd                                           ; $5c20: $fd
	ld a, [hl]                                       ; $5c21: $7e
	ld c, $7c                                        ; $5c22: $0e $7c
	ld sp, hl                                        ; $5c24: $f9
	rst SubAFromBC                                          ; $5c25: $e7
	ccf                                              ; $5c26: $3f
	db $fc                                           ; $5c27: $fc
	ld l, a                                          ; $5c28: $6f
	ld bc, $ff9e                                     ; $5c29: $01 $9e $ff
	db $db                                           ; $5c2c: $db
	ldh [$9d], a                                     ; $5c2d: $e0 $9d
	pop hl                                           ; $5c2f: $e1
	ld h, c                                          ; $5c30: $61
	db $db                                           ; $5c31: $db

jr_052_5c32:
	rst SubAFromDE                                          ; $5c32: $df
	rst SubAFromDE                                          ; $5c33: $df
	sbc $7d                                          ; $5c34: $de $7d
	ccf                                              ; $5c36: $3f
	sbc h                                            ; $5c37: $9c
	inc bc                                           ; $5c38: $03
	nop                                              ; $5c39: $00
	db $fc                                           ; $5c3a: $fc
	ld a, c                                          ; $5c3b: $79
	ldh [c], a                                       ; $5c3c: $e2
	sbc d                                            ; $5c3d: $9a
	ldh a, [c]                                       ; $5c3e: $f2
	ld sp, hl                                        ; $5c3f: $f9
	db $fc                                           ; $5c40: $fc
	rst $38                                          ; $5c41: $ff
	inc bc                                           ; $5c42: $03
	ld a, e                                          ; $5c43: $7b
	ld a, [hl-]                                      ; $5c44: $3a
	ld a, e                                          ; $5c45: $7b
	inc d                                            ; $5c46: $14
	rst SubAFromDE                                          ; $5c47: $df
	db $fc                                           ; $5c48: $fc
	sbc h                                            ; $5c49: $9c
	ld a, b                                          ; $5c4a: $78
	cp c                                             ; $5c4b: $b9
	pop de                                           ; $5c4c: $d1
	reti                                             ; $5c4d: $d9


	rst $38                                          ; $5c4e: $ff
	sbc d                                            ; $5c4f: $9a
	inc [hl]                                         ; $5c50: $34
	ld a, d                                          ; $5c51: $7a
	ld a, d                                          ; $5c52: $7a
	ld a, a                                          ; $5c53: $7f
	ld a, l                                          ; $5c54: $7d
	sbc $7f                                          ; $5c55: $de $7f
	sbc d                                            ; $5c57: $9a
	rst GetHLinHL                                          ; $5c58: $cf
	add a                                            ; $5c59: $87
	add a                                            ; $5c5a: $87
	add e                                            ; $5c5b: $83
	add e                                            ; $5c5c: $83
	sbc $81                                          ; $5c5d: $de $81

jr_052_5c5f:
	sbc [hl]                                         ; $5c5f: $9e
	jr jr_052_5c5f                                   ; $5c60: $18 $fd

	sbc e                                            ; $5c62: $9b
	add c                                            ; $5c63: $81
	pop bc                                           ; $5c64: $c1
	db $e3                                           ; $5c65: $e3
	rst SubAFromBC                                          ; $5c66: $e7
	jp c, $8fff                                      ; $5c67: $da $ff $8f

	rst FarCall                                          ; $5c6a: $f7
	rst AddAOntoHL                                          ; $5c6b: $ef
	reti                                             ; $5c6c: $d9


	pop af                                           ; $5c6d: $f1
	or e                                             ; $5c6e: $b3
	rst SubAFromBC                                          ; $5c6f: $e7
	ld h, a                                          ; $5c70: $67
	rst GetHLinHL                                          ; $5c71: $cf
	ei                                               ; $5c72: $fb
	di                                               ; $5c73: $f3
	rst SubAFromBC                                          ; $5c74: $e7
	rst GetHLinHL                                          ; $5c75: $cf
	call z, $9898                                    ; $5c76: $cc $98 $98
	jr nc, jr_052_5cd0                               ; $5c79: $30 $55

	sub b                                            ; $5c7b: $90
	rst SubAFromDE                                          ; $5c7c: $df
	add b                                            ; $5c7d: $80
	sub l                                            ; $5c7e: $95
	ld b, b                                          ; $5c7f: $40
	jr nc, @-$06                                     ; $5c80: $30 $f8

	ldh a, [$f1]                                     ; $5c82: $f0 $f1
	rst SubAFromBC                                          ; $5c84: $e7
	rst SubAFromBC                                          ; $5c85: $e7
	rst GetHLinHL                                          ; $5c86: $cf
	set 1, a                                         ; $5c87: $cb $cf
	ld l, l                                          ; $5c89: $6d
	ld [hl-], a                                      ; $5c8a: $32
	rst SubAFromDE                                          ; $5c8b: $df
	rlca                                             ; $5c8c: $07
	sbc h                                            ; $5c8d: $9c
	jr c, @+$72                                      ; $5c8e: $38 $70

	ldh [$de], a                                     ; $5c90: $e0 $de
	ret nz                                           ; $5c92: $c0

	sbc l                                            ; $5c93: $9d
	ldh a, [$f8]                                     ; $5c94: $f0 $f8
	ld a, c                                          ; $5c96: $79
	ld [hl-], a                                      ; $5c97: $32
	ld e, l                                          ; $5c98: $5d
	ld l, b                                          ; $5c99: $68
	sbc h                                            ; $5c9a: $9c
	ld [bc], a                                       ; $5c9b: $02
	inc b                                            ; $5c9c: $04
	ld [$ffd9], sp                                   ; $5c9d: $08 $d9 $ff
	sub [hl]                                         ; $5ca0: $96
	dec b                                            ; $5ca1: $05
	ld bc, $0200                                     ; $5ca2: $01 $00 $02
	ld [bc], a                                       ; $5ca5: $02
	inc bc                                           ; $5ca6: $03
	rrca                                             ; $5ca7: $0f
	rra                                              ; $5ca8: $1f

jr_052_5ca9:
	ei                                               ; $5ca9: $fb
	jp c, $80ff                                      ; $5caa: $da $ff $80

	ld [bc], a                                       ; $5cad: $02
	reti                                             ; $5cae: $d9


	ld b, $3c                                        ; $5caf: $06 $3c
	ld a, b                                          ; $5cb1: $78
	inc sp                                           ; $5cb2: $33
	ld d, $9b                                        ; $5cb3: $16 $9b
	pop hl                                           ; $5cb5: $e1
	ld b, $f9                                        ; $5cb6: $06 $f9
	jp $cf87                                         ; $5cb8: $c3 $87 $cf


	rst AddAOntoHL                                          ; $5cbb: $ef
	db $fc                                           ; $5cbc: $fc
	add c                                            ; $5cbd: $81
	inc bc                                           ; $5cbe: $03
	inc bc                                           ; $5cbf: $03
	ld bc, $8fee                                     ; $5cc0: $01 $ee $8f
	db $e3                                           ; $5cc3: $e3
	ld l, h                                          ; $5cc4: $6c
	ld a, [hl]                                       ; $5cc5: $7e
	db $fc                                           ; $5cc6: $fc
	db $fc                                           ; $5cc7: $fc
	cp $f1                                           ; $5cc8: $fe $f1
	ldh a, [rAUD3LEVEL]                              ; $5cca: $f0 $1c
	add b                                            ; $5ccc: $80
	sub e                                            ; $5ccd: $93
	adc l                                            ; $5cce: $8d
	ldh a, [c]                                       ; $5ccf: $f2

jr_052_5cd0:
	ldh a, [c]                                       ; $5cd0: $f2
	ei                                               ; $5cd1: $fb
	ld a, d                                          ; $5cd2: $7a
	sbc d                                            ; $5cd3: $9a
	db $e3                                           ; $5cd4: $e3
	ld a, [$0c72]                                    ; $5cd5: $fa $72 $0c
	inc c                                            ; $5cd8: $0c
	inc b                                            ; $5cd9: $04
	add h                                            ; $5cda: $84
	ld h, h                                          ; $5cdb: $64
	inc e                                            ; $5cdc: $1c
	inc b                                            ; $5cdd: $04
	reti                                             ; $5cde: $d9


	ld c, h                                          ; $5cdf: $4c
	cp [hl]                                          ; $5ce0: $be
	or l                                             ; $5ce1: $b5
	sbc d                                            ; $5ce2: $9a
	sub h                                            ; $5ce3: $94
	adc l                                            ; $5ce4: $8d
	ld [de], a                                       ; $5ce5: $12
	jr nz, jr_052_5d09                               ; $5ce6: $20 $21

	ld b, c                                          ; $5ce8: $41
	ld b, d                                          ; $5ce9: $42
	ld b, h                                          ; $5cea: $44
	ld c, b                                          ; $5ceb: $48
	add c                                            ; $5cec: $81
	ld [hl], b                                       ; $5ced: $70
	ld h, c                                          ; $5cee: $61
	ld b, $94                                        ; $5cef: $06 $94
	inc c                                            ; $5cf1: $0c
	add hl, hl                                       ; $5cf2: $29
	ld d, h                                          ; $5cf3: $54
	or d                                             ; $5cf4: $b2
	ld l, c                                          ; $5cf5: $69
	push hl                                          ; $5cf6: $e5
	adc b                                            ; $5cf7: $88
	ld [$1610], sp                                   ; $5cf8: $08 $10 $16
	add hl, hl                                       ; $5cfb: $29
	ld c, c                                          ; $5cfc: $49
	sub d                                            ; $5cfd: $92

Call_052_5cfe:
	ld [de], a                                       ; $5cfe: $12
	jr z, jr_052_5ca9                                ; $5cff: $28 $a8

	ld h, d                                          ; $5d01: $62
	ld b, d                                          ; $5d02: $42
	db $d3                                           ; $5d03: $d3
	sub e                                            ; $5d04: $93
	sub e                                            ; $5d05: $93
	adc l                                            ; $5d06: $8d
	ld b, l                                          ; $5d07: $45
	ld b, l                                          ; $5d08: $45

jr_052_5d09:
	adc c                                            ; $5d09: $89
	adc c                                            ; $5d0a: $89
	sbc $09                                          ; $5d0b: $de $09
	sub a                                            ; $5d0d: $97
	inc de                                           ; $5d0e: $13
	cp $81                                           ; $5d0f: $fe $81
	add b                                            ; $5d11: $80
	add b                                            ; $5d12: $80
	rrca                                             ; $5d13: $0f
	inc bc                                           ; $5d14: $03
	ld a, h                                          ; $5d15: $7c
	call c, $9cff                                    ; $5d16: $dc $ff $9c
	ldh a, [$fc]                                     ; $5d19: $f0 $fc
	add e                                            ; $5d1b: $83
	ld a, d                                          ; $5d1c: $7a
	rrca                                             ; $5d1d: $0f
	rst $38                                          ; $5d1e: $ff
	ld a, [hl]                                       ; $5d1f: $7e
	xor h                                            ; $5d20: $ac
	sbc l                                            ; $5d21: $9d
	scf                                              ; $5d22: $37
	ld sp, hl                                        ; $5d23: $f9
	db $dd                                           ; $5d24: $dd
	rst $38                                          ; $5d25: $ff
	sub l                                            ; $5d26: $95
	rra                                              ; $5d27: $1f
	nop                                              ; $5d28: $00
	ld hl, sp-$3a                                    ; $5d29: $f8 $c6
	ld e, $e0                                        ; $5d2b: $1e $e0
	rra                                              ; $5d2d: $1f
	nop                                              ; $5d2e: $00
	nop                                              ; $5d2f: $00
	ldh a, [rOCPS]                                   ; $5d30: $f0 $6a
	jp $0f98                                         ; $5d32: $c3 $98 $0f


	ld bc, $6100                                     ; $5d35: $01 $00 $61
	ld h, c                                          ; $5d38: $61
	pop hl                                           ; $5d39: $e1
	pop hl                                           ; $5d3a: $e1
	db $dd                                           ; $5d3b: $dd
	ld h, c                                          ; $5d3c: $61
	reti                                             ; $5d3d: $d9


	sbc $fe                                          ; $5d3e: $de $fe
	sbc h                                            ; $5d40: $9c
	ld hl, sp-$19                                    ; $5d41: $f8 $e7
	ret c                                            ; $5d43: $d8

	ld l, h                                          ; $5d44: $6c
	add d                                            ; $5d45: $82
	adc d                                            ; $5d46: $8a
	ld a, a                                          ; $5d47: $7f
	ld h, a                                          ; $5d48: $67
	ld h, b                                          ; $5d49: $60
	ld h, b                                          ; $5d4a: $60
	jp hl                                            ; $5d4b: $e9


	push de                                          ; $5d4c: $d5
	xor e                                            ; $5d4d: $ab
	db $eb                                           ; $5d4e: $eb
	push af                                          ; $5d4f: $f5
	ld [de], a                                       ; $5d50: $12
	ld [hl], l                                       ; $5d51: $75
	push bc                                          ; $5d52: $c5
	rst $38                                          ; $5d53: $ff
	rst $38                                          ; $5d54: $ff
	rst SubAFromDE                                          ; $5d55: $df
	sbc a                                            ; $5d56: $9f
	adc a                                            ; $5d57: $8f
	rst AddAOntoHL                                          ; $5d58: $ef
	db $eb                                           ; $5d59: $eb
	ei                                               ; $5d5a: $fb
	ld a, a                                          ; $5d5b: $7f
	sbc $3e                                          ; $5d5c: $de $3e
	sbc d                                            ; $5d5e: $9a
	sbc l                                            ; $5d5f: $9d
	db $db                                           ; $5d60: $db
	ld h, a                                          ; $5d61: $67
	ccf                                              ; $5d62: $3f
	add c                                            ; $5d63: $81
	sbc $c1                                          ; $5d64: $de $c1
	sub e                                            ; $5d66: $93
	db $e3                                           ; $5d67: $e3
	and $fc                                          ; $5d68: $e6 $fc
	ld hl, sp-$02                                    ; $5d6a: $f8 $fe
	rst $38                                          ; $5d6c: $ff
	db $fd                                           ; $5d6d: $fd
	ei                                               ; $5d6e: $fb
	ld l, d                                          ; $5d6f: $6a
	add sp, -$0c                                     ; $5d70: $e8 $f4
	ldh a, [c]                                       ; $5d72: $f2
	ld [hl], l                                       ; $5d73: $75
	xor d                                            ; $5d74: $aa
	add b                                            ; $5d75: $80
	sbc l                                            ; $5d76: $9d
	rlca                                             ; $5d77: $07
	inc bc                                           ; $5d78: $03
	ld bc, $9ece                                     ; $5d79: $01 $ce $9e
	sbc l                                            ; $5d7c: $9d
	dec a                                            ; $5d7d: $3d
	ld a, e                                          ; $5d7e: $7b
	ld a, d                                          ; $5d7f: $7a
	halt                                             ; $5d80: $76
	dec l                                            ; $5d81: $2d
	ld sp, $6261                                     ; $5d82: $31 $61 $62
	jp nz, $8584                                     ; $5d85: $c2 $84 $85

	adc c                                            ; $5d88: $89
	jp nc, $bedf                                     ; $5d89: $d2 $df $be

	cp [hl]                                          ; $5d8c: $be
	ld a, l                                          ; $5d8d: $7d
	ld a, l                                          ; $5d8e: $7d
	ei                                               ; $5d8f: $fb
	ld a, [$2ff6]                                    ; $5d90: $fa $f6 $2f
	ld b, c                                          ; $5d93: $41
	ld b, c                                          ; $5d94: $41
	rst SubAFromDE                                          ; $5d95: $df
	add d                                            ; $5d96: $82
	add l                                            ; $5d97: $85
	inc b                                            ; $5d98: $04
	dec b                                            ; $5d99: $05
	add hl, bc                                       ; $5d9a: $09
	rst GetHLinHL                                          ; $5d9b: $cf
	rst $38                                          ; $5d9c: $ff
	or a                                             ; $5d9d: $b7
	cp c                                             ; $5d9e: $b9
	ld a, e                                          ; $5d9f: $7b
	ld [hl], a                                       ; $5da0: $77
	rst AddAOntoHL                                          ; $5da1: $ef
	db $db                                           ; $5da2: $db
	rrca                                             ; $5da3: $0f
	rst $38                                          ; $5da4: $ff
	ld c, a                                          ; $5da5: $4f
	ld b, a                                          ; $5da6: $47
	add l                                            ; $5da7: $85
	adc c                                            ; $5da8: $89
	inc de                                           ; $5da9: $13
	daa                                              ; $5daa: $27
	ld hl, sp-$07                                    ; $5dab: $f8 $f9
	di                                               ; $5dad: $f3
	rst SubAFromBC                                          ; $5dae: $e7
	adc $ec                                          ; $5daf: $ce $ec
	db $fc                                           ; $5db1: $fc
	ld [hl], e                                       ; $5db2: $73
	ld h, b                                          ; $5db3: $60
	ld [hl], l                                       ; $5db4: $75
	ld h, h                                          ; $5db5: $64
	sub [hl]                                         ; $5db6: $96
	inc sp                                           ; $5db7: $33
	and $8d                                          ; $5db8: $e6 $8d
	dec de                                           ; $5dba: $1b
	scf                                              ; $5dbb: $37

jr_052_5dbc:
	ld c, h                                          ; $5dbc: $4c
	sbc b                                            ; $5dbd: $98
	jr nc, jr_052_5dbc                               ; $5dbe: $30 $fc

	ld a, e                                          ; $5dc0: $7b
	add sp, $7d                                      ; $5dc1: $e8 $7d
	dec h                                            ; $5dc3: $25
	ld a, [hl]                                       ; $5dc4: $7e
	xor e                                            ; $5dc5: $ab
	sbc e                                            ; $5dc6: $9b
	ccf                                              ; $5dc7: $3f
	ld a, c                                          ; $5dc8: $79
	ldh [$c0], a                                     ; $5dc9: $e0 $c0

jr_052_5dcb:
	ld a, b                                          ; $5dcb: $78
	add hl, hl                                       ; $5dcc: $29
	sbc [hl]                                         ; $5dcd: $9e
	inc bc                                           ; $5dce: $03
	reti                                             ; $5dcf: $d9


	rst $38                                          ; $5dd0: $ff
	add b                                            ; $5dd1: $80
	cp b                                             ; $5dd2: $b8
	db $e4                                           ; $5dd3: $e4
	ld hl, sp-$67                                    ; $5dd4: $f8 $99
	jp z, $cbe9                                      ; $5dd6: $ca $e9 $cb

	adc e                                            ; $5dd9: $8b
	ldh a, [$f2]                                     ; $5dda: $f0 $f2
	and $e4                                          ; $5ddc: $e6 $e4
	or l                                             ; $5dde: $b5
	ld d, $34                                        ; $5ddf: $16 $34
	ld [hl], h                                       ; $5de1: $74
	or a                                             ; $5de2: $b7
	sub [hl]                                         ; $5de3: $96
	xor c                                            ; $5de4: $a9
	ld [hl], a                                       ; $5de5: $77
	xor $de                                          ; $5de6: $ee $de
	db $db                                           ; $5de8: $db
	or [hl]                                          ; $5de9: $b6
	ld c, b                                          ; $5dea: $48
	ld l, c                                          ; $5deb: $69
	ld d, [hl]                                       ; $5dec: $56
	adc b                                            ; $5ded: $88
	db $10                                           ; $5dee: $10
	jr nz, jr_052_5e11                               ; $5def: $20 $20

	add d                                            ; $5df1: $82
	ld b, c                                          ; $5df2: $41
	inc bc                                           ; $5df3: $03
	ld a, e                                          ; $5df4: $7b
	xor l                                            ; $5df5: $ad
	xor l                                            ; $5df6: $ad
	or c                                             ; $5df7: $b1
	call z, $7c11                                    ; $5df8: $cc $11 $7c
	db $fc                                           ; $5dfb: $fc
	add h                                            ; $5dfc: $84
	ld [bc], a                                       ; $5dfd: $02
	ld [bc], a                                       ; $5dfe: $02
	ld c, $32                                        ; $5dff: $0e $32
	xor $82                                          ; $5e01: $ee $82
	ld b, l                                          ; $5e03: $45
	db $d3                                           ; $5e04: $d3
	ld c, [hl]                                       ; $5e05: $4e
	ld e, [hl]                                       ; $5e06: $5e
	db $dd                                           ; $5e07: $dd
	ld e, l                                          ; $5e08: $5d
	db $dd                                           ; $5e09: $dd
	ld e, l                                          ; $5e0a: $5d
	ld [hl+], a                                      ; $5e0b: $22
	inc l                                            ; $5e0c: $2c
	ld sp, $dd21                                     ; $5e0d: $31 $21 $dd
	ld [hl+], a                                      ; $5e10: $22

jr_052_5e11:
	add a                                            ; $5e11: $87
	push hl                                          ; $5e12: $e5
	ld h, e                                          ; $5e13: $63
	xor d                                            ; $5e14: $aa
	db $10                                           ; $5e15: $10
	inc de                                           ; $5e16: $13
	ld h, $24                                        ; $5e17: $26 $24
	dec b                                            ; $5e19: $05
	ld [de], a                                       ; $5e1a: $12
	sub h                                            ; $5e1b: $94
	ld d, h                                          ; $5e1c: $54
	ld c, h                                          ; $5e1d: $4c
	ld c, h                                          ; $5e1e: $4c
	ld e, b                                          ; $5e1f: $58
	ld e, b                                          ; $5e20: $58
	ld a, b                                          ; $5e21: $78
	push hl                                          ; $5e22: $e5
	add a                                            ; $5e23: $87
	daa                                              ; $5e24: $27
	jp c, $070b                                      ; $5e25: $da $0b $07

	dec b                                            ; $5e28: $05
	rst GetHLinHL                                          ; $5e29: $cf
	sbc $13                                          ; $5e2a: $de $13
	rst SubAFromDE                                          ; $5e2c: $df
	daa                                              ; $5e2d: $27
	sub a                                            ; $5e2e: $97
	cpl                                              ; $5e2f: $2f
	ld l, $2c                                        ; $5e30: $2e $2c
	db $fd                                           ; $5e32: $fd
	rst FarCall                                          ; $5e33: $f7
	rst SubAFromDE                                          ; $5e34: $df
	rst AddAOntoHL                                          ; $5e35: $ef
	cp a                                             ; $5e36: $bf
	sbc $ff                                          ; $5e37: $de $ff
	sbc d                                            ; $5e39: $9a
	inc bc                                           ; $5e3a: $03
	ld c, $38                                        ; $5e3b: $0e $38
	ld [hl], b                                       ; $5e3d: $70
	ret nz                                           ; $5e3e: $c0

	cp $9e                                           ; $5e3f: $fe $9e
	ld a, [hl]                                       ; $5e41: $7e
	sbc $ff                                          ; $5e42: $de $ff
	sbc d                                            ; $5e44: $9a
	db $fd                                           ; $5e45: $fd
	or $d8                                           ; $5e46: $f6 $d8
	jr nz, jr_052_5dcb                               ; $5e48: $20 $81

	cp $7e                                           ; $5e4a: $fe $7e
	add hl, sp                                       ; $5e4c: $39
	ld a, b                                          ; $5e4d: $78
	ld a, a                                          ; $5e4e: $7f
	ld a, b                                          ; $5e4f: $78
	xor a                                            ; $5e50: $af
	db $dd                                           ; $5e51: $dd
	ld a, a                                          ; $5e52: $7f
	ld a, c                                          ; $5e53: $79
	di                                               ; $5e54: $f3
	call c, $d980                                    ; $5e55: $dc $80 $d9
	ld h, c                                          ; $5e58: $61
	reti                                             ; $5e59: $d9


	sbc $d9                                          ; $5e5a: $de $d9
	rst SubAFromDE                                          ; $5e5c: $df
	reti                                             ; $5e5d: $d9


	ld h, b                                          ; $5e5e: $60
	ccf                                              ; $5e5f: $3f
	nop                                              ; $5e60: $00
	sbc h                                            ; $5e61: $9c
	ld d, l                                          ; $5e62: $55
	ld d, [hl]                                       ; $5e63: $56
	ld h, d                                          ; $5e64: $62
	db $dd                                           ; $5e65: $dd
	ld [hl+], a                                      ; $5e66: $22
	sbc [hl]                                         ; $5e67: $9e
	dec h                                            ; $5e68: $25
	sbc $55                                          ; $5e69: $de $55
	ld h, e                                          ; $5e6b: $63
	or $9e                                           ; $5e6c: $f6 $9e
	ld [hl], a                                       ; $5e6e: $77
	ld h, e                                          ; $5e6f: $63
	or $df                                           ; $5e70: $f6 $df
	ld b, h                                          ; $5e72: $44
	ld [hl], e                                       ; $5e73: $73
	or $9e                                           ; $5e74: $f6 $9e
	ld [hl+], a                                      ; $5e76: $22
	ld [hl], a                                       ; $5e77: $77
	or $9e                                           ; $5e78: $f6 $9e
	ld b, d                                          ; $5e7a: $42
	ld h, e                                          ; $5e7b: $63
	or $de                                           ; $5e7c: $f6 $de
	ld [hl+], a                                      ; $5e7e: $22
	sbc l                                            ; $5e7f: $9d
	inc hl                                           ; $5e80: $23
	inc sp                                           ; $5e81: $33
	ld l, a                                          ; $5e82: $6f
	or $9a                                           ; $5e83: $f6 $9a
	inc h                                            ; $5e85: $24
	ld b, d                                          ; $5e86: $42
	inc sp                                           ; $5e87: $33
	inc sp                                           ; $5e88: $33
	ld [hl-], a                                      ; $5e89: $32
	ld l, a                                          ; $5e8a: $6f
	or $9e                                           ; $5e8b: $f6 $9e
	ld b, e                                          ; $5e8d: $43
	ld d, a                                          ; $5e8e: $57
	or $9e                                           ; $5e8f: $f6 $9e
	dec [hl]                                         ; $5e91: $35
	ld a, e                                          ; $5e92: $7b
	or $9c                                           ; $5e93: $f6 $9c
	ld b, e                                          ; $5e95: $43
	ld [hl+], a                                      ; $5e96: $22
	ld b, h                                          ; $5e97: $44
	ld l, e                                          ; $5e98: $6b
	or $df                                           ; $5e99: $f6 $df
	inc sp                                           ; $5e9b: $33
	ld l, e                                          ; $5e9c: $6b
	or $c0                                           ; $5e9d: $f6 $c0
	adc d                                            ; $5e9f: $8a
	add b                                            ; $5ea0: $80
	xor c                                            ; $5ea1: $a9
	rla                                              ; $5ea2: $17
	ld d, $2e                                        ; $5ea3: $16 $2e
	dec hl                                           ; $5ea5: $2b
	jr z, jr_052_5ed1                                ; $5ea6: $28 $29

	cpl                                              ; $5ea8: $2f
	ld e, $0e                                        ; $5ea9: $1e $0e
	rrca                                             ; $5eab: $0f
	rra                                              ; $5eac: $1f
	inc e                                            ; $5ead: $1c
	jr jr_052_5ecf                                   ; $5eae: $18 $1f

	rra                                              ; $5eb0: $1f
	nop                                              ; $5eb1: $00
	nop                                              ; $5eb2: $00
	add b                                            ; $5eb3: $80
	ld [bc], a                                       ; $5eb4: $02
	nop                                              ; $5eb5: $00
	ld h, e                                          ; $5eb6: $63
	db $fc                                           ; $5eb7: $fc
	db $e4                                           ; $5eb8: $e4
	rlca                                             ; $5eb9: $07
	rra                                              ; $5eba: $1f
	ccf                                              ; $5ebb: $3f
	db $fc                                           ; $5ebc: $fc
	nop                                              ; $5ebd: $00
	rra                                              ; $5ebe: $1f
	rst $38                                          ; $5ebf: $ff
	sub h                                            ; $5ec0: $94
	sbc b                                            ; $5ec1: $98
	ld c, $7c                                        ; $5ec2: $0e $7c
	ld [bc], a                                       ; $5ec4: $02
	nop                                              ; $5ec5: $00
	db $e3                                           ; $5ec6: $e3
	db $fc                                           ; $5ec7: $fc
	jr z, jr_052_5eca                                ; $5ec8: $28 $00

jr_052_5eca:
	ldh a, [hDisp0_SCY]                                     ; $5eca: $f0 $83
	ld [hl], a                                       ; $5ecc: $77
	pop af                                           ; $5ecd: $f1
	sub e                                            ; $5ece: $93

jr_052_5ecf:
	rst JumpTable                                          ; $5ecf: $c7
	rlca                                             ; $5ed0: $07

jr_052_5ed1:
	ret nc                                           ; $5ed1: $d0

	inc b                                            ; $5ed2: $04
	ld bc, $f8e7                                     ; $5ed3: $01 $e7 $f8
	ld d, b                                          ; $5ed6: $50
	ld de, $2f5f                                     ; $5ed7: $11 $5f $2f
	ld hl, sp+$7b                                    ; $5eda: $f8 $7b
	pop af                                           ; $5edc: $f1
	sub b                                            ; $5edd: $90
	and b                                            ; $5ede: $a0
	xor $ef                                          ; $5edf: $ee $ef
	inc b                                            ; $5ee1: $04
	ld bc, $f8c7                                     ; $5ee2: $01 $c7 $f8
	ldh a, [rP1]                                     ; $5ee5: $f0 $00
	nop                                              ; $5ee7: $00
	ld b, e                                          ; $5ee8: $43
	ld hl, sp+$00                                    ; $5ee9: $f8 $00
	ccf                                              ; $5eeb: $3f
	rst $38                                          ; $5eec: $ff
	cp $9d                                           ; $5eed: $fe $9d
	add b                                            ; $5eef: $80
	inc bc                                           ; $5ef0: $03
	ld a, e                                          ; $5ef1: $7b
	ret c                                            ; $5ef2: $d8

	sbc c                                            ; $5ef3: $99
	nop                                              ; $5ef4: $00
	ld sp, $9024                                     ; $5ef5: $31 $24 $90
	nop                                              ; $5ef8: $00
	ld a, a                                          ; $5ef9: $7f
	sbc $ff                                          ; $5efa: $de $ff
	adc h                                            ; $5efc: $8c
	ld c, [hl]                                       ; $5efd: $4e
	ld e, b                                          ; $5efe: $58
	ld h, b                                          ; $5eff: $60
	add h                                            ; $5f00: $84
	pop af                                           ; $5f01: $f1
	inc b                                            ; $5f02: $04
	db $10                                           ; $5f03: $10
	ld b, b                                          ; $5f04: $40
	inc bc                                           ; $5f05: $03
	rrca                                             ; $5f06: $0f
	inc a                                            ; $5f07: $3c
	ld a, a                                          ; $5f08: $7f
	cp $f8                                           ; $5f09: $fe $f8
	ldh [$80], a                                     ; $5f0b: $e0 $80
	nop                                              ; $5f0d: $00
	nop                                              ; $5f0e: $00
	inc bc                                           ; $5f0f: $03
	ld [hl], a                                       ; $5f10: $77
	db $f4                                           ; $5f11: $f4
	sbc e                                            ; $5f12: $9b
	ldh a, [c]                                       ; $5f13: $f2
	push bc                                          ; $5f14: $c5
	ld a, [hl+]                                      ; $5f15: $2a
	ld d, l                                          ; $5f16: $55
	ld [hl], a                                       ; $5f17: $77
	db $f4                                           ; $5f18: $f4
	sbc e                                            ; $5f19: $9b
	dec c                                            ; $5f1a: $0d
	ld a, [hl-]                                      ; $5f1b: $3a
	push de                                          ; $5f1c: $d5
	xor d                                            ; $5f1d: $aa
	ld [hl], a                                       ; $5f1e: $77
	db $f4                                           ; $5f1f: $f4
	sbc e                                            ; $5f20: $9b
	xor d                                            ; $5f21: $aa
	ld d, l                                          ; $5f22: $55
	xor d                                            ; $5f23: $aa
	ld e, l                                          ; $5f24: $5d
	ld [hl], a                                       ; $5f25: $77
	db $f4                                           ; $5f26: $f4
	ld a, e                                          ; $5f27: $7b
	rst FarCall                                          ; $5f28: $f7
	sbc [hl]                                         ; $5f29: $9e
	and d                                            ; $5f2a: $a2
	ld [hl], a                                       ; $5f2b: $77
	db $f4                                           ; $5f2c: $f4
	sbc e                                            ; $5f2d: $9b
	xor e                                            ; $5f2e: $ab
	rst SubAFromDE                                          ; $5f2f: $df
	cp a                                             ; $5f30: $bf
	rst $38                                          ; $5f31: $ff
	ld [hl], a                                       ; $5f32: $77
	db $f4                                           ; $5f33: $f4
	sbc d                                            ; $5f34: $9a
	ld d, h                                          ; $5f35: $54
	jr nz, jr_052_5f78                               ; $5f36: $20 $40

	nop                                              ; $5f38: $00
	xor a                                            ; $5f39: $af
	ld a, e                                          ; $5f3a: $7b
	db $f4                                           ; $5f3b: $f4
	sbc d                                            ; $5f3c: $9a
	rst $38                                          ; $5f3d: $ff
	ccf                                              ; $5f3e: $3f
	ccf                                              ; $5f3f: $3f
	ld hl, sp+$50                                    ; $5f40: $f8 $50
	ld a, e                                          ; $5f42: $7b
	db $f4                                           ; $5f43: $f4
	db $fd                                           ; $5f44: $fd
	sub a                                            ; $5f45: $97
	rst $38                                          ; $5f46: $ff
	cp $fa                                           ; $5f47: $fe $fa
	cp $fc                                           ; $5f49: $fe $fc
	cp b                                             ; $5f4b: $b8
	add b                                            ; $5f4c: $80
	ret nz                                           ; $5f4d: $c0

	di                                               ; $5f4e: $f3
	sub l                                            ; $5f4f: $95
	ld bc, $3d02                                     ; $5f50: $01 $02 $3d
	jr c, @+$14                                      ; $5f53: $38 $12

	ld d, $2e                                        ; $5f55: $16 $2e
	inc c                                            ; $5f57: $0c
	dec e                                            ; $5f58: $1d
	ld a, [hl-]                                      ; $5f59: $3a
	db $fc                                           ; $5f5a: $fc
	sub h                                            ; $5f5b: $94
	ldh [rAUD2LOW], a                                ; $5f5c: $e0 $18
	sub $9e                                          ; $5f5e: $d6 $9e
	inc a                                            ; $5f60: $3c
	ld [hl], c                                       ; $5f61: $71
	rlca                                             ; $5f62: $07
	ld l, a                                          ; $5f63: $6f
	rst AddAOntoHL                                          ; $5f64: $ef
	rra                                              ; $5f65: $1f
	ld d, $fd                                        ; $5f66: $16 $fd
	add c                                            ; $5f68: $81
	ld a, a                                          ; $5f69: $7f
	ld a, $0f                                        ; $5f6a: $3e $0f
	inc bc                                           ; $5f6c: $03
	ld a, a                                          ; $5f6d: $7f
	rra                                              ; $5f6e: $1f
	rst SubAFromDE                                          ; $5f6f: $df
	call c, $f0ff                                    ; $5f70: $dc $ff $f0
	ld a, $7f                                        ; $5f73: $3e $7f
	nop                                              ; $5f75: $00
	inc bc                                           ; $5f76: $03
	dec e                                            ; $5f77: $1d

jr_052_5f78:
	ld h, b                                          ; $5f78: $60
	cp c                                             ; $5f79: $b9
	rlca                                             ; $5f7a: $07
	db $fd                                           ; $5f7b: $fd
	db $f4                                           ; $5f7c: $f4
	nop                                              ; $5f7d: $00
	inc bc                                           ; $5f7e: $03
	ld e, $7f                                        ; $5f7f: $1e $7f
	ret nz                                           ; $5f81: $c0

	nop                                              ; $5f82: $00
	ld [bc], a                                       ; $5f83: $02
	adc b                                            ; $5f84: $88
	nop                                              ; $5f85: $00
	cp $de                                           ; $5f86: $fe $de
	rst $38                                          ; $5f88: $ff
	sbc c                                            ; $5f89: $99
	rst SubAFromDE                                          ; $5f8a: $df
	ccf                                              ; $5f8b: $3f
	rst $38                                          ; $5f8c: $ff
	ei                                               ; $5f8d: $fb
	rst $38                                          ; $5f8e: $ff
	ld bc, $9bfc                                     ; $5f8f: $01 $fc $9b
	jr nz, jr_052_5fc8                               ; $5f92: $20 $34

	cp h                                             ; $5f94: $bc
	cp $77                                           ; $5f95: $fe $77
	db $ed                                           ; $5f97: $ed
	sbc c                                            ; $5f98: $99
	pop hl                                           ; $5f99: $e1
	rst FarCall                                          ; $5f9a: $f7
	rst $38                                          ; $5f9b: $ff
	ld l, e                                          ; $5f9c: $6b
	inc hl                                           ; $5f9d: $23
	inc de                                           ; $5f9e: $13
	ld a, [$f88c]                                    ; $5f9f: $fa $8c $f8
	cp $ff                                           ; $5fa2: $fe $ff
	sbc $f0                                          ; $5fa4: $de $f0
	xor $9f                                          ; $5fa6: $ee $9f
	rst $38                                          ; $5fa8: $ff
	rst $38                                          ; $5fa9: $ff
	rlca                                             ; $5faa: $07
	ld bc, $7d09                                     ; $5fab: $01 $09 $7d
	ld a, h                                          ; $5fae: $7c
	cp h                                             ; $5faf: $bc
	cp l                                             ; $5fb0: $bd
	sub a                                            ; $5fb1: $97
	db $db                                           ; $5fb2: $db
	rst JumpTable                                          ; $5fb3: $c7
	ld sp, hl                                        ; $5fb4: $f9
	rst SubAFromDE                                          ; $5fb5: $df
	cpl                                              ; $5fb6: $2f
	sbc c                                            ; $5fb7: $99
	daa                                              ; $5fb8: $27
	rra                                              ; $5fb9: $1f
	adc l                                            ; $5fba: $8d
	xor l                                            ; $5fbb: $ad
	xor l                                            ; $5fbc: $ad
	xor h                                            ; $5fbd: $ac
	sbc $1e                                          ; $5fbe: $de $1e
	sbc [hl]                                         ; $5fc0: $9e
	cp $dd                                           ; $5fc1: $fe $dd
	ld e, $80                                        ; $5fc3: $1e $80
	ld c, c                                          ; $5fc5: $49
	nop                                              ; $5fc6: $00
	nop                                              ; $5fc7: $00

jr_052_5fc8:
	ld [$d0e3], sp                                   ; $5fc8: $08 $e3 $d0
	ld l, $0f                                        ; $5fcb: $2e $0f
	add [hl]                                         ; $5fcd: $86
	ld b, e                                          ; $5fce: $43
	ld h, b                                          ; $5fcf: $60
	ld [hl], b                                       ; $5fd0: $70
	inc a                                            ; $5fd1: $3c
	ccf                                              ; $5fd2: $3f
	rst SubAFromDE                                          ; $5fd3: $df
	nop                                              ; $5fd4: $00
	ld [bc], a                                       ; $5fd5: $02
	ld h, b                                          ; $5fd6: $60
	inc b                                            ; $5fd7: $04
	inc b                                            ; $5fd8: $04
	nop                                              ; $5fd9: $00
	ld a, a                                          ; $5fda: $7f
	nop                                              ; $5fdb: $00
	cp $01                                           ; $5fdc: $fe $01
	add b                                            ; $5fde: $80
	ld a, b                                          ; $5fdf: $78
	inc bc                                           ; $5fe0: $03
	ld bc, $ff80                                     ; $5fe1: $01 $80 $ff
	add d                                            ; $5fe4: $82
	ld bc, $7fdf                                     ; $5fe5: $01 $df $7f
	ld e, a                                          ; $5fe8: $5f
	nop                                              ; $5fe9: $00
	nop                                              ; $5fea: $00
	ldh [c], a                                       ; $5feb: $e2
	db $10                                           ; $5fec: $10
	ld b, b                                          ; $5fed: $40
	rst AddAOntoHL                                          ; $5fee: $ef
	rst $38                                          ; $5fef: $ff
	ccf                                              ; $5ff0: $3f
	rst $38                                          ; $5ff1: $ff
	rst $38                                          ; $5ff2: $ff
	inc e                                            ; $5ff3: $1c
	ldh [$80], a                                     ; $5ff4: $e0 $80
	add b                                            ; $5ff6: $80
	cp c                                             ; $5ff7: $b9
	and h                                            ; $5ff8: $a4
	db $10                                           ; $5ff9: $10
	add b                                            ; $5ffa: $80
	rlca                                             ; $5ffb: $07
	rra                                              ; $5ffc: $1f
	ld a, b                                          ; $5ffd: $78
	rst $38                                          ; $5ffe: $ff
	add $d8                                          ; $5fff: $c6 $d8
	ldh [$fe], a                                     ; $6001: $e0 $fe
	sbc [hl]                                         ; $6003: $9e
	rlca                                             ; $6004: $07
	ld [bc], a                                       ; $6005: $02
	ldh [$7b], a                                     ; $6006: $e0 $7b
	db $f4                                           ; $6008: $f4
	sbc h                                            ; $6009: $9c
	xor d                                            ; $600a: $aa
	rst SubAFromDE                                          ; $600b: $df
	xor e                                            ; $600c: $ab
	ld [hl], d                                       ; $600d: $72
	ldh [$97], a                                     ; $600e: $e0 $97
	ld d, l                                          ; $6010: $55
	jr nz, jr_052_6067                               ; $6011: $20 $54

	nop                                              ; $6013: $00
	xor e                                            ; $6014: $ab
	rst SubAFromDE                                          ; $6015: $df
	or a                                             ; $6016: $b7
	rst SubAFromDE                                          ; $6017: $df
	db $dd                                           ; $6018: $dd
	rst $38                                          ; $6019: $ff
	ld a, [hl]                                       ; $601a: $7e
	call nc, Call_052_489d                           ; $601b: $d4 $9d $48
	jr nz, jr_052_608e                               ; $601e: $20 $6e

	ldh [$7e], a                                     ; $6020: $e0 $7e
	pop hl                                           ; $6022: $e1
	sbc e                                            ; $6023: $9b
	db $fc                                           ; $6024: $fc
	db $fd                                           ; $6025: $fd
	ld hl, sp-$08                                    ; $6026: $f8 $f8

jr_052_6028:
	ld sp, hl                                        ; $6028: $f9
	sbc h                                            ; $6029: $9c
	or c                                             ; $602a: $b1
	daa                                              ; $602b: $27
	ld b, [hl]                                       ; $602c: $46
	ld a, e                                          ; $602d: $7b
	or l                                             ; $602e: $b5
	ld h, [hl]                                       ; $602f: $66
	reti                                             ; $6030: $d9


	sub l                                            ; $6031: $95
	inc hl                                           ; $6032: $23
	ld a, b                                          ; $6033: $78
	nop                                              ; $6034: $00
	inc de                                           ; $6035: $13
	ld [hl], e                                       ; $6036: $73
	ld h, b                                          ; $6037: $60
	ldh [c], a                                       ; $6038: $e2
	add $9e                                          ; $6039: $c6 $9e
	sbc h                                            ; $603b: $9c
	ld sp, hl                                        ; $603c: $f9
	sub h                                            ; $603d: $94
	ld b, $05                                        ; $603e: $06 $05
	dec c                                            ; $6040: $0d
	dec c                                            ; $6041: $0d
	inc c                                            ; $6042: $0c
	inc c                                            ; $6043: $0c
	inc b                                            ; $6044: $04
	inc b                                            ; $6045: $04
	inc [hl]                                         ; $6046: $34
	inc b                                            ; $6047: $04
	jr z, jr_052_6028                                ; $6048: $28 $de

	ld a, b                                          ; $604a: $78
	sbc e                                            ; $604b: $9b
	db $fc                                           ; $604c: $fc
	db $f4                                           ; $604d: $f4
	push de                                          ; $604e: $d5
	push af                                          ; $604f: $f5
	call c, $80ff                                    ; $6050: $dc $ff $80
	ld a, a                                          ; $6053: $7f
	sub l                                            ; $6054: $95

jr_052_6055:
	sub l                                            ; $6055: $95
	and l                                            ; $6056: $a5
	ret                                              ; $6057: $c9


	ld [hl], d                                       ; $6058: $72
	dec [hl]                                         ; $6059: $35
	ld a, $10                                        ; $605a: $3e $10
	or $7c                                           ; $605c: $f6 $7c
	ld a, l                                          ; $605e: $7d
	ei                                               ; $605f: $fb
	db $eb                                           ; $6060: $eb
	jp z, $8eca                                      ; $6061: $ca $ca $8e

	rst FarCall                                          ; $6064: $f7
	ld l, a                                          ; $6065: $6f
	ld c, a                                          ; $6066: $4f

jr_052_6067:
	ld e, [hl]                                       ; $6067: $5e
	xor [hl]                                         ; $6068: $ae
	ld c, a                                          ; $6069: $4f
	ld c, a                                          ; $606a: $4f
	add a                                            ; $606b: $87
	jp z, $a894                                      ; $606c: $ca $94 $a8

	ld d, l                                          ; $606f: $55
	ld l, d                                          ; $6070: $6a
	ld e, l                                          ; $6071: $5d
	add b                                            ; $6072: $80
	push de                                          ; $6073: $d5

Call_052_6074:
	di                                               ; $6074: $f3
	ld sp, $6663                                     ; $6075: $31 $63 $66
	db $ec                                           ; $6078: $ec
	db $dd                                           ; $6079: $dd
	ei                                               ; $607a: $fb
	ei                                               ; $607b: $fb
	cp a                                             ; $607c: $bf
	rla                                              ; $607d: $17
	ld b, [hl]                                       ; $607e: $46
	xor l                                            ; $607f: $ad
	ld bc, $33cb                                     ; $6080: $01 $cb $33
	ld [hl], b                                       ; $6083: $70
	dec hl                                           ; $6084: $2b
	adc b                                            ; $6085: $88
	ld sp, $cc42                                     ; $6086: $31 $42 $cc
	sbc h                                            ; $6089: $9c
	sbc b                                            ; $608a: $98
	cp c                                             ; $608b: $b9
	pop af                                           ; $608c: $f1
	ei                                               ; $608d: $fb

jr_052_608e:
	db $fd                                           ; $608e: $fd
	db $ed                                           ; $608f: $ed
	db $ec                                           ; $6090: $ec
	ld h, $df                                        ; $6091: $26 $df
	ld [hl+], a                                      ; $6093: $22
	sbc d                                            ; $6094: $9a
	jr nz, jr_052_609b                               ; $6095: $20 $04

	ld [bc], a                                       ; $6097: $02
	ld [de], a                                       ; $6098: $12
	inc de                                           ; $6099: $13
	db $dd                                           ; $609a: $dd

jr_052_609b:
	sbc c                                            ; $609b: $99
	add b                                            ; $609c: $80
	rst AddAOntoHL                                          ; $609d: $ef
	ld [hl], e                                       ; $609e: $73
	and c                                            ; $609f: $a1
	sub h                                            ; $60a0: $94
	jp nc, $c9c8                                     ; $60a1: $d2 $c8 $c9

	ld c, l                                          ; $60a4: $4d
	nop                                              ; $60a5: $00
	add b                                            ; $60a6: $80
	ld b, b                                          ; $60a7: $40
	ld h, b                                          ; $60a8: $60
	jr nz, jr_052_60dd                               ; $60a9: $20 $32

	ld [hl-], a                                      ; $60ab: $32
	or d                                             ; $60ac: $b2
	add b                                            ; $60ad: $80
	nop                                              ; $60ae: $00
	ret nz                                           ; $60af: $c0

	ldh [$e3], a                                     ; $60b0: $e0 $e3
	cp $f8                                           ; $60b2: $fe $f8
	di                                               ; $60b4: $f3
	adc a                                            ; $60b5: $8f
	ld e, $5c                                        ; $60b6: $1e $5c
	ccf                                              ; $60b8: $3f
	inc a                                            ; $60b9: $3c
	ld de, $9417                                     ; $60ba: $11 $17 $94
	inc d                                            ; $60bd: $14
	xor h                                            ; $60be: $ac
	xor h                                            ; $60bf: $ac
	adc h                                            ; $60c0: $8c

Jump_052_60c1:
	adc l                                            ; $60c1: $8d
	adc h                                            ; $60c2: $8c
	xor h                                            ; $60c3: $ac
	xor h                                            ; $60c4: $ac
	and h                                            ; $60c5: $a4
	rra                                              ; $60c6: $1f
	rra                                              ; $60c7: $1f
	sbc $1e                                          ; $60c8: $de $1e
	rst SubAFromDE                                          ; $60ca: $df
	rra                                              ; $60cb: $1f
	sub c                                            ; $60cc: $91
	jr jr_052_60cf                                   ; $60cd: $18 $00

jr_052_60cf:
	nop                                              ; $60cf: $00
	xor e                                            ; $60d0: $ab
	ld d, b                                          ; $60d1: $50
	add b                                            ; $60d2: $80
	jr nz, jr_052_6055                               ; $60d3: $20 $80

	inc bc                                           ; $60d5: $03
	rst $38                                          ; $60d6: $ff
	rst $38                                          ; $60d7: $ff
	nop                                              ; $60d8: $00
	rlca                                             ; $60d9: $07
	jr c, jr_052_6146                                ; $60da: $38 $6a

	ld a, [de]                                       ; $60dc: $1a

jr_052_60dd:
	adc l                                            ; $60dd: $8d
	ld b, $1b                                        ; $60de: $06 $1b
	ld a, a                                          ; $60e0: $7f
	ld hl, sp-$02                                    ; $60e1: $f8 $fe
	ld hl, sp-$40                                    ; $60e3: $f8 $c0
	nop                                              ; $60e5: $00
	ld bc, $0c07                                     ; $60e6: $01 $07 $0c
	db $10                                           ; $60e9: $10
	inc bc                                           ; $60ea: $03
	rrca                                             ; $60eb: $0f
	ccf                                              ; $60ec: $3f
	rst $38                                          ; $60ed: $ff
	ldh a, [$e0]                                     ; $60ee: $f0 $e0
	ld [hl], a                                       ; $60f0: $77
	rst SubAFromBC                                          ; $60f1: $e7
	sbc l                                            ; $60f2: $9d
	rrca                                             ; $60f3: $0f
	jr nc, jr_052_616d                               ; $60f4: $30 $77

	ld a, [$e28f]                                    ; $60f6: $fa $8f $e2
	sub l                                            ; $60f9: $95
	ld [$1eb5], a                                    ; $60fa: $ea $b5 $1e
	rlca                                             ; $60fd: $07
	inc bc                                           ; $60fe: $03
	ld bc, $6a1d                                     ; $60ff: $01 $1d $6a
	push de                                          ; $6102: $d5
	ld a, d                                          ; $6103: $7a
	dec c                                            ; $6104: $0d
	ld [bc], a                                       ; $6105: $02
	ld bc, $7200                                     ; $6106: $01 $00 $72
	ldh [$9c], a                                     ; $6109: $e0 $9c
	rst SubAFromHL                                          ; $610b: $d7
	xor d                                            ; $610c: $aa
	rst FarCall                                          ; $610d: $f7
	ld [hl], d                                       ; $610e: $72
	ldh [$97], a                                     ; $610f: $e0 $97
	jr z, @+$57                                      ; $6111: $28 $55

	adc b                                            ; $6113: $88
	xor d                                            ; $6114: $aa
	rst SubAFromHL                                          ; $6115: $d7
	xor e                                            ; $6116: $ab
	ld [hl], a                                       ; $6117: $77
	cp a                                             ; $6118: $bf
	ld a, c                                          ; $6119: $79
	ld [hl], h                                       ; $611a: $74
	ld a, a                                          ; $611b: $7f
	db $f4                                           ; $611c: $f4
	sbc h                                            ; $611d: $9c
	ld d, h                                          ; $611e: $54
	adc b                                            ; $611f: $88
	ld b, b                                          ; $6120: $40
	ld a, d                                          ; $6121: $7a
	or $79                                           ; $6122: $f6 $79
	or d                                             ; $6124: $b2
	sbc $ff                                          ; $6125: $de $ff
	sbc l                                            ; $6127: $9d
	cp c                                             ; $6128: $b9

jr_052_6129:
	sub d                                            ; $6129: $92
	ld l, l                                          ; $612a: $6d
	or d                                             ; $612b: $b2
	rst $38                                          ; $612c: $ff
	sbc c                                            ; $612d: $99
	di                                               ; $612e: $f3
	db $e3                                           ; $612f: $e3
	rst JumpTable                                          ; $6130: $c7
	adc $8c                                          ; $6131: $ce $8c
	sbc b                                            ; $6133: $98
	rst FarCall                                          ; $6134: $f7
	ld a, l                                          ; $6135: $7d
	inc sp                                           ; $6136: $33
	ld a, a                                          ; $6137: $7f
	and d                                            ; $6138: $a2
	ld sp, hl                                        ; $6139: $f9
	sbc e                                            ; $613a: $9b
	ld [bc], a                                       ; $613b: $02
	ld b, $1e                                        ; $613c: $06 $1e
	jr c, @+$7d                                      ; $613e: $38 $7b

	ld a, [$0599]                                    ; $6140: $fa $99 $05
	inc bc                                           ; $6143: $03
	ld e, $3e                                        ; $6144: $1e $3e

jr_052_6146:
	ld a, b                                          ; $6146: $78
	ld a, h                                          ; $6147: $7c
	ld [hl], a                                       ; $6148: $77
	adc e                                            ; $6149: $8b
	ld a, c                                          ; $614a: $79
	db $dd                                           ; $614b: $dd
	ld a, h                                          ; $614c: $7c
	call c, $b172                                    ; $614d: $dc $72 $b1
	sub [hl]                                         ; $6150: $96
	inc bc                                           ; $6151: $03
	nop                                              ; $6152: $00
	ld hl, $c373                                     ; $6153: $21 $73 $c3
	sbc e                                            ; $6156: $9b
	ld [hl], $34                                     ; $6157: $36 $34
	ld h, e                                          ; $6159: $63
	sbc $04                                          ; $615a: $de $04
	adc h                                            ; $615c: $8c
	inc c                                            ; $615d: $0c
	jr jr_052_6191                                   ; $615e: $18 $31

	db $e3                                           ; $6160: $e3
	add a                                            ; $6161: $87
	db $f4                                           ; $6162: $f4
	db $ec                                           ; $6163: $ec
	db $fc                                           ; $6164: $fc
	jr c, jr_052_61d7                                ; $6165: $38 $70

	jr nz, jr_052_6129                               ; $6167: $20 $c0

	nop                                              ; $6169: $00
	ld a, e                                          ; $616a: $7b
	ld [hl], e                                       ; $616b: $73
	ld h, a                                          ; $616c: $67

jr_052_616d:
	ld l, [hl]                                       ; $616d: $6e
	db $fc                                           ; $616e: $fc
	ld hl, sp+$77                                    ; $616f: $f8 $77
	ld e, a                                          ; $6171: $5f
	ld a, l                                          ; $6172: $7d
	ld l, h                                          ; $6173: $6c
	add b                                            ; $6174: $80
	inc b                                            ; $6175: $04
	add hl, de                                       ; $6176: $19
	daa                                              ; $6177: $27
	ld e, a                                          ; $6178: $5f
	add [hl]                                         ; $6179: $86
	add d                                            ; $617a: $82
	ld [bc], a                                       ; $617b: $02
	rlca                                             ; $617c: $07
	rrca                                             ; $617d: $0f
	scf                                              ; $617e: $37
	ld b, a                                          ; $617f: $47
	or d                                             ; $6180: $b2
	add e                                            ; $6181: $83
	add e                                            ; $6182: $83
	inc bc                                           ; $6183: $03
	dec b                                            ; $6184: $05
	dec c                                            ; $6185: $0d
	dec a                                            ; $6186: $3d
	ld a, l                                          ; $6187: $7d
	rst GetHLinHL                                          ; $6188: $cf
	or $96                                           ; $6189: $f6 $96
	jp c, $fdfe                                      ; $618b: $da $fe $fd

	ccf                                              ; $618e: $3f
	rlca                                             ; $618f: $07
	dec sp                                           ; $6190: $3b

jr_052_6191:
	cp a                                             ; $6191: $bf
	rst $38                                          ; $6192: $ff
	cp a                                             ; $6193: $bf
	sub [hl]                                         ; $6194: $96
	add a                                            ; $6195: $87
	inc bc                                           ; $6196: $03
	ld bc, $7c38                                     ; $6197: $01 $38 $7c
	ld l, c                                          ; $619a: $69
	rst FarCall                                          ; $619b: $f7
	rst $38                                          ; $619c: $ff

Jump_052_619d:
	db $eb                                           ; $619d: $eb
	sbc $ff                                          ; $619e: $de $ff
	sub b                                            ; $61a0: $90
	ld sp, hl                                        ; $61a1: $f9
	di                                               ; $61a2: $f3
	db $eb                                           ; $61a3: $eb
	xor e                                            ; $61a4: $ab
	cp a                                             ; $61a5: $bf
	dec a                                            ; $61a6: $3d
	dec [hl]                                         ; $61a7: $35
	inc h                                            ; $61a8: $24
	ld h, $20                                        ; $61a9: $26 $20
	ld [hl], b                                       ; $61ab: $70
	ld d, d                                          ; $61ac: $52
	ld d, d                                          ; $61ad: $52
	ld d, a                                          ; $61ae: $57
	ld d, c                                          ; $61af: $51
	db $dd                                           ; $61b0: $dd
	sbc c                                            ; $61b1: $99
	sbc $b9                                          ; $61b2: $de $b9
	ld a, e                                          ; $61b4: $7b
	ld d, e                                          ; $61b5: $53
	add b                                            ; $61b6: $80
	ld b, l                                          ; $61b7: $45
	ld d, a                                          ; $61b8: $57
	ld d, [hl]                                       ; $61b9: $56
	ld d, $16                                        ; $61ba: $16 $16
	ld [de], a                                       ; $61bc: $12
	ld [de], a                                       ; $61bd: $12
	rla                                              ; $61be: $17
	cp d                                             ; $61bf: $ba
	or d                                             ; $61c0: $b2
	cp e                                             ; $61c1: $bb
	ei                                               ; $61c2: $fb
	ei                                               ; $61c3: $fb
	rst $38                                          ; $61c4: $ff
	cp $fc                                           ; $61c5: $fe $fc
	ld e, $ac                                        ; $61c7: $1e $ac
	xor b                                            ; $61c9: $a8
	xor d                                            ; $61ca: $aa
	sbc a                                            ; $61cb: $9f
	ld a, h                                          ; $61cc: $7c
	dec e                                            ; $61cd: $1d
	and h                                            ; $61ce: $a4
	sub b                                            ; $61cf: $90
	or c                                             ; $61d0: $b1
	ld hl, sp-$03                                    ; $61d1: $f8 $fd
	db $fc                                           ; $61d3: $fc
	ccf                                              ; $61d4: $3f
	ld a, h                                          ; $61d5: $7c
	sub [hl]                                         ; $61d6: $96

jr_052_61d7:
	ld c, a                                          ; $61d7: $4f
	nop                                              ; $61d8: $00
	add b                                            ; $61d9: $80
	ld bc, $3e07                                     ; $61da: $01 $07 $3e
	ld hl, sp-$3b                                    ; $61dd: $f8 $c5
	ld a, [hl+]                                      ; $61df: $2a
	ld [hl], a                                       ; $61e0: $77
	ld c, e                                          ; $61e1: $4b
	ld a, a                                          ; $61e2: $7f
	or $7d                                           ; $61e3: $f6 $7d
	db $db                                           ; $61e5: $db
	sbc e                                            ; $61e6: $9b
	rrca                                             ; $61e7: $0f
	ld a, h                                          ; $61e8: $7c
	pop af                                           ; $61e9: $f1
	adc d                                            ; $61ea: $8a
	ld [hl], l                                       ; $61eb: $75
	rst GetHLinHL                                          ; $61ec: $cf
	ld a, a                                          ; $61ed: $7f
	ld e, [hl]                                       ; $61ee: $5e
	sbc l                                            ; $61ef: $9d
	ld c, $75                                        ; $61f0: $0e $75
	ld [hl], l                                       ; $61f2: $75
	rst GetHLinHL                                          ; $61f3: $cf
	adc b                                            ; $61f4: $88
	or b                                             ; $61f5: $b0
	jr nc, jr_052_6238                               ; $61f6: $30 $40

	ldh [rLCDC], a                                   ; $61f8: $e0 $40
	add b                                            ; $61fa: $80
	ret nz                                           ; $61fb: $c0

	add b                                            ; $61fc: $80
	ld h, b                                          ; $61fd: $60
	ldh [$e0], a                                     ; $61fe: $e0 $e0
	ld b, b                                          ; $6200: $40
	ret nz                                           ; $6201: $c0

	ret nz                                           ; $6202: $c0

	add b                                            ; $6203: $80
	add b                                            ; $6204: $80
	nop                                              ; $6205: $00
	ld bc, $0703                                     ; $6206: $01 $03 $07
	rra                                              ; $6209: $1f
	ld a, $7c                                        ; $620a: $3e $7c
	ld a, b                                          ; $620c: $78
	ld e, e                                          ; $620d: $5b
	ld a, [$e47b]                                    ; $620e: $fa $7b $e4
	push af                                          ; $6211: $f5
	sub d                                            ; $6212: $92
	rst AddAOntoHL                                          ; $6213: $ef
	ld a, a                                          ; $6214: $7f
	ld a, a                                          ; $6215: $7f
	ccf                                              ; $6216: $3f
	ccf                                              ; $6217: $3f
	rra                                              ; $6218: $1f
	rrca                                             ; $6219: $0f
	inc bc                                           ; $621a: $03
	ld d, b                                          ; $621b: $50
	jr nz, jr_052_622e                               ; $621c: $20 $10

	ld [$7a04], sp                                   ; $621e: $08 $04 $7a
	or b                                             ; $6221: $b0
	db $dd                                           ; $6222: $dd
	rst $38                                          ; $6223: $ff
	sbc h                                            ; $6224: $9c
	cp $ee                                           ; $6225: $fe $ee
	db $fc                                           ; $6227: $fc
	ld h, l                                          ; $6228: $65
	or b                                             ; $6229: $b0
	ld a, a                                          ; $622a: $7f
	call nc, $8898                                   ; $622b: $d4 $98 $88

jr_052_622e:
	sbc h                                            ; $622e: $9c
	jr c, jr_052_624c                                ; $622f: $38 $1b

	ld [hl], $66                                     ; $6231: $36 $66
	call z, $ae65                                    ; $6233: $cc $65 $ae
	sub a                                            ; $6236: $97
	ld [hl], b                                       ; $6237: $70

jr_052_6238:
	ld a, h                                          ; $6238: $7c
	ld a, c                                          ; $6239: $79
	ld l, e                                          ; $623a: $6b
	ld d, b                                          ; $623b: $50
	add [hl]                                         ; $623c: $86
	inc c                                            ; $623d: $0c
	adc b                                            ; $623e: $88
	cp $92                                           ; $623f: $fe $92
	db $10                                           ; $6241: $10
	inc hl                                           ; $6242: $23
	ld h, c                                          ; $6243: $61
	ret nz                                           ; $6244: $c0

	nop                                              ; $6245: $00
	ld l, h                                          ; $6246: $6c
	ld sp, hl                                        ; $6247: $f9
	db $d3                                           ; $6248: $d3
	inc bc                                           ; $6249: $03
	ld b, $06                                        ; $624a: $06 $06

jr_052_624c:
	inc b                                            ; $624c: $04
	ld c, h                                          ; $624d: $4c
	cp $7f                                           ; $624e: $fe $7f
	and a                                            ; $6250: $a7
	sbc h                                            ; $6251: $9c
	ld [$9199], sp                                   ; $6252: $08 $99 $91
	ld [hl], e                                       ; $6255: $73
	ld l, c                                          ; $6256: $69
	ld a, [hl]                                       ; $6257: $7e
	sbc $7b                                          ; $6258: $de $7b
	ldh [c], a                                       ; $625a: $e2
	adc l                                            ; $625b: $8d
	jr nc, jr_052_628f                               ; $625c: $30 $31

	ld h, d                                          ; $625e: $62
	call z, $0090                                    ; $625f: $cc $90 $00
	cp $f8                                           ; $6262: $fe $f8
	ldh [$80], a                                     ; $6264: $e0 $80
	rlca                                             ; $6266: $07
	ld a, [bc]                                       ; $6267: $0a
	db $10                                           ; $6268: $10
	jr c, jr_052_6277                                ; $6269: $38 $0c

	jr nc, @+$42                                     ; $626b: $30 $40

	add b                                            ; $626d: $80
	ld a, e                                          ; $626e: $7b
	add sp, -$65                                     ; $626f: $e8 $9b
	db $10                                           ; $6271: $10
	rrca                                             ; $6272: $0f
	rra                                              ; $6273: $1f
	ld a, e                                          ; $6274: $7b
	ld a, b                                          ; $6275: $78
	xor d                                            ; $6276: $aa

jr_052_6277:
	ld [hl], e                                       ; $6277: $73
	jp c, $fc9c                                      ; $6278: $da $9c $fc

	adc [hl]                                         ; $627b: $8e
	inc bc                                           ; $627c: $03
	ld a, e                                          ; $627d: $7b
	sub b                                            ; $627e: $90
	add b                                            ; $627f: $80
	di                                               ; $6280: $f3
	call c, $fdf9                                    ; $6281: $dc $f9 $fd
	rst $38                                          ; $6284: $ff
	db $fd                                           ; $6285: $fd
	push hl                                          ; $6286: $e5
	rst GetHLinHL                                          ; $6287: $cf
	cp h                                             ; $6288: $bc
	db $e3                                           ; $6289: $e3
	ccf                                              ; $628a: $3f
	rrca                                             ; $628b: $0f
	rlca                                             ; $628c: $07
	add e                                            ; $628d: $83
	ld b, d                                          ; $628e: $42

jr_052_628f:
	ld h, e                                          ; $628f: $63
	add d                                            ; $6290: $82
	ld [bc], a                                       ; $6291: $02
	call nz, $dea6                                   ; $6292: $c4 $a6 $de
	db $ec                                           ; $6295: $ec
	ld [hl], $9e                                     ; $6296: $36 $9e
	ld a, [hl]                                       ; $6298: $7e
	cp $fe                                           ; $6299: $fe $fe
	inc a                                            ; $629b: $3c
	sbc h                                            ; $629c: $9c
	xor $a6                                          ; $629d: $ee $a6
	sub [hl]                                         ; $629f: $96
	rrca                                             ; $62a0: $0f
	ld c, $07                                        ; $62a1: $0e $07
	ld bc, $0b07                                     ; $62a3: $01 $07 $0b
	inc d                                            ; $62a6: $14
	inc e                                            ; $62a7: $1c
	inc e                                            ; $62a8: $1c
	halt                                             ; $62a9: $76
	ld h, b                                          ; $62aa: $60
	sub a                                            ; $62ab: $97
	jr jr_052_62ca                                   ; $62ac: $18 $1c

	ld a, [de]                                       ; $62ae: $1a
	ld a, $3f                                        ; $62af: $3e $3f

Call_052_62b1:
	rrca                                             ; $62b1: $0f
	add a                                            ; $62b2: $87
	db $dd                                           ; $62b3: $dd
	ld a, d                                          ; $62b4: $7a
	nop                                              ; $62b5: $00
	ld a, e                                          ; $62b6: $7b
	push bc                                          ; $62b7: $c5
	sub d                                            ; $62b8: $92
	nop                                              ; $62b9: $00
	ld c, $06                                        ; $62ba: $0e $06
	inc bc                                           ; $62bc: $03
	ld bc, $59d9                                     ; $62bd: $01 $d9 $59
	push de                                          ; $62c0: $d5
	db $fd                                           ; $62c1: $fd
	db $fd                                           ; $62c2: $fd
	rst SubAFromDE                                          ; $62c3: $df
	rst $38                                          ; $62c4: $ff
	ld [hl], h                                       ; $62c5: $74
	ld a, d                                          ; $62c6: $7a
	dec c                                            ; $62c7: $0d
	sub d                                            ; $62c8: $92
	ld h, a                                          ; $62c9: $67

jr_052_62ca:
	daa                                              ; $62ca: $27
	daa                                              ; $62cb: $27
	rlca                                             ; $62cc: $07
	adc a                                            ; $62cd: $8f
	dec h                                            ; $62ce: $25
	inc h                                            ; $62cf: $24
	jr z, jr_052_62fa                                ; $62d0: $28 $28

	ld d, b                                          ; $62d2: $50
	ld [hl], d                                       ; $62d3: $72
	ldh [c], a                                       ; $62d4: $e2
	ldh [$dc], a                                     ; $62d5: $e0 $dc
	rst $38                                          ; $62d7: $ff
	sbc $fd                                          ; $62d8: $de $fd
	sub d                                            ; $62da: $92
	or a                                             ; $62db: $b7
	and a                                            ; $62dc: $a7
	or [hl]                                          ; $62dd: $b6
	jp nz, $3261                                     ; $62de: $c2 $61 $32

	ld [hl-], a                                      ; $62e1: $32
	ld sp, $dbde                                     ; $62e2: $31 $de $db
	db $db                                           ; $62e5: $db
	adc l                                            ; $62e6: $8d
	add l                                            ; $62e7: $85
	sbc $9c                                          ; $62e8: $de $9c
	ld [hl], b                                       ; $62ea: $70
	and e                                            ; $62eb: $a3
	ld a, b                                          ; $62ec: $78
	cp e                                             ; $62ed: $bb
	ld [hl], b                                       ; $62ee: $70
	and e                                            ; $62ef: $a3
	ld a, b                                          ; $62f0: $78
	cp e                                             ; $62f1: $bb
	adc e                                            ; $62f2: $8b
	ld d, a                                          ; $62f3: $57
	cp e                                             ; $62f4: $bb
	sub $af                                          ; $62f5: $d6 $af
	rst SubAFromHL                                          ; $62f7: $d7

jr_052_62f8:
	ld a, [hl]                                       ; $62f8: $7e
	db $fc                                           ; $62f9: $fc

jr_052_62fa:
	ld hl, sp-$57                                    ; $62fa: $f8 $a9
	ld b, l                                          ; $62fc: $45
	dec hl                                           ; $62fd: $2b
	ld d, d                                          ; $62fe: $52
	inc l                                            ; $62ff: $2c
	add h                                            ; $6300: $84
	ld [$0308], sp                                   ; $6301: $08 $08 $03
	add a                                            ; $6304: $87
	adc a                                            ; $6305: $8f
	adc a                                            ; $6306: $8f
	ld l, a                                          ; $6307: $6f
	rlca                                             ; $6308: $07
	ei                                               ; $6309: $fb
	ld a, a                                          ; $630a: $7f
	and $5d                                          ; $630b: $e6 $5d
	ldh [$fa], a                                     ; $630d: $e0 $fa
	sbc l                                            ; $630f: $9d
	ld [hl], b                                       ; $6310: $70
	ld hl, sp-$22                                    ; $6311: $f8 $de
	db $fc                                           ; $6313: $fc
	ld a, [$109e]                                    ; $6314: $fa $9e $10
	ld [hl], a                                       ; $6317: $77
	dec [hl]                                         ; $6318: $35
	push af                                          ; $6319: $f5
	ld a, a                                          ; $631a: $7f
	jp nc, $309e                                     ; $631b: $d2 $9e $30

	ld a, d                                          ; $631e: $7a
	or a                                             ; $631f: $b7
	ld a, a                                          ; $6320: $7f
	ld h, a                                          ; $6321: $67
	sbc d                                            ; $6322: $9a
	ld b, c                                          ; $6323: $41
	inc hl                                           ; $6324: $23
	db $10                                           ; $6325: $10
	ld de, $7a0b                                     ; $6326: $11 $0b $7a
	xor a                                            ; $6329: $af
	sub l                                            ; $632a: $95
	ret nz                                           ; $632b: $c0

	inc b                                            ; $632c: $04
	ld a, $3e                                        ; $632d: $3e $3e
	ld a, h                                          ; $632f: $7c
	db $e4                                           ; $6330: $e4
	ldh [$c4], a                                     ; $6331: $e0 $c4
	ld [bc], a                                       ; $6333: $02
	ld [bc], a                                       ; $6334: $02
	ld [hl], a                                       ; $6335: $77
	inc c                                            ; $6336: $0c
	rst SubAFromDE                                          ; $6337: $df
	inc bc                                           ; $6338: $03
	sbc b                                            ; $6339: $98
	ld de, $0323                                     ; $633a: $11 $23 $03
	add [hl]                                         ; $633d: $86
	ld b, $c6                                        ; $633e: $06 $c6
	adc [hl]                                         ; $6340: $8e
	ld [hl], a                                       ; $6341: $77
	ld sp, $019b                                     ; $6342: $31 $9b $01
	add hl, bc                                       ; $6345: $09
	add hl, bc                                       ; $6346: $09

jr_052_6347:
	db $10                                           ; $6347: $10
	ld a, b                                          ; $6348: $78
	inc a                                            ; $6349: $3c
	ld a, a                                          ; $634a: $7f
	db $eb                                           ; $634b: $eb
	ld a, [hl]                                       ; $634c: $7e
	pop bc                                           ; $634d: $c1
	sub h                                            ; $634e: $94
	ld [$9300], sp                                   ; $634f: $08 $00 $93
	di                                               ; $6352: $f3
	rst AddAOntoHL                                          ; $6353: $ef
	sbc [hl]                                         ; $6354: $9e
	cp h                                             ; $6355: $bc
	ld a, h                                          ; $6356: $7c
	jr jr_052_6389                                   ; $6357: $18 $30

	add b                                            ; $6359: $80
	ld a, d                                          ; $635a: $7a
	jr nz, jr_052_62f8                               ; $635b: $20 $9b

	rra                                              ; $635d: $1f
	ccf                                              ; $635e: $3f
	ld a, a                                          ; $635f: $7f
	xor a                                            ; $6360: $af
	ld a, d                                          ; $6361: $7a
	ld b, [hl]                                       ; $6362: $46
	db $fc                                           ; $6363: $fc
	sub d                                            ; $6364: $92
	ld a, b                                          ; $6365: $78
	ld l, a                                          ; $6366: $6f
	ld l, [hl]                                       ; $6367: $6e
	call nz, $c0c4                                   ; $6368: $c4 $c4 $c0
	ld b, b                                          ; $636b: $40
	ret nz                                           ; $636c: $c0

	jr nz, jr_052_639f                               ; $636d: $20 $30

	ld sp, $7b7b                                     ; $636f: $31 $7b $7b
	sbc $7f                                          ; $6372: $de $7f
	rst $38                                          ; $6374: $ff
	sbc c                                            ; $6375: $99
	add l                                            ; $6376: $85
	ld b, l                                          ; $6377: $45
	ld h, [hl]                                       ; $6378: $66
	inc e                                            ; $6379: $1c
	inc e                                            ; $637a: $1c
	ld l, $77                                        ; $637b: $2e $77
	ld e, l                                          ; $637d: $5d
	add b                                            ; $637e: $80
	add c                                            ; $637f: $81
	ld h, e                                          ; $6380: $63
	db $e3                                           ; $6381: $e3
	pop bc                                           ; $6382: $c1
	ld a, [hl]                                       ; $6383: $7e
	ld a, [hl]                                       ; $6384: $7e
	sbc $db                                          ; $6385: $de $db
	rst SubAFromDE                                          ; $6387: $df
	rst $38                                          ; $6388: $ff

jr_052_6389:
	db $e3                                           ; $6389: $e3
	db $fc                                           ; $638a: $fc
	ld b, [hl]                                       ; $638b: $46
	ld a, [hl+]                                      ; $638c: $2a
	ld a, [hl-]                                      ; $638d: $3a
	ld a, [hl-]                                      ; $638e: $3a
	add hl, sp                                       ; $638f: $39
	ld h, $41                                        ; $6390: $26 $41
	jr c, jr_052_6347                                ; $6392: $38 $b3

	xor c                                            ; $6394: $a9
	ldh a, [$fc]                                     ; $6395: $f0 $fc
	db $fc                                           ; $6397: $fc
	db $ec                                           ; $6398: $ec
	cp $0f                                           ; $6399: $fe $0f
	and d                                            ; $639b: $a2
	or c                                             ; $639c: $b1
	sbc b                                            ; $639d: $98
	sub c                                            ; $639e: $91

jr_052_639f:
	ld l, b                                          ; $639f: $68
	sbc b                                            ; $63a0: $98
	ld [hl], b                                       ; $63a1: $70
	ret nz                                           ; $63a2: $c0

	nop                                              ; $63a3: $00
	ld c, $80                                        ; $63a4: $0e $80
	ret nz                                           ; $63a6: $c0

	ld h, b                                          ; $63a7: $60
	ld h, b                                          ; $63a8: $60
	cpl                                              ; $63a9: $2f
	ccf                                              ; $63aa: $3f
	ccf                                              ; $63ab: $3f
	ld e, $78                                        ; $63ac: $1e $78
	ld l, a                                          ; $63ae: $6f
	ld a, a                                          ; $63af: $7f
	cp h                                             ; $63b0: $bc
	rst SubAFromDE                                          ; $63b1: $df
	ccf                                              ; $63b2: $3f
	ld a, a                                          ; $63b3: $7f
	and d                                            ; $63b4: $a2
	sbc c                                            ; $63b5: $99
	rrca                                             ; $63b6: $0f
	dec a                                            ; $63b7: $3d
	rst SubAFromBC                                          ; $63b8: $e7
	ld a, a                                          ; $63b9: $7f
	cp $7e                                           ; $63ba: $fe $7e
	ld [hl], l                                       ; $63bc: $75
	inc l                                            ; $63bd: $2c
	sbc [hl]                                         ; $63be: $9e
	rra                                              ; $63bf: $1f
	sbc $ff                                          ; $63c0: $de $ff
	sub h                                            ; $63c2: $94
	xor $ff                                          ; $63c3: $ee $ff
	ld e, a                                          ; $63c5: $5f
	db $fd                                           ; $63c6: $fd
	db $ed                                           ; $63c7: $ed
	ld c, e                                          ; $63c8: $4b
	ld e, e                                          ; $63c9: $5b
	ld e, e                                          ; $63ca: $5b
	add hl, de                                       ; $63cb: $19
	ld sp, $7ae7                                     ; $63cc: $31 $e7 $7a
	ret nc                                           ; $63cf: $d0

	rst SubAFromDE                                          ; $63d0: $df
	db $ed                                           ; $63d1: $ed
	add b                                            ; $63d2: $80
	add h                                            ; $63d3: $84
	add l                                            ; $63d4: $85
	dec b                                            ; $63d5: $05
	ld hl, $80c0                                     ; $63d6: $21 $c0 $80
	sub b                                            ; $63d9: $90
	sub d                                            ; $63da: $92
	pop af                                           ; $63db: $f1
	add sp, -$28                                     ; $63dc: $e8 $d8
	ret c                                            ; $63de: $d8

	jr jr_052_63f9                                   ; $63df: $18 $18

	ld [$2208], sp                                   ; $63e1: $08 $08 $22
	ld hl, $b030                                     ; $63e4: $21 $30 $b0
	jr nc, @+$32                                     ; $63e7: $30 $30

	ld d, b                                          ; $63e9: $50
	sbc d                                            ; $63ea: $9a
	adc h                                            ; $63eb: $8c
	adc [hl]                                         ; $63ec: $8e
	sbc a                                            ; $63ed: $9f
	ld e, $1b                                        ; $63ee: $1e $1b
	sbc c                                            ; $63f0: $99
	sbc b                                            ; $63f1: $98
	sbc [hl]                                         ; $63f2: $9e
	ld c, b                                          ; $63f3: $48
	reti                                             ; $63f4: $d9


	rst $38                                          ; $63f5: $ff
	ld d, h                                          ; $63f6: $54
	ret nz                                           ; $63f7: $c0

	ld a, l                                          ; $63f8: $7d

jr_052_63f9:
	ld [bc], a                                       ; $63f9: $02
	ld a, a                                          ; $63fa: $7f
	adc $df                                          ; $63fb: $ce $df
	db $10                                           ; $63fd: $10
	rst SubAFromDE                                          ; $63fe: $df
	jr nz, @-$1f                                     ; $63ff: $20 $df

	ld b, b                                          ; $6401: $40
	ld h, a                                          ; $6402: $67
	ld c, d                                          ; $6403: $4a
	rst FarCall                                          ; $6404: $f7
	jp c, Jump_052_7c01                              ; $6405: $da $01 $7c

	ret nz                                           ; $6408: $c0

	ld h, d                                          ; $6409: $62
	or b                                             ; $640a: $b0
	rst SubAFromDE                                          ; $640b: $df
	ld hl, sp-$22                                    ; $640c: $f8 $de
	db $fc                                           ; $640e: $fc
	sbc [hl]                                         ; $640f: $9e
	cp $da                                           ; $6410: $fe $da
	jr nz, @+$66                                     ; $6412: $20 $64

	ld l, c                                          ; $6414: $69
	ld e, e                                          ; $6415: $5b
	ret nc                                           ; $6416: $d0

	ld l, e                                          ; $6417: $6b
	ld hl, sp-$06                                    ; $6418: $f8 $fa
	ld a, c                                          ; $641a: $79
	dec a                                            ; $641b: $3d
	ld a, e                                          ; $641c: $7b
	ccf                                              ; $641d: $3f
	rst SubAFromDE                                          ; $641e: $df
	jr nc, @+$81                                     ; $641f: $30 $7f

	ld b, c                                          ; $6421: $41
	adc [hl]                                         ; $6422: $8e
	add [hl]                                         ; $6423: $86
	ld c, [hl]                                       ; $6424: $4e
	dec a                                            ; $6425: $3d
	add hl, sp                                       ; $6426: $39
	inc de                                           ; $6427: $13
	ld d, $1c                                        ; $6428: $16 $1c
	ld a, [hl-]                                      ; $642a: $3a
	ld a, $77                                        ; $642b: $3e $77
	ld l, [hl]                                       ; $642d: $6e
	db $ec                                           ; $642e: $ec
	ret z                                            ; $642f: $c8

	nop                                              ; $6430: $00
	ld h, c                                          ; $6431: $61
	ld b, c                                          ; $6432: $41
	pop bc                                           ; $6433: $c1
	ld [hl], l                                       ; $6434: $75
	inc hl                                           ; $6435: $23
	adc e                                            ; $6436: $8b
	add $09                                          ; $6437: $c6 $09
	add hl, bc                                       ; $6439: $09
	dec bc                                           ; $643a: $0b
	rrca                                             ; $643b: $0f
	inc c                                            ; $643c: $0c
	ld [$0010], sp                                   ; $643d: $08 $10 $00
	add sp, -$38                                     ; $6440: $e8 $c8
	adc b                                            ; $6442: $88
	ld [$f078], sp                                   ; $6443: $08 $78 $f0
	pop hl                                           ; $6446: $e1
	rst JumpTable                                          ; $6447: $c7
	rst JumpTable                                          ; $6448: $c7
	db $eb                                           ; $6449: $eb
	sub [hl]                                         ; $644a: $96
	ld a, c                                          ; $644b: $79
	sbc d                                            ; $644c: $9a
	sbc l                                            ; $644d: $9d
	ld sp, $7463                                     ; $644e: $31 $63 $74
	ld [hl], c                                       ; $6451: $71
	ld a, a                                          ; $6452: $7f
	jp hl                                            ; $6453: $e9


	sbc b                                            ; $6454: $98
	jr nz, @+$43                                     ; $6455: $20 $41

	db $db                                           ; $6457: $db
	adc l                                            ; $6458: $8d
	inc c                                            ; $6459: $0c
	jr nc, jr_052_64bc                               ; $645a: $30 $60

	ld a, c                                          ; $645c: $79
	dec c                                            ; $645d: $0d
	sbc l                                            ; $645e: $9d
	add a                                            ; $645f: $87
	ld b, $7b                                        ; $6460: $06 $7b
	ldh a, [c]                                       ; $6462: $f2
	ld a, a                                          ; $6463: $7f
	ld h, b                                          ; $6464: $60
	sbc l                                            ; $6465: $9d
	nop                                              ; $6466: $00
	db $fd                                           ; $6467: $fd
	ld l, l                                          ; $6468: $6d
	add e                                            ; $6469: $83
	sbc l                                            ; $646a: $9d
	ld bc, $6bfe                                     ; $646b: $01 $fe $6b
	ld l, [hl]                                       ; $646e: $6e
	sub e                                            ; $646f: $93
	cp $3f                                           ; $6470: $fe $3f
	sbc $6d                                          ; $6472: $de $6d
	db $fd                                           ; $6474: $fd
	cp l                                             ; $6475: $bd
	adc h                                            ; $6476: $8c
	call c, $cb0c                                    ; $6477: $dc $0c $cb
	db $eb                                           ; $647a: $eb
	ld a, [hl-]                                      ; $647b: $3a
	sbc $1a                                          ; $647c: $de $1a
	sbc b                                            ; $647e: $98
	ld c, $03                                        ; $647f: $0e $03
	add b                                            ; $6481: $80
	ret nz                                           ; $6482: $c0

	inc a                                            ; $6483: $3c
	rst FarCall                                          ; $6484: $f7
	dec bc                                           ; $6485: $0b
	ld [hl], a                                       ; $6486: $77
	db $db                                           ; $6487: $db
	add [hl]                                         ; $6488: $86
	ldh [$f8], a                                     ; $6489: $e0 $f8
	inc c                                            ; $648b: $0c
	ld b, $02                                        ; $648c: $06 $02
	inc bc                                           ; $648e: $03
	dec a                                            ; $648f: $3d
	ccf                                              ; $6490: $3f
	ld a, a                                          ; $6491: $7f
	ld a, a                                          ; $6492: $7f
	inc a                                            ; $6493: $3c
	ld a, $3e                                        ; $6494: $3e $3e
	rra                                              ; $6496: $1f
	ld e, $10                                        ; $6497: $1e $10
	ld [$0408], sp                                   ; $6499: $08 $08 $04
	inc b                                            ; $649c: $04
	ld [bc], a                                       ; $649d: $02
	ld [bc], a                                       ; $649e: $02

jr_052_649f:
	cp $ba                                           ; $649f: $fe $ba
	rst AddAOntoHL                                          ; $64a1: $ef
	ld a, e                                          ; $64a2: $7b
	cp l                                             ; $64a3: $bd
	sbc d                                            ; $64a4: $9a
	jr nc, jr_052_649f                               ; $64a5: $30 $f8

	ld a, [hl]                                       ; $64a7: $7e
	ld a, d                                          ; $64a8: $7a
	rra                                              ; $64a9: $1f
	ld [hl], e                                       ; $64aa: $73
	cp [hl]                                          ; $64ab: $be
	add d                                            ; $64ac: $82
	ld a, [hl-]                                      ; $64ad: $3a
	dec sp                                           ; $64ae: $3b
	cp c                                             ; $64af: $b9
	db $fd                                           ; $64b0: $fd
	ld l, h                                          ; $64b1: $6c
	xor b                                            ; $64b2: $a8
	cp $de                                           ; $64b3: $fe $de
	ld l, l                                          ; $64b5: $6d
	ld l, h                                          ; $64b6: $6c
	xor $e6                                          ; $64b7: $ee $e6
	rst FarCall                                          ; $64b9: $f7
	ld a, a                                          ; $64ba: $7f
	add hl, sp                                       ; $64bb: $39

Call_052_64bc:
jr_052_64bc:
	jr c, jr_052_6530                                ; $64bc: $38 $72

	add hl, hl                                       ; $64be: $29
	ld c, l                                          ; $64bf: $4d
	cp h                                             ; $64c0: $bc
	and [hl]                                         ; $64c1: $a6
	db $db                                           ; $64c2: $db
	ei                                               ; $64c3: $fb
	add sp, -$78                                     ; $64c4: $e8 $88
	add b                                            ; $64c6: $80
	add b                                            ; $64c7: $80
	ld b, b                                          ; $64c8: $40
	ld b, b                                          ; $64c9: $40
	ld a, d                                          ; $64ca: $7a
	ld [hl+], a                                      ; $64cb: $22
	sub l                                            ; $64cc: $95
	ld h, b                                          ; $64cd: $60
	ld [bc], a                                       ; $64ce: $02
	ret nz                                           ; $64cf: $c0

	ld a, h                                          ; $64d0: $7c
	ccf                                              ; $64d1: $3f
	inc c                                            ; $64d2: $0c
	ldh a, [$3c]                                     ; $64d3: $f0 $3c
	inc c                                            ; $64d5: $0c
	ld bc, $ff75                                     ; $64d6: $01 $75 $ff
	rst $38                                          ; $64d9: $ff
	ld [hl], h                                       ; $64da: $74
	and c                                            ; $64db: $a1
	ld a, h                                          ; $64dc: $7c
	ld a, [hl+]                                      ; $64dd: $2a
	ld a, [hl]                                       ; $64de: $7e
	ld a, [$01df]                                    ; $64df: $fa $df $01
	rst SubAFromDE                                          ; $64e2: $df
	ld [bc], a                                       ; $64e3: $02
	rst SubAFromDE                                          ; $64e4: $df
	inc b                                            ; $64e5: $04
	rst SubAFromDE                                          ; $64e6: $df
	ld [$cf42], sp                                   ; $64e7: $08 $42 $cf

jr_052_64ea:
	ldh a, [c]                                       ; $64ea: $f2
	ld a, h                                          ; $64eb: $7c
	ld b, d                                          ; $64ec: $42
	rst SubAFromDE                                          ; $64ed: $df
	rlca                                             ; $64ee: $07
	ld a, h                                          ; $64ef: $7c
	call z, $ee7d                                    ; $64f0: $cc $7d $ee
	ld h, [hl]                                       ; $64f3: $66
	ldh [c], a                                       ; $64f4: $e2
	rst SubAFromDE                                          ; $64f5: $df
	cp $db                                           ; $64f6: $fe $db
	rst $38                                          ; $64f8: $ff
	sbc $40                                          ; $64f9: $de $40
	ld a, a                                          ; $64fb: $7f
	ld d, [hl]                                       ; $64fc: $56
	ld a, l                                          ; $64fd: $7d
	add sp, $7b                                      ; $64fe: $e8 $7b
	sbc [hl]                                         ; $6500: $9e
	ld a, c                                          ; $6501: $79
	rst FarCall                                          ; $6502: $f7
	ld a, a                                          ; $6503: $7f
	or $45                                           ; $6504: $f6 $45
	ld e, h                                          ; $6506: $5c
	ld hl, sp-$21                                    ; $6507: $f8 $df
	jr jr_052_64ea                                   ; $6509: $18 $df

	inc c                                            ; $650b: $0c
	ld a, h                                          ; $650c: $7c
	ret c                                            ; $650d: $d8

	rst SubAFromDE                                          ; $650e: $df
	rlca                                             ; $650f: $07
	ld l, a                                          ; $6510: $6f
	ld b, d                                          ; $6511: $42
	ld h, [hl]                                       ; $6512: $66
	and d                                            ; $6513: $a2
	sub l                                            ; $6514: $95
	rra                                              ; $6515: $1f
	cp $8d                                           ; $6516: $fe $8d
	sbc e                                            ; $6518: $9b
	ld a, [hl-]                                      ; $6519: $3a

jr_052_651a:
	ld [hl], l                                       ; $651a: $75
	ei                                               ; $651b: $fb
	rst AddAOntoHL                                          ; $651c: $ef
	rst $38                                          ; $651d: $ff
	rst SubAFromBC                                          ; $651e: $e7
	ld [hl], c                                       ; $651f: $71
	ld l, d                                          ; $6520: $6a
	ld a, l                                          ; $6521: $7d
	rst FarCall                                          ; $6522: $f7
	add e                                            ; $6523: $83
	rra                                              ; $6524: $1f
	add [hl]                                         ; $6525: $86
	inc b                                            ; $6526: $04
	pop hl                                           ; $6527: $e1
	rst SubAFromBC                                          ; $6528: $e7
	adc $9c                                          ; $6529: $ce $9c
	ldh [$30], a                                     ; $652b: $e0 $30
	add $cc                                          ; $652d: $c6 $cc
	db $fc                                           ; $652f: $fc

jr_052_6530:
	ld sp, hl                                        ; $6530: $f9
	ldh a, [c]                                       ; $6531: $f2
	db $e4                                           ; $6532: $e4
	adc $cc                                          ; $6533: $ce $cc
	ld b, d                                          ; $6535: $42
	add h                                            ; $6536: $84
	adc b                                            ; $6537: $88
	db $10                                           ; $6538: $10
	ld hl, $4243                                     ; $6539: $21 $43 $42
	add h                                            ; $653c: $84
	ld b, b                                          ; $653d: $40
	ret nz                                           ; $653e: $c0

	ret nz                                           ; $653f: $c0

	ld sp, hl                                        ; $6540: $f9
	ld a, d                                          ; $6541: $7a
	cp d                                             ; $6542: $ba
	ld l, d                                          ; $6543: $6a
	ld h, b                                          ; $6544: $60
	ld a, a                                          ; $6545: $7f
	adc $9e                                          ; $6546: $ce $9e
	rlca                                             ; $6548: $07
	ld sp, hl                                        ; $6549: $f9
	sub e                                            ; $654a: $93
	set 5, a                                         ; $654b: $cb $ef
	db $ed                                           ; $654d: $ed
	rst AddAOntoHL                                          ; $654e: $ef
	db $ed                                           ; $654f: $ed
	db $ec                                           ; $6550: $ec
	db $ec                                           ; $6551: $ec
	db $fc                                           ; $6552: $fc
	ld c, $0a                                        ; $6553: $0e $0a
	dec bc                                           ; $6555: $0b
	add hl, bc                                       ; $6556: $09
	db $dd                                           ; $6557: $dd
	ld [$039b], sp                                   ; $6558: $08 $9b $03
	add c                                            ; $655b: $81
	call $de07                                       ; $655c: $cd $07 $de
	add a                                            ; $655f: $87
	sbc l                                            ; $6560: $9d
	ld c, c                                          ; $6561: $49
	ld bc, $dc7a                                     ; $6562: $01 $7a $dc
	sbc $f8                                          ; $6565: $de $f8
	sub h                                            ; $6567: $94
	or $0f                                           ; $6568: $f6 $0f
	adc a                                            ; $656a: $8f
	add a                                            ; $656b: $87
	add a                                            ; $656c: $87
	jp $c181                                         ; $656d: $c3 $81 $c1


	ret nz                                           ; $6570: $c0

	ld bc, $de01                                     ; $6571: $01 $01 $de
	add b                                            ; $6574: $80
	ld a, a                                          ; $6575: $7f
	ld d, b                                          ; $6576: $50
	sbc [hl]                                         ; $6577: $9e
	ld b, b                                          ; $6578: $40
	ld a, b                                          ; $6579: $78
	or c                                             ; $657a: $b1
	db $dd                                           ; $657b: $dd
	ldh [$9c], a                                     ; $657c: $e0 $9c
	pop af                                           ; $657e: $f1
	jr nz, jr_052_65c1                               ; $657f: $20 $40

	ld a, e                                          ; $6581: $7b
	di                                               ; $6582: $f3
	rst SubAFromDE                                          ; $6583: $df
	jr nz, jr_052_651a                               ; $6584: $20 $94

	db $10                                           ; $6586: $10
	cp [hl]                                          ; $6587: $be
	scf                                              ; $6588: $37
	jp hl                                            ; $6589: $e9


	call z, Call_052_6074                            ; $658a: $cc $74 $60
	ret nz                                           ; $658d: $c0

	nop                                              ; $658e: $00
	db $10                                           ; $658f: $10
	jr @+$7a                                         ; $6590: $18 $78

	or e                                             ; $6592: $b3
	sub [hl]                                         ; $6593: $96
	inc sp                                           ; $6594: $33
	inc bc                                           ; $6595: $03
	rlca                                             ; $6596: $07
	ld b, e                                          ; $6597: $43
	rlca                                             ; $6598: $07
	ld [hl+], a                                      ; $6599: $22
	ld h, a                                          ; $659a: $67
	sub a                                            ; $659b: $97
	add [hl]                                         ; $659c: $86
	ld h, e                                          ; $659d: $63
	adc h                                            ; $659e: $8c
	ld a, e                                          ; $659f: $7b
	db $eb                                           ; $65a0: $eb
	sbc c                                            ; $65a1: $99
	ld h, $46                                        ; $65a2: $26 $46
	adc h                                            ; $65a4: $8c
	ld bc, $fe6d                                     ; $65a5: $01 $6d $fe
	ld bc, $5d90                                     ; $65a8: $01 $90 $5d
	cp [hl]                                          ; $65ab: $be
	sbc e                                            ; $65ac: $9b
	inc bc                                           ; $65ad: $03
	rrca                                             ; $65ae: $0f
	rra                                              ; $65af: $1f
	ccf                                              ; $65b0: $3f
	ld h, c                                          ; $65b1: $61
	ld h, b                                          ; $65b2: $60
	sbc [hl]                                         ; $65b3: $9e
	ld a, a                                          ; $65b4: $7f
	db $dd                                           ; $65b5: $dd
	rst $38                                          ; $65b6: $ff
	sbc h                                            ; $65b7: $9c
	rst FarCall                                          ; $65b8: $f7
	ldh [c], a                                       ; $65b9: $e2
	add $7a                                          ; $65ba: $c6 $7a
	sub d                                            ; $65bc: $92
	rst SubAFromDE                                          ; $65bd: $df
	ld [$fe79], sp                                   ; $65be: $08 $79 $fe

jr_052_65c1:
	sbc $ff                                          ; $65c1: $de $ff
	sbc d                                            ; $65c3: $9a
	ld e, a                                          ; $65c4: $5f
	rra                                              ; $65c5: $1f
	rra                                              ; $65c6: $1f
	rrca                                             ; $65c7: $0f
	rrca                                             ; $65c8: $0f
	sbc $20                                          ; $65c9: $de $20

jr_052_65cb:
	sbc $10                                          ; $65cb: $de $10
	sub [hl]                                         ; $65cd: $96
	ld [$e048], sp                                   ; $65ce: $08 $48 $e0
	ldh a, [$f8]                                     ; $65d1: $f0 $f8
	db $fc                                           ; $65d3: $fc
	cp $ff                                           ; $65d4: $fe $ff
	ld a, a                                          ; $65d6: $7f
	ld l, d                                          ; $65d7: $6a
	and b                                            ; $65d8: $a0

jr_052_65d9:
	ld sp, hl                                        ; $65d9: $f9
	ld e, a                                          ; $65da: $5f
	xor b                                            ; $65db: $a8
	sbc [hl]                                         ; $65dc: $9e
	rlca                                             ; $65dd: $07
	db $dd                                           ; $65de: $dd
	inc bc                                           ; $65df: $03
	db $dd                                           ; $65e0: $dd
	ld bc, $dffa                                     ; $65e1: $01 $fa $df
	call z, $8c99                                    ; $65e4: $cc $99 $8c
	adc b                                            ; $65e7: $88
	adc b                                            ; $65e8: $88
	sbc b                                            ; $65e9: $98
	sub b                                            ; $65ea: $90
	jr nc, jr_052_65cb                               ; $65eb: $30 $de

	ld b, $de                                        ; $65ed: $06 $de
	inc c                                            ; $65ef: $0c
	ld a, l                                          ; $65f0: $7d
	sub [hl]                                         ; $65f1: $96
	sbc l                                            ; $65f2: $9d
	rrca                                             ; $65f3: $0f
	rlca                                             ; $65f4: $07
	ld a, e                                          ; $65f5: $7b
	ldh [c], a                                       ; $65f6: $e2
	sbc d                                            ; $65f7: $9a
	inc bc                                           ; $65f8: $03
	ld [bc], a                                       ; $65f9: $02
	ld b, $18                                        ; $65fa: $06 $18
	inc c                                            ; $65fc: $0c
	ld a, e                                          ; $65fd: $7b
	sub $7b                                          ; $65fe: $d6 $7b
	sbc e                                            ; $6600: $9b
	sbc [hl]                                         ; $6601: $9e
	sbc h                                            ; $6602: $9c
	ld a, e                                          ; $6603: $7b
	db $e4                                           ; $6604: $e4

jr_052_6605:
	ld a, l                                          ; $6605: $7d
	adc a                                            ; $6606: $8f
	sub a                                            ; $6607: $97
	ld h, b                                          ; $6608: $60
	ldh [hDisp0_WY], a                                     ; $6609: $e0 $88
	sub b                                            ; $660b: $90
	jr nc, jr_052_662e                               ; $660c: $30 $20

	ld h, b                                          ; $660e: $60
	ld b, b                                          ; $660f: $40
	ld [hl], d                                       ; $6610: $72
	call $9cf4                                       ; $6611: $cd $f4 $9c
	dec bc                                           ; $6614: $0b
	rla                                              ; $6615: $17
	rrca                                             ; $6616: $0f
	sbc $3f                                          ; $6617: $de $3f
	rst SubAFromDE                                          ; $6619: $df
	ld a, a                                          ; $661a: $7f
	ld a, c                                          ; $661b: $79
	ld h, e                                          ; $661c: $63
	db $fc                                           ; $661d: $fc
	ld a, d                                          ; $661e: $7a
	push bc                                          ; $661f: $c5
	sbc $fc                                          ; $6620: $de $fc
	sbc e                                            ; $6622: $9b
	call c, $18fe                                    ; $6623: $dc $fe $18
	jr jr_052_6605                                   ; $6626: $18 $dd

	db $10                                           ; $6628: $10
	ld a, a                                          ; $6629: $7f
	call z, $ec7a                                    ; $662a: $cc $7a $ec
	sub b                                            ; $662d: $90

jr_052_662e:
	ld de, $0f1f                                     ; $662e: $11 $1f $0f
	rlca                                             ; $6631: $07
	dec sp                                           ; $6632: $3b
	ld a, a                                          ; $6633: $7f
	ld a, a                                          ; $6634: $7f

jr_052_6635:
	ccf                                              ; $6635: $3f
	ld a, $10                                        ; $6636: $3e $10
	ld [$060f], sp                                   ; $6638: $08 $0f $06
	ldh [$c0], a                                     ; $663b: $e0 $c0
	db $dd                                           ; $663d: $dd
	ldh [$9b], a                                     ; $663e: $e0 $9b
	ldh a, [$b0]                                     ; $6640: $f0 $b0
	ld b, b                                          ; $6642: $40
	ld h, b                                          ; $6643: $60
	db $dd                                           ; $6644: $dd
	jr nz, jr_052_65d9                               ; $6645: $20 $92

	ldh [rAUD4LEN], a                                ; $6647: $e0 $20
	jr c, jr_052_6663                                ; $6649: $38 $18

	ld bc, $0307                                     ; $664b: $01 $07 $03
	ld [hl], b                                       ; $664e: $70
	ld a, c                                          ; $664f: $79
	pop af                                           ; $6650: $f1
	db $10                                           ; $6651: $10
	ld [$7100], sp                                   ; $6652: $08 $00 $71
	xor a                                            ; $6655: $af
	sub a                                            ; $6656: $97
	inc h                                            ; $6657: $24
	add sp, -$60                                     ; $6658: $e8 $a0
	inc hl                                           ; $665a: $23
	ld h, $20                                        ; $665b: $26 $20
	add c                                            ; $665d: $81
	jp $20db                                         ; $665e: $c3 $db $20


	rst SubAFromDE                                          ; $6661: $df
	add b                                            ; $6662: $80

jr_052_6663:
	sub l                                            ; $6663: $95
	ld bc, $2736                                     ; $6664: $01 $36 $27
	rrca                                             ; $6667: $0f
	inc e                                            ; $6668: $1c
	ld h, d                                          ; $6669: $62
	call z, $0089                                    ; $666a: $cc $89 $00
	add hl, bc                                       ; $666d: $09
	ld l, a                                          ; $666e: $6f
	and b                                            ; $666f: $a0
	sub l                                            ; $6670: $95
	add h                                            ; $6671: $84
	nop                                              ; $6672: $00
	rst JumpTable                                          ; $6673: $c7
	adc [hl]                                         ; $6674: $8e
	inc a                                            ; $6675: $3c
	ld [hl], b                                       ; $6676: $70
	ld h, h                                          ; $6677: $64
	jr nz, jr_052_66f2                               ; $6678: $20 $78

	ld hl, sp+$5e                                    ; $667a: $f8 $5e
	inc a                                            ; $667c: $3c
	ld d, d                                          ; $667d: $52
	jp nc, $a279                                     ; $667e: $d2 $79 $a2

	ld a, a                                          ; $6681: $7f
	ld [hl], c                                       ; $6682: $71
	ld e, h                                          ; $6683: $5c
	jr nc, jr_052_66fb                               ; $6684: $30 $75

	ld h, b                                          ; $6686: $60
	ld a, l                                          ; $6687: $7d
	ld h, d                                          ; $6688: $62
	ld a, [hl]                                       ; $6689: $7e
	sbc h                                            ; $668a: $9c
	ld a, d                                          ; $668b: $7a
	rla                                              ; $668c: $17
	ld [hl], h                                       ; $668d: $74
	cp a                                             ; $668e: $bf
	sbc e                                            ; $668f: $9b
	ld hl, $0380                                     ; $6690: $21 $80 $03
	ld [bc], a                                       ; $6693: $02
	ld a, d                                          ; $6694: $7a
	xor [hl]                                         ; $6695: $ae
	ld a, [hl]                                       ; $6696: $7e
	xor l                                            ; $6697: $ad
	ld a, a                                          ; $6698: $7f
	ret z                                            ; $6699: $c8

	rst SubAFromDE                                          ; $669a: $df
	jr nc, jr_052_6635                               ; $669b: $30 $98

	ld [hl], b                                       ; $669d: $70
	ld h, b                                          ; $669e: $60
	ldh [$e0], a                                     ; $669f: $e0 $e0
	rrca                                             ; $66a1: $0f
	rrca                                             ; $66a2: $0f
	rlca                                             ; $66a3: $07
	ld a, e                                          ; $66a4: $7b
	rla                                              ; $66a5: $17
	rst SubAFromDE                                          ; $66a6: $df
	ld bc, $927c                                     ; $66a7: $01 $7c $92
	sub c                                            ; $66aa: $91
	inc c                                            ; $66ab: $0c
	inc e                                            ; $66ac: $1c
	ld a, d                                          ; $66ad: $7a
	or $ef                                           ; $66ae: $f6 $ef
	rst GetHLinHL                                          ; $66b0: $cf
	rst $38                                          ; $66b1: $ff
	rst FarCall                                          ; $66b2: $f7
	rst $38                                          ; $66b3: $ff
	db $fc                                           ; $66b4: $fc
	db $fc                                           ; $66b5: $fc

jr_052_66b6:
	rst $38                                          ; $66b6: $ff
	rst $38                                          ; $66b7: $ff
	ld h, a                                          ; $66b8: $67
	ld h, c                                          ; $66b9: $61
	db $db                                           ; $66ba: $db
	halt                                             ; $66bb: $76
	xor a                                            ; $66bc: $af
	ld a, [hl]                                       ; $66bd: $7e
	xor [hl]                                         ; $66be: $ae
	sbc [hl]                                         ; $66bf: $9e
	ld a, [$305c]                                    ; $66c0: $fa $5c $30
	ld a, a                                          ; $66c3: $7f
	cp a                                             ; $66c4: $bf
	sbc [hl]                                         ; $66c5: $9e
	inc b                                            ; $66c6: $04
	ld a, d                                          ; $66c7: $7a
	push de                                          ; $66c8: $d5
	ld [hl], d                                       ; $66c9: $72
	ld h, a                                          ; $66ca: $67
	adc a                                            ; $66cb: $8f
	ld [bc], a                                       ; $66cc: $02

Jump_052_66cd:
	dec b                                            ; $66cd: $05
	dec b                                            ; $66ce: $05
	inc sp                                           ; $66cf: $33
	ld b, b                                          ; $66d0: $40
	and b                                            ; $66d1: $a0
	ld b, b                                          ; $66d2: $40
	sub b                                            ; $66d3: $90
	inc c                                            ; $66d4: $0c
	db $10                                           ; $66d5: $10
	ld hl, $6720                                     ; $66d6: $21 $20 $67
	rst GetHLinHL                                          ; $66d9: $cf
	sbc a                                            ; $66da: $9f
	rrca                                             ; $66db: $0f
	ld a, e                                          ; $66dc: $7b
	add h                                            ; $66dd: $84
	rst SubAFromDE                                          ; $66de: $df
	inc l                                            ; $66df: $2c
	sub c                                            ; $66e0: $91
	sbc c                                            ; $66e1: $99
	ld d, c                                          ; $66e2: $51
	ld hl, $8141                                     ; $66e3: $21 $41 $81
	ld [bc], a                                       ; $66e6: $02
	inc d                                            ; $66e7: $14
	dec e                                            ; $66e8: $1d
	add hl, de                                       ; $66e9: $19
	or c                                             ; $66ea: $b1
	pop hl                                           ; $66eb: $e1
	pop bc                                           ; $66ec: $c1
	add e                                            ; $66ed: $83
	inc bc                                           ; $66ee: $03
	sbc $c0                                          ; $66ef: $de $c0
	sbc d                                            ; $66f1: $9a

jr_052_66f2:
	add c                                            ; $66f2: $81
	add e                                            ; $66f3: $83
	add a                                            ; $66f4: $87
	add a                                            ; $66f5: $87
	ld c, $66                                        ; $66f6: $0e $66
	ld a, [hl]                                       ; $66f8: $7e
	ld a, h                                          ; $66f9: $7c
	dec [hl]                                         ; $66fa: $35

jr_052_66fb:
	ld a, e                                          ; $66fb: $7b
	ld [$839d], a                                    ; $66fc: $ea $9d $83
	rlca                                             ; $66ff: $07
	ld h, c                                          ; $6700: $61
	sub b                                            ; $6701: $90
	reti                                             ; $6702: $d9


	rst $38                                          ; $6703: $ff
	ld l, e                                          ; $6704: $6b
	and e                                            ; $6705: $a3
	sbc c                                            ; $6706: $99
	ld bc, $cce7                                     ; $6707: $01 $e7 $cc
	ret c                                            ; $670a: $d8

	or e                                             ; $670b: $b3
	and $fe                                          ; $670c: $e6 $fe
	adc h                                            ; $670e: $8c
	jr c, jr_052_6784                                ; $670f: $38 $73

	ld h, a                                          ; $6711: $67
	call z, $b098                                    ; $6712: $cc $98 $b0
	ret nz                                           ; $6715: $c0

	nop                                              ; $6716: $00
	pop af                                           ; $6717: $f1
	db $e3                                           ; $6718: $e3
	ld b, h                                          ; $6719: $44
	ld h, b                                          ; $671a: $60
	nop                                              ; $671b: $00
	add b                                            ; $671c: $80
	nop                                              ; $671d: $00
	jr nz, jr_052_672c                               ; $671e: $20 $0c

	jr jr_052_6752                                   ; $6720: $18 $30

	ld a, d                                          ; $6722: $7a
	ld b, e                                          ; $6723: $43
	ld a, a                                          ; $6724: $7f
	and b                                            ; $6725: $a0
	sub a                                            ; $6726: $97
	rst SubAFromHL                                          ; $6727: $d7
	rla                                              ; $6728: $17
	nop                                              ; $6729: $00
	inc b                                            ; $672a: $04
	inc b                                            ; $672b: $04

jr_052_672c:
	dec e                                            ; $672c: $1d
	jr nz, jr_052_672f                               ; $672d: $20 $00

jr_052_672f:
	ld a, d                                          ; $672f: $7a
	inc d                                            ; $6730: $14
	sub d                                            ; $6731: $92
	jr jr_052_676c                                   ; $6732: $18 $38

	jr nz, jr_052_66b6                               ; $6734: $20 $80

	nop                                              ; $6736: $00
	ret nz                                           ; $6737: $c0

	jr jr_052_67b2                                   ; $6738: $18 $78

	ld b, b                                          ; $673a: $40
	add c                                            ; $673b: $81
	rra                                              ; $673c: $1f
	inc a                                            ; $673d: $3c
	pop af                                           ; $673e: $f1
	ld sp, hl                                        ; $673f: $f9
	sub a                                            ; $6740: $97
	rst GetHLinHL                                          ; $6741: $cf
	ld h, [hl]                                       ; $6742: $66
	db $ed                                           ; $6743: $ed
	add e                                            ; $6744: $83
	rlca                                             ; $6745: $07
	ld l, h                                          ; $6746: $6c
	reti                                             ; $6747: $d9


	or a                                             ; $6748: $b7
	ld [hl], b                                       ; $6749: $70
	ld d, e                                          ; $674a: $53
	cp $82                                           ; $674b: $fe $82
	ld [hl+], a                                      ; $674d: $22
	ret z                                            ; $674e: $c8

	jp nc, $00d4                                     ; $674f: $d2 $d4 $00

jr_052_6752:
	ld a, e                                          ; $6752: $7b
	sub h                                            ; $6753: $94
	ld [$0701], sp                                   ; $6754: $08 $01 $07
	inc c                                            ; $6757: $0c
	ld [rRAMG], sp                                   ; $6758: $08 $00 $00
	ld h, e                                          ; $675b: $63
	rst SubAFromBC                                          ; $675c: $e7
	ld [bc], a                                       ; $675d: $02
	adc [hl]                                         ; $675e: $8e
	add hl, sp                                       ; $675f: $39
	ld [hl], d                                       ; $6760: $72
	or $39                                           ; $6761: $f6 $39
	inc hl                                           ; $6763: $23
	ld c, a                                          ; $6764: $4f
	ret nz                                           ; $6765: $c0

	nop                                              ; $6766: $00
	ld b, $0c                                        ; $6767: $06 $0c
	ld [$8879], sp                                   ; $6769: $08 $79 $88

jr_052_676c:
	ld a, c                                          ; $676c: $79
	dec b                                            ; $676d: $05
	ld [hl], h                                       ; $676e: $74
	ld [hl], b                                       ; $676f: $70
	sbc [hl]                                         ; $6770: $9e
	rra                                              ; $6771: $1f
	ld d, [hl]                                       ; $6772: $56
	ret nc                                           ; $6773: $d0

	halt                                             ; $6774: $76
	rst GetHLinHL                                          ; $6775: $cf
	ld a, e                                          ; $6776: $7b
	ld [hl], e                                       ; $6777: $73
	sbc l                                            ; $6778: $9d
	ld [bc], a                                       ; $6779: $02
	inc bc                                           ; $677a: $03
	ld a, e                                          ; $677b: $7b
	and $66                                          ; $677c: $e6 $66
	sbc a                                            ; $677e: $9f
	adc a                                            ; $677f: $8f
	ld b, a                                          ; $6780: $47
	and a                                            ; $6781: $a7
	ld l, [hl]                                       ; $6782: $6e
	db $fc                                           ; $6783: $fc

jr_052_6784:
	db $fc                                           ; $6784: $fc
	cp b                                             ; $6785: $b8
	ld a, b                                          ; $6786: $78
	ld h, e                                          ; $6787: $63
	rra                                              ; $6788: $1f
	ld a, $30                                        ; $6789: $3e $30
	ld h, b                                          ; $678b: $60
	ld bc, $9985                                     ; $678c: $01 $85 $99
	db $10                                           ; $678f: $10
	ld h, a                                          ; $6790: $67
	add sp, -$6b                                     ; $6791: $e8 $95
	add c                                            ; $6793: $81
	nop                                              ; $6794: $00
	scf                                              ; $6795: $37
	db $fc                                           ; $6796: $fc
	ret z                                            ; $6797: $c8

	sbc b                                            ; $6798: $98
	nop                                              ; $6799: $00
	nop                                              ; $679a: $00
	ld e, $3c                                        ; $679b: $1e $3c
	ld a, e                                          ; $679d: $7b
	and c                                            ; $679e: $a1
	ld a, d                                          ; $679f: $7a
	db $ed                                           ; $67a0: $ed
	sbc h                                            ; $67a1: $9c
	cp [hl]                                          ; $67a2: $be
	sbc h                                            ; $67a3: $9c
	ld e, c                                          ; $67a4: $59
	ld a, d                                          ; $67a5: $7a
	sub a                                            ; $67a6: $97
	ld [hl], l                                       ; $67a7: $75
	adc [hl]                                         ; $67a8: $8e
	sbc h                                            ; $67a9: $9c
	ld b, b                                          ; $67aa: $40
	nop                                              ; $67ab: $00
	nop                                              ; $67ac: $00
	sbc $f0                                          ; $67ad: $de $f0
	sbc e                                            ; $67af: $9b

jr_052_67b0:
	rst $38                                          ; $67b0: $ff
	rst AddAOntoHL                                          ; $67b1: $ef

jr_052_67b2:
	add $cc                                          ; $67b2: $c6 $cc
	ld a, d                                          ; $67b4: $7a
	add c                                            ; $67b5: $81
	ld h, d                                          ; $67b6: $62
	ld e, c                                          ; $67b7: $59
	ld a, a                                          ; $67b8: $7f
	ld c, e                                          ; $67b9: $4b
	ld a, [hl]                                       ; $67ba: $7e
	adc d                                            ; $67bb: $8a
	ld [hl], a                                       ; $67bc: $77
	call nz, $0f9d                                   ; $67bd: $c4 $9d $0f
	ld a, [bc]                                       ; $67c0: $0a
	ld [hl], e                                       ; $67c1: $73
	and c                                            ; $67c2: $a1
	sbc c                                            ; $67c3: $99
	rra                                              ; $67c4: $1f
	ld [bc], a                                       ; $67c5: $02
	inc h                                            ; $67c6: $24
	ld [$9088], sp                                   ; $67c7: $08 $88 $90
	ld a, c                                          ; $67ca: $79
	rst SubAFromHL                                          ; $67cb: $d7
	sbc d                                            ; $67cc: $9a
	ld a, $1c                                        ; $67cd: $3e $1c
	ld [$1808], sp                                   ; $67cf: $08 $08 $18
	ld a, e                                          ; $67d2: $7b
	rst FarCall                                          ; $67d3: $f7
	rst SubAFromDE                                          ; $67d4: $df
	inc bc                                           ; $67d5: $03
	db $dd                                           ; $67d6: $dd
	rlca                                             ; $67d7: $07
	sbc l                                            ; $67d8: $9d
	rrca                                             ; $67d9: $0f
	dec bc                                           ; $67da: $0b
	jp c, $7f02                                      ; $67db: $da $02 $7f

	ld e, e                                          ; $67de: $5b
	ld a, b                                          ; $67df: $78
	cp b                                             ; $67e0: $b8
	push af                                          ; $67e1: $f5
	rst SubAFromDE                                          ; $67e2: $df
	rrca                                             ; $67e3: $0f
	rst SubAFromDE                                          ; $67e4: $df
	rra                                              ; $67e5: $1f
	ld [hl], l                                       ; $67e6: $75

jr_052_67e7:
	adc a                                            ; $67e7: $8f
	ld sp, hl                                        ; $67e8: $f9
	ld a, e                                          ; $67e9: $7b
	ld d, e                                          ; $67ea: $53
	ld a, e                                          ; $67eb: $7b
	ld d, d                                          ; $67ec: $52
	ld a, a                                          ; $67ed: $7f
	sbc a                                            ; $67ee: $9f
	ld a, d                                          ; $67ef: $7a
	ld l, d                                          ; $67f0: $6a
	add b                                            ; $67f1: $80
	dec b                                            ; $67f2: $05
	inc c                                            ; $67f3: $0c
	dec de                                           ; $67f4: $1b
	dec de                                           ; $67f5: $1b
	scf                                              ; $67f6: $37
	nop                                              ; $67f7: $00
	ld [bc], a                                       ; $67f8: $02
	inc b                                            ; $67f9: $04
	add hl, bc                                       ; $67fa: $09
	inc de                                           ; $67fb: $13
	rlca                                             ; $67fc: $07
	ld c, $18                                        ; $67fd: $0e $18
	ld hl, $8040                                     ; $67ff: $21 $40 $80
	nop                                              ; $6802: $00
	add b                                            ; $6803: $80
	and b                                            ; $6804: $a0
	pop bc                                           ; $6805: $c1
	rst JumpTable                                          ; $6806: $c7
	ld h, b                                          ; $6807: $60
	call nz, $3c8f                                   ; $6808: $c4 $8f $3c
	ld a, h                                          ; $680b: $7c
	di                                               ; $680c: $f3
	rst AddAOntoHL                                          ; $680d: $ef
	ldh a, [rAUD3HIGH]                               ; $680e: $f0 $1e
	jr c, jr_052_67b0                                ; $6810: $38 $9e

	ld [hl], b                                       ; $6812: $70
	ld [hl], e                                       ; $6813: $73
	adc c                                            ; $6814: $89
	sub a                                            ; $6815: $97
	sbc c                                            ; $6816: $99
	and a                                            ; $6817: $a7
	rlca                                             ; $6818: $07
	ld e, $79                                        ; $6819: $1e $79
	rst FarCall                                          ; $681b: $f7
	pop bc                                           ; $681c: $c1
	inc bc                                           ; $681d: $03
	ei                                               ; $681e: $fb
	sub l                                            ; $681f: $95
	ld c, $9c                                        ; $6820: $0e $9c
	ldh [c], a                                       ; $6822: $e2
	ret nz                                           ; $6823: $c0

	inc a                                            ; $6824: $3c
	jr c, jr_052_67e7                                ; $6825: $38 $c0

	jr nz, @-$68                                     ; $6827: $20 $96

	cp [hl]                                          ; $6829: $be
	ld l, [hl]                                       ; $682a: $6e
	inc de                                           ; $682b: $13
	ld a, a                                          ; $682c: $7f
	ld c, h                                          ; $682d: $4c
	sub h                                            ; $682e: $94
	ld h, h                                          ; $682f: $64
	ret z                                            ; $6830: $c8

	inc de                                           ; $6831: $13
	ld l, h                                          ; $6832: $6c
	ldh a, [$e2]                                     ; $6833: $f0 $e2
	ld e, $fe                                        ; $6835: $1e $fe
	inc bc                                           ; $6837: $03
	rlca                                             ; $6838: $07
	inc c                                            ; $6839: $0c
	ld [hl], c                                       ; $683a: $71
	adc a                                            ; $683b: $8f
	sub l                                            ; $683c: $95
	add hl, hl                                       ; $683d: $29
	ld b, b                                          ; $683e: $40
	jr nz, jr_052_68a1                               ; $683f: $20 $60

	add b                                            ; $6841: $80
	ld a, $32                                        ; $6842: $3e $32
	ldh [$c6], a                                     ; $6844: $e0 $c6
	sbc h                                            ; $6846: $9c
	ld [hl], a                                       ; $6847: $77
	ld [hl], a                                       ; $6848: $77
	sbc d                                            ; $6849: $9a
	inc c                                            ; $684a: $0c
	ld e, $1f                                        ; $684b: $1e $1f
	ld b, $36                                        ; $684d: $06 $36
	ld a, d                                          ; $684f: $7a
	ld [hl], a                                       ; $6850: $77
	ld [hl], d                                       ; $6851: $72
	nop                                              ; $6852: $00
	rst $38                                          ; $6853: $ff
	ld a, l                                          ; $6854: $7d
	cp [hl]                                          ; $6855: $be
	sbc [hl]                                         ; $6856: $9e
	ld [hl], b                                       ; $6857: $70
	ld a, c                                          ; $6858: $79
	dec b                                            ; $6859: $05
	sbc [hl]                                         ; $685a: $9e
	ld a, a                                          ; $685b: $7f
	ld a, d                                          ; $685c: $7a
	ret nc                                           ; $685d: $d0

	ld [hl], l                                       ; $685e: $75
	ld [hl], d                                       ; $685f: $72
	ld a, d                                          ; $6860: $7a
	or l                                             ; $6861: $b5
	ld a, [hl]                                       ; $6862: $7e
	xor l                                            ; $6863: $ad
	ld a, l                                          ; $6864: $7d
	jr nz, jr_052_68d6                               ; $6865: $20 $6f

	dec d                                            ; $6867: $15
	sub a                                            ; $6868: $97
	ld a, $5c                                        ; $6869: $3e $5c
	ret                                              ; $686b: $c9


	rst JumpTable                                          ; $686c: $c7
	adc [hl]                                         ; $686d: $8e
	ld c, $5e                                        ; $686e: $0e $5e
	db $dd                                           ; $6870: $dd
	ld [hl], c                                       ; $6871: $71
	adc $7f                                          ; $6872: $ce $7f
	ld h, e                                          ; $6874: $63
	adc [hl]                                         ; $6875: $8e
	inc a                                            ; $6876: $3c
	ld c, [hl]                                       ; $6877: $4e
	sbc [hl]                                         ; $6878: $9e
	inc a                                            ; $6879: $3c
	ld l, b                                          ; $687a: $68
	ldh a, [$c4]                                     ; $687b: $f0 $c4
	adc h                                            ; $687d: $8c
	nop                                              ; $687e: $00
	jr nz, jr_052_68e2                               ; $687f: $20 $61

	add a                                            ; $6881: $87
	add a                                            ; $6882: $87
	db $10                                           ; $6883: $10
	add hl, sp                                       ; $6884: $39
	ld h, b                                          ; $6885: $60
	pop bc                                           ; $6886: $c1
	db $fd                                           ; $6887: $fd
	sub c                                            ; $6888: $91
	inc bc                                           ; $6889: $03
	ld b, $1e                                        ; $688a: $06 $1e
	jr c, jr_052_688e                                ; $688c: $38 $00

jr_052_688e:
	pop hl                                           ; $688e: $e1
	rst SubAFromBC                                          ; $688f: $e7
	sbc $a6                                          ; $6890: $de $a6
	ld c, h                                          ; $6892: $4c
	adc c                                            ; $6893: $89
	inc bc                                           ; $6894: $03
	rlca                                             ; $6895: $07
	ld b, $7a                                        ; $6896: $06 $7a
	db $e4                                           ; $6898: $e4
	ld a, a                                          ; $6899: $7f
	or b                                             ; $689a: $b0
	ld a, [hl]                                       ; $689b: $7e
	rst SubAFromHL                                          ; $689c: $d7
	ld a, l                                          ; $689d: $7d
	rra                                              ; $689e: $1f
	sbc c                                            ; $689f: $99
	ld l, b                                          ; $68a0: $68

jr_052_68a1:
	or c                                             ; $68a1: $b1
	sub e                                            ; $68a2: $93
	rlca                                             ; $68a3: $07
	daa                                              ; $68a4: $27
	inc c                                            ; $68a5: $0c
	ld a, b                                          ; $68a6: $78
	cp a                                             ; $68a7: $bf
	sbc e                                            ; $68a8: $9b
	nop                                              ; $68a9: $00
	ld h, b                                          ; $68aa: $60
	ldh [$c0], a                                     ; $68ab: $e0 $c0
	ld [hl], l                                       ; $68ad: $75
	call $cf7e                                       ; $68ae: $cd $7e $cf
	ld a, e                                          ; $68b1: $7b
	ei                                               ; $68b2: $fb
	ld a, h                                          ; $68b3: $7c
	or [hl]                                          ; $68b4: $b6
	sbc d                                            ; $68b5: $9a
	add b                                            ; $68b6: $80
	add c                                            ; $68b7: $81
	inc hl                                           ; $68b8: $23
	db $e3                                           ; $68b9: $e3
	add $f9                                          ; $68ba: $c6 $f9
	sub [hl]                                         ; $68bc: $96
	ld b, $01                                        ; $68bd: $06 $01
	rlca                                             ; $68bf: $07
	ld c, a                                          ; $68c0: $4f
	call c, $3bbd                                    ; $68c1: $dc $bd $3b
	rlca                                             ; $68c4: $07
	jr nc, jr_052_6935                               ; $68c5: $30 $6e

	add hl, de                                       ; $68c7: $19
	ld a, e                                          ; $68c8: $7b
	ldh [$99], a                                     ; $68c9: $e0 $99
	nop                                              ; $68cb: $00
	ld de, $e771                                     ; $68cc: $11 $71 $e7
	adc $9c                                          ; $68cf: $ce $9c
	sbc $1e                                          ; $68d1: $de $1e
	db $dd                                           ; $68d3: $dd
	ld a, $9e                                        ; $68d4: $3e $9e

jr_052_68d6:
	ld [hl], $da                                     ; $68d6: $36 $da
	inc b                                            ; $68d8: $04
	ld [hl], c                                       ; $68d9: $71
	ld e, b                                          ; $68da: $58
	ld a, e                                          ; $68db: $7b
	ld a, a                                          ; $68dc: $7f
	ld h, c                                          ; $68dd: $61
	sub b                                            ; $68de: $90
	ld a, b                                          ; $68df: $78
	push hl                                          ; $68e0: $e5
	db $dd                                           ; $68e1: $dd

jr_052_68e2:
	rst $38                                          ; $68e2: $ff
	sbc [hl]                                         ; $68e3: $9e
	cp $65                                           ; $68e4: $fe $65
	inc [hl]                                         ; $68e6: $34
	ld a, e                                          ; $68e7: $7b
	ld d, b                                          ; $68e8: $50
	ld [hl], e                                       ; $68e9: $73
	ld c, a                                          ; $68ea: $4f
	sub a                                            ; $68eb: $97
	daa                                              ; $68ec: $27
	ld l, a                                          ; $68ed: $6f
	rst AddAOntoHL                                          ; $68ee: $ef
	rst SubAFromDE                                          ; $68ef: $df
	cp [hl]                                          ; $68f0: $be
	cp h                                             ; $68f1: $bc
	inc a                                            ; $68f2: $3c
	ld a, [hl]                                       ; $68f3: $7e
	ld [hl], a                                       ; $68f4: $77
	ld l, c                                          ; $68f5: $69
	adc a                                            ; $68f6: $8f
	ld c, $1e                                        ; $68f7: $0e $1e
	ld a, $30                                        ; $68f9: $3e $30
	cp a                                             ; $68fb: $bf
	pop hl                                           ; $68fc: $e1
	jp $311c                                         ; $68fd: $c3 $1c $31


	ld h, b                                          ; $6900: $60
	ret nz                                           ; $6901: $c0

	ret z                                            ; $6902: $c8

	ld b, b                                          ; $6903: $40
	ld h, b                                          ; $6904: $60
	adc b                                            ; $6905: $88
	jr jr_052_6982                                   ; $6906: $18 $7a

	xor h                                            ; $6908: $ac
	sbc l                                            ; $6909: $9d
	ld [$7bbe], sp                                   ; $690a: $08 $be $7b
	jp c, Jump_052_4576                              ; $690d: $da $76 $45

	ld a, h                                          ; $6910: $7c
	jp nz, $0398                                     ; $6911: $c2 $98 $03

	jr nc, @+$12                                     ; $6914: $30 $10

	ld c, $3d                                        ; $6916: $0e $3d
	add c                                            ; $6918: $81
	inc a                                            ; $6919: $3c
	ld a, d                                          ; $691a: $7a
	or h                                             ; $691b: $b4
	add b                                            ; $691c: $80
	ld c, $00                                        ; $691d: $0e $00
	nop                                              ; $691f: $00
	ld a, b                                          ; $6920: $78
	ld l, c                                          ; $6921: $69
	ret z                                            ; $6922: $c8

	ld [bc], a                                       ; $6923: $02
	inc c                                            ; $6924: $0c
	jr jr_052_6947                                   ; $6925: $18 $20

	and b                                            ; $6927: $a0
	add b                                            ; $6928: $80
	db $10                                           ; $6929: $10
	jr nc, @-$1e                                     ; $692a: $30 $e0

	nop                                              ; $692c: $00
	inc b                                            ; $692d: $04
	dec de                                           ; $692e: $1b
	inc de                                           ; $692f: $13
	daa                                              ; $6930: $27
	jr jr_052_6944                                   ; $6931: $18 $11

	ld [bc], a                                       ; $6933: $02
	ld [hl+], a                                      ; $6934: $22

jr_052_6935:
	jr c, jr_052_694d                                ; $6935: $38 $16

	ld [$e008], sp                                   ; $6937: $08 $08 $e0
	ldh [$4c], a                                     ; $693a: $e0 $4c
	sub b                                            ; $693c: $90
	inc e                                            ; $693d: $1c
	nop                                              ; $693e: $00
	add b                                            ; $693f: $80
	rst JumpTable                                          ; $6940: $c7
	rst JumpTable                                          ; $6941: $c7
	ldh [$80], a                                     ; $6942: $e0 $80

jr_052_6944:
	ld bc, $8378                                     ; $6944: $01 $78 $83

jr_052_6947:
	add e                                            ; $6947: $83
	inc bc                                           ; $6948: $03
	adc a                                            ; $6949: $8f
	ld e, $1c                                        ; $694a: $1e $1c
	ld a, e                                          ; $694c: $7b

jr_052_694d:
	db $d3                                           ; $694d: $d3
	rst SubAFromDE                                          ; $694e: $df
	ld a, b                                          ; $694f: $78
	sub [hl]                                         ; $6950: $96
	ld [hl], b                                       ; $6951: $70
	ld e, h                                          ; $6952: $5c
	ldh a, [$e0]                                     ; $6953: $f0 $e0
	ld b, e                                          ; $6955: $43
	rra                                              ; $6956: $1f
	sbc a                                            ; $6957: $9f
	rst GetHLinHL                                          ; $6958: $cf
	pop bc                                           ; $6959: $c1
	ld l, e                                          ; $695a: $6b
	ld c, c                                          ; $695b: $49
	sbc [hl]                                         ; $695c: $9e
	nop                                              ; $695d: $00
	ld e, l                                          ; $695e: $5d
	nop                                              ; $695f: $00
	call c, $9a66                                    ; $6960: $dc $66 $9a
	ld h, l                                          ; $6963: $65
	ld d, l                                          ; $6964: $55
	ld d, d                                          ; $6965: $52
	ld d, l                                          ; $6966: $55
	ld d, e                                          ; $6967: $53
	call c, $9466                                    ; $6968: $dc $66 $94
	ld d, e                                          ; $696b: $53
	ld d, l                                          ; $696c: $55
	ld [hl+], a                                      ; $696d: $22
	ld [hl+], a                                      ; $696e: $22
	dec h                                            ; $696f: $25
	ld h, [hl]                                       ; $6970: $66
	ld h, d                                          ; $6971: $62
	ld h, [hl]                                       ; $6972: $66
	ld h, [hl]                                       ; $6973: $66
	ld d, l                                          ; $6974: $55
	inc sp                                           ; $6975: $33
	ld a, e                                          ; $6976: $7b
	or $9e                                           ; $6977: $f6 $9e
	ld [hl+], a                                      ; $6979: $22
	ld a, e                                          ; $697a: $7b
	or $9b                                           ; $697b: $f6 $9b
	ld h, e                                          ; $697d: $63
	inc sp                                           ; $697e: $33
	ld d, h                                          ; $697f: $54
	ld d, d                                          ; $6980: $52
	ld [hl], a                                       ; $6981: $77

jr_052_6982:
	or $99                                           ; $6982: $f6 $99
	ld [hl+], a                                      ; $6984: $22
	ld d, l                                          ; $6985: $55
	ld d, e                                          ; $6986: $53
	dec [hl]                                         ; $6987: $35
	inc h                                            ; $6988: $24
	ld b, l                                          ; $6989: $45
	ld l, a                                          ; $698a: $6f
	or $9d                                           ; $698b: $f6 $9d
	dec h                                            ; $698d: $25
	dec [hl]                                         ; $698e: $35
	call c, $de22                                    ; $698f: $dc $22 $de
	ld d, l                                          ; $6992: $55
	ld a, a                                          ; $6993: $7f
	db $fc                                           ; $6994: $fc
	rst SubAFromDE                                          ; $6995: $df
	ld [hl+], a                                      ; $6996: $22
	sbc h                                            ; $6997: $9c
	ld b, d                                          ; $6998: $42
	dec h                                            ; $6999: $25
	inc [hl]                                         ; $699a: $34
	ld h, a                                          ; $699b: $67

Jump_052_699c:
	or $93                                           ; $699c: $f6 $93
	ld b, h                                          ; $699e: $44
	inc sp                                           ; $699f: $33
	dec h                                            ; $69a0: $25
	ld d, e                                          ; $69a1: $53
	ld d, l                                          ; $69a2: $55
	ld d, l                                          ; $69a3: $55
	ld b, h                                          ; $69a4: $44
	ld [hl+], a                                      ; $69a5: $22
	dec h                                            ; $69a6: $25
	inc sp                                           ; $69a7: $33
	ld b, h                                          ; $69a8: $44
	inc sp                                           ; $69a9: $33
	ld a, e                                          ; $69aa: $7b
	ret nc                                           ; $69ab: $d0

	sbc e                                            ; $69ac: $9b
	ld d, l                                          ; $69ad: $55
	ld b, d                                          ; $69ae: $42
	ld [hl+], a                                      ; $69af: $22
	ld d, e                                          ; $69b0: $53
	sbc $33                                          ; $69b1: $de $33
	ld a, a                                          ; $69b3: $7f
	or h                                             ; $69b4: $b4
	rst SubAFromDE                                          ; $69b5: $df
	inc sp                                           ; $69b6: $33
	sbc [hl]                                         ; $69b7: $9e
	ld [hl-], a                                      ; $69b8: $32
	ld [hl], e                                       ; $69b9: $73
	or $23                                           ; $69ba: $f6 $23
	adc d                                            ; $69bc: $8a
	pop bc                                           ; $69bd: $c1
	rst $38                                          ; $69be: $ff
	inc bc                                           ; $69bf: $03
	rst $38                                          ; $69c0: $ff
	inc bc                                           ; $69c1: $03
	rst $38                                          ; $69c2: $ff
	sbc $ff                                          ; $69c3: $de $ff
	rst SubAFromDE                                          ; $69c5: $df
	cp $9e                                           ; $69c6: $fe $9e
	db $fc                                           ; $69c8: $fc
	reti                                             ; $69c9: $d9


	rst $38                                          ; $69ca: $ff
	sub a                                            ; $69cb: $97
	di                                               ; $69cc: $f3
	rst SubAFromBC                                          ; $69cd: $e7
	rst GetHLinHL                                          ; $69ce: $cf
	sbc [hl]                                         ; $69cf: $9e
	inc e                                            ; $69d0: $1c
	add hl, sp                                       ; $69d1: $39
	ld [hl], e                                       ; $69d2: $73
	rst SubAFromBC                                          ; $69d3: $e7
	reti                                             ; $69d4: $d9


	rst $38                                          ; $69d5: $ff
	sub a                                            ; $69d6: $97
	rst FarCall                                          ; $69d7: $f7
	rst GetHLinHL                                          ; $69d8: $cf
	ccf                                              ; $69d9: $3f
	ld a, h                                          ; $69da: $7c
	pop af                                           ; $69db: $f1
	db $e3                                           ; $69dc: $e3
	rst GetHLinHL                                          ; $69dd: $cf
	inc e                                            ; $69de: $1c
	ret c                                            ; $69df: $d8

	rst $38                                          ; $69e0: $ff

Jump_052_69e1:
	sbc b                                            ; $69e1: $98
	rst SubAFromDE                                          ; $69e2: $df
	ccf                                              ; $69e3: $3f
	cp $f1                                           ; $69e4: $fe $f1
	rst JumpTable                                          ; $69e6: $c7
	rrca                                             ; $69e7: $0f
	rra                                              ; $69e8: $1f
	sub $ff                                          ; $69e9: $d6 $ff
	sbc [hl]                                         ; $69eb: $9e
	ld a, a                                          ; $69ec: $7f
	db $dd                                           ; $69ed: $dd
	rst $38                                          ; $69ee: $ff
	db $dd                                           ; $69ef: $dd
	db $fc                                           ; $69f0: $fc
	sbc e                                            ; $69f1: $9b
	cp $f6                                           ; $69f2: $fe $f6
	add $03                                          ; $69f4: $c6 $03
	sbc $ff                                          ; $69f6: $de $ff
	sbc d                                            ; $69f8: $9a
	jp $fff1                                         ; $69f9: $c3 $f1 $ff


	ld hl, sp-$20                                    ; $69fc: $f8 $e0
	ld sp, hl                                        ; $69fe: $f9
	ld [hl], e                                       ; $69ff: $73
	and c                                            ; $6a00: $a1
	sub h                                            ; $6a01: $94
	db $fc                                           ; $6a02: $fc
	inc c                                            ; $6a03: $0c
	inc c                                            ; $6a04: $0c
	ld h, b                                          ; $6a05: $60
	jr nc, jr_052_6a20                               ; $6a06: $30 $18

	ld d, $14                                        ; $6a08: $16 $14
	inc d                                            ; $6a0a: $14
	ld [$dd08], sp                                   ; $6a0b: $08 $08 $dd
	rst $38                                          ; $6a0e: $ff
	sbc e                                            ; $6a0f: $9b
	ccf                                              ; $6a10: $3f
	rra                                              ; $6a11: $1f
	rra                                              ; $6a12: $1f
	ccf                                              ; $6a13: $3f
	sbc $7f                                          ; $6a14: $de $7f
	ld a, a                                          ; $6a16: $7f
	ld sp, hl                                        ; $6a17: $f9
	rst SubAFromDE                                          ; $6a18: $df
	rrca                                             ; $6a19: $0f
	ld d, a                                          ; $6a1a: $57
	cp b                                             ; $6a1b: $b8
	inc bc                                           ; $6a1c: $03
	rst $38                                          ; $6a1d: $ff
	inc bc                                           ; $6a1e: $03
	rst $38                                          ; $6a1f: $ff

jr_052_6a20:
	adc $ff                                          ; $6a20: $ce $ff
	sub a                                            ; $6a22: $97
	ld [hl], a                                       ; $6a23: $77
	xor d                                            ; $6a24: $aa
	db $dd                                           ; $6a25: $dd
	xor d                                            ; $6a26: $aa
	ld d, l                                          ; $6a27: $55
	xor d                                            ; $6a28: $aa
	ld d, l                                          ; $6a29: $55
	ld a, [hl+]                                      ; $6a2a: $2a
	ld c, e                                          ; $6a2b: $4b
	ldh a, [$9e]                                     ; $6a2c: $f0 $9e
	xor d                                            ; $6a2e: $aa
	ld c, e                                          ; $6a2f: $4b
	ldh a, [$9e]                                     ; $6a30: $f0 $9e
	xor e                                            ; $6a32: $ab
	ld c, a                                          ; $6a33: $4f
	ldh a, [$9d]                                     ; $6a34: $f0 $9d
	ld e, l                                          ; $6a36: $5d
	cp $4b                                           ; $6a37: $fe $4b
	ldh [$73], a                                     ; $6a39: $e0 $73
	jr c, jr_052_6aa0                                ; $6a3b: $38 $63

	ldh a, [$9c]                                     ; $6a3d: $f0 $9c
	xor e                                            ; $6a3f: $ab
	ld d, l                                          ; $6a40: $55
	xor $d9                                          ; $6a41: $ee $d9
	rst $38                                          ; $6a43: $ff
	sub a                                            ; $6a44: $97
	ld hl, sp-$07                                    ; $6a45: $f8 $f9
	di                                               ; $6a47: $f3
	ldh [c], a                                       ; $6a48: $e2
	and $cc                                          ; $6a49: $e6 $cc
	adc b                                            ; $6a4b: $88
	sub c                                            ; $6a4c: $91
	reti                                             ; $6a4d: $d9


	rst $38                                          ; $6a4e: $ff
	sub a                                            ; $6a4f: $97
	adc $8c                                          ; $6a50: $ce $8c
	jr @+$12                                         ; $6a52: $18 $10

	ld hl, $8243                                     ; $6a54: $21 $43 $82
	inc b                                            ; $6a57: $04
	reti                                             ; $6a58: $d9


	rst $38                                          ; $6a59: $ff
	sub a                                            ; $6a5a: $97
	jr c, jr_052_6acd                                ; $6a5b: $38 $70

	ldh [$c1], a                                     ; $6a5d: $e0 $c1
	add e                                            ; $6a5f: $83
	inc b                                            ; $6a60: $04
	add hl, bc                                       ; $6a61: $09
	ld de, $ffd9                                     ; $6a62: $11 $d9 $ff
	ld a, a                                          ; $6a65: $7f
	rlca                                             ; $6a66: $07
	halt                                             ; $6a67: $76
	db $d3                                           ; $6a68: $d3
	sbc l                                            ; $6a69: $9d
	ld hl, sp-$10                                    ; $6a6a: $f8 $f0
	ld a, e                                          ; $6a6c: $7b
	db $fd                                           ; $6a6d: $fd
	sbc d                                            ; $6a6e: $9a
	ldh [$c3], a                                     ; $6a6f: $e0 $c3
	rst GetHLinHL                                          ; $6a71: $cf
	sbc a                                            ; $6a72: $9f
	cp a                                             ; $6a73: $bf
	sbc $ff                                          ; $6a74: $de $ff
	sbc c                                            ; $6a76: $99
	pop hl                                           ; $6a77: $e1
	nop                                              ; $6a78: $00
	nop                                              ; $6a79: $00
	jr nz, @+$42                                     ; $6a7a: $20 $40

	inc bc                                           ; $6a7c: $03
	ld l, d                                          ; $6a7d: $6a
	push af                                          ; $6a7e: $f5
	sbc [hl]                                         ; $6a7f: $9e
	ret nz                                           ; $6a80: $c0

	sbc $80                                          ; $6a81: $de $80
	sbc e                                            ; $6a83: $9b
	ret nz                                           ; $6a84: $c0

	ld [hl], c                                       ; $6a85: $71
	ccf                                              ; $6a86: $3f
	ld e, $fd                                        ; $6a87: $1e $fd
	ld a, a                                          ; $6a89: $7f
	rst FarCall                                          ; $6a8a: $f7
	ld a, [hl]                                       ; $6a8b: $7e
	or [hl]                                          ; $6a8c: $b6
	adc [hl]                                         ; $6a8d: $8e
	ld c, $11                                        ; $6a8e: $0e $11
	inc a                                            ; $6a90: $3c
	ld a, a                                          ; $6a91: $7f
	db $dd                                           ; $6a92: $dd
	cp l                                             ; $6a93: $bd
	ld l, h                                          ; $6a94: $6c
	xor h                                            ; $6a95: $ac
	ld c, $1f                                        ; $6a96: $0e $1f
	inc de                                           ; $6a98: $13
	jr nz, jr_052_6afb                               ; $6a99: $20 $60

	ret nz                                           ; $6a9b: $c0

	add b                                            ; $6a9c: $80
	nop                                              ; $6a9d: $00
	ccf                                              ; $6a9e: $3f
	ld a, d                                          ; $6a9f: $7a

jr_052_6aa0:
	jp nz, $cf9a                                     ; $6aa0: $c2 $9a $cf

	or a                                             ; $6aa3: $b7
	rst SubAFromDE                                          ; $6aa4: $df
	ld c, e                                          ; $6aa5: $4b
	ccf                                              ; $6aa6: $3f
	ld [hl], a                                       ; $6aa7: $77
	or h                                             ; $6aa8: $b4
	sbc c                                            ; $6aa9: $99
	rrca                                             ; $6aaa: $0f
	rlca                                             ; $6aab: $07
	rlca                                             ; $6aac: $07
	xor $55                                          ; $6aad: $ee $55
	cp e                                             ; $6aaf: $bb
	ld [hl], a                                       ; $6ab0: $77
	ld sp, $559e                                     ; $6ab1: $31 $9e $55
	reti                                             ; $6ab4: $d9


	rst $38                                          ; $6ab5: $ff
	inc bc                                           ; $6ab6: $03
	ldh a, [$03]                                     ; $6ab7: $f0 $03
	ldh a, [rVBK]                                    ; $6ab9: $f0 $4f
	ldh a, [$98]                                     ; $6abb: $f0 $98
	jr c, jr_052_6ac7                                ; $6abd: $38 $08

	add b                                            ; $6abf: $80
	ld b, b                                          ; $6ac0: $40
	add b                                            ; $6ac1: $80
	jr nz, jr_052_6b09                               ; $6ac2: $20 $45

	ld a, d                                          ; $6ac4: $7a
	ret nc                                           ; $6ac5: $d0

	sbc b                                            ; $6ac6: $98

jr_052_6ac7:
	ld a, a                                          ; $6ac7: $7f
	cp a                                             ; $6ac8: $bf
	ld a, a                                          ; $6ac9: $7f
	rst SubAFromDE                                          ; $6aca: $df
	cp d                                             ; $6acb: $ba
	ld d, l                                          ; $6acc: $55

jr_052_6acd:
	ld bc, $9bfe                                     ; $6acd: $01 $fe $9b
	ld b, c                                          ; $6ad0: $41
	and d                                            ; $6ad1: $a2
	ld d, b                                          ; $6ad2: $50
	xor c                                            ; $6ad3: $a9
	db $dd                                           ; $6ad4: $dd
	rst $38                                          ; $6ad5: $ff
	sub e                                            ; $6ad6: $93
	cp [hl]                                          ; $6ad7: $be
	ld e, l                                          ; $6ad8: $5d
	xor a                                            ; $6ad9: $af
	ld e, a                                          ; $6ada: $5f
	ld d, [hl]                                       ; $6adb: $56
	xor e                                            ; $6adc: $ab
	ld d, $49                                        ; $6add: $16 $49
	ld b, e                                          ; $6adf: $43
	or [hl]                                          ; $6ae0: $b6
	ld e, d                                          ; $6ae1: $5a
	ld [hl], l                                       ; $6ae2: $75
	halt                                             ; $6ae3: $76
	add hl, de                                       ; $6ae4: $19
	sub e                                            ; $6ae5: $93
	cp h                                             ; $6ae6: $bc
	ld c, c                                          ; $6ae7: $49
	and a                                            ; $6ae8: $a7
	adc a                                            ; $6ae9: $8f
	cp a                                             ; $6aea: $bf
	ld d, a                                          ; $6aeb: $57
	ld l, e                                          ; $6aec: $6b
	sbc l                                            ; $6aed: $9d
	ld a, a                                          ; $6aee: $7f
	rst $38                                          ; $6aef: $ff
	ld [$6954], a                                    ; $6af0: $ea $54 $69
	add sp, -$64                                     ; $6af3: $e8 $9c
	rst AddAOntoHL                                          ; $6af5: $ef
	ld bc, $71fb                                     ; $6af6: $01 $fb $71
	db $dd                                           ; $6af9: $dd
	sbc [hl]                                         ; $6afa: $9e

jr_052_6afb:
	cp e                                             ; $6afb: $bb
	ld d, l                                          ; $6afc: $55
	sub e                                            ; $6afd: $93
	sbc e                                            ; $6afe: $9b
	db $fd                                           ; $6aff: $fd
	cp $fc                                           ; $6b00: $fe $fc
	ld hl, sp-$27                                    ; $6b02: $f8 $d9
	rst $38                                          ; $6b04: $ff
	sub a                                            ; $6b05: $97
	ld [hl+], a                                      ; $6b06: $22
	ld b, h                                          ; $6b07: $44
	ld c, b                                          ; $6b08: $48

jr_052_6b09:
	sub b                                            ; $6b09: $90
	db $10                                           ; $6b0a: $10
	ld hl, $8442                                     ; $6b0b: $21 $42 $84
	reti                                             ; $6b0e: $d9


	rst $38                                          ; $6b0f: $ff
	sub a                                            ; $6b10: $97
	ld [$2010], sp                                   ; $6b11: $08 $10 $20
	ld b, c                                          ; $6b14: $41
	add d                                            ; $6b15: $82
	inc b                                            ; $6b16: $04
	ld [$d910], sp                                   ; $6b17: $08 $10 $d9
	rst $38                                          ; $6b1a: $ff
	sub a                                            ; $6b1b: $97
	inc hl                                           ; $6b1c: $23
	ld b, e                                          ; $6b1d: $43
	add [hl]                                         ; $6b1e: $86
	inc c                                            ; $6b1f: $0c
	jr jr_052_6b33                                   ; $6b20: $18 $11

	inc hl                                           ; $6b22: $23
	ld b, a                                          ; $6b23: $47
	reti                                             ; $6b24: $d9


	rst $38                                          ; $6b25: $ff
	add b                                            ; $6b26: $80
	and $cd                                          ; $6b27: $e6 $cd
	sbc $9a                                          ; $6b29: $de $9a
	or h                                             ; $6b2b: $b4
	cp c                                             ; $6b2c: $b9
	ld a, [hl+]                                      ; $6b2d: $2a
	scf                                              ; $6b2e: $37
	ld sp, hl                                        ; $6b2f: $f9
	di                                               ; $6b30: $f3
	db $e3                                           ; $6b31: $e3
	rst SubAFromBC                                          ; $6b32: $e7

jr_052_6b33:
	rst GetHLinHL                                          ; $6b33: $cf
	adc $dc                                          ; $6b34: $ce $dc
	ret c                                            ; $6b36: $d8

	adc e                                            ; $6b37: $8b
	ld d, $2c                                        ; $6b38: $16 $2c
	ld e, c                                          ; $6b3a: $59
	or d                                             ; $6b3b: $b2
	ld h, h                                          ; $6b3c: $64
	ret z                                            ; $6b3d: $c8

	sub c                                            ; $6b3e: $91
	ldh a, [$e3]                                     ; $6b3f: $f0 $e3
	rst JumpTable                                          ; $6b41: $c7
	adc [hl]                                         ; $6b42: $8e
	inc e                                            ; $6b43: $1c
	jr c, jr_052_6bb7                                ; $6b44: $38 $71

	add h                                            ; $6b46: $84
	db $e3                                           ; $6b47: $e3
	ld l, l                                          ; $6b48: $6d
	and a                                            ; $6b49: $a7
	ld d, a                                          ; $6b4a: $57
	ld h, a                                          ; $6b4b: $67
	adc d                                            ; $6b4c: $8a
	ld b, [hl]                                       ; $6b4d: $46
	sbc d                                            ; $6b4e: $9a
	ld a, [hl+]                                      ; $6b4f: $2a
	sub d                                            ; $6b50: $92
	db $10                                           ; $6b51: $10
	jr nz, @+$22                                     ; $6b52: $20 $20

	ld h, h                                          ; $6b54: $64
	call z, $9ccc                                    ; $6b55: $cc $cc $9c
	and d                                            ; $6b58: $a2
	ld [hl+], a                                      ; $6b59: $22
	ld bc, $6505                                     ; $6b5a: $01 $05 $65
	ld l, h                                          ; $6b5d: $6c
	xor h                                            ; $6b5e: $ac
	ld b, h                                          ; $6b5f: $44
	inc b                                            ; $6b60: $04
	inc b                                            ; $6b61: $04
	sbc $26                                          ; $6b62: $de $26
	sub d                                            ; $6b64: $92
	daa                                              ; $6b65: $27
	ld h, a                                          ; $6b66: $67

jr_052_6b67:
	rst AddAOntoHL                                          ; $6b67: $ef
	cpl                                              ; $6b68: $2f
	ld c, l                                          ; $6b69: $4d
	dec bc                                           ; $6b6a: $0b
	dec bc                                           ; $6b6b: $0b
	dec hl                                           ; $6b6c: $2b
	jr nz, @+$2a                                     ; $6b6d: $20 $28

	ld l, c                                          ; $6b6f: $69
	ld b, e                                          ; $6b70: $43
	inc hl                                           ; $6b71: $23
	call c, $9621                                    ; $6b72: $dc $21 $96
	jr nz, jr_052_6b67                               ; $6b75: $20 $f0

	db $f4                                           ; $6b77: $f4
	xor [hl]                                         ; $6b78: $ae
	ld d, l                                          ; $6b79: $55
	xor a                                            ; $6b7a: $af
	xor c                                            ; $6b7b: $a9
	call nc, Call_052_77e8                           ; $6b7c: $d4 $e8 $77
	dec b                                            ; $6b7f: $05
	sbc [hl]                                         ; $6b80: $9e
	ret nc                                           ; $6b81: $d0

	ld a, d                                          ; $6b82: $7a
	ld a, [bc]                                       ; $6b83: $0a
	rst $38                                          ; $6b84: $ff
	add b                                            ; $6b85: $80
	ld e, a                                          ; $6b86: $5f
	rst $38                                          ; $6b87: $ff
	cp d                                             ; $6b88: $ba
	ld d, l                                          ; $6b89: $55
	ld a, [hl+]                                      ; $6b8a: $2a
	dec d                                            ; $6b8b: $15
	rst $38                                          ; $6b8c: $ff
	rst $38                                          ; $6b8d: $ff
	and c                                            ; $6b8e: $a1
	nop                                              ; $6b8f: $00
	ld b, l                                          ; $6b90: $45
	xor d                                            ; $6b91: $aa
	push de                                          ; $6b92: $d5
	ld [$571e], a                                    ; $6b93: $ea $1e $57
	jr c, @-$01                                      ; $6b96: $38 $fd

	jp z, $8325                                      ; $6b98: $ca $25 $83

	nop                                              ; $6b9b: $00
	rst $38                                          ; $6b9c: $ff
	rst AddAOntoHL                                          ; $6b9d: $ef
	rst JumpTable                                          ; $6b9e: $c7
	ld [bc], a                                       ; $6b9f: $02
	dec [hl]                                         ; $6ba0: $35
	jp c, $ff7c                                      ; $6ba1: $da $7c $ff

	nop                                              ; $6ba4: $00
	add b                                            ; $6ba5: $80
	ld b, c                                          ; $6ba6: $41
	jp nc, $933d                                     ; $6ba7: $d2 $3d $93

	ld d, e                                          ; $6baa: $53
	rst JumpTable                                          ; $6bab: $c7
	call c, $feff                                    ; $6bac: $dc $ff $fe
	db $fd                                           ; $6baf: $fd
	ld a, [$a07c]                                    ; $6bb0: $fa $7c $a0
	nop                                              ; $6bb3: $00
	inc bc                                           ; $6bb4: $03
	nop                                              ; $6bb5: $00
	ld d, b                                          ; $6bb6: $50

jr_052_6bb7:
	xor d                                            ; $6bb7: $aa
	ld d, [hl]                                       ; $6bb8: $56
	cp $dc                                           ; $6bb9: $fe $dc
	adc a                                            ; $6bbb: $8f
	ld d, e                                          ; $6bbc: $53
	rst $38                                          ; $6bbd: $ff
	rst $38                                          ; $6bbe: $ff
	ld a, l                                          ; $6bbf: $7d
	cp c                                             ; $6bc0: $b9
	nop                                              ; $6bc1: $00
	jr nz, jr_052_6c34                               ; $6bc2: $20 $70

	db $fc                                           ; $6bc4: $fc
	sub l                                            ; $6bc5: $95
	nop                                              ; $6bc6: $00
	inc c                                            ; $6bc7: $0c
	ccf                                              ; $6bc8: $3f
	ld l, a                                          ; $6bc9: $6f
	ld b, a                                          ; $6bca: $47
	inc sp                                           ; $6bcb: $33
	ld a, a                                          ; $6bcc: $7f
	di                                               ; $6bcd: $f3
	rst $38                                          ; $6bce: $ff
	di                                               ; $6bcf: $f3
	ld a, d                                          ; $6bd0: $7a
	ld d, e                                          ; $6bd1: $53
	rst $38                                          ; $6bd2: $ff
	sub h                                            ; $6bd3: $94
	inc c                                            ; $6bd4: $0c
	ld d, l                                          ; $6bd5: $55
	dec hl                                           ; $6bd6: $2b
	nop                                              ; $6bd7: $00
	nop                                              ; $6bd8: $00
	ld l, l                                          ; $6bd9: $6d
	cp a                                             ; $6bda: $bf
	ld d, a                                          ; $6bdb: $57
	xor a                                            ; $6bdc: $af
	xor d                                            ; $6bdd: $aa
	call nc, $ffdb                                   ; $6bde: $d4 $db $ff
	add b                                            ; $6be1: $80
	ld d, $4b                                        ; $6be2: $16 $4b
	or l                                             ; $6be4: $b5
	ld a, [bc]                                       ; $6be5: $0a
	rra                                              ; $6be6: $1f
	or [hl]                                          ; $6be7: $b6
	ret                                              ; $6be8: $c9


	or b                                             ; $6be9: $b0
	rst $38                                          ; $6bea: $ff
	cp a                                             ; $6beb: $bf
	ld e, a                                          ; $6bec: $5f
	push af                                          ; $6bed: $f5
	ldh [$c9], a                                     ; $6bee: $e0 $c9
	or [hl]                                          ; $6bf0: $b6
	rst $38                                          ; $6bf1: $ff
	add e                                            ; $6bf2: $83
	jp nz, $fea7                                     ; $6bf3: $c2 $a7 $fe

	res 2, l                                         ; $6bf6: $cb $95
	jr z, jr_052_6c4a                                ; $6bf8: $28 $50

	cp $bd                                           ; $6bfa: $fe $bd
	ld e, b                                          ; $6bfc: $58
	ld bc, $6b34                                     ; $6bfd: $01 $34 $6b
	rst SubAFromHL                                          ; $6c00: $d7
	sub l                                            ; $6c01: $95
	xor a                                            ; $6c02: $af
	jp hl                                            ; $6c03: $e9


	sub h                                            ; $6c04: $94
	ld c, b                                          ; $6c05: $48
	add d                                            ; $6c06: $82
	ld e, c                                          ; $6c07: $59
	adc d                                            ; $6c08: $8a
	db $dd                                           ; $6c09: $dd
	ccf                                              ; $6c0a: $3f
	rra                                              ; $6c0b: $1f
	ld a, d                                          ; $6c0c: $7a
	sub c                                            ; $6c0d: $91
	ld [hl], l                                       ; $6c0e: $75
	db $e3                                           ; $6c0f: $e3
	ld a, c                                          ; $6c10: $79
	sub h                                            ; $6c11: $94
	sbc d                                            ; $6c12: $9a
	xor e                                            ; $6c13: $ab
	ld e, a                                          ; $6c14: $5f
	xor a                                            ; $6c15: $af
	rst SubAFromDE                                          ; $6c16: $df
	xor a                                            ; $6c17: $af
	reti                                             ; $6c18: $d9


	rst $38                                          ; $6c19: $ff
	sbc c                                            ; $6c1a: $99
	ld sp, hl                                        ; $6c1b: $f9
	ldh a, [c]                                       ; $6c1c: $f2
	db $e4                                           ; $6c1d: $e4
	ret z                                            ; $6c1e: $c8

	sub b                                            ; $6c1f: $90
	and c                                            ; $6c20: $a1
	ld b, d                                          ; $6c21: $42
	ret nc                                           ; $6c22: $d0

	sbc [hl]                                         ; $6c23: $9e
	ld d, b                                          ; $6c24: $50
	jp c, $9eff                                      ; $6c25: $da $ff $9e

	cp a                                             ; $6c28: $bf
	ld [hl], e                                       ; $6c29: $73
	ldh a, [c]                                       ; $6c2a: $f2
	ld a, [hl]                                       ; $6c2b: $7e
	ret nc                                           ; $6c2c: $d0

	sbc [hl]                                         ; $6c2d: $9e
	ld b, [hl]                                       ; $6c2e: $46
	reti                                             ; $6c2f: $d9


	rst $38                                          ; $6c30: $ff
	sub a                                            ; $6c31: $97
	adc a                                            ; $6c32: $8f
	rra                                              ; $6c33: $1f

jr_052_6c34:
	ccf                                              ; $6c34: $3f
	ld a, l                                          ; $6c35: $7d
	rst FarCall                                          ; $6c36: $f7
	pop af                                           ; $6c37: $f1
	ld l, c                                          ; $6c38: $69
	and $71                                          ; $6c39: $e6 $71
	ld d, h                                          ; $6c3b: $54
	sbc b                                            ; $6c3c: $98
	pop hl                                           ; $6c3d: $e1
	rst SubAFromBC                                          ; $6c3e: $e7
	rst AddAOntoHL                                          ; $6c3f: $ef
	daa                                              ; $6c40: $27
	ld l, $44                                        ; $6c41: $2e $44
	ld a, b                                          ; $6c43: $78
	ld a, e                                          ; $6c44: $7b
	db $ec                                           ; $6c45: $ec
	sbc h                                            ; $6c46: $9c
	ld a, a                                          ; $6c47: $7f
	ld sp, hl                                        ; $6c48: $f9
	di                                               ; $6c49: $f3

jr_052_6c4a:
	sbc $ff                                          ; $6c4a: $de $ff
	ld a, l                                          ; $6c4c: $7d
	ld a, l                                          ; $6c4d: $7d
	add b                                            ; $6c4e: $80
	ret nz                                           ; $6c4f: $c0

	ld a, [hl+]                                      ; $6c50: $2a
	ld l, [hl]                                       ; $6c51: $6e
	or h                                             ; $6c52: $b4
	ld hl, sp-$0d                                    ; $6c53: $f8 $f3
	rst $38                                          ; $6c55: $ff
	cp $ff                                           ; $6c56: $fe $ff
	rst JumpTable                                          ; $6c58: $c7
	sbc a                                            ; $6c59: $9f
	ld a, a                                          ; $6c5a: $7f
	rst GetHLinHL                                          ; $6c5b: $cf
	rra                                              ; $6c5c: $1f
	dec a                                            ; $6c5d: $3d
	ld b, e                                          ; $6c5e: $43
	rlca                                             ; $6c5f: $07
	sub l                                            ; $6c60: $95
	and d                                            ; $6c61: $a2
	ld c, l                                          ; $6c62: $4d
	sbc e                                            ; $6c63: $9b
	adc a                                            ; $6c64: $8f
	rra                                              ; $6c65: $1f
	ld a, [hl]                                       ; $6c66: $7e
	adc [hl]                                         ; $6c67: $8e
	jr c, @+$7b                                      ; $6c68: $38 $79

	di                                               ; $6c6a: $f3
	rst SubAFromBC                                          ; $6c6b: $e7
	db $fd                                           ; $6c6c: $fd
	pop af                                           ; $6c6d: $f1
	add b                                            ; $6c6e: $80
	db $e3                                           ; $6c6f: $e3
	di                                               ; $6c70: $f3
	ld d, l                                          ; $6c71: $55
	call nc, $aaa8                                   ; $6c72: $d4 $a8 $aa
	ld de, $6d25                                     ; $6c75: $11 $25 $6d
	jp c, $eeee                                      ; $6c78: $da $ee $ee

	sbc $dc                                          ; $6c7b: $de $dc
	db $fc                                           ; $6c7d: $fc
	ld sp, hl                                        ; $6c7e: $f9
	di                                               ; $6c7f: $f3
	rst SubAFromBC                                          ; $6c80: $e7
	ld hl, $f161                                     ; $6c81: $21 $61 $f1
	ld l, b                                          ; $6c84: $68
	ldh a, [c]                                       ; $6c85: $f2
	ld d, e                                          ; $6c86: $53
	push af                                          ; $6c87: $f5
	rst JumpTable                                          ; $6c88: $c7
	ld l, b                                          ; $6c89: $68
	ld c, b                                          ; $6c8a: $48
	ld c, b                                          ; $6c8b: $48
	reti                                             ; $6c8c: $d9


	sbc c                                            ; $6c8d: $99
	sub h                                            ; $6c8e: $94
	or c                                             ; $6c8f: $b1
	inc hl                                           ; $6c90: $23
	ld h, e                                          ; $6c91: $63
	push de                                          ; $6c92: $d5
	ld [$fafd], a                                    ; $6c93: $ea $fd $fa
	push af                                          ; $6c96: $f5
	ei                                               ; $6c97: $fb
	jp nc, $dbbe                                     ; $6c98: $d2 $be $db

	rst $38                                          ; $6c9b: $ff
	sub h                                            ; $6c9c: $94
	db $fd                                           ; $6c9d: $fd
	pop bc                                           ; $6c9e: $c1
	ld c, d                                          ; $6c9f: $4a
	ldh [rSVBK], a                                   ; $6ca0: $e0 $70
	ldh a, [$fe]                                     ; $6ca2: $f0 $fe
	db $fd                                           ; $6ca4: $fd
	db $fd                                           ; $6ca5: $fd
	cp [hl]                                          ; $6ca6: $be
	push af                                          ; $6ca7: $f5
	ld [hl], a                                       ; $6ca8: $77
	ld d, h                                          ; $6ca9: $54
	ld a, d                                          ; $6caa: $7a
	or b                                             ; $6cab: $b0
	add a                                            ; $6cac: $87
	jr z, jr_052_6d03                                ; $6cad: $28 $54

	add hl, hl                                       ; $6caf: $29
	halt                                             ; $6cb0: $76
	db $fd                                           ; $6cb1: $fd
	rst $38                                          ; $6cb2: $ff
	inc sp                                           ; $6cb3: $33
	add b                                            ; $6cb4: $80
	rst SubAFromHL                                          ; $6cb5: $d7
	xor e                                            ; $6cb6: $ab
	sub $89                                          ; $6cb7: $d6 $89
	ld [bc], a                                       ; $6cb9: $02
	nop                                              ; $6cba: $00
	call z, $00ff                                    ; $6cbb: $cc $ff $00
	ld bc, $0702                                     ; $6cbe: $01 $02 $07
	ld sp, $c060                                     ; $6cc1: $31 $60 $c0
	sub a                                            ; $6cc4: $97
	ld a, e                                          ; $6cc5: $7b
	call nc, $f89e                                   ; $6cc6: $d4 $9e $f8
	halt                                             ; $6cc9: $76
	sbc $98                                          ; $6cca: $de $98
	xor c                                            ; $6ccc: $a9
	ld d, h                                          ; $6ccd: $54
	xor b                                            ; $6cce: $a8
	db $ec                                           ; $6ccf: $ec
	rst $38                                          ; $6cd0: $ff
	db $e3                                           ; $6cd1: $e3
	scf                                              ; $6cd2: $37
	ld a, e                                          ; $6cd3: $7b
	ld a, [hl]                                       ; $6cd4: $7e
	sbc l                                            ; $6cd5: $9d
	ld a, a                                          ; $6cd6: $7f
	inc de                                           ; $6cd7: $13
	db $fd                                           ; $6cd8: $fd
	sub [hl]                                         ; $6cd9: $96
	pop hl                                           ; $6cda: $e1
	ret nz                                           ; $6cdb: $c0

	nop                                              ; $6cdc: $00
	ret nz                                           ; $6cdd: $c0

	pop hl                                           ; $6cde: $e1
	pop af                                           ; $6cdf: $f1
	pop bc                                           ; $6ce0: $c1
	add e                                            ; $6ce1: $83
	ld e, $79                                        ; $6ce2: $1e $79
	rla                                              ; $6ce4: $17
	sub h                                            ; $6ce5: $94
	ld e, $0e                                        ; $6ce6: $1e $0e
	ld a, $7c                                        ; $6ce8: $3e $7c
	ld d, l                                          ; $6cea: $55
	nop                                              ; $6ceb: $00
	nop                                              ; $6cec: $00
	inc d                                            ; $6ced: $14
	cp $ff                                           ; $6cee: $fe $ff
	or $60                                           ; $6cf0: $f6 $60
	ld h, b                                          ; $6cf2: $60
	ld a, a                                          ; $6cf3: $7f
	or h                                             ; $6cf4: $b4
	sbc b                                            ; $6cf5: $98
	daa                                              ; $6cf6: $27
	rlca                                             ; $6cf7: $07
	rrca                                             ; $6cf8: $0f
	adc a                                            ; $6cf9: $8f
	rst $38                                          ; $6cfa: $ff
	cp a                                             ; $6cfb: $bf
	cp $68                                           ; $6cfc: $fe $68
	ld e, [hl]                                       ; $6cfe: $5e
	sbc b                                            ; $6cff: $98
	ldh a, [$f8]                                     ; $6d00: $f0 $f8
	rst FarCall                                          ; $6d02: $f7

jr_052_6d03:
	rst SubAFromDE                                          ; $6d03: $df
	xor c                                            ; $6d04: $a9
	call nc, Call_052_7aaa                           ; $6d05: $d4 $aa $7a
	add b                                            ; $6d08: $80
	ld l, b                                          ; $6d09: $68
	and b                                            ; $6d0a: $a0
	sbc c                                            ; $6d0b: $99
	sub a                                            ; $6d0c: $97
	db $eb                                           ; $6d0d: $eb
	or l                                             ; $6d0e: $b5
	ld a, [bc]                                       ; $6d0f: $0a
	dec d                                            ; $6d10: $15
	dec hl                                           ; $6d11: $2b
	ld h, c                                          ; $6d12: $61
	ld b, b                                          ; $6d13: $40
	ld a, c                                          ; $6d14: $79
	sub l                                            ; $6d15: $95
	sbc d                                            ; $6d16: $9a
	ldh a, [$e1]                                     ; $6d17: $f0 $e1
	jp nz, $0984                                     ; $6d19: $c2 $84 $09

	ld h, a                                          ; $6d1c: $67
	pop af                                           ; $6d1d: $f1
	ld a, [hl]                                       ; $6d1e: $7e
	db $e4                                           ; $6d1f: $e4
	sub a                                            ; $6d20: $97
	ld h, $cd                                        ; $6d21: $26 $cd
	ld a, [de]                                       ; $6d23: $1a
	inc [hl]                                         ; $6d24: $34
	jp hl                                            ; $6d25: $e9


	db $d3                                           ; $6d26: $d3
	rst $38                                          ; $6d27: $ff
	cp $7b                                           ; $6d28: $fe $7b
	inc sp                                           ; $6d2a: $33
	add c                                            ; $6d2b: $81
	rst GetHLinHL                                          ; $6d2c: $cf
	ld e, $3c                                        ; $6d2d: $1e $3c
	and d                                            ; $6d2f: $a2
	ld b, l                                          ; $6d30: $45
	adc d                                            ; $6d31: $8a
	inc d                                            ; $6d32: $14
	ld l, c                                          ; $6d33: $69
	db $d3                                           ; $6d34: $d3
	and a                                            ; $6d35: $a7
	ld c, d                                          ; $6d36: $4a
	ld a, l                                          ; $6d37: $7d
	ei                                               ; $6d38: $fb
	rst FarCall                                          ; $6d39: $f7
	rst AddAOntoHL                                          ; $6d3a: $ef
	sbc [hl]                                         ; $6d3b: $9e
	inc a                                            ; $6d3c: $3c
	ld a, b                                          ; $6d3d: $78
	pop af                                           ; $6d3e: $f1
	adc [hl]                                         ; $6d3f: $8e
	dec e                                            ; $6d40: $1d
	ld a, [hl+]                                      ; $6d41: $2a
	jp nc, Jump_052_45a4                             ; $6d42: $d2 $a4 $45

	cp l                                             ; $6d45: $bd
	ld sp, hl                                        ; $6d46: $f9
	rst FarCall                                          ; $6d47: $f7
	rst AddAOntoHL                                          ; $6d48: $ef
	rst SubAFromDE                                          ; $6d49: $df
	ld a, b                                          ; $6d4a: $78
	ld d, l                                          ; $6d4b: $55
	ld a, h                                          ; $6d4c: $7c
	ld e, a                                          ; $6d4d: $5f
	sbc d                                            ; $6d4e: $9a
	jp z, $f2fe                                      ; $6d4f: $ca $fe $f2

	rst SubAFromDE                                          ; $6d52: $df
	rst $38                                          ; $6d53: $ff
	sbc $3f                                          ; $6d54: $de $3f
	sub a                                            ; $6d56: $97
	rst AddAOntoHL                                          ; $6d57: $ef
	set 1, a                                         ; $6d58: $cb $cf
	push hl                                          ; $6d5a: $e5
	pop hl                                           ; $6d5b: $e1
	ldh a, [$f8]                                     ; $6d5c: $f0 $f8
	ldh [$71], a                                     ; $6d5e: $e0 $71
	ccf                                              ; $6d60: $3f
	ld a, e                                          ; $6d61: $7b
	add h                                            ; $6d62: $84
	sbc $80                                          ; $6d63: $de $80
	db $fc                                           ; $6d65: $fc
	ld a, e                                          ; $6d66: $7b
	ld a, [de]                                       ; $6d67: $1a
	adc l                                            ; $6d68: $8d
	rst SubAFromDE                                          ; $6d69: $df
	cpl                                              ; $6d6a: $2f
	inc sp                                           ; $6d6b: $33
	inc de                                           ; $6d6c: $13
	ld de, $0008                                     ; $6d6d: $11 $08 $00
	rlca                                             ; $6d70: $07
	ccf                                              ; $6d71: $3f
	add hl, de                                       ; $6d72: $19
	dec bc                                           ; $6d73: $0b
	inc bc                                           ; $6d74: $03
	rlca                                             ; $6d75: $07
	push af                                          ; $6d76: $f5
	rst $38                                          ; $6d77: $ff
	rst SubAFromDE                                          ; $6d78: $df
	rst $38                                          ; $6d79: $ff
	ld a, a                                          ; $6d7a: $7f
	ld a, b                                          ; $6d7b: $78
	ld h, e                                          ; $6d7c: $63
	sub c                                            ; $6d7d: $91
	rra                                              ; $6d7e: $1f
	rrca                                             ; $6d7f: $0f
	pop hl                                           ; $6d80: $e1
	di                                               ; $6d81: $f3
	ld h, b                                          ; $6d82: $60
	ld b, c                                          ; $6d83: $41
	add e                                            ; $6d84: $83
	rlca                                             ; $6d85: $07
	push de                                          ; $6d86: $d5
	xor d                                            ; $6d87: $aa
	ld sp, $98e6                                     ; $6d88: $31 $e6 $98
	pop hl                                           ; $6d8b: $e1
	ld a, c                                          ; $6d8c: $79
	and e                                            ; $6d8d: $a3
	sbc [hl]                                         ; $6d8e: $9e
	db $dd                                           ; $6d8f: $dd
	db $db                                           ; $6d90: $db
	rst $38                                          ; $6d91: $ff
	sbc e                                            ; $6d92: $9b
	ld l, e                                          ; $6d93: $6b
	or a                                             ; $6d94: $b7
	ld l, a                                          ; $6d95: $6f
	rra                                              ; $6d96: $1f
	ld [hl], h                                       ; $6d97: $74
	rst SubAFromBC                                          ; $6d98: $e7
	sbc h                                            ; $6d99: $9c
	rst JumpTable                                          ; $6d9a: $c7
	rst GetHLinHL                                          ; $6d9b: $cf
	sbc a                                            ; $6d9c: $9f
	call c, $9cff                                    ; $6d9d: $dc $ff $9c
	ld [hl], e                                       ; $6da0: $73
	rst SubAFromBC                                          ; $6da1: $e7
	xor a                                            ; $6da2: $af
	ld a, b                                          ; $6da3: $78
	ldh a, [$9a]                                     ; $6da4: $f0 $9a
	rst SubAFromBC                                          ; $6da6: $e7
	add $8f                                          ; $6da7: $c6 $8f
	sbc a                                            ; $6da9: $9f
	rst SubAFromDE                                          ; $6daa: $df
	ld a, d                                          ; $6dab: $7a
	db $fc                                           ; $6dac: $fc
	rst SubAFromDE                                          ; $6dad: $df
	rst $38                                          ; $6dae: $ff
	sub a                                            ; $6daf: $97
	rst SubAFromHL                                          ; $6db0: $d7
	xor [hl]                                         ; $6db1: $ae
	push bc                                          ; $6db2: $c5
	jp nz, Jump_052_58f4                             ; $6db3: $c2 $f4 $58

	ld h, $c1                                        ; $6db6: $26 $c1
	sbc $ff                                          ; $6db8: $de $ff
	add b                                            ; $6dba: $80
	dec a                                            ; $6dbb: $3d
	dec bc                                           ; $6dbc: $0b
	add a                                            ; $6dbd: $87
	add c                                            ; $6dbe: $81
	nop                                              ; $6dbf: $00
	ld b, c                                          ; $6dc0: $41
	add h                                            ; $6dc1: $84
	ld c, e                                          ; $6dc2: $4b
	sub h                                            ; $6dc3: $94
	ld a, [bc]                                       ; $6dc4: $0a
	rlca                                             ; $6dc5: $07
	ld de, $fe00                                     ; $6dc6: $11 $00 $fe
	ei                                               ; $6dc9: $fb
	db $f4                                           ; $6dca: $f4
	ld [$f8f4], a                                    ; $6dcb: $ea $f4 $f8
	ldh [$c0], a                                     ; $6dce: $e0 $c0
	cp [hl]                                          ; $6dd0: $be
	db $fc                                           ; $6dd1: $fc
	ld hl, sp+$60                                    ; $6dd2: $f8 $60
	pop bc                                           ; $6dd4: $c1
	adc d                                            ; $6dd5: $8a
	and l                                            ; $6dd6: $a5
	ld e, d                                          ; $6dd7: $5a
	ld bc, $9e03                                     ; $6dd8: $01 $03 $9e
	rlca                                             ; $6ddb: $07
	ld a, d                                          ; $6ddc: $7a
	ld a, [hl-]                                      ; $6ddd: $3a
	ld a, a                                          ; $6dde: $7f
	sub [hl]                                         ; $6ddf: $96
	add b                                            ; $6de0: $80
	ei                                               ; $6de1: $fb
	ld h, [hl]                                       ; $6de2: $66
	ld b, b                                          ; $6de3: $40
	nop                                              ; $6de4: $00
	add hl, bc                                       ; $6de5: $09
	sub e                                            ; $6de6: $93
	ld c, a                                          ; $6de7: $4f
	and e                                            ; $6de8: $a3
	inc b                                            ; $6de9: $04
	sbc c                                            ; $6dea: $99
	cp a                                             ; $6deb: $bf
	rst $38                                          ; $6dec: $ff
	or $ec                                           ; $6ded: $f6 $ec
	ldh a, [$fc]                                     ; $6def: $f0 $fc
	nop                                              ; $6df1: $00
	inc b                                            ; $6df2: $04
	inc h                                            ; $6df3: $24
	ld d, b                                          ; $6df4: $50
	jr nz, @+$26                                     ; $6df5: $20 $24

	cp $be                                           ; $6df7: $fe $be
	rst $38                                          ; $6df9: $ff
	ei                                               ; $6dfa: $fb
	db $db                                           ; $6dfb: $db
	xor a                                            ; $6dfc: $af
	rst SubAFromDE                                          ; $6dfd: $df
	db $db                                           ; $6dfe: $db
	ld bc, $419e                                     ; $6dff: $01 $9e $41
	ld a, b                                          ; $6e02: $78
	dec [hl]                                         ; $6e03: $35
	sbc [hl]                                         ; $6e04: $9e
	xor [hl]                                         ; $6e05: $ae
	ld [hl], e                                       ; $6e06: $73
	and a                                            ; $6e07: $a7
	jp c, Jump_052_7fff                              ; $6e08: $da $ff $7f

	add h                                            ; $6e0b: $84
	ld a, l                                          ; $6e0c: $7d
	or h                                             ; $6e0d: $b4
	sbc h                                            ; $6e0e: $9c
	ld d, a                                          ; $6e0f: $57
	xor e                                            ; $6e10: $ab
	db $dd                                           ; $6e11: $dd
	ld h, e                                          ; $6e12: $63
	xor $7d                                          ; $6e13: $ee $7d
	and a                                            ; $6e15: $a7
	sbc d                                            ; $6e16: $9a
	db $eb                                           ; $6e17: $eb
	rst SubAFromHL                                          ; $6e18: $d7
	xor l                                            ; $6e19: $ad
	ld a, [$77fd]                                    ; $6e1a: $fa $fd $77
	ld l, l                                          ; $6e1d: $6d
	ld h, [hl]                                       ; $6e1e: $66
	ret nc                                           ; $6e1f: $d0

	ld a, d                                          ; $6e20: $7a
	rst GetHLinHL                                          ; $6e21: $cf
	sbc l                                            ; $6e22: $9d
	ldh [c], a                                       ; $6e23: $e2
	jp nz, $ffd9                                     ; $6e24: $c2 $d9 $ff

	sub h                                            ; $6e27: $94
	inc de                                           ; $6e28: $13
	daa                                              ; $6e29: $27
	ld c, [hl]                                       ; $6e2a: $4e
	ld c, l                                          ; $6e2b: $4d
	sbc d                                            ; $6e2c: $9a
	inc [hl]                                         ; $6e2d: $34
	add hl, hl                                       ; $6e2e: $29
	ld d, d                                          ; $6e2f: $52
	db $fc                                           ; $6e30: $fc
	ld hl, sp-$0f                                    ; $6e31: $f8 $f1
	ld a, d                                          ; $6e33: $7a
	ret nc                                           ; $6e34: $d0

	sub l                                            ; $6e35: $95
	sbc $bc                                          ; $6e36: $de $bc
	and [hl]                                         ; $6e38: $a6
	ld c, c                                          ; $6e39: $49
	sub d                                            ; $6e3a: $92
	inc h                                            ; $6e3b: $24
	ld b, l                                          ; $6e3c: $45
	xor c                                            ; $6e3d: $a9
	ld d, d                                          ; $6e3e: $52
	and h                                            ; $6e3f: $a4
	ld a, c                                          ; $6e40: $79
	pop hl                                           ; $6e41: $e1
	add b                                            ; $6e42: $80
	rst GetHLinHL                                          ; $6e43: $cf
	sbc [hl]                                         ; $6e44: $9e
	ld e, $3c                                        ; $6e45: $1e $3c
	ld a, b                                          ; $6e47: $78
	sub l                                            ; $6e48: $95
	ld a, [hl+]                                      ; $6e49: $2a
	ld d, h                                          ; $6e4a: $54
	sbc c                                            ; $6e4b: $99
	xor c                                            ; $6e4c: $a9
	ld [de], a                                       ; $6e4d: $12

Call_052_6e4e:
	dec h                                            ; $6e4e: $25
	ld c, c                                          ; $6e4f: $49
	db $e3                                           ; $6e50: $e3
	rst JumpTable                                          ; $6e51: $c7
	adc a                                            ; $6e52: $8f
	ld c, $1e                                        ; $6e53: $0e $1e
	dec a                                            ; $6e55: $3d
	ld a, c                                          ; $6e56: $79
	di                                               ; $6e57: $f3
	ld e, d                                          ; $6e58: $5a
	ld a, [$dbbb]                                    ; $6e59: $fa $bb $db
	ld d, e                                          ; $6e5c: $53
	sub h                                            ; $6e5d: $94
	sub h                                            ; $6e5e: $94
	ld e, h                                          ; $6e5f: $5c
	cp a                                             ; $6e60: $bf
	ccf                                              ; $6e61: $3f
	rst SubAFromDE                                          ; $6e62: $df
	ld a, [hl]                                       ; $6e63: $7e
	sbc $fe                                          ; $6e64: $de $fe
	sbc [hl]                                         ; $6e66: $9e
	or [hl]                                          ; $6e67: $b6
	db $dd                                           ; $6e68: $dd
	ld a, a                                          ; $6e69: $7f
	db $dd                                           ; $6e6a: $dd
	rst $38                                          ; $6e6b: $ff
	db $dd                                           ; $6e6c: $dd
	ret nz                                           ; $6e6d: $c0

	db $dd                                           ; $6e6e: $dd
	add b                                            ; $6e6f: $80
	ld h, a                                          ; $6e70: $67
	sbc c                                            ; $6e71: $99
	ld sp, hl                                        ; $6e72: $f9
	sbc l                                            ; $6e73: $9d
	ld [$fb06], sp                                   ; $6e74: $08 $06 $fb
	sbc l                                            ; $6e77: $9d
	ld b, $04                                        ; $6e78: $06 $04
	ei                                               ; $6e7a: $fb
	ld a, l                                          ; $6e7b: $7d
	rlca                                             ; $6e7c: $07
	rst SubAFromDE                                          ; $6e7d: $df
	rrca                                             ; $6e7e: $0f
	ld a, [hl]                                       ; $6e7f: $7e
	rra                                              ; $6e80: $1f
	sbc l                                            ; $6e81: $9d
	rrca                                             ; $6e82: $0f
	cpl                                              ; $6e83: $2f
	ld a, e                                          ; $6e84: $7b
	db $fc                                           ; $6e85: $fc
	ld a, e                                          ; $6e86: $7b
	rst FarCall                                          ; $6e87: $f7
	ld a, a                                          ; $6e88: $7f
	inc e                                            ; $6e89: $1c
	ld a, d                                          ; $6e8a: $7a
	rrca                                             ; $6e8b: $0f
	ld a, l                                          ; $6e8c: $7d
	sbc l                                            ; $6e8d: $9d
	ld a, l                                          ; $6e8e: $7d
	ld e, b                                          ; $6e8f: $58
	sbc [hl]                                         ; $6e90: $9e
	ldh a, [$d8]                                     ; $6e91: $f0 $d8
	rst $38                                          ; $6e93: $ff
	sbc b                                            ; $6e94: $98
	ld [hl], a                                       ; $6e95: $77
	and e                                            ; $6e96: $a3
	ld b, $94                                        ; $6e97: $06 $94
	cpl                                              ; $6e99: $2f
	ld d, [hl]                                       ; $6e9a: $56
	dec l                                            ; $6e9b: $2d
	ld [hl], a                                       ; $6e9c: $77
	ld d, a                                          ; $6e9d: $57
	add e                                            ; $6e9e: $83
	add sp, -$30                                     ; $6e9f: $e8 $d0
	xor c                                            ; $6ea1: $a9
	jp nc, $d8e0                                     ; $6ea2: $d2 $e0 $d8

	ld c, $08                                        ; $6ea5: $0e $08
	add b                                            ; $6ea7: $80
	ret nz                                           ; $6ea8: $c0

	ld h, [hl]                                       ; $6ea9: $66
	cp $9f                                           ; $6eaa: $fe $9f
	rlca                                             ; $6eac: $07
	ld bc, $0001                                     ; $6ead: $01 $01 $00
	nop                                              ; $6eb0: $00
	add b                                            ; $6eb1: $80
	nop                                              ; $6eb2: $00
	xor b                                            ; $6eb3: $a8
	call nz, Call_052_5cfe                           ; $6eb4: $c4 $fe $5c
	dec bc                                           ; $6eb7: $0b
	dec d                                            ; $6eb8: $15
	ld h, d                                          ; $6eb9: $62
	ld b, c                                          ; $6eba: $41
	cp $92                                           ; $6ebb: $fe $92
	add b                                            ; $6ebd: $80
	inc d                                            ; $6ebe: $14
	ld a, [hl+]                                      ; $6ebf: $2a
	dec e                                            ; $6ec0: $1d
	ld a, $80                                        ; $6ec1: $3e $80
	rrca                                             ; $6ec3: $0f
	rrca                                             ; $6ec4: $0f
	ld e, $f0                                        ; $6ec5: $1e $f0
	rst $38                                          ; $6ec7: $ff
	xor d                                            ; $6ec8: $aa
	ld d, a                                          ; $6ec9: $57
	cp $7b                                           ; $6eca: $fe $7b
	ldh [$7d], a                                     ; $6ecc: $e0 $7d
	sub e                                            ; $6ece: $93
	sub e                                            ; $6ecf: $93
	ld [hl], a                                       ; $6ed0: $77
	ldh [c], a                                       ; $6ed1: $e2
	inc e                                            ; $6ed2: $1c
	ld h, d                                          ; $6ed3: $62

jr_052_6ed4:
	ld b, c                                          ; $6ed4: $41
	ld bc, $6007                                     ; $6ed5: $01 $07 $60
	rrca                                             ; $6ed8: $0f
	rra                                              ; $6ed9: $1f
	db $e3                                           ; $6eda: $e3
	add c                                            ; $6edb: $81
	db $fd                                           ; $6edc: $fd
	sub d                                            ; $6edd: $92
	call nc, Call_052_40f8                           ; $6ede: $d4 $f8 $40
	sub b                                            ; $6ee1: $90
	xor e                                            ; $6ee2: $ab
	jp $0000                                        ; $6ee3: $c3 $00 $00


	ei                                               ; $6ee6: $fb
	rst $38                                          ; $6ee7: $ff
	rst $38                                          ; $6ee8: $ff
	ld l, a                                          ; $6ee9: $6f
	ld b, h                                          ; $6eea: $44
	ld [hl], a                                       ; $6eeb: $77
	ld a, b                                          ; $6eec: $78
	rst SubAFromDE                                          ; $6eed: $df
	ld b, $9a                                        ; $6eee: $06 $9a
	inc e                                            ; $6ef0: $1c
	jr nc, @-$0c                                     ; $6ef1: $30 $f2

	ld [hl], b                                       ; $6ef3: $70
	jr nc, jr_052_6ed4                               ; $6ef4: $30 $de

	ld sp, hl                                        ; $6ef6: $f9
	sbc b                                            ; $6ef7: $98
	db $e3                                           ; $6ef8: $e3
	rst GetHLinHL                                          ; $6ef9: $cf
	dec c                                            ; $6efa: $0d
	rrca                                             ; $6efb: $0f
	rrca                                             ; $6efc: $0f
	rst $38                                          ; $6efd: $ff
	rst SubAFromHL                                          ; $6efe: $d7
	ld a, b                                          ; $6eff: $78
	ld a, a                                          ; $6f00: $7f
	sbc h                                            ; $6f01: $9c
	rst FarCall                                          ; $6f02: $f7
	db $ed                                           ; $6f03: $ed
	or a                                             ; $6f04: $b7
	reti                                             ; $6f05: $d9


	rst $38                                          ; $6f06: $ff
	sbc [hl]                                         ; $6f07: $9e
	rst FarCall                                          ; $6f08: $f7
	ld a, e                                          ; $6f09: $7b
	rst SubAFromHL                                          ; $6f0a: $d7
	ld a, [hl]                                       ; $6f0b: $7e

jr_052_6f0c:
	ld c, e                                          ; $6f0c: $4b
	ld a, [hl]                                       ; $6f0d: $7e
	ld d, h                                          ; $6f0e: $54
	sub $ff                                          ; $6f0f: $d6 $ff
	rst SubAFromDE                                          ; $6f11: $df
	cp $df                                           ; $6f12: $fe $df
	db $fc                                           ; $6f14: $fc
	sbc [hl]                                         ; $6f15: $9e
	ld hl, sp-$27                                    ; $6f16: $f8 $d9
	rst $38                                          ; $6f18: $ff
	ld a, l                                          ; $6f19: $7d
	sub [hl]                                         ; $6f1a: $96
	sbc e                                            ; $6f1b: $9b
	add hl, bc                                       ; $6f1c: $09
	ld [de], a                                       ; $6f1d: $12
	ld hl, $7842                                     ; $6f1e: $21 $42 $78
	ld h, b                                          ; $6f21: $60
	rst SubAFromDE                                          ; $6f22: $df
	cp $7f                                           ; $6f23: $fe $7f
	ld b, [hl]                                       ; $6f25: $46
	sbc $ff                                          ; $6f26: $de $ff
	sub h                                            ; $6f28: $94
	and l                                            ; $6f29: $a5
	ld c, d                                          ; $6f2a: $4a
	sbc l                                            ; $6f2b: $9d
	sbc d                                            ; $6f2c: $9a
	inc [hl]                                         ; $6f2d: $34
	ld l, c                                          ; $6f2e: $69
	ld d, d                                          ; $6f2f: $52
	and l                                            ; $6f30: $a5
	ld a, b                                          ; $6f31: $78
	pop af                                           ; $6f32: $f1
	db $e3                                           ; $6f33: $e3
	ld a, d                                          ; $6f34: $7a
	rst GetHLinHL                                          ; $6f35: $cf
	sub h                                            ; $6f36: $94
	cp h                                             ; $6f37: $bc
	ld a, b                                          ; $6f38: $78
	ld c, b                                          ; $6f39: $48
	sub c                                            ; $6f3a: $91
	ld [hl+], a                                      ; $6f3b: $22
	ld b, h                                          ; $6f3c: $44
	adc c                                            ; $6f3d: $89
	ld d, d                                          ; $6f3e: $52
	and h                                            ; $6f3f: $a4
	ld c, b                                          ; $6f40: $48
	pop af                                           ; $6f41: $f1
	ld a, d                                          ; $6f42: $7a
	rst GetHLinHL                                          ; $6f43: $cf
	ld a, d                                          ; $6f44: $7a
	pop bc                                           ; $6f45: $c1
	adc l                                            ; $6f46: $8d
	pop af                                           ; $6f47: $f1
	sub e                                            ; $6f48: $93
	ld h, $45                                        ; $6f49: $26 $45
	adc e                                            ; $6f4b: $8b
	rla                                              ; $6f4c: $17
	scf                                              ; $6f4d: $37
	ld a, a                                          ; $6f4e: $7f
	rst $38                                          ; $6f4f: $ff
	db $e3                                           ; $6f50: $e3
	rst JumpTable                                          ; $6f51: $c7
	adc [hl]                                         ; $6f52: $8e
	inc e                                            ; $6f53: $1c
	jr c, @+$7a                                      ; $6f54: $38 $78

	ret z                                            ; $6f56: $c8

	db $e4                                           ; $6f57: $e4
	call c, $d8de                                    ; $6f58: $dc $de $d8

jr_052_6f5b:
	db $dd                                           ; $6f5b: $dd
	jp c, $36dd                                      ; $6f5c: $da $dd $36

	db $dd                                           ; $6f5f: $dd
	inc [hl]                                         ; $6f60: $34
	sub a                                            ; $6f61: $97
	ei                                               ; $6f62: $fb
	pop af                                           ; $6f63: $f1
	ldh [$c1], a                                     ; $6f64: $e0 $c1
	jp $8985                                         ; $6f66: $c3 $85 $89


	sbc b                                            ; $6f69: $98
	sbc $80                                          ; $6f6a: $de $80
	sub d                                            ; $6f6c: $92
	add c                                            ; $6f6d: $81
	add e                                            ; $6f6e: $83
	add [hl]                                         ; $6f6f: $86
	adc [hl]                                         ; $6f70: $8e
	sub [hl]                                         ; $6f71: $96
	cp $fe                                           ; $6f72: $fe $fe
	ld a, h                                          ; $6f74: $7c
	inc a                                            ; $6f75: $3c
	adc h                                            ; $6f76: $8c
	ld h, b                                          ; $6f77: $60
	ld a, b                                          ; $6f78: $78
	ld a, [hl]                                       ; $6f79: $7e
	ld [hl], a                                       ; $6f7a: $77
	jr nz, jr_052_6f0c                               ; $6f7b: $20 $8f

	ret nz                                           ; $6f7d: $c0

	ldh [$f0], a                                     ; $6f7e: $e0 $f0
	db $fc                                           ; $6f80: $fc
	inc b                                            ; $6f81: $04
	ld b, $03                                        ; $6f82: $06 $03
	rlca                                             ; $6f84: $07
	rlca                                             ; $6f85: $07
	rrca                                             ; $6f86: $0f
	rra                                              ; $6f87: $1f
	ld a, a                                          ; $6f88: $7f
	inc b                                            ; $6f89: $04
	inc b                                            ; $6f8a: $04
	ld [bc], a                                       ; $6f8b: $02
	inc bc                                           ; $6f8c: $03
	ld a, e                                          ; $6f8d: $7b
	ld hl, sp-$6a                                    ; $6f8e: $f8 $96
	ccf                                              ; $6f90: $3f
	ld l, a                                          ; $6f91: $6f
	push de                                          ; $6f92: $d5
	xor b                                            ; $6f93: $a8
	ld b, d                                          ; $6f94: $42
	sub l                                            ; $6f95: $95
	jp z, $e9f4                                      ; $6f96: $ca $f4 $e9

	ld a, d                                          ; $6f99: $7a
	adc e                                            ; $6f9a: $8b
	add d                                            ; $6f9b: $82
	db $fd                                           ; $6f9c: $fd
	ld [$ebf5], a                                    ; $6f9d: $ea $f5 $eb
	rst FarCall                                          ; $6fa0: $f7
	ldh [c], a                                       ; $6fa1: $e2
	add [hl]                                         ; $6fa2: $86
	cpl                                              ; $6fa3: $2f
	db $fd                                           ; $6fa4: $fd
	ld a, b                                          ; $6fa5: $78
	ldh a, [$71]                                     ; $6fa6: $f0 $71
	ld [hl], d                                       ; $6fa8: $72
	db $fd                                           ; $6fa9: $fd
	ld sp, hl                                        ; $6faa: $f9
	ret nc                                           ; $6fab: $d0

	ld [bc], a                                       ; $6fac: $02
	add a                                            ; $6fad: $87
	rrca                                             ; $6fae: $0f
	adc a                                            ; $6faf: $8f
	adc a                                            ; $6fb0: $8f
	nop                                              ; $6fb1: $00
	nop                                              ; $6fb2: $00
	inc bc                                           ; $6fb3: $03
	rst SubAFromHL                                          ; $6fb4: $d7
	xor a                                            ; $6fb5: $af
	cp $7d                                           ; $6fb6: $fe $7d
	ld a, [$1266]                                    ; $6fb8: $fa $66 $12
	sub [hl]                                         ; $6fbb: $96
	ld [hl], e                                       ; $6fbc: $73
	ld bc, $a850                                     ; $6fbd: $01 $50 $a8
	add h                                            ; $6fc0: $84
	jr c, jr_052_6f5b                                ; $6fc1: $38 $98

	nop                                              ; $6fc3: $00
	adc h                                            ; $6fc4: $8c
	ld [hl], l                                       ; $6fc5: $75
	xor $7c                                          ; $6fc6: $ee $7c
	add h                                            ; $6fc8: $84
	ld a, [hl]                                       ; $6fc9: $7e
	ret nz                                           ; $6fca: $c0

	add [hl]                                         ; $6fcb: $86
	ret nc                                           ; $6fcc: $d0

	ldh [rSCX], a                                    ; $6fcd: $e0 $43
	inc b                                            ; $6fcf: $04
	ret z                                            ; $6fd0: $c8

	add hl, hl                                       ; $6fd1: $29
	rra                                              ; $6fd2: $1f
	ld d, a                                          ; $6fd3: $57
	cpl                                              ; $6fd4: $2f
	rra                                              ; $6fd5: $1f
	cp h                                             ; $6fd6: $bc
	ld hl, sp+$30                                    ; $6fd7: $f8 $30
	stop                                             ; $6fd9: $10 $00
	xor h                                            ; $6fdb: $ac
	ld e, b                                          ; $6fdc: $58
	jr nc, @-$1e                                     ; $6fdd: $30 $e0

	nop                                              ; $6fdf: $00
	ld [$1c08], sp                                   ; $6fe0: $08 $08 $1c
	ld d, b                                          ; $6fe3: $50
	and b                                            ; $6fe4: $a0
	ld a, e                                          ; $6fe5: $7b
	db $e3                                           ; $6fe6: $e3

Jump_052_6fe7:
	cp $97                                           ; $6fe7: $fe $97
	ldh [$60], a                                     ; $6fe9: $e0 $60
	jr nz, @+$03                                     ; $6feb: $20 $01

	ld b, $0f                                        ; $6fed: $06 $0f
	ld de, $fdfc                                     ; $6fef: $11 $fc $fd
	ld a, d                                          ; $6ff2: $7a
	xor a                                            ; $6ff3: $af
	add e                                            ; $6ff4: $83
	nop                                              ; $6ff5: $00
	dec h                                            ; $6ff6: $25
	rla                                              ; $6ff7: $17
	ld d, e                                          ; $6ff8: $53
	ld l, d                                          ; $6ff9: $6a
	add h                                            ; $6ffa: $84
	ld c, b                                          ; $6ffb: $48
	db $10                                           ; $6ffc: $10
	inc hl                                           ; $6ffd: $23
	nop                                              ; $6ffe: $00
	jr nz, jr_052_7025                               ; $6fff: $20 $24

	sub l                                            ; $7001: $95
	ld a, e                                          ; $7002: $7b
	or a                                             ; $7003: $b7
	ld l, a                                          ; $7004: $6f
	nop                                              ; $7005: $00
	add sp, -$20                                     ; $7006: $e8 $e0
	ldh [rAUD4POLY], a                               ; $7008: $e0 $22
	nop                                              ; $700a: $00
	nop                                              ; $700b: $00
	inc c                                            ; $700c: $0c
	ld d, c                                          ; $700d: $51
	rla                                              ; $700e: $17
	rra                                              ; $700f: $1f
	rra                                              ; $7010: $1f
	ld a, c                                          ; $7011: $79
	ld c, $9c                                        ; $7012: $0e $9c
	di                                               ; $7014: $f3
	xor [hl]                                         ; $7015: $ae
	rst $38                                          ; $7016: $ff
	ld a, e                                          ; $7017: $7b
	ld a, [$a361]                                    ; $7018: $fa $61 $a3
	ld [hl], d                                       ; $701b: $72
	cp a                                             ; $701c: $bf
	sbc c                                            ; $701d: $99
	db $eb                                           ; $701e: $eb
	push de                                          ; $701f: $d5
	ld [$ead5], a                                    ; $7020: $ea $d5 $ea
	push af                                          ; $7023: $f5
	reti                                             ; $7024: $d9


jr_052_7025:
	rst $38                                          ; $7025: $ff
	sbc d                                            ; $7026: $9a
	ld hl, sp-$07                                    ; $7027: $f8 $f9
	pop af                                           ; $7029: $f1
	ldh a, [c]                                       ; $702a: $f2
	ldh a, [c]                                       ; $702b: $f2
	sbc $e4                                          ; $702c: $de $e4
	reti                                             ; $702e: $d9


	rst $38                                          ; $702f: $ff
	sub a                                            ; $7030: $97
	adc b                                            ; $7031: $88
	add hl, bc                                       ; $7032: $09
	db $10                                           ; $7033: $10
	ld de, $2221                                     ; $7034: $11 $21 $22
	ld [hl+], a                                      ; $7037: $22
	ld b, h                                          ; $7038: $44
	ld h, l                                          ; $7039: $65
	ld c, h                                          ; $703a: $4c
	add b                                            ; $703b: $80
	jp z, $9a4d                                      ; $703c: $ca $4d $9a

	dec [hl]                                         ; $703f: $35
	dec hl                                           ; $7040: $2b
	ld d, [hl]                                       ; $7041: $56
	ld e, l                                          ; $7042: $5d
	dec hl                                           ; $7043: $2b
	ld [hl], c                                       ; $7044: $71
	di                                               ; $7045: $f3
	rst SubAFromBC                                          ; $7046: $e7
	adc $dc                                          ; $7047: $ce $dc

jr_052_7049:
	cp c                                             ; $7049: $b9
	or e                                             ; $704a: $b3
	or $a1                                           ; $704b: $f6 $a1
	ld c, e                                          ; $704d: $4b
	sub a                                            ; $704e: $97
	ld e, h                                          ; $704f: $5c
	ld h, b                                          ; $7050: $60
	and b                                            ; $7051: $a0
	ld b, b                                          ; $7052: $40
	add b                                            ; $7053: $80
	jp $0c86                                         ; $7054: $c3 $86 $0c


	jr c, jr_052_7049                                ; $7057: $38 $f0

	ret nz                                           ; $7059: $c0

	add b                                            ; $705a: $80
	ld a, b                                          ; $705b: $78
	add b                                            ; $705c: $80
	sub h                                            ; $705d: $94
	rst FarCall                                          ; $705e: $f7
	dec de                                           ; $705f: $1b
	rlca                                             ; $7060: $07
	inc bc                                           ; $7061: $03
	ld bc, $f200                                     ; $7062: $01 $00 $f2
	add hl, de                                       ; $7065: $19
	inc c                                            ; $7066: $0c
	ld b, $02                                        ; $7067: $06 $02
	ld a, e                                          ; $7069: $7b
	ld l, a                                          ; $706a: $6f
	rst SubAFromDE                                          ; $706b: $df
	jp c, $d884                                      ; $706c: $da $84 $d8

	call c, $fdbc                                    ; $706f: $dc $bc $fd
	push af                                          ; $7072: $f5
	db $ed                                           ; $7073: $ed
	inc [hl]                                         ; $7074: $34
	inc [hl]                                         ; $7075: $34
	or [hl]                                          ; $7076: $b6
	ld [hl], d                                       ; $7077: $72
	ld [hl], d                                       ; $7078: $72
	ld [hl-], a                                      ; $7079: $32
	sbc d                                            ; $707a: $9a

Call_052_707b:
	ld e, d                                          ; $707b: $5a
	cp d                                             ; $707c: $ba
	ld a, [$e868]                                    ; $707d: $fa $68 $e8
	ld l, c                                          ; $7080: $69
	ld [hl], l                                       ; $7081: $75
	ld [hl], l                                       ; $7082: $75
	ld [hl], c                                       ; $7083: $71
	or h                                             ; $7084: $b4
	db $f4                                           ; $7085: $f4
	db $f4                                           ; $7086: $f4
	ld [hl], h                                       ; $7087: $74
	ld [hl], h                                       ; $7088: $74
	sbc $69                                          ; $7089: $de $69
	ld a, e                                          ; $708b: $7b
	inc c                                            ; $708c: $0c
	ld [hl], a                                       ; $708d: $77
	add hl, bc                                       ; $708e: $09
	ld e, h                                          ; $708f: $5c
	xor $98                                          ; $7090: $ee $98
	ccf                                              ; $7092: $3f
	halt                                             ; $7093: $76
	push af                                          ; $7094: $f5
	ld h, h                                          ; $7095: $64
	db $10                                           ; $7096: $10
	inc bc                                           ; $7097: $03
	rra                                              ; $7098: $1f
	db $dd                                           ; $7099: $dd
	rst $38                                          ; $709a: $ff
	sbc d                                            ; $709b: $9a
	ei                                               ; $709c: $fb
	rst AddAOntoHL                                          ; $709d: $ef
	db $fc                                           ; $709e: $fc
	ldh [$f6], a                                     ; $709f: $e0 $f6
	ld a, c                                          ; $70a1: $79
	ld hl, sp-$65                                    ; $70a2: $f8 $9b
	jp nc, $87a9                                     ; $70a4: $d2 $a9 $87

	rst GetHLinHL                                          ; $70a7: $cf
	ld l, [hl]                                       ; $70a8: $6e
	pop hl                                           ; $70a9: $e1
	sub h                                            ; $70aa: $94
	ld a, b                                          ; $70ab: $78
	jr nc, @-$49                                     ; $70ac: $30 $b5

	add b                                            ; $70ae: $80
	ld b, e                                          ; $70af: $43
	add b                                            ; $70b0: $80
	nop                                              ; $70b1: $00
	inc d                                            ; $70b2: $14
	ld a, [hl+]                                      ; $70b3: $2a
	sbc h                                            ; $70b4: $9c
	rst GetHLinHL                                          ; $70b5: $cf
	ld a, c                                          ; $70b6: $79
	ld [hl], a                                       ; $70b7: $77
	ld a, h                                          ; $70b8: $7c
	push de                                          ; $70b9: $d5
	add l                                            ; $70ba: $85
	push de                                          ; $70bb: $d5
	ld l, e                                          ; $70bc: $6b
	cp b                                             ; $70bd: $b8
	ld a, h                                          ; $70be: $7c
	ld [hl], h                                       ; $70bf: $74
	add a                                            ; $70c0: $87
	ld bc, $7031                                     ; $70c1: $01 $31 $70
	cp h                                             ; $70c4: $bc
	db $fc                                           ; $70c5: $fc
	ld hl, sp-$48                                    ; $70c6: $f8 $b8
	ld hl, sp-$02                                    ; $70c8: $f8 $fe
	ret nz                                           ; $70ca: $c0

	add b                                            ; $70cb: $80
	ret nz                                           ; $70cc: $c0

	nop                                              ; $70cd: $00
	ld bc, $d8e1                                     ; $70ce: $01 $e1 $d8

jr_052_70d1:
	inc b                                            ; $70d1: $04
	ld [$5080], sp                                   ; $70d2: $08 $80 $50
	cp $96                                           ; $70d5: $fe $96
	jr nz, jr_052_70d1                               ; $70d7: $20 $f8

	ldh a, [rSVBK]                                   ; $70d9: $f0 $70
	jr nz, @-$05                                     ; $70db: $20 $f9

	or b                                             ; $70dd: $b0
	ld [hl], c                                       ; $70de: $71
	xor b                                            ; $70df: $a8
	ld [hl], a                                       ; $70e0: $77
	db $f4                                           ; $70e1: $f4
	ld sp, hl                                        ; $70e2: $f9
	add d                                            ; $70e3: $82
	dec a                                            ; $70e4: $3d
	di                                               ; $70e5: $f3
	add c                                            ; $70e6: $81
	ret nz                                           ; $70e7: $c0

	ld l, h                                          ; $70e8: $6c
	ld c, $1f                                        ; $70e9: $0e $1f
	ld a, b                                          ; $70eb: $78
	nop                                              ; $70ec: $00
	inc c                                            ; $70ed: $0c
	ld a, [hl]                                       ; $70ee: $7e
	ccf                                              ; $70ef: $3f
	inc de                                           ; $70f0: $13
	stop                                             ; $70f1: $10 $00
	nop                                              ; $70f3: $00
	inc e                                            ; $70f4: $1c
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	ld [bc], a                                       ; $70f7: $02
	sub c                                            ; $70f8: $91
	ld [$000c], sp                                   ; $70f9: $08 $0c $00
	db $e3                                           ; $70fc: $e3
	rst $38                                          ; $70fd: $ff
	rst $38                                          ; $70fe: $ff
	pop hl                                           ; $70ff: $e1
	ld h, b                                          ; $7100: $60
	ld a, d                                          ; $7101: $7a
	and b                                            ; $7102: $a0
	cp $9a                                           ; $7103: $fe $9a
	ld a, [bc]                                       ; $7105: $0a
	push af                                          ; $7106: $f5
	dec hl                                           ; $7107: $2b
	inc d                                            ; $7108: $14
	dec hl                                           ; $7109: $2b
	ld a, d                                          ; $710a: $7a
	inc sp                                           ; $710b: $33
	sbc [hl]                                         ; $710c: $9e
	or b                                             ; $710d: $b0
	db $fd                                           ; $710e: $fd
	adc a                                            ; $710f: $8f
	db $db                                           ; $7110: $db
	ld [hl], l                                       ; $7111: $75
	ld b, d                                          ; $7112: $42
	ld bc, $0e79                                     ; $7113: $01 $79 $0e
	add hl, bc                                       ; $7116: $09
	cp l                                             ; $7117: $bd
	inc h                                            ; $7118: $24
	ld a, [bc]                                       ; $7119: $0a
	dec a                                            ; $711a: $3d
	ld a, $06                                        ; $711b: $3e $06
	ld bc, $0206                                     ; $711d: $01 $06 $02
	db $dd                                           ; $7120: $dd
	rst $38                                          ; $7121: $ff
	sbc [hl]                                         ; $7122: $9e
	ld a, [$387a]                                    ; $7123: $fa $7a $38
	reti                                             ; $7126: $d9


	rst $38                                          ; $7127: $ff
	ld a, c                                          ; $7128: $79
	add c                                            ; $7129: $81
	ld a, [hl]                                       ; $712a: $7e
	or c                                             ; $712b: $b1
	ld e, d                                          ; $712c: $5a
	xor a                                            ; $712d: $af
	rst SubAFromDE                                          ; $712e: $df
	add sp, -$22                                     ; $712f: $e8 $de
	ret z                                            ; $7131: $c8

jr_052_7132:
	sbc h                                            ; $7132: $9c
	ret nc                                           ; $7133: $d0

	pop de                                           ; $7134: $d1
	pop de                                           ; $7135: $d1
	reti                                             ; $7136: $d9


	rst $38                                          ; $7137: $ff
	sub a                                            ; $7138: $97
	ld b, h                                          ; $7139: $44
	ld c, b                                          ; $713a: $48
	adc b                                            ; $713b: $88
	adc b                                            ; $713c: $88
	sub c                                            ; $713d: $91
	sub c                                            ; $713e: $91
	ld de, $d912                                     ; $713f: $11 $12 $d9
	rst $38                                          ; $7142: $ff
	rst SubAFromDE                                          ; $7143: $df
	ld d, l                                          ; $7144: $55
	sub a                                            ; $7145: $97
	adc e                                            ; $7146: $8b
	sbc e                                            ; $7147: $9b
	rra                                              ; $7148: $1f
	ccf                                              ; $7149: $3f
	scf                                              ; $714a: $37
	ld a, a                                          ; $714b: $7f
	xor $ee                                          ; $714c: $ee $ee
	ld a, c                                          ; $714e: $79
	ld e, e                                          ; $714f: $5b
	ld a, b                                          ; $7150: $78
	dec h                                            ; $7151: $25
	db $dd                                           ; $7152: $dd
	add b                                            ; $7153: $80
	ld a, a                                          ; $7154: $7f
	sub l                                            ; $7155: $95
	ld a, l                                          ; $7156: $7d
	rst JumpTable                                          ; $7157: $c7
	jp hl                                            ; $7158: $e9


	sub d                                            ; $7159: $92
	ld a, l                                          ; $715a: $7d
	ld a, h                                          ; $715b: $7c
	jr c, jr_052_719a                                ; $715c: $38 $3c

	inc e                                            ; $715e: $1c
	inc e                                            ; $715f: $1c
	inc c                                            ; $7160: $0c
	ld [bc], a                                       ; $7161: $02
	ld c, d                                          ; $7162: $4a
	dec hl                                           ; $7163: $2b
	cpl                                              ; $7164: $2f
	rla                                              ; $7165: $17
	rla                                              ; $7166: $17
	ld a, b                                          ; $7167: $78
	ld a, a                                          ; $7168: $7f
	rst SubAFromDE                                          ; $7169: $df
	ld [hl], c                                       ; $716a: $71
	sbc c                                            ; $716b: $99
	ld sp, $b3b1                                     ; $716c: $31 $b1 $b3
	or c                                             ; $716f: $b1
	or c                                             ; $7170: $b1
	daa                                              ; $7171: $27
	sbc $69                                          ; $7172: $de $69
	rst SubAFromDE                                          ; $7174: $df
	add hl, hl                                       ; $7175: $29
	rst SubAFromDE                                          ; $7176: $df
	dec hl                                           ; $7177: $2b
	sub a                                            ; $7178: $97
	cp e                                             ; $7179: $bb
	rst $38                                          ; $717a: $ff
	cp $f9                                           ; $717b: $fe $f9
	ld sp, hl                                        ; $717d: $f9
	ldh a, [$e2]                                     ; $717e: $f0 $e2
	db $fc                                           ; $7180: $fc
	db $db                                           ; $7181: $db
	rst $38                                          ; $7182: $ff
	ld a, d                                          ; $7183: $7a
	db $ed                                           ; $7184: $ed
	sub l                                            ; $7185: $95
	ccf                                              ; $7186: $3f
	sbc a                                            ; $7187: $9f
	xor b                                            ; $7188: $a8
	ld hl, sp-$0b                                    ; $7189: $f8 $f5
	ld a, d                                          ; $718b: $7a
	ld [$c03e], sp                                   ; $718c: $08 $3e $c0
	ldh [rPCM12], a                                  ; $718f: $e0 $76
	and [hl]                                         ; $7191: $a6
	sub l                                            ; $7192: $95
	rst FarCall                                          ; $7193: $f7
	pop bc                                           ; $7194: $c1
	ld hl, sp-$18                                    ; $7195: $f8 $e8
	ld d, b                                          ; $7197: $50
	xor c                                            ; $7198: $a9
	ld d, a                                          ; $7199: $57

jr_052_719a:
	xor [hl]                                         ; $719a: $ae
	ld d, a                                          ; $719b: $57
	ld l, $79                                        ; $719c: $2e $79
	ld h, c                                          ; $719e: $61
	sub d                                            ; $719f: $92
	ld b, b                                          ; $71a0: $40
	xor b                                            ; $71a1: $a8
	ld d, c                                          ; $71a2: $51
	xor b                                            ; $71a3: $a8
	pop de                                           ; $71a4: $d1
	ld d, [hl]                                       ; $71a5: $56
	dec l                                            ; $71a6: $2d
	rst FarCall                                          ; $71a7: $f7
	xor d                                            ; $71a8: $aa
	ld d, [hl]                                       ; $71a9: $56
	xor b                                            ; $71aa: $a8
	ld [hl], l                                       ; $71ab: $75
	xor a                                            ; $71ac: $af
	ld a, b                                          ; $71ad: $78
	jr z, jr_052_7132                                ; $71ae: $28 $82

	ld d, a                                          ; $71b0: $57
	xor a                                            ; $71b1: $af
	ld [hl], a                                       ; $71b2: $77
	rst $38                                          ; $71b3: $ff
	ld a, a                                          ; $71b4: $7f
	xor e                                            ; $71b5: $ab
	sub c                                            ; $71b6: $91
	adc e                                            ; $71b7: $8b
	dec h                                            ; $71b8: $25
	adc d                                            ; $71b9: $8a
	push af                                          ; $71ba: $f5
	and e                                            ; $71bb: $a3
	ret c                                            ; $71bc: $d8

	ld d, h                                          ; $71bd: $54
	xor $74                                          ; $71be: $ee $74
	jp c, $0a75                                      ; $71c0: $da $75 $0a

	ret nz                                           ; $71c3: $c0

	ldh [$d0], a                                     ; $71c4: $e0 $d0
	ldh [hDisp0_OBP1], a                                     ; $71c6: $e0 $87
	inc b                                            ; $71c8: $04
	sub b                                            ; $71c9: $90
	adc c                                            ; $71ca: $89
	adc l                                            ; $71cb: $8d
	ld b, $7a                                        ; $71cc: $06 $7a
	rst GetHLinHL                                          ; $71ce: $cf
	sbc l                                            ; $71cf: $9d
	inc bc                                           ; $71d0: $03
	rrca                                             ; $71d1: $0f

jr_052_71d2:
	ld a, d                                          ; $71d2: $7a
	ld a, $97                                        ; $71d3: $3e $97
	jr jr_052_71e3                                   ; $71d5: $18 $0c

	add c                                            ; $71d7: $81
	rst SubAFromBC                                          ; $71d8: $e7
	cp $f0                                           ; $71d9: $fe $f0
	ldh [$fa], a                                     ; $71db: $e0 $fa
	ld a, [$049a]                                    ; $71dd: $fa $9a $04
	ldh a, [rSVBK]                                   ; $71e0: $f0 $70
	ld h, b                                          ; $71e2: $60

jr_052_71e3:
	ldh [$7b], a                                     ; $71e3: $e0 $7b
	db $e4                                           ; $71e5: $e4
	sbc [hl]                                         ; $71e6: $9e
	ld c, $f8                                        ; $71e7: $0e $f8
	sbc b                                            ; $71e9: $98
	inc bc                                           ; $71ea: $03
	inc b                                            ; $71eb: $04
	ld de, $6121                                     ; $71ec: $11 $21 $61
	adc b                                            ; $71ef: $88
	adc b                                            ; $71f0: $88
	ld a, e                                          ; $71f1: $7b
	rst FarCall                                          ; $71f2: $f7
	sub d                                            ; $71f3: $92
	ld c, $1e                                        ; $71f4: $0e $1e
	ld e, $70                                        ; $71f6: $1e $70
	ld [hl], b                                       ; $71f8: $70
	rst $38                                          ; $71f9: $ff
	call $00a0                                       ; $71fa: $cd $a0 $00
	add b                                            ; $71fd: $80
	nop                                              ; $71fe: $00
	rrca                                             ; $71ff: $0f
	rra                                              ; $7200: $1f
	ld sp, hl                                        ; $7201: $f9
	sub e                                            ; $7202: $93
	ld a, [$70f8]                                    ; $7203: $fa $f8 $70
	db $10                                           ; $7206: $10
	inc e                                            ; $7207: $1c
	sbc $ff                                          ; $7208: $de $ff
	db $db                                           ; $720a: $db
	dec b                                            ; $720b: $05
	rlca                                             ; $720c: $07
	rrca                                             ; $720d: $0f
	rrca                                             ; $720e: $0f
	ld a, c                                          ; $720f: $79
	jp hl                                            ; $7210: $e9


	sbc h                                            ; $7211: $9c
	inc h                                            ; $7212: $24
	db $eb                                           ; $7213: $eb
	db $fd                                           ; $7214: $fd
	ld e, [hl]                                       ; $7215: $5e
	dec d                                            ; $7216: $15
	call c, Call_052_51ff                            ; $7217: $dc $ff $51
	ld [hl], e                                       ; $721a: $73
	rst SubAFromDE                                          ; $721b: $df
	rst $38                                          ; $721c: $ff
	rst SubAFromDE                                          ; $721d: $df
	pop de                                           ; $721e: $d1
	call c, $9ed2                                    ; $721f: $dc $d2 $9e
	jp hl                                            ; $7222: $e9


	reti                                             ; $7223: $d9


	rst $38                                          ; $7224: $ff
	db $dd                                           ; $7225: $dd
	ld [hl+], a                                      ; $7226: $22
	db $dd                                           ; $7227: $dd
	dec h                                            ; $7228: $25
	ld d, a                                          ; $7229: $57
	pop de                                           ; $722a: $d1
	sbc c                                            ; $722b: $99
	ld a, a                                          ; $722c: $7f
	rst FarCall                                          ; $722d: $f7
	rst AddAOntoHL                                          ; $722e: $ef
	rst $38                                          ; $722f: $ff
	ldh a, [$d0]                                     ; $7230: $f0 $d0
	sbc $90                                          ; $7232: $de $90
	rst SubAFromDE                                          ; $7234: $df
	jr jr_052_71d2                                   ; $7235: $18 $9b

	ld [$fcf8], sp                                   ; $7237: $08 $f8 $fc
	cp $73                                           ; $723a: $fe $73
	xor a                                            ; $723c: $af
	ld sp, hl                                        ; $723d: $f9
	ld a, a                                          ; $723e: $7f
	sbc l                                            ; $723f: $9d
	ld a, e                                          ; $7240: $7b
	cp $7f                                           ; $7241: $fe $7f
	db $fd                                           ; $7243: $fd
	ld a, a                                          ; $7244: $7f
	ld a, l                                          ; $7245: $7d
	sbc $01                                          ; $7246: $de $01
	db $fd                                           ; $7248: $fd
	ld a, a                                          ; $7249: $7f
	dec a                                            ; $724a: $3d
	ld a, h                                          ; $724b: $7c
	ld e, c                                          ; $724c: $59
	sbc e                                            ; $724d: $9b
	pop bc                                           ; $724e: $c1
	ret nz                                           ; $724f: $c0

	pop hl                                           ; $7250: $e1
	and c                                            ; $7251: $a1
	sbc $03                                          ; $7252: $de $03
	sbc $81                                          ; $7254: $de $81
	ld a, [hl]                                       ; $7256: $7e
	sub l                                            ; $7257: $95
	sbc $37                                          ; $7258: $de $37
	rst SubAFromDE                                          ; $725a: $df
	dec hl                                           ; $725b: $2b
	sbc h                                            ; $725c: $9c
	xor e                                            ; $725d: $ab
	rst SubAFromBC                                          ; $725e: $e7
	rst $38                                          ; $725f: $ff
	sbc $bb                                          ; $7260: $de $bb
	sbc $af                                          ; $7262: $de $af
	sub l                                            ; $7264: $95
	and a                                            ; $7265: $a7
	cp a                                             ; $7266: $bf
	db $fd                                           ; $7267: $fd
	ei                                               ; $7268: $fb
	db $f4                                           ; $7269: $f4
	ld [$fefc], a                                    ; $726a: $ea $fc $fe
	db $dd                                           ; $726d: $dd
	ld [$2065], a                                    ; $726e: $ea $65 $20
	sub c                                            ; $7271: $91
	cpl                                              ; $7272: $2f
	ld d, h                                          ; $7273: $54
	xor b                                            ; $7274: $a8
	ld d, d                                          ; $7275: $52
	and l                                            ; $7276: $a5
	ld c, e                                          ; $7277: $4b
	sbc a                                            ; $7278: $9f
	ccf                                              ; $7279: $3f
	ret nc                                           ; $727a: $d0

	xor e                                            ; $727b: $ab
	ld d, a                                          ; $727c: $57
	xor a                                            ; $727d: $af
	ld e, a                                          ; $727e: $5f
	cp a                                             ; $727f: $bf
	db $dd                                           ; $7280: $dd
	rst $38                                          ; $7281: $ff
	sbc d                                            ; $7282: $9a
	ld a, h                                          ; $7283: $7c
	and d                                            ; $7284: $a2
	ld d, l                                          ; $7285: $55
	ld [$7bf7], a                                    ; $7286: $ea $f7 $7b
	and b                                            ; $7289: $a0
	sbc [hl]                                         ; $728a: $9e
	add e                                            ; $728b: $83
	call c, $9aff                                    ; $728c: $dc $ff $9a
	ld a, d                                          ; $728f: $7a
	ld d, l                                          ; $7290: $55
	ld a, [de]                                       ; $7291: $1a
	add hl, sp                                       ; $7292: $39
	ei                                               ; $7293: $fb
	ld a, d                                          ; $7294: $7a
	sub c                                            ; $7295: $91
	ld a, e                                          ; $7296: $7b
	push hl                                          ; $7297: $e5
	ld a, l                                          ; $7298: $7d
	ld c, d                                          ; $7299: $4a
	sbc $ff                                          ; $729a: $de $ff
	sub a                                            ; $729c: $97
	ld [$a37f], a                                    ; $729d: $ea $7f $a3
	ret nc                                           ; $72a0: $d0

	inc b                                            ; $72a1: $04
	ld l, a                                          ; $72a2: $6f
	rst SubAFromHL                                          ; $72a3: $d7
	rst AddAOntoHL                                          ; $72a4: $ef
	sbc $f0                                          ; $72a5: $de $f0
	sbc [hl]                                         ; $72a7: $9e
	jr nz, jr_052_7321                               ; $72a8: $20 $77

	ldh a, [$97]                                     ; $72aa: $f0 $97
	ld [bc], a                                       ; $72ac: $02
	add b                                            ; $72ad: $80
	ld [hl], b                                       ; $72ae: $70
	ret z                                            ; $72af: $c8

	rlca                                             ; $72b0: $07

jr_052_72b1:
	and d                                            ; $72b1: $a2
	ld hl, sp-$03                                    ; $72b2: $f8 $fd
	ld a, e                                          ; $72b4: $7b
	add e                                            ; $72b5: $83
	sbc l                                            ; $72b6: $9d
	jr nc, jr_052_72b1                               ; $72b7: $30 $f8

	ld a, d                                          ; $72b9: $7a
	ld [hl], b                                       ; $72ba: $70
	ld a, a                                          ; $72bb: $7f
	and d                                            ; $72bc: $a2
	adc c                                            ; $72bd: $89
	inc d                                            ; $72be: $14
	ld l, c                                          ; $72bf: $69
	ret nc                                           ; $72c0: $d0

	and h                                            ; $72c1: $a4
	adc [hl]                                         ; $72c2: $8e
	rst $38                                          ; $72c3: $ff
	ld a, [bc]                                       ; $72c4: $0a
	inc d                                            ; $72c5: $14
	dec hl                                           ; $72c6: $2b
	ld d, $2f                                        ; $72c7: $16 $2f
	ei                                               ; $72c9: $fb
	rst FarCall                                          ; $72ca: $f7
	rst $38                                          ; $72cb: $ff
	rra                                              ; $72cc: $1f
	ld e, $f8                                        ; $72cd: $1e $f8
	ld [hl], c                                       ; $72cf: $71
	sbc b                                            ; $72d0: $98
	inc hl                                           ; $72d1: $23
	ld [hl], c                                       ; $72d2: $71
	ld hl, sp-$02                                    ; $72d3: $f8 $fe
	sbc l                                            ; $72d5: $9d
	add b                                            ; $72d6: $80
	ld h, b                                          ; $72d7: $60
	ld a, c                                          ; $72d8: $79
	add hl, bc                                       ; $72d9: $09
	add b                                            ; $72da: $80
	adc h                                            ; $72db: $8c
	rlca                                             ; $72dc: $07
	rra                                              ; $72dd: $1f
	adc d                                            ; $72de: $8a
	ret                                              ; $72df: $c9


	ldh [c], a                                       ; $72e0: $e2
	sub [hl]                                         ; $72e1: $96
	rra                                              ; $72e2: $1f
	ld [hl], b                                       ; $72e3: $70
	ld hl, sp-$20                                    ; $72e4: $f8 $e0
	ld [hl], h                                       ; $72e6: $74
	ld [hl], $1d                                     ; $72e7: $36 $1d
	ld l, a                                          ; $72e9: $6f
	rst $38                                          ; $72ea: $ff
	add hl, bc                                       ; $72eb: $09
	ld [$0004], sp                                   ; $72ec: $08 $04 $00
	db $e3                                           ; $72ef: $e3
	ld b, e                                          ; $72f0: $43
	inc e                                            ; $72f1: $1c
	ld h, b                                          ; $72f2: $60
	ld b, $07                                        ; $72f3: $06 $07
	inc bc                                           ; $72f5: $03
	inc bc                                           ; $72f6: $03
	nop                                              ; $72f7: $00
	and b                                            ; $72f8: $a0
	db $e3                                           ; $72f9: $e3
	sub c                                            ; $72fa: $91
	rst $38                                          ; $72fb: $ff
	add a                                            ; $72fc: $87
	rrca                                             ; $72fd: $0f
	rra                                              ; $72fe: $1f
	daa                                              ; $72ff: $27
	ld bc, $18b0                                     ; $7300: $01 $b0 $18
	rst $38                                          ; $7303: $ff
	ld a, b                                          ; $7304: $78
	ldh a, [$e0]                                     ; $7305: $f0 $e0
	ret c                                            ; $7307: $d8

	cp $7b                                           ; $7308: $fe $7b
	inc bc                                           ; $730a: $03
	sbc c                                            ; $730b: $99
	cp $f5                                           ; $730c: $fe $f5
	ld a, [$faf9]                                    ; $730e: $fa $f9 $fa
	db $fd                                           ; $7311: $fd
	ld l, d                                          ; $7312: $6a
	db $10                                           ; $7313: $10
	db $dd                                           ; $7314: $dd
	rst $38                                          ; $7315: $ff
	sbc b                                            ; $7316: $98
	ld [hl], l                                       ; $7317: $75
	xor [hl]                                         ; $7318: $ae
	ld d, l                                          ; $7319: $55
	xor e                                            ; $731a: $ab
	ld d, l                                          ; $731b: $55
	xor d                                            ; $731c: $aa
	ld d, a                                          ; $731d: $57
	reti                                             ; $731e: $d9


	rst $38                                          ; $731f: $ff
	rst SubAFromDE                                          ; $7320: $df

jr_052_7321:
	jp hl                                            ; $7321: $e9


	sbc [hl]                                         ; $7322: $9e
	ld sp, hl                                        ; $7323: $f9
	sbc $fc                                          ; $7324: $de $fc
	ld l, [hl]                                       ; $7326: $6e
	db $ec                                           ; $7327: $ec
	db $dd                                           ; $7328: $dd
	rst $38                                          ; $7329: $ff
	sub a                                            ; $732a: $97
	inc hl                                           ; $732b: $23
	inc de                                           ; $732c: $13
	inc de                                           ; $732d: $13
	sub e                                            ; $732e: $93
	sub e                                            ; $732f: $93
	sub c                                            ; $7330: $91
	sub c                                            ; $7331: $91
	ld d, c                                          ; $7332: $51
	sub $ff                                          ; $7333: $d6 $ff
	ld a, e                                          ; $7335: $7b
	ld a, d                                          ; $7336: $7a
	sbc l                                            ; $7337: $9d
	ld a, a                                          ; $7338: $7f
	ei                                               ; $7339: $fb
	sbc $08                                          ; $733a: $de $08
	rst SubAFromDE                                          ; $733c: $df
	inc c                                            ; $733d: $0c
	sbc h                                            ; $733e: $9c
	inc b                                            ; $733f: $04
	add h                                            ; $7340: $84
	add [hl]                                         ; $7341: $86
	reti                                             ; $7342: $d9


	rst $38                                          ; $7343: $ff
	ld sp, hl                                        ; $7344: $f9
	ld a, c                                          ; $7345: $79
	ld [hl], d                                       ; $7346: $72
	sbc $c0                                          ; $7347: $de $c0
	rst SubAFromDE                                          ; $7349: $df
	ldh [$f9], a                                     ; $734a: $e0 $f9
	sub [hl]                                         ; $734c: $96
	ld [hl], b                                       ; $734d: $70
	ldh a, [$f8]                                     ; $734e: $f0 $f8
	ld a, b                                          ; $7350: $78
	ld a, h                                          ; $7351: $7c
	ld a, h                                          ; $7352: $7c
	ld e, e                                          ; $7353: $5b
	ld a, h                                          ; $7354: $7c
	ret nz                                           ; $7355: $c0

	call c, $9840                                    ; $7356: $dc $40 $98
	ld h, a                                          ; $7359: $67
	ld a, h                                          ; $735a: $7c
	db $eb                                           ; $735b: $eb
	xor e                                            ; $735c: $ab
	rst GetHLinHL                                          ; $735d: $cf
	ret                                              ; $735e: $c9


	sub c                                            ; $735f: $91
	ld a, e                                          ; $7360: $7b
	ldh [c], a                                       ; $7361: $e2
	sbc d                                            ; $7362: $9a
	xor e                                            ; $7363: $ab
	db $eb                                           ; $7364: $eb
	rst GetHLinHL                                          ; $7365: $cf
	ret                                              ; $7366: $c9


	pop de                                           ; $7367: $d1
	ld a, e                                          ; $7368: $7b
	ld hl, sp-$74                                    ; $7369: $f8 $8c
	call nc, $7380                                   ; $736b: $d4 $80 $73
	rlca                                             ; $736e: $07
	cpl                                              ; $736f: $2f
	add [hl]                                         ; $7370: $86
	adc a                                            ; $7371: $8f
	add h                                            ; $7372: $84
	rst $38                                          ; $7373: $ff
	ld a, a                                          ; $7374: $7f
	adc h                                            ; $7375: $8c
	ld hl, sp-$30                                    ; $7376: $f8 $d0
	ld hl, sp-$10                                    ; $7378: $f8 $f0
	ei                                               ; $737a: $fb
	pop bc                                           ; $737b: $c1
	adc $3f                                          ; $737c: $ce $3f
	ld [hl], a                                       ; $737e: $77
	call nz, $c09b                                   ; $737f: $c4 $9b $c0
	rst $38                                          ; $7382: $ff
	ld sp, $fcc0                                     ; $7383: $31 $c0 $fc
	sbc e                                            ; $7386: $9b
	xor [hl]                                         ; $7387: $ae
	inc c                                            ; $7388: $0c
	rst $38                                          ; $7389: $ff
	ld a, [hl]                                       ; $738a: $7e
	db $fd                                           ; $738b: $fd
	sbc l                                            ; $738c: $9d
	rst $38                                          ; $738d: $ff
	di                                               ; $738e: $f3
	ei                                               ; $738f: $fb
	sbc h                                            ; $7390: $9c
	ld a, a                                          ; $7391: $7f
	ld [hl-], a                                      ; $7392: $32
	db $fd                                           ; $7393: $fd
	ld [hl], c                                       ; $7394: $71
	call nz, $d87d                                   ; $7395: $c4 $7d $d8
	ei                                               ; $7398: $fb
	sbc e                                            ; $7399: $9b
	ret nz                                           ; $739a: $c0

	ld l, $ff                                        ; $739b: $2e $ff
	jr jr_052_7412                                   ; $739d: $18 $73

	ldh a, [$9e]                                     ; $739f: $f0 $9e
	ret nc                                           ; $73a1: $d0

	ei                                               ; $73a2: $fb
	sbc h                                            ; $73a3: $9c
	rst FarCall                                          ; $73a4: $f7
	db $10                                           ; $73a5: $10
	db $fc                                           ; $73a6: $fc
	ld [hl], c                                       ; $73a7: $71
	call nz, $ff9d                                   ; $73a8: $c4 $9d $ff
	rrca                                             ; $73ab: $0f
	ei                                               ; $73ac: $fb
	ld a, [hl]                                       ; $73ad: $7e
	sbc e                                            ; $73ae: $9b
	sbc l                                            ; $73af: $9d
	ld bc, $733f                                     ; $73b0: $01 $3f $73
	ldh a, [$9e]                                     ; $73b3: $f0 $9e
	ld a, a                                          ; $73b5: $7f
	ld l, e                                          ; $73b6: $6b
	ret nz                                           ; $73b7: $c0

	sbc h                                            ; $73b8: $9c
	ccf                                              ; $73b9: $3f
	rst $38                                          ; $73ba: $ff
	rlca                                             ; $73bb: $07
	ld [hl], e                                       ; $73bc: $73
	ldh a, [$6f]                                     ; $73bd: $f0 $6f
	and c                                            ; $73bf: $a1
	sbc d                                            ; $73c0: $9a
	nop                                              ; $73c1: $00
	add d                                            ; $73c2: $82
	sbc h                                            ; $73c3: $9c
	ld bc, $78f0                                     ; $73c4: $01 $f0 $78
	inc a                                            ; $73c7: $3c
	ld a, a                                          ; $73c8: $7f
	ldh a, [$9e]                                     ; $73c9: $f0 $9e
	ld h, e                                          ; $73cb: $63
	ei                                               ; $73cc: $fb
	sbc l                                            ; $73cd: $9d
	ld hl, sp+$18                                    ; $73ce: $f8 $18
	ld l, h                                          ; $73d0: $6c
	or l                                             ; $73d1: $b5
	sbc [hl]                                         ; $73d2: $9e
	rst $38                                          ; $73d3: $ff
	ld l, e                                          ; $73d4: $6b
	ld a, $9c                                        ; $73d5: $3e $9c
	ld c, a                                          ; $73d7: $4f
	ld a, a                                          ; $73d8: $7f
	ld bc, $c673                                     ; $73d9: $01 $73 $c6
	ld h, a                                          ; $73dc: $67
	rra                                              ; $73dd: $1f
	dec hl                                           ; $73de: $2b
	nop                                              ; $73df: $00
	sbc $33                                          ; $73e0: $de $33
	sbc e                                            ; $73e2: $9b
	ld [hl+], a                                      ; $73e3: $22
	dec h                                            ; $73e4: $25
	ld d, l                                          ; $73e5: $55
	ld d, l                                          ; $73e6: $55
	db $db                                           ; $73e7: $db
	inc sp                                           ; $73e8: $33
	ld a, e                                          ; $73e9: $7b
	or $9e                                           ; $73ea: $f6 $9e
	ld [hl+], a                                      ; $73ec: $22
	call c, $9e33                                    ; $73ed: $dc $33 $9e
	ld [hl-], a                                      ; $73f0: $32
	db $dd                                           ; $73f1: $dd
	ld [hl+], a                                      ; $73f2: $22
	ld c, e                                          ; $73f3: $4b
	or $dc                                           ; $73f4: $f6 $dc
	ld [hl+], a                                      ; $73f6: $22
	ccf                                              ; $73f7: $3f
	db $ed                                           ; $73f8: $ed
	sbc [hl]                                         ; $73f9: $9e
	inc hl                                           ; $73fa: $23
	ld h, a                                          ; $73fb: $67
	or $6f                                           ; $73fc: $f6 $6f
	rst FarCall                                          ; $73fe: $f7
	scf                                              ; $73ff: $37
	or $9e                                           ; $7400: $f6 $9e
	ld b, h                                          ; $7402: $44
	sbc $22                                          ; $7403: $de $22
	sbc [hl]                                         ; $7405: $9e
	inc h                                            ; $7406: $24
	call c, $ec44                                    ; $7407: $dc $44 $ec
	adc c                                            ; $740a: $89
	pop bc                                           ; $740b: $c1
	rst $38                                          ; $740c: $ff
	inc bc                                           ; $740d: $03
	rst $38                                          ; $740e: $ff
	jp nc, $97ff                                     ; $740f: $d2 $ff $97

jr_052_7412:
	ld sp, hl                                        ; $7412: $f9
	di                                               ; $7413: $f3
	rst SubAFromBC                                          ; $7414: $e7
	adc $8d                                          ; $7415: $ce $8d
	sbc e                                            ; $7417: $9b
	inc sp                                           ; $7418: $33
	ld h, [hl]                                       ; $7419: $66
	ret c                                            ; $741a: $d8

	rst $38                                          ; $741b: $ff
	sbc b                                            ; $741c: $98
	cp a                                             ; $741d: $bf
	ld a, a                                          ; $741e: $7f
	cp $fc                                           ; $741f: $fe $fc
	cp b                                             ; $7421: $b8
	ld [hl], c                                       ; $7422: $71
	ld h, e                                          ; $7423: $63
	rst SubAFromHL                                          ; $7424: $d7
	rst $38                                          ; $7425: $ff
	sbc c                                            ; $7426: $99
	sbc a                                            ; $7427: $9f
	ld a, $78                                        ; $7428: $3e $78
	ldh [$c3], a                                     ; $742a: $e0 $c3
	adc a                                            ; $742c: $8f
	rst SubAFromHL                                          ; $742d: $d7
	rst $38                                          ; $742e: $ff
	sbc c                                            ; $742f: $99
	ret nz                                           ; $7430: $c0

	inc bc                                           ; $7431: $03
	ld a, $f0                                        ; $7432: $3e $f0
	ret nz                                           ; $7434: $c0

	rlca                                             ; $7435: $07
	rst SubAFromHL                                          ; $7436: $d7
	rst $38                                          ; $7437: $ff
	sbc c                                            ; $7438: $99
	rra                                              ; $7439: $1f
	db $fd                                           ; $743a: $fd
	ld [hl], $59                                     ; $743b: $36 $59
	db $e4                                           ; $743d: $e4
	sub e                                            ; $743e: $93
	sbc $ff                                          ; $743f: $de $ff
	sub d                                            ; $7441: $92
	cp $f9                                           ; $7442: $fe $f9
	and $98                                          ; $7444: $e6 $98
	ld h, c                                          ; $7446: $61
	rst $38                                          ; $7447: $ff
	rst $38                                          ; $7448: $ff
	rrca                                             ; $7449: $0f
	add e                                            ; $744a: $83
	ld b, e                                          ; $744b: $43
	ld bc, $e03f                                     ; $744c: $01 $3f $e0
	sbc $ff                                          ; $744f: $de $ff
	sbc e                                            ; $7451: $9b
	ld a, a                                          ; $7452: $7f
	add c                                            ; $7453: $81
	nop                                              ; $7454: $00
	rra                                              ; $7455: $1f
	reti                                             ; $7456: $d9


	rst $38                                          ; $7457: $ff
	sbc [hl]                                         ; $7458: $9e
	ld a, a                                          ; $7459: $7f

jr_052_745a:
	call nc, $dfff                                   ; $745a: $d4 $ff $df
	db $fd                                           ; $745d: $fd
	sbc [hl]                                         ; $745e: $9e
	db $ec                                           ; $745f: $ec
	db $d3                                           ; $7460: $d3
	rst $38                                          ; $7461: $ff
	sbc l                                            ; $7462: $9d
	rst AddAOntoHL                                          ; $7463: $ef
	rst SubAFromBC                                          ; $7464: $e7
	reti                                             ; $7465: $d9


	rst $38                                          ; $7466: $ff
	sub a                                            ; $7467: $97
	cp $ff                                           ; $7468: $fe $ff
	db $fd                                           ; $746a: $fd
	cp $ee                                           ; $746b: $fe $ee
	rst FarCall                                          ; $746d: $f7
	ld [hl], e                                       ; $746e: $73
	dec sp                                           ; $746f: $3b
	reti                                             ; $7470: $d9


	rst $38                                          ; $7471: $ff
	sub a                                            ; $7472: $97
	ccf                                              ; $7473: $3f
	rra                                              ; $7474: $1f
	adc a                                            ; $7475: $8f
	rst JumpTable                                          ; $7476: $c7
	ld h, e                                          ; $7477: $63
	ld h, e                                          ; $7478: $63
	ld hl, $da09                                     ; $7479: $21 $09 $da
	rst $38                                          ; $747c: $ff
	sbc [hl]                                         ; $747d: $9e
	rst FarCall                                          ; $747e: $f7
	inc bc                                           ; $747f: $03
	cpl                                              ; $7480: $2f
	jp nz, $97ff                                     ; $7481: $c2 $ff $97

	db $dd                                           ; $7484: $dd
	xor d                                            ; $7485: $aa
	ld [hl], a                                       ; $7486: $77
	xor d                                            ; $7487: $aa
	ld d, l                                          ; $7488: $55
	xor d                                            ; $7489: $aa
	ld d, l                                          ; $748a: $55
	ld l, d                                          ; $748b: $6a
	ld c, e                                          ; $748c: $4b
	ldh a, [$9e]                                     ; $748d: $f0 $9e
	xor d                                            ; $748f: $aa
	dec bc                                           ; $7490: $0b
	ldh a, [$9e]                                     ; $7491: $f0 $9e
	xor e                                            ; $7493: $ab
	ld h, e                                          ; $7494: $63
	ld h, b                                          ; $7495: $60
	rst SubAFromDE                                          ; $7496: $df
	db $fc                                           ; $7497: $fc
	rst SubAFromDE                                          ; $7498: $df
	ld sp, hl                                        ; $7499: $f9
	rst SubAFromDE                                          ; $749a: $df
	ldh a, [c]                                       ; $749b: $f2
	sbc [hl]                                         ; $749c: $9e
	db $e4                                           ; $749d: $e4
	reti                                             ; $749e: $d9


	rst $38                                          ; $749f: $ff
	sub a                                            ; $74a0: $97
	ld l, h                                          ; $74a1: $6c
	ret z                                            ; $74a2: $c8

	sub c                                            ; $74a3: $91
	ld de, $2223                                     ; $74a4: $11 $23 $22
	ld b, [hl]                                       ; $74a7: $46
	ld b, h                                          ; $74a8: $44
	reti                                             ; $74a9: $d9


	rst $38                                          ; $74aa: $ff
	sub a                                            ; $74ab: $97
	db $e3                                           ; $74ac: $e3
	add $8c                                          ; $74ad: $c6 $8c
	adc b                                            ; $74af: $88
	add hl, de                                       ; $74b0: $19
	ld [de], a                                       ; $74b1: $12
	dec [hl]                                         ; $74b2: $35
	ld a, [hl+]                                      ; $74b3: $2a
	ld [hl], e                                       ; $74b4: $73
	call nc, $fd94                                   ; $74b5: $d4 $94 $fd
	ei                                               ; $74b8: $fb
	rst FarCall                                          ; $74b9: $f7
	inc e                                            ; $74ba: $1c
	jr c, jr_052_752d                                ; $74bb: $38 $70

	ld h, b                                          ; $74bd: $60
	pop bc                                           ; $74be: $c1
	add e                                            ; $74bf: $83
	rla                                              ; $74c0: $17
	inc l                                            ; $74c1: $2c
	ld l, e                                          ; $74c2: $6b
	jr jr_052_745a                                   ; $74c3: $18 $95

	rst SubAFromDE                                          ; $74c5: $df
	rra                                              ; $74c6: $1f
	ccf                                              ; $74c7: $3f
	ld a, [hl]                                       ; $74c8: $7e
	rst $38                                          ; $74c9: $ff
	db $fc                                           ; $74ca: $fc
	ld hl, sp-$0d                                    ; $74cb: $f8 $f3
	xor $fe                                          ; $74cd: $ee $fe
	ld a, e                                          ; $74cf: $7b
	ei                                               ; $74d0: $fb
	add b                                            ; $74d1: $80
	rst FarCall                                          ; $74d2: $f7
	rst AddAOntoHL                                          ; $74d3: $ef
	db $fc                                           ; $74d4: $fc
	pop af                                           ; $74d5: $f1
	sbc $70                                          ; $74d6: $de $70
	ret nz                                           ; $74d8: $c0

	nop                                              ; $74d9: $00
	inc b                                            ; $74da: $04
	adc l                                            ; $74db: $8d
	rra                                              ; $74dc: $1f
	or [hl]                                          ; $74dd: $b6
	rrca                                             ; $74de: $0f
	ccf                                              ; $74df: $3f
	rst $38                                          ; $74e0: $ff
	rst $38                                          ; $74e1: $ff
	ei                                               ; $74e2: $fb
	ld [hl], d                                       ; $74e3: $72
	ldh [$c0], a                                     ; $74e4: $e0 $c0
	nop                                              ; $74e6: $00
	ld hl, $7331                                     ; $74e7: $21 $31 $73
	db $eb                                           ; $74ea: $eb
	ld l, [hl]                                       ; $74eb: $6e
	ld h, [hl]                                       ; $74ec: $66
	ld h, h                                          ; $74ed: $64
	rst $38                                          ; $74ee: $ff
	sbc $ce                                          ; $74ef: $de $ce
	sbc l                                            ; $74f1: $9d
	adc h                                            ; $74f2: $8c
	inc b                                            ; $74f3: $04
	cp $87                                           ; $74f4: $fe $87
	rra                                              ; $74f6: $1f
	rrca                                             ; $74f7: $0f
	or e                                             ; $74f8: $b3
	ld hl, sp-$03                                    ; $74f9: $f8 $fd
	ld [hl], l                                       ; $74fb: $75
	inc sp                                           ; $74fc: $33
	jr @+$01                                         ; $74fd: $18 $ff

	rst $38                                          ; $74ff: $ff
	ld c, a                                          ; $7500: $4f
	rlca                                             ; $7501: $07
	inc bc                                           ; $7502: $03
	inc bc                                           ; $7503: $03
	ld bc, $ec01                                     ; $7504: $01 $01 $ec
	db $ec                                           ; $7507: $ec
	call nz, $c5c5                                   ; $7508: $c4 $c5 $c5
	ret                                              ; $750b: $c9


	res 3, d                                         ; $750c: $cb $9a
	ld [hl], a                                       ; $750e: $77
	and c                                            ; $750f: $a1
	sub e                                            ; $7510: $93
	cp $f6                                           ; $7511: $fe $f6
	db $f4                                           ; $7513: $f4
	db $e4                                           ; $7514: $e4
	rst SubAFromBC                                          ; $7515: $e7
	jp $4943                                         ; $7516: $c3 $43 $49


	ld e, b                                          ; $7519: $58
	sbc h                                            ; $751a: $9c
	sbc h                                            ; $751b: $9c
	or l                                             ; $751c: $b5
	halt                                             ; $751d: $76
	db $e4                                           ; $751e: $e4
	add b                                            ; $751f: $80
	rst SubAFromBC                                          ; $7520: $e7
	ld h, e                                          ; $7521: $63
	ld h, e                                          ; $7522: $63
	ld b, d                                          ; $7523: $42
	add hl, sp                                       ; $7524: $39
	add hl, de                                       ; $7525: $19
	ld e, h                                          ; $7526: $5c
	ld c, [hl]                                       ; $7527: $4e
	ld l, [hl]                                       ; $7528: $6e
	rst SubAFromBC                                          ; $7529: $e7
	ldh a, [c]                                       ; $752a: $f2
	ld [hl], d                                       ; $752b: $72
	rst $38                                          ; $752c: $ff

jr_052_752d:
	rst $38                                          ; $752d: $ff
	cp e                                             ; $752e: $bb
	cp c                                             ; $752f: $b9
	sbc c                                            ; $7530: $99
	jr jr_052_753f                                   ; $7531: $18 $0c

	inc c                                            ; $7533: $0c
	adc c                                            ; $7534: $89
	ld c, h                                          ; $7535: $4c
	ld h, a                                          ; $7536: $67
	ld h, l                                          ; $7537: $65
	dec d                                            ; $7538: $15
	inc c                                            ; $7539: $0c
	ld b, $2e                                        ; $753a: $06 $2e
	ld [hl], a                                       ; $753c: $77
	or e                                             ; $753d: $b3
	sbc b                                            ; $753e: $98

jr_052_753f:
	sbc [hl]                                         ; $753f: $9e
	sbc b                                            ; $7540: $98
	sbc $c8                                          ; $7541: $de $c8
	sub [hl]                                         ; $7543: $96
	call nz, $d5ee                                   ; $7544: $c4 $ee $d5
	cp e                                             ; $7547: $bb
	push de                                          ; $7548: $d5
	ld [$6ad5], a                                    ; $7549: $ea $d5 $6a
	ld [hl], a                                       ; $754c: $77
	ld l, d                                          ; $754d: $6a
	ld l, c                                          ; $754e: $69
	sbc e                                            ; $754f: $9b
	ld a, a                                          ; $7550: $7f
	xor $55                                          ; $7551: $ee $55
	cp e                                             ; $7553: $bb
	ld [hl], a                                       ; $7554: $77
	ld de, $d59e                                     ; $7555: $11 $9e $d5
	reti                                             ; $7558: $d9


	rst $38                                          ; $7559: $ff
	ld l, e                                          ; $755a: $6b
	ldh a, [$9e]                                     ; $755b: $f0 $9e
	ld d, l                                          ; $755d: $55
	daa                                              ; $755e: $27
	ldh a, [$7a]                                     ; $755f: $f0 $7a
	ld d, a                                          ; $7561: $57
	ld a, a                                          ; $7562: $7f
	ld a, [hl+]                                      ; $7563: $2a
	ld a, [hl]                                       ; $7564: $7e
	db $fd                                           ; $7565: $fd
	sbc [hl]                                         ; $7566: $9e
	di                                               ; $7567: $f3
	ld [hl], d                                       ; $7568: $72
	push af                                          ; $7569: $f5
	ld a, e                                          ; $756a: $7b
	db $fd                                           ; $756b: $fd
	sub a                                            ; $756c: $97
	inc bc                                           ; $756d: $03
	db $dd                                           ; $756e: $dd
	ld a, [$ab75]                                    ; $756f: $fa $75 $ab
	rst SubAFromHL                                          ; $7572: $d7
	db $eb                                           ; $7573: $eb
	pop af                                           ; $7574: $f1
	ld [hl], e                                       ; $7575: $73
	or d                                             ; $7576: $b2
	ld a, [hl]                                       ; $7577: $7e
	ld d, e                                          ; $7578: $53
	sub [hl]                                         ; $7579: $96
	rrca                                             ; $757a: $0f
	rst $38                                          ; $757b: $ff
	db $fd                                           ; $757c: $fd
	cp d                                             ; $757d: $ba
	ld d, h                                          ; $757e: $54
	xor b                                            ; $757f: $a8
	jp nc, $c0c1                                     ; $7580: $d2 $c1 $c0

	reti                                             ; $7583: $d9


	rst $38                                          ; $7584: $ff
	sub a                                            ; $7585: $97
	add e                                            ; $7586: $83
	ld c, $07                                        ; $7587: $0e $07
	rra                                              ; $7589: $1f
	rra                                              ; $758a: $1f
	ccf                                              ; $758b: $3f
	cp $6b                                           ; $758c: $fe $6b
	ld h, l                                          ; $758e: $65
	or e                                             ; $758f: $b3
	sbc b                                            ; $7590: $98
	db $e4                                           ; $7591: $e4
	ret z                                            ; $7592: $c8

	ret z                                            ; $7593: $c8

	sub c                                            ; $7594: $91
	sub c                                            ; $7595: $91
	and d                                            ; $7596: $a2
	and d                                            ; $7597: $a2
	ld h, d                                          ; $7598: $62
	ret nc                                           ; $7599: $d0

	sub a                                            ; $759a: $97
	ld c, h                                          ; $759b: $4c
	adc b                                            ; $759c: $88
	adc b                                            ; $759d: $88
	jr jr_052_75b0                                   ; $759e: $18 $10

	ld de, $2221                                     ; $75a0: $11 $21 $22
	reti                                             ; $75a3: $d9


	rst $38                                          ; $75a4: $ff
	add [hl]                                         ; $75a5: $86
	ld l, d                                          ; $75a6: $6a
	ld d, h                                          ; $75a7: $54
	ld [hl], l                                       ; $75a8: $75
	xor e                                            ; $75a9: $ab
	or $5d                                           ; $75aa: $f6 $5d
	xor $ba                                          ; $75ac: $ee $ba
	rst FarCall                                          ; $75ae: $f7
	rst AddAOntoHL                                          ; $75af: $ef

jr_052_75b0:
	adc $dc                                          ; $75b0: $ce $dc
	sbc c                                            ; $75b2: $99
	or e                                             ; $75b3: $b3
	inc sp                                           ; $75b4: $33
	ld h, a                                          ; $75b5: $67
	ld e, b                                          ; $75b6: $58
	sub c                                            ; $75b7: $91
	inc hl                                           ; $75b8: $23
	ld b, a                                          ; $75b9: $47
	adc e                                            ; $75ba: $8b
	ld [de], a                                       ; $75bb: $12
	ld h, $46                                        ; $75bc: $26 $46
	cp a                                             ; $75be: $bf
	ld l, c                                          ; $75bf: $69
	cp [hl]                                          ; $75c0: $be
	add b                                            ; $75c1: $80
	push de                                          ; $75c2: $d5
	xor d                                            ; $75c3: $aa
	and l                                            ; $75c4: $a5
	ld e, c                                          ; $75c5: $59
	ld [de], a                                       ; $75c6: $12
	sub h                                            ; $75c7: $94
	xor h                                            ; $75c8: $ac
	ld l, c                                          ; $75c9: $69
	db $e3                                           ; $75ca: $e3
	rst JumpTable                                          ; $75cb: $c7
	adc $8e                                          ; $75cc: $ce $8e
	sbc h                                            ; $75ce: $9c
	jr c, jr_052_7601                                ; $75cf: $38 $30

	ld sp, $c862                                     ; $75d1: $31 $62 $c8
	sub h                                            ; $75d4: $94
	db $10                                           ; $75d5: $10
	add hl, hl                                       ; $75d6: $29
	ld b, d                                          ; $75d7: $42
	add l                                            ; $75d8: $85
	ld a, [hl+]                                      ; $75d9: $2a
	add h                                            ; $75da: $84
	inc b                                            ; $75db: $04

Call_052_75dc:
	ld [$3118], sp                                   ; $75dc: $08 $18 $31
	ld [hl], e                                       ; $75df: $73
	and $89                                          ; $75e0: $e6 $89
	call z, $0444                                    ; $75e2: $cc $44 $04
	adc b                                            ; $75e5: $88
	ld c, c                                          ; $75e6: $49
	dec d                                            ; $75e7: $15
	add b                                            ; $75e8: $80
	ld a, [hl-]                                      ; $75e9: $3a
	ld h, c                                          ; $75ea: $61
	nop                                              ; $75eb: $00
	ld b, b                                          ; $75ec: $40
	ld b, h                                          ; $75ed: $44
	add h                                            ; $75ee: $84
	adc b                                            ; $75ef: $88
	add hl, de                                       ; $75f0: $19
	ld de, $0932                                     ; $75f1: $11 $32 $09
	ld bc, $0404                                     ; $75f4: $01 $04 $04
	jr nz, @-$04                                     ; $75f7: $20 $fa

	sbc [hl]                                         ; $75f9: $9e
	inc b                                            ; $75fa: $04
	sbc $24                                          ; $75fb: $de $24
	sub [hl]                                         ; $75fd: $96
	sbc d                                            ; $75fe: $9a
	cp [hl]                                          ; $75ff: $be
	xor [hl]                                         ; $7600: $ae

jr_052_7601:
	and [hl]                                         ; $7601: $a6
	db $e4                                           ; $7602: $e4
	call nz, $c0c0                                   ; $7603: $c4 $c0 $c0
	db $e4                                           ; $7606: $e4
	sbc $c0                                          ; $7607: $de $c0
	rst SubAFromDE                                          ; $7609: $df
	add b                                            ; $760a: $80
	rst SubAFromDE                                          ; $760b: $df
	add h                                            ; $760c: $84
	sub e                                            ; $760d: $93
	or a                                             ; $760e: $b7
	ld h, [hl]                                       ; $760f: $66
	ld h, b                                          ; $7610: $60
	ld h, b                                          ; $7611: $60
	ld b, b                                          ; $7612: $40
	ld b, c                                          ; $7613: $41
	ld bc, $4032                                     ; $7614: $01 $32 $40
	nop                                              ; $7617: $00
	ld [bc], a                                       ; $7618: $02
	ld [bc], a                                       ; $7619: $02
	sbc $22                                          ; $761a: $de $22
	sbc e                                            ; $761c: $9b
	ld hl, $6060                                     ; $761d: $21 $60 $60
	ld c, b                                          ; $7620: $48
	sbc $02                                          ; $7621: $de $02
	adc d                                            ; $7623: $8a
	ld h, l                                          ; $7624: $65
	ld [hl+], a                                      ; $7625: $22
	inc c                                            ; $7626: $0c
	inc c                                            ; $7627: $0c
	inc b                                            ; $7628: $04
	ld b, h                                          ; $7629: $44
	ld b, h                                          ; $762a: $44
	ld h, h                                          ; $762b: $64
	ld [hl+], a                                      ; $762c: $22
	inc hl                                           ; $762d: $23
	and [hl]                                         ; $762e: $a6
	ld [bc], a                                       ; $762f: $02
	ld b, b                                          ; $7630: $40
	inc d                                            ; $7631: $14
	ld d, $16                                        ; $7632: $16 $16
	ld h, $02                                        ; $7634: $26 $02
	ld b, h                                          ; $7636: $44
	ld h, h                                          ; $7637: $64
	ld h, $de                                        ; $7638: $26 $de
	ld [hl+], a                                      ; $763a: $22
	sub [hl]                                         ; $763b: $96
	ld [de], a                                       ; $763c: $12
	ld d, $6f                                        ; $763d: $16 $6f
	ld a, a                                          ; $763f: $7f
	ld a, a                                          ; $7640: $7f
	halt                                             ; $7641: $76
	ld a, l                                          ; $7642: $7d
	ld a, d                                          ; $7643: $7a
	ld a, h                                          ; $7644: $7c
	ret c                                            ; $7645: $d8

	ld a, a                                          ; $7646: $7f
	sub a                                            ; $7647: $97
	ldh a, [$f9]                                     ; $7648: $f0 $f9
	rst $38                                          ; $764a: $ff
	cp [hl]                                          ; $764b: $be
	ld d, l                                          ; $764c: $55
	and b                                            ; $764d: $a0
	nop                                              ; $764e: $00
	adc [hl]                                         ; $764f: $8e
	jp c, $97ff                                      ; $7650: $da $ff $97

	pop af                                           ; $7653: $f1
	ld [hl], b                                       ; $7654: $70
	ld hl, sp-$61                                    ; $7655: $f8 $9f
	dec a                                            ; $7657: $3d
	ld hl, sp-$19                                    ; $7658: $f8 $e7
	adc a                                            ; $765a: $8f
	ld l, l                                          ; $765b: $6d
	rlca                                             ; $765c: $07
	sub l                                            ; $765d: $95
	ld hl, sp-$10                                    ; $765e: $f8 $f0
	ldh [rSB], a                                     ; $7660: $e0 $01
	add c                                            ; $7662: $81
	rst FarCall                                          ; $7663: $f7
	cp $7c                                           ; $7664: $fe $7c
	sbc b                                            ; $7666: $98
	jp $916a                                         ; $7667: $c3 $6a $91


	sub h                                            ; $766a: $94
	inc a                                            ; $766b: $3c
	nop                                              ; $766c: $00
	pop hl                                           ; $766d: $e1
	di                                               ; $766e: $f3
	rst $38                                          ; $766f: $ff
	rst JumpTable                                          ; $7670: $c7
	ld bc, $0d02                                     ; $7671: $01 $02 $0d
	ld a, a                                          ; $7674: $7f
	cp $71                                           ; $7675: $fe $71
	ldh [$7f], a                                     ; $7677: $e0 $7f
	ld a, [$e591]                                    ; $7679: $fa $91 $e5
	rst $38                                          ; $767c: $ff
	rst AddAOntoHL                                          ; $767d: $ef
	rst $38                                          ; $767e: $ff
	ld [hl], e                                       ; $767f: $73
	jr z, jr_052_76d6                                ; $7680: $28 $54

	nop                                              ; $7682: $00
	dec de                                           ; $7683: $1b
	ldh a, [$f0]                                     ; $7684: $f0 $f0
	nop                                              ; $7686: $00
	adc h                                            ; $7687: $8c
	rst SubAFromHL                                          ; $7688: $d7
	ld a, c                                          ; $7689: $79
	sbc c                                            ; $768a: $99
	add b                                            ; $768b: $80
	pop bc                                           ; $768c: $c1
	or [hl]                                          ; $768d: $b6
	pop bc                                           ; $768e: $c1
	ld [bc], a                                       ; $768f: $02
	add hl, bc                                       ; $7690: $09
	ld a, [hl+]                                      ; $7691: $2a
	ld d, h                                          ; $7692: $54
	ret nz                                           ; $7693: $c0

	cp [hl]                                          ; $7694: $be
	ld c, c                                          ; $7695: $49
	ld a, $fd                                        ; $7696: $3e $fd
	or $fd                                           ; $7698: $f6 $fd
	rst $38                                          ; $769a: $ff
	push bc                                          ; $769b: $c5
	adc d                                            ; $769c: $8a
	push hl                                          ; $769d: $e5
	ld d, l                                          ; $769e: $55
	xor e                                            ; $769f: $ab
	ld d, l                                          ; $76a0: $55
	add c                                            ; $76a1: $81
	dec d                                            ; $76a2: $15
	ccf                                              ; $76a3: $3f
	ld a, a                                          ; $76a4: $7f
	rra                                              ; $76a5: $1f
	xor e                                            ; $76a6: $ab
	ld d, l                                          ; $76a7: $55
	xor e                                            ; $76a8: $ab
	ld a, a                                          ; $76a9: $7f
	rst $38                                          ; $76aa: $ff
	sbc c                                            ; $76ab: $99
	ld b, h                                          ; $76ac: $44
	ld c, b                                          ; $76ad: $48
	adc b                                            ; $76ae: $88
	adc b                                            ; $76af: $88
	sub b                                            ; $76b0: $90
	sub c                                            ; $76b1: $91
	ld e, [hl]                                       ; $76b2: $5e
	ret nc                                           ; $76b3: $d0

	add b                                            ; $76b4: $80
	inc hl                                           ; $76b5: $23
	ld b, l                                          ; $76b6: $45
	ld b, a                                          ; $76b7: $47
	adc d                                            ; $76b8: $8a
	adc l                                            ; $76b9: $8d
	dec d                                            ; $76ba: $15
	ld a, [de]                                       ; $76bb: $1a
	dec hl                                           ; $76bc: $2b
	cp $fe                                           ; $76bd: $fe $fe
	db $fc                                           ; $76bf: $fc
	db $fd                                           ; $76c0: $fd
	ei                                               ; $76c1: $fb
	ei                                               ; $76c2: $fb
	rst FarCall                                          ; $76c3: $f7
	or $dc                                           ; $76c4: $f6 $dc
	ld [hl], l                                       ; $76c6: $75
	cp c                                             ; $76c7: $b9
	ldh a, [c]                                       ; $76c8: $f2
	ld d, h                                          ; $76c9: $54
	xor c                                            ; $76ca: $a9
	or d                                             ; $76cb: $b2
	di                                               ; $76cc: $f3
	ld h, a                                          ; $76cd: $67
	rst GetHLinHL                                          ; $76ce: $cf
	rst GetHLinHL                                          ; $76cf: $cf
	sbc a                                            ; $76d0: $9f
	cp a                                             ; $76d1: $bf
	ld a, a                                          ; $76d2: $7f
	ld a, a                                          ; $76d3: $7f
	sub [hl]                                         ; $76d4: $96
	ld a, [hl]                                       ; $76d5: $7e

jr_052_76d6:
	adc e                                            ; $76d6: $8b
	inc de                                           ; $76d7: $13
	daa                                              ; $76d8: $27
	ld b, a                                          ; $76d9: $47
	rst $38                                          ; $76da: $ff
	ld sp, hl                                        ; $76db: $f9
	cp l                                             ; $76dc: $bd
	call $fedc                                       ; $76dd: $cd $dc $fe

jr_052_76e0:
	sub a                                            ; $76e0: $97
	rrca                                             ; $76e1: $0f
	ld b, a                                          ; $76e2: $47
	daa                                              ; $76e3: $27
	ld d, d                                          ; $76e4: $52
	ld d, h                                          ; $76e5: $54
	db $eb                                           ; $76e6: $eb
	or l                                             ; $76e7: $b5
	or $de                                           ; $76e8: $f6 $de
	rst $38                                          ; $76ea: $ff
	add b                                            ; $76eb: $80
	ld h, e                                          ; $76ec: $63
	ld h, a                                          ; $76ed: $67
	ld c, h                                          ; $76ee: $4c
	db $db                                           ; $76ef: $db
	cp a                                             ; $76f0: $bf
	rst $38                                          ; $76f1: $ff
	jr nz, jr_052_76f4                               ; $76f2: $20 $00

jr_052_76f4:
	ld d, h                                          ; $76f4: $54
	jp hl                                            ; $76f5: $e9


	db $d3                                           ; $76f6: $d3
	ld h, $fd                                        ; $76f7: $26 $fd
	ld a, [$fff7]                                    ; $76f9: $fa $f7 $ff
	sbc b                                            ; $76fc: $98
	jr nc, jr_052_76e0                               ; $76fd: $30 $e1

	rst JumpTable                                          ; $76ff: $c7
	ld e, $fc                                        ; $7700: $1e $fc
	dec de                                           ; $7702: $1b
	ld a, h                                          ; $7703: $7c
	call nc, Call_052_44a2                           ; $7704: $d4 $a2 $44
	sbc l                                            ; $7707: $9d
	dec sp                                           ; $7708: $3b
	ldh a, [c]                                       ; $7709: $f2
	dec [hl]                                         ; $770a: $35
	add b                                            ; $770b: $80
	db $ec                                           ; $770c: $ec
	ld h, d                                          ; $770d: $62
	call nz, $1888                                   ; $770e: $c4 $88 $18
	ld sp, $e6f3                                     ; $7711: $31 $f3 $e6
	ret z                                            ; $7714: $c8

	inc h                                            ; $7715: $24
	add c                                            ; $7716: $81
	adc b                                            ; $7717: $88
	pop bc                                           ; $7718: $c1
	ld de, $2e82                                     ; $7719: $11 $82 $2e
	ld e, e                                          ; $771c: $5b
	ld c, b                                          ; $771d: $48
	ld c, b                                          ; $771e: $48
	pop de                                           ; $771f: $d1
	sub c                                            ; $7720: $91
	and e                                            ; $7721: $a3
	ld h, $46                                        ; $7722: $26 $46
	adc e                                            ; $7724: $8b
	add [hl]                                         ; $7725: $86
	call nz, $6fec                                   ; $7726: $c4 $ec $6f
	ld c, [hl]                                       ; $7729: $4e
	ld l, l                                          ; $772a: $6d
	adc l                                            ; $772b: $8d
	ld [hl], a                                       ; $772c: $77
	ld h, a                                          ; $772d: $67
	call nz, $c6c6                                   ; $772e: $c4 $c6 $c6
	ld b, [hl]                                       ; $7731: $46
	ld h, a                                          ; $7732: $67
	ld h, a                                          ; $7733: $67
	ld l, l                                          ; $7734: $6d
	ld a, h                                          ; $7735: $7c
	ld [hl+], a                                      ; $7736: $22
	ld [hl+], a                                      ; $7737: $22
	add hl, de                                       ; $7738: $19
	ld sp, $b83c                                     ; $7739: $31 $3c $b8
	ld e, $de                                        ; $773c: $1e $de
	sbc $31                                          ; $773e: $de $31
	rst SubAFromDE                                          ; $7740: $df
	add hl, de                                       ; $7741: $19
	add b                                            ; $7742: $80
	dec e                                            ; $7743: $1d
	sub h                                            ; $7744: $94
	sub d                                            ; $7745: $92
	ld [hl-], a                                      ; $7746: $32
	ld [hl+], a                                      ; $7747: $22
	add hl, de                                       ; $7748: $19
	add hl, sp                                       ; $7749: $39
	db $d3                                           ; $774a: $d3
	add d                                            ; $774b: $82
	ld [$23ea], a                                    ; $774c: $ea $ea $23
	inc sp                                           ; $774f: $33
	or e                                             ; $7750: $b3
	sub e                                            ; $7751: $93
	sbc e                                            ; $7752: $9b
	db $db                                           ; $7753: $db
	set 5, e                                         ; $7754: $cb $eb
	ld b, $96                                        ; $7756: $06 $96
	ld d, $1c                                        ; $7758: $16 $1c
	dec d                                            ; $775a: $15
	sbc l                                            ; $775b: $9d
	db $db                                           ; $775c: $db
	cp l                                             ; $775d: $bd
	ld d, $16                                        ; $775e: $16 $16
	sub h                                            ; $7760: $94
	sub h                                            ; $7761: $94
	rst SubAFromDE                                          ; $7762: $df
	sbc h                                            ; $7763: $9c
	ld a, a                                          ; $7764: $7f
	rst FarCall                                          ; $7765: $f7
	rst SubAFromDE                                          ; $7766: $df
	ld a, a                                          ; $7767: $7f
	sbc h                                            ; $7768: $9c
	ld a, d                                          ; $7769: $7a
	ld a, l                                          ; $776a: $7d
	rst $38                                          ; $776b: $ff
	ld a, e                                          ; $776c: $7b
	inc bc                                           ; $776d: $03
	sbc $7f                                          ; $776e: $de $7f
	call c, $8fff                                    ; $7770: $dc $ff $8f
	rst SubAFromDE                                          ; $7773: $df
	adc a                                            ; $7774: $8f
	rlca                                             ; $7775: $07
	ld c, a                                          ; $7776: $4f
	ld d, l                                          ; $7777: $55
	xor d                                            ; $7778: $aa
	ld b, l                                          ; $7779: $45
	xor d                                            ; $777a: $aa
	ldh [$f0], a                                     ; $777b: $e0 $f0
	ld hl, sp-$50                                    ; $777d: $f8 $b0
	ld [$faf5], a                                    ; $777f: $ea $f5 $fa
	db $fd                                           ; $7782: $fd
	ld a, d                                          ; $7783: $7a
	res 2, e                                         ; $7784: $cb $93
	ldh [rLCDC], a                                   ; $7786: $e0 $40
	and a                                            ; $7788: $a7
	inc bc                                           ; $7789: $03
	ld bc, $0000                                     ; $778a: $01 $00 $00
	rlca                                             ; $778d: $07
	rra                                              ; $778e: $1f
	cp a                                             ; $778f: $bf
	ld e, b                                          ; $7790: $58
	db $fc                                           ; $7791: $fc
	ld a, e                                          ; $7792: $7b
	sub $97                                          ; $7793: $d6 $97
	inc c                                            ; $7795: $0c
	nop                                              ; $7796: $00
	nop                                              ; $7797: $00
	inc bc                                           ; $7798: $03
	jp $00e0                                         ; $7799: $c3 $e0 $00


	nop                                              ; $779c: $00
	ld a, c                                          ; $779d: $79
	adc l                                            ; $779e: $8d
	sbc c                                            ; $779f: $99
	db $fc                                           ; $77a0: $fc
	inc a                                            ; $77a1: $3c
	rra                                              ; $77a2: $1f
	cp $7b                                           ; $77a3: $fe $7b
	ld a, [hl]                                       ; $77a5: $7e
	call nc, $97ff                                   ; $77a6: $d4 $ff $97
	add e                                            ; $77a9: $83
	ld d, a                                          ; $77aa: $57
	cp e                                             ; $77ab: $bb
	ret nc                                           ; $77ac: $d0

	ld a, e                                          ; $77ad: $7b
	rst SubAFromBC                                          ; $77ae: $e7
	di                                               ; $77af: $f3
	ldh a, [$dd]                                     ; $77b0: $f0 $dd
	rst $38                                          ; $77b2: $ff
	ld a, h                                          ; $77b3: $7c
	xor l                                            ; $77b4: $ad
	ld a, l                                          ; $77b5: $7d
	ld l, [hl]                                       ; $77b6: $6e
	sub a                                            ; $77b7: $97
	xor d                                            ; $77b8: $aa
	call c, $c7fe                                    ; $77b9: $dc $fe $c7
	ld h, a                                          ; $77bc: $67
	ldh a, [$e0]                                     ; $77bd: $f0 $e0
	add b                                            ; $77bf: $80
	ld [hl], c                                       ; $77c0: $71
	sub e                                            ; $77c1: $93
	sub l                                            ; $77c2: $95
	rrca                                             ; $77c3: $0f
	rra                                              ; $77c4: $1f
	ld a, a                                          ; $77c5: $7f
	xor e                                            ; $77c6: $ab
	ld e, l                                          ; $77c7: $5d
	cpl                                              ; $77c8: $2f
	ld e, a                                          ; $77c9: $5f
	ccf                                              ; $77ca: $3f
	ld d, a                                          ; $77cb: $57
	dec hl                                           ; $77cc: $2b
	ld l, [hl]                                       ; $77cd: $6e
	ld [hl], b                                       ; $77ce: $70
	sbc $ff                                          ; $77cf: $de $ff
	rst SubAFromDE                                          ; $77d1: $df
	ld b, d                                          ; $77d2: $42
	sbc h                                            ; $77d3: $9c
	call nz, $8484                                   ; $77d4: $c4 $84 $84
	sbc $a4                                          ; $77d7: $de $a4
	reti                                             ; $77d9: $d9


	rst $38                                          ; $77da: $ff
	sub a                                            ; $77db: $97
	dec h                                            ; $77dc: $25
	ld b, l                                          ; $77dd: $45
	ld c, e                                          ; $77de: $4b
	ld c, d                                          ; $77df: $4a
	adc e                                            ; $77e0: $8b
	sub l                                            ; $77e1: $95
	sub l                                            ; $77e2: $95
	sub a                                            ; $77e3: $97
	halt                                             ; $77e4: $76
	ret nz                                           ; $77e5: $c0

	ld a, d                                          ; $77e6: $7a
	cp a                                             ; $77e7: $bf

Call_052_77e8:
	add b                                            ; $77e8: $80
	ld a, [$ee67]                                    ; $77e9: $fa $67 $ee
	cp $d7                                           ; $77ec: $fe $d7
	jp c, $edf9                                      ; $77ee: $da $f9 $ed

	db $ed                                           ; $77f1: $ed
	cp $f6                                           ; $77f2: $fe $f6
	and $ee                                          ; $77f4: $e6 $ee
	rst AddAOntoHL                                          ; $77f6: $ef
	rst GetHLinHL                                          ; $77f7: $cf
	set 1, e                                         ; $77f8: $cb $cb
	rst SubAFromBC                                          ; $77fa: $e7
	xor a                                            ; $77fb: $af
	rst AddAOntoHL                                          ; $77fc: $ef
	cpl                                              ; $77fd: $2f
	ld e, a                                          ; $77fe: $5f
	cp a                                             ; $77ff: $bf
	ccf                                              ; $7800: $3f
	ld a, a                                          ; $7801: $7f
	ld l, $6c                                        ; $7802: $2e $6c
	ld l, b                                          ; $7804: $68
	ld l, b                                          ; $7805: $68
	jr z, jr_052_7808                                ; $7806: $28 $00

jr_052_7808:
	rst SubAFromDE                                          ; $7808: $df
	add b                                            ; $7809: $80
	ld a, a                                          ; $780a: $7f
	ld b, h                                          ; $780b: $44
	sub l                                            ; $780c: $95
	ei                                               ; $780d: $fb
	rst $38                                          ; $780e: $ff
	jp nz, $c1c1                                     ; $780f: $c2 $c1 $c1

	ldh [rP1], a                                     ; $7812: $e0 $00
	ld bc, $0107                                     ; $7814: $01 $07 $01
	ld a, e                                          ; $7817: $7b
	ld e, e                                          ; $7818: $5b
	adc h                                            ; $7819: $8c
	nop                                              ; $781a: $00
	rst $38                                          ; $781b: $ff
	db $fc                                           ; $781c: $fc
	or $f7                                           ; $781d: $f6 $f7
	rra                                              ; $781f: $1f
	ld e, a                                          ; $7820: $5f
	rra                                              ; $7821: $1f
	add e                                            ; $7822: $83
	nop                                              ; $7823: $00
	rst $38                                          ; $7824: $ff
	rst FarCall                                          ; $7825: $f7
	inc [hl]                                         ; $7826: $34
	jr c, jr_052_78a1                                ; $7827: $38 $78

	ld [hl], b                                       ; $7829: $70
	ld h, c                                          ; $782a: $61
	reti                                             ; $782b: $d9


	rst AddAOntoHL                                          ; $782c: $ef
	db $db                                           ; $782d: $db
	rst $38                                          ; $782e: $ff
	sbc e                                            ; $782f: $9b
	ld d, c                                          ; $7830: $51
	rst $38                                          ; $7831: $ff
	sbc a                                            ; $7832: $9f
	ccf                                              ; $7833: $3f
	ld [hl], a                                       ; $7834: $77
	ld e, $9e                                        ; $7835: $1e $9e
	cp e                                             ; $7837: $bb
	ld a, e                                          ; $7838: $7b
	ldh a, [hDisp1_OBP0]                                     ; $7839: $f0 $93
	rst SubAFromBC                                          ; $783b: $e7
	pop hl                                           ; $783c: $e1
	ldh [$f0], a                                     ; $783d: $e0 $f0
	dec sp                                           ; $783f: $3b
	cp $c6                                           ; $7840: $fe $c6
	jp nz, $c0c0                                     ; $7842: $c2 $c0 $c0

	ldh [$e0], a                                     ; $7845: $e0 $e0
	ld [hl], c                                       ; $7847: $71
	jp hl                                            ; $7848: $e9


	sbc b                                            ; $7849: $98
	pop bc                                           ; $784a: $c1
	ld bc, wCurrTextLinePixelIdx                                     ; $784b: $01 $00 $d8
	ret c                                            ; $784e: $d8

	ld c, b                                          ; $784f: $48
	ld c, b                                          ; $7850: $48
	sbc $01                                          ; $7851: $de $01
	add c                                            ; $7853: $81
	nop                                              ; $7854: $00
	sbc $ff                                          ; $7855: $de $ff
	rst $38                                          ; $7857: $ff
	ccf                                              ; $7858: $3f
	rla                                              ; $7859: $17
	inc bc                                           ; $785a: $03
	nop                                              ; $785b: $00
	nop                                              ; $785c: $00
	jp nc, $3051                                     ; $785d: $d2 $51 $30

	jr nc, jr_052_7872                               ; $7860: $30 $10

	db $10                                           ; $7862: $10
	add b                                            ; $7863: $80
	nop                                              ; $7864: $00
	db $eb                                           ; $7865: $eb
	rst FarCall                                          ; $7866: $f7
	rst FarCall                                          ; $7867: $f7
	rst $38                                          ; $7868: $ff
	rst $38                                          ; $7869: $ff
	rst JumpTable                                          ; $786a: $c7
	inc bc                                           ; $786b: $03
	inc bc                                           ; $786c: $03
	xor d                                            ; $786d: $aa
	sub h                                            ; $786e: $94
	call nc, $044c                                   ; $786f: $d4 $4c $04

jr_052_7872:
	sbc $01                                          ; $7872: $de $01
	rst SubAFromHL                                          ; $7874: $d7
	rst $38                                          ; $7875: $ff
	ld a, c                                          ; $7876: $79
	or e                                             ; $7877: $b3
	ld a, c                                          ; $7878: $79
	ld c, l                                          ; $7879: $4d
	sub $ff                                          ; $787a: $d6 $ff
	ld a, b                                          ; $787c: $78
	sub d                                            ; $787d: $92
	sub l                                            ; $787e: $95
	rlca                                             ; $787f: $07
	inc bc                                           ; $7880: $03
	call nc, $dcf9                                   ; $7881: $d4 $f9 $dc
	xor c                                            ; $7884: $a9
	ld b, b                                          ; $7885: $40
	and l                                            ; $7886: $a5
	adc $be                                          ; $7887: $ce $be
	ld a, d                                          ; $7889: $7a
	xor h                                            ; $788a: $ac
	ld [hl], l                                       ; $788b: $75
	xor l                                            ; $788c: $ad
	ld a, a                                          ; $788d: $7f
	adc d                                            ; $788e: $8a
	add a                                            ; $788f: $87
	ld e, a                                          ; $7890: $5f
	and a                                            ; $7891: $a7
	dec bc                                           ; $7892: $0b
	daa                                              ; $7893: $27
	ld b, a                                          ; $7894: $47
	ld d, $54                                        ; $7895: $16 $54
	ld h, b                                          ; $7897: $60
	and b                                            ; $7898: $a0
	ld e, b                                          ; $7899: $58
	db $f4                                           ; $789a: $f4
	ret c                                            ; $789b: $d8

	cp b                                             ; $789c: $b8
	jp hl                                            ; $789d: $e9


	ei                                               ; $789e: $fb
	pop bc                                           ; $789f: $c1
	rst SubAFromHL                                          ; $78a0: $d7

jr_052_78a1:
	xor a                                            ; $78a1: $af
	ld e, $ac                                        ; $78a2: $1e $ac
	ld a, [hl]                                       ; $78a4: $7e
	dec e                                            ; $78a5: $1d
	dec hl                                           ; $78a6: $2b
	ccf                                              ; $78a7: $3f
	ld a, e                                          ; $78a8: $7b
	ld [hl], d                                       ; $78a9: $72
	ld a, a                                          ; $78aa: $7f
	cp $9c                                           ; $78ab: $fe $9c
	cp $dc                                           ; $78ad: $fe $dc
	ei                                               ; $78af: $fb
	db $dd                                           ; $78b0: $dd
	rst $38                                          ; $78b1: $ff
	ld a, [hl]                                       ; $78b2: $7e
	rrca                                             ; $78b3: $0f
	ld a, d                                          ; $78b4: $7a
	sbc b                                            ; $78b5: $98
	db $db                                           ; $78b6: $db
	rst $38                                          ; $78b7: $ff

jr_052_78b8:
	sbc b                                            ; $78b8: $98
	cp $3f                                           ; $78b9: $fe $3f
	rst $38                                          ; $78bb: $ff
	db $eb                                           ; $78bc: $eb
	push de                                          ; $78bd: $d5
	xor e                                            ; $78be: $ab
	push de                                          ; $78bf: $d5
	ld l, h                                          ; $78c0: $6c

Jump_052_78c1:
	ld h, b                                          ; $78c1: $60
	ld a, h                                          ; $78c2: $7c
	ccf                                              ; $78c3: $3f
	sub [hl]                                         ; $78c4: $96

jr_052_78c5:
	sbc a                                            ; $78c5: $9f
	jr nz, jr_052_78b8                               ; $78c6: $20 $f0

	ld hl, sp-$03                                    ; $78c8: $f8 $fd
	cp $fd                                           ; $78ca: $fe $fd
	cp d                                             ; $78cc: $ba
	ld [hl], l                                       ; $78cd: $75
	reti                                             ; $78ce: $d9


	rst $38                                          ; $78cf: $ff
	sub a                                            ; $78d0: $97
	cpl                                              ; $78d1: $2f
	rra                                              ; $78d2: $1f
	xor e                                            ; $78d3: $ab
	ld d, a                                          ; $78d4: $57
	xor a                                            ; $78d5: $af
	ld e, a                                          ; $78d6: $5f
	xor e                                            ; $78d7: $ab
	push de                                          ; $78d8: $d5
	reti                                             ; $78d9: $d9


	rst $38                                          ; $78da: $ff
	rst SubAFromDE                                          ; $78db: $df
	and h                                            ; $78dc: $a4
	sbc d                                            ; $78dd: $9a
	call nc, $d2d2                                   ; $78de: $d4 $d2 $d2
	ld a, [$d8fa]                                    ; $78e1: $fa $fa $d8
	rst $38                                          ; $78e4: $ff
	sbc e                                            ; $78e5: $9b
	sub e                                            ; $78e6: $93
	and e                                            ; $78e7: $a3
	and a                                            ; $78e8: $a7
	and a                                            ; $78e9: $a7
	sbc $af                                          ; $78ea: $de $af
	sbc [hl]                                         ; $78ec: $9e
	cp a                                             ; $78ed: $bf
	ld a, d                                          ; $78ee: $7a
	ret nz                                           ; $78ef: $c0

	ld a, [hl]                                       ; $78f0: $7e
	add c                                            ; $78f1: $81
	rst SubAFromDE                                          ; $78f2: $df
	ld hl, sp-$66                                    ; $78f3: $f8 $9a
	db $fc                                           ; $78f5: $fc
	db $ed                                           ; $78f6: $ed
	and e                                            ; $78f7: $a3
	and e                                            ; $78f8: $a3
	add c                                            ; $78f9: $81
	sbc $83                                          ; $78fa: $de $83
	sbc d                                            ; $78fc: $9a
	and e                                            ; $78fd: $a3
	set 1, c                                         ; $78fe: $cb $c9
	ret                                              ; $7900: $c9


	set 3, l                                         ; $7901: $cb $dd
	jp z, $ffda                                      ; $7903: $ca $da $ff

	sbc [hl]                                         ; $7906: $9e
	rst AddAOntoHL                                          ; $7907: $ef
	ld sp, hl                                        ; $7908: $f9
	db $db                                           ; $7909: $db
	ldh [$df], a                                     ; $790a: $e0 $df
	ret nz                                           ; $790c: $c0

	ld sp, hl                                        ; $790d: $f9
	halt                                             ; $790e: $76
	db $fc                                           ; $790f: $fc
	sbc e                                            ; $7910: $9b
	ld b, c                                          ; $7911: $41
	rlca                                             ; $7912: $07
	ld a, a                                          ; $7913: $7f
	rra                                              ; $7914: $1f
	halt                                             ; $7915: $76
	or e                                             ; $7916: $b3
	sbc h                                            ; $7917: $9c
	inc bc                                           ; $7918: $03
	ld b, a                                          ; $7919: $47
	cpl                                              ; $791a: $2f
	ld h, d                                          ; $791b: $62
	ld e, b                                          ; $791c: $58
	ld a, a                                          ; $791d: $7f
	db $dd                                           ; $791e: $dd
	call c, $9d80                                    ; $791f: $dc $80 $9d
	ret nz                                           ; $7922: $c0

	ld hl, sp+$79                                    ; $7923: $f8 $79
	db $fd                                           ; $7925: $fd
	sub d                                            ; $7926: $92
	db $fd                                           ; $7927: $fd
	jp c, $e2da                                      ; $7928: $da $da $e2

	ldh a, [$58]                                     ; $792b: $f0 $58
	ld e, h                                          ; $792d: $5c
	ld c, [hl]                                       ; $792e: $4e
	ld l, a                                          ; $792f: $6f
	ld a, a                                          ; $7930: $7f
	ld e, e                                          ; $7931: $5b
	ld [hl], a                                       ; $7932: $77
	ld [bc], a                                       ; $7933: $02
	ld a, e                                          ; $7934: $7b
	call $809a                                       ; $7935: $cd $9a $80
	ldh [$f8], a                                     ; $7938: $e0 $f8
	ld a, [hl]                                       ; $793a: $7e
	nop                                              ; $793b: $00
	ld a, d                                          ; $793c: $7a
	call z, $e27f                                    ; $793d: $cc $7f $e2
	sub e                                            ; $7940: $93
	ldh a, [$cc]                                     ; $7941: $f0 $cc
	jr nz, jr_052_78c5                               ; $7943: $20 $80

	nop                                              ; $7945: $00
	ret nz                                           ; $7946: $c0

	nop                                              ; $7947: $00
	inc bc                                           ; $7948: $03
	rrca                                             ; $7949: $0f
	ld a, b                                          ; $794a: $78
	nop                                              ; $794b: $00
	ld h, b                                          ; $794c: $60
	ld [hl], a                                       ; $794d: $77
	or e                                             ; $794e: $b3
	adc [hl]                                         ; $794f: $8e
	rlca                                             ; $7950: $07
	ccf                                              ; $7951: $3f
	rlca                                             ; $7952: $07
	rrca                                             ; $7953: $0f
	rra                                              ; $7954: $1f
	scf                                              ; $7955: $37
	db $e4                                           ; $7956: $e4
	add sp, -$38                                     ; $7957: $e8 $c8
	sub b                                            ; $7959: $90
	inc bc                                           ; $795a: $03
	ld b, $0e                                        ; $795b: $06 $0e
	inc e                                            ; $795d: $1c
	ld a, h                                          ; $795e: $7c
	ld hl, sp-$08                                    ; $795f: $f8 $f8
	ld [hl], l                                       ; $7961: $75
	add sp, $7a                                      ; $7962: $e8 $7a
	jp c, $03df                                      ; $7964: $da $df $03

	ld h, a                                          ; $7967: $67
	sub c                                            ; $7968: $91
	reti                                             ; $7969: $d9


	rst $38                                          ; $796a: $ff
	halt                                             ; $796b: $76
	ld b, h                                          ; $796c: $44
	db $fd                                           ; $796d: $fd
	sub $ff                                          ; $796e: $d6 $ff
	sbc $7f                                          ; $7970: $de $7f
	rst SubAFromDE                                          ; $7972: $df
	ccf                                              ; $7973: $3f
	sub a                                            ; $7974: $97
	and b                                            ; $7975: $a0
	ret nc                                           ; $7976: $d0

	and b                                            ; $7977: $a0
	add h                                            ; $7978: $84
	ld b, b                                          ; $7979: $40
	xor d                                            ; $797a: $aa
	ld d, a                                          ; $797b: $57
	rst SubAFromBC                                          ; $797c: $e7
	sbc $ff                                          ; $797d: $de $ff
	ld a, [hl]                                       ; $797f: $7e
	push de                                          ; $7980: $d5
	sbc h                                            ; $7981: $9c
	db $fd                                           ; $7982: $fd
	ld hl, sp-$08                                    ; $7983: $f8 $f8
	ld [hl], a                                       ; $7985: $77
	ld [$7b9b], a                                    ; $7986: $ea $9b $7b
	pop bc                                           ; $7989: $c1
	add b                                            ; $798a: $80
	ret nz                                           ; $798b: $c0

	ld a, d                                          ; $798c: $7a
	dec b                                            ; $798d: $05
	sbc d                                            ; $798e: $9a
	add b                                            ; $798f: $80
	add h                                            ; $7990: $84
	ld a, $7f                                        ; $7991: $3e $7f
	ccf                                              ; $7993: $3f
	halt                                             ; $7994: $76
	sbc e                                            ; $7995: $9b
	ld a, d                                          ; $7996: $7a
	ld e, [hl]                                       ; $7997: $5e
	ret c                                            ; $7998: $d8

	rst $38                                          ; $7999: $ff
	sbc c                                            ; $799a: $99
	sub [hl]                                         ; $799b: $96
	rst SubAFromDE                                          ; $799c: $df
	cp $ff                                           ; $799d: $fe $ff
	sbc a                                            ; $799f: $9f
	inc hl                                           ; $79a0: $23
	rst SubAFromHL                                          ; $79a1: $d7
	rst $38                                          ; $79a2: $ff
	ld a, h                                          ; $79a3: $7c
	ld e, e                                          ; $79a4: $5b
	sbc d                                            ; $79a5: $9a
	xor d                                            ; $79a6: $aa
	ld d, l                                          ; $79a7: $55
	ld [$f7fd], a                                    ; $79a8: $ea $fd $f7
	ld [hl], d                                       ; $79ab: $72
	sbc c                                            ; $79ac: $99
	ret c                                            ; $79ad: $d8

	rst $38                                          ; $79ae: $ff
	ld a, d                                          ; $79af: $7a
	db $e3                                           ; $79b0: $e3
	reti                                             ; $79b1: $d9


	rst $38                                          ; $79b2: $ff
	sbc [hl]                                         ; $79b3: $9e
	ld sp, hl                                        ; $79b4: $f9
	ld a, e                                          ; $79b5: $7b
	daa                                              ; $79b6: $27
	sbc l                                            ; $79b7: $9d
	nop                                              ; $79b8: $00
	rrca                                             ; $79b9: $0f
	ld [hl], c                                       ; $79ba: $71
	push hl                                          ; $79bb: $e5
	rst SubAFromDE                                          ; $79bc: $df
	rst $38                                          ; $79bd: $ff
	add b                                            ; $79be: $80
	ldh a, [$c0]                                     ; $79bf: $f0 $c0
	add b                                            ; $79c1: $80
	db $e3                                           ; $79c2: $e3
	sbc $6e                                          ; $79c3: $de $6e
	ld [hl], $1a                                     ; $79c5: $36 $1a
	or $fd                                           ; $79c7: $f6 $fd
	cp $ff                                           ; $79c9: $fe $ff
	pop hl                                           ; $79cb: $e1
	pop af                                           ; $79cc: $f1
	ld sp, hl                                        ; $79cd: $f9
	db $fd                                           ; $79ce: $fd
	rrca                                             ; $79cf: $0f
	inc bc                                           ; $79d0: $03
	ld bc, $b7a7                                     ; $79d1: $01 $a7 $b7
	sub a                                            ; $79d4: $97
	rst SubAFromDE                                          ; $79d5: $df
	db $db                                           ; $79d6: $db
	ret                                              ; $79d7: $c9


	ret                                              ; $79d8: $c9


	jp hl                                            ; $79d9: $e9


	jp z, $eaca                                      ; $79da: $ca $ca $ea

	ld [$ee9e], a                                    ; $79dd: $ea $9e $ee
	sbc $ff                                          ; $79e0: $de $ff
	sbc h                                            ; $79e2: $9c
	db $e3                                           ; $79e3: $e3
	ret nz                                           ; $79e4: $c0

	rst JumpTable                                          ; $79e5: $c7
	ld [hl], l                                       ; $79e6: $75
	or a                                             ; $79e7: $b7
	sub [hl]                                         ; $79e8: $96
	ccf                                              ; $79e9: $3f
	nop                                              ; $79ea: $00
	nop                                              ; $79eb: $00
	ld c, $1f                                        ; $79ec: $0e $1f
	ccf                                              ; $79ee: $3f
	ccf                                              ; $79ef: $3f
	rst $38                                          ; $79f0: $ff
	rst $38                                          ; $79f1: $ff
	ld a, d                                          ; $79f2: $7a
	add $9e                                          ; $79f3: $c6 $9e
	pop bc                                           ; $79f5: $c1
	ld [hl], a                                       ; $79f6: $77
	add b                                            ; $79f7: $80
	cp $9d                                           ; $79f8: $fe $9d
	add c                                            ; $79fa: $81
	db $e3                                           ; $79fb: $e3
	ld [hl], l                                       ; $79fc: $75
	ei                                               ; $79fd: $fb
	ld l, a                                          ; $79fe: $6f
	or [hl]                                          ; $79ff: $b6
	sbc e                                            ; $7a00: $9b
	rst $38                                          ; $7a01: $ff
	jr c, jr_052_7a64                                ; $7a02: $38 $60

	add b                                            ; $7a04: $80
	ld a, e                                          ; $7a05: $7b
	ld [hl+], a                                      ; $7a06: $22
	sbc [hl]                                         ; $7a07: $9e
	inc bc                                           ; $7a08: $03
	ld h, e                                          ; $7a09: $63
	adc [hl]                                         ; $7a0a: $8e
	ld [hl], b                                       ; $7a0b: $70
	ldh a, [hDisp0_OBP1]                                     ; $7a0c: $f0 $87
	add sp, -$68                                     ; $7a0e: $e8 $98
	inc d                                            ; $7a10: $14
	ei                                               ; $7a11: $fb
	rst FarCall                                          ; $7a12: $f7
	rst $38                                          ; $7a13: $ff
	ei                                               ; $7a14: $fb
	rst SubAFromDE                                          ; $7a15: $df
	ld e, e                                          ; $7a16: $5b
	rst SubAFromDE                                          ; $7a17: $df
	db $dd                                           ; $7a18: $dd
	rst FarCall                                          ; $7a19: $f7
	rst $38                                          ; $7a1a: $ff
	rst FarCall                                          ; $7a1b: $f7
	dec bc                                           ; $7a1c: $0b
	dec bc                                           ; $7a1d: $0b
	sbc e                                            ; $7a1e: $9b
	sbc e                                            ; $7a1f: $9b
	ld c, h                                          ; $7a20: $4c
	inc sp                                           ; $7a21: $33
	sbc b                                            ; $7a22: $98
	adc $e3                                          ; $7a23: $ce $e3
	ld hl, sp+$7b                                    ; $7a25: $f8 $7b
	ldh [c], a                                       ; $7a27: $e2
	sbc l                                            ; $7a28: $9d
	db $e3                                           ; $7a29: $e3
	ldh a, [rPCM34]                                  ; $7a2a: $f0 $77
	ld l, l                                          ; $7a2c: $6d
	sub c                                            ; $7a2d: $91
	rrca                                             ; $7a2e: $0f
	add e                                            ; $7a2f: $83
	rst $38                                          ; $7a30: $ff
	ld b, $0c                                        ; $7a31: $06 $0c
	ld a, c                                          ; $7a33: $79
	db $e3                                           ; $7a34: $e3
	rrca                                             ; $7a35: $0f
	rst $38                                          ; $7a36: $ff
	rst $38                                          ; $7a37: $ff
	pop bc                                           ; $7a38: $c1
	inc bc                                           ; $7a39: $03
	rlca                                             ; $7a3a: $07
	sbc a                                            ; $7a3b: $9f
	ld [hl], a                                       ; $7a3c: $77
	call $309c                                       ; $7a3d: $cd $9c $30
	ld [hl], b                                       ; $7a40: $70
	ldh a, [$73]                                     ; $7a41: $f0 $73
	call nz, $5c7a                                   ; $7a43: $c4 $7a $5c
	ld a, e                                          ; $7a46: $7b
	reti                                             ; $7a47: $d9


	sbc l                                            ; $7a48: $9d
	add a                                            ; $7a49: $87
	ld bc, $07dd                                     ; $7a4a: $01 $dd $07
	sub d                                            ; $7a4d: $92
	rrca                                             ; $7a4e: $0f
	sbc [hl]                                         ; $7a4f: $9e
	cp $fe                                           ; $7a50: $fe $fe
	inc bc                                           ; $7a52: $03
	ld [bc], a                                       ; $7a53: $02
	ld [bc], a                                       ; $7a54: $02
	inc b                                            ; $7a55: $04
	inc b                                            ; $7a56: $04
	ld [$f098], sp                                   ; $7a57: $08 $98 $f0
	pop hl                                           ; $7a5a: $e1
	ld a, e                                          ; $7a5b: $7b
	ld b, c                                          ; $7a5c: $41
	sbc $01                                          ; $7a5d: $de $01
	ld h, [hl]                                       ; $7a5f: $66
	or b                                             ; $7a60: $b0
	ld h, d                                          ; $7a61: $62
	ret nz                                           ; $7a62: $c0

	db $dd                                           ; $7a63: $dd

jr_052_7a64:
	ccf                                              ; $7a64: $3f
	ld [hl], h                                       ; $7a65: $74
	inc l                                            ; $7a66: $2c
	sub a                                            ; $7a67: $97
	db $d3                                           ; $7a68: $d3
	and $d2                                          ; $7a69: $e6 $d2
	and h                                            ; $7a6b: $a4
	ld a, [bc]                                       ; $7a6c: $0a
	call c, Call_052_54aa                            ; $7a6d: $dc $aa $54
	ld a, b                                          ; $7a70: $78
	ld [hl], h                                       ; $7a71: $74
	ld a, [hl]                                       ; $7a72: $7e
	add e                                            ; $7a73: $83
	sub h                                            ; $7a74: $94
	and b                                            ; $7a75: $a0
	ret nz                                           ; $7a76: $c0

	add b                                            ; $7a77: $80
	ld a, h                                          ; $7a78: $7c
	xor [hl]                                         ; $7a79: $ae
	ld d, a                                          ; $7a7a: $57
	cpl                                              ; $7a7b: $2f
	reti                                             ; $7a7c: $d9


	db $f4                                           ; $7a7d: $f4
	ld l, d                                          ; $7a7e: $6a
	inc [hl]                                         ; $7a7f: $34
	ld [hl], h                                       ; $7a80: $74
	ld l, $96                                        ; $7a81: $2e $96
	ld b, $0b                                        ; $7a83: $06 $0b
	dec d                                            ; $7a85: $15
	dec bc                                           ; $7a86: $0b
	db $fd                                           ; $7a87: $fd
	rst $38                                          ; $7a88: $ff
	cp $fd                                           ; $7a89: $fe $fd
	rst FarCall                                          ; $7a8b: $f7
	ld [hl], e                                       ; $7a8c: $73
	sbc [hl]                                         ; $7a8d: $9e
	db $db                                           ; $7a8e: $db
	rst $38                                          ; $7a8f: $ff
	sbc e                                            ; $7a90: $9b
	ld a, [hl]                                       ; $7a91: $7e
	ei                                               ; $7a92: $fb
	push de                                          ; $7a93: $d5
	xor d                                            ; $7a94: $aa
	ld a, d                                          ; $7a95: $7a
	call $ee5b                                       ; $7a96: $cd $5b $ee
	sbc c                                            ; $7a99: $99
	or a                                             ; $7a9a: $b7
	cp a                                             ; $7a9b: $bf
	ld a, a                                          ; $7a9c: $7f
	db $db                                           ; $7a9d: $db
	ld a, a                                          ; $7a9e: $7f
	cp a                                             ; $7a9f: $bf
	reti                                             ; $7aa0: $d9


	rst $38                                          ; $7aa1: $ff
	ld a, c                                          ; $7aa2: $79
	xor e                                            ; $7aa3: $ab
	rst SubAFromDE                                          ; $7aa4: $df
	ldh a, [$de]                                     ; $7aa5: $f0 $de
	ldh [$5e], a                                     ; $7aa7: $e0 $5e
	ld e, e                                          ; $7aa9: $5b

Call_052_7aaa:
	db $db                                           ; $7aaa: $db
	rst $38                                          ; $7aab: $ff
	rst SubAFromDE                                          ; $7aac: $df
	add b                                            ; $7aad: $80
	ld l, e                                          ; $7aae: $6b
	add b                                            ; $7aaf: $80
	ld a, e                                          ; $7ab0: $7b
	pop hl                                           ; $7ab1: $e1
	ld [hl], a                                       ; $7ab2: $77
	ldh [$f9], a                                     ; $7ab3: $e0 $f9
	sub [hl]                                         ; $7ab5: $96
	ld h, l                                          ; $7ab6: $65
	dec h                                            ; $7ab7: $25
	dec d                                            ; $7ab8: $15
	dec c                                            ; $7ab9: $0d
	dec c                                            ; $7aba: $0d
	dec b                                            ; $7abb: $05
	dec b                                            ; $7abc: $05
	ld [bc], a                                       ; $7abd: $02
	ld a, a                                          ; $7abe: $7f
	ld a, b                                          ; $7abf: $78
	ldh [c], a                                       ; $7ac0: $e2
	ld a, [hl]                                       ; $7ac1: $7e
	rlca                                             ; $7ac2: $07
	ld a, [hl]                                       ; $7ac3: $7e
	ld b, $97                                        ; $7ac4: $06 $97
	ld a, a                                          ; $7ac6: $7f
	rst AddAOntoHL                                          ; $7ac7: $ef
	rst SubAFromHL                                          ; $7ac8: $d7
	db $d3                                           ; $7ac9: $d3
	bit 7, e                                         ; $7aca: $cb $7b
	ccf                                              ; $7acc: $3f
	xor l                                            ; $7acd: $ad
	halt                                             ; $7ace: $76
	jr c, @-$76                                      ; $7acf: $38 $88

	ld a, a                                          ; $7ad1: $7f
	db $ed                                           ; $7ad2: $ed
	db $ed                                           ; $7ad3: $ed
	or $83                                           ; $7ad4: $f6 $83
	dec bc                                           ; $7ad6: $0b
	scf                                              ; $7ad7: $37
	ld a, c                                          ; $7ad8: $79
	dec a                                            ; $7ad9: $3d
	ld a, l                                          ; $7ada: $7d
	ccf                                              ; $7adb: $3f
	sbc l                                            ; $7adc: $9d
	rst $38                                          ; $7add: $ff
	rst FarCall                                          ; $7ade: $f7
	res 0, a                                         ; $7adf: $cb $87
	jp $c183                                         ; $7ae1: $c3 $83 $c1


	db $e3                                           ; $7ae4: $e3
	rlca                                             ; $7ae5: $07
	rrca                                             ; $7ae6: $0f
	ld e, $7b                                        ; $7ae7: $1e $7b
	ld d, a                                          ; $7ae9: $57
	ld a, a                                          ; $7aea: $7f
	cp [hl]                                          ; $7aeb: $be
	ld a, e                                          ; $7aec: $7b
	ei                                               ; $7aed: $fb
	ld [hl], l                                       ; $7aee: $75
	adc l                                            ; $7aef: $8d
	add b                                            ; $7af0: $80
	nop                                              ; $7af1: $00
	cp [hl]                                          ; $7af2: $be
	ld e, $1f                                        ; $7af3: $1e $1f
	dec e                                            ; $7af5: $1d
	ld e, $0f                                        ; $7af6: $1e $0f
	rrca                                             ; $7af8: $0f
	rra                                              ; $7af9: $1f
	inc d                                            ; $7afa: $14
	ld [de], a                                       ; $7afb: $12
	add hl, de                                       ; $7afc: $19
	inc d                                            ; $7afd: $14

Call_052_7afe:
	ld [de], a                                       ; $7afe: $12
	add hl, bc                                       ; $7aff: $09
	inc c                                            ; $7b00: $0c
	rra                                              ; $7b01: $1f
	ld c, l                                          ; $7b02: $4d
	ld l, l                                          ; $7b03: $6d
	add hl, hl                                       ; $7b04: $29
	cp e                                             ; $7b05: $bb
	sbc $7e                                          ; $7b06: $de $7e
	ld a, [hl]                                       ; $7b08: $7e
	ld [$4c4c], a                                    ; $7b09: $ea $4c $4c
	inc l                                            ; $7b0c: $2c
	xor c                                            ; $7b0d: $a9
	ld e, d                                          ; $7b0e: $5a
	ld a, $98                                        ; $7b0f: $3e $98
	jp z, $fd8a                                      ; $7b11: $ca $8a $fd

	cp $8f                                           ; $7b14: $fe $8f
	rlca                                             ; $7b16: $07
	inc bc                                           ; $7b17: $03
	ld a, c                                          ; $7b18: $79
	ld d, e                                          ; $7b19: $53
	sbc l                                            ; $7b1a: $9d
	add e                                            ; $7b1b: $83
	add c                                            ; $7b1c: $81
	ld l, a                                          ; $7b1d: $6f
	ld a, a                                          ; $7b1e: $7f
	sbc e                                            ; $7b1f: $9b
	rst FarCall                                          ; $7b20: $f7
	rst AddAOntoHL                                          ; $7b21: $ef
	rst $38                                          ; $7b22: $ff
	ld e, a                                          ; $7b23: $5f
	ld [hl], a                                       ; $7b24: $77
	cp a                                             ; $7b25: $bf
	ld a, e                                          ; $7b26: $7b
	pop bc                                           ; $7b27: $c1
	sbc [hl]                                         ; $7b28: $9e
	ldh [$dd], a                                     ; $7b29: $e0 $dd
	ld b, b                                          ; $7b2b: $40
	sbc $ff                                          ; $7b2c: $de $ff
	sbc [hl]                                         ; $7b2e: $9e
	rlca                                             ; $7b2f: $07
	ld h, l                                          ; $7b30: $65
	and h                                            ; $7b31: $a4
	db $fd                                           ; $7b32: $fd
	ld a, a                                          ; $7b33: $7f
	daa                                              ; $7b34: $27
	sbc h                                            ; $7b35: $9c
	ldh a, [$d0]                                     ; $7b36: $f0 $d0
	ldh a, [$7b]                                     ; $7b38: $f0 $7b
	add e                                            ; $7b3a: $83
	sbc [hl]                                         ; $7b3b: $9e
	ldh a, [$79]                                     ; $7b3c: $f0 $79
	and h                                            ; $7b3e: $a4
	rst SubAFromDE                                          ; $7b3f: $df
	rra                                              ; $7b40: $1f
	rst SubAFromDE                                          ; $7b41: $df
	db $10                                           ; $7b42: $10
	ld a, [hl]                                       ; $7b43: $7e
	ld e, [hl]                                       ; $7b44: $5e
	ld [hl], d                                       ; $7b45: $72
	res 3, [hl]                                      ; $7b46: $cb $9e
	pop hl                                           ; $7b48: $e1
	ld l, [hl]                                       ; $7b49: $6e
	rst JumpTable                                          ; $7b4a: $c7
	rst SubAFromDE                                          ; $7b4b: $df
	ld bc, $f897                                     ; $7b4c: $01 $97 $f8
	ei                                               ; $7b4f: $fb
	push af                                          ; $7b50: $f5
	and $ed                                          ; $7b51: $e6 $ed
	xor $d3                                          ; $7b53: $ee $d3
	xor b                                            ; $7b55: $a8
	ld l, a                                          ; $7b56: $6f
	rla                                              ; $7b57: $17
	ld a, [hl]                                       ; $7b58: $7e
	ld l, h                                          ; $7b59: $6c
	sub a                                            ; $7b5a: $97
	and b                                            ; $7b5b: $a0
	pop bc                                           ; $7b5c: $c1
	ld [bc], a                                       ; $7b5d: $02
	add l                                            ; $7b5e: $85
	ld [bc], a                                       ; $7b5f: $02
	push hl                                          ; $7b60: $e5
	jp nz, Jump_052_69e1                             ; $7b61: $c2 $e1 $69

	ld d, c                                          ; $7b64: $51
	adc a                                            ; $7b65: $8f
	ld [bc], a                                       ; $7b66: $02
	ld l, d                                          ; $7b67: $6a
	ld d, h                                          ; $7b68: $54
	cp a                                             ; $7b69: $bf
	ld e, a                                          ; $7b6a: $5f
	xor d                                            ; $7b6b: $aa
	ld d, h                                          ; $7b6c: $54
	xor b                                            ; $7b6d: $a8
	nop                                              ; $7b6e: $00
	dec d                                            ; $7b6f: $15
	dec bc                                           ; $7b70: $0b
	nop                                              ; $7b71: $00
	nop                                              ; $7b72: $00
	dec d                                            ; $7b73: $15
	dec hl                                           ; $7b74: $2b
	ld d, a                                          ; $7b75: $57
	adc $ff                                          ; $7b76: $ce $ff
	ld a, [hl]                                       ; $7b78: $7e
	ld e, $9c                                        ; $7b79: $1e $9c
	ld [$faf5], a                                    ; $7b7b: $ea $f5 $fa
	ld e, l                                          ; $7b7e: $5d
	sub b                                            ; $7b7f: $90

Jump_052_7b80:
	sbc c                                            ; $7b80: $99
	ei                                               ; $7b81: $fb
	ld a, b                                          ; $7b82: $78
	inc a                                            ; $7b83: $3c
	cp [hl]                                          ; $7b84: $be
	ld [bc], a                                       ; $7b85: $02
	ld bc, $1861                                     ; $7b86: $01 $61 $18
	sbc $c0                                          ; $7b89: $de $c0
	call c, Call_052_5180                            ; $7b8b: $dc $80 $51
	jr jr_052_7c0b                                   ; $7b8e: $18 $7b

	halt                                             ; $7b90: $76
	cp $78                                           ; $7b91: $fe $78
	and d                                            ; $7b93: $a2
	sbc $e0                                          ; $7b94: $de $e0
	sbc $f0                                          ; $7b96: $de $f0
	ld a, b                                          ; $7b98: $78
	ld c, c                                          ; $7b99: $49
	sbc [hl]                                         ; $7b9a: $9e
	db $fc                                           ; $7b9b: $fc
	ld sp, hl                                        ; $7b9c: $f9
	ld a, e                                          ; $7b9d: $7b
	push bc                                          ; $7b9e: $c5
	ld [hl], e                                       ; $7b9f: $73
	ld b, c                                          ; $7ba0: $41
	ld [hl], a                                       ; $7ba1: $77
	inc e                                            ; $7ba2: $1c
	db $fd                                           ; $7ba3: $fd
	sub l                                            ; $7ba4: $95
	cp a                                             ; $7ba5: $bf
	cp [hl]                                          ; $7ba6: $be
	cp l                                             ; $7ba7: $bd
	push de                                          ; $7ba8: $d5
	rst SubAFromHL                                          ; $7ba9: $d7
	push hl                                          ; $7baa: $e5
	db $fd                                           ; $7bab: $fd
	ld h, l                                          ; $7bac: $65
	or $f7                                           ; $7bad: $f6 $f7
	ld [hl], l                                       ; $7baf: $75
	adc d                                            ; $7bb0: $8a
	rst SubAFromDE                                          ; $7bb1: $df
	ld a, a                                          ; $7bb2: $7f
	sub b                                            ; $7bb3: $90
	adc c                                            ; $7bb4: $89
	and c                                            ; $7bb5: $a1
	ld [hl], l                                       ; $7bb6: $75
	ld sp, hl                                        ; $7bb7: $f9
	ld [hl], l                                       ; $7bb8: $75
	xor e                                            ; $7bb9: $ab
	ld d, l                                          ; $7bba: $55
	adc e                                            ; $7bbb: $8b
	rst FarCall                                          ; $7bbc: $f7
	rst SubAFromDE                                          ; $7bbd: $df
	adc e                                            ; $7bbe: $8b
	rlca                                             ; $7bbf: $07
	adc e                                            ; $7bc0: $8b
	ld d, a                                          ; $7bc1: $57

jr_052_7bc2:
	xor a                                            ; $7bc2: $af
	ld [hl], a                                       ; $7bc3: $77
	and b                                            ; $7bc4: $a0
	rst SubAFromDE                                          ; $7bc5: $df
	ret nz                                           ; $7bc6: $c0

	sbc l                                            ; $7bc7: $9d
	ldh [$f3], a                                     ; $7bc8: $e0 $f3
	ld [hl], a                                       ; $7bca: $77
	ld a, [hl+]                                      ; $7bcb: $2a
	ld a, b                                          ; $7bcc: $78
	ld [hl], b                                       ; $7bcd: $70
	sbc b                                            ; $7bce: $98
	pop hl                                           ; $7bcf: $e1
	rst $38                                          ; $7bd0: $ff
	rst FarCall                                          ; $7bd1: $f7
	sub a                                            ; $7bd2: $97
	ld b, a                                          ; $7bd3: $47
	scf                                              ; $7bd4: $37
	ld a, e                                          ; $7bd5: $7b

Jump_052_7bd6:
	ld a, b                                          ; $7bd6: $78
	push bc                                          ; $7bd7: $c5
	rst SubAFromDE                                          ; $7bd8: $df
	db $fc                                           ; $7bd9: $fc
	sub [hl]                                         ; $7bda: $96
	ld d, h                                          ; $7bdb: $54
	inc a                                            ; $7bdc: $3c
	ld a, $7a                                        ; $7bdd: $3e $7a
	cp $fd                                           ; $7bdf: $fe $fd
	xor $ca                                          ; $7be1: $ee $ca
	adc [hl]                                         ; $7be3: $8e
	db $dd                                           ; $7be4: $dd
	adc d                                            ; $7be5: $8a
	sbc [hl]                                         ; $7be6: $9e
	adc e                                            ; $7be7: $8b
	sbc $0a                                          ; $7be8: $de $0a
	db $dd                                           ; $7bea: $dd
	ld c, $9e                                        ; $7beb: $0e $9e
	rrca                                             ; $7bed: $0f
	ld [hl], e                                       ; $7bee: $73
	ld a, [hl+]                                      ; $7bef: $2a
	rst SubAFromDE                                          ; $7bf0: $df
	ld bc, $f19e                                     ; $7bf1: $01 $9e $f1
	ld a, [$e0dd]                                    ; $7bf4: $fa $dd $e0
	sbc [hl]                                         ; $7bf7: $9e
	ld b, b                                          ; $7bf8: $40
	ld [hl], a                                       ; $7bf9: $77
	ld a, c                                          ; $7bfa: $79
	sbc $40                                          ; $7bfb: $de $40
	call c, $f1e0                                    ; $7bfd: $dc $e0 $f1
	db $db                                           ; $7c00: $db

Jump_052_7c01:
	ccf                                              ; $7c01: $3f
	sbc h                                            ; $7c02: $9c
	ld e, [hl]                                       ; $7c03: $5e
	ld a, [hl]                                       ; $7c04: $7e
	db $10                                           ; $7c05: $10
	call c, $9820                                    ; $7c06: $dc $20 $98
	ld h, b                                          ; $7c09: $60
	ld b, b                                          ; $7c0a: $40

jr_052_7c0b:
	pop bc                                           ; $7c0b: $c1
	add e                                            ; $7c0c: $83
	add e                                            ; $7c0d: $83
	inc bc                                           ; $7c0e: $03
	inc bc                                           ; $7c0f: $03
	sbc $07                                          ; $7c10: $de $07
	ld a, c                                          ; $7c12: $79
	ld a, l                                          ; $7c13: $7d

jr_052_7c14:
	sbc $03                                          ; $7c14: $de $03
	rst SubAFromDE                                          ; $7c16: $df
	rlca                                             ; $7c17: $07
	sub [hl]                                         ; $7c18: $96
	ld c, [hl]                                       ; $7c19: $4e
	cp [hl]                                          ; $7c1a: $be
	jr nz, @+$62                                     ; $7c1b: $20 $60

	ld b, d                                          ; $7c1d: $42
	dec b                                            ; $7c1e: $05
	inc bc                                           ; $7c1f: $03
	add l                                            ; $7c20: $85
	pop af                                           ; $7c21: $f1
	ld l, a                                          ; $7c22: $6f
	jr jr_052_7bc2                                   ; $7c23: $18 $9d

	nop                                              ; $7c25: $00
	ld h, d                                          ; $7c26: $62
	ld a, e                                          ; $7c27: $7b
	ld a, $9a                                        ; $7c28: $3e $9a
	and b                                            ; $7c2a: $a0
	ld d, b                                          ; $7c2b: $50
	ldh a, [$f8]                                     ; $7c2c: $f0 $f8
	add c                                            ; $7c2e: $81
	ld [hl], l                                       ; $7c2f: $75
	adc a                                            ; $7c30: $8f
	ld [hl], a                                       ; $7c31: $77
	ld l, h                                          ; $7c32: $6c
	rst $38                                          ; $7c33: $ff
	sbc d                                            ; $7c34: $9a
	inc e                                            ; $7c35: $1c
	ld e, $bf                                        ; $7c36: $1e $bf
	ld a, a                                          ; $7c38: $7f
	and a                                            ; $7c39: $a7
	ld a, c                                          ; $7c3a: $79
	ret                                              ; $7c3b: $c9


	sbc d                                            ; $7c3c: $9a
	db $e3                                           ; $7c3d: $e3
	pop hl                                           ; $7c3e: $e1
	ld b, b                                          ; $7c3f: $40
	nop                                              ; $7c40: $00
	jr jr_052_7c14                                   ; $7c41: $18 $d1

	rst $38                                          ; $7c43: $ff
	ld a, [hl]                                       ; $7c44: $7e
	jr nc, jr_052_7cc4                               ; $7c45: $30 $7d

	ld a, a                                          ; $7c47: $7f
	sbc h                                            ; $7c48: $9c
	ld [$f5f0], a                                    ; $7c49: $ea $f0 $f5
	ld h, c                                          ; $7c4c: $61
	add b                                            ; $7c4d: $80
	sub a                                            ; $7c4e: $97
	jp Jump_052_4181                                 ; $7c4f: $c3 $81 $41


	and c                                            ; $7c52: $a1
	add e                                            ; $7c53: $83
	inc bc                                           ; $7c54: $03
	ld d, a                                          ; $7c55: $57
	xor e                                            ; $7c56: $ab
	reti                                             ; $7c57: $d9


	rst $38                                          ; $7c58: $ff
	ld [hl], a                                       ; $7c59: $77
	ld d, c                                          ; $7c5a: $51
	ld a, a                                          ; $7c5b: $7f
	sbc c                                            ; $7c5c: $99
	rst SubAFromDE                                          ; $7c5d: $df
	rrca                                             ; $7c5e: $0f
	ld [hl], h                                       ; $7c5f: $74
	xor h                                            ; $7c60: $ac
	halt                                             ; $7c61: $76
	jr jr_052_7cdd                                   ; $7c62: $18 $79

	xor h                                            ; $7c64: $ac
	sbc h                                            ; $7c65: $9c
	rst JumpTable                                          ; $7c66: $c7
	db $e3                                           ; $7c67: $e3
	ld sp, hl                                        ; $7c68: $f9
	ld a, d                                          ; $7c69: $7a
	ld a, [hl+]                                      ; $7c6a: $2a
	rst SubAFromDE                                          ; $7c6b: $df
	ld hl, sp-$63                                    ; $7c6c: $f8 $9d
	inc a                                            ; $7c6e: $3c
	ld e, $7a                                        ; $7c6f: $1e $7a
	ld d, $df                                        ; $7c71: $16 $df
	cp $6d                                           ; $7c73: $fe $6d
	add hl, sp                                       ; $7c75: $39
	ei                                               ; $7c76: $fb
	sbc c                                            ; $7c77: $99
	add c                                            ; $7c78: $81
	rst SubAFromBC                                          ; $7c79: $e7
	nop                                              ; $7c7a: $00
	ld bc, $9806                                     ; $7c7b: $01 $06 $98
	ld a, b                                          ; $7c7e: $78
	add hl, hl                                       ; $7c7f: $29
	ld a, e                                          ; $7c80: $7b
	jp z, $cb7f                                      ; $7c81: $ca $7f $cb

	ld [hl], h                                       ; $7c84: $74
	ld h, h                                          ; $7c85: $64
	sbc c                                            ; $7c86: $99
	and l                                            ; $7c87: $a5
	dec d                                            ; $7c88: $15
	dec c                                            ; $7c89: $0d
	add hl, bc                                       ; $7c8a: $09
	dec bc                                           ; $7c8b: $0b
	rra                                              ; $7c8c: $1f
	ret c                                            ; $7c8d: $d8

	rst $38                                          ; $7c8e: $ff
	adc [hl]                                         ; $7c8f: $8e
	adc h                                            ; $7c90: $8c
	db $fd                                           ; $7c91: $fd
	rst FarCall                                          ; $7c92: $f7
	rst SubAFromDE                                          ; $7c93: $df
	cp a                                             ; $7c94: $bf
	rst $38                                          ; $7c95: $ff
	rst FarCall                                          ; $7c96: $f7
	ld a, a                                          ; $7c97: $7f
	rst $38                                          ; $7c98: $ff
	cp $f8                                           ; $7c99: $fe $f8
	ldh [$c0], a                                     ; $7c9b: $e0 $c0

Jump_052_7c9d:
	adc a                                            ; $7c9d: $8f
	ld hl, sp-$80                                    ; $7c9e: $f8 $80
	nop                                              ; $7ca0: $00
	ld a, d                                          ; $7ca1: $7a
	ld b, a                                          ; $7ca2: $47
	ld [hl], a                                       ; $7ca3: $77
	ldh a, [c]                                       ; $7ca4: $f2
	sbc e                                            ; $7ca5: $9b
	db $fc                                           ; $7ca6: $fc
	rlca                                             ; $7ca7: $07
	nop                                              ; $7ca8: $00
	rrca                                             ; $7ca9: $0f
	ld a, e                                          ; $7caa: $7b
	ldh a, [c]                                       ; $7cab: $f2
	rst $38                                          ; $7cac: $ff
	ld a, h                                          ; $7cad: $7c
	ldh [$99], a                                     ; $7cae: $e0 $99
	db $fd                                           ; $7cb0: $fd
	ei                                               ; $7cb1: $fb
	rst $38                                          ; $7cb2: $ff
	ccf                                              ; $7cb3: $3f
	rrca                                             ; $7cb4: $0f
	inc bc                                           ; $7cb5: $03
	sbc $fd                                          ; $7cb6: $de $fd
	ld [hl], c                                       ; $7cb8: $71
	cp b                                             ; $7cb9: $b8
	sub a                                            ; $7cba: $97
	adc e                                            ; $7cbb: $8b
	adc d                                            ; $7cbc: $8a
	adc a                                            ; $7cbd: $8f
	rst JumpTable                                          ; $7cbe: $c7
	sbc [hl]                                         ; $7cbf: $9e
	sbc h                                            ; $7cc0: $9c
	call c, $deb8                                    ; $7cc1: $dc $b8 $de

jr_052_7cc4:
	rrca                                             ; $7cc4: $0f
	sub l                                            ; $7cc5: $95
	ld [$9010], sp                                   ; $7cc6: $08 $10 $90
	ld d, b                                          ; $7cc9: $50
	ld [hl], b                                       ; $7cca: $70
	ld a, [$9df7]                                    ; $7ccb: $fa $f7 $9d
	rst $38                                          ; $7cce: $ff
	rrca                                             ; $7ccf: $0f
	ld a, e                                          ; $7cd0: $7b
	rst SubAFromBC                                          ; $7cd1: $e7
	sbc h                                            ; $7cd2: $9c
	dec e                                            ; $7cd3: $1d
	rrca                                             ; $7cd4: $0f
	db $e3                                           ; $7cd5: $e3
	db $fc                                           ; $7cd6: $fc
	sub e                                            ; $7cd7: $93
	ldh a, [$f1]                                     ; $7cd8: $f0 $f1
	cp $6f                                           ; $7cda: $fe $6f
	rst $38                                          ; $7cdc: $ff

jr_052_7cdd:
	db $fc                                           ; $7cdd: $fc
	ld [hl], b                                       ; $7cde: $70
	nop                                              ; $7cdf: $00
	ldh [$e1], a                                     ; $7ce0: $e0 $e1
	rst $38                                          ; $7ce2: $ff
	ldh a, [$fd]                                     ; $7ce3: $f0 $fd
	sbc [hl]                                         ; $7ce5: $9e
	rrca                                             ; $7ce6: $0f
	ld a, d                                          ; $7ce7: $7a
	ld e, c                                          ; $7ce8: $59
	sbc [hl]                                         ; $7ce9: $9e
	ret nz                                           ; $7cea: $c0

	ld [hl], a                                       ; $7ceb: $77
	ld hl, sp-$62                                    ; $7cec: $f8 $9e
	ld hl, sp+$69                                    ; $7cee: $f8 $69
	add b                                            ; $7cf0: $80
	db $dd                                           ; $7cf1: $dd
	db $fc                                           ; $7cf2: $fc
	sbc h                                            ; $7cf3: $9c
	inc e                                            ; $7cf4: $1c
	inc b                                            ; $7cf5: $04
	nop                                              ; $7cf6: $00
	ld [hl], a                                       ; $7cf7: $77
	db $ec                                           ; $7cf8: $ec
	db $fd                                           ; $7cf9: $fd
	ld [hl], h                                       ; $7cfa: $74
	ld sp, $0fdf                                     ; $7cfb: $31 $df $0f
	rst SubAFromDE                                          ; $7cfe: $df
	rla                                              ; $7cff: $17
	add b                                            ; $7d00: $80
	rlca                                             ; $7d01: $07
	ld b, $06                                        ; $7d02: $06 $06
	dec c                                            ; $7d04: $0d
	ld c, $0f                                        ; $7d05: $0e $0f
	rra                                              ; $7d07: $1f
	rra                                              ; $7d08: $1f
	add d                                            ; $7d09: $82
	add b                                            ; $7d0a: $80
	or h                                             ; $7d0b: $b4
	sub c                                            ; $7d0c: $91
	ret z                                            ; $7d0d: $c8

	ret c                                            ; $7d0e: $d8

	inc bc                                           ; $7d0f: $03
	jp hl                                            ; $7d10: $e9


	nop                                              ; $7d11: $00
	ld [$0e08], sp                                   ; $7d12: $08 $08 $0e
	rlca                                             ; $7d15: $07
	daa                                              ; $7d16: $27
	rst $38                                          ; $7d17: $ff
	rst FarCall                                          ; $7d18: $f7
	cp h                                             ; $7d19: $bc
	ld a, d                                          ; $7d1a: $7a
	cp $e1                                           ; $7d1b: $fe $e1
	ld a, [bc]                                       ; $7d1d: $0a
	sbc b                                            ; $7d1e: $98
	ld a, $9e                                        ; $7d1f: $3e $9e
	rst FarCall                                          ; $7d21: $f7
	ld a, e                                          ; $7d22: $7b
	ccf                                              ; $7d23: $3f
	sbc l                                            ; $7d24: $9d
	ld e, $fd                                        ; $7d25: $1e $fd
	ld a, e                                          ; $7d27: $7b
	ld b, b                                          ; $7d28: $40
	sub h                                            ; $7d29: $94
	ld d, d                                          ; $7d2a: $52
	cp c                                             ; $7d2b: $b9
	and b                                            ; $7d2c: $a0
	ld d, h                                          ; $7d2d: $54
	ld l, $db                                        ; $7d2e: $2e $db
	ld a, a                                          ; $7d30: $7f
	db $e3                                           ; $7d31: $e3
	dec c                                            ; $7d32: $0d
	ld b, $5f                                        ; $7d33: $06 $5f
	ld h, b                                          ; $7d35: $60
	ld l, h                                          ; $7d36: $6c
	ld a, l                                          ; $7d37: $7d
	ld sp, hl                                        ; $7d38: $f9
	ld a, e                                          ; $7d39: $7b
	cp $65                                           ; $7d3a: $fe $65
	sub c                                            ; $7d3c: $91
	ld a, d                                          ; $7d3d: $7a
	add sp, $58                                      ; $7d3e: $e8 $58
	ld b, e                                          ; $7d40: $43
	sbc d                                            ; $7d41: $9a
	rst $38                                          ; $7d42: $ff
	rst SubAFromHL                                          ; $7d43: $d7
	ld l, e                                          ; $7d44: $6b
	push de                                          ; $7d45: $d5
	ei                                               ; $7d46: $fb
	ld a, e                                          ; $7d47: $7b
	db $e3                                           ; $7d48: $e3
	ld h, c                                          ; $7d49: $61
	ld [hl], b                                       ; $7d4a: $70
	ld a, e                                          ; $7d4b: $7b
	sbc l                                            ; $7d4c: $9d
	db $dd                                           ; $7d4d: $dd
	rra                                              ; $7d4e: $1f
	sbc [hl]                                         ; $7d4f: $9e
	rrca                                             ; $7d50: $0f
	ld [hl], h                                       ; $7d51: $74
	ld e, h                                          ; $7d52: $5c
	ld [hl], l                                       ; $7d53: $75
	sub d                                            ; $7d54: $92
	ld e, d                                          ; $7d55: $5a
	xor b                                            ; $7d56: $a8
	db $fc                                           ; $7d57: $fc
	sub a                                            ; $7d58: $97
	cp b                                             ; $7d59: $b8
	ret nc                                           ; $7d5a: $d0

	ret nc                                           ; $7d5b: $d0

	add sp, -$07                                     ; $7d5c: $e8 $f9
	push af                                          ; $7d5e: $f5
	ei                                               ; $7d5f: $fb
	ld sp, hl                                        ; $7d60: $f9
	ld [hl], h                                       ; $7d61: $74
	pop hl                                           ; $7d62: $e1
	ld [hl], h                                       ; $7d63: $74
	ld c, a                                          ; $7d64: $4f
	rst SubAFromDE                                          ; $7d65: $df
	rlca                                             ; $7d66: $07
	rst SubAFromDE                                          ; $7d67: $df
	ccf                                              ; $7d68: $3f
	call c, Call_052_7eff                            ; $7d69: $dc $ff $7e
	sub e                                            ; $7d6c: $93
	ld a, b                                          ; $7d6d: $78
	ld [hl], b                                       ; $7d6e: $70
	ld a, l                                          ; $7d6f: $7d
	and $73                                          ; $7d70: $e6 $73
	push af                                          ; $7d72: $f5
	ld a, a                                          ; $7d73: $7f
	or $9c                                           ; $7d74: $f6 $9c
	ldh [rAUD1SWEEP], a                              ; $7d76: $e0 $10
	jr nz, @-$03                                     ; $7d78: $20 $fb

	ld a, e                                          ; $7d7a: $7b
	di                                               ; $7d7b: $f3
	ld a, c                                          ; $7d7c: $79
	ld h, e                                          ; $7d7d: $63
	ld a, a                                          ; $7d7e: $7f
	inc a                                            ; $7d7f: $3c
	ld l, b                                          ; $7d80: $68
	pop hl                                           ; $7d81: $e1
	sbc c                                            ; $7d82: $99
	inc b                                            ; $7d83: $04
	ret nz                                           ; $7d84: $c0

	nop                                              ; $7d85: $00
	rrca                                             ; $7d86: $0f
	ccf                                              ; $7d87: $3f
	db $fc                                           ; $7d88: $fc
	ld [hl], d                                       ; $7d89: $72
	adc a                                            ; $7d8a: $8f
	sbc h                                            ; $7d8b: $9c
	rlca                                             ; $7d8c: $07
	jr jr_052_7def                                   ; $7d8d: $18 $60

	halt                                             ; $7d8f: $76
	adc c                                            ; $7d90: $89
	ld a, [hl]                                       ; $7d91: $7e
	ld c, $9b                                        ; $7d92: $0e $9b
	jp nz, $357e                                     ; $7d94: $c2 $7e $35

	inc e                                            ; $7d97: $1c
	ld [hl], a                                       ; $7d98: $77
	ldh [$8b], a                                     ; $7d99: $e0 $8b
	pop hl                                           ; $7d9b: $e1
	ccf                                              ; $7d9c: $3f
	ld a, [de]                                       ; $7d9d: $1a
	ld [wUseRulesForTextLine1stOrLastChar], sp                                   ; $7d9e: $08 $0f $d8
	ld hl, sp+$38                                    ; $7da1: $f8 $38
	db $10                                           ; $7da3: $10
	inc l                                            ; $7da4: $2c
	ld b, h                                          ; $7da5: $44
	ld [bc], a                                       ; $7da6: $02
	add b                                            ; $7da7: $80
	jr nc, jr_052_7dba                               ; $7da8: $30 $10

	db $10                                           ; $7daa: $10
	jr jr_052_7dc5                                   ; $7dab: $18 $18

	ld l, $41                                        ; $7dad: $2e $41
	ld l, h                                          ; $7daf: $6c
	ld c, e                                          ; $7db0: $4b
	ld a, [$019d]                                    ; $7db1: $fa $9d $01
	rrca                                             ; $7db4: $0f
	ld [hl], d                                       ; $7db5: $72
	call $7ef8                                       ; $7db6: $cd $f8 $7e
	cp [hl]                                          ; $7db9: $be

jr_052_7dba:
	rst SubAFromDE                                          ; $7dba: $df
	ldh a, [rSVBK]                                   ; $7dbb: $f0 $70
	db $fc                                           ; $7dbd: $fc
	sbc [hl]                                         ; $7dbe: $9e
	inc c                                            ; $7dbf: $0c
	ei                                               ; $7dc0: $fb
	sbc l                                            ; $7dc1: $9d
	db $fc                                           ; $7dc2: $fc
	inc bc                                           ; $7dc3: $03
	ei                                               ; $7dc4: $fb

jr_052_7dc5:
	ld a, a                                          ; $7dc5: $7f
	sub c                                            ; $7dc6: $91
	sbc l                                            ; $7dc7: $9d
	adc a                                            ; $7dc8: $8f
	ld c, a                                          ; $7dc9: $4f
	ld [hl], e                                       ; $7dca: $73
	ret nc                                           ; $7dcb: $d0

	ld a, a                                          ; $7dcc: $7f
	add hl, bc                                       ; $7dcd: $09
	sbc c                                            ; $7dce: $99
	ccf                                              ; $7dcf: $3f
	inc de                                           ; $7dd0: $13
	inc hl                                           ; $7dd1: $23
	inc hl                                           ; $7dd2: $23
	ld h, e                                          ; $7dd3: $63
	jp $7d79                                         ; $7dd4: $c3 $79 $7d


	sbc e                                            ; $7dd7: $9b
	ld e, $3e                                        ; $7dd8: $1e $3e
	ld a, $7e                                        ; $7dda: $3e $7e
	db $dd                                           ; $7ddc: $dd
	cp $9e                                           ; $7ddd: $fe $9e
	ld a, l                                          ; $7ddf: $7d
	ld l, l                                          ; $7de0: $6d
	sbc c                                            ; $7de1: $99
	ld hl, sp+$7f                                    ; $7de2: $f8 $7f
	ld e, $fb                                        ; $7de4: $1e $fb
	ld [hl], h                                       ; $7de6: $74
	sbc a                                            ; $7de7: $9f
	ld [hl], c                                       ; $7de8: $71
	add b                                            ; $7de9: $80
	sub [hl]                                         ; $7dea: $96
	ld [hl], c                                       ; $7deb: $71
	rla                                              ; $7dec: $17
	xor e                                            ; $7ded: $ab
	rla                                              ; $7dee: $17

jr_052_7def:
	dec bc                                           ; $7def: $0b
	rla                                              ; $7df0: $17
	dec hl                                           ; $7df1: $2b
	ld a, a                                          ; $7df2: $7f
	ld c, $fb                                        ; $7df3: $0e $fb
	ld b, e                                          ; $7df5: $43
	nop                                              ; $7df6: $00
	rst SubAFromDE                                          ; $7df7: $df
	inc sp                                           ; $7df8: $33
	sbc [hl]                                         ; $7df9: $9e
	ld [hl-], a                                      ; $7dfa: $32
	sbc $22                                          ; $7dfb: $de $22
	rst SubAFromDE                                          ; $7dfd: $df
	ld b, h                                          ; $7dfe: $44

Call_052_7dff:
	db $dd                                           ; $7dff: $dd
	inc sp                                           ; $7e00: $33
	db $dd                                           ; $7e01: $dd
	ld [hl+], a                                      ; $7e02: $22
	rrca                                             ; $7e03: $0f
	or $9c                                           ; $7e04: $f6 $9c
	ld [hl+], a                                      ; $7e06: $22
	ld h, [hl]                                       ; $7e07: $66
	ld h, e                                          ; $7e08: $63
	ld l, a                                          ; $7e09: $6f
	or $92                                           ; $7e0a: $f6 $92
	ld h, [hl]                                       ; $7e0c: $66
	ld [hl+], a                                      ; $7e0d: $22
	ld h, [hl]                                       ; $7e0e: $66
	ld h, [hl]                                       ; $7e0f: $66
	inc sp                                           ; $7e10: $33
	inc sp                                           ; $7e11: $33
	dec [hl]                                         ; $7e12: $35
	ld d, l                                          ; $7e13: $55
	ld [hl+], a                                      ; $7e14: $22
	ld h, $22                                        ; $7e15: $26 $22
	ld h, [hl]                                       ; $7e17: $66
	ld h, d                                          ; $7e18: $62
	ld l, a                                          ; $7e19: $6f
	or $9b                                           ; $7e1a: $f6 $9b
	ld [hl], $22                                     ; $7e1c: $36 $22
	ld [hl+], a                                      ; $7e1e: $22
	ld h, $7b                                        ; $7e1f: $26 $7b
	ldh [c], a                                       ; $7e21: $e2
	ld a, e                                          ; $7e22: $7b
	or $9a                                           ; $7e23: $f6 $9a
	ld [hl-], a                                      ; $7e25: $32
	ld h, d                                          ; $7e26: $62
	ld [hl+], a                                      ; $7e27: $22
	ld [hl+], a                                      ; $7e28: $22
	inc hl                                           ; $7e29: $23
	ld [hl], a                                       ; $7e2a: $77
	or $9e                                           ; $7e2b: $f6 $9e
	ld d, [hl]                                       ; $7e2d: $56
	db $dd                                           ; $7e2e: $dd
	ld [hl+], a                                      ; $7e2f: $22
	sbc [hl]                                         ; $7e30: $9e
	ld [hl], e                                       ; $7e31: $73
	ld [hl], a                                       ; $7e32: $77
	or $7b                                           ; $7e33: $f6 $7b
	xor $77                                          ; $7e35: $ee $77
	or $86                                           ; $7e37: $f6 $86
	adc c                                            ; $7e39: $89
	reti                                             ; $7e3a: $d9


	rst $38                                          ; $7e3b: $ff
	ld sp, hl                                        ; $7e3c: $f9
	ld b, a                                          ; $7e3d: $47
	ldh a, [$9e]                                     ; $7e3e: $f0 $9e
	ldh a, [$de]                                     ; $7e40: $f0 $de
	ld hl, sp-$23                                    ; $7e42: $f8 $dd
	db $fc                                           ; $7e44: $fc
	ld h, e                                          ; $7e45: $63
	ldh [$98], a                                     ; $7e46: $e0 $98
	ld a, a                                          ; $7e48: $7f
	ccf                                              ; $7e49: $3f
	rra                                              ; $7e4a: $1f
	rrca                                             ; $7e4b: $0f
	rlca                                             ; $7e4c: $07
	inc bc                                           ; $7e4d: $03
	ld bc, $9df3                                     ; $7e4e: $01 $f3 $9d
	inc bc                                           ; $7e51: $03
	inc c                                            ; $7e52: $0c
	ld l, e                                          ; $7e53: $6b
	ld hl, sp-$80                                    ; $7e54: $f8 $80
	rrca                                             ; $7e56: $0f
	ld b, $0d                                        ; $7e57: $06 $0d
	dec de                                           ; $7e59: $1b
	ld d, $37                                        ; $7e5a: $16 $37
	ldh [rIF], a                                     ; $7e5c: $e0 $0f
	ld a, [hl]                                       ; $7e5e: $7e
	ld b, $0b                                        ; $7e5f: $06 $0b
	ld d, $1d                                        ; $7e61: $16 $1d
	dec a                                            ; $7e63: $3d
	rst $38                                          ; $7e64: $ff
	ldh a, [hLCDCIntHandlerIdx]                                     ; $7e65: $f0 $81
	nop                                              ; $7e67: $00
	add b                                            ; $7e68: $80
	ld h, b                                          ; $7e69: $60
	add b                                            ; $7e6a: $80
	nop                                              ; $7e6b: $00
	rrca                                             ; $7e6c: $0f
	pop af                                           ; $7e6d: $f1
	ld a, a                                          ; $7e6e: $7f
	nop                                              ; $7e6f: $00
	add b                                            ; $7e70: $80
	ldh [$80], a                                     ; $7e71: $e0 $80
	nop                                              ; $7e73: $00
	rst $38                                          ; $7e74: $ff
	sub l                                            ; $7e75: $95
	rrca                                             ; $7e76: $0f
	rst $38                                          ; $7e77: $ff
	ccf                                              ; $7e78: $3f
	rra                                              ; $7e79: $1f
	rra                                              ; $7e7a: $1f
	rrca                                             ; $7e7b: $0f
	ld c, $06                                        ; $7e7c: $0e $06
	db $e4                                           ; $7e7e: $e4
	ldh a, [$fb]                                     ; $7e7f: $f0 $fb
	sbc e                                            ; $7e81: $9b
	ldh [$f0], a                                     ; $7e82: $e0 $f0
	jp Jump_052_4f81                                 ; $7e84: $c3 $81 $4f


	or l                                             ; $7e87: $b5
	sub a                                            ; $7e88: $97
	cp $ff                                           ; $7e89: $fe $ff
	rst $38                                          ; $7e8b: $ff
	db $fd                                           ; $7e8c: $fd
	ld hl, sp+$70                                    ; $7e8d: $f8 $70
	ld [hl], b                                       ; $7e8f: $70
	jr nz, @+$7d                                     ; $7e90: $20 $7b

	or l                                             ; $7e92: $b5
	sbc [hl]                                         ; $7e93: $9e
	add hl, bc                                       ; $7e94: $09
	ld [hl], e                                       ; $7e95: $73
	xor [hl]                                         ; $7e96: $ae

Call_052_7e97:
	adc b                                            ; $7e97: $88
	adc a                                            ; $7e98: $8f
	rst FarCall                                          ; $7e99: $f7
	and $fb                                          ; $7e9a: $e6 $fb
	ld a, b                                          ; $7e9c: $78
	rra                                              ; $7e9d: $1f
	ccf                                              ; $7e9e: $3f
	inc bc                                           ; $7e9f: $03
	adc a                                            ; $7ea0: $8f
	ld sp, hl                                        ; $7ea1: $f9
	ld sp, hl                                        ; $7ea2: $f9
	db $fc                                           ; $7ea3: $fc
	ld a, a                                          ; $7ea4: $7f
	rra                                              ; $7ea5: $1f
	ccf                                              ; $7ea6: $3f
	rst $38                                          ; $7ea7: $ff
	jp $fb1b                                         ; $7ea8: $c3 $1b $fb


	add d                                            ; $7eab: $82
	rst FarCall                                          ; $7eac: $f7
	db $ed                                           ; $7ead: $ed
	ret c                                            ; $7eae: $d8

	sbc $ff                                          ; $7eaf: $de $ff
	sub d                                            ; $7eb1: $92
	inc b                                            ; $7eb2: $04
	ld a, l                                          ; $7eb3: $7d
	ld sp, hl                                        ; $7eb4: $f9
	di                                               ; $7eb5: $f3
	rst SubAFromBC                                          ; $7eb6: $e7
	rst $38                                          ; $7eb7: $ff
	ei                                               ; $7eb8: $fb
	di                                               ; $7eb9: $f3

jr_052_7eba:
	ld [hl+], a                                      ; $7eba: $22
	ld h, [hl]                                       ; $7ebb: $66
	jp $eb3d                                         ; $7ebc: $c3 $3d $eb


	call c, $95ff                                    ; $7ebf: $dc $ff $95
	cp $c2                                           ; $7ec2: $fe $c2
	db $10                                           ; $7ec4: $10
	add e                                            ; $7ec5: $83
	add c                                            ; $7ec6: $81
	jr nz, @+$34                                     ; $7ec7: $20 $32

	halt                                             ; $7ec9: $76
	ld a, a                                          ; $7eca: $7f
	ld a, a                                          ; $7ecb: $7f
	ld a, e                                          ; $7ecc: $7b
	cp c                                             ; $7ecd: $b9
	sub c                                            ; $7ece: $91
	rst SubAFromDE                                          ; $7ecf: $df
	call $8089                                       ; $7ed0: $cd $89 $80
	add b                                            ; $7ed3: $80
	nop                                              ; $7ed4: $00
	rst JumpTable                                          ; $7ed5: $c7
	jp $9fef                                         ; $7ed6: $c3 $ef $9f


	jr c, @+$01                                      ; $7ed9: $38 $ff

	cp $ed                                           ; $7edb: $fe $ed
	db $dd                                           ; $7edd: $dd
	rst $38                                          ; $7ede: $ff
	sbc h                                            ; $7edf: $9c
	rst JumpTable                                          ; $7ee0: $c7
	nop                                              ; $7ee1: $00
	ld bc, $2073                                     ; $7ee2: $01 $73 $20
	sbc e                                            ; $7ee5: $9b
	ld a, a                                          ; $7ee6: $7f
	ld h, b                                          ; $7ee7: $60
	jr nc, jr_052_7eba                               ; $7ee8: $30 $d0

	db $dd                                           ; $7eea: $dd
	rst $38                                          ; $7eeb: $ff
	sbc d                                            ; $7eec: $9a
	rst SubAFromBC                                          ; $7eed: $e7
	ret nz                                           ; $7eee: $c0

	ldh [$30], a                                     ; $7eef: $e0 $30
	db $fc                                           ; $7ef1: $fc
	ld a, e                                          ; $7ef2: $7b
	sub $9b                                          ; $7ef3: $d6 $9b
	sbc a                                            ; $7ef5: $9f
	rrca                                             ; $7ef6: $0f
	ld b, $07                                        ; $7ef7: $06 $07
	ld a, e                                          ; $7ef9: $7b
	ld hl, sp+$7f                                    ; $7efa: $f8 $7f
	ld sp, hl                                        ; $7efc: $f9
	adc h                                            ; $7efd: $8c
	rlca                                             ; $7efe: $07

Call_052_7eff:
	ld b, $03                                        ; $7eff: $06 $03
	ld bc, $9f01                                     ; $7f01: $01 $01 $9f
	ei                                               ; $7f04: $fb
	db $e3                                           ; $7f05: $e3
	rst JumpTable                                          ; $7f06: $c7
	rlca                                             ; $7f07: $07
	rrca                                             ; $7f08: $0f
	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	sbc a                                            ; $7f0b: $9f
	ld hl, sp-$20                                    ; $7f0c: $f8 $e0
	ret nz                                           ; $7f0e: $c0

	nop                                              ; $7f0f: $00
	rrca                                             ; $7f10: $0f
	db $db                                           ; $7f11: $db
	rst $38                                          ; $7f12: $ff
	sbc [hl]                                         ; $7f13: $9e
	db $fc                                           ; $7f14: $fc
	ld l, e                                          ; $7f15: $6b
	ld d, b                                          ; $7f16: $50
	ld l, [hl]                                       ; $7f17: $6e
	ldh [$9b], a                                     ; $7f18: $e0 $9b
	rst GetHLinHL                                          ; $7f1a: $cf
	rra                                              ; $7f1b: $1f
	ccf                                              ; $7f1c: $3f
	ccf                                              ; $7f1d: $3f
	ld d, d                                          ; $7f1e: $52
	ret nc                                           ; $7f1f: $d0

	ld a, [hl]                                       ; $7f20: $7e
	db $db                                           ; $7f21: $db
	ld e, [hl]                                       ; $7f22: $5e
	ldh [rRP], a                                     ; $7f23: $e0 $56
	jp Jump_052_7ffe                                 ; $7f25: $c3 $fe $7f


	xor b                                            ; $7f28: $a8
	sbc $fe                                          ; $7f29: $de $fe
	di                                               ; $7f2b: $f3
	sbc e                                            ; $7f2c: $9b
	ld bc, $0402                                     ; $7f2d: $01 $02 $04
	ld [$2477], sp                                   ; $7f30: $08 $77 $24
	add h                                            ; $7f33: $84
	ld bc, $0703                                     ; $7f34: $01 $03 $07
	rrca                                             ; $7f37: $0f
	ld c, $33                                        ; $7f38: $0e $33
	ld b, a                                          ; $7f3a: $47
	adc a                                            ; $7f3b: $8f
	ld e, $7c                                        ; $7f3c: $1e $7c
	ld sp, hl                                        ; $7f3e: $f9
	di                                               ; $7f3f: $f3
	or $3c                                           ; $7f40: $f6 $3c
	ld a, b                                          ; $7f42: $78
	ldh a, [$e1]                                     ; $7f43: $f0 $e1
	add e                                            ; $7f45: $83
	rlca                                             ; $7f46: $07
	rrca                                             ; $7f47: $0f
	rrca                                             ; $7f48: $0f
	di                                               ; $7f49: $f3
	rst GetHLinHL                                          ; $7f4a: $cf
	sbc [hl]                                         ; $7f4b: $9e
	add hl, sp                                       ; $7f4c: $39
	rst $38                                          ; $7f4d: $ff
	ld hl, sp+$7a                                    ; $7f4e: $f8 $7a
	call $3c9b                                       ; $7f50: $cd $9b $3c
	ld [hl], b                                       ; $7f53: $70
	ldh [$c7], a                                     ; $7f54: $e0 $c7
	db $dd                                           ; $7f56: $dd
	rst $38                                          ; $7f57: $ff
	sub a                                            ; $7f58: $97
	ldh [rP1], a                                     ; $7f59: $e0 $00
	rst $38                                          ; $7f5b: $ff
	inc bc                                           ; $7f5c: $03
	ld c, a                                          ; $7f5d: $4f
	ld e, a                                          ; $7f5e: $5f
	rst SubAFromDE                                          ; $7f5f: $df
	add b                                            ; $7f60: $80

jr_052_7f61:
	ld a, e                                          ; $7f61: $7b
	and l                                            ; $7f62: $a5
	sub a                                            ; $7f63: $97
	db $fc                                           ; $7f64: $fc
	or b                                             ; $7f65: $b0
	and b                                            ; $7f66: $a0
	jr nz, jr_052_7f61                               ; $7f67: $20 $f8

	ld e, $03                                        ; $7f69: $1e $03
	ld hl, sp-$22                                    ; $7f6b: $f8 $de
	rst $38                                          ; $7f6d: $ff
	sbc c                                            ; $7f6e: $99
	cp a                                             ; $7f6f: $bf
	jr jr_052_7f78                                   ; $7f70: $18 $06

	ld bc, $0ef0                                     ; $7f72: $01 $f0 $0e
	ld [hl], d                                       ; $7f75: $72
	push bc                                          ; $7f76: $c5
	sbc c                                            ; $7f77: $99

jr_052_7f78:
	add b                                            ; $7f78: $80
	pop bc                                           ; $7f79: $c1
	ld hl, $b8f0                                     ; $7f7a: $21 $f0 $b8
	add sp, $7b                                      ; $7f7d: $e8 $7b
	ld hl, sp-$6d                                    ; $7f7f: $f8 $93
	ld b, c                                          ; $7f81: $41
	ld hl, $78d0                                     ; $7f82: $21 $d0 $78
	jr jr_052_7f87                                   ; $7f85: $18 $00

jr_052_7f87:
	ld bc, $e7c1                                     ; $7f87: $01 $c1 $e7
	ccf                                              ; $7f8a: $3f
	ccf                                              ; $7f8b: $3f
	inc bc                                           ; $7f8c: $03
	ld a, e                                          ; $7f8d: $7b
	and d                                            ; $7f8e: $a2
	ld l, a                                          ; $7f8f: $6f
	ld hl, sp-$7b                                    ; $7f90: $f8 $85
	ld sp, hl                                        ; $7f92: $f9
	adc e                                            ; $7f93: $8b
	or [hl]                                          ; $7f94: $b6
	ld a, [hl]                                       ; $7f95: $7e
	ld c, $1d                                        ; $7f96: $0e $1d
	db $fd                                           ; $7f98: $fd
	ei                                               ; $7f99: $fb
	rst $38                                          ; $7f9a: $ff
	rst FarCall                                          ; $7f9b: $f7
	rst GetHLinHL                                          ; $7f9c: $cf
	adc a                                            ; $7f9d: $8f
	rst $38                                          ; $7f9e: $ff
	cp $fe                                           ; $7f9f: $fe $fe
	db $fc                                           ; $7fa1: $fc
	cp l                                             ; $7fa2: $bd
	ld h, a                                          ; $7fa3: $67
	ret z                                            ; $7fa4: $c8

	add [hl]                                         ; $7fa5: $86
	sbc l                                            ; $7fa6: $9d
	xor [hl]                                         ; $7fa7: $ae
	ld hl, sp+$59                                    ; $7fa8: $f8 $59
	jp nz, Jump_052_7b80                             ; $7faa: $c2 $80 $7b

	add e                                            ; $7fad: $83
	rst SubAFromDE                                          ; $7fae: $df
	inc e                                            ; $7faf: $1c
	adc l                                            ; $7fb0: $8d
	cp h                                             ; $7fb1: $bc
	sub a                                            ; $7fb2: $97
	ld [hl+], a                                      ; $7fb3: $22
	ld c, d                                          ; $7fb4: $4a
	dec h                                            ; $7fb5: $25
	dec h                                            ; $7fb6: $25
	ld d, c                                          ; $7fb7: $51
	and c                                            ; $7fb8: $a1
	ld l, e                                          ; $7fb9: $6b
	ld h, b                                          ; $7fba: $60
	call nz, $0884                                   ; $7fbb: $c4 $84 $08
	jr @+$3b                                         ; $7fbe: $18 $39

	ld a, c                                          ; $7fc0: $79
	pop af                                           ; $7fc1: $f1
	add d                                            ; $7fc2: $82
	ld a, d                                          ; $7fc3: $7a
	db $fd                                           ; $7fc4: $fd
	sbc e                                            ; $7fc5: $9b
	nop                                              ; $7fc6: $00
	db $10                                           ; $7fc7: $10
	inc [hl]                                         ; $7fc8: $34
	ld d, b                                          ; $7fc9: $50
	cp $dd                                           ; $7fca: $fe $dd
	ld [bc], a                                       ; $7fcc: $02
	sub d                                            ; $7fcd: $92
	ld h, $a6                                        ; $7fce: $26 $a6
	inc de                                           ; $7fd0: $13
	ld a, [bc]                                       ; $7fd1: $0a
	ld b, b                                          ; $7fd2: $40
	dec d                                            ; $7fd3: $15
	inc d                                            ; $7fd4: $14
	ld d, h                                          ; $7fd5: $54
	ld e, d                                          ; $7fd6: $5a
	ld b, b                                          ; $7fd7: $40
	ld h, b                                          ; $7fd8: $60
	ld [hl], c                                       ; $7fd9: $71
	add hl, sp                                       ; $7fda: $39
	sbc $38                                          ; $7fdb: $de $38
	adc h                                            ; $7fdd: $8c
	inc a                                            ; $7fde: $3c
	ld d, b                                          ; $7fdf: $50
	ld a, b                                          ; $7fe0: $78
	ld l, b                                          ; $7fe1: $68
	db $ec                                           ; $7fe2: $ec
	cp b                                             ; $7fe3: $b8
	add $67                                          ; $7fe4: $c6 $67
	or d                                             ; $7fe6: $b2
	jr nc, @+$12                                     ; $7fe7: $30 $10

	sbc b                                            ; $7fe9: $98
	sbc b                                            ; $7fea: $98
	call z, $fefc                                    ; $7feb: $cc $fc $fe
	ld a, a                                          ; $7fee: $7f
	rlca                                             ; $7fef: $07
	rlca                                             ; $7ff0: $07
	db $dd                                           ; $7ff1: $dd
	inc bc                                           ; $7ff2: $03
	sbc l                                            ; $7ff3: $9d
	add e                                            ; $7ff4: $83
	pop bc                                           ; $7ff5: $c1
	sbc $03                                          ; $7ff6: $de $03
	sbc $01                                          ; $7ff8: $de $01
	rst $38                                          ; $7ffa: $ff
	sub h                                            ; $7ffb: $94
	rst SubAFromDE                                          ; $7ffc: $df
	rst $38                                          ; $7ffd: $ff

Jump_052_7ffe:
	db $fc                                           ; $7ffe: $fc

Jump_052_7fff:
	db $fe                                           ; $7fff: $fe
