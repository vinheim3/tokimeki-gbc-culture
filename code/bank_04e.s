; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04e", ROMX[$4000], BANK[$4e]

Jump_04e_4000:
	ld e, l                                          ; $4000: $5d
	ld [hl], l                                       ; $4001: $75
	ld a, [$d4eb]                                    ; $4002: $fa $eb $d4
	ld a, c                                          ; $4005: $79
	add b                                            ; $4006: $80
	adc a                                            ; $4007: $8f
	nop                                              ; $4008: $00
	ld b, l                                          ; $4009: $45
	or d                                             ; $400a: $b2
	jp z, Jump_04e_6525                              ; $400b: $ca $25 $65

	adc d                                            ; $400e: $8a
	jp z, $9515                                      ; $400f: $ca $15 $95

	ld a, [hl+]                                      ; $4012: $2a
	ld a, [hl+]                                      ; $4013: $2a
	ld d, l                                          ; $4014: $55
	push de                                          ; $4015: $d5
	ld [hl+], a                                      ; $4016: $22
	ld h, a                                          ; $4017: $67
	add b                                            ; $4018: $80
	ld [hl], e                                       ; $4019: $73
	db $fc                                           ; $401a: $fc
	ld a, a                                          ; $401b: $7f
	adc h                                            ; $401c: $8c
	ld a, b                                          ; $401d: $78
	ld c, l                                          ; $401e: $4d
	ld h, a                                          ; $401f: $67
	ldh a, [$7f]                                     ; $4020: $f0 $7f
	cp b                                             ; $4022: $b8
	ld a, a                                          ; $4023: $7f
	db $fc                                           ; $4024: $fc
	sbc l                                            ; $4025: $9d
	ld a, l                                          ; $4026: $7d
	add d                                            ; $4027: $82
	ld l, a                                          ; $4028: $6f
	ldh a, [$9d]                                     ; $4029: $f0 $9d
	ld b, l                                          ; $402b: $45
	adc d                                            ; $402c: $8a
	ld h, a                                          ; $402d: $67
	call c, $e067                                    ; $402e: $dc $67 $e0
	sbc l                                            ; $4031: $9d
	ld a, [hl+]                                      ; $4032: $2a
	dec d                                            ; $4033: $15
	ld c, a                                          ; $4034: $4f
	ldh a, [$03]                                     ; $4035: $f0 $03
	db $fc                                           ; $4037: $fc
	ld l, e                                          ; $4038: $6b
	xor h                                            ; $4039: $ac
	sbc [hl]                                         ; $403a: $9e
	xor b                                            ; $403b: $a8
	ld [hl], e                                       ; $403c: $73
	sbc h                                            ; $403d: $9c
	ld e, a                                          ; $403e: $5f
	cp $9e                                           ; $403f: $fe $9e
	xor d                                            ; $4041: $aa
	ld e, e                                          ; $4042: $5b
	db $f4                                           ; $4043: $f4
	sbc h                                            ; $4044: $9c
	ld [$5500], a                                    ; $4045: $ea $00 $55
	ld a, e                                          ; $4048: $7b
	ldh a, [$8e]                                     ; $4049: $f0 $8e
	di                                               ; $404b: $f3
	inc bc                                           ; $404c: $03
	ldh [c], a                                       ; $404d: $e2
	ld [bc], a                                       ; $404e: $02
	sbc h                                            ; $404f: $9c
	nop                                              ; $4050: $00
	sbc a                                            ; $4051: $9f
	nop                                              ; $4052: $00
	cp a                                             ; $4053: $bf
	nop                                              ; $4054: $00
	add hl, hl                                       ; $4055: $29
	nop                                              ; $4056: $00
	inc d                                            ; $4057: $14
	nop                                              ; $4058: $00
	adc d                                            ; $4059: $8a
	nop                                              ; $405a: $00
	jp hl                                            ; $405b: $e9


	ld a, b                                          ; $405c: $78
	db $dd                                           ; $405d: $dd
	sub h                                            ; $405e: $94
	ld [hl], a                                       ; $405f: $77
	nop                                              ; $4060: $00
	rst FarCall                                          ; $4061: $f7
	nop                                              ; $4062: $00
	inc sp                                           ; $4063: $33
	nop                                              ; $4064: $00
	add e                                            ; $4065: $83
	nop                                              ; $4066: $00
	pop de                                           ; $4067: $d1
	nop                                              ; $4068: $00
	ld [bc], a                                       ; $4069: $02
	ld d, c                                          ; $406a: $51
	dec a                                            ; $406b: $3d
	ld [hl], a                                       ; $406c: $77
	ret nc                                           ; $406d: $d0

	ld e, h                                          ; $406e: $5c
	dec sp                                           ; $406f: $3b
	sbc [hl]                                         ; $4070: $9e
	ld a, [$f05b]                                    ; $4071: $fa $5b $f0
	ld l, a                                          ; $4074: $6f
	and h                                            ; $4075: $a4
	ld [hl], a                                       ; $4076: $77
	ldh a, [$5c]                                     ; $4077: $f0 $5c
	add a                                            ; $4079: $87
	ld l, a                                          ; $407a: $6f
	ldh a, [hDisp1_WX]                                     ; $407b: $f0 $96
	ld a, a                                          ; $407d: $7f
	ld a, h                                          ; $407e: $7c
	rst GetHLinHL                                          ; $407f: $cf
	rrca                                             ; $4080: $0f
	rst FarCall                                          ; $4081: $f7
	nop                                              ; $4082: $00
	ld sp, hl                                        ; $4083: $f9
	nop                                              ; $4084: $00
	db $fc                                           ; $4085: $fc
	ld [hl], e                                       ; $4086: $73
	ldh a, [$9e]                                     ; $4087: $f0 $9e
	and d                                            ; $4089: $a2
	ld [hl], b                                       ; $408a: $70
	ld e, a                                          ; $408b: $5f
	adc [hl]                                         ; $408c: $8e
	ccf                                              ; $408d: $3f
	rrca                                             ; $408e: $0f
	rst $38                                          ; $408f: $ff
	call c, $333f                                    ; $4090: $dc $3f $33
	dec sp                                           ; $4093: $3b
	dec sp                                           ; $4094: $3b
	push af                                          ; $4095: $f5
	ret nz                                           ; $4096: $c0

	ld a, [bc]                                       ; $4097: $0a
	nop                                              ; $4098: $00
	rst $38                                          ; $4099: $ff
	ld [hl], b                                       ; $409a: $70
	rst $38                                          ; $409b: $ff
	ret nz                                           ; $409c: $c0

	rst $38                                          ; $409d: $ff

Call_04e_409e:
	ld a, e                                          ; $409e: $7b
	add d                                            ; $409f: $82
	sbc c                                            ; $40a0: $99
	add sp, -$40                                     ; $40a1: $e8 $c0
	ld sp, hl                                        ; $40a3: $f9
	pop af                                           ; $40a4: $f1
	ld d, l                                          ; $40a5: $55
	ld bc, $d07b                                     ; $40a6: $01 $7b $d0
	sub a                                            ; $40a9: $97
	nop                                              ; $40aa: $00
	ccf                                              ; $40ab: $3f
	nop                                              ; $40ac: $00
	rst JumpTable                                          ; $40ad: $c7
	nop                                              ; $40ae: $00
	add sp, $00                                      ; $40af: $e8 $00
	push af                                          ; $40b1: $f5
	ld a, e                                          ; $40b2: $7b
	ret nc                                           ; $40b3: $d0

	sbc e                                            ; $40b4: $9b
	push de                                          ; $40b5: $d5
	ret nz                                           ; $40b6: $c0

	ld a, [$5770]                                    ; $40b7: $fa $70 $57
	add h                                            ; $40ba: $84
	ld a, l                                          ; $40bb: $7d
	db $e3                                           ; $40bc: $e3
	ld e, a                                          ; $40bd: $5f
	sub b                                            ; $40be: $90
	sbc [hl]                                         ; $40bf: $9e
	db $fd                                           ; $40c0: $fd
	ld l, e                                          ; $40c1: $6b
	and b                                            ; $40c2: $a0
	ld a, a                                          ; $40c3: $7f
	add $4f                                          ; $40c4: $c6 $4f
	sub b                                            ; $40c6: $90
	ld e, a                                          ; $40c7: $5f
	ld [hl], b                                       ; $40c8: $70
	sbc [hl]                                         ; $40c9: $9e
	xor a                                            ; $40ca: $af
	ld h, e                                          ; $40cb: $63
	ldh a, [$7f]                                     ; $40cc: $f0 $7f
	ld l, $57                                        ; $40ce: $2e $57
	ld b, b                                          ; $40d0: $40
	ld a, a                                          ; $40d1: $7f
	halt                                             ; $40d2: $76
	sbc [hl]                                         ; $40d3: $9e
	cp [hl]                                          ; $40d4: $be
	ld h, e                                          ; $40d5: $63
	jp z, $cc7b                                      ; $40d6: $ca $7b $cc

	sbc [hl]                                         ; $40d9: $9e
	xor d                                            ; $40da: $aa
	ld [hl], a                                       ; $40db: $77
	ld c, [hl]                                       ; $40dc: $4e
	ld a, a                                          ; $40dd: $7f
	sbc $9e                                          ; $40de: $de $9e
	di                                               ; $40e0: $f3
	ld [hl], e                                       ; $40e1: $73
	ldh a, [$9e]                                     ; $40e2: $f0 $9e
	xor e                                            ; $40e4: $ab
	ld a, e                                          ; $40e5: $7b
	ldh a, [$6c]                                     ; $40e6: $f0 $6c
	ccf                                              ; $40e8: $3f
	ld a, [hl]                                       ; $40e9: $7e
	xor $5f                                          ; $40ea: $ee $5f
	call z, $fc6f                                    ; $40ec: $cc $6f $fc
	sbc c                                            ; $40ef: $99
	ld a, d                                          ; $40f0: $7a
	add b                                            ; $40f1: $80
	rst JumpTable                                          ; $40f2: $c7
	ld hl, sp-$02                                    ; $40f3: $f8 $fe
	rst $38                                          ; $40f5: $ff
	ld e, a                                          ; $40f6: $5f
	ldh a, [$7c]                                     ; $40f7: $f0 $7c
	ld d, b                                          ; $40f9: $50
	sbc e                                            ; $40fa: $9b
	ld d, b                                          ; $40fb: $50
	nop                                              ; $40fc: $00
	ld [hl], c                                       ; $40fd: $71
	adc a                                            ; $40fe: $8f
	ld h, a                                          ; $40ff: $67
	ldh a, [$7c]                                     ; $4100: $f0 $7c
	sub a                                            ; $4102: $97
	ei                                               ; $4103: $fb
	ld h, a                                          ; $4104: $67
	ldh a, [$f9]                                     ; $4105: $f0 $f9
	ld l, a                                          ; $4107: $6f
	ldh a, [$f9]                                     ; $4108: $f0 $f9
	ld a, a                                          ; $410a: $7f
	inc h                                            ; $410b: $24
	ld c, a                                          ; $410c: $4f
	ldh a, [$9e]                                     ; $410d: $f0 $9e
	add b                                            ; $410f: $80
	ld [hl], e                                       ; $4110: $73
	ldh a, [$9e]                                     ; $4111: $f0 $9e
	ld d, h                                          ; $4113: $54
	or $57                                           ; $4114: $f6 $57
	call nz, $9efd                                   ; $4116: $c4 $fd $9e
	ld b, l                                          ; $4119: $45
	ld [hl], e                                       ; $411a: $73
	ld [$a27f], sp                                   ; $411b: $08 $7f $a2
	sbc [hl]                                         ; $411e: $9e
	ld b, [hl]                                       ; $411f: $46
	ld a, e                                          ; $4120: $7b
	sub d                                            ; $4121: $92
	sbc [hl]                                         ; $4122: $9e
	jr nz, jr_04e_4198                               ; $4123: $20 $73

	ldh [$9c], a                                     ; $4125: $e0 $9c
	adc b                                            ; $4127: $88
	nop                                              ; $4128: $00
	ld h, b                                          ; $4129: $60
	ld a, e                                          ; $412a: $7b
	ret z                                            ; $412b: $c8

	ld sp, hl                                        ; $412c: $f9
	sbc d                                            ; $412d: $9a
	push bc                                          ; $412e: $c5
	nop                                              ; $412f: $00
	jr c, jr_04e_4132                                ; $4130: $38 $00

jr_04e_4132:
	rlca                                             ; $4132: $07
	or $96                                           ; $4133: $f6 $96
	ld a, l                                          ; $4135: $7d
	jr jr_04e_4172                                   ; $4136: $18 $3a

	ld [$0005], sp                                   ; $4138: $08 $05 $00
	ldh [rP1], a                                     ; $413b: $e0 $00
	rra                                              ; $413d: $1f
	ld h, e                                          ; $413e: $63
	or b                                             ; $413f: $b0
	ld a, [hl]                                       ; $4140: $7e
	inc l                                            ; $4141: $2c
	ld a, a                                          ; $4142: $7f
	add $98                                          ; $4143: $c6 $98
	ld [$e400], sp                                   ; $4145: $08 $00 $e4
	nop                                              ; $4148: $00
	jr jr_04e_414b                                   ; $4149: $18 $00

jr_04e_414b:
	inc b                                            ; $414b: $04
	ld b, e                                          ; $414c: $43
	ld [hl], b                                       ; $414d: $70
	inc bc                                           ; $414e: $03
	ldh a, [rHDMA3]                                  ; $414f: $f0 $53
	jr nc, @-$63                                     ; $4151: $30 $9b

	inc c                                            ; $4153: $0c
	nop                                              ; $4154: $00
	ld [hl], b                                       ; $4155: $70
	rrca                                             ; $4156: $0f
	ld c, e                                          ; $4157: $4b
	jr nz, jr_04e_41bc                               ; $4158: $20 $62

	ldh a, [hDisp1_WX]                                     ; $415a: $f0 $96
	rla                                              ; $415c: $17
	nop                                              ; $415d: $00
	inc c                                            ; $415e: $0c
	inc bc                                           ; $415f: $03
	ldh a, [rIF]                                     ; $4160: $f0 $0f
	nop                                              ; $4162: $00
	rst $38                                          ; $4163: $ff
	ld d, a                                          ; $4164: $57
	ld l, e                                          ; $4165: $6b
	ldh a, [$7e]                                     ; $4166: $f0 $7e
	ld b, b                                          ; $4168: $40
	sbc d                                            ; $4169: $9a
	rlca                                             ; $416a: $07
	ld hl, sp+$03                                    ; $416b: $f8 $03
	rst $38                                          ; $416d: $ff
	inc bc                                           ; $416e: $03
	ld a, d                                          ; $416f: $7a
	cp l                                             ; $4170: $bd
	sub c                                            ; $4171: $91

jr_04e_4172:
	ret nz                                           ; $4172: $c0

	ccf                                              ; $4173: $3f
	ld de, $00ee                                     ; $4174: $11 $ee $00
	rst $38                                          ; $4177: $ff
	ld [hl], d                                       ; $4178: $72
	adc l                                            ; $4179: $8d
	ldh a, [c]                                       ; $417a: $f2
	rst $38                                          ; $417b: $ff
	rrca                                             ; $417c: $0f
	rst $38                                          ; $417d: $ff
	rst FarCall                                          ; $417e: $f7
	inc c                                            ; $417f: $0c
	halt                                             ; $4180: $76
	xor e                                            ; $4181: $ab
	ld a, a                                          ; $4182: $7f
	db $fd                                           ; $4183: $fd
	ld a, a                                          ; $4184: $7f
	db $fc                                           ; $4185: $fc
	sbc h                                            ; $4186: $9c
	ld h, a                                          ; $4187: $67
	sbc b                                            ; $4188: $98
	adc b                                            ; $4189: $88
	sbc $ff                                          ; $418a: $de $ff
	sub c                                            ; $418c: $91
	rst AddAOntoHL                                          ; $418d: $ef
	jr jr_04e_41c0                                   ; $418e: $18 $30

	ret nz                                           ; $4190: $c0

	nop                                              ; $4191: $00
	rst $38                                          ; $4192: $ff
	inc bc                                           ; $4193: $03
	db $fc                                           ; $4194: $fc
	nop                                              ; $4195: $00
	rst $38                                          ; $4196: $ff
	ld e, a                                          ; $4197: $5f

jr_04e_4198:
	and b                                            ; $4198: $a0
	ld de, $deee                                     ; $4199: $11 $ee $de
	rst $38                                          ; $419c: $ff
	sbc l                                            ; $419d: $9d
	jr nz, jr_04e_41df                               ; $419e: $20 $3f

	ld a, e                                          ; $41a0: $7b
	db $e4                                           ; $41a1: $e4
	ld [hl], a                                       ; $41a2: $77
	ldh [$7f], a                                     ; $41a3: $e0 $7f
	db $fc                                           ; $41a5: $fc
	sub l                                            ; $41a6: $95
	ld e, [hl]                                       ; $41a7: $5e
	pop hl                                           ; $41a8: $e1
	rst $38                                          ; $41a9: $ff
	rst $38                                          ; $41aa: $ff
	and b                                            ; $41ab: $a0
	ld e, a                                          ; $41ac: $5f
	rrca                                             ; $41ad: $0f
	ldh a, [rP1]                                     ; $41ae: $f0 $00
	rst $38                                          ; $41b0: $ff
	ld a, b                                          ; $41b1: $78
	adc b                                            ; $41b2: $88
	sbc c                                            ; $41b3: $99
	rst $38                                          ; $41b4: $ff
	add b                                            ; $41b5: $80
	ld a, a                                          ; $41b6: $7f
	ld e, a                                          ; $41b7: $5f
	and b                                            ; $41b8: $a0
	rst FarCall                                          ; $41b9: $f7
	sbc $ff                                          ; $41ba: $de $ff

jr_04e_41bc:
	ld [hl], a                                       ; $41bc: $77
	ldh a, [$7f]                                     ; $41bd: $f0 $7f
	db $e4                                           ; $41bf: $e4

jr_04e_41c0:
	sub h                                            ; $41c0: $94
	db $f4                                           ; $41c1: $f4
	rst $38                                          ; $41c2: $ff
	ld bc, $f8ff                                     ; $41c3: $01 $ff $f8
	rlca                                             ; $41c6: $07
	add e                                            ; $41c7: $83
	cp $ff                                           ; $41c8: $fe $ff
	rst $38                                          ; $41ca: $ff
	ld hl, sp+$7b                                    ; $41cb: $f8 $7b
	call nc, $887f                                   ; $41cd: $d4 $7f $88
	sbc [hl]                                         ; $41d0: $9e
	inc l                                            ; $41d1: $2c
	sbc $ff                                          ; $41d2: $de $ff
	ld a, a                                          ; $41d4: $7f
	ld hl, sp-$6c                                    ; $41d5: $f8 $94
	ld a, b                                          ; $41d7: $78
	add a                                            ; $41d8: $87
	rst $38                                          ; $41d9: $ff
	rst $38                                          ; $41da: $ff
	ld b, $f8                                        ; $41db: $06 $f8
	nop                                              ; $41dd: $00
	rst $38                                          ; $41de: $ff

jr_04e_41df:
	db $fc                                           ; $41df: $fc
	inc bc                                           ; $41e0: $03
	ld d, $73                                        ; $41e1: $16 $73
	ldh a, [$9d]                                     ; $41e3: $f0 $9d
	db $fd                                           ; $41e5: $fd
	inc bc                                           ; $41e6: $03
	ld [hl], a                                       ; $41e7: $77
	or l                                             ; $41e8: $b5
	ld a, a                                          ; $41e9: $7f
	ld hl, sp-$62                                    ; $41ea: $f8 $9e
	ld b, b                                          ; $41ec: $40
	ld a, d                                          ; $41ed: $7a
	ld de, $809e                                     ; $41ee: $11 $9e $80
	ld a, e                                          ; $41f1: $7b
	adc [hl]                                         ; $41f2: $8e
	sbc h                                            ; $41f3: $9c
	ldh a, [c]                                       ; $41f4: $f2
	dec c                                            ; $41f5: $0d
	db $ec                                           ; $41f6: $ec
	ld [hl], e                                       ; $41f7: $73
	ldh a, [$6f]                                     ; $41f8: $f0 $6f
	cp $7f                                           ; $41fa: $fe $7f
	db $fd                                           ; $41fc: $fd
	sbc h                                            ; $41fd: $9c
	rla                                              ; $41fe: $17
	add sp, $77                                      ; $41ff: $e8 $77
	ld a, e                                          ; $4201: $7b
	ldh a, [$9d]                                     ; $4202: $f0 $9d
	ld h, b                                          ; $4204: $60
	add b                                            ; $4205: $80
	ld [hl], a                                       ; $4206: $77
	ldh a, [c]                                       ; $4207: $f2
	sbc b                                            ; $4208: $98
	inc e                                            ; $4209: $1c
	db $e3                                           ; $420a: $e3
	adc c                                            ; $420b: $89
	inc bc                                           ; $420c: $03
	ld d, b                                          ; $420d: $50
	xor a                                            ; $420e: $af
	cpl                                              ; $420f: $2f
	ld [hl], a                                       ; $4210: $77
	ldh [$73], a                                     ; $4211: $e0 $73
	sbc $7f                                          ; $4213: $de $7f
	db $fd                                           ; $4215: $fd
	sbc d                                            ; $4216: $9a
	or a                                             ; $4217: $b7
	nop                                              ; $4218: $00
	push de                                          ; $4219: $d5
	ld a, [hl+]                                      ; $421a: $2a
	and b                                            ; $421b: $a0
	ld a, e                                          ; $421c: $7b
	ldh a, [$9d]                                     ; $421d: $f0 $9d
	ret c                                            ; $421f: $d8

	rlca                                             ; $4220: $07
	ld [hl], a                                       ; $4221: $77
	ldh a, [$7f]                                     ; $4222: $f0 $7f
	sub d                                            ; $4224: $92
	ld a, a                                          ; $4225: $7f
	ei                                               ; $4226: $fb
	sbc d                                            ; $4227: $9a
	ldh a, [c]                                       ; $4228: $f2
	ld c, l                                          ; $4229: $4d
	db $dd                                           ; $422a: $dd
	rst $38                                          ; $422b: $ff
	ld a, a                                          ; $422c: $7f
	ld l, e                                          ; $422d: $6b
	ret nz                                           ; $422e: $c0

	sbc d                                            ; $422f: $9a
	ld d, [hl]                                       ; $4230: $56

jr_04e_4231:
	xor c                                            ; $4231: $a9
	rst $38                                          ; $4232: $ff
	nop                                              ; $4233: $00
	add d                                            ; $4234: $82
	sbc $ff                                          ; $4235: $de $ff
	sbc [hl]                                         ; $4237: $9e
	rst SubAFromDE                                          ; $4238: $df
	ld a, e                                          ; $4239: $7b
	ldh a, [rPCM34]                                  ; $423a: $f0 $77
	ld b, b                                          ; $423c: $40
	sub d                                            ; $423d: $92
	ld [hl], b                                       ; $423e: $70
	adc a                                            ; $423f: $8f
	rst $38                                          ; $4240: $ff
	nop                                              ; $4241: $00
	dec c                                            ; $4242: $0d
	rst $38                                          ; $4243: $ff
	cp $ff                                           ; $4244: $fe $ff
	pop bc                                           ; $4246: $c1
	nop                                              ; $4247: $00
	jr jr_04e_4231                                   ; $4248: $18 $e7

	add b                                            ; $424a: $80
	ld a, c                                          ; $424b: $79
	cp l                                             ; $424c: $bd
	ld l, a                                          ; $424d: $6f
	sbc l                                            ; $424e: $9d
	adc c                                            ; $424f: $89
	rra                                              ; $4250: $1f
	rst $38                                          ; $4251: $ff
	pop bc                                           ; $4252: $c1
	ld a, $03                                        ; $4253: $3e $03
	db $fc                                           ; $4255: $fc
	rra                                              ; $4256: $1f
	ldh [$3d], a                                     ; $4257: $e0 $3d
	jp nz, $00ff                                     ; $4259: $c2 $ff $00

	rst SubAFromDE                                          ; $425c: $df
	jr nz, @+$01                                     ; $425d: $20 $ff

	rst $38                                          ; $425f: $ff
	ld a, [de]                                       ; $4260: $1a
	db $fd                                           ; $4261: $fd
	add sp, $17                                      ; $4262: $e8 $17
	rst GetHLinHL                                          ; $4264: $cf
	jr nc, jr_04e_42d6                               ; $4265: $30 $6f

	ld a, a                                          ; $4267: $7f
	sbc c                                            ; $4268: $99
	call nc, $ff3f                                   ; $4269: $d4 $3f $ff
	rst $38                                          ; $426c: $ff
	rst GetHLinHL                                          ; $426d: $cf
	jr nc, jr_04e_42e7                               ; $426e: $30 $77

	sub $7f                                          ; $4270: $d6 $7f
	db $ec                                           ; $4272: $ec
	ld a, a                                          ; $4273: $7f
	and d                                            ; $4274: $a2
	sbc [hl]                                         ; $4275: $9e
	ccf                                              ; $4276: $3f
	ld a, d                                          ; $4277: $7a
	ld hl, sp+$7c                                    ; $4278: $f8 $7c
	rst FarCall                                          ; $427a: $f7
	sbc h                                            ; $427b: $9c
	rst AddAOntoHL                                          ; $427c: $ef
	db $10                                           ; $427d: $10

jr_04e_427e:
	ccf                                              ; $427e: $3f
	ld a, b                                          ; $427f: $78
	ldh a, [c]                                       ; $4280: $f2
	ld a, a                                          ; $4281: $7f
	or $7f                                           ; $4282: $f6 $7f
	ld hl, sp-$6a                                    ; $4284: $f8 $96
	or l                                             ; $4286: $b5
	jp z, $ffc0                                      ; $4287: $ca $c0 $ff

	adc d                                            ; $428a: $8a
	rst FarCall                                          ; $428b: $f7
	swap a                                           ; $428c: $cb $37
	ld b, $de                                        ; $428e: $06 $de
	rst $38                                          ; $4290: $ff
	sbc e                                            ; $4291: $9b
	inc b                                            ; $4292: $04
	rst $38                                          ; $4293: $ff
	dec e                                            ; $4294: $1d
	and $dd                                          ; $4295: $e6 $dd
	rst $38                                          ; $4297: $ff
	sub d                                            ; $4298: $92
	db $10                                           ; $4299: $10
	rst $38                                          ; $429a: $ff
	ld l, [hl]                                       ; $429b: $6e
	sub c                                            ; $429c: $91
	jr z, jr_04e_427e                                ; $429d: $28 $df

	rst $38                                          ; $429f: $ff
	rst $38                                          ; $42a0: $ff
	dec bc                                           ; $42a1: $0b

Jump_04e_42a2:
	rst $38                                          ; $42a2: $ff
	sbc h                                            ; $42a3: $9c
	ld h, e                                          ; $42a4: $63
	and b                                            ; $42a5: $a0
	ld [hl], e                                       ; $42a6: $73
	ldh a, [$7f]                                     ; $42a7: $f0 $7f
	ret z                                            ; $42a9: $c8

	sbc d                                            ; $42aa: $9a
	daa                                              ; $42ab: $27
	ld hl, sp-$01                                    ; $42ac: $f8 $ff
	rst $38                                          ; $42ae: $ff
	di                                               ; $42af: $f3
	ld a, d                                          ; $42b0: $7a
	ld [$059d], a                                    ; $42b1: $ea $9d $05
	ld a, [$c37a]                                    ; $42b4: $fa $7a $c3
	ld a, a                                          ; $42b7: $7f
	ldh a, [$99]                                     ; $42b8: $f0 $99
	daa                                              ; $42ba: $27
	pop bc                                           ; $42bb: $c1
	ld a, $3e                                        ; $42bc: $3e $3e
	rst $38                                          ; $42be: $ff
	scf                                              ; $42bf: $37
	ld a, e                                          ; $42c0: $7b
	ldh a, [$9e]                                     ; $42c1: $f0 $9e
	ld b, b                                          ; $42c3: $40
	sbc $ff                                          ; $42c4: $de $ff
	sbc c                                            ; $42c6: $99
	ld h, b                                          ; $42c7: $60
	rst $38                                          ; $42c8: $ff
	ld b, b                                          ; $42c9: $40
	rst $38                                          ; $42ca: $ff
	cp [hl]                                          ; $42cb: $be
	ld b, c                                          ; $42cc: $41
	ld a, e                                          ; $42cd: $7b
	sbc [hl]                                         ; $42ce: $9e
	sub c                                            ; $42cf: $91
	rst $38                                          ; $42d0: $ff
	ld e, [hl]                                       ; $42d1: $5e
	and c                                            ; $42d2: $a1
	call $ffb3                                       ; $42d3: $cd $b3 $ff

jr_04e_42d6:
	rst $38                                          ; $42d6: $ff
	add e                                            ; $42d7: $83
	rst $38                                          ; $42d8: $ff
	adc [hl]                                         ; $42d9: $8e
	pop af                                           ; $42da: $f1
	ccf                                              ; $42db: $3f
	ret nz                                           ; $42dc: $c0

	add c                                            ; $42dd: $81
	sbc $ff                                          ; $42de: $de $ff
	sbc e                                            ; $42e0: $9b
	cp a                                             ; $42e1: $bf
	ld b, b                                          ; $42e2: $40
	ld a, e                                          ; $42e3: $7b
	add [hl]                                         ; $42e4: $86
	db $dd                                           ; $42e5: $dd
	rst $38                                          ; $42e6: $ff

jr_04e_42e7:
	sbc c                                            ; $42e7: $99
	ld a, [hl]                                       ; $42e8: $7e
	add e                                            ; $42e9: $83
	ei                                               ; $42ea: $fb
	inc b                                            ; $42eb: $04
	inc b                                            ; $42ec: $04
	ei                                               ; $42ed: $fb

jr_04e_42ee:
	halt                                             ; $42ee: $76
	db $d3                                           ; $42ef: $d3
	sbc h                                            ; $42f0: $9c
	ld sp, hl                                        ; $42f1: $f9
	ld b, $e7                                        ; $42f2: $06 $e7
	db $dd                                           ; $42f4: $dd
	rst $38                                          ; $42f5: $ff
	sbc e                                            ; $42f6: $9b
	ld [bc], a                                       ; $42f7: $02
	ei                                               ; $42f8: $fb
	inc b                                            ; $42f9: $04
	ld h, h                                          ; $42fa: $64
	ld a, e                                          ; $42fb: $7b
	ldh a, [$7f]                                     ; $42fc: $f0 $7f
	ldh [$7f], a                                     ; $42fe: $e0 $7f
	ldh a, [$7f]                                     ; $4300: $f0 $7f
	rrca                                             ; $4302: $0f
	rst SubAFromDE                                          ; $4303: $df
	rst $38                                          ; $4304: $ff
	ld a, a                                          ; $4305: $7f
	ldh a, [c]                                       ; $4306: $f2
	sub h                                            ; $4307: $94
	ld a, a                                          ; $4308: $7f
	add b                                            ; $4309: $80
	xor $91                                          ; $430a: $ee $91

jr_04e_430c:
	add e                                            ; $430c: $83
	rst $38                                          ; $430d: $ff
	ld a, [hl]                                       ; $430e: $7e
	add c                                            ; $430f: $81
	rst FarCall                                          ; $4310: $f7
	ld [$de0d], sp                                   ; $4311: $08 $0d $de
	rst $38                                          ; $4314: $ff
	ld a, [hl]                                       ; $4315: $7e
	ld b, b                                          ; $4316: $40
	ld a, a                                          ; $4317: $7f
	dec h                                            ; $4318: $25
	sbc l                                            ; $4319: $9d
	rlca                                             ; $431a: $07
	db $fc                                           ; $431b: $fc
	ld a, d                                          ; $431c: $7a
	adc d                                            ; $431d: $8a
	sbc e                                            ; $431e: $9b
	ld b, $f3                                        ; $431f: $06 $f3
	inc c                                            ; $4321: $0c
	ld l, b                                          ; $4322: $68
	sbc $ff                                          ; $4323: $de $ff
	sub d                                            ; $4325: $92
	or $0f                                           ; $4326: $f6 $0f
	ld a, [hl+]                                      ; $4328: $2a
	rlca                                             ; $4329: $07
	ld sp, hl                                        ; $432a: $f9
	ld b, $86                                        ; $432b: $06 $86
	rst $38                                          ; $432d: $ff
	ldh a, [rTMA]                                    ; $432e: $f0 $06
	rst FarCall                                          ; $4330: $f7
	ld [$77cb], sp                                   ; $4331: $08 $cb $77
	ldh [$99], a                                     ; $4334: $e0 $99
	ld [$00e6], sp                                   ; $4336: $08 $e6 $00
	pop af                                           ; $4339: $f1
	ld c, $04                                        ; $433a: $0e $04
	ld a, e                                          ; $433c: $7b
	ld hl, sp+$7f                                    ; $433d: $f8 $7f
	ld [de], a                                       ; $433f: $12
	halt                                             ; $4340: $76
	ld d, d                                          ; $4341: $52
	sbc b                                            ; $4342: $98
	rst AddAOntoHL                                          ; $4343: $ef
	jr nc, jr_04e_430c                               ; $4344: $30 $c6

	nop                                              ; $4346: $00
	ld [hl], $cf                                     ; $4347: $36 $cf
	cpl                                              ; $4349: $2f
	ld [hl], a                                       ; $434a: $77
	dec a                                            ; $434b: $3d

jr_04e_434c:
	sbc l                                            ; $434c: $9d
	nop                                              ; $434d: $00
	ld a, [hl]                                       ; $434e: $7e
	ld a, d                                          ; $434f: $7a
	ldh [c], a                                       ; $4350: $e2
	ld a, a                                          ; $4351: $7f
	jr z, jr_04e_42ee                                ; $4352: $28 $9a

	rlca                                             ; $4354: $07
	adc b                                            ; $4355: $88
	adc h                                            ; $4356: $8c
	rst $38                                          ; $4357: $ff
	db $ec                                           ; $4358: $ec
	ld a, e                                          ; $4359: $7b
	cp b                                             ; $435a: $b8
	ld a, a                                          ; $435b: $7f
	and [hl]                                         ; $435c: $a6
	ld a, a                                          ; $435d: $7f

jr_04e_435e:
	ldh [$7f], a                                     ; $435e: $e0 $7f
	dec [hl]                                         ; $4360: $35
	sbc b                                            ; $4361: $98
	rst SubAFromBC                                          ; $4362: $e7
	jr jr_04e_435e                                   ; $4363: $18 $f9

	ld b, $ad                                        ; $4365: $06 $ad
	rst $38                                          ; $4367: $ff
	db $fc                                           ; $4368: $fc
	ld a, e                                          ; $4369: $7b
	sbc b                                            ; $436a: $98
	sbc l                                            ; $436b: $9d
	rst SubAFromDE                                          ; $436c: $df
	jr nc, jr_04e_434c                               ; $436d: $30 $dd

	rst $38                                          ; $436f: $ff
	ld a, a                                          ; $4370: $7f
	ld a, [$d89a]                                    ; $4371: $fa $9a $d8
	cpl                                              ; $4374: $2f
	adc e                                            ; $4375: $8b
	rst $38                                          ; $4376: $ff
	ld [$c07b], sp                                   ; $4377: $08 $7b $c0
	sbc l                                            ; $437a: $9d
	ld e, d                                          ; $437b: $5a
	or l                                             ; $437c: $b5
	db $dd                                           ; $437d: $dd
	rst $38                                          ; $437e: $ff
	ld a, [hl]                                       ; $437f: $7e
	ldh [$9e], a                                     ; $4380: $e0 $9e
	call z, $ffde                                    ; $4382: $cc $de $ff
	ld a, [hl]                                       ; $4385: $7e
	db $fc                                           ; $4386: $fc
	sbc e                                            ; $4387: $9b
	jp nc, $e62f                                     ; $4388: $d2 $2f $e6

	ld a, a                                          ; $438b: $7f
	db $dd                                           ; $438c: $dd
	rst $38                                          ; $438d: $ff
	sbc h                                            ; $438e: $9c
	xor $7f                                          ; $438f: $ee $7f
	db $10                                           ; $4391: $10
	sbc $ff                                          ; $4392: $de $ff
	sbc e                                            ; $4394: $9b

jr_04e_4395:
	dec bc                                           ; $4395: $0b
	db $f4                                           ; $4396: $f4
	sbc a                                            ; $4397: $9f
	ld h, b                                          ; $4398: $60
	ld [hl], a                                       ; $4399: $77
	jr nz, jr_04e_4416                               ; $439a: $20 $7a

	rst GetHLinHL                                          ; $439c: $cf
	sbc h                                            ; $439d: $9c
	add b                                            ; $439e: $80
	ld [de], a                                       ; $439f: $12
	db $fd                                           ; $43a0: $fd
	ld a, e                                          ; $43a1: $7b
	ld d, d                                          ; $43a2: $52
	sbc h                                            ; $43a3: $9c
	ld h, b                                          ; $43a4: $60
	sbc a                                            ; $43a5: $9f
	ld h, b                                          ; $43a6: $60
	ld a, d                                          ; $43a7: $7a
	and e                                            ; $43a8: $a3
	sbc c                                            ; $43a9: $99
	rst $38                                          ; $43aa: $ff
	sbc $ff                                          ; $43ab: $de $ff
	xor h                                            ; $43ad: $ac
	db $d3                                           ; $43ae: $d3
	daa                                              ; $43af: $27
	sbc $ff                                          ; $43b0: $de $ff
	sbc e                                            ; $43b2: $9b
	adc h                                            ; $43b3: $8c
	ld a, a                                          ; $43b4: $7f
	db $10                                           ; $43b5: $10
	rst AddAOntoHL                                          ; $43b6: $ef
	db $dd                                           ; $43b7: $dd
	rst $38                                          ; $43b8: $ff
	ld a, [hl]                                       ; $43b9: $7e
	inc c                                            ; $43ba: $0c
	sbc d                                            ; $43bb: $9a
	jr z, jr_04e_4395                                ; $43bc: $28 $d7

	push hl                                          ; $43be: $e5
	sbc e                                            ; $43bf: $9b
	ld sp, hl                                        ; $43c0: $f9
	sbc $ff                                          ; $43c1: $de $ff
	sbc h                                            ; $43c3: $9c
	ld [hl-], a                                      ; $43c4: $32
	call Call_04e_6a40                               ; $43c5: $cd $40 $6a
	ld a, [bc]                                       ; $43c8: $0a
	ld a, l                                          ; $43c9: $7d
	call c, $ea7f                                    ; $43ca: $dc $7f $ea
	rst SubAFromDE                                          ; $43cd: $df
	rst $38                                          ; $43ce: $ff
	sbc d                                            ; $43cf: $9a
	ld b, c                                          ; $43d0: $41
	cp a                                             ; $43d1: $bf
	add c                                            ; $43d2: $81
	rst $38                                          ; $43d3: $ff
	add c                                            ; $43d4: $81
	ld a, c                                          ; $43d5: $79
	cp h                                             ; $43d6: $bc
	ld a, a                                          ; $43d7: $7f
	ldh a, [$9a]                                     ; $43d8: $f0 $9a
	rst SubAFromDE                                          ; $43da: $df
	ld [hl+], a                                      ; $43db: $22
	rst AddAOntoHL                                          ; $43dc: $ef
	inc de                                           ; $43dd: $13
	rst $38                                          ; $43de: $ff
	ld a, e                                          ; $43df: $7b
	or $77                                           ; $43e0: $f6 $77
	db $f4                                           ; $43e2: $f4
	ld [hl], a                                       ; $43e3: $77
	cp $9d                                           ; $43e4: $fe $9d
	call c, Call_04e_7b63                            ; $43e6: $dc $63 $7b
	pop af                                           ; $43e9: $f1
	ld a, c                                          ; $43ea: $79
	ld c, b                                          ; $43eb: $48
	ld [hl], a                                       ; $43ec: $77
	xor $7f                                          ; $43ed: $ee $7f
	sbc $7e                                          ; $43ef: $de $7e
	db $e4                                           ; $43f1: $e4
	sbc d                                            ; $43f2: $9a
	ld a, e                                          ; $43f3: $7b
	add h                                            ; $43f4: $84
	add l                                            ; $43f5: $85
	ld a, [hl]                                       ; $43f6: $7e
	inc b                                            ; $43f7: $04
	ld [hl], d                                       ; $43f8: $72
	ld a, h                                          ; $43f9: $7c
	ld a, e                                          ; $43fa: $7b
	dec a                                            ; $43fb: $3d
	ld a, e                                          ; $43fc: $7b
	ld [hl], b                                       ; $43fd: $70
	sub l                                            ; $43fe: $95
	push af                                          ; $43ff: $f5
	ld a, [bc]                                       ; $4400: $0a
	rrca                                             ; $4401: $0f
	db $fc                                           ; $4402: $fc
	inc c                                            ; $4403: $0c
	rst $38                                          ; $4404: $ff
	ccf                                              ; $4405: $3f
	rst $38                                          ; $4406: $ff
	ld d, c                                          ; $4407: $51
	xor [hl]                                         ; $4408: $ae
	ld [hl], a                                       ; $4409: $77
	jp nc, $1a7f                                     ; $440a: $d2 $7f $1a

	sbc e                                            ; $440d: $9b
	db $ed                                           ; $440e: $ed
	ld [de], a                                       ; $440f: $12
	ld l, b                                          ; $4410: $68
	sbc a                                            ; $4411: $9f
	halt                                             ; $4412: $76
	and $97                                          ; $4413: $e6 $97
	and d                                            ; $4415: $a2

jr_04e_4416:
	ld e, l                                          ; $4416: $5d
	inc c                                            ; $4417: $0c
	ei                                               ; $4418: $fb
	ld [$21ff], sp                                   ; $4419: $08 $ff $21
	sbc $76                                          ; $441c: $de $76
	or b                                             ; $441e: $b0
	sbc [hl]                                         ; $441f: $9e
	ld b, e                                          ; $4420: $43
	sbc $ff                                          ; $4421: $de $ff
	sub l                                            ; $4423: $95
	sub l                                            ; $4424: $95
	ld a, d                                          ; $4425: $7a
	ld c, d                                          ; $4426: $4a
	or l                                             ; $4427: $b5
	dec b                                            ; $4428: $05
	ld a, [$35ca]                                    ; $4429: $fa $ca $35
	di                                               ; $442c: $f3
	inc c                                            ; $442d: $0c
	ld [hl], a                                       ; $442e: $77
	jp nz, $ffdf                                     ; $442f: $c2 $df $ff

	sbc e                                            ; $4432: $9b
	dec d                                            ; $4433: $15
	ld [$75aa], a                                    ; $4434: $ea $aa $75
	ld [hl], a                                       ; $4437: $77
	db $fc                                           ; $4438: $fc
	adc e                                            ; $4439: $8b
	db $e4                                           ; $443a: $e4
	rrca                                             ; $443b: $0f
	ld b, a                                          ; $443c: $47
	rst $38                                          ; $443d: $ff
	rst JumpTable                                          ; $443e: $c7
	rst $38                                          ; $443f: $ff
	rst SubAFromBC                                          ; $4440: $e7
	rst $38                                          ; $4441: $ff
	ld e, a                                          ; $4442: $5f
	cp a                                             ; $4443: $bf
	sbc a                                            ; $4444: $9f
	ld a, a                                          ; $4445: $7f
	ld e, a                                          ; $4446: $5f
	rst $38                                          ; $4447: $ff
	xor l                                            ; $4448: $ad
	ld e, a                                          ; $4449: $5f
	xor e                                            ; $444a: $ab
	ld e, h                                          ; $444b: $5c
	ld e, $ff                                        ; $444c: $1e $ff
	halt                                             ; $444e: $76
	sub $79                                          ; $444f: $d6 $79
	dec [hl]                                         ; $4451: $35
	sbc e                                            ; $4452: $9b
	cp $fc                                           ; $4453: $fe $fc
	rst $38                                          ; $4455: $ff
	sub [hl]                                         ; $4456: $96
	ld a, b                                          ; $4457: $78
	ld hl, sp+$77                                    ; $4458: $f8 $77
	ld h, b                                          ; $445a: $60
	rst SubAFromDE                                          ; $445b: $df
	rst $38                                          ; $445c: $ff
	sbc e                                            ; $445d: $9b
	push de                                          ; $445e: $d5
	ld l, d                                          ; $445f: $6a
	ld l, d                                          ; $4460: $6a
	push de                                          ; $4461: $d5
	ld a, e                                          ; $4462: $7b
	ret nc                                           ; $4463: $d0

	sbc e                                            ; $4464: $9b
	ld d, l                                          ; $4465: $55
	rst GetHLinHL                                          ; $4466: $cf
	jr nc, jr_04e_44c9                               ; $4467: $30 $60

	ld l, e                                          ; $4469: $6b
	ret nz                                           ; $446a: $c0

	sbc c                                            ; $446b: $99
	sbc d                                            ; $446c: $9a
	ld h, l                                          ; $446d: $65
	dec d                                            ; $446e: $15
	ld [$fd02], a                                    ; $446f: $ea $02 $fd
	ld [hl], l                                       ; $4472: $75
	ldh [c], a                                       ; $4473: $e2
	sbc [hl]                                         ; $4474: $9e
	ld h, l                                          ; $4475: $65
	ld [hl], e                                       ; $4476: $73
	ldh a, [hDisp1_WX]                                     ; $4477: $f0 $96
	ld a, [hl+]                                      ; $4479: $2a
	push de                                          ; $447a: $d5
	ld bc, $0afe                                     ; $447b: $01 $fe $0a
	push af                                          ; $447e: $f5
	ld l, a                                          ; $447f: $6f
	ret nc                                           ; $4480: $d0

	ret nz                                           ; $4481: $c0

	call c, $7fff                                    ; $4482: $dc $ff $7f
	ldh a, [c]                                       ; $4485: $f2
	sub a                                            ; $4486: $97
	inc d                                            ; $4487: $14
	db $eb                                           ; $4488: $eb
	ld l, b                                          ; $4489: $68
	rst SubAFromHL                                          ; $448a: $d7
	sub h                                            ; $448b: $94
	ld l, e                                          ; $448c: $6b
	rrca                                             ; $448d: $0f
	ldh a, [$dd]                                     ; $448e: $f0 $dd
	rst $38                                          ; $4490: $ff
	ld [hl], a                                       ; $4491: $77
	inc h                                            ; $4492: $24
	sbc b                                            ; $4493: $98
	and c                                            ; $4494: $a1
	rst SubAFromDE                                          ; $4495: $df
	ret nc                                           ; $4496: $d0

	xor a                                            ; $4497: $af
	ret nz                                           ; $4498: $c0

	ccf                                              ; $4499: $3f
	sbc d                                            ; $449a: $9a
	ld [hl], d                                       ; $449b: $72
	add hl, hl                                       ; $449c: $29
	ld [hl], a                                       ; $449d: $77
	ld [hl-], a                                      ; $449e: $32
	ld h, a                                          ; $449f: $67
	inc e                                            ; $44a0: $1c
	db $dd                                           ; $44a1: $dd
	rst $38                                          ; $44a2: $ff
	ld [hl], h                                       ; $44a3: $74
	ld h, [hl]                                       ; $44a4: $66
	ld a, a                                          ; $44a5: $7f
	ldh a, [c]                                       ; $44a6: $f2
	ld [hl], h                                       ; $44a7: $74
	ld h, d                                          ; $44a8: $62
	ld a, a                                          ; $44a9: $7f
	sub d                                            ; $44aa: $92
	ld [hl], a                                       ; $44ab: $77
	rst SubAFromDE                                          ; $44ac: $df
	sbc [hl]                                         ; $44ad: $9e
	ld [bc], a                                       ; $44ae: $02
	ld [hl], e                                       ; $44af: $73
	cp $9e                                           ; $44b0: $fe $9e
	inc hl                                           ; $44b2: $23
	ld a, d                                          ; $44b3: $7a
	add [hl]                                         ; $44b4: $86
	ld l, a                                          ; $44b5: $6f
	ld d, d                                          ; $44b6: $52
	ld [hl], a                                       ; $44b7: $77
	ld [de], a                                       ; $44b8: $12
	ld [hl], a                                       ; $44b9: $77
	cp $7f                                           ; $44ba: $fe $7f
	ldh a, [rAUD1ENV]                                ; $44bc: $f0 $12
	nop                                              ; $44be: $00
	pop bc                                           ; $44bf: $c1
	ld b, h                                          ; $44c0: $44
	reti                                             ; $44c1: $d9


	ld b, h                                          ; $44c2: $44
	call $d755                                       ; $44c3: $cd $55 $d7
	ld h, [hl]                                       ; $44c6: $66
	sbc [hl]                                         ; $44c7: $9e
	inc sp                                           ; $44c8: $33

jr_04e_44c9:
	ld h, a                                          ; $44c9: $67
	ld hl, sp-$62                                    ; $44ca: $f8 $9e
	inc sp                                           ; $44cc: $33
	jp $9077                                         ; $44cd: $c3 $77 $90


	adc d                                            ; $44d0: $8a
	db $db                                           ; $44d1: $db
	rst $38                                          ; $44d2: $ff
	sbc l                                            ; $44d3: $9d
	xor e                                            ; $44d4: $ab
	ld d, l                                          ; $44d5: $55
	jp nc, $03ff                                     ; $44d6: $d2 $ff $03

	ldh a, [rIF]                                     ; $44d9: $f0 $0f
	ldh a, [$9d]                                     ; $44db: $f0 $9d
	ld hl, sp-$3d                                    ; $44dd: $f8 $c3
	ld h, a                                          ; $44df: $67
	rst FarCall                                          ; $44e0: $f7
	call c, $9cff                                    ; $44e1: $dc $ff $9c
	ldh [$7f], a                                     ; $44e4: $e0 $7f
	rst AddAOntoHL                                          ; $44e6: $ef
	db $db                                           ; $44e7: $db
	rst $38                                          ; $44e8: $ff
	sbc l                                            ; $44e9: $9d
	add b                                            ; $44ea: $80
	db $10                                           ; $44eb: $10
	db $dd                                           ; $44ec: $dd
	rst $38                                          ; $44ed: $ff
	sbc l                                            ; $44ee: $9d
	db $fc                                           ; $44ef: $fc
	ccf                                              ; $44f0: $3f
	jp c, $9cff                                      ; $44f1: $da $ff $9c

	ret nz                                           ; $44f4: $c0

	nop                                              ; $44f5: $00
	nop                                              ; $44f6: $00
	db $dd                                           ; $44f7: $dd
	rst $38                                          ; $44f8: $ff
	sbc e                                            ; $44f9: $9b
	ld a, $fe                                        ; $44fa: $3e $fe
	di                                               ; $44fc: $f3
	sbc c                                            ; $44fd: $99
	db $dd                                           ; $44fe: $dd
	rst $38                                          ; $44ff: $ff
	sbc e                                            ; $4500: $9b
	pop bc                                           ; $4501: $c1
	nop                                              ; $4502: $00
	nop                                              ; $4503: $00
	ld b, $dd                                        ; $4504: $06 $dd
	rst $38                                          ; $4506: $ff
	ld a, e                                          ; $4507: $7b
	db $eb                                           ; $4508: $eb
	ld [hl], e                                       ; $4509: $73
	sbc $9e                                          ; $450a: $de $9e
	add a                                            ; $450c: $87
	cp $dd                                           ; $450d: $fe $dd
	rst $38                                          ; $450f: $ff
	sbc e                                            ; $4510: $9b
	ld a, a                                          ; $4511: $7f
	db $fc                                           ; $4512: $fc
	cp $f1                                           ; $4513: $fe $f1
	call c, $9eff                                    ; $4515: $dc $ff $9e
	inc bc                                           ; $4518: $03
	ld l, a                                          ; $4519: $6f
	ldh a, [$7f]                                     ; $451a: $f0 $7f
	rst AddAOntoHL                                          ; $451c: $ef
	sbc l                                            ; $451d: $9d
	ld [hl], e                                       ; $451e: $73
	cp $db                                           ; $451f: $fe $db
	rst $38                                          ; $4521: $ff
	sbc l                                            ; $4522: $9d
	rrca                                             ; $4523: $0f
	ld bc, $ffda                                     ; $4524: $01 $da $ff
	ld h, a                                          ; $4527: $67
	xor [hl]                                         ; $4528: $ae
	inc bc                                           ; $4529: $03
	rst $38                                          ; $452a: $ff
	jp z, $9eff                                      ; $452b: $ca $ff $9e

	ld a, [$ffd2]                                    ; $452e: $fa $d2 $ff
	sbc [hl]                                         ; $4531: $9e
	xor d                                            ; $4532: $aa
	db $d3                                           ; $4533: $d3
	rst $38                                          ; $4534: $ff
	sbc [hl]                                         ; $4535: $9e
	push de                                          ; $4536: $d5
	ld c, e                                          ; $4537: $4b
	ldh a, [$9e]                                     ; $4538: $f0 $9e
	ld d, l                                          ; $453a: $55
	ld h, e                                          ; $453b: $63
	ldh a, [$9d]                                     ; $453c: $f0 $9d
	xor d                                            ; $453e: $aa
	ld d, l                                          ; $453f: $55
	ld l, a                                          ; $4540: $6f
	cp $0b                                           ; $4541: $fe $0b
	ldh a, [$9e]                                     ; $4543: $f0 $9e
	ld d, e                                          ; $4545: $53
	db $db                                           ; $4546: $db
	rst $38                                          ; $4547: $ff
	sbc l                                            ; $4548: $9d
	cp $f0                                           ; $4549: $fe $f0
	ld [hl], a                                       ; $454b: $77
	ldh a, [c]                                       ; $454c: $f2
	sbc e                                            ; $454d: $9b
	and a                                            ; $454e: $a7
	ld e, [hl]                                       ; $454f: $5e
	ld a, l                                          ; $4550: $7d
	di                                               ; $4551: $f3
	ld [hl], e                                       ; $4552: $73
	di                                               ; $4553: $f3
	ld a, e                                          ; $4554: $7b
	nop                                              ; $4555: $00
	sub l                                            ; $4556: $95
	xor h                                            ; $4557: $ac
	ld b, b                                          ; $4558: $40
	dec sp                                           ; $4559: $3b
	rst $38                                          ; $455a: $ff
	rst SubAFromDE                                          ; $455b: $df
	ccf                                              ; $455c: $3f
	ldh a, [$f1]                                     ; $455d: $f0 $f1
	rst $38                                          ; $455f: $ff
	db $fc                                           ; $4560: $fc
	ld a, e                                          ; $4561: $7b
	di                                               ; $4562: $f3
	cp $97                                           ; $4563: $fe $97
	rra                                              ; $4565: $1f
	ld hl, sp-$07                                    ; $4566: $f8 $f9
	rst SubAFromBC                                          ; $4568: $e7
	sbc a                                            ; $4569: $9f
	ccf                                              ; $456a: $3f
	ld a, a                                          ; $456b: $7f
	rst JumpTable                                          ; $456c: $c7
	ld sp, hl                                        ; $456d: $f9
	ld a, a                                          ; $456e: $7f
	push af                                          ; $456f: $f5
	ld a, e                                          ; $4570: $7b
	dec d                                            ; $4571: $15
	sbc e                                            ; $4572: $9b
	cp $f9                                           ; $4573: $fe $f9
	di                                               ; $4575: $f3
	add b                                            ; $4576: $80
	ld a, [$f57f]                                    ; $4577: $fa $7f $f5
	sbc e                                            ; $457a: $9b
	rst SubAFromBC                                          ; $457b: $e7
	add a                                            ; $457c: $87
	ld a, $7f                                        ; $457d: $3e $7f
	ld a, d                                          ; $457f: $7a
	call c, $dafa                                    ; $4580: $dc $fa $da
	rst $38                                          ; $4583: $ff
	sbc [hl]                                         ; $4584: $9e
	di                                               ; $4585: $f3
	ld a, [$0f9c]                                    ; $4586: $fa $9c $0f
	db $e3                                           ; $4589: $e3
	db $fc                                           ; $458a: $fc
	ld a, e                                          ; $458b: $7b
	sbc $7f                                          ; $458c: $de $7f
	xor a                                            ; $458e: $af
	sbc [hl]                                         ; $458f: $9e
	adc [hl]                                         ; $4590: $8e
	ld h, a                                          ; $4591: $67
	pop hl                                           ; $4592: $e1
	sub a                                            ; $4593: $97
	rst GetHLinHL                                          ; $4594: $cf
	ccf                                              ; $4595: $3f
	rra                                              ; $4596: $1f
	rst SubAFromBC                                          ; $4597: $e7
	ld sp, hl                                        ; $4598: $f9
	cp $ff                                           ; $4599: $fe $ff
	jr c, @+$69                                      ; $459b: $38 $67

	ldh a, [$9e]                                     ; $459d: $f0 $9e
	ei                                               ; $459f: $fb
	ld a, e                                          ; $45a0: $7b
	or d                                             ; $45a1: $b2
	sub a                                            ; $45a2: $97
	rst $38                                          ; $45a3: $ff
	ld a, [hl]                                       ; $45a4: $7e
	sbc c                                            ; $45a5: $99
	rra                                              ; $45a6: $1f
	inc b                                            ; $45a7: $04
	nop                                              ; $45a8: $00
	nop                                              ; $45a9: $00
	ld bc, $8ffe                                     ; $45aa: $01 $fe $8f
	db $fc                                           ; $45ad: $fc
	ldh [$7c], a                                     ; $45ae: $e0 $7c
	ei                                               ; $45b0: $fb
	ld b, a                                          ; $45b1: $47
	ccf                                              ; $45b2: $3f
	ld h, a                                          ; $45b3: $67
	ld hl, sp-$02                                    ; $45b4: $f8 $fe
	rra                                              ; $45b6: $1f
	add e                                            ; $45b7: $83
	nop                                              ; $45b8: $00
	add b                                            ; $45b9: $80
	nop                                              ; $45ba: $00
	jr jr_04e_45c4                                   ; $45bb: $18 $07

	ld a, d                                          ; $45bd: $7a
	or b                                             ; $45be: $b0
	sbc l                                            ; $45bf: $9d
	push hl                                          ; $45c0: $e5
	db $fc                                           ; $45c1: $fc
	ld a, d                                          ; $45c2: $7a
	or c                                             ; $45c3: $b1

jr_04e_45c4:
	sub [hl]                                         ; $45c4: $96
	adc a                                            ; $45c5: $8f
	rst $38                                          ; $45c6: $ff
	rst $38                                          ; $45c7: $ff
	rra                                              ; $45c8: $1f
	inc bc                                           ; $45c9: $03
	nop                                              ; $45ca: $00
	jr nz, @-$3e                                     ; $45cb: $20 $c0

	ldh a, [$73]                                     ; $45cd: $f0 $73
	ccf                                              ; $45cf: $3f
	sbc [hl]                                         ; $45d0: $9e
	ld [$be7b], a                                    ; $45d1: $ea $7b $be
	db $dd                                           ; $45d4: $dd
	rst $38                                          ; $45d5: $ff
	sbc h                                            ; $45d6: $9c
	rra                                              ; $45d7: $1f
	rlca                                             ; $45d8: $07
	ld bc, $216b                                     ; $45d9: $01 $6b $21
	sbc [hl]                                         ; $45dc: $9e
	xor b                                            ; $45dd: $a8
	ld e, [hl]                                       ; $45de: $5e
	or $77                                           ; $45df: $f6 $77
	cp $9e                                           ; $45e1: $fe $9e
	ld b, b                                          ; $45e3: $40
	ld h, a                                          ; $45e4: $67
	ld a, b                                          ; $45e5: $78
	ld l, a                                          ; $45e6: $6f
	ldh a, [$7b]                                     ; $45e7: $f0 $7b
	ld d, e                                          ; $45e9: $53
	ld d, a                                          ; $45ea: $57
	ldh a, [$5b]                                     ; $45eb: $f0 $5b
	ld e, b                                          ; $45ed: $58
	ld b, e                                          ; $45ee: $43
	ldh a, [rOCPS]                                   ; $45ef: $f0 $6a
	ldh [$9e], a                                     ; $45f1: $e0 $9e
	call nc, $e06a                                   ; $45f3: $d4 $6a $e0
	add h                                            ; $45f6: $84
	db $fc                                           ; $45f7: $fc
	xor d                                            ; $45f8: $aa
	ld d, h                                          ; $45f9: $54
	xor c                                            ; $45fa: $a9

jr_04e_45fb:
	ld b, a                                          ; $45fb: $47
	adc [hl]                                         ; $45fc: $8e
	add hl, sp                                       ; $45fd: $39
	ld [hl], a                                       ; $45fe: $77
	rlca                                             ; $45ff: $07
	rst $38                                          ; $4600: $ff
	cp $f8                                           ; $4601: $fe $f8
	ldh [$c0], a                                     ; $4603: $e0 $c0
	inc b                                            ; $4605: $04
	jr nz, @+$62                                     ; $4606: $20 $60

	rra                                              ; $4608: $1f
	ld h, a                                          ; $4609: $67
	sbc [hl]                                         ; $460a: $9e
	ld a, $fb                                        ; $460b: $3e $fb
	rst FarCall                                          ; $460d: $f7
	db $ec                                           ; $460e: $ec
	db $db                                           ; $460f: $db
	add b                                            ; $4610: $80
	db $10                                           ; $4611: $10
	ld a, e                                          ; $4612: $7b
	ld h, b                                          ; $4613: $60
	sub h                                            ; $4614: $94
	nop                                              ; $4615: $00
	inc bc                                           ; $4616: $03
	rrca                                             ; $4617: $0f
	rst AddAOntoHL                                          ; $4618: $ef
	cp a                                             ; $4619: $bf
	ccf                                              ; $461a: $3f
	cp $f9                                           ; $461b: $fe $f9
	set 7, l                                         ; $461d: $cb $fd
	ld [$9efd], a                                    ; $461f: $ea $fd $9e
	rlca                                             ; $4622: $07
	ld a, d                                          ; $4623: $7a
	ld a, [bc]                                       ; $4624: $0a
	ld a, a                                          ; $4625: $7f
	inc d                                            ; $4626: $14
	sbc c                                            ; $4627: $99
	ld a, $67                                        ; $4628: $3e $67
	ld a, [$e2c2]                                    ; $462a: $fa $c2 $e2
	ld d, d                                          ; $462d: $52
	ld a, e                                          ; $462e: $7b
	ld sp, $1f88                                     ; $462f: $31 $88 $1f
	rst $38                                          ; $4632: $ff
	cp $f7                                           ; $4633: $fe $f7
	rst $38                                          ; $4635: $ff
	rst $38                                          ; $4636: $ff
	db $fd                                           ; $4637: $fd
	ld a, [hl]                                       ; $4638: $7e
	or h                                             ; $4639: $b4
	add [hl]                                         ; $463a: $86
	sub [hl]                                         ; $463b: $96
	and [hl]                                         ; $463c: $a6
	or l                                             ; $463d: $b5
	nop                                              ; $463e: $00
	inc bc                                           ; $463f: $03
	rst $38                                          ; $4640: $ff
	cp $b7                                           ; $4641: $fe $b7
	rst $38                                          ; $4643: $ff
	or a                                             ; $4644: $b7
	rst $38                                          ; $4645: $ff
	rst SubAFromBC                                          ; $4646: $e7
	rst $38                                          ; $4647: $ff
	db $dd                                           ; $4648: $dd
	sub d                                            ; $4649: $92
	sub a                                            ; $464a: $97
	db $f4                                           ; $464b: $f4
	adc h                                            ; $464c: $8c
	ld bc, $faff                                     ; $464d: $01 $ff $fa
	sub $b7                                          ; $4650: $d6 $b7
	sbc $7a                                          ; $4652: $de $7a
	ret z                                            ; $4654: $c8

	add b                                            ; $4655: $80
	dec [hl]                                         ; $4656: $35
	ld [bc], a                                       ; $4657: $02
	sub l                                            ; $4658: $95
	dec sp                                           ; $4659: $3b
	sub c                                            ; $465a: $91
	dec de                                           ; $465b: $1b
	ld h, b                                          ; $465c: $60
	rst $38                                          ; $465d: $ff
	ret z                                            ; $465e: $c8

	ld c, c                                          ; $465f: $49
	ld c, e                                          ; $4660: $4b
	ld b, a                                          ; $4661: $47
	ld c, e                                          ; $4662: $4b
	rst JumpTable                                          ; $4663: $c7
	ld bc, $3600                                     ; $4664: $01 $00 $36
	jr jr_04e_45fb                                   ; $4667: $18 $92

	and d                                            ; $4669: $a2
	ld a, [hl+]                                      ; $466a: $2a
	ccf                                              ; $466b: $3f
	adc d                                            ; $466c: $8a
	rst $38                                          ; $466d: $ff
	pop bc                                           ; $466e: $c1
	ld [hl-], a                                      ; $466f: $32
	ld [de], a                                       ; $4670: $12
	ld c, d                                          ; $4671: $4a
	ld a, d                                          ; $4672: $7a
	ld a, d                                          ; $4673: $7a
	rst $38                                          ; $4674: $ff
	add b                                            ; $4675: $80
	xor a                                            ; $4676: $af
	cp e                                             ; $4677: $bb
	dec b                                            ; $4678: $05
	ld h, a                                          ; $4679: $67
	xor [hl]                                         ; $467a: $ae
	halt                                             ; $467b: $76
	jp hl                                            ; $467c: $e9


	ld sp, $4450                                     ; $467d: $31 $50 $44
	scf                                              ; $4680: $37
	or $76                                           ; $4681: $f6 $76
	xor $36                                          ; $4683: $ee $36
	rst $38                                          ; $4685: $ff
	nop                                              ; $4686: $00
	ld [hl], h                                       ; $4687: $74
	adc [hl]                                         ; $4688: $8e

jr_04e_4689:
	inc l                                            ; $4689: $2c
	rst AddAOntoHL                                          ; $468a: $ef
	call nc, $34dd                                   ; $468b: $d4 $dd $34
	rst $38                                          ; $468e: $ff
	adc e                                            ; $468f: $8b
	dec a                                            ; $4690: $3d
	call $c9c5                                       ; $4691: $cd $c5 $c9
	add hl, hl                                       ; $4694: $29
	sub a                                            ; $4695: $97
	rst AddAOntoHL                                          ; $4696: $ef
	ld [hl-], a                                      ; $4697: $32
	ld bc, $fd71                                     ; $4698: $01 $71 $fd
	ld a, c                                          ; $469b: $79
	db $db                                           ; $469c: $db
	ld [hl], l                                       ; $469d: $75
	ld a, d                                          ; $469e: $7a
	nop                                              ; $469f: $00
	add b                                            ; $46a0: $80
	adc $d5                                          ; $46a1: $ce $d5
	push de                                          ; $46a3: $d5
	ret nc                                           ; $46a4: $d0

	adc $ff                                          ; $46a5: $ce $ff
	cp [hl]                                          ; $46a7: $be
	ld d, l                                          ; $46a8: $55
	ld a, [hl+]                                      ; $46a9: $2a
	jp c, $ff8f                                      ; $46aa: $da $8f $ff

	rst SubAFromBC                                          ; $46ad: $e7
	ld [hl], h                                       ; $46ae: $74
	rst $38                                          ; $46af: $ff
	rst $38                                          ; $46b0: $ff
	rst FarCall                                          ; $46b1: $f7
	or a                                             ; $46b2: $b7
	or l                                             ; $46b3: $b5
	add [hl]                                         ; $46b4: $86
	ld l, a                                          ; $46b5: $6f
	rst AddAOntoHL                                          ; $46b6: $ef
	jr c, jr_04e_471f                                ; $46b7: $38 $66

	cp [hl]                                          ; $46b9: $be
	ld d, a                                          ; $46ba: $57
	add l                                            ; $46bb: $85
	cp e                                             ; $46bc: $bb
	or e                                             ; $46bd: $b3
	sbc d                                            ; $46be: $9a
	rst JumpTable                                          ; $46bf: $c7
	add b                                            ; $46c0: $80
	ld sp, hl                                        ; $46c1: $f9
	rst $38                                          ; $46c2: $ff
	rst $38                                          ; $46c3: $ff
	call $d7d1                                       ; $46c4: $cd $d1 $d7
	rst GetHLinHL                                          ; $46c7: $cf
	ld e, e                                          ; $46c8: $5b
	ld c, b                                          ; $46c9: $48
	ld hl, $fcc0                                     ; $46ca: $21 $c0 $fc
	cpl                                              ; $46cd: $2f
	add hl, bc                                       ; $46ce: $09
	add hl, sp                                       ; $46cf: $39
	add h                                            ; $46d0: $84
	inc sp                                           ; $46d1: $33
	call c, $fffe                                    ; $46d2: $dc $fe $ff
	ccf                                              ; $46d5: $3f
	rrca                                             ; $46d6: $0f
	ld a, e                                          ; $46d7: $7b
	nop                                              ; $46d8: $00
	ret nz                                           ; $46d9: $c0

	ld h, b                                          ; $46da: $60
	sub b                                            ; $46db: $90
	ld b, h                                          ; $46dc: $44
	nop                                              ; $46dd: $00
	di                                               ; $46de: $f3
	sbc h                                            ; $46df: $9c
	ld a, a                                          ; $46e0: $7f
	db $f4                                           ; $46e1: $f4
	sbc d                                            ; $46e2: $9a
	sbc a                                            ; $46e3: $9f
	ld l, a                                          ; $46e4: $6f
	dec sp                                           ; $46e5: $3b
	rst $38                                          ; $46e6: $ff
	db $fc                                           ; $46e7: $fc
	ld b, [hl]                                       ; $46e8: $46
	jr c, jr_04e_4689                                ; $46e9: $38 $9e

	push af                                          ; $46eb: $f5
	ld c, a                                          ; $46ec: $4f
	ldh a, [$9d]                                     ; $46ed: $f0 $9d
	ld [$5755], a                                    ; $46ef: $ea $55 $57
	ldh a, [$9b]                                     ; $46f2: $f0 $9b
	cp $55                                           ; $46f4: $fe $55
	xor d                                            ; $46f6: $aa
	ld d, h                                          ; $46f7: $54
	ld d, a                                          ; $46f8: $57
	ldh a, [rPCM12]                                  ; $46f9: $f0 $76
	add $92                                          ; $46fb: $c6 $92
	jp Jump_04e_7198                                 ; $46fd: $c3 $98 $71


	ldh [c], a                                       ; $4700: $e2
	add hl, de                                       ; $4701: $19
	add [hl]                                         ; $4702: $86
	ld a, c                                          ; $4703: $79
	rst SubAFromDE                                          ; $4704: $df
	ldh a, [$e7]                                     ; $4705: $f0 $e7
	adc [hl]                                         ; $4707: $8e
	inc e                                            ; $4708: $1c
	daa                                              ; $4709: $27
	ld a, c                                          ; $470a: $79
	add sp, -$64                                     ; $470b: $e8 $9c
	cp $cd                                           ; $470d: $fe $cd
	ld a, [hl+]                                      ; $470f: $2a
	ld a, e                                          ; $4710: $7b
	jp c, $e09b                                      ; $4711: $da $9b $e0

	pop bc                                           ; $4714: $c1
	nop                                              ; $4715: $00
	scf                                              ; $4716: $37
	ld a, e                                          ; $4717: $7b
	di                                               ; $4718: $f3
	sub e                                            ; $4719: $93
	rst $38                                          ; $471a: $ff
	db $f4                                           ; $471b: $f4
	db $eb                                           ; $471c: $eb
	ld c, c                                          ; $471d: $49
	ld d, h                                          ; $471e: $54

jr_04e_471f:
	and b                                            ; $471f: $a0
	ld d, h                                          ; $4720: $54
	and d                                            ; $4721: $a2
	xor a                                            ; $4722: $af
	ei                                               ; $4723: $fb
	halt                                             ; $4724: $76
	cp [hl]                                          ; $4725: $be
	ld [hl], h                                       ; $4726: $74
	adc b                                            ; $4727: $88

Jump_04e_4728:
	add d                                            ; $4728: $82
	ld [hl], b                                       ; $4729: $70
	call nz, Call_04e_4888                           ; $472a: $c4 $88 $48
	ld [hl+], a                                      ; $472d: $22
	adc a                                            ; $472e: $8f
	ld a, [hl+]                                      ; $472f: $2a
	ld d, h                                          ; $4730: $54
	xor d                                            ; $4731: $aa
	ld d, [hl]                                       ; $4732: $56
	xor a                                            ; $4733: $af
	sub l                                            ; $4734: $95
	call c, $c1f0                                    ; $4735: $dc $f0 $c1
	add d                                            ; $4738: $82
	inc b                                            ; $4739: $04
	ld [$bf10], sp                                   ; $473a: $08 $10 $bf
	inc c                                            ; $473d: $0c
	jr @+$22                                         ; $473e: $18 $20

	ld hl, $8321                                     ; $4740: $21 $21 $83
	ret nz                                           ; $4743: $c0

	ld b, b                                          ; $4744: $40
	ret nz                                           ; $4745: $c0

	ld a, d                                          ; $4746: $7a
	sbc [hl]                                         ; $4747: $9e
	rst SubAFromDE                                          ; $4748: $df
	ld b, b                                          ; $4749: $40
	sbc b                                            ; $474a: $98
	ld [bc], a                                       ; $474b: $02
	add d                                            ; $474c: $82
	ld h, b                                          ; $474d: $60
	add [hl]                                         ; $474e: $86
	add d                                            ; $474f: $82
	inc c                                            ; $4750: $0c
	add b                                            ; $4751: $80
	ld a, e                                          ; $4752: $7b
	db $ec                                           ; $4753: $ec
	sub b                                            ; $4754: $90
	ld [bc], a                                       ; $4755: $02
	ld b, b                                          ; $4756: $40
	inc b                                            ; $4757: $04
	add b                                            ; $4758: $80
	ld [$1000], sp                                   ; $4759: $08 $00 $10
	nop                                              ; $475c: $00
	jr jr_04e_475f                                   ; $475d: $18 $00

jr_04e_475f:
	jr nc, jr_04e_4762                               ; $475f: $30 $01

	ld h, c                                          ; $4761: $61

jr_04e_4762:
	ld b, b                                          ; $4762: $40
	add e                                            ; $4763: $83
	ld [hl], a                                       ; $4764: $77
	push af                                          ; $4765: $f5
	sub e                                            ; $4766: $93
	jr nz, jr_04e_4769                               ; $4767: $20 $00

jr_04e_4769:
	ld bc, $6140                                     ; $4769: $01 $40 $61
	ld b, c                                          ; $476c: $41
	jp nz, $8503                                     ; $476d: $c2 $03 $85

	add h                                            ; $4770: $84
	ld b, $02                                        ; $4771: $06 $02
	ld a, d                                          ; $4773: $7a
	sub b                                            ; $4774: $90
	sbc c                                            ; $4775: $99
	add b                                            ; $4776: $80
	ld [bc], a                                       ; $4777: $02
	ld [bc], a                                       ; $4778: $02
	nop                                              ; $4779: $00
	inc b                                            ; $477a: $04
	adc b                                            ; $477b: $88
	sbc $10                                          ; $477c: $de $10
	ld a, a                                          ; $477e: $7f
	db $e4                                           ; $477f: $e4
	cp $de                                           ; $4780: $fe $de
	ld [$10dd], sp                                   ; $4782: $08 $dd $10
	sub a                                            ; $4785: $97
	inc d                                            ; $4786: $14
	ld a, [hl+]                                      ; $4787: $2a
	inc d                                            ; $4788: $14
	dec hl                                           ; $4789: $2b
	dec d                                            ; $478a: $15
	ld hl, $0101                                     ; $478b: $21 $01 $01
	sbc $41                                          ; $478e: $de $41
	call c, $9640                                    ; $4790: $dc $40 $96
	jr z, @-$29                                      ; $4793: $28 $d5

	xor h                                            ; $4795: $ac
	sub l                                            ; $4796: $95
	xor b                                            ; $4797: $a8
	sub a                                            ; $4798: $97
	xor e                                            ; $4799: $ab
	add e                                            ; $479a: $83
	add [hl]                                         ; $479b: $86
	db $dd                                           ; $479c: $dd
	ld [bc], a                                       ; $479d: $02
	cp $df                                           ; $479e: $fe $df
	rst SubAFromBC                                          ; $47a0: $e7
	sub a                                            ; $47a1: $97
	or a                                             ; $47a2: $b7
	ld e, l                                          ; $47a3: $5d
	xor d                                            ; $47a4: $aa
	ld e, l                                          ; $47a5: $5d
	ld l, $51                                        ; $47a6: $2e $51
	add hl, de                                       ; $47a8: $19
	jr jr_04e_481e                                   ; $47a9: $18 $73

	jp z, $0480                                      ; $47ab: $ca $80 $04

	ret c                                            ; $47ae: $d8

	db $fc                                           ; $47af: $fc
	cp a                                             ; $47b0: $bf

jr_04e_47b1:
	rst SubAFromDE                                          ; $47b1: $df
	pop bc                                           ; $47b2: $c1
	rst AddAOntoHL                                          ; $47b3: $ef
	and h                                            ; $47b4: $a4
	ld d, a                                          ; $47b5: $57
	cp a                                             ; $47b6: $bf

jr_04e_47b7:
	ld b, e                                          ; $47b7: $43
	ld b, c                                          ; $47b8: $41
	jr nz, jr_04e_47f9                               ; $47b9: $20 $3e

	db $10                                           ; $47bb: $10
	dec de                                           ; $47bc: $1b
	ld [$815b], sp                                   ; $47bd: $08 $5b $81
	jp $3ee0                                         ; $47c0: $c3 $e0 $3e


	cp a                                             ; $47c3: $bf
	cp [hl]                                          ; $47c4: $be
	rst GetHLinHL                                          ; $47c5: $cf
	db $fd                                           ; $47c6: $fd
	ld a, a                                          ; $47c7: $7f
	inc a                                            ; $47c8: $3c
	sbc a                                            ; $47c9: $9f
	pop bc                                           ; $47ca: $c1
	ld b, b                                          ; $47cb: $40
	sub h                                            ; $47cc: $94
	ld h, c                                          ; $47cd: $61
	jr nc, jr_04e_47b1                               ; $47ce: $30 $e1

	ld sp, hl                                        ; $47d0: $f9
	ld e, $0b                                        ; $47d1: $1e $0b
	rst $38                                          ; $47d3: $ff
	ld a, e                                          ; $47d4: $7b
	ld hl, $7b5f                                     ; $47d5: $21 $5f $7b
	ld a, e                                          ; $47d8: $7b
	ld b, c                                          ; $47d9: $41
	sub e                                            ; $47da: $93
	ld b, $87                                        ; $47db: $06 $87
	rst SubAFromDE                                          ; $47dd: $df
	jr nz, jr_04e_47b7                               ; $47de: $20 $d7

	cp a                                             ; $47e0: $bf
	db $eb                                           ; $47e1: $eb
	sub $ab                                          ; $47e2: $d6 $ab
	db $dd                                           ; $47e4: $dd
	xor $f5                                          ; $47e5: $ee $f5
	ld a, c                                          ; $47e7: $79
	ld e, h                                          ; $47e8: $5c
	sub b                                            ; $47e9: $90
	dec sp                                           ; $47ea: $3b
	ld a, a                                          ; $47eb: $7f
	ld [hl], a                                       ; $47ec: $77
	cp e                                             ; $47ed: $bb
	rst SubAFromDE                                          ; $47ee: $df
	jp z, $f2f5                                      ; $47ef: $ca $f5 $f2

	xor [hl]                                         ; $47f2: $ae
	ld d, e                                          ; $47f3: $53
	and a                                            ; $47f4: $a7
	rst FarCall                                          ; $47f5: $f7
	ld e, e                                          ; $47f6: $5b
	ldh [$f0], a                                     ; $47f7: $e0 $f0

jr_04e_47f9:
	ld a, c                                          ; $47f9: $79
	ld c, c                                          ; $47fa: $49
	sbc h                                            ; $47fb: $9c
	ei                                               ; $47fc: $fb
	cp l                                             ; $47fd: $bd
	xor $79                                          ; $47fe: $ee $79
	ld [hl], l                                       ; $4800: $75
	ld a, l                                          ; $4801: $7d
	rst SubAFromHL                                          ; $4802: $d7
	sbc h                                            ; $4803: $9c
	ret nz                                           ; $4804: $c0

	ld hl, sp-$22                                    ; $4805: $f8 $de
	db $fc                                           ; $4807: $fc
	ld a, a                                          ; $4808: $7f
	db $eb                                           ; $4809: $eb
	sbc [hl]                                         ; $480a: $9e
	ld a, h                                          ; $480b: $7c
	ld [hl], e                                       ; $480c: $73
	ld h, l                                          ; $480d: $65
	sbc h                                            ; $480e: $9c
	jr jr_04e_482d                                   ; $480f: $18 $1c

	ld d, $fe                                        ; $4811: $16 $fe
	sbc d                                            ; $4813: $9a
	inc c                                            ; $4814: $0c
	inc e                                            ; $4815: $1c
	inc e                                            ; $4816: $1c
	ld e, $3e                                        ; $4817: $1e $3e
	db $fc                                           ; $4819: $fc
	sbc l                                            ; $481a: $9d
	jr jr_04e_4859                                   ; $481b: $18 $3c

	ld [hl], a                                       ; $481d: $77

jr_04e_481e:
	add sp, -$6a                                     ; $481e: $e8 $96
	ld bc, $1f13                                     ; $4820: $01 $13 $1f
	ld a, a                                          ; $4823: $7f
	rst $38                                          ; $4824: $ff
	ccf                                              ; $4825: $3f
	ld a, a                                          ; $4826: $7f
	ld [hl], c                                       ; $4827: $71
	rst SubAFromDE                                          ; $4828: $df
	ld a, b                                          ; $4829: $78
	db $ec                                           ; $482a: $ec
	sbc $ff                                          ; $482b: $de $ff

jr_04e_482d:
	sbc l                                            ; $482d: $9d
	adc [hl]                                         ; $482e: $8e
	and b                                            ; $482f: $a0
	db $dd                                           ; $4830: $dd
	rst $38                                          ; $4831: $ff
	adc d                                            ; $4832: $8a
	ldh [hDisp1_OBP0], a                                     ; $4833: $e0 $93
	push de                                          ; $4835: $d5
	ld a, $fb                                        ; $4836: $3e $fb
	db $fd                                           ; $4838: $fd
	ldh a, [c]                                       ; $4839: $f2
	push hl                                          ; $483a: $e5
	db $e3                                           ; $483b: $e3
	db $f4                                           ; $483c: $f4
	jr c, @-$06                                      ; $483d: $38 $f8

	ld hl, sp-$01                                    ; $483f: $f8 $ff
	rst FarCall                                          ; $4841: $f7
	rst FarCall                                          ; $4842: $f7
	db $ed                                           ; $4843: $ed
	ld e, d                                          ; $4844: $5a
	or l                                             ; $4845: $b5
	ld a, e                                          ; $4846: $7b
	ld b, e                                          ; $4847: $43
	sbc $ff                                          ; $4848: $de $ff
	sbc d                                            ; $484a: $9a
	db $10                                           ; $484b: $10
	jr nz, jr_04e_488e                               ; $484c: $20 $40

	add b                                            ; $484e: $80
	cp a                                             ; $484f: $bf
	sbc $ff                                          ; $4850: $de $ff
	ld a, l                                          ; $4852: $7d
	ld h, c                                          ; $4853: $61
	sbc l                                            ; $4854: $9d
	halt                                             ; $4855: $76
	cp d                                             ; $4856: $ba
	sbc $ff                                          ; $4857: $de $ff

jr_04e_4859:
	sbc d                                            ; $4859: $9a
	rst GetHLinHL                                          ; $485a: $cf
	ld hl, $8042                                     ; $485b: $21 $42 $80
	dec b                                            ; $485e: $05
	db $dd                                           ; $485f: $dd
	rst $38                                          ; $4860: $ff
	ld a, [hl]                                       ; $4861: $7e
	db $d3                                           ; $4862: $d3
	sbc [hl]                                         ; $4863: $9e
	ld bc, $7a79                                     ; $4864: $01 $79 $7a
	sbc d                                            ; $4867: $9a
	rst $38                                          ; $4868: $ff
	jr nc, jr_04e_486f                               ; $4869: $30 $04

	nop                                              ; $486b: $00
	ld [$ffdc], sp                                   ; $486c: $08 $dc $ff

jr_04e_486f:
	sbc h                                            ; $486f: $9c
	jr nc, jr_04e_4892                               ; $4870: $30 $20

	db $d3                                           ; $4872: $d3
	db $dd                                           ; $4873: $dd
	rst $38                                          ; $4874: $ff
	sbc e                                            ; $4875: $9b
	ld l, d                                          ; $4876: $6a
	nop                                              ; $4877: $00
	nop                                              ; $4878: $00
	cpl                                              ; $4879: $2f
	db $dd                                           ; $487a: $dd
	rst $38                                          ; $487b: $ff
	sbc e                                            ; $487c: $9b
	add b                                            ; $487d: $80
	inc bc                                           ; $487e: $03
	add b                                            ; $487f: $80
	ld b, $de                                        ; $4880: $06 $de
	rst $38                                          ; $4882: $ff
	sbc e                                            ; $4883: $9b
	rst SubAFromBC                                          ; $4884: $e7
	xor e                                            ; $4885: $ab
	add b                                            ; $4886: $80
	ld [bc], a                                       ; $4887: $02

Call_04e_4888:
	db $dd                                           ; $4888: $dd
	rst $38                                          ; $4889: $ff
	sbc d                                            ; $488a: $9a
	ei                                               ; $488b: $fb
	inc bc                                           ; $488c: $03
	nop                                              ; $488d: $00

jr_04e_488e:
	dec bc                                           ; $488e: $0b
	inc c                                            ; $488f: $0c
	ld [hl], a                                       ; $4890: $77
	jp hl                                            ; $4891: $e9


jr_04e_4892:
	sbc h                                            ; $4892: $9c
	ld a, [hl+]                                      ; $4893: $2a
	inc b                                            ; $4894: $04
	inc b                                            ; $4895: $04
	call c, Call_04e_7dff                            ; $4896: $dc $ff $7d
	inc l                                            ; $4899: $2c
	sbc [hl]                                         ; $489a: $9e
	ret z                                            ; $489b: $c8

	db $dd                                           ; $489c: $dd
	rst $38                                          ; $489d: $ff
	sbc e                                            ; $489e: $9b
	inc bc                                           ; $489f: $03
	and l                                            ; $48a0: $a5
	db $10                                           ; $48a1: $10
	scf                                              ; $48a2: $37
	db $dd                                           ; $48a3: $dd
	rst $38                                          ; $48a4: $ff
	sbc e                                            ; $48a5: $9b
	db $fc                                           ; $48a6: $fc
	ld c, $41                                        ; $48a7: $0e $41
	ld b, b                                          ; $48a9: $40
	db $dd                                           ; $48aa: $dd
	rst $38                                          ; $48ab: $ff
	sbc e                                            ; $48ac: $9b
	cpl                                              ; $48ad: $2f
	or l                                             ; $48ae: $b5
	nop                                              ; $48af: $00
	db $fd                                           ; $48b0: $fd
	db $dd                                           ; $48b1: $dd
	rst $38                                          ; $48b2: $ff
	sbc h                                            ; $48b3: $9c
	ldh a, [$60]                                     ; $48b4: $f0 $60
	add e                                            ; $48b6: $83
	ld [hl], b                                       ; $48b7: $70
	add [hl]                                         ; $48b8: $86
	sbc e                                            ; $48b9: $9b
	db $fc                                           ; $48ba: $fc
	ld e, d                                          ; $48bb: $5a
	nop                                              ; $48bc: $00
	add c                                            ; $48bd: $81
	ld [hl], e                                       ; $48be: $73
	ret c                                            ; $48bf: $d8

	sbc h                                            ; $48c0: $9c
	ldh [$28], a                                     ; $48c1: $e0 $28
	ld d, a                                          ; $48c3: $57
	ld [hl], a                                       ; $48c4: $77
	rst SubAFromBC                                          ; $48c5: $e7
	sbc h                                            ; $48c6: $9c
	ld bc, $06f8                                     ; $48c7: $01 $f8 $06
	ld l, l                                          ; $48ca: $6d
	sbc $9b                                          ; $48cb: $de $9b
	inc bc                                           ; $48cd: $03
	or l                                             ; $48ce: $b5
	ld d, [hl]                                       ; $48cf: $56
	ld d, l                                          ; $48d0: $55
	db $dd                                           ; $48d1: $dd
	rst $38                                          ; $48d2: $ff
	ld a, a                                          ; $48d3: $7f
	add d                                            ; $48d4: $82
	ld h, b                                          ; $48d5: $60
	xor [hl]                                         ; $48d6: $ae
	sbc [hl]                                         ; $48d7: $9e
	dec de                                           ; $48d8: $1b
	ld [hl], e                                       ; $48d9: $73
	ldh a, [$7e]                                     ; $48da: $f0 $7e
	ld d, d                                          ; $48dc: $52
	sbc [hl]                                         ; $48dd: $9e
	db $ec                                           ; $48de: $ec
	db $db                                           ; $48df: $db
	rst $38                                          ; $48e0: $ff
	sbc h                                            ; $48e1: $9c
	db $f4                                           ; $48e2: $f4
	cp $f8                                           ; $48e3: $fe $f8
	sbc $ff                                          ; $48e5: $de $ff
	sbc h                                            ; $48e7: $9c
	ld l, a                                          ; $48e8: $6f
	nop                                              ; $48e9: $00
	dec bc                                           ; $48ea: $0b
	ld a, b                                          ; $48eb: $78
	dec h                                            ; $48ec: $25
	sbc $ff                                          ; $48ed: $de $ff
	sbc h                                            ; $48ef: $9c
	jp z, $1e3d                                      ; $48f0: $ca $3d $1e

	call c, $9cff                                    ; $48f3: $dc $ff $9c
	ld a, a                                          ; $48f6: $7f
	di                                               ; $48f7: $f3
	ei                                               ; $48f8: $fb
	ld [hl], a                                       ; $48f9: $77
	ld [hl], a                                       ; $48fa: $77
	sbc e                                            ; $48fb: $9b
	rst $38                                          ; $48fc: $ff
	xor l                                            ; $48fd: $ad
	sub $e3                                          ; $48fe: $d6 $e3
	ld a, e                                          ; $4900: $7b
	xor a                                            ; $4901: $af
	rst SubAFromDE                                          ; $4902: $df
	rst AddAOntoHL                                          ; $4903: $ef
	sbc d                                            ; $4904: $9a
	rst FarCall                                          ; $4905: $f7
	ccf                                              ; $4906: $3f
	ld a, [hl]                                       ; $4907: $7e
	rlca                                             ; $4908: $07
	ldh a, [$de]                                     ; $4909: $f0 $de
	rst $38                                          ; $490b: $ff
	sub d                                            ; $490c: $92
	db $eb                                           ; $490d: $eb
	push af                                          ; $490e: $f5
	ld a, d                                          ; $490f: $7a
	cp l                                             ; $4910: $bd
	sbc $db                                          ; $4911: $de $db
	rst SubAFromBC                                          ; $4913: $e7
	rst $38                                          ; $4914: $ff
	ccf                                              ; $4915: $3f
	rst GetHLinHL                                          ; $4916: $cf
	rst SubAFromBC                                          ; $4917: $e7
	ld [hl], a                                       ; $4918: $77
	ei                                               ; $4919: $fb
	ld a, d                                          ; $491a: $7a
	xor l                                            ; $491b: $ad
	sub l                                            ; $491c: $95
	ld c, h                                          ; $491d: $4c
	db $ec                                           ; $491e: $ec
	ld sp, hl                                        ; $491f: $f9
	inc e                                            ; $4920: $1c
	xor [hl]                                         ; $4921: $ae
	rst SubAFromHL                                          ; $4922: $d7
	rst $38                                          ; $4923: $ff
	rst $38                                          ; $4924: $ff
	or d                                             ; $4925: $b2
	ldh a, [c]                                       ; $4926: $f2
	ld a, e                                          ; $4927: $7b
	ld [hl], a                                       ; $4928: $77
	ld a, c                                          ; $4929: $79
	xor l                                            ; $492a: $ad
	adc a                                            ; $492b: $8f
	adc e                                            ; $492c: $8b
	cp a                                             ; $492d: $bf
	xor e                                            ; $492e: $ab
	rst SubAFromDE                                          ; $492f: $df
	dec hl                                           ; $4930: $2b
	cp e                                             ; $4931: $bb
	db $e4                                           ; $4932: $e4
	push hl                                          ; $4933: $e5
	ld a, h                                          ; $4934: $7c
	ld e, h                                          ; $4935: $5c
	ld e, h                                          ; $4936: $5c
	inc a                                            ; $4937: $3c
	call c, $ffdc                                    ; $4938: $dc $dc $ff
	cp $7b                                           ; $493b: $fe $7b
	db $ec                                           ; $493d: $ec
	sbc e                                            ; $493e: $9b
	set 7, a                                         ; $493f: $cb $ff
	ret nz                                           ; $4941: $c0

	rst $38                                          ; $4942: $ff
	ld a, e                                          ; $4943: $7b
	add d                                            ; $4944: $82
	sbc h                                            ; $4945: $9c
	ccf                                              ; $4946: $3f
	inc d                                            ; $4947: $14
	ccf                                              ; $4948: $3f
	ld a, e                                          ; $4949: $7b
	ldh [$80], a                                     ; $494a: $e0 $80
	and $c2                                          ; $494c: $e6 $c2
	sub l                                            ; $494e: $95
	sub d                                            ; $494f: $92
	db $dd                                           ; $4950: $dd
	ld l, d                                          ; $4951: $6a
	or b                                             ; $4952: $b0
	ld b, $e3                                        ; $4953: $06 $e3
	db $ec                                           ; $4955: $ec
	jp nc, $e224                                     ; $4956: $d2 $24 $e2

	db $f4                                           ; $4959: $f4
	cp $ff                                           ; $495a: $fe $ff
	sbc a                                            ; $495c: $9f
	adc a                                            ; $495d: $8f
	xor a                                            ; $495e: $af
	adc a                                            ; $495f: $8f
	ld a, [bc]                                       ; $4960: $0a
	rra                                              ; $4961: $1f
	rlca                                             ; $4962: $07
	ld c, e                                          ; $4963: $4b
	ld h, b                                          ; $4964: $60
	ld [hl], b                                       ; $4965: $70
	ld [hl], b                                       ; $4966: $70
	ld a, b                                          ; $4967: $78
	db $fd                                           ; $4968: $fd
	ld hl, sp-$08                                    ; $4969: $f8 $f8
	adc [hl]                                         ; $496b: $8e
	db $fc                                           ; $496c: $fc
	di                                               ; $496d: $f3
	db $e3                                           ; $496e: $e3
	pop af                                           ; $496f: $f1
	ldh [$a0], a                                     ; $4970: $e0 $a0
	ldh [$e5], a                                     ; $4972: $e0 $e5
	pop de                                           ; $4974: $d1
	rrca                                             ; $4975: $0f
	rra                                              ; $4976: $1f
	rrca                                             ; $4977: $0f
	rra                                              ; $4978: $1f
	ld e, a                                          ; $4979: $5f
	rra                                              ; $497a: $1f
	dec de                                           ; $497b: $1b
	dec de                                           ; $497c: $1b
	sbc $7f                                          ; $497d: $de $7f
	sbc d                                            ; $497f: $9a
	ldh a, [$bd]                                     ; $4980: $f0 $bd
	cp $bf                                           ; $4982: $fe $bf

jr_04e_4984:
	ldh a, [$de]                                     ; $4984: $f0 $de
	or b                                             ; $4986: $b0
	ld a, [hl]                                       ; $4987: $7e
	and c                                            ; $4988: $a1
	rst SubAFromDE                                          ; $4989: $df
	ldh a, [hDisp1_WX]                                     ; $498a: $f0 $96
	rst $38                                          ; $498c: $ff
	push de                                          ; $498d: $d5
	xor d                                            ; $498e: $aa
	ld d, l                                          ; $498f: $55
	add d                                            ; $4990: $82
	ld a, e                                          ; $4991: $7b
	xor d                                            ; $4992: $aa
	push de                                          ; $4993: $d5
	xor d                                            ; $4994: $aa
	cp $92                                           ; $4995: $fe $92
	ld a, [hl]                                       ; $4997: $7e
	cp $00                                           ; $4998: $fe $00
	nop                                              ; $499a: $00
	ld b, b                                          ; $499b: $40
	ld d, l                                          ; $499c: $55
	xor b                                            ; $499d: $a8
	ld d, l                                          ; $499e: $55
	ld a, b                                          ; $499f: $78
	add hl, hl                                       ; $49a0: $29
	xor b                                            ; $49a1: $a8
	ld e, b                                          ; $49a2: $58
	cp b                                             ; $49a3: $b8
	sbc $03                                          ; $49a4: $de $03
	sbc l                                            ; $49a6: $9d
	add a                                            ; $49a7: $87
	rst SubAFromHL                                          ; $49a8: $d7
	sbc $07                                          ; $49a9: $de $07
	sub a                                            ; $49ab: $97
	push de                                          ; $49ac: $d5
	ld [$fcd5], a                                    ; $49ad: $ea $d5 $fc
	ld h, b                                          ; $49b0: $60
	dec d                                            ; $49b1: $15
	dec l                                            ; $49b2: $2d
	ld [hl], l                                       ; $49b3: $75
	sbc $80                                          ; $49b4: $de $80
	add b                                            ; $49b6: $80
	db $e3                                           ; $49b7: $e3
	rst $38                                          ; $49b8: $ff
	jp nz, $e2c2                                     ; $49b9: $c2 $c2 $e2

	ld d, c                                          ; $49bc: $51
	and b                                            ; $49bd: $a0
	ld d, e                                          ; $49be: $53
	inc de                                           ; $49bf: $13
	ld [hl+], a                                      ; $49c0: $22
	ldh [c], a                                       ; $49c1: $e2
	jp $0ec3                                         ; $49c2: $c3 $c3 $0e


	rra                                              ; $49c5: $1f
	rrca                                             ; $49c6: $0f
	rst AddAOntoHL                                          ; $49c7: $ef
	rst SubAFromDE                                          ; $49c8: $df
	rra                                              ; $49c9: $1f
	ccf                                              ; $49ca: $3f
	ccf                                              ; $49cb: $3f
	ld a, [hl-]                                      ; $49cc: $3a
	dec [hl]                                         ; $49cd: $35
	ld a, [hl+]                                      ; $49ce: $2a
	rst FarCall                                          ; $49cf: $f7
	and c                                            ; $49d0: $a1
	xor l                                            ; $49d1: $ad
	cp l                                             ; $49d2: $bd
	cp l                                             ; $49d3: $bd
	ld h, b                                          ; $49d4: $60
	ldh [$9c], a                                     ; $49d5: $e0 $9c
	pop hl                                           ; $49d7: $e1
	ccf                                              ; $49d8: $3f
	ld a, a                                          ; $49d9: $7f
	sbc $63                                          ; $49da: $de $63
	sub e                                            ; $49dc: $93
	ld [hl], l                                       ; $49dd: $75
	ld l, d                                          ; $49de: $6a
	ld d, l                                          ; $49df: $55
	push hl                                          ; $49e0: $e5
	rra                                              ; $49e1: $1f
	ld l, d                                          ; $49e2: $6a
	ld [hl], a                                       ; $49e3: $77
	rrca                                             ; $49e4: $0f
	ret nz                                           ; $49e5: $c0

	ret nz                                           ; $49e6: $c0

	ldh [$fa], a                                     ; $49e7: $e0 $fa
	sbc $e0                                          ; $49e9: $de $e0
	sub [hl]                                         ; $49eb: $96
	ldh a, [rHDMA5]                                  ; $49ec: $f0 $55
	pop de                                           ; $49ee: $d1
	dec d                                            ; $49ef: $15
	sub c                                            ; $49f0: $91
	ret                                              ; $49f1: $c9


	adc e                                            ; $49f2: $8b
	ld b, c                                          ; $49f3: $41
	dec c                                            ; $49f4: $0d
	sbc $3a                                          ; $49f5: $de $3a
	sub [hl]                                         ; $49f7: $96
	ld a, [de]                                       ; $49f8: $1a
	ld a, $7d                                        ; $49f9: $3e $7d
	ld [hl], d                                       ; $49fb: $72
	ldh a, [c]                                       ; $49fc: $f2
	call c, $c580                                    ; $49fd: $dc $80 $c5
	ld hl, sp+$7a                                    ; $4a00: $f8 $7a
	jr z, jr_04e_4984                                ; $4a02: $28 $80

	ld a, [$7f23]                                    ; $4a04: $fa $23 $7f
	ld a, [hl-]                                      ; $4a07: $3a
	rlca                                             ; $4a08: $07
	ld b, c                                          ; $4a09: $41
	rst $38                                          ; $4a0a: $ff
	db $fd                                           ; $4a0b: $fd
	dec c                                            ; $4a0c: $0d
	nop                                              ; $4a0d: $00
	add hl, sp                                       ; $4a0e: $39
	sbc a                                            ; $4a0f: $9f
	ld b, c                                          ; $4a10: $41
	push af                                          ; $4a11: $f5
	or c                                             ; $4a12: $b1
	ld [hl], $db                                     ; $4a13: $36 $db
	rst $38                                          ; $4a15: $ff
	add $60                                          ; $4a16: $c6 $60
	cp [hl]                                          ; $4a18: $be
	sub b                                            ; $4a19: $90
	cp $ff                                           ; $4a1a: $fe $ff
	scf                                              ; $4a1c: $37
	ld h, b                                          ; $4a1d: $60
	xor b                                            ; $4a1e: $a8
	cp h                                             ; $4a1f: $bc
	or d                                             ; $4a20: $b2
	ld a, a                                          ; $4a21: $7f
	or b                                             ; $4a22: $b0
	add b                                            ; $4a23: $80
	and b                                            ; $4a24: $a0
	ld e, b                                          ; $4a25: $58
	rst AddAOntoHL                                          ; $4a26: $ef
	ld h, a                                          ; $4a27: $67
	ld h, e                                          ; $4a28: $63
	ld l, l                                          ; $4a29: $6d
	cpl                                              ; $4a2a: $2f
	ld l, a                                          ; $4a2b: $6f
	rst $38                                          ; $4a2c: $ff
	rst SubAFromBC                                          ; $4a2d: $e7
	ld [$aa7d], a                                    ; $4a2e: $ea $7d $aa
	ld d, b                                          ; $4a31: $50
	and e                                            ; $4a32: $a3
	ld d, d                                          ; $4a33: $52
	and b                                            ; $4a34: $a0
	ld b, c                                          ; $4a35: $41
	dec d                                            ; $4a36: $15
	add d                                            ; $4a37: $82
	ld d, a                                          ; $4a38: $57
	xor a                                            ; $4a39: $af
	ld e, a                                          ; $4a3a: $5f
	xor a                                            ; $4a3b: $af
	ld e, a                                          ; $4a3c: $5f
	cp a                                             ; $4a3d: $bf
	rst $38                                          ; $4a3e: $ff
	push af                                          ; $4a3f: $f5
	ld hl, sp-$0a                                    ; $4a40: $f8 $f6
	ld a, [hl-]                                      ; $4a42: $3a
	adc l                                            ; $4a43: $8d
	or b                                             ; $4a44: $b0
	ld a, [$eff4]                                    ; $4a45: $fa $f4 $ef
	ld a, [hl+]                                      ; $4a48: $2a
	daa                                              ; $4a49: $27
	add hl, hl                                       ; $4a4a: $29
	push hl                                          ; $4a4b: $e5
	ld l, a                                          ; $4a4c: $6f
	dec h                                            ; $4a4d: $25
	dec hl                                           ; $4a4e: $2b
	rst $38                                          ; $4a4f: $ff
	cp a                                             ; $4a50: $bf
	add e                                            ; $4a51: $83
	jp $efe1                                         ; $4a52: $c3 $e1 $ef


	db $ed                                           ; $4a55: $ed
	ld [hl], l                                       ; $4a56: $75
	ei                                               ; $4a57: $fb
	ld a, l                                          ; $4a58: $7d
	daa                                              ; $4a59: $27
	add h                                            ; $4a5a: $84
	reti                                             ; $4a5b: $d9


	jp nz, $ffee                                     ; $4a5c: $c2 $ee $ff

	rra                                              ; $4a5f: $1f
	ld h, h                                          ; $4a60: $64
	sub h                                            ; $4a61: $94
	ld d, d                                          ; $4a62: $52
	sbc d                                            ; $4a63: $9a
	inc d                                            ; $4a64: $14
	adc b                                            ; $4a65: $88
	rst $38                                          ; $4a66: $ff
	rst $38                                          ; $4a67: $ff
	sbc e                                            ; $4a68: $9b
	ld a, e                                          ; $4a69: $7b
	cp l                                             ; $4a6a: $bd
	ld a, l                                          ; $4a6b: $7d
	ei                                               ; $4a6c: $fb
	ld a, a                                          ; $4a6d: $7f
	push af                                          ; $4a6e: $f5
	or $ae                                           ; $4a6f: $f6 $ae
	ld b, [hl]                                       ; $4a71: $46
	ret nz                                           ; $4a72: $c0

	ld [hl], c                                       ; $4a73: $71
	cp a                                             ; $4a74: $bf
	ld a, a                                          ; $4a75: $7f
	halt                                             ; $4a76: $76
	rst JumpTable                                          ; $4a77: $c7
	ld a, e                                          ; $4a78: $7b
	cp $9d                                           ; $4a79: $fe $9d
	cp a                                             ; $4a7b: $bf
	nop                                              ; $4a7c: $00
	jp c, $d910                                      ; $4a7d: $da $10 $d9

	rst $38                                          ; $4a80: $ff
	sub a                                            ; $4a81: $97
	ld bc, $0100                                     ; $4a82: $01 $00 $01
	inc bc                                           ; $4a85: $03
	inc bc                                           ; $4a86: $03
	ld [bc], a                                       ; $4a87: $02
	ld [bc], a                                       ; $4a88: $02
	inc bc                                           ; $4a89: $03
	reti                                             ; $4a8a: $d9


	rst $38                                          ; $4a8b: $ff
	sub e                                            ; $4a8c: $93
	add d                                            ; $4a8d: $82
	ld c, c                                          ; $4a8e: $49
	ld a, [hl+]                                      ; $4a8f: $2a
	rla                                              ; $4a90: $17
	ld d, l                                          ; $4a91: $55
	sub l                                            ; $4a92: $95
	sub l                                            ; $4a93: $95

jr_04e_4a94:
	add h                                            ; $4a94: $84
	rst $38                                          ; $4a95: $ff
	cp $fc                                           ; $4a96: $fe $fc
	ld sp, hl                                        ; $4a98: $f9
	sbc $f8                                          ; $4a99: $de $f8
	add b                                            ; $4a9b: $80
	ld sp, hl                                        ; $4a9c: $f9
	ldh [$e0], a                                     ; $4a9d: $e0 $e0
	ld h, b                                          ; $4a9f: $60
	halt                                             ; $4aa0: $76
	add d                                            ; $4aa1: $82
	adc h                                            ; $4aa2: $8c
	sub b                                            ; $4aa3: $90
	ld sp, hl                                        ; $4aa4: $f9
	rst $38                                          ; $4aa5: $ff
	rra                                              ; $4aa6: $1f
	rra                                              ; $4aa7: $1f
	adc a                                            ; $4aa8: $8f
	dec c                                            ; $4aa9: $0d
	ld bc, $0703                                     ; $4aaa: $01 $03 $07
	db $fd                                           ; $4aad: $fd
	cp $f3                                           ; $4aae: $fe $f3
	pop af                                           ; $4ab0: $f1
	call $a6d2                                       ; $4ab1: $cd $d2 $a6
	call nz, $e1ff                                   ; $4ab4: $c4 $ff $e1
	pop hl                                           ; $4ab7: $e1
	db $e3                                           ; $4ab8: $e3
	db $e3                                           ; $4ab9: $e3
	xor $90                                          ; $4aba: $ee $90
	call c, Call_04e_5abe                            ; $4abc: $dc $be $5a
	cp a                                             ; $4abf: $bf
	rst GetHLinHL                                          ; $4ac0: $cf
	push af                                          ; $4ac1: $f5
	cp a                                             ; $4ac2: $bf
	ld b, b                                          ; $4ac3: $40
	jr nz, jr_04e_4b36                               ; $4ac4: $20 $70

	rst $38                                          ; $4ac6: $ff
	ret nz                                           ; $4ac7: $c0

	ldh [$c0], a                                     ; $4ac8: $e0 $c0
	ret nz                                           ; $4aca: $c0

	ld a, d                                          ; $4acb: $7a
	ld l, a                                          ; $4acc: $6f
	add b                                            ; $4acd: $80
	ret nz                                           ; $4ace: $c0

	ldh a, [$a4]                                     ; $4acf: $f0 $a4
	ld d, e                                          ; $4ad1: $53
	rst FarCall                                          ; $4ad2: $f7
	ld e, h                                          ; $4ad3: $5c
	cp a                                             ; $4ad4: $bf
	ld e, a                                          ; $4ad5: $5f
	cp a                                             ; $4ad6: $bf
	rrca                                             ; $4ad7: $0f
	rrca                                             ; $4ad8: $0f
	rlca                                             ; $4ad9: $07
	jr jr_04e_4a94                                   ; $4ada: $18 $b8

	ld e, b                                          ; $4adc: $58
	cp b                                             ; $4add: $b8
	dec a                                            ; $4ade: $3d
	ld [hl], l                                       ; $4adf: $75
	db $fd                                           ; $4ae0: $fd
	cp $80                                           ; $4ae1: $fe $80
	ld bc, $ffe0                                     ; $4ae3: $01 $e0 $ff
	jp nz, $e2e2                                     ; $4ae6: $c2 $e2 $e2

	ret nz                                           ; $4ae9: $c0

	nop                                              ; $4aea: $00
	nop                                              ; $4aeb: $00
	add hl, de                                       ; $4aec: $19
	sub l                                            ; $4aed: $95
	add hl, de                                       ; $4aee: $19
	rst JumpTable                                          ; $4aef: $c7
	jp Jump_04e_7e61                                 ; $4af0: $c3 $61 $7e


	rst SubAFromDE                                          ; $4af3: $df
	ld [$9793], sp                                   ; $4af4: $08 $93 $97
	ccf                                              ; $4af7: $3f
	ld a, c                                          ; $4af8: $79
	ld a, [hl-]                                      ; $4af9: $3a
	sub e                                            ; $4afa: $93
	ld h, b                                          ; $4afb: $60
	ldh a, [$f8]                                     ; $4afc: $f0 $f8
	ld hl, sp-$47                                    ; $4afe: $f8 $b9
	sbc a                                            ; $4b00: $9f
	sbc e                                            ; $4b01: $9b
	sbc e                                            ; $4b02: $9b
	ld b, b                                          ; $4b03: $40
	nop                                              ; $4b04: $00
	ret nz                                           ; $4b05: $c0

	db $fc                                           ; $4b06: $fc
	db $dd                                           ; $4b07: $dd
	ld h, a                                          ; $4b08: $67
	rst SubAFromDE                                          ; $4b09: $df
	ld bc, $03df                                     ; $4b0a: $01 $df $03
	sub [hl]                                         ; $4b0d: $96
	and a                                            ; $4b0e: $a7
	ld [hl], a                                       ; $4b0f: $77
	db $fd                                           ; $4b10: $fd
	rst $38                                          ; $4b11: $ff
	db $d3                                           ; $4b12: $d3
	sub c                                            ; $4b13: $91
	dec c                                            ; $4b14: $0d
	ccf                                              ; $4b15: $3f
	db $fc                                           ; $4b16: $fc
	sbc $fe                                          ; $4b17: $de $fe
	ld a, [hl]                                       ; $4b19: $7e
	dec e                                            ; $4b1a: $1d
	add b                                            ; $4b1b: $80
	dec de                                           ; $4b1c: $1b
	ccf                                              ; $4b1d: $3f
	rst JumpTable                                          ; $4b1e: $c7
	rst JumpTable                                          ; $4b1f: $c7
	adc e                                            ; $4b20: $8b
	sub $af                                          ; $4b21: $d6 $af
	and [hl]                                         ; $4b23: $a6
	ld [hl], l                                       ; $4b24: $75
	xor e                                            ; $4b25: $ab
	ld a, $3e                                        ; $4b26: $3e $3e
	ld [hl], a                                       ; $4b28: $77
	ld a, a                                          ; $4b29: $7f
	inc e                                            ; $4b2a: $1c
	add hl, de                                       ; $4b2b: $19
	and b                                            ; $4b2c: $a0
	ldh [$ef], a                                     ; $4b2d: $e0 $ef
	rst AddAOntoHL                                          ; $4b2f: $ef
	ret c                                            ; $4b30: $d8

	ld [$3e4a], sp                                   ; $4b31: $08 $4a $3e
	sbc h                                            ; $4b34: $9c
	sbc d                                            ; $4b35: $9a

jr_04e_4b36:
	dec e                                            ; $4b36: $1d
	ld e, $2f                                        ; $4b37: $1e $2f
	rst $38                                          ; $4b39: $ff
	sbc l                                            ; $4b3a: $9d
	sub h                                            ; $4b3b: $94
	pop bc                                           ; $4b3c: $c1
	ld h, c                                          ; $4b3d: $61
	ld [hl], c                                       ; $4b3e: $71
	ld d, l                                          ; $4b3f: $55
	and a                                            ; $4b40: $a7
	ld d, a                                          ; $4b41: $57
	rst SubAFromBC                                          ; $4b42: $e7
	ld l, e                                          ; $4b43: $6b
	inc bc                                           ; $4b44: $03
	ld b, e                                          ; $4b45: $43
	ld h, e                                          ; $4b46: $63
	ld [hl], a                                       ; $4b47: $77
	ld hl, sp+$7e                                    ; $4b48: $f8 $7e
	ld e, a                                          ; $4b4a: $5f
	rst SubAFromDE                                          ; $4b4b: $df
	sbc e                                            ; $4b4c: $9b
	sub d                                            ; $4b4d: $92
	ei                                               ; $4b4e: $fb
	ld e, d                                          ; $4b4f: $5a
	ld sp, hl                                        ; $4b50: $f9
	ld c, b                                          ; $4b51: $48
	db $fc                                           ; $4b52: $fc
	ld b, $83                                        ; $4b53: $06 $83
	ld bc, $e4e4                                     ; $4b55: $01 $e4 $e4
	and $ff                                          ; $4b58: $e6 $ff
	sbc h                                            ; $4b5a: $9c
	ld [hl], a                                       ; $4b5b: $77
	jr nz, @-$67                                     ; $4b5c: $20 $97

	dec sp                                           ; $4b5e: $3b
	db $fd                                           ; $4b5f: $fd
	add h                                            ; $4b60: $84
	adc $3c                                          ; $4b61: $ce $3c
	ret nc                                           ; $4b63: $d0

	dec sp                                           ; $4b64: $3b
	ccf                                              ; $4b65: $3f
	sbc $7f                                          ; $4b66: $de $7f
	rst SubAFromDE                                          ; $4b68: $df

jr_04e_4b69:
	ld a, h                                          ; $4b69: $7c
	sub c                                            ; $4b6a: $91
	jr c, jr_04e_4b69                                ; $4b6b: $38 $fc

	ld hl, sp-$10                                    ; $4b6d: $f8 $f0
	ret c                                            ; $4b6f: $d8

Call_04e_4b70:
	sub b                                            ; $4b70: $90
	ccf                                              ; $4b71: $3f
	nop                                              ; $4b72: $00
	ld [hl], a                                       ; $4b73: $77
	rst $38                                          ; $4b74: $ff
	daa                                              ; $4b75: $27
	cpl                                              ; $4b76: $2f
	daa                                              ; $4b77: $27
	ld l, a                                          ; $4b78: $6f
	db $fd                                           ; $4b79: $fd
	add e                                            ; $4b7a: $83
	ret nc                                           ; $4b7b: $d0

	call nc, $fefc                                   ; $4b7c: $d4 $fc $fe
	dec de                                           ; $4b7f: $1b
	db $10                                           ; $4b80: $10
	and $e7                                          ; $4b81: $e6 $e7
	rst AddAOntoHL                                          ; $4b83: $ef
	db $eb                                           ; $4b84: $eb
	ei                                               ; $4b85: $fb
	rst $38                                          ; $4b86: $ff
	db $fc                                           ; $4b87: $fc
	jr c, jr_04e_4bce                                ; $4b88: $38 $44

	ld b, d                                          ; $4b8a: $42
	ld c, h                                          ; $4b8b: $4c
	sbc d                                            ; $4b8c: $9a
	ld c, d                                          ; $4b8d: $4a
	ld e, c                                          ; $4b8e: $59
	db $fd                                           ; $4b8f: $fd
	rlca                                             ; $4b90: $07
	ld h, a                                          ; $4b91: $67
	rst $38                                          ; $4b92: $ff
	ei                                               ; $4b93: $fb
	ld a, l                                          ; $4b94: $7d
	db $fd                                           ; $4b95: $fd
	rst $38                                          ; $4b96: $ff
	ld a, d                                          ; $4b97: $7a
	add sp, -$66                                     ; $4b98: $e8 $9a
	ld [bc], a                                       ; $4b9a: $02
	sbc a                                            ; $4b9b: $9f
	ld l, a                                          ; $4b9c: $6f
	cp b                                             ; $4b9d: $b8
	adc a                                            ; $4b9e: $8f
	ld [hl], l                                       ; $4b9f: $75
	ld b, c                                          ; $4ba0: $41
	ld a, a                                          ; $4ba1: $7f
	ld h, $99                                        ; $4ba2: $26 $99
	rst JumpTable                                          ; $4ba4: $c7
	ldh a, [rP1]                                     ; $4ba5: $f0 $00
	nop                                              ; $4ba7: $00
	add b                                            ; $4ba8: $80
	ret nz                                           ; $4ba9: $c0

	reti                                             ; $4baa: $d9


	db $10                                           ; $4bab: $10
	reti                                             ; $4bac: $d9


	rst $38                                          ; $4bad: $ff
	ld a, a                                          ; $4bae: $7f
	ld a, [de]                                       ; $4baf: $1a
	call c, $9e06                                    ; $4bb0: $dc $06 $9e
	ld a, [bc]                                       ; $4bb3: $0a
	reti                                             ; $4bb4: $d9


	rst $38                                          ; $4bb5: $ff
	sbc h                                            ; $4bb6: $9c
	inc c                                            ; $4bb7: $0c
	dec c                                            ; $4bb8: $0d
	dec c                                            ; $4bb9: $0d
	ld a, e                                          ; $4bba: $7b
	ld b, $df                                        ; $4bbb: $06 $df
	ld c, $76                                        ; $4bbd: $0e $76
	jp $827d                                         ; $4bbf: $c3 $7d $82


	rst SubAFromDE                                          ; $4bc2: $df
	db $fd                                           ; $4bc3: $fd
	add l                                            ; $4bc4: $85
	add a                                            ; $4bc5: $87
	adc [hl]                                         ; $4bc6: $8e
	sbc h                                            ; $4bc7: $9c
	ld e, c                                          ; $4bc8: $59
	or e                                             ; $4bc9: $b3
	ld [hl], a                                       ; $4bca: $77
	db $e4                                           ; $4bcb: $e4
	ld b, $0f                                        ; $4bcc: $06 $0f

jr_04e_4bce:
	rra                                              ; $4bce: $1f
	ccf                                              ; $4bcf: $3f
	ld a, $7c                                        ; $4bd0: $3e $7c
	ld hl, sp-$05                                    ; $4bd2: $f8 $fb
	rst $38                                          ; $4bd4: $ff
	inc c                                            ; $4bd5: $0c
	rrca                                             ; $4bd6: $0f
	inc b                                            ; $4bd7: $04
	ld bc, $0603                                     ; $4bd8: $01 $03 $06
	dec bc                                           ; $4bdb: $0b
	ld [hl], c                                       ; $4bdc: $71
	xor a                                            ; $4bdd: $af
	ld a, a                                          ; $4bde: $7f
	sbc $0f                                          ; $4bdf: $de $0f
	add e                                            ; $4be1: $83
	rra                                              ; $4be2: $1f
	rst $38                                          ; $4be3: $ff
	rst $38                                          ; $4be4: $ff
	sbc b                                            ; $4be5: $98
	nop                                              ; $4be6: $00
	ret nz                                           ; $4be7: $c0

	inc e                                            ; $4be8: $1c
	nop                                              ; $4be9: $00
	ld a, [hl]                                       ; $4bea: $7e
	ld a, a                                          ; $4beb: $7f
	cp a                                             ; $4bec: $bf
	ret c                                            ; $4bed: $d8

	rst SubAFromDE                                          ; $4bee: $df
	ret nz                                           ; $4bef: $c0

	call c, $c1fe                                    ; $4bf0: $dc $fe $c1
	add b                                            ; $4bf3: $80
	ret nz                                           ; $4bf4: $c0

	inc e                                            ; $4bf5: $1c
	inc a                                            ; $4bf6: $3c
	inc d                                            ; $4bf7: $14
	inc [hl]                                         ; $4bf8: $34
	dec [hl]                                         ; $4bf9: $35
	ld a, $ff                                        ; $4bfa: $3e $ff
	ldh [$b8], a                                     ; $4bfc: $e0 $b8
	db $dd                                           ; $4bfe: $dd
	ld hl, sp-$76                                    ; $4bff: $f8 $8a
	ldh a, [rSVBK]                                   ; $4c01: $f0 $70
	ccf                                              ; $4c03: $3f
	add hl, de                                       ; $4c04: $19
	ld d, $30                                        ; $4c05: $16 $30
	jr z, jr_04e_4c41                                ; $4c07: $28 $38

	jr c, jr_04e_4c0b                                ; $4c09: $38 $00

jr_04e_4c0b:
	jr nc, jr_04e_4c28                               ; $4c0b: $30 $1b

	ld l, $6c                                        ; $4c0d: $2e $6c
	ld a, b                                          ; $4c0f: $78
	ld a, b                                          ; $4c10: $78
	jr c, jr_04e_4c4b                                ; $4c11: $38 $38

	rst $38                                          ; $4c13: $ff
	ld hl, sp-$08                                    ; $4c14: $f8 $f8
	ld a, e                                          ; $4c16: $7b
	ld a, e                                          ; $4c17: $7b
	ld a, [hl]                                       ; $4c18: $7e
	rst GetHLinHL                                          ; $4c19: $cf
	sbc e                                            ; $4c1a: $9b
	nop                                              ; $4c1b: $00
	ld hl, sp-$08                                    ; $4c1c: $f8 $f8
	or b                                             ; $4c1e: $b0
	db $dd                                           ; $4c1f: $dd
	ldh [$7f], a                                     ; $4c20: $e0 $7f
	jr nz, @-$66                                     ; $4c22: $20 $98

	rlca                                             ; $4c24: $07
	add c                                            ; $4c25: $81
	ld b, e                                          ; $4c26: $43
	and b                                            ; $4c27: $a0

jr_04e_4c28:
	ld sp, hl                                        ; $4c28: $f9
	rst $38                                          ; $4c29: $ff
	nop                                              ; $4c2a: $00
	sbc $03                                          ; $4c2b: $de $03
	rst SubAFromDE                                          ; $4c2d: $df
	ld bc, $95ff                                     ; $4c2e: $01 $ff $95
	rst $38                                          ; $4c31: $ff
	rlca                                             ; $4c32: $07
	ld b, d                                          ; $4c33: $42
	ld b, b                                          ; $4c34: $40
	ld c, b                                          ; $4c35: $48
	ld [$2c0c], sp                                   ; $4c36: $08 $0c $2c
	ld a, [bc]                                       ; $4c39: $0a
	rst SubAFromDE                                          ; $4c3a: $df
	sbc $fe                                          ; $4c3b: $de $fe
	rst SubAFromDE                                          ; $4c3d: $df
	sbc $df                                          ; $4c3e: $de $df
	cp [hl]                                          ; $4c40: $be

jr_04e_4c41:
	sub h                                            ; $4c41: $94
	ld d, h                                          ; $4c42: $54
	adc d                                            ; $4c43: $8a
	sub h                                            ; $4c44: $94
	db $10                                           ; $4c45: $10
	sbc [hl]                                         ; $4c46: $9e
	cp [hl]                                          ; $4c47: $be
	cp a                                             ; $4c48: $bf
	ccf                                              ; $4c49: $3f
	pop hl                                           ; $4c4a: $e1

jr_04e_4c4b:
	ld h, c                                          ; $4c4b: $61
	ld h, c                                          ; $4c4c: $61
	db $dd                                           ; $4c4d: $dd
	ld a, a                                          ; $4c4e: $7f
	add b                                            ; $4c4f: $80
	rst $38                                          ; $4c50: $ff
	pop bc                                           ; $4c51: $c1
	rst SubAFromBC                                          ; $4c52: $e7
	jp nz, $d9a2                                     ; $4c53: $c2 $a2 $d9

	sub c                                            ; $4c56: $91
	ld e, b                                          ; $4c57: $58
	cp $38                                           ; $4c58: $fe $38
	inc e                                            ; $4c5a: $1c
	inc e                                            ; $4c5b: $1c
	ld e, $0e                                        ; $4c5c: $1e $0e
	rrca                                             ; $4c5e: $0f
	add a                                            ; $4c5f: $87
	ld bc, $4367                                     ; $4c60: $01 $67 $43
	ld l, b                                          ; $4c63: $68
	ld l, [hl]                                       ; $4c64: $6e
	xor a                                            ; $4c65: $af
	add sp, -$11                                     ; $4c66: $e8 $ef
	ld h, b                                          ; $4c68: $60
	sbc e                                            ; $4c69: $9b
	rst $38                                          ; $4c6a: $ff
	rst FarCall                                          ; $4c6b: $f7
	pop af                                           ; $4c6c: $f1
	ldh a, [$f7]                                     ; $4c6d: $f0 $f7
	ld a, h                                          ; $4c6f: $7c
	ldh a, [$8e]                                     ; $4c70: $f0 $8e
	cp $03                                           ; $4c72: $fe $03
	ld sp, hl                                        ; $4c74: $f9
	add hl, bc                                       ; $4c75: $09
	dec e                                            ; $4c76: $1d
	db $fd                                           ; $4c77: $fd
	dec e                                            ; $4c78: $1d
	push hl                                          ; $4c79: $e5
	ld bc, $07ff                                     ; $4c7a: $01 $ff $07
	rst FarCall                                          ; $4c7d: $f7
	rst SubAFromBC                                          ; $4c7e: $e7
	rlca                                             ; $4c7f: $07
	rst SubAFromBC                                          ; $4c80: $e7
	rst $38                                          ; $4c81: $ff
	sub d                                            ; $4c82: $92
	sbc $11                                          ; $4c83: $de $11
	sbc $91                                          ; $4c85: $de $91
	sbc [hl]                                         ; $4c87: $9e
	sub e                                            ; $4c88: $93
	reti                                             ; $4c89: $d9


	rst $38                                          ; $4c8a: $ff
	rst $38                                          ; $4c8b: $ff
	sbc d                                            ; $4c8c: $9a
	ld bc, $8081                                     ; $4c8d: $01 $81 $80
	pop bc                                           ; $4c90: $c1
	ld a, [$347a]                                    ; $4c91: $fa $7a $34
	rst SubAFromDE                                          ; $4c94: $df
	add b                                            ; $4c95: $80
	ld a, a                                          ; $4c96: $7f
	rst FarCall                                          ; $4c97: $f7
	ld a, h                                          ; $4c98: $7c
	ld [hl], a                                       ; $4c99: $77
	sub h                                            ; $4c9a: $94
	rst SubAFromBC                                          ; $4c9b: $e7
	add $8a                                          ; $4c9c: $c6 $8a
	cp $c6                                           ; $4c9e: $fe $c6
	ld d, [hl]                                       ; $4ca0: $56
	reti                                             ; $4ca1: $d9


	ld e, b                                          ; $4ca2: $58
	ld b, d                                          ; $4ca3: $42

jr_04e_4ca4:
	ld b, d                                          ; $4ca4: $42
	and $de                                          ; $4ca5: $e6 $de
	db $fc                                           ; $4ca7: $fc
	sub d                                            ; $4ca8: $92
	ld a, h                                          ; $4ca9: $7c
	rst $38                                          ; $4caa: $ff
	dec b                                            ; $4cab: $05
	dec c                                            ; $4cac: $0d
	inc c                                            ; $4cad: $0c
	rlca                                             ; $4cae: $07
	inc bc                                           ; $4caf: $03
	ld bc, $01fd                                     ; $4cb0: $01 $fd $01
	ld b, $06                                        ; $4cb3: $06 $06
	rlca                                             ; $4cb5: $07
	db $dd                                           ; $4cb6: $dd

jr_04e_4cb7:
	inc bc                                           ; $4cb7: $03
	adc c                                            ; $4cb8: $89
	rst $38                                          ; $4cb9: $ff
	ld e, [hl]                                       ; $4cba: $5e
	ld l, h                                          ; $4cbb: $6c
	ld l, h                                          ; $4cbc: $6c
	db $e4                                           ; $4cbd: $e4
	inc h                                            ; $4cbe: $24
	inc l                                            ; $4cbf: $2c
	add hl, hl                                       ; $4cc0: $29
	jr z, jr_04e_4ca4                                ; $4cc1: $28 $e1

	di                                               ; $4cc3: $f3
	di                                               ; $4cc4: $f3
	ei                                               ; $4cc5: $fb
	ei                                               ; $4cc6: $fb
	ld [hl], e                                       ; $4cc7: $73
	ld [hl], a                                       ; $4cc8: $77
	ld [hl], a                                       ; $4cc9: $77
	nop                                              ; $4cca: $00
	nop                                              ; $4ccb: $00
	rlca                                             ; $4ccc: $07
	ld a, $28                                        ; $4ccd: $3e $28
	sbc $08                                          ; $4ccf: $de $08
	reti                                             ; $4cd1: $d9


	rst $38                                          ; $4cd2: $ff
	sbc h                                            ; $4cd3: $9c
	ld [hl-], a                                      ; $4cd4: $32
	pop hl                                           ; $4cd5: $e1
	add c                                            ; $4cd6: $81
	ld [hl], a                                       ; $4cd7: $77
	ld c, b                                          ; $4cd8: $48
	ld a, b                                          ; $4cd9: $78
	jr nc, jr_04e_4cb7                               ; $4cda: $30 $db

	rst $38                                          ; $4cdc: $ff
	sub [hl]                                         ; $4cdd: $96
	ld b, $01                                        ; $4cde: $06 $01
	ld bc, $8282                                     ; $4ce0: $01 $82 $82
	ret nz                                           ; $4ce3: $c0

	ld h, c                                          ; $4ce4: $61
	ld h, c                                          ; $4ce5: $61
	db $fd                                           ; $4ce6: $fd
	ld a, d                                          ; $4ce7: $7a
	ld bc, $ffdd                                     ; $4ce8: $01 $dd $ff
	ld a, h                                          ; $4ceb: $7c
	ld h, c                                          ; $4cec: $61
	sbc [hl]                                         ; $4ced: $9e
	ld a, [$ffdd]                                    ; $4cee: $fa $dd $ff
	sbc e                                            ; $4cf1: $9b
	ld a, a                                          ; $4cf2: $7f
	ld d, l                                          ; $4cf3: $55
	xor d                                            ; $4cf4: $aa
	dec b                                            ; $4cf5: $05
	db $fd                                           ; $4cf6: $fd
	sbc c                                            ; $4cf7: $99
	add b                                            ; $4cf8: $80
	ld l, e                                          ; $4cf9: $6b
	ld [hl], $fd                                     ; $4cfa: $36 $fd
	ld a, [$79fd]                                    ; $4cfc: $fa $fd $79
	ld a, e                                          ; $4cff: $7b
	ld a, a                                          ; $4d00: $7f
	ld [hl], $8f                                     ; $4d01: $36 $8f
	ld d, d                                          ; $4d03: $52
	inc h                                            ; $4d04: $24
	ld [bc], a                                       ; $4d05: $02
	inc bc                                           ; $4d06: $03
	ld bc, $df0f                                     ; $4d07: $01 $0f $df
	ld l, a                                          ; $4d0a: $6f
	jr c, @+$01                                      ; $4d0b: $38 $ff

	ccf                                              ; $4d0d: $3f
	rra                                              ; $4d0e: $1f
	sbc [hl]                                         ; $4d0f: $9e
	set 4, b                                         ; $4d10: $cb $e0
	ldh a, [$de]                                     ; $4d12: $f0 $de
	ld a, a                                          ; $4d14: $7f
	ld a, a                                          ; $4d15: $7f
	add hl, de                                       ; $4d16: $19
	sbc c                                            ; $4d17: $99
	db $fc                                           ; $4d18: $fc
	ldh [$f5], a                                     ; $4d19: $e0 $f5
	xor d                                            ; $4d1b: $aa
	push de                                          ; $4d1c: $d5
	cp a                                             ; $4d1d: $bf
	ld a, c                                          ; $4d1e: $79
	ld d, $92                                        ; $4d1f: $16 $92
	ccf                                              ; $4d21: $3f
	ld a, [hl+]                                      ; $4d22: $2a
	ld d, l                                          ; $4d23: $55
	ld [$80c0], a                                    ; $4d24: $ea $c0 $80
	add b                                            ; $4d27: $80
	nop                                              ; $4d28: $00
	dec hl                                           ; $4d29: $2b
	dec sp                                           ; $4d2a: $3b
	cp b                                             ; $4d2b: $b8
	ld e, b                                          ; $4d2c: $58
	ld [$ffde], a                                    ; $4d2d: $ea $de $ff
	sbc d                                            ; $4d30: $9a
	db $fc                                           ; $4d31: $fc
	db $ec                                           ; $4d32: $ec
	ld a, a                                          ; $4d33: $7f
	cp a                                             ; $4d34: $bf
	dec d                                            ; $4d35: $15
	cp $9a                                           ; $4d36: $fe $9a
	ldh [rWY], a                                     ; $4d38: $e0 $4a
	ld h, l                                          ; $4d3a: $65
	ld [$ddbd], a                                    ; $4d3b: $ea $bd $dd
	rst $38                                          ; $4d3e: $ff
	sbc e                                            ; $4d3f: $9b
	push hl                                          ; $4d40: $e5
	ld a, [$42f5]                                    ; $4d41: $fa $f5 $42
	db $fd                                           ; $4d44: $fd
	sbc h                                            ; $4d45: $9c
	xor d                                            ; $4d46: $aa
	ld d, h                                          ; $4d47: $54
	xor d                                            ; $4d48: $aa
	call c, $9cff                                    ; $4d49: $dc $ff $9c
	ld d, l                                          ; $4d4c: $55
	xor e                                            ; $4d4d: $ab
	ld d, l                                          ; $4d4e: $55
	db $fd                                           ; $4d4f: $fd
	sbc h                                            ; $4d50: $9c
	sub [hl]                                         ; $4d51: $96
	or [hl]                                          ; $4d52: $b6
	db $10                                           ; $4d53: $10
	ld l, a                                          ; $4d54: $6f
	ldh a, [$7b]                                     ; $4d55: $f0 $7b
	xor $fd                                          ; $4d57: $ee $fd
	ld a, a                                          ; $4d59: $7f
	jp z, Jump_04e_7f9c                              ; $4d5a: $ca $9c $7f

	cp [hl]                                          ; $4d5d: $be
	cp $de                                           ; $4d5e: $fe $de
	ldh a, [c]                                       ; $4d60: $f2
	ld a, a                                          ; $4d61: $7f
	ld sp, hl                                        ; $4d62: $f9
	ld a, a                                          ; $4d63: $7f
	cp $dd                                           ; $4d64: $fe $dd
	ccf                                              ; $4d66: $3f
	sbc c                                            ; $4d67: $99
	nop                                              ; $4d68: $00
	ld a, [hl+]                                      ; $4d69: $2a
	ld d, h                                          ; $4d6a: $54
	jr z, jr_04e_4dc2                                ; $4d6b: $28 $55

	rst AddAOntoHL                                          ; $4d6d: $ef
	sbc $ff                                          ; $4d6e: $de $ff
	sub e                                            ; $4d70: $93
	push de                                          ; $4d71: $d5
	xor e                                            ; $4d72: $ab
	rst SubAFromHL                                          ; $4d73: $d7
	xor d                                            ; $4d74: $aa
	stop                                             ; $4d75: $10 $00
	nop                                              ; $4d77: $00
	ld h, c                                          ; $4d78: $61
	ld c, d                                          ; $4d79: $4a
	ld d, l                                          ; $4d7a: $55
	rst AddAOntoHL                                          ; $4d7b: $ef
	ld e, a                                          ; $4d7c: $5f
	sbc $ff                                          ; $4d7d: $de $ff
	sbc d                                            ; $4d7f: $9a
	cp $f5                                           ; $4d80: $fe $f5
	ld [$a050], a                                    ; $4d82: $ea $50 $a0
	ld [hl], e                                       ; $4d85: $73
	jr c, jr_04e_4dfd                                ; $4d86: $38 $75

	ld b, a                                          ; $4d88: $47
	rst SubAFromDE                                          ; $4d89: $df
	cp $db                                           ; $4d8a: $fe $db
	rlca                                             ; $4d8c: $07
	rst SubAFromDE                                          ; $4d8d: $df
	inc bc                                           ; $4d8e: $03
	sbc [hl]                                         ; $4d8f: $9e
	or e                                             ; $4d90: $b3
	sbc $03                                          ; $4d91: $de $03
	sbc e                                            ; $4d93: $9b
	ld [hl-], a                                      ; $4d94: $32
	cp $25                                           ; $4d95: $fe $25
	inc h                                            ; $4d97: $24
	call c, $deff                                    ; $4d98: $dc $ff $de
	cp $9c                                           ; $4d9b: $fe $9c
	ret nz                                           ; $4d9d: $c0

	ld [$ded5], a                                    ; $4d9e: $ea $d5 $de
	rst $38                                          ; $4da1: $ff
	sbc c                                            ; $4da2: $99
	ld d, a                                          ; $4da3: $57
	xor d                                            ; $4da4: $aa
	rst $38                                          ; $4da5: $ff
	push de                                          ; $4da6: $d5
	ld [$fd80], a                                    ; $4da7: $ea $80 $fd
	add b                                            ; $4daa: $80
	ld e, d                                          ; $4dab: $5a
	cp c                                             ; $4dac: $b9
	ld a, [hl-]                                      ; $4dad: $3a
	cp a                                             ; $4dae: $bf
	or a                                             ; $4daf: $b7
	rst $38                                          ; $4db0: $ff
	scf                                              ; $4db1: $37

jr_04e_4db2:
	ld [hl], a                                       ; $4db2: $77
	db $fd                                           ; $4db3: $fd
	ld a, [hl]                                       ; $4db4: $7e
	db $fd                                           ; $4db5: $fd
	ld a, b                                          ; $4db6: $78
	ld a, b                                          ; $4db7: $78
	jr nc, jr_04e_4db2                               ; $4db8: $30 $f8

	ld hl, sp+$02                                    ; $4dba: $f8 $02
	ld [bc], a                                       ; $4dbc: $02
	xor d                                            ; $4dbd: $aa
	db $fc                                           ; $4dbe: $fc
	db $f4                                           ; $4dbf: $f4
	jp hl                                            ; $4dc0: $e9


	db $d3                                           ; $4dc1: $d3

jr_04e_4dc2:
	ldh a, [c]                                       ; $4dc2: $f2
	rst $38                                          ; $4dc3: $ff
	cp $56                                           ; $4dc4: $fe $56
	ld b, $0d                                        ; $4dc6: $06 $0d
	dec de                                           ; $4dc8: $1b
	inc sp                                           ; $4dc9: $33
	sub c                                            ; $4dca: $91
	rra                                              ; $4dcb: $1f
	ld l, a                                          ; $4dcc: $6f
	ld a, a                                          ; $4dcd: $7f
	ret nz                                           ; $4dce: $c0

	and c                                            ; $4dcf: $a1
	ldh [rP1], a                                     ; $4dd0: $e0 $00
	ld d, $0c                                        ; $4dd2: $16 $0c
	ld [hl], b                                       ; $4dd4: $70
	rst $38                                          ; $4dd5: $ff
	rst $38                                          ; $4dd6: $ff
	sbc $9f                                          ; $4dd7: $de $9f
	halt                                             ; $4dd9: $76
	add b                                            ; $4dda: $80
	sbc $08                                          ; $4ddb: $de $08
	sbc e                                            ; $4ddd: $9b
	jr jr_04e_4dfc                                   ; $4dde: $18 $1c

	rst $38                                          ; $4de0: $ff
	cp a                                             ; $4de1: $bf
	ld e, [hl]                                       ; $4de2: $5e
	ld [hl], b                                       ; $4de3: $70
	cp $7e                                           ; $4de4: $fe $7e
	ld d, e                                          ; $4de6: $53
	sbc [hl]                                         ; $4de7: $9e
	ld hl, sp-$27                                    ; $4de8: $f8 $d9
	rst $38                                          ; $4dea: $ff
	rst SubAFromDE                                          ; $4deb: $df
	ld a, a                                          ; $4dec: $7f
	ld a, l                                          ; $4ded: $7d
	or e                                             ; $4dee: $b3
	adc l                                            ; $4def: $8d
	ld [hl], a                                       ; $4df0: $77
	db $eb                                           ; $4df1: $eb
	push af                                          ; $4df2: $f5
	ld [$feff], a                                    ; $4df3: $ea $ff $fe
	db $ec                                           ; $4df6: $ec
	db $e4                                           ; $4df7: $e4
	ldh [c], a                                       ; $4df8: $e2
	pop bc                                           ; $4df9: $c1
	add b                                            ; $4dfa: $80
	add b                                            ; $4dfb: $80

jr_04e_4dfc:
	ld a, a                                          ; $4dfc: $7f

jr_04e_4dfd:
	rra                                              ; $4dfd: $1f
	ld l, a                                          ; $4dfe: $6f
	sbc c                                            ; $4dff: $99
	ld h, b                                          ; $4e00: $60
	ld a, [hl]                                       ; $4e01: $7e
	ld a, b                                          ; $4e02: $78
	ld a, h                                          ; $4e03: $7c
	add e                                            ; $4e04: $83
	ldh [$30], a                                     ; $4e05: $e0 $30
	ld e, a                                          ; $4e07: $5f
	ret nz                                           ; $4e08: $c0

	or c                                             ; $4e09: $b1
	rrca                                             ; $4e0a: $0f
	nop                                              ; $4e0b: $00

jr_04e_4e0c:
	rst SubAFromDE                                          ; $4e0c: $df
	rst SubAFromBC                                          ; $4e0d: $e7
	xor [hl]                                         ; $4e0e: $ae
	call c, $ff9c                                    ; $4e0f: $dc $9c $ff
	jr z, jr_04e_4e0c                                ; $4e12: $28 $f8

	inc a                                            ; $4e14: $3c
	ld a, b                                          ; $4e15: $78
	reti                                             ; $4e16: $d9


	cp e                                             ; $4e17: $bb
	ei                                               ; $4e18: $fb
	rst $38                                          ; $4e19: $ff
	ret c                                            ; $4e1a: $d8

	ld [$83cc], sp                                   ; $4e1b: $08 $cc $83
	inc b                                            ; $4e1e: $04
	ld c, $1e                                        ; $4e1f: $0e $1e
	ld a, c                                          ; $4e21: $79
	ld a, [hl-]                                      ; $4e22: $3a
	ld a, b                                          ; $4e23: $78
	ld b, l                                          ; $4e24: $45
	rst SubAFromDE                                          ; $4e25: $df
	db $fd                                           ; $4e26: $fd
	sub a                                            ; $4e27: $97
	db $fc                                           ; $4e28: $fc
	inc e                                            ; $4e29: $1c
	ld c, $ff                                        ; $4e2a: $0e $ff
	rst $38                                          ; $4e2c: $ff
	cp a                                             ; $4e2d: $bf
	ld a, a                                          ; $4e2e: $7f
	ld e, a                                          ; $4e2f: $5f
	sbc $7f                                          ; $4e30: $de $7f
	ld a, c                                          ; $4e32: $79
	sbc d                                            ; $4e33: $9a
	ld a, h                                          ; $4e34: $7c
	ld l, $75                                        ; $4e35: $2e $75
	sbc a                                            ; $4e37: $9f
	rst SubAFromDE                                          ; $4e38: $df
	rst $38                                          ; $4e39: $ff
	sbc h                                            ; $4e3a: $9c
	push af                                          ; $4e3b: $f5
	ld a, [$6bfd]                                    ; $4e3c: $fa $fd $6b
	sbc b                                            ; $4e3f: $98
	ld l, [hl]                                       ; $4e40: $6e
	ld e, b                                          ; $4e41: $58
	sbc e                                            ; $4e42: $9b
	ld e, a                                          ; $4e43: $5f
	xor d                                            ; $4e44: $aa
	ld d, l                                          ; $4e45: $55
	ld [$f057], a                                    ; $4e46: $ea $57 $f0
	ld a, [hl]                                       ; $4e49: $7e
	ld h, l                                          ; $4e4a: $65
	ld a, e                                          ; $4e4b: $7b
	cp $5f                                           ; $4e4c: $fe $5f
	ldh a, [$9e]                                     ; $4e4e: $f0 $9e
	ld [$f053], a                                    ; $4e50: $ea $53 $f0
	rst SubAFromDE                                          ; $4e53: $df
	ldh a, [c]                                       ; $4e54: $f2
	sub h                                            ; $4e55: $94
	cp d                                             ; $4e56: $ba
	ld a, $df                                        ; $4e57: $3e $df
	ld d, l                                          ; $4e59: $55
	xor d                                            ; $4e5a: $aa
	rst $38                                          ; $4e5b: $ff
	ccf                                              ; $4e5c: $3f
	ccf                                              ; $4e5d: $3f
	scf                                              ; $4e5e: $37
	ld [hl], a                                       ; $4e5f: $77
	jr nz, jr_04e_4ed5                               ; $4e60: $20 $73

	ldh [$9d], a                                     ; $4e62: $e0 $9d
	ld l, d                                          ; $4e64: $6a
	ld d, c                                          ; $4e65: $51
	ld a, e                                          ; $4e66: $7b
	ldh [$9e], a                                     ; $4e67: $e0 $9e
	db $fd                                           ; $4e69: $fd
	ld [hl], l                                       ; $4e6a: $75
	ret nz                                           ; $4e6b: $c0

	ld [hl], e                                       ; $4e6c: $73
	ret nc                                           ; $4e6d: $d0

	ld a, [hl]                                       ; $4e6e: $7e
	push af                                          ; $4e6f: $f5
	ld a, a                                          ; $4e70: $7f
	ldh a, [c]                                       ; $4e71: $f2
	sbc h                                            ; $4e72: $9c
	ld d, a                                          ; $4e73: $57
	cp a                                             ; $4e74: $bf
	ld a, a                                          ; $4e75: $7f
	ld sp, hl                                        ; $4e76: $f9
	reti                                             ; $4e77: $d9


	cp $d9                                           ; $4e78: $fe $d9
	inc bc                                           ; $4e7a: $03
	ld a, [hl]                                       ; $4e7b: $7e
	add $97                                          ; $4e7c: $c6 $97
	daa                                              ; $4e7e: $27
	ld h, [hl]                                       ; $4e7f: $66
	ld l, a                                          ; $4e80: $6f
	ld l, [hl]                                       ; $4e81: $6e
	ld [hl], a                                       ; $4e82: $77
	ld [hl], a                                       ; $4e83: $77
	cp $fe                                           ; $4e84: $fe $fe
	db $dd                                           ; $4e86: $dd
	db $fc                                           ; $4e87: $fc
	rst SubAFromDE                                          ; $4e88: $df
	call c, $a373                                    ; $4e89: $dc $73 $a3
	sbc h                                            ; $4e8c: $9c
	xor e                                            ; $4e8d: $ab
	ld d, a                                          ; $4e8e: $57
	xor d                                            ; $4e8f: $aa
	ld sp, hl                                        ; $4e90: $f9
	sbc l                                            ; $4e91: $9d
	ld [hl], a                                       ; $4e92: $77
	ei                                               ; $4e93: $fb
	ld a, e                                          ; $4e94: $7b
	and e                                            ; $4e95: $a3
	ld a, c                                          ; $4e96: $79
	reti                                             ; $4e97: $d9


	ld a, h                                          ; $4e98: $7c
	jp hl                                            ; $4e99: $e9


	ld l, e                                          ; $4e9a: $6b
	add b                                            ; $4e9b: $80
	sub a                                            ; $4e9c: $97
	db $fd                                           ; $4e9d: $fd
	ld e, l                                          ; $4e9e: $5d
	xor l                                            ; $4e9f: $ad
	call c, $d4ec                                    ; $4ea0: $dc $ec $d4
	and h                                            ; $4ea3: $a4
	ld c, $de                                        ; $4ea4: $0e $de
	ld b, $df                                        ; $4ea6: $06 $df
	rlca                                             ; $4ea8: $07
	rst SubAFromDE                                          ; $4ea9: $df
	rrca                                             ; $4eaa: $0f
	ld a, [hl]                                       ; $4eab: $7e
	db $d3                                           ; $4eac: $d3
	ld a, h                                          ; $4ead: $7c
	or b                                             ; $4eae: $b0
	sub a                                            ; $4eaf: $97
	jr nc, jr_04e_4f1a                               ; $4eb0: $30 $68

	ld c, b                                          ; $4eb2: $48
	add sp, -$01                                     ; $4eb3: $e8 $ff
	rst $38                                          ; $4eb5: $ff
	ei                                               ; $4eb6: $fb
	ei                                               ; $4eb7: $fb
	sbc $ff                                          ; $4eb8: $de $ff
	sbc c                                            ; $4eba: $99
	rst SubAFromDE                                          ; $4ebb: $df
	ld e, a                                          ; $4ebc: $5f
	cp a                                             ; $4ebd: $bf
	ld e, h                                          ; $4ebe: $5c
	cp b                                             ; $4ebf: $b8
	ld a, b                                          ; $4ec0: $78
	sbc $f8                                          ; $4ec1: $de $f8
	reti                                             ; $4ec3: $d9


	rst $38                                          ; $4ec4: $ff
	sbc [hl]                                         ; $4ec5: $9e
	ldh a, [$de]                                     ; $4ec6: $f0 $de
	ld bc, $009e                                     ; $4ec8: $01 $9e $00
	sbc $02                                          ; $4ecb: $de $02
	reti                                             ; $4ecd: $d9


	rst $38                                          ; $4ece: $ff
	ld a, [hl]                                       ; $4ecf: $7e
	add $7d                                          ; $4ed0: $c6 $7d
	cp a                                             ; $4ed2: $bf
	sbc [hl]                                         ; $4ed3: $9e
	push af                                          ; $4ed4: $f5

jr_04e_4ed5:
	sbc $ff                                          ; $4ed5: $de $ff
	ld l, a                                          ; $4ed7: $6f
	ld h, d                                          ; $4ed8: $62
	rst $38                                          ; $4ed9: $ff
	sbc [hl]                                         ; $4eda: $9e
	db $fd                                           ; $4edb: $fd
	ld [hl], a                                       ; $4edc: $77
	ld h, c                                          ; $4edd: $61
	sbc [hl]                                         ; $4ede: $9e
	xor e                                            ; $4edf: $ab
	ld e, a                                          ; $4ee0: $5f
	nop                                              ; $4ee1: $00
	sbc h                                            ; $4ee2: $9c
	ld e, b                                          ; $4ee3: $58
	cp [hl]                                          ; $4ee4: $be
	ld e, a                                          ; $4ee5: $5f
	ld [hl], d                                       ; $4ee6: $72
	add h                                            ; $4ee7: $84
	sbc d                                            ; $4ee8: $9a
	rrca                                             ; $4ee9: $0f
	add hl, bc                                       ; $4eea: $09
	ld [$0f08], sp                                   ; $4eeb: $08 $08 $0f
	sbc $1f                                          ; $4eee: $de $1f
	sbc e                                            ; $4ef0: $9b
	rst $38                                          ; $4ef1: $ff
	ld e, $0e                                        ; $4ef2: $1e $0e
	adc [hl]                                         ; $4ef4: $8e
	ld l, d                                          ; $4ef5: $6a
	inc h                                            ; $4ef6: $24
	sbc [hl]                                         ; $4ef7: $9e
	ld a, [hl]                                       ; $4ef8: $7e
	halt                                             ; $4ef9: $76
	ld b, $9e                                        ; $4efa: $06 $9e
	rst SubAFromDE                                          ; $4efc: $df
	ld [hl], b                                       ; $4efd: $70
	sbc d                                            ; $4efe: $9a
	rst SubAFromDE                                          ; $4eff: $df
	rst $38                                          ; $4f00: $ff
	sbc [hl]                                         ; $4f01: $9e
	ldh [$da], a                                     ; $4f02: $e0 $da
	ld b, b                                          ; $4f04: $40
	ld d, d                                          ; $4f05: $52
	ld e, b                                          ; $4f06: $58
	ld e, c                                          ; $4f07: $59
	jr @+$05                                         ; $4f08: $18 $03

	ldh a, [$2b]                                     ; $4f0a: $f0 $2b
	ldh a, [$9e]                                     ; $4f0c: $f0 $9e
	xor d                                            ; $4f0e: $aa
	ld [hl], l                                       ; $4f0f: $75
	sub e                                            ; $4f10: $93
	ld e, e                                          ; $4f11: $5b
	ldh a, [$9e]                                     ; $4f12: $f0 $9e
	xor a                                            ; $4f14: $af
	ld c, e                                          ; $4f15: $4b
	ldh a, [$dd]                                     ; $4f16: $f0 $dd
	cp $9b                                           ; $4f18: $fe $9b

jr_04e_4f1a:
	ei                                               ; $4f1a: $fb
	rst FarCall                                          ; $4f1b: $f7
	rst FarCall                                          ; $4f1c: $f7
	db $fc                                           ; $4f1d: $fc
	db $dd                                           ; $4f1e: $dd
	inc bc                                           ; $4f1f: $03
	ld a, e                                          ; $4f20: $7b
	ld bc, $0396                                     ; $4f21: $01 $96 $03
	ld [hl], a                                       ; $4f24: $77
	halt                                             ; $4f25: $76
	ld [hl], a                                       ; $4f26: $77
	halt                                             ; $4f27: $76
	push de                                          ; $4f28: $d5
	sbc h                                            ; $4f29: $9c
	call c, $ddab                                    ; $4f2a: $dc $ab $dd
	call c, $627f                                    ; $4f2d: $dc $7f $62
	sbc l                                            ; $4f30: $9d
	cp a                                             ; $4f31: $bf
	ld d, h                                          ; $4f32: $54
	ld [hl], d                                       ; $4f33: $72
	ret nz                                           ; $4f34: $c0

	ld a, e                                          ; $4f35: $7b
	cp $f9                                           ; $4f36: $fe $f9
	ld a, e                                          ; $4f38: $7b
	ld [hl-], a                                      ; $4f39: $32
	ld a, [hl]                                       ; $4f3a: $7e
	or d                                             ; $4f3b: $b2
	sbc h                                            ; $4f3c: $9c
	xor a                                            ; $4f3d: $af
	ld d, a                                          ; $4f3e: $57
	xor e                                            ; $4f3f: $ab
	ld sp, hl                                        ; $4f40: $f9
	sub l                                            ; $4f41: $95
	jp c, $faeb                                      ; $4f42: $da $eb $fa

	ld [$eaf2], a                                    ; $4f45: $ea $f2 $ea
	ld a, [$0de9]                                    ; $4f48: $fa $e9 $0d
	inc c                                            ; $4f4b: $0c
	call c, $960d                                    ; $4f4c: $dc $0d $96
	rrca                                             ; $4f4f: $0f
	ld hl, sp+$78                                    ; $4f50: $f8 $78
	ld [hl], h                                       ; $4f52: $74
	ld [hl], h                                       ; $4f53: $74
	ld a, h                                          ; $4f54: $7c
	ld a, h                                          ; $4f55: $7c
	cp l                                             ; $4f56: $bd
	ld a, [$cfdd]                                    ; $4f57: $fa $dd $cf
	rst SubAFromDE                                          ; $4f5a: $df
	rst JumpTable                                          ; $4f5b: $c7
	sbc l                                            ; $4f5c: $9d
	add $87                                          ; $4f5d: $c6 $87
	ld c, e                                          ; $4f5f: $4b
	nop                                              ; $4f60: $00
	db $d3                                           ; $4f61: $d3
	inc sp                                           ; $4f62: $33
	rst SubAFromDE                                          ; $4f63: $df
	ld h, [hl]                                       ; $4f64: $66
	sbc [hl]                                         ; $4f65: $9e
	ld [hl], e                                       ; $4f66: $73
	db $dd                                           ; $4f67: $dd
	inc sp                                           ; $4f68: $33
	rst SubAFromDE                                          ; $4f69: $df
	ld [hl], a                                       ; $4f6a: $77
	sbc [hl]                                         ; $4f6b: $9e
	ld [hl], h                                       ; $4f6c: $74
	sbc $44                                          ; $4f6d: $de $44
	sbc e                                            ; $4f6f: $9b
	ld h, a                                          ; $4f70: $67
	inc sp                                           ; $4f71: $33
	inc sp                                           ; $4f72: $33
	ld h, h                                          ; $4f73: $64
	reti                                             ; $4f74: $d9


	ld b, h                                          ; $4f75: $44
	sbc l                                            ; $4f76: $9d
	inc sp                                           ; $4f77: $33
	ld d, l                                          ; $4f78: $55
	ret c                                            ; $4f79: $d8

	ld b, h                                          ; $4f7a: $44
	rst SubAFromDE                                          ; $4f7b: $df
	ld d, l                                          ; $4f7c: $55
	ld a, a                                          ; $4f7d: $7f
	db $fd                                           ; $4f7e: $fd
	sbc d                                            ; $4f7f: $9a
	ld d, h                                          ; $4f80: $54
	ld d, l                                          ; $4f81: $55
	ld b, h                                          ; $4f82: $44
	ld b, l                                          ; $4f83: $45
	ld d, h                                          ; $4f84: $54
	sbc $55                                          ; $4f85: $de $55
	ld a, e                                          ; $4f87: $7b
	or $9d                                           ; $4f88: $f6 $9d
	ld b, l                                          ; $4f8a: $45
	ld d, [hl]                                       ; $4f8b: $56
	ld [hl], a                                       ; $4f8c: $77
	or $9a                                           ; $4f8d: $f6 $9a
	ld d, h                                          ; $4f8f: $54
	ld h, [hl]                                       ; $4f90: $66
	ld b, [hl]                                       ; $4f91: $46
	ld h, h                                          ; $4f92: $64
	ld h, l                                          ; $4f93: $65
	ld a, e                                          ; $4f94: $7b
	ldh a, [$7b]                                     ; $4f95: $f0 $7b
	rst AddAOntoHL                                          ; $4f97: $ef
	sbc d                                            ; $4f98: $9a
	ld b, [hl]                                       ; $4f99: $46
	ld b, h                                          ; $4f9a: $44
	ld b, h                                          ; $4f9b: $44
	ld b, l                                          ; $4f9c: $45
	ld b, h                                          ; $4f9d: $44
	ld [hl], a                                       ; $4f9e: $77
	or $6f                                           ; $4f9f: $f6 $6f
	call $f677                                       ; $4fa1: $cd $77 $f6
	rst SubAFromDE                                          ; $4fa4: $df
	ld b, h                                          ; $4fa5: $44
	sbc [hl]                                         ; $4fa6: $9e
	ld d, h                                          ; $4fa7: $54
	ld l, a                                          ; $4fa8: $6f
	or $4a                                           ; $4fa9: $f6 $4a
	ld [$f380], sp                                   ; $4fab: $08 $80 $f3
	ld [bc], a                                       ; $4fae: $02
	db $eb                                           ; $4faf: $eb
	ld d, $c1                                        ; $4fb0: $16 $c1
	nop                                              ; $4fb2: $00
	db $fd                                           ; $4fb3: $fd
	ldh [rIE], a                                     ; $4fb4: $e0 $ff
	ld a, h                                          ; $4fb6: $7c

jr_04e_4fb7:
	dec e                                            ; $4fb7: $1d
	nop                                              ; $4fb8: $00
	dec d                                            ; $4fb9: $15
	nop                                              ; $4fba: $00
	push de                                          ; $4fbb: $d5
	nop                                              ; $4fbc: $00
	ld a, h                                          ; $4fbd: $7c
	add e                                            ; $4fbe: $83
	rst $38                                          ; $4fbf: $ff
	ld e, h                                          ; $4fc0: $5c
	cp $00                                           ; $4fc1: $fe $00
	rlca                                             ; $4fc3: $07
	ld hl, sp+$00                                    ; $4fc4: $f8 $00
	rst SubAFromDE                                          ; $4fc6: $df
	nop                                              ; $4fc7: $00
	pop bc                                           ; $4fc8: $c1
	jr nz, jr_04e_4fb7                               ; $4fc9: $20 $ec

	jr nz, @-$7e                                     ; $4fcb: $20 $80

	db $ec                                           ; $4fcd: $ec
	rra                                              ; $4fce: $1f
	ei                                               ; $4fcf: $fb
	ld a, a                                          ; $4fd0: $7f
	add b                                            ; $4fd1: $80
	nop                                              ; $4fd2: $00
	rst $38                                          ; $4fd3: $ff
	rst $38                                          ; $4fd4: $ff
	nop                                              ; $4fd5: $00
	nop                                              ; $4fd6: $00
	rst $38                                          ; $4fd7: $ff
	nop                                              ; $4fd8: $00
	cp $07                                           ; $4fd9: $fe $07
	ld sp, hl                                        ; $4fdb: $f9
	inc e                                            ; $4fdc: $1c
	ret z                                            ; $4fdd: $c8

	ld sp, hl                                        ; $4fde: $f9
	ld a, a                                          ; $4fdf: $7f
	ld e, d                                          ; $4fe0: $5a
	dec h                                            ; $4fe1: $25
	ld b, c                                          ; $4fe2: $41
	cp [hl]                                          ; $4fe3: $be
	sbc e                                            ; $4fe4: $9b
	ld h, h                                          ; $4fe5: $64
	ld e, c                                          ; $4fe6: $59
	adc b                                            ; $4fe7: $88
	db $fd                                           ; $4fe8: $fd
	ld bc, $1899                                     ; $4fe9: $01 $99 $18
	add b                                            ; $4fec: $80
	ld b, a                                          ; $4fed: $47
	ld h, d                                          ; $4fee: $62
	rst FarCall                                          ; $4fef: $f7
	rst $38                                          ; $4ff0: $ff
	add l                                            ; $4ff1: $85
	ld a, a                                          ; $4ff2: $7f
	rst JumpTable                                          ; $4ff3: $c7
	cp e                                             ; $4ff4: $bb
	rst FarCall                                          ; $4ff5: $f7
	add hl, bc                                       ; $4ff6: $09
	nop                                              ; $4ff7: $00
	nop                                              ; $4ff8: $00
	ld [hl], e                                       ; $4ff9: $73
	ld a, [hl]                                       ; $4ffa: $7e
	ld b, d                                          ; $4ffb: $42
	ld a, a                                          ; $4ffc: $7f
	ld e, $7f                                        ; $4ffd: $1e $7f
	ldh [$7c], a                                     ; $4fff: $e0 $7c
	cp a                                             ; $5001: $bf
	rst SubAFromDE                                          ; $5002: $df
	rst AddAOntoHL                                          ; $5003: $ef
	sub d                                            ; $5004: $92
	push bc                                          ; $5005: $c5
	cp e                                             ; $5006: $bb
	nop                                              ; $5007: $00
	nop                                              ; $5008: $00
	cp $8c                                           ; $5009: $fe $8c
	cp $9b                                           ; $500b: $fe $9b
	sbc [hl]                                         ; $500d: $9e
	ld hl, sp-$40                                    ; $500e: $f8 $c0
	rst $38                                          ; $5010: $ff
	ld a, e                                          ; $5011: $7b
	rst JumpTable                                          ; $5012: $c7
	sbc c                                            ; $5013: $99
	jr nz, jr_04e_5076                               ; $5014: $20 $60

	ccf                                              ; $5016: $3f
	ld l, a                                          ; $5017: $6f
	db $10                                           ; $5018: $10
	ld c, a                                          ; $5019: $4f
	ld l, a                                          ; $501a: $6f
	cp $7b                                           ; $501b: $fe $7b
	ldh a, [$99]                                     ; $501d: $f0 $99
	rra                                              ; $501f: $1f
	jr nc, jr_04e_5041                               ; $5020: $30 $1f

	ldh [$df], a                                     ; $5022: $e0 $df
	jr nz, jr_04e_5091                               ; $5024: $20 $6b

	cp $7f                                           ; $5026: $fe $7f
	ldh a, [$9e]                                     ; $5028: $f0 $9e
	add b                                            ; $502a: $80
	ld [hl], a                                       ; $502b: $77
	db $ed                                           ; $502c: $ed
	ld a, e                                          ; $502d: $7b
	cp $99                                           ; $502e: $fe $99
	inc d                                            ; $5030: $14
	ld sp, hl                                        ; $5031: $f9
	ld [de], a                                       ; $5032: $12
	ld sp, hl                                        ; $5033: $f9

jr_04e_5034:
	rra                                              ; $5034: $1f
	ldh a, [$73]                                     ; $5035: $f0 $73
	sub [hl]                                         ; $5037: $96
	sub h                                            ; $5038: $94
	rst $38                                          ; $5039: $ff
	cp a                                             ; $503a: $bf
	push af                                          ; $503b: $f5
	rst $38                                          ; $503c: $ff
	rst $38                                          ; $503d: $ff
	sbc l                                            ; $503e: $9d
	ld h, d                                          ; $503f: $62
	add hl, hl                                       ; $5040: $29

jr_04e_5041:
	sbc $d0                                          ; $5041: $de $d0
	cpl                                              ; $5043: $2f
	ld l, a                                          ; $5044: $6f
	ldh a, [$97]                                     ; $5045: $f0 $97
	cp $b5                                           ; $5047: $fe $b5
	rst $38                                          ; $5049: $ff
	rst $38                                          ; $504a: $ff
	cp $db                                           ; $504b: $fe $db
	rst $38                                          ; $504d: $ff
	db $db                                           ; $504e: $db
	ld l, e                                          ; $504f: $6b
	halt                                             ; $5050: $76
	sub [hl]                                         ; $5051: $96
	rst $38                                          ; $5052: $ff
	rst SubAFromDE                                          ; $5053: $df
	or e                                             ; $5054: $b3
	rst $38                                          ; $5055: $ff
	rst $38                                          ; $5056: $ff
	db $db                                           ; $5057: $db
	ld l, l                                          ; $5058: $6d
	ld sp, hl                                        ; $5059: $f9
	ld l, a                                          ; $505a: $6f
	ld [hl], a                                       ; $505b: $77
	ldh a, [$97]                                     ; $505c: $f0 $97
	ld bc, $01fe                                     ; $505e: $01 $fe $01
	cp $c1                                           ; $5061: $fe $c1
	ld a, [hl]                                       ; $5063: $7e
	pop hl                                           ; $5064: $e1
	sbc $77                                          ; $5065: $de $77
	cp $93                                           ; $5067: $fe $93
	and c                                            ; $5069: $a1
	sbc $fe                                          ; $506a: $de $fe
	nop                                              ; $506c: $00
	cp $00                                           ; $506d: $fe $00
	ld bc, $ff01                                     ; $506f: $01 $01 $ff
	db $fd                                           ; $5072: $fd
	ld [bc], a                                       ; $5073: $02
	db $fc                                           ; $5074: $fc
	ld l, a                                          ; $5075: $6f

jr_04e_5076:
	cp $80                                           ; $5076: $fe $80
	rst AddAOntoHL                                          ; $5078: $ef
	rra                                              ; $5079: $1f
	ld sp, hl                                        ; $507a: $f9
	ld a, a                                          ; $507b: $7f
	rst $38                                          ; $507c: $ff
	nop                                              ; $507d: $00
	ei                                               ; $507e: $fb
	rst $38                                          ; $507f: $ff
	ei                                               ; $5080: $fb
	nop                                              ; $5081: $00
	sbc a                                            ; $5082: $9f
	nop                                              ; $5083: $00
	inc bc                                           ; $5084: $03
	cp h                                             ; $5085: $bc
	inc h                                            ; $5086: $24
	inc bc                                           ; $5087: $03
	rra                                              ; $5088: $1f
	ldh [rIE], a                                     ; $5089: $e0 $ff
	rst $38                                          ; $508b: $ff
	rst AddAOntoHL                                          ; $508c: $ef
	ld [de], a                                       ; $508d: $12
	ld a, e                                          ; $508e: $7b
	cp $76                                           ; $508f: $fe $76

jr_04e_5091:
	nop                                              ; $5091: $00
	db $10                                           ; $5092: $10
	call $9800                                       ; $5093: $cd $00 $98
	db $10                                           ; $5096: $10
	add e                                            ; $5097: $83
	ld b, $cf                                        ; $5098: $06 $cf
	ccf                                              ; $509a: $3f
	push af                                          ; $509b: $f5
	ld a, [$3af7]                                    ; $509c: $fa $f7 $3a
	rst $38                                          ; $509f: $ff
	ld [hl-], a                                      ; $50a0: $32
	inc hl                                           ; $50a1: $23
	nop                                              ; $50a2: $00
	jr nc, jr_04e_5034                               ; $50a3: $30 $8f

	scf                                              ; $50a5: $37
	inc c                                            ; $50a6: $0c
	daa                                              ; $50a7: $27
	sbc b                                            ; $50a8: $98
	rst $38                                          ; $50a9: $ff
	rst $38                                          ; $50aa: $ff
	db $dd                                           ; $50ab: $dd

jr_04e_50ac:
	ld [hl+], a                                      ; $50ac: $22
	rst FarCall                                          ; $50ad: $f7
	ld [hl-], a                                      ; $50ae: $32
	cp a                                             ; $50af: $bf
	inc sp                                           ; $50b0: $33
	ldh [$1f], a                                     ; $50b1: $e0 $1f
	rrca                                             ; $50b3: $0f
	ld a, e                                          ; $50b4: $7b
	ld [hl], h                                       ; $50b5: $74
	ld a, a                                          ; $50b6: $7f
	cp $98                                           ; $50b7: $fe $98
	and e                                            ; $50b9: $a3
	cp $ef                                           ; $50ba: $fe $ef
	rlca                                             ; $50bc: $07
	sbc [hl]                                         ; $50bd: $9e
	ld b, b                                          ; $50be: $40
	ld [hl], b                                       ; $50bf: $70
	ld a, e                                          ; $50c0: $7b
	adc d                                            ; $50c1: $8a
	add b                                            ; $50c2: $80
	di                                               ; $50c3: $f3
	pop af                                           ; $50c4: $f1
	jp $8310                                         ; $50c5: $c3 $10 $83


	sub c                                            ; $50c8: $91
	ld l, [hl]                                       ; $50c9: $6e
	reti                                             ; $50ca: $d9


	ld l, a                                          ; $50cb: $6f
	ret c                                            ; $50cc: $d8

	rst $38                                          ; $50cd: $ff
	nop                                              ; $50ce: $00
	ld h, c                                          ; $50cf: $61
	ld e, $28                                        ; $50d0: $1e $28
	ret nc                                           ; $50d2: $d0

	add hl, hl                                       ; $50d3: $29
	ret nc                                           ; $50d4: $d0

	dec hl                                           ; $50d5: $2b
	ret nc                                           ; $50d6: $d0

	inc hl                                           ; $50d7: $23
	ret nc                                           ; $50d8: $d0

	push af                                          ; $50d9: $f5
	ret nz                                           ; $50da: $c0

	dec h                                            ; $50db: $25
	and b                                            ; $50dc: $a0
	db $fc                                           ; $50dd: $fc
	pop af                                           ; $50de: $f1
	add b                                            ; $50df: $80
	ld hl, $9d41                                     ; $50e0: $21 $41 $9d
	ld h, b                                          ; $50e3: $60
	db $fd                                           ; $50e4: $fd
	ld a, e                                          ; $50e5: $7b
	ld [hl], e                                       ; $50e6: $73
	rst SubAFromDE                                          ; $50e7: $df
	rst $38                                          ; $50e8: $ff
	add e                                            ; $50e9: $83
	inc h                                            ; $50ea: $24
	add sp, $28                                      ; $50eb: $e8 $28
	ldh [rDIV], a                                    ; $50ed: $e0 $04
	add sp, $76                                      ; $50ef: $e8 $76
	add d                                            ; $50f1: $82
	add d                                            ; $50f2: $82
	ld [bc], a                                       ; $50f3: $02
	ld [bc], a                                       ; $50f4: $02
	inc bc                                           ; $50f5: $03
	inc a                                            ; $50f6: $3c
	rst GetHLinHL                                          ; $50f7: $cf
	rst $38                                          ; $50f8: $ff
	rst $38                                          ; $50f9: $ff
	jr nc, jr_04e_50ac                               ; $50fa: $30 $b0

	and c                                            ; $50fc: $a1
	jr nz, jr_04e_5163                               ; $50fd: $20 $64

	ldh [$8c], a                                     ; $50ff: $e0 $8c
	call z, $3cd0                                    ; $5101: $cc $d0 $3c
	add e                                            ; $5104: $83
	db $fc                                           ; $5105: $fc
	ld [hl], a                                       ; $5106: $77
	rst SubAFromDE                                          ; $5107: $df
	add d                                            ; $5108: $82
	ld e, l                                          ; $5109: $5d
	ld a, [bc]                                       ; $510a: $0a
	pop bc                                           ; $510b: $c1
	ld c, $09                                        ; $510c: $0e $09
	adc $49                                          ; $510e: $ce $49
	adc [hl]                                         ; $5110: $8e
	ld c, c                                          ; $5111: $49
	ld c, $f1                                        ; $5112: $0e $f1
	ld c, $01                                        ; $5114: $0e $01
	cp $ff                                           ; $5116: $fe $ff
	rst $38                                          ; $5118: $ff
	ld h, b                                          ; $5119: $60
	nop                                              ; $511a: $00
	daa                                              ; $511b: $27
	ld a, b                                          ; $511c: $78
	dec h                                            ; $511d: $25
	ld a, e                                          ; $511e: $7b
	ld l, a                                          ; $511f: $6f
	ld [hl], e                                       ; $5120: $73
	ld hl, $797f                                     ; $5121: $21 $7f $79
	ld a, a                                          ; $5124: $7f
	ld a, a                                          ; $5125: $7f
	ld a, e                                          ; $5126: $7b
	rst SubAFromDE                                          ; $5127: $df
	adc a                                            ; $5128: $8f
	add b                                            ; $5129: $80
	ret nz                                           ; $512a: $c0

	ld c, d                                          ; $512b: $4a
	add h                                            ; $512c: $84
	db $fc                                           ; $512d: $fc
	ret nz                                           ; $512e: $c0

	inc h                                            ; $512f: $24
	sbc $a2                                          ; $5130: $de $a2
	add $a6                                          ; $5132: $c6 $a6
	ldh a, [rAUD1HIGH]                               ; $5134: $f0 $14
	ldh [hDisp0_LCDC], a                                     ; $5136: $e0 $82
	ld a, a                                          ; $5138: $7f
	ld h, [hl]                                       ; $5139: $66
	ret z                                            ; $513a: $c8

	ld h, a                                          ; $513b: $67
	cp $66                                           ; $513c: $fe $66
	ret z                                            ; $513e: $c8

	sbc [hl]                                         ; $513f: $9e
	dec a                                            ; $5140: $3d
	ld a, e                                          ; $5141: $7b
	cp $77                                           ; $5142: $fe $77
	ld hl, sp+$76                                    ; $5144: $f8 $76
	ldh a, [c]                                       ; $5146: $f2
	halt                                             ; $5147: $76
	ret nz                                           ; $5148: $c0

	sbc h                                            ; $5149: $9c
	sbc c                                            ; $514a: $99
	rst $38                                          ; $514b: $ff
	sbc a                                            ; $514c: $9f
	ld [hl], e                                       ; $514d: $73
	or $98                                           ; $514e: $f6 $98
	ld a, [bc]                                       ; $5150: $0a
	push af                                          ; $5151: $f5
	dec d                                            ; $5152: $15
	ld [$55aa], a                                    ; $5153: $ea $aa $55
	ld a, [$ffde]                                    ; $5156: $fa $de $ff
	ld a, a                                          ; $5159: $7f
	and e                                            ; $515a: $a3
	ld a, a                                          ; $515b: $7f
	or $96                                           ; $515c: $f6 $96
	ld a, [hl+]                                      ; $515e: $2a
	push de                                          ; $515f: $d5
	xor d                                            ; $5160: $aa
	ld d, l                                          ; $5161: $55
	ld d, l                                          ; $5162: $55

jr_04e_5163:
	xor d                                            ; $5163: $aa
	xor d                                            ; $5164: $aa
	ld d, l                                          ; $5165: $55
	ld e, l                                          ; $5166: $5d
	sbc $ff                                          ; $5167: $de $ff
	sbc l                                            ; $5169: $9d
	ld [hl], a                                       ; $516a: $77
	rst $38                                          ; $516b: $ff
	ld [hl], a                                       ; $516c: $77
	or $7f                                           ; $516d: $f6 $7f
	sbc $98                                          ; $516f: $de $98
	ld b, b                                          ; $5171: $40
	cp a                                             ; $5172: $bf
	xor b                                            ; $5173: $a8
	ld d, a                                          ; $5174: $57
	rst SubAFromDE                                          ; $5175: $df
	rst $38                                          ; $5176: $ff
	ld hl, sp-$22                                    ; $5177: $f8 $de
	rst $38                                          ; $5179: $ff
	ld a, a                                          ; $517a: $7f
	db $f4                                           ; $517b: $f4
	sbc l                                            ; $517c: $9d
	add b                                            ; $517d: $80
	ld a, a                                          ; $517e: $7f
	halt                                             ; $517f: $76
	jp nz, $fe7f                                     ; $5180: $c2 $7f $fe

	sbc [hl]                                         ; $5183: $9e
	add c                                            ; $5184: $81
	ld [hl], e                                       ; $5185: $73
	cp $77                                           ; $5186: $fe $77
	or $66                                           ; $5188: $f6 $66
	ret z                                            ; $518a: $c8

	ld h, a                                          ; $518b: $67
	cp $80                                           ; $518c: $fe $80
	ld b, b                                          ; $518e: $40
	nop                                              ; $518f: $00
	reti                                             ; $5190: $d9


	sbc c                                            ; $5191: $99
	cp a                                             ; $5192: $bf
	ld [hl], $7e                                     ; $5193: $36 $7e
	inc l                                            ; $5195: $2c
	ld a, d                                          ; $5196: $7a
	ld a, [hl+]                                      ; $5197: $2a
	cp [hl]                                          ; $5198: $be

jr_04e_5199:
	ld a, $ff                                        ; $5199: $3e $ff
	sbc h                                            ; $519b: $9c
	rst $38                                          ; $519c: $ff
	rst $38                                          ; $519d: $ff
	inc [hl]                                         ; $519e: $34
	nop                                              ; $519f: $00
	or $09                                           ; $51a0: $f6 $09
	cp $01                                           ; $51a2: $fe $01
	ld hl, sp+$13                                    ; $51a4: $f8 $13
	ld hl, sp+$07                                    ; $51a6: $f8 $07
	ld d, b                                          ; $51a8: $50
	ld c, $ff                                        ; $51a9: $0e $ff
	inc e                                            ; $51ab: $1c
	rst $38                                          ; $51ac: $ff
	sbc e                                            ; $51ad: $9b
	rst $38                                          ; $51ae: $ff
	daa                                              ; $51af: $27
	jr jr_04e_5199                                   ; $51b0: $18 $e7

	ld [hl], a                                       ; $51b2: $77
	cp $9e                                           ; $51b3: $fe $9e
	sbc b                                            ; $51b5: $98
	ld a, e                                          ; $51b6: $7b

jr_04e_51b7:
	db $fc                                           ; $51b7: $fc
	ld a, [hl]                                       ; $51b8: $7e
	ld b, e                                          ; $51b9: $43
	sbc [hl]                                         ; $51ba: $9e
	rst GetHLinHL                                          ; $51bb: $cf
	ld a, d                                          ; $51bc: $7a
	and e                                            ; $51bd: $a3
	sub l                                            ; $51be: $95
	nop                                              ; $51bf: $00
	db $dd                                           ; $51c0: $dd
	inc bc                                           ; $51c1: $03
	rst $38                                          ; $51c2: $ff
	ld bc, $1ba5                                     ; $51c3: $01 $a5 $1b
	sub a                                            ; $51c6: $97
	add c                                            ; $51c7: $81
	rst $38                                          ; $51c8: $ff
	ld [hl], e                                       ; $51c9: $73
	ld h, h                                          ; $51ca: $64
	sbc b                                            ; $51cb: $98
	ld bc, $2310                                     ; $51cc: $01 $10 $23
	db $10                                           ; $51cf: $10
	adc e                                            ; $51d0: $8b
	jr jr_04e_5204                                   ; $51d1: $18 $31

	ld [hl], a                                       ; $51d3: $77
	ld e, l                                          ; $51d4: $5d
	ld a, e                                          ; $51d5: $7b
	ldh a, [c]                                       ; $51d6: $f2
	ld a, a                                          ; $51d7: $7f
	push hl                                          ; $51d8: $e5
	sbc b                                            ; $51d9: $98
	daa                                              ; $51da: $27
	ret nc                                           ; $51db: $d0

	ld l, $d0                                        ; $51dc: $2e $d0
	ld c, $f0                                        ; $51de: $0e $f0
	nop                                              ; $51e0: $00
	ld a, e                                          ; $51e1: $7b
	cp $9d                                           ; $51e2: $fe $9d
	ld b, b                                          ; $51e4: $40
	or b                                             ; $51e5: $b0
	halt                                             ; $51e6: $76
	ldh a, [$8c]                                     ; $51e7: $f0 $8c
	ld h, b                                          ; $51e9: $60
	rst $38                                          ; $51ea: $ff
	ld [hl], b                                       ; $51eb: $70
	rst AddAOntoHL                                          ; $51ec: $ef
	ldh a, [$6f]                                     ; $51ed: $f0 $6f
	rst $38                                          ; $51ef: $ff
	rst $38                                          ; $51f0: $ff
	and c                                            ; $51f1: $a1
	cp $75                                           ; $51f2: $fe $75
	adc d                                            ; $51f4: $8a
	or $09                                           ; $51f5: $f6 $09
	ldh [$1f], a                                     ; $51f7: $e0 $1f
	ld b, $ff                                        ; $51f9: $06 $ff
	ld [bc], a                                       ; $51fb: $02
	ld [hl], e                                       ; $51fc: $73
	cp $97                                           ; $51fd: $fe $97
	rst AddAOntoHL                                          ; $51ff: $ef
	rst $38                                          ; $5200: $ff
	inc [hl]                                         ; $5201: $34
	res 4, c                                         ; $5202: $cb $a1

jr_04e_5204:
	ld e, b                                          ; $5204: $58
	sub c                                            ; $5205: $91
	ld l, h                                          ; $5206: $6c
	ld l, a                                          ; $5207: $6f
	jr nz, jr_04e_5281                               ; $5208: $20 $77

	sub $96                                          ; $520a: $d6 $96
	ld [hl], d                                       ; $520c: $72
	add l                                            ; $520d: $85
	add c                                            ; $520e: $81
	ld b, b                                          ; $520f: $40
	call z, $c113                                    ; $5210: $cc $13 $c1
	rst $38                                          ; $5213: $ff
	ret nz                                           ; $5214: $c0

	ld a, e                                          ; $5215: $7b
	cp $92                                           ; $5216: $fe $92
	ld h, b                                          ; $5218: $60
	rst SubAFromDE                                          ; $5219: $df
	cp $ff                                           ; $521a: $fe $ff
	inc d                                            ; $521c: $14
	db $e3                                           ; $521d: $e3
	call nc, $7309                                   ; $521e: $d4 $09 $73
	inc c                                            ; $5221: $0c
	rst $38                                          ; $5222: $ff
	rst $38                                          ; $5223: $ff
	ld [$fe73], sp                                   ; $5224: $08 $73 $fe
	ld a, a                                          ; $5227: $7f
	rst FarCall                                          ; $5228: $f7
	sbc b                                            ; $5229: $98
	ld [hl], a                                       ; $522a: $77
	ei                                               ; $522b: $fb
	xor e                                            ; $522c: $ab
	nop                                              ; $522d: $00
	jr c, jr_04e_51b7                                ; $522e: $38 $87

	rst $38                                          ; $5230: $ff
	ld a, e                                          ; $5231: $7b
	or $93                                           ; $5232: $f6 $93
	inc b                                            ; $5234: $04
	rst $38                                          ; $5235: $ff
	rlca                                             ; $5236: $07
	db $fc                                           ; $5237: $fc
	inc c                                            ; $5238: $0c
	rst $38                                          ; $5239: $ff
	db $fd                                           ; $523a: $fd
	di                                               ; $523b: $f3
	xor b                                            ; $523c: $a8
	ld b, c                                          ; $523d: $41
	adc l                                            ; $523e: $8d
	ld a, b                                          ; $523f: $78
	ld a, c                                          ; $5240: $79
	add d                                            ; $5241: $82
	halt                                             ; $5242: $76
	ret c                                            ; $5243: $d8

	add a                                            ; $5244: $87
	ld e, a                                          ; $5245: $5f
	jr nz, @-$3d                                     ; $5246: $20 $c1

	or d                                             ; $5248: $b2
	call $dfa0                                       ; $5249: $cd $a0 $df
	ld a, b                                          ; $524c: $78
	rrca                                             ; $524d: $0f
	rst $38                                          ; $524e: $ff
	nop                                              ; $524f: $00
	rlca                                             ; $5250: $07
	ei                                               ; $5251: $fb
	ld b, $fb                                        ; $5252: $06 $fb
	ld d, [hl]                                       ; $5254: $56
	cp e                                             ; $5255: $bb
	ld [hl-], a                                      ; $5256: $32
	add a                                            ; $5257: $87
	ld [de], a                                       ; $5258: $12
	rst SubAFromBC                                          ; $5259: $e7
	ld b, $ff                                        ; $525a: $06 $ff
	ld b, $71                                        ; $525c: $06 $71
	or b                                             ; $525e: $b0
	ld a, a                                          ; $525f: $7f
	ld a, [bc]                                       ; $5260: $0a
	ld [hl], a                                       ; $5261: $77
	sbc [hl]                                         ; $5262: $9e
	sbc l                                            ; $5263: $9d
	ld [bc], a                                       ; $5264: $02
	db $fd                                           ; $5265: $fd
	ld a, e                                          ; $5266: $7b
	ld [bc], a                                       ; $5267: $02
	sub [hl]                                         ; $5268: $96
	db $fd                                           ; $5269: $fd
	rst $38                                          ; $526a: $ff
	nop                                              ; $526b: $00
	xor a                                            ; $526c: $af
	ld d, b                                          ; $526d: $50
	ld e, a                                          ; $526e: $5f
	and b                                            ; $526f: $a0
	cp a                                             ; $5270: $bf
	ld b, b                                          ; $5271: $40
	ld [hl], a                                       ; $5272: $77
	db $fc                                           ; $5273: $fc
	ld a, l                                          ; $5274: $7d
	ld b, $7f                                        ; $5275: $06 $7f
	db $fc                                           ; $5277: $fc
	ld a, a                                          ; $5278: $7f
	ldh a, [$7d]                                     ; $5279: $f0 $7d
	or l                                             ; $527b: $b5
	ld a, a                                          ; $527c: $7f
	db $10                                           ; $527d: $10
	ld a, c                                          ; $527e: $79
	inc bc                                           ; $527f: $03
	sbc [hl]                                         ; $5280: $9e

jr_04e_5281:
	ld bc, $f877                                     ; $5281: $01 $77 $f8
	ld a, a                                          ; $5284: $7f
	db $fc                                           ; $5285: $fc
	ld a, a                                          ; $5286: $7f
	or $7e                                           ; $5287: $f6 $7e
	ret nz                                           ; $5289: $c0

	sbc l                                            ; $528a: $9d
	and b                                            ; $528b: $a0
	ld e, a                                          ; $528c: $5f
	ld l, a                                          ; $528d: $6f
	db $fc                                           ; $528e: $fc
	ld a, [hl]                                       ; $528f: $7e
	jp nz, $fc7f                                     ; $5290: $c2 $7f $fc

	ld a, a                                          ; $5293: $7f
	ldh a, [hDisp1_WY]                                     ; $5294: $f0 $95
	jr @+$01                                         ; $5296: $18 $ff

	jr @+$01                                         ; $5298: $18 $ff

	add hl, de                                       ; $529a: $19
	rst $38                                          ; $529b: $ff
	dec e                                            ; $529c: $1d
	ld hl, sp+$08                                    ; $529d: $f8 $08
	db $fd                                           ; $529f: $fd
	ld [hl], a                                       ; $52a0: $77
	ld a, b                                          ; $52a1: $78
	ld a, a                                          ; $52a2: $7f
	call c, $038e                                    ; $52a3: $dc $8e $03
	db $fc                                           ; $52a6: $fc
	ld [bc], a                                       ; $52a7: $02
	db $fd                                           ; $52a8: $fd
	inc c                                            ; $52a9: $0c
	rst FarCall                                          ; $52aa: $f7
	push bc                                          ; $52ab: $c5
	inc hl                                           ; $52ac: $23
	sub h                                            ; $52ad: $94
	add hl, bc                                       ; $52ae: $09
	inc bc                                           ; $52af: $03
	db $fd                                           ; $52b0: $fd
	rlca                                             ; $52b1: $07
	ld sp, hl                                        ; $52b2: $f9
	rst $38                                          ; $52b3: $ff
	rst $38                                          ; $52b4: $ff
	adc h                                            ; $52b5: $8c
	ld a, e                                          ; $52b6: $7b
	cp $95                                           ; $52b7: $fe $95
	sbc b                                            ; $52b9: $98
	rst AddAOntoHL                                          ; $52ba: $ef
	adc b                                            ; $52bb: $88
	rst $38                                          ; $52bc: $ff
	rst FarCall                                          ; $52bd: $f7
	rst $38                                          ; $52be: $ff
	push hl                                          ; $52bf: $e5
	sbc [hl]                                         ; $52c0: $9e
	ldh [rAUD3HIGH], a                               ; $52c1: $e0 $1e
	ld [hl], a                                       ; $52c3: $77
	ld h, b                                          ; $52c4: $60
	ld l, a                                          ; $52c5: $6f
	ld c, [hl]                                       ; $52c6: $4e
	rst SubAFromDE                                          ; $52c7: $df
	rst $38                                          ; $52c8: $ff
	sbc e                                            ; $52c9: $9b
	ld sp, $48ce                                     ; $52ca: $31 $ce $48
	add [hl]                                         ; $52cd: $86
	halt                                             ; $52ce: $76
	ld [$7e77], a                                    ; $52cf: $ea $77 $7e
	sub a                                            ; $52d2: $97
	jr nz, @+$01                                     ; $52d3: $20 $ff

	ei                                               ; $52d5: $fb
	rst FarCall                                          ; $52d6: $f7
	dec c                                            ; $52d7: $0d
	or $98                                           ; $52d8: $f6 $98
	rst SubAFromBC                                          ; $52da: $e7
	ld [hl], a                                       ; $52db: $77
	ld [hl+], a                                      ; $52dc: $22
	ld a, h                                          ; $52dd: $7c
	xor $7f                                          ; $52de: $ee $7f
	cp $7e                                           ; $52e0: $fe $7e
	sub $7f                                          ; $52e2: $d6 $7f
	ld e, $98                                        ; $52e4: $1e $98
	ld c, d                                          ; $52e6: $4a
	cp l                                             ; $52e7: $bd
	ld [hl], $c9                                     ; $52e8: $36 $c9
	jr c, @+$01                                      ; $52ea: $38 $ff

	db $10                                           ; $52ec: $10
	ld a, e                                          ; $52ed: $7b
	cp $9c                                           ; $52ee: $fe $9c
	ld d, b                                          ; $52f0: $50
	cp a                                             ; $52f1: $bf
	rst $38                                          ; $52f2: $ff
	ld a, d                                          ; $52f3: $7a
	db $ec                                           ; $52f4: $ec
	sbc d                                            ; $52f5: $9a
	ld de, $09ee                                     ; $52f6: $11 $ee $09
	ld [hl], d                                       ; $52f9: $72
	inc b                                            ; $52fa: $04
	ld a, e                                          ; $52fb: $7b
	ld b, d                                          ; $52fc: $42
	ld [hl], a                                       ; $52fd: $77
	cp $7f                                           ; $52fe: $fe $7f
	or d                                             ; $5300: $b2
	add b                                            ; $5301: $80
	add e                                            ; $5302: $83
	ld a, l                                          ; $5303: $7d
	jr nz, @-$1f                                     ; $5304: $20 $df

	sub h                                            ; $5306: $94
	ld l, e                                          ; $5307: $6b
	ld [hl], e                                       ; $5308: $73
	adc h                                            ; $5309: $8c
	db $10                                           ; $530a: $10
	adc h                                            ; $530b: $8c
	ld h, e                                          ; $530c: $63
	inc e                                            ; $530d: $1c
	ld [de], a                                       ; $530e: $12
	ld l, l                                          ; $530f: $6d
	ld h, b                                          ; $5310: $60
	sbc a                                            ; $5311: $9f
	ld [hl], h                                       ; $5312: $74
	add e                                            ; $5313: $83
	ccf                                              ; $5314: $3f
	nop                                              ; $5315: $00
	sub d                                            ; $5316: $92
	ld l, h                                          ; $5317: $6c
	ld [hl], b                                       ; $5318: $70
	adc a                                            ; $5319: $8f
	ld a, b                                          ; $531a: $78
	add a                                            ; $531b: $87
	ld a, [hl+]                                      ; $531c: $2a
	push bc                                          ; $531d: $c5
	sbc [hl]                                         ; $531e: $9e
	ld h, c                                          ; $531f: $61
	ld b, c                                          ; $5320: $41
	add b                                            ; $5321: $80
	inc [hl]                                         ; $5322: $34
	xor a                                            ; $5323: $af
	ld d, b                                          ; $5324: $50
	ld e, e                                          ; $5325: $5b
	jr nz, jr_04e_5331                               ; $5326: $20 $09

	or $06                                           ; $5328: $f6 $06
	ld sp, hl                                        ; $532a: $f9
	ld l, [hl]                                       ; $532b: $6e
	sub c                                            ; $532c: $91
	adc l                                            ; $532d: $8d
	inc de                                           ; $532e: $13
	inc bc                                           ; $532f: $03
	sub b                                            ; $5330: $90

jr_04e_5331:
	db $dd                                           ; $5331: $dd
	nop                                              ; $5332: $00

jr_04e_5333:
	sub h                                            ; $5333: $94
	ld l, c                                          ; $5334: $69
	ld l, d                                          ; $5335: $6a
	add l                                            ; $5336: $85
	ld hl, sp+$03                                    ; $5337: $f8 $03
	adc b                                            ; $5339: $88
	ld b, e                                          ; $533a: $43
	ld [hl], c                                       ; $533b: $71
	ld a, [bc]                                       ; $533c: $0a
	ld l, $d0                                        ; $533d: $2e $d0
	ld bc, $8016                                     ; $533f: $01 $16 $80
	rst AddAOntoHL                                          ; $5342: $ef
	dec b                                            ; $5343: $05
	jp c, $9625                                      ; $5344: $da $25 $96

	ld l, b                                          ; $5347: $68
	ld b, $eb                                        ; $5348: $06 $eb
	ld [$fcf7], sp                                   ; $534a: $08 $f7 $fc
	ld b, e                                          ; $534d: $43
	sbc b                                            ; $534e: $98
	ld h, l                                          ; $534f: $65
	rlca                                             ; $5350: $07
	ldh [$8d], a                                     ; $5351: $e0 $8d
	jr @-$74                                         ; $5353: $18 $8a

	inc c                                            ; $5355: $0c
	pop hl                                           ; $5356: $e1
	ld b, $11                                        ; $5357: $06 $11
	ld hl, sp-$69                                    ; $5359: $f8 $97
	nop                                              ; $535b: $00
	adc a                                            ; $535c: $8f
	db $10                                           ; $535d: $10
	ld h, [hl]                                       ; $535e: $66
	sbc b                                            ; $535f: $98
	add l                                            ; $5360: $85
	add [hl]                                         ; $5361: $86
	ld h, d                                          ; $5362: $62
	xor d                                            ; $5363: $aa
	dec b                                            ; $5364: $05
	add hl, de                                       ; $5365: $19
	add b                                            ; $5366: $80
	db $d3                                           ; $5367: $d3
	jr nz, jr_04e_5333                               ; $5368: $20 $c9

	ld [hl-], a                                      ; $536a: $32
	ld [hl], a                                       ; $536b: $77
	rst GetHLinHL                                          ; $536c: $cf
	ld sp, hl                                        ; $536d: $f9
	rlca                                             ; $536e: $07
	ld [hl], a                                       ; $536f: $77
	adc b                                            ; $5370: $88
	nop                                              ; $5371: $00
	ld a, [hl]                                       ; $5372: $7e
	cpl                                              ; $5373: $2f
	ret nz                                           ; $5374: $c0

	sbc [hl]                                         ; $5375: $9e
	jr nz, @+$2b                                     ; $5376: $20 $29

	sub [hl]                                         ; $5378: $96
	ld sp, hl                                        ; $5379: $f9
	ld b, $7b                                        ; $537a: $06 $7b
	ret nc                                           ; $537c: $d0

	sub b                                            ; $537d: $90
	rlca                                             ; $537e: $07
	add a                                            ; $537f: $87
	rst $38                                          ; $5380: $ff
	ld b, [hl]                                       ; $5381: $46
	ld sp, hl                                        ; $5382: $f9
	rst JumpTable                                          ; $5383: $c7

jr_04e_5384:
	ld a, e                                          ; $5384: $7b
	ld h, e                                          ; $5385: $63
	dec a                                            ; $5386: $3d
	db $e3                                           ; $5387: $e3
	inc a                                            ; $5388: $3c
	sub c                                            ; $5389: $91
	ld a, [hl]                                       ; $538a: $7e
	rst SubAFromDE                                          ; $538b: $df
	jr nz, jr_04e_5404                               ; $538c: $20 $76

	ld h, h                                          ; $538e: $64
	ld [hl], a                                       ; $538f: $77
	db $fc                                           ; $5390: $fc
	sbc h                                            ; $5391: $9c
	ccf                                              ; $5392: $3f
	ret nz                                           ; $5393: $c0

	ret nz                                           ; $5394: $c0

	db $dd                                           ; $5395: $dd
	rst $38                                          ; $5396: $ff
	sbc [hl]                                         ; $5397: $9e
	nop                                              ; $5398: $00
	ld [hl], h                                       ; $5399: $74
	sbc [hl]                                         ; $539a: $9e
	ld a, [hl]                                       ; $539b: $7e
	add $77                                          ; $539c: $c6 $77
	or $6f                                           ; $539e: $f6 $6f
	ld a, [$e373]                                    ; $53a0: $fa $73 $e3
	ld l, a                                          ; $53a3: $6f
	db $fc                                           ; $53a4: $fc
	ld [hl], e                                       ; $53a5: $73
	ld a, [$d599]                                    ; $53a6: $fa $99 $d5
	ld a, [hl+]                                      ; $53a9: $2a
	rst $38                                          ; $53aa: $ff
	rst $38                                          ; $53ab: $ff
	ldh a, [rIF]                                     ; $53ac: $f0 $0f
	ld [hl], a                                       ; $53ae: $77
	or $9d                                           ; $53af: $f6 $9d
	jp Jump_04e_793f                                 ; $53b1: $c3 $3f $79


	ld e, d                                          ; $53b4: $5a
	add b                                            ; $53b5: $80
	add hl, de                                       ; $53b6: $19
	ld e, a                                          ; $53b7: $5f
	cp b                                             ; $53b8: $b8
	ldh a, [rIE]                                     ; $53b9: $f0 $ff
	add hl, de                                       ; $53bb: $19
	rst SubAFromBC                                          ; $53bc: $e7
	ldh a, [$ef]                                     ; $53bd: $f0 $ef
	ld h, [hl]                                       ; $53bf: $66
	db $db                                           ; $53c0: $db
	jp $e4ff                                         ; $53c1: $c3 $ff $e4


	sbc [hl]                                         ; $53c4: $9e
	ld a, [bc]                                       ; $53c5: $0a
	push af                                          ; $53c6: $f5
	ld d, h                                          ; $53c7: $54
	xor c                                            ; $53c8: $a9
	ld h, l                                          ; $53c9: $65
	ret c                                            ; $53ca: $d8

	or c                                             ; $53cb: $b1
	ld c, $d8                                        ; $53cc: $0e $d8
	ld h, $f5                                        ; $53ce: $26 $f5
	ld [bc], a                                       ; $53d0: $02
	sub [hl]                                         ; $53d1: $96
	nop                                              ; $53d2: $00
	call z, $8020                                    ; $53d3: $cc $20 $80
	ld [hl+], a                                      ; $53d6: $22
	reti                                             ; $53d7: $d9


	ld a, [hl-]                                      ; $53d8: $3a
	push bc                                          ; $53d9: $c5
	or [hl]                                          ; $53da: $b6
	ld bc, $429d                                     ; $53db: $01 $9d $42
	sub l                                            ; $53de: $95
	ld h, d                                          ; $53df: $62
	add hl, hl                                       ; $53e0: $29
	inc d                                            ; $53e1: $14
	cp d                                             ; $53e2: $ba
	inc b                                            ; $53e3: $04
	ld sp, $c566                                     ; $53e4: $31 $66 $c5
	ld a, [de]                                       ; $53e7: $1a
	dec l                                            ; $53e8: $2d
	jp nc, Jump_04e_4728                             ; $53e9: $d2 $28 $47

	dec a                                            ; $53ec: $3d
	ld b, b                                          ; $53ed: $40
	add hl, bc                                       ; $53ee: $09
	sub b                                            ; $53ef: $90
	db $fc                                           ; $53f0: $fc
	ld bc, $00d9                                     ; $53f1: $01 $d9 $00
	db $fc                                           ; $53f4: $fc
	add b                                            ; $53f5: $80
	inc bc                                           ; $53f6: $03
	ret nz                                           ; $53f7: $c0

	inc sp                                           ; $53f8: $33
	sub $29                                          ; $53f9: $d6 $29
	ld b, d                                          ; $53fb: $42
	xor l                                            ; $53fc: $ad
	xor $11                                          ; $53fd: $ee $11
	db $fd                                           ; $53ff: $fd
	ld [bc], a                                       ; $5400: $02
	jr c, jr_04e_5384                                ; $5401: $38 $81

	db $dd                                           ; $5403: $dd

jr_04e_5404:
	ld [bc], a                                       ; $5404: $02
	call nz, $433b                                   ; $5405: $c4 $3b $43
	sbc h                                            ; $5408: $9c
	ld b, l                                          ; $5409: $45
	sbc d                                            ; $540a: $9a
	ld b, c                                          ; $540b: $41
	xor [hl]                                         ; $540c: $ae
	sub d                                            ; $540d: $92
	dec l                                            ; $540e: $2d
	db $dd                                           ; $540f: $dd
	ld [bc], a                                       ; $5410: $02
	ld a, [bc]                                       ; $5411: $0a
	db $f4                                           ; $5412: $f4
	jp hl                                            ; $5413: $e9


	ld d, $80                                        ; $5414: $16 $80
	inc l                                            ; $5416: $2c
	inc de                                           ; $5417: $13
	ld b, h                                          ; $5418: $44
	add hl, hl                                       ; $5419: $29
	add [hl]                                         ; $541a: $86
	ld a, c                                          ; $541b: $79
	ldh [$1f], a                                     ; $541c: $e0 $1f
	ld a, [hl-]                                      ; $541e: $3a
	ld bc, $502f                                     ; $541f: $01 $2f $50
	inc h                                            ; $5422: $24
	jp c, Jump_04e_609f                              ; $5423: $da $9f $60

	sbc b                                            ; $5426: $98
	ld h, a                                          ; $5427: $67
	ld d, [hl]                                       ; $5428: $56
	adc c                                            ; $5429: $89
	adc b                                            ; $542a: $88
	scf                                              ; $542b: $37
	and c                                            ; $542c: $a1
	ld d, [hl]                                       ; $542d: $56
	db $f4                                           ; $542e: $f4
	ld a, [bc]                                       ; $542f: $0a
	ld a, l                                          ; $5430: $7d
	add d                                            ; $5431: $82
	halt                                             ; $5432: $76

jr_04e_5433:
	add b                                            ; $5433: $80
	push de                                          ; $5434: $d5
	sub [hl]                                         ; $5435: $96
	ld [hl+], a                                      ; $5436: $22
	rla                                              ; $5437: $17
	jr z, jr_04e_5452                                ; $5438: $28 $18

	ld bc, $f708                                     ; $543a: $01 $08 $f7
	ld a, $c1                                        ; $543d: $3e $c1
	ld [hl], a                                       ; $543f: $77
	ld h, l                                          ; $5440: $65
	ld a, [hl]                                       ; $5441: $7e
	sub b                                            ; $5442: $90
	sub a                                            ; $5443: $97
	ld l, a                                          ; $5444: $6f
	ret nz                                           ; $5445: $c0

	ld d, [hl]                                       ; $5446: $56
	adc c                                            ; $5447: $89
	sub b                                            ; $5448: $90
	dec b                                            ; $5449: $05
	jr jr_04e_5433                                   ; $544a: $18 $e7

	ld [hl], l                                       ; $544c: $75
	db $ec                                           ; $544d: $ec
	sub l                                            ; $544e: $95
	ccf                                              ; $544f: $3f
	cp $10                                           ; $5450: $fe $10

jr_04e_5452:
	pop hl                                           ; $5452: $e1
	add e                                            ; $5453: $83
	ld bc, $007f                                     ; $5454: $01 $7f $00
	ccf                                              ; $5457: $3f
	nop                                              ; $5458: $00
	ld a, b                                          ; $5459: $78
	ld e, d                                          ; $545a: $5a

jr_04e_545b:
	ld a, e                                          ; $545b: $7b
	ldh a, [$9e]                                     ; $545c: $f0 $9e
	db $fc                                           ; $545e: $fc
	ld [hl], h                                       ; $545f: $74
	and h                                            ; $5460: $a4
	sbc d                                            ; $5461: $9a
	ld sp, $3b44                                     ; $5462: $31 $44 $3b
	cp a                                             ; $5465: $bf
	ld b, b                                          ; $5466: $40
	ld a, e                                          ; $5467: $7b
	dec hl                                           ; $5468: $2b
	ld a, e                                          ; $5469: $7b
	ldh a, [hDisp0_SCY]                                     ; $546a: $f0 $83
	ld a, [bc]                                       ; $546c: $0a
	rst SubAFromBC                                          ; $546d: $e7
	ld b, $e1                                        ; $546e: $06 $e1
	add b                                            ; $5470: $80
	ld [bc], a                                       ; $5471: $02
	rst $38                                          ; $5472: $ff
	rst $38                                          ; $5473: $ff
	ld a, e                                          ; $5474: $7b

jr_04e_5475:
	add h                                            ; $5475: $84
	db $fc                                           ; $5476: $fc
	inc bc                                           ; $5477: $03
	nop                                              ; $5478: $00
	rst $38                                          ; $5479: $ff
	jr nz, jr_04e_545b                               ; $547a: $20 $df

	pop de                                           ; $547c: $d1
	rst $38                                          ; $547d: $ff
	inc b                                            ; $547e: $04
	sbc b                                            ; $547f: $98
	dec sp                                           ; $5480: $3b
	inc b                                            ; $5481: $04
	nop                                              ; $5482: $00
	rst $38                                          ; $5483: $ff
	call c, Call_04e_6e23                            ; $5484: $dc $23 $6e
	sub c                                            ; $5487: $91
	ld a, e                                          ; $5488: $7b
	ldh [c], a                                       ; $5489: $e2
	sbc c                                            ; $548a: $99
	rst $38                                          ; $548b: $ff
	ld b, d                                          ; $548c: $42
	db $fd                                           ; $548d: $fd
	add hl, de                                       ; $548e: $19
	ld h, $fb                                        ; $548f: $26 $fb
	ld a, e                                          ; $5491: $7b
	ldh a, [rPCM34]                                  ; $5492: $f0 $77
	ld a, [bc]                                       ; $5494: $0a
	ld [hl], a                                       ; $5495: $77
	and d                                            ; $5496: $a2
	ld [hl], h                                       ; $5497: $74
	ld a, b                                          ; $5498: $78
	ld [hl], a                                       ; $5499: $77
	nop                                              ; $549a: $00
	sub e                                            ; $549b: $93
	ldh a, [$1f]                                     ; $549c: $f0 $1f
	add sp, $1f                                      ; $549e: $e8 $1f
	ccf                                              ; $54a0: $3f
	ret nz                                           ; $54a1: $c0

	nop                                              ; $54a2: $00
	rst $38                                          ; $54a3: $ff
	xor b                                            ; $54a4: $a8
	ld d, a                                          ; $54a5: $57
	ld d, l                                          ; $54a6: $55
	xor d                                            ; $54a7: $aa

Call_04e_54a8:
	ld a, c                                          ; $54a8: $79
	xor b                                            ; $54a9: $a8
	sbc h                                            ; $54aa: $9c
	rst $38                                          ; $54ab: $ff
	adc a                                            ; $54ac: $8f
	ld [hl], b                                       ; $54ad: $70
	ld [hl], a                                       ; $54ae: $77
	call c, $de77                                    ; $54af: $dc $77 $de
	ld a, a                                          ; $54b2: $7f
	ldh a, [$7f]                                     ; $54b3: $f0 $7f
	db $ec                                           ; $54b5: $ec
	halt                                             ; $54b6: $76
	ld [$f067], a                                    ; $54b7: $ea $67 $f0
	ld a, l                                          ; $54ba: $7d
	and h                                            ; $54bb: $a4
	halt                                             ; $54bc: $76
	pop de                                           ; $54bd: $d1
	ld e, a                                          ; $54be: $5f
	ldh a, [$7e]                                     ; $54bf: $f0 $7e
	ld e, $77                                        ; $54c1: $1e $77
	ldh a, [$7f]                                     ; $54c3: $f0 $7f
	call z, $f067                                    ; $54c5: $cc $67 $f0
	ld l, [hl]                                       ; $54c8: $6e
	or c                                             ; $54c9: $b1
	sbc l                                            ; $54ca: $9d
	rst JumpTable                                          ; $54cb: $c7
	jr c, jr_04e_5546                                ; $54cc: $38 $78

	db $fd                                           ; $54ce: $fd
	ld e, e                                          ; $54cf: $5b
	ldh a, [$9b]                                     ; $54d0: $f0 $9b
	db $dd                                           ; $54d2: $dd
	ld [hl+], a                                      ; $54d3: $22
	inc b                                            ; $54d4: $04
	ei                                               ; $54d5: $fb
	ld [hl], a                                       ; $54d6: $77
	call c, $f067                                    ; $54d7: $dc $67 $f0
	ld a, a                                          ; $54da: $7f
	ld [bc], a                                       ; $54db: $02
	ld a, a                                          ; $54dc: $7f

jr_04e_54dd:
	ldh a, [hDisp1_WY]                                     ; $54dd: $f0 $95
	rst AddAOntoHL                                          ; $54df: $ef
	stop                                             ; $54e0: $10 $00
	rst $38                                          ; $54e2: $ff
	inc d                                            ; $54e3: $14
	rst $38                                          ; $54e4: $ff
	rlca                                             ; $54e5: $07
	ld sp, hl                                        ; $54e6: $f9
	rlca                                             ; $54e7: $07
	ld hl, sp+$77                                    ; $54e8: $f8 $77
	xor d                                            ; $54ea: $aa
	sbc l                                            ; $54eb: $9d
	rrca                                             ; $54ec: $0f
	ldh a, [$75]                                     ; $54ed: $f0 $75
	jr nc, jr_04e_5475                               ; $54ef: $30 $84

	ld d, h                                          ; $54f1: $54
	rst $38                                          ; $54f2: $ff
	dec l                                            ; $54f3: $2d
	reti                                             ; $54f4: $d9


	db $10                                           ; $54f5: $10
	ld bc, $6386                                     ; $54f6: $01 $86 $63
	sub b                                            ; $54f9: $90
	add hl, bc                                       ; $54fa: $09

jr_04e_54fb:
	nop                                              ; $54fb: $00
	rst $38                                          ; $54fc: $ff
	ld a, [$0007]                                    ; $54fd: $fa $07 $00
	rst $38                                          ; $5500: $ff
	ld b, a                                          ; $5501: $47
	ld hl, sp+$4e                                    ; $5502: $f8 $4e
	sbc a                                            ; $5504: $9f
	nop                                              ; $5505: $00
	sbc e                                            ; $5506: $9b
	ld [$20c0], sp                                   ; $5507: $08 $c0 $20
	ld c, c                                          ; $550a: $49
	inc b                                            ; $550b: $04
	ld l, e                                          ; $550c: $6b
	adc h                                            ; $550d: $8c
	ld a, h                                          ; $550e: $7c
	inc hl                                           ; $550f: $23
	ld a, e                                          ; $5510: $7b
	cp [hl]                                          ; $5511: $be
	adc d                                            ; $5512: $8a
	ld c, a                                          ; $5513: $4f
	nop                                              ; $5514: $00
	inc [hl]                                         ; $5515: $34
	nop                                              ; $5516: $00
	ldh a, [$d0]                                     ; $5517: $f0 $d0
	rrca                                             ; $5519: $0f
	rrca                                             ; $551a: $0f
	jr c, jr_04e_54dd                                ; $551b: $38 $c0

	ccf                                              ; $551d: $3f
	ccf                                              ; $551e: $3f
	ret nz                                           ; $551f: $c0

	ld a, b                                          ; $5520: $78
	rst $38                                          ; $5521: $ff
	dec hl                                           ; $5522: $2b
	pop bc                                           ; $5523: $c1
	jr jr_04e_559c                                   ; $5524: $18 $76

	db $10                                           ; $5526: $10
	ldh [$6f], a                                     ; $5527: $e0 $6f
	ld a, [hl]                                       ; $5529: $7e
	ld a, a                                          ; $552a: $7f
	db $fc                                           ; $552b: $fc
	ld a, h                                          ; $552c: $7c
	ld b, h                                          ; $552d: $44
	sbc l                                            ; $552e: $9d
	ei                                               ; $552f: $fb
	adc a                                            ; $5530: $8f
	reti                                             ; $5531: $d9


	rst $38                                          ; $5532: $ff
	ld e, a                                          ; $5533: $5f
	adc [hl]                                         ; $5534: $8e
	db $dd                                           ; $5535: $dd
	rst $38                                          ; $5536: $ff
	sbc d                                            ; $5537: $9a
	ld h, b                                          ; $5538: $60
	cp a                                             ; $5539: $bf
	jr nz, jr_04e_54fb                               ; $553a: $20 $bf

	ld h, b                                          ; $553c: $60
	ld h, e                                          ; $553d: $63
	ldh a, [$7d]                                     ; $553e: $f0 $7d
	add sp, $67                                      ; $5540: $e8 $67
	ldh [c], a                                       ; $5542: $e2
	ld a, [hl]                                       ; $5543: $7e
	or h                                             ; $5544: $b4
	sbc [hl]                                         ; $5545: $9e

jr_04e_5546:
	ei                                               ; $5546: $fb
	ld a, c                                          ; $5547: $79
	inc h                                            ; $5548: $24
	ld h, a                                          ; $5549: $67
	ldh a, [c]                                       ; $554a: $f2
	ld a, [hl]                                       ; $554b: $7e
	inc d                                            ; $554c: $14
	ld a, d                                          ; $554d: $7a
	db $ec                                           ; $554e: $ec
	ld h, e                                          ; $554f: $63
	ldh a, [c]                                       ; $5550: $f2
	sbc l                                            ; $5551: $9d
	dec b                                            ; $5552: $05
	ld a, [$dc72]                                    ; $5553: $fa $72 $dc
	ld h, e                                          ; $5556: $63
	ldh a, [$7f]                                     ; $5557: $f0 $7f
	db $f4                                           ; $5559: $f4
	ld [hl], a                                       ; $555a: $77
	ldh a, [$67]                                     ; $555b: $f0 $67
	ldh a, [c]                                       ; $555d: $f2
	ld [hl], a                                       ; $555e: $77
	db $f4                                           ; $555f: $f4
	rra                                              ; $5560: $1f
	ldh a, [$7f]                                     ; $5561: $f0 $7f
	xor b                                            ; $5563: $a8
	ld c, a                                          ; $5564: $4f
	ldh a, [$6f]                                     ; $5565: $f0 $6f
	db $f4                                           ; $5567: $f4
	ld d, a                                          ; $5568: $57
	ldh a, [$97]                                     ; $5569: $f0 $97
	xor [hl]                                         ; $556b: $ae
	ld d, e                                          ; $556c: $53
	ld d, d                                          ; $556d: $52
	xor e                                            ; $556e: $ab
	xor [hl]                                         ; $556f: $ae
	ld d, a                                          ; $5570: $57
	ld d, b                                          ; $5571: $50
	xor a                                            ; $5572: $af
	inc bc                                           ; $5573: $03
	or b                                             ; $5574: $b0
	ld c, e                                          ; $5575: $4b
	add b                                            ; $5576: $80
	ld e, a                                          ; $5577: $5f
	ld [hl], b                                       ; $5578: $70
	ld a, [hl]                                       ; $5579: $7e
	add $4f                                          ; $557a: $c6 $4f
	ldh a, [$7f]                                     ; $557c: $f0 $7f
	cp $9d                                           ; $557e: $fe $9d
	and b                                            ; $5580: $a0
	ld e, a                                          ; $5581: $5f
	ld [hl], a                                       ; $5582: $77
	ldh a, [$57]                                     ; $5583: $f0 $57
	xor $7f                                          ; $5585: $ee $7f
	and b                                            ; $5587: $a0
	sbc [hl]                                         ; $5588: $9e
	adc $de                                          ; $5589: $ce $de
	rst $38                                          ; $558b: $ff
	sbc [hl]                                         ; $558c: $9e
	rlca                                             ; $558d: $07
	ld e, e                                          ; $558e: $5b
	xor $9b                                          ; $558f: $ee $9b
	ld h, a                                          ; $5591: $67
	adc $fc                                          ; $5592: $ce $fc
	cp $57                                           ; $5594: $fe $57
	sbc $98                                          ; $5596: $de $98
	rst SubAFromDE                                          ; $5598: $df
	sub [hl]                                         ; $5599: $96
	push af                                          ; $559a: $f5
	ld e, [hl]                                       ; $559b: $5e

jr_04e_559c:
	rst $38                                          ; $559c: $ff
	rst $38                                          ; $559d: $ff
	rra                                              ; $559e: $1f
	ld e, e                                          ; $559f: $5b
	xor $6f                                          ; $55a0: $ee $6f
	cp $99                                           ; $55a2: $fe $99
	ld [bc], a                                       ; $55a4: $02
	db $fd                                           ; $55a5: $fd
	dec d                                            ; $55a6: $15
	ld [$d52a], a                                    ; $55a7: $ea $2a $d5
	ld [hl], a                                       ; $55aa: $77
	add b                                            ; $55ab: $80
	ld a, a                                          ; $55ac: $7f
	inc [hl]                                         ; $55ad: $34
	halt                                             ; $55ae: $76
	add sp, $67                                      ; $55af: $e8 $67
	ld [hl], b                                       ; $55b1: $70
	ld [hl], a                                       ; $55b2: $77
	db $ec                                           ; $55b3: $ec
	ld h, a                                          ; $55b4: $67
	db $f4                                           ; $55b5: $f4
	ld a, h                                          ; $55b6: $7c
	ld l, $9d                                        ; $55b7: $2e $9d
	ld e, a                                          ; $55b9: $5f
	and b                                            ; $55ba: $a0
	ld e, a                                          ; $55bb: $5f
	db $f4                                           ; $55bc: $f4
	ld a, b                                          ; $55bd: $78
	and d                                            ; $55be: $a2
	ld a, e                                          ; $55bf: $7b
	rst JumpTable                                          ; $55c0: $c7
	ld l, a                                          ; $55c1: $6f
	ldh a, [$7f]                                     ; $55c2: $f0 $7f
	add sp, $67                                      ; $55c4: $e8 $67
	or a                                             ; $55c6: $b7
	ld l, c                                          ; $55c7: $69
	sbc b                                            ; $55c8: $98
	ld a, a                                          ; $55c9: $7f
	cp $7e                                           ; $55ca: $fe $7e
	add hl, bc                                       ; $55cc: $09
	sbc b                                            ; $55cd: $98
	inc b                                            ; $55ce: $04
	di                                               ; $55cf: $f3
	nop                                              ; $55d0: $00
	rst $38                                          ; $55d1: $ff
	inc c                                            ; $55d2: $0c
	xor d                                            ; $55d3: $aa
	ld d, l                                          ; $55d4: $55
	ld l, a                                          ; $55d5: $6f
	ret c                                            ; $55d6: $d8

	ld e, a                                          ; $55d7: $5f
	ldh [rSCX], a                                    ; $55d8: $e0 $43
	add l                                            ; $55da: $85

Call_04e_55db:
	dec hl                                           ; $55db: $2b
	cp $9c                                           ; $55dc: $fe $9c
	cp $00                                           ; $55de: $fe $00
	ld hl, sp-$02                                    ; $55e0: $f8 $fe
	ld e, a                                          ; $55e2: $5f
	ldh a, [$7c]                                     ; $55e3: $f0 $7c
	or $9e                                           ; $55e5: $f6 $9e
	rrca                                             ; $55e7: $0f
	ld d, e                                          ; $55e8: $53
	ldh a, [rPCM34]                                  ; $55e9: $f0 $77
	cp $7c                                           ; $55eb: $fe $7c
	ldh [$7f], a                                     ; $55ed: $e0 $7f
	or b                                             ; $55ef: $b0
	ld a, h                                          ; $55f0: $7c
	add [hl]                                         ; $55f1: $86
	ld [hl], a                                       ; $55f2: $77
	or $97                                           ; $55f3: $f6 $97
	ei                                               ; $55f5: $fb
	ld b, $ff                                        ; $55f6: $06 $ff
	ld b, $fa                                        ; $55f8: $06 $fa
	ld bc, $07fa                                     ; $55fa: $01 $fa $07
	ld [hl], a                                       ; $55fd: $77
	add b                                            ; $55fe: $80
	ld [hl], l                                       ; $55ff: $75
	and b                                            ; $5600: $a0
	ld d, a                                          ; $5601: $57
	ld [hl], b                                       ; $5602: $70
	ld h, a                                          ; $5603: $67
	call c, $f05f                                    ; $5604: $dc $5f $f0
	ld a, a                                          ; $5607: $7f
	db $fc                                           ; $5608: $fc
	sbc l                                            ; $5609: $9d
	ld a, [$4f05]                                    ; $560a: $fa $05 $4f
	ldh a, [$67]                                     ; $560d: $f0 $67
	call c, $889b                                    ; $560f: $dc $9b $88
	ld [hl], a                                       ; $5612: $77
	ld d, h                                          ; $5613: $54
	xor e                                            ; $5614: $ab
	ld e, a                                          ; $5615: $5f
	db $ec                                           ; $5616: $ec
	sbc l                                            ; $5617: $9d
	push af                                          ; $5618: $f5
	ld a, [bc]                                       ; $5619: $0a
	ld h, [hl]                                       ; $561a: $66
	xor b                                            ; $561b: $a8
	ld h, a                                          ; $561c: $67
	db $ec                                           ; $561d: $ec
	sbc [hl]                                         ; $561e: $9e
	inc bc                                           ; $561f: $03
	ld [hl], e                                       ; $5620: $73
	ld h, l                                          ; $5621: $65
	ld [hl], a                                       ; $5622: $77
	ld a, [$707e]                                    ; $5623: $fa $7e $70
	ld a, [hl]                                       ; $5626: $7e
	add b                                            ; $5627: $80
	ld a, a                                          ; $5628: $7f
	call nc, $e05e                                   ; $5629: $d4 $5e $e0
	sbc c                                            ; $562c: $99
	ld d, a                                          ; $562d: $57
	xor b                                            ; $562e: $a8
	xor e                                            ; $562f: $ab
	ld d, h                                          ; $5630: $54
	ld d, a                                          ; $5631: $57
	xor b                                            ; $5632: $a8
	ld [hl], a                                       ; $5633: $77
	ld hl, sp+$66                                    ; $5634: $f8 $66
	db $e4                                           ; $5636: $e4
	ld [hl], a                                       ; $5637: $77
	cp $7c                                           ; $5638: $fe $7c
	ld d, b                                          ; $563a: $50
	rla                                              ; $563b: $17
	inc e                                            ; $563c: $1c
	ld a, c                                          ; $563d: $79
	dec [hl]                                         ; $563e: $35
	ld e, e                                          ; $563f: $5b
	db $10                                           ; $5640: $10
	sub a                                            ; $5641: $97
	add b                                            ; $5642: $80
	nop                                              ; $5643: $00
	rra                                              ; $5644: $1f
	inc b                                            ; $5645: $04
	ei                                               ; $5646: $fb
	inc c                                            ; $5647: $0c
	pop af                                           ; $5648: $f1
	ld c, $77                                        ; $5649: $0e $77
	ldh a, [c]                                       ; $564b: $f2
	ld a, a                                          ; $564c: $7f
	inc b                                            ; $564d: $04
	ld a, b                                          ; $564e: $78
	db $eb                                           ; $564f: $eb
	ld h, e                                          ; $5650: $63
	cp $9e                                           ; $5651: $fe $9e
	ldh a, [$7b]                                     ; $5653: $f0 $7b
	inc b                                            ; $5655: $04
	ld h, a                                          ; $5656: $67
	db $f4                                           ; $5657: $f4
	sbc h                                            ; $5658: $9c
	db $fc                                           ; $5659: $fc
	nop                                              ; $565a: $00
	ret nz                                           ; $565b: $c0

	ld a, d                                          ; $565c: $7a
	db $f4                                           ; $565d: $f4
	ld h, a                                          ; $565e: $67
	ldh a, [c]                                       ; $565f: $f2
	ld a, a                                          ; $5660: $7f
	ret c                                            ; $5661: $d8

	sbc [hl]                                         ; $5662: $9e
	inc bc                                           ; $5663: $03
	ld d, e                                          ; $5664: $53
	xor [hl]                                         ; $5665: $ae
	rst $38                                          ; $5666: $ff
	ld a, a                                          ; $5667: $7f
	cp b                                             ; $5668: $b8
	ld e, a                                          ; $5669: $5f
	ldh a, [c]                                       ; $566a: $f2
	sbc d                                            ; $566b: $9a
	di                                               ; $566c: $f3
	dec c                                            ; $566d: $0d
	nop                                              ; $566e: $00
	nop                                              ; $566f: $00
	rra                                              ; $5670: $1f
	ld e, [hl]                                       ; $5671: $5e
	jp nc, $809b                                     ; $5672: $d2 $9b $80

	or a                                             ; $5675: $b7
	ret z                                            ; $5676: $c8

	rrca                                             ; $5677: $0f
	ld a, e                                          ; $5678: $7b
	or h                                             ; $5679: $b4
	ld d, d                                          ; $567a: $52

jr_04e_567b:
	sbc d                                            ; $567b: $9a
	sbc e                                            ; $567c: $9b
	rlca                                             ; $567d: $07
	ld a, b                                          ; $567e: $78
	rlca                                             ; $567f: $07
	add b                                            ; $5680: $80
	ld d, e                                          ; $5681: $53
	call z, $aa76                                    ; $5682: $cc $76 $aa

jr_04e_5685:
	ld a, a                                          ; $5685: $7f
	add h                                            ; $5686: $84
	ld a, b                                          ; $5687: $78
	ld d, l                                          ; $5688: $55
	ld d, e                                          ; $5689: $53
	cp $7f                                           ; $568a: $fe $7f
	cp d                                             ; $568c: $ba
	ld d, a                                          ; $568d: $57
	ld d, h                                          ; $568e: $54
	ld l, a                                          ; $568f: $6f
	jp c, $867f                                      ; $5690: $da $7f $86

	ld b, a                                          ; $5693: $47
	jp c, $a27f                                      ; $5694: $da $7f $a2

	ld e, d                                          ; $5697: $5a
	add h                                            ; $5698: $84
	sub d                                            ; $5699: $92
	jr nc, jr_04e_567b                               ; $569a: $30 $df

	jr nz, jr_04e_5685                               ; $569c: $20 $e7

	ld [$55aa], sp                                   ; $569e: $08 $aa $55
	push de                                          ; $56a1: $d5
	ld a, [hl+]                                      ; $56a2: $2a
	ld [$fd15], a                                    ; $56a3: $ea $15 $fd
	ld [bc], a                                       ; $56a6: $02
	ld h, a                                          ; $56a7: $67
	add sp, $5e                                      ; $56a8: $e8 $5e
	and h                                            ; $56aa: $a4
	ld a, a                                          ; $56ab: $7f
	db $fc                                           ; $56ac: $fc
	ld a, a                                          ; $56ad: $7f
	add sp, $7f                                      ; $56ae: $e8 $7f
	db $e4                                           ; $56b0: $e4
	halt                                             ; $56b1: $76
	call nc, $a47f                                   ; $56b2: $d4 $7f $a4
	sbc c                                            ; $56b5: $99
	ld h, b                                          ; $56b6: $60
	add b                                            ; $56b7: $80
	cp h                                             ; $56b8: $bc
	ld b, b                                          ; $56b9: $40
	ld e, a                                          ; $56ba: $5f
	and b                                            ; $56bb: $a0

jr_04e_56bc:
	ld [hl], l                                       ; $56bc: $75
	and b                                            ; $56bd: $a0
	ld [hl], a                                       ; $56be: $77
	call c, $207f                                    ; $56bf: $dc $7f $20
	ld a, a                                          ; $56c2: $7f
	add b                                            ; $56c3: $80
	sbc [hl]                                         ; $56c4: $9e
	ld bc, $f27a                                     ; $56c5: $01 $7a $f2
	ld [hl], a                                       ; $56c8: $77
	ld d, [hl]                                       ; $56c9: $56
	ld a, a                                          ; $56ca: $7f
	sbc [hl]                                         ; $56cb: $9e
	ld a, a                                          ; $56cc: $7f
	or $7f                                           ; $56cd: $f6 $7f
	xor d                                            ; $56cf: $aa
	sbc h                                            ; $56d0: $9c
	rst SubAFromBC                                          ; $56d1: $e7
	nop                                              ; $56d2: $00
	rst GetHLinHL                                          ; $56d3: $cf
	ld a, e                                          ; $56d4: $7b
	ld a, [hl]                                       ; $56d5: $7e
	ld a, a                                          ; $56d6: $7f
	sub b                                            ; $56d7: $90
	ld a, a                                          ; $56d8: $7f
	ld a, h                                          ; $56d9: $7c
	ld d, [hl]                                       ; $56da: $56
	ld [$ec75], a                                    ; $56db: $ea $75 $ec
	ld a, l                                          ; $56de: $7d
	sbc [hl]                                         ; $56df: $9e
	ld a, l                                          ; $56e0: $7d
	sbc d                                            ; $56e1: $9a
	sbc c                                            ; $56e2: $99
	rst FarCall                                          ; $56e3: $f7
	inc c                                            ; $56e4: $0c
	rst FarCall                                          ; $56e5: $f7
	inc c                                            ; $56e6: $0c
	db $e3                                           ; $56e7: $e3
	inc e                                            ; $56e8: $1c
	ld bc, $1dae                                     ; $56e9: $01 $ae $1d
	sub [hl]                                         ; $56ec: $96
	ld a, l                                          ; $56ed: $7d
	dec c                                            ; $56ee: $0d
	ld h, e                                          ; $56ef: $63
	ld c, d                                          ; $56f0: $4a
	sub d                                            ; $56f1: $92
	add [hl]                                         ; $56f2: $86
	ld a, c                                          ; $56f3: $79
	jr nz, @-$2d                                     ; $56f4: $20 $d1

	ld b, b                                          ; $56f6: $40

jr_04e_56f7:
	add c                                            ; $56f7: $81
	nop                                              ; $56f8: $00
	ret nz                                           ; $56f9: $c0

	jr nc, jr_04e_56bc                               ; $56fa: $30 $c0

	rst JumpTable                                          ; $56fc: $c7
	jr c, jr_04e_56f7                                ; $56fd: $38 $f8

	ld a, b                                          ; $56ff: $78
	or a                                             ; $5700: $b7
	sub c                                            ; $5701: $91
	or c                                             ; $5702: $b1
	adc $c2                                          ; $5703: $ce $c2
	add c                                            ; $5705: $81
	ld [$0080], sp                                   ; $5706: $08 $80 $00
	nop                                              ; $5709: $00
	ld [bc], a                                       ; $570a: $02
	dec b                                            ; $570b: $05
	pop af                                           ; $570c: $f1
	ld c, $0f                                        ; $570d: $0e $0f
	ldh a, [$6e]                                     ; $570f: $f0 $6e
	cp d                                             ; $5711: $ba
	inc bc                                           ; $5712: $03
	xor [hl]                                         ; $5713: $ae
	inc bc                                           ; $5714: $03
	cp $5f                                           ; $5715: $fe $5f
	cp $4e                                           ; $5717: $fe $4e
	add h                                            ; $5719: $84

jr_04e_571a:
	ld a, a                                          ; $571a: $7f
	db $f4                                           ; $571b: $f4
	sbc h                                            ; $571c: $9c
	ccf                                              ; $571d: $3f
	jr c, jr_04e_5720                                ; $571e: $38 $00

jr_04e_5720:
	ld a, e                                          ; $5720: $7b
	nop                                              ; $5721: $00
	ld a, a                                          ; $5722: $7f
	jr jr_04e_579c                                   ; $5723: $18 $77

	cp $66                                           ; $5725: $fe $66
	jr jr_04e_57a8                                   ; $5727: $18 $7f

	ld b, $9e                                        ; $5729: $06 $9e
	jr nz, jr_04e_57a8                               ; $572b: $20 $7b

	db $f4                                           ; $572d: $f4
	halt                                             ; $572e: $76
	ld hl, sp+$7f                                    ; $572f: $f8 $7f
	db $f4                                           ; $5731: $f4
	ld a, [hl]                                       ; $5732: $7e
	call z, Call_04e_6c7d                            ; $5733: $cc $7d $6c
	sbc d                                            ; $5736: $9a
	db $ec                                           ; $5737: $ec
	db $10                                           ; $5738: $10
	ld bc, $3e02                                     ; $5739: $01 $02 $3e
	ld a, e                                          ; $573c: $7b
	ld c, [hl]                                       ; $573d: $4e
	ld a, a                                          ; $573e: $7f
	ld c, d                                          ; $573f: $4a
	ld a, [hl]                                       ; $5740: $7e
	xor b                                            ; $5741: $a8
	ld a, [hl]                                       ; $5742: $7e
	call z, $8875                                    ; $5743: $cc $75 $88
	ld e, [hl]                                       ; $5746: $5e
	xor h                                            ; $5747: $ac
	ld e, d                                          ; $5748: $5a
	ld h, b                                          ; $5749: $60
	sbc l                                            ; $574a: $9d
	add b                                            ; $574b: $80
	cp a                                             ; $574c: $bf
	ld a, d                                          ; $574d: $7a
	xor h                                            ; $574e: $ac
	ld c, [hl]                                       ; $574f: $4e
	ld h, $7f                                        ; $5750: $26 $7f
	cp $3e                                           ; $5752: $fe $3e
	ld h, $76                                        ; $5754: $26 $76
	ld c, d                                          ; $5756: $4a
	sbc [hl]                                         ; $5757: $9e
	pop hl                                           ; $5758: $e1
	ld c, c                                          ; $5759: $49
	cp $77                                           ; $575a: $fe $77
	adc h                                            ; $575c: $8c
	ld a, a                                          ; $575d: $7f
	db $ec                                           ; $575e: $ec
	ld a, l                                          ; $575f: $7d
	sub [hl]                                         ; $5760: $96
	ld c, a                                          ; $5761: $4f
	db $ec                                           ; $5762: $ec
	ld a, a                                          ; $5763: $7f
	ld [hl], d                                       ; $5764: $72
	sbc [hl]                                         ; $5765: $9e
	jp $3003                                         ; $5766: $c3 $03 $30


	inc bc                                           ; $5769: $03
	cp $03                                           ; $576a: $fe $03
	cp $54                                           ; $576c: $fe $54
	ldh [c], a                                       ; $576e: $e2
	ld h, l                                          ; $576f: $65
	ld a, [bc]                                       ; $5770: $0a
	ld a, a                                          ; $5771: $7f
	ld h, d                                          ; $5772: $62
	sbc [hl]                                         ; $5773: $9e
	pop af                                           ; $5774: $f1
	ld e, e                                          ; $5775: $5b
	db $f4                                           ; $5776: $f4
	ld a, a                                          ; $5777: $7f
	add sp, $5d                                      ; $5778: $e8 $5d
	inc l                                            ; $577a: $2c
	ld a, a                                          ; $577b: $7f
	ld e, d                                          ; $577c: $5a
	ld e, a                                          ; $577d: $5f
	db $f4                                           ; $577e: $f4
	ld [bc], a                                       ; $577f: $02
	jr jr_04e_571a                                   ; $5780: $18 $98

	ld bc, $0af5                                     ; $5782: $01 $f5 $0a
	ld a, [$f505]                                    ; $5785: $fa $05 $f5
	ld a, [bc]                                       ; $5788: $0a
	ld [hl], l                                       ; $5789: $75
	adc b                                            ; $578a: $88
	ld d, l                                          ; $578b: $55
	ld a, b                                          ; $578c: $78
	ld d, a                                          ; $578d: $57
	db $fc                                           ; $578e: $fc
	ld d, [hl]                                       ; $578f: $56
	or h                                             ; $5790: $b4
	ld e, [hl]                                       ; $5791: $5e
	or b                                             ; $5792: $b0
	ld [hl], l                                       ; $5793: $75
	ld h, h                                          ; $5794: $64
	ld b, [hl]                                       ; $5795: $46
	and b                                            ; $5796: $a0
	ld [hl], h                                       ; $5797: $74
	inc h                                            ; $5798: $24
	ld a, [hl]                                       ; $5799: $7e
	add h                                            ; $579a: $84
	rlca                                             ; $579b: $07

jr_04e_579c:
	adc h                                            ; $579c: $8c
	ld b, [hl]                                       ; $579d: $46
	sub d                                            ; $579e: $92
	ld a, [hl]                                       ; $579f: $7e
	cp h                                             ; $57a0: $bc
	sbc [hl]                                         ; $57a1: $9e
	add e                                            ; $57a2: $83
	ld a, c                                          ; $57a3: $79
	jr z, jr_04e_57f4                                ; $57a4: $28 $4e

	sub d                                            ; $57a6: $92
	sbc [hl]                                         ; $57a7: $9e

jr_04e_57a8:
	ld a, h                                          ; $57a8: $7c
	cp $7d                                           ; $57a9: $fe $7d
	ld hl, sp-$62                                    ; $57ab: $f8 $9e
	inc b                                            ; $57ad: $04
	ld a, e                                          ; $57ae: $7b
	db $fc                                           ; $57af: $fc
	ld l, h                                          ; $57b0: $6c
	sbc h                                            ; $57b1: $9c
	rst $38                                          ; $57b2: $ff
	sbc b                                            ; $57b3: $98
	ld [$6200], sp                                   ; $57b4: $08 $00 $62
	ld bc, $0102                                     ; $57b7: $01 $02 $01
	rlca                                             ; $57ba: $07
	sbc $03                                          ; $57bb: $de $03
	sub h                                            ; $57bd: $94
	di                                               ; $57be: $f3
	inc c                                            ; $57bf: $0c
	rst AddAOntoHL                                          ; $57c0: $ef
	inc e                                            ; $57c1: $1c
	rra                                              ; $57c2: $1f
	ld [$1808], sp                                   ; $57c3: $08 $08 $18
	ld e, b                                          ; $57c6: $58
	ld [$7b49], sp                                   ; $57c7: $08 $49 $7b
	ldh [rIE], a                                     ; $57ca: $e0 $ff
	ld [hl], a                                       ; $57cc: $77
	ldh [$7f], a                                     ; $57cd: $e0 $7f
	ret nz                                           ; $57cf: $c0

	ld a, [hl]                                       ; $57d0: $7e
	ld a, [hl-]                                      ; $57d1: $3a
	ld a, a                                          ; $57d2: $7f
	cp $7c                                           ; $57d3: $fe $7c
	ldh a, [c]                                       ; $57d5: $f2
	ld a, a                                          ; $57d6: $7f
	db $fc                                           ; $57d7: $fc
	ld [hl], h                                       ; $57d8: $74
	ld [hl-], a                                      ; $57d9: $32
	sbc [hl]                                         ; $57da: $9e
	adc a                                            ; $57db: $8f
	ld a, b                                          ; $57dc: $78
	halt                                             ; $57dd: $76
	inc bc                                           ; $57de: $03
	inc b                                            ; $57df: $04
	inc bc                                           ; $57e0: $03
	cp $77                                           ; $57e1: $fe $77
	cp $7e                                           ; $57e3: $fe $7e
	db $e4                                           ; $57e5: $e4
	ld a, [hl]                                       ; $57e6: $7e
	add sp, $6e                                      ; $57e7: $e8 $6e
	ret c                                            ; $57e9: $d8

	ld a, l                                          ; $57ea: $7d
	xor b                                            ; $57eb: $a8
	ld a, [hl]                                       ; $57ec: $7e
	call c, $5c5c                                    ; $57ed: $dc $5c $5c
	ld h, $d4                                        ; $57f0: $26 $d4
	ld [hl], a                                       ; $57f2: $77
	db $fc                                           ; $57f3: $fc

jr_04e_57f4:
	rra                                              ; $57f4: $1f
	nop                                              ; $57f5: $00
	sbc $33                                          ; $57f6: $de $33
	db $dd                                           ; $57f8: $dd
	ld h, [hl]                                       ; $57f9: $66
	sbc $33                                          ; $57fa: $de $33
	rst SubAFromDE                                          ; $57fc: $df
	ld b, h                                          ; $57fd: $44
	ld e, a                                          ; $57fe: $5f
	or $9e                                           ; $57ff: $f6 $9e
	ld b, h                                          ; $5801: $44
	db $dd                                           ; $5802: $dd
	ld h, [hl]                                       ; $5803: $66
	db $db                                           ; $5804: $db
	ld b, h                                          ; $5805: $44
	sbc e                                            ; $5806: $9b
	ld b, [hl]                                       ; $5807: $46
	ld h, [hl]                                       ; $5808: $66
	ld h, [hl]                                       ; $5809: $66
	ld h, h                                          ; $580a: $64
	ld l, e                                          ; $580b: $6b
	rst AddAOntoHL                                          ; $580c: $ef
	db $db                                           ; $580d: $db
	ld h, [hl]                                       ; $580e: $66
	pop bc                                           ; $580f: $c1
	ld d, l                                          ; $5810: $55
	push bc                                          ; $5811: $c5
	ld d, l                                          ; $5812: $55
	push bc                                          ; $5813: $c5
	adc c                                            ; $5814: $89
	sbc d                                            ; $5815: $9a
	cp [hl]                                          ; $5816: $be
	rst $38                                          ; $5817: $ff
	rst $38                                          ; $5818: $ff
	db $db                                           ; $5819: $db
	push af                                          ; $581a: $f5
	jp c, $9eff                                      ; $581b: $da $ff $9e

	ei                                               ; $581e: $fb
	sbc $ff                                          ; $581f: $de $ff
	sub a                                            ; $5821: $97
	ld a, c                                          ; $5822: $79
	or $fe                                           ; $5823: $f6 $fe
	add $96                                          ; $5825: $c6 $96
	cp $fe                                           ; $5827: $fe $fe
	db $fc                                           ; $5829: $fc
	reti                                             ; $582a: $d9


	rst $38                                          ; $582b: $ff
	sub [hl]                                         ; $582c: $96
	cp $fb                                           ; $582d: $fe $fb
	ei                                               ; $582f: $fb
	inc [hl]                                         ; $5830: $34
	ld [hl], $16                                     ; $5831: $36 $16
	adc b                                            ; $5833: $88
	sbc c                                            ; $5834: $99
	rst GetHLinHL                                          ; $5835: $cf
	ld l, a                                          ; $5836: $6f
	pop hl                                           ; $5837: $e1
	sub [hl]                                         ; $5838: $96
	rst $38                                          ; $5839: $ff
	inc e                                            ; $583a: $1c
	db $ec                                           ; $583b: $ec
	add l                                            ; $583c: $85
	ldh [c], a                                       ; $583d: $e2
	ld c, b                                          ; $583e: $48
	ld d, b                                          ; $583f: $50
	ld b, b                                          ; $5840: $40
	sub b                                            ; $5841: $90
	ld a, e                                          ; $5842: $7b
	and $9e                                          ; $5843: $e6 $9e
	db $dd                                           ; $5845: $dd
	db $dd                                           ; $5846: $dd
	rst $38                                          ; $5847: $ff
	rst SubAFromDE                                          ; $5848: $df
	rst AddAOntoHL                                          ; $5849: $ef
	add b                                            ; $584a: $80
	or [hl]                                          ; $584b: $b6
	dec e                                            ; $584c: $1d
	ld sp, $2017                                     ; $584d: $31 $17 $20
	daa                                              ; $5850: $27
	db $10                                           ; $5851: $10
	db $10                                           ; $5852: $10
	ld c, c                                          ; $5853: $49
	ld l, h                                          ; $5854: $6c
	ld h, h                                          ; $5855: $64
	ldh [$d3], a                                     ; $5856: $e0 $d3
	ret c                                            ; $5858: $d8

	jr c, jr_04e_585c                                ; $5859: $38 $01

	rst SubAFromHL                                          ; $585b: $d7

jr_04e_585c:
	adc $ae                                          ; $585c: $ce $ae
	adc a                                            ; $585e: $8f
	ei                                               ; $585f: $fb
	ld d, e                                          ; $5860: $53
	jp $20f8                                         ; $5861: $c3 $f8 $20


	jr nc, @+$12                                     ; $5864: $30 $10

	ld [de], a                                       ; $5866: $12
	ld b, c                                          ; $5867: $41
	cp a                                             ; $5868: $bf
	ld c, b                                          ; $5869: $48
	add b                                            ; $586a: $80
	call z, $3888                                    ; $586b: $cc $88 $38
	ld b, d                                          ; $586e: $42
	and e                                            ; $586f: $a3
	ld l, d                                          ; $5870: $6a
	call z, $6324                                    ; $5871: $cc $24 $63
	ld [hl], e                                       ; $5874: $73
	jp Jump_04e_4000                                 ; $5875: $c3 $00 $40


	sub c                                            ; $5878: $91
	or e                                             ; $5879: $b3
	jp $fcdf                                         ; $587a: $c3 $df $fc


	db $d3                                           ; $587d: $d3
	ret c                                            ; $587e: $d8

	ld bc, $0c02                                     ; $587f: $01 $02 $0c
	ld [hl+], a                                      ; $5882: $22
	nop                                              ; $5883: $00
	inc bc                                           ; $5884: $03
	nop                                              ; $5885: $00
	nop                                              ; $5886: $00
	ld hl, sp-$03                                    ; $5887: $f8 $fd
	rst $38                                          ; $5889: $ff
	sub a                                            ; $588a: $97
	sbc b                                            ; $588b: $98
	ld sp, hl                                        ; $588c: $f9
	ret c                                            ; $588d: $d8

	add hl, bc                                       ; $588e: $09
	ld [$a99b], sp                                   ; $588f: $08 $9b $a9
	cp d                                             ; $5892: $ba
	db $fd                                           ; $5893: $fd
	add b                                            ; $5894: $80
	ld bc, $3604                                     ; $5895: $01 $04 $36
	ld h, a                                          ; $5898: $67
	di                                               ; $5899: $f3
	ld h, a                                          ; $589a: $67
	rst SubAFromBC                                          ; $589b: $e7
	ld h, a                                          ; $589c: $67
	inc bc                                           ; $589d: $03
	db $10                                           ; $589e: $10
	ld d, h                                          ; $589f: $54
	ld a, [hl]                                       ; $58a0: $7e
	nop                                              ; $58a1: $00
	add b                                            ; $58a2: $80
	nop                                              ; $58a3: $00
	add b                                            ; $58a4: $80
	ldh a, [$f8]                                     ; $58a5: $f0 $f8
	ld hl, sp-$80                                    ; $58a7: $f8 $80
	ld de, $2191                                     ; $58a9: $11 $91 $21
	ld h, e                                          ; $58ac: $63
	inc b                                            ; $58ad: $04
	ret nc                                           ; $58ae: $d0

	jr nc, jr_04e_590c                               ; $58af: $30 $5b

	xor $6e                                          ; $58b1: $ee $6e
	sbc $80                                          ; $58b3: $de $80
	sbc h                                            ; $58b5: $9c
	sbc e                                            ; $58b6: $9b
	rrca                                             ; $58b7: $0f
	rst GetHLinHL                                          ; $58b8: $cf
	db $fd                                           ; $58b9: $fd
	rla                                              ; $58ba: $17
	ld c, l                                          ; $58bb: $4d
	ld a, [hl+]                                      ; $58bc: $2a
	ld b, e                                          ; $58bd: $43
	and [hl]                                         ; $58be: $a6
	rst $38                                          ; $58bf: $ff
	dec e                                            ; $58c0: $1d
	ld [hl], b                                       ; $58c1: $70
	inc bc                                           ; $58c2: $03
	inc sp                                           ; $58c3: $33
	ld [hl], a                                       ; $58c4: $77
	inc a                                            ; $58c5: $3c
	jr nc, @+$22                                     ; $58c6: $30 $20

	ldh [c], a                                       ; $58c8: $e2
	cp a                                             ; $58c9: $bf
	dec e                                            ; $58ca: $1d
	or a                                             ; $58cb: $b7
	ld c, h                                          ; $58cc: $4c
	db $ec                                           ; $58cd: $ec
	ld [hl+], a                                      ; $58ce: $22
	adc [hl]                                         ; $58cf: $8e
	adc a                                            ; $58d0: $8f
	ld b, d                                          ; $58d1: $42
	xor $e8                                          ; $58d2: $ee $e8
	add b                                            ; $58d4: $80
	or e                                             ; $58d5: $b3
	add e                                            ; $58d6: $83
	reti                                             ; $58d7: $d9


	ld [hl], c                                       ; $58d8: $71
	ld [hl], b                                       ; $58d9: $70
	db $ed                                           ; $58da: $ed
	ld l, e                                          ; $58db: $6b
	scf                                              ; $58dc: $37
	nop                                              ; $58dd: $00
	ld d, [hl]                                       ; $58de: $56
	push de                                          ; $58df: $d5
	dec b                                            ; $58e0: $05
	inc bc                                           ; $58e1: $03
	db $fd                                           ; $58e2: $fd
	sub [hl]                                         ; $58e3: $96
	adc $ff                                          ; $58e4: $ce $ff
	xor a                                            ; $58e6: $af
	ld l, $fe                                        ; $58e7: $2e $fe
	rst $38                                          ; $58e9: $ff
	rst $38                                          ; $58ea: $ff
	ld h, $09                                        ; $58eb: $26 $09
	ldh [rSVBK], a                                   ; $58ed: $e0 $70
	ld [hl], h                                       ; $58ef: $74
	rst AddAOntoHL                                          ; $58f0: $ef
	rst SubAFromDE                                          ; $58f1: $df
	add a                                            ; $58f2: $87
	ld sp, hl                                        ; $58f3: $f9
	sub c                                            ; $58f4: $91
	rst FarCall                                          ; $58f5: $f7
	rst $38                                          ; $58f6: $ff
	cp a                                             ; $58f7: $bf
	cp a                                             ; $58f8: $bf
	rst SubAFromDE                                          ; $58f9: $df
	rst $38                                          ; $58fa: $ff
	rst $38                                          ; $58fb: $ff
	add e                                            ; $58fc: $83
	db $db                                           ; $58fd: $db
	rst GetHLinHL                                          ; $58fe: $cf
	ret                                              ; $58ff: $c9


	ret nz                                           ; $5900: $c0

	ld a, $22                                        ; $5901: $3e $22
	ld a, e                                          ; $5903: $7b
	or $9d                                           ; $5904: $f6 $9d
	rst $38                                          ; $5906: $ff
	rst FarCall                                          ; $5907: $f7
	db $dd                                           ; $5908: $dd
	rst $38                                          ; $5909: $ff
	sub a                                            ; $590a: $97
	ld a, [bc]                                       ; $590b: $0a

jr_04e_590c:
	ld c, $2d                                        ; $590c: $0e $2d
	dec d                                            ; $590e: $15
	adc h                                            ; $590f: $8c
	xor [hl]                                         ; $5910: $ae
	ld a, l                                          ; $5911: $7d
	db $e3                                           ; $5912: $e3
	sbc $ff                                          ; $5913: $de $ff
	sub c                                            ; $5915: $91
	xor $7f                                          ; $5916: $ee $7f
	ld a, l                                          ; $5918: $7d
	di                                               ; $5919: $f3
	rst $38                                          ; $591a: $ff
	ld c, l                                          ; $591b: $4d
	inc l                                            ; $591c: $2c
	sbc l                                            ; $591d: $9d
	ld [hl-], a                                      ; $591e: $32
	ld [hl], d                                       ; $591f: $72
	ld [hl], a                                       ; $5920: $77
	set 1, a                                         ; $5921: $cb $cf
	cp $77                                           ; $5923: $fe $77
	sbc $de                                          ; $5925: $de $de
	rst $38                                          ; $5927: $ff
	sub a                                            ; $5928: $97
	sbc $fc                                          ; $5929: $de $fc
	ld sp, hl                                        ; $592b: $f9
	ld c, c                                          ; $592c: $49
	ld c, h                                          ; $592d: $4c
	rst AddAOntoHL                                          ; $592e: $ef
	adc a                                            ; $592f: $8f
	sbc [hl]                                         ; $5930: $9e
	ld h, a                                          ; $5931: $67
	ret nc                                           ; $5932: $d0

	rst SubAFromDE                                          ; $5933: $df
	rst GetHLinHL                                          ; $5934: $cf

jr_04e_5935:
	sbc c                                            ; $5935: $99
	adc a                                            ; $5936: $8f
	sub e                                            ; $5937: $93
	rlca                                             ; $5938: $07
	or a                                             ; $5939: $b7
	cp e                                             ; $593a: $bb
	dec sp                                           ; $593b: $3b
	ld [hl], a                                       ; $593c: $77
	dec b                                            ; $593d: $05
	db $dd                                           ; $593e: $dd
	rst $38                                          ; $593f: $ff
	sbc b                                            ; $5940: $98
	ld a, l                                          ; $5941: $7d
	rst $38                                          ; $5942: $ff
	cp [hl]                                          ; $5943: $be
	sub c                                            ; $5944: $91
	dec d                                            ; $5945: $15
	inc h                                            ; $5946: $24
	inc de                                           ; $5947: $13
	ld [hl], e                                       ; $5948: $73
	jp nc, $fb80                                     ; $5949: $d2 $80 $fb

	db $db                                           ; $594c: $db
	db $ec                                           ; $594d: $ec
	jr nz, jr_04e_5935                               ; $594e: $20 $e5

	dec de                                           ; $5950: $1b
	sub e                                            ; $5951: $93
	sub e                                            ; $5952: $93
	and a                                            ; $5953: $a7
	cp a                                             ; $5954: $bf
	db $db                                           ; $5955: $db
	cp a                                             ; $5956: $bf
	cp $fe                                           ; $5957: $fe $fe
	ld l, [hl]                                       ; $5959: $6e
	ld l, [hl]                                       ; $595a: $6e
	ld e, d                                          ; $595b: $5a
	ld b, d                                          ; $595c: $42
	ld b, $00                                        ; $595d: $06 $00
	add hl, de                                       ; $595f: $19
	rla                                              ; $5960: $17
	ld [hl], $34                                     ; $5961: $36 $34
	ld bc, $be03                                     ; $5963: $01 $03 $be
	sbc e                                            ; $5966: $9b
	rst $38                                          ; $5967: $ff
	rst AddAOntoHL                                          ; $5968: $ef
	ld l, a                                          ; $5969: $6f
	add b                                            ; $596a: $80
	dec hl                                           ; $596b: $2b
	ccf                                              ; $596c: $3f
	inc a                                            ; $596d: $3c
	ld bc, $ff27                                     ; $596e: $01 $27 $ff
	ld a, l                                          ; $5971: $7d
	db $eb                                           ; $5972: $eb
	jp z, $fb62                                      ; $5973: $ca $62 $fb

	ld d, h                                          ; $5976: $54
	sbc $ff                                          ; $5977: $de $ff
	sbc [hl]                                         ; $5979: $9e
	inc d                                            ; $597a: $14
	inc d                                            ; $597b: $14
	sbc l                                            ; $597c: $9d
	inc b                                            ; $597d: $04
	and b                                            ; $597e: $a0
	pop hl                                           ; $597f: $e1
	nop                                              ; $5980: $00
	add hl, bc                                       ; $5981: $09
	xor c                                            ; $5982: $a9
	ld [hl], b                                       ; $5983: $70
	cp h                                             ; $5984: $bc
	rrca                                             ; $5985: $0f
	rrca                                             ; $5986: $0f
	dec [hl]                                         ; $5987: $35

Jump_04e_5988:
	ld [$8070], sp                                   ; $5988: $08 $70 $80
	sub d                                            ; $598b: $92
	add d                                            ; $598c: $82
	ld c, [hl]                                       ; $598d: $4e
	rra                                              ; $598e: $1f
	rra                                              ; $598f: $1f
	db $db                                           ; $5990: $db
	add c                                            ; $5991: $81
	ld h, e                                          ; $5992: $63
	ld bc, $d741                                     ; $5993: $01 $41 $d7
	ld a, [hl+]                                      ; $5996: $2a
	ld [bc], a                                       ; $5997: $02
	xor [hl]                                         ; $5998: $ae
	rst $38                                          ; $5999: $ff
	adc h                                            ; $599a: $8c
	inc l                                            ; $599b: $2c
	inc l                                            ; $599c: $2c
	xor b                                            ; $599d: $a8
	add b                                            ; $599e: $80
	nop                                              ; $599f: $00
	nop                                              ; $59a0: $00
	or $19                                           ; $59a1: $f6 $19
	xor $06                                          ; $59a3: $ee $06
	ld c, a                                          ; $59a5: $4f
	rst $38                                          ; $59a6: $ff
	xor d                                            ; $59a7: $aa
	cp a                                             ; $59a8: $bf
	sbc c                                            ; $59a9: $99
	sbc e                                            ; $59aa: $9b
	inc a                                            ; $59ab: $3c
	inc h                                            ; $59ac: $24
	and h                                            ; $59ad: $a4
	or h                                             ; $59ae: $b4
	cp $92                                           ; $59af: $fe $92
	scf                                              ; $59b1: $37
	push de                                          ; $59b2: $d5
	add $9c                                          ; $59b3: $c6 $9c
	sbc [hl]                                         ; $59b5: $9e
	db $fd                                           ; $59b6: $fd
	ld b, b                                          ; $59b7: $40
	rst $38                                          ; $59b8: $ff
	ret                                              ; $59b9: $c9


	and d                                            ; $59ba: $a2
	or d                                             ; $59bb: $b2
	ld h, e                                          ; $59bc: $63
	ld h, c                                          ; $59bd: $61
	cp $80                                           ; $59be: $fe $80
	ccf                                              ; $59c0: $3f
	ld [bc], a                                       ; $59c1: $02
	ld b, h                                          ; $59c2: $44
	ld a, [hl+]                                      ; $59c3: $2a
	cp a                                             ; $59c4: $bf
	push af                                          ; $59c5: $f5
	inc bc                                           ; $59c6: $03
	dec hl                                           ; $59c7: $2b
	ret nz                                           ; $59c8: $c0

	sub h                                            ; $59c9: $94
	sub d                                            ; $59ca: $92
	call nc, VBlankInterrupt                         ; $59cb: $d4 $40 $00
	nop                                              ; $59ce: $00
	call nc, $2957                                   ; $59cf: $d4 $57 $29
	ld c, c                                          ; $59d2: $49
	ldh [c], a                                       ; $59d3: $e2
	sbc $00                                          ; $59d4: $de $00
	ld [de], a                                       ; $59d6: $12
	cp a                                             ; $59d7: $bf
	and b                                            ; $59d8: $a0
	ret nc                                           ; $59d9: $d0

	sub b                                            ; $59da: $90
	add hl, de                                       ; $59db: $19
	ld bc, $3c00                                     ; $59dc: $01 $00 $3c
	add b                                            ; $59df: $80
	ld a, [hl]                                       ; $59e0: $7e
	ld b, e                                          ; $59e1: $43
	nop                                              ; $59e2: $00
	or b                                             ; $59e3: $b0
	sub h                                            ; $59e4: $94
	db $f4                                           ; $59e5: $f4
	ld d, h                                          ; $59e6: $54
	ld h, b                                          ; $59e7: $60
	rst AddAOntoHL                                          ; $59e8: $ef
	db $fd                                           ; $59e9: $fd
	ld b, $06                                        ; $59ea: $06 $06
	ld [hl-], a                                      ; $59ec: $32
	ld [bc], a                                       ; $59ed: $02
	nop                                              ; $59ee: $00
	nop                                              ; $59ef: $00
	db $10                                           ; $59f0: $10
	push de                                          ; $59f1: $d5
	ld d, d                                          ; $59f2: $52
	ld d, d                                          ; $59f3: $52
	rla                                              ; $59f4: $17
	ld e, a                                          ; $59f5: $5f
	xor a                                            ; $59f6: $af
	nop                                              ; $59f7: $00
	push af                                          ; $59f8: $f5
	adc d                                            ; $59f9: $8a
	adc c                                            ; $59fa: $89
	adc c                                            ; $59fb: $89
	ret z                                            ; $59fc: $c8

	and b                                            ; $59fd: $a0
	nop                                              ; $59fe: $00
	sbc h                                            ; $59ff: $9c
	nop                                              ; $5a00: $00
	ld a, [bc]                                       ; $5a01: $0a
	ldh a, [c]                                       ; $5a02: $f2
	ld a, d                                          ; $5a03: $7a
	ld b, a                                          ; $5a04: $47
	add b                                            ; $5a05: $80
	ret nz                                           ; $5a06: $c0

	sbc [hl]                                         ; $5a07: $9e
	ld e, $dc                                        ; $5a08: $1e $dc
	dec c                                            ; $5a0a: $0d
	ld l, $26                                        ; $5a0b: $2e $26
	ld [hl], $3f                                     ; $5a0d: $36 $3f
	ld hl, $2321                                     ; $5a0f: $21 $21 $23
	push af                                          ; $5a12: $f5
	or c                                             ; $5a13: $b1
	rlca                                             ; $5a14: $07
	ld a, $22                                        ; $5a15: $3e $22
	ld [$aaea], a                                    ; $5a17: $ea $ea $aa
	ccf                                              ; $5a1a: $3f
	ld a, a                                          ; $5a1b: $7f
	jp c, $dddb                                      ; $5a1c: $da $db $dd

	dec d                                            ; $5a1f: $15
	dec d                                            ; $5a20: $15
	ld d, l                                          ; $5a21: $55
	add [hl]                                         ; $5a22: $86
	ld b, $89                                        ; $5a23: $06 $89
	adc d                                            ; $5a25: $8a
	ld [$c400], sp                                   ; $5a26: $08 $00 $c4
	ldh a, [$50]                                     ; $5a29: $f0 $50
	rst $38                                          ; $5a2b: $ff
	rst $38                                          ; $5a2c: $ff
	ld a, a                                          ; $5a2d: $7f
	rst $38                                          ; $5a2e: $ff
	rst $38                                          ; $5a2f: $ff
	dec sp                                           ; $5a30: $3b
	rrca                                             ; $5a31: $0f
	xor a                                            ; $5a32: $af
	sbc c                                            ; $5a33: $99
	ld [$2020], sp                                   ; $5a34: $08 $20 $20
	ld a, [bc]                                       ; $5a37: $0a
	ld a, [hl+]                                      ; $5a38: $2a
	ld a, [hl+]                                      ; $5a39: $2a
	dec hl                                           ; $5a3a: $2b
	db $dd                                           ; $5a3b: $dd
	rst $38                                          ; $5a3c: $ff
	sbc [hl]                                         ; $5a3d: $9e
	push af                                          ; $5a3e: $f5
	sbc $d5                                          ; $5a3f: $de $d5
	add b                                            ; $5a41: $80
	ld sp, hl                                        ; $5a42: $f9
	ld hl, sp-$07                                    ; $5a43: $f8 $f9
	jp hl                                            ; $5a45: $e9


	ld c, l                                          ; $5a46: $4d
	rst $38                                          ; $5a47: $ff
	sbc a                                            ; $5a48: $9f
	rst $38                                          ; $5a49: $ff
	rst AddAOntoHL                                          ; $5a4a: $ef
	ld b, a                                          ; $5a4b: $47
	add [hl]                                         ; $5a4c: $86
	sub [hl]                                         ; $5a4d: $96
	or d                                             ; $5a4e: $b2
	nop                                              ; $5a4f: $00
	ldh [$e8], a                                     ; $5a50: $e0 $e8
	cp a                                             ; $5a52: $bf
	rst GetHLinHL                                          ; $5a53: $cf
	ccf                                              ; $5a54: $3f
	scf                                              ; $5a55: $37
	ld hl, $bfef                                     ; $5a56: $21 $ef $bf
	xor a                                            ; $5a59: $af
	rst $38                                          ; $5a5a: $ff
	cp a                                             ; $5a5b: $bf
	ret                                              ; $5a5c: $c9


	ret                                              ; $5a5d: $c9


	rst SubAFromDE                                          ; $5a5e: $df
	db $10                                           ; $5a5f: $10
	ld b, b                                          ; $5a60: $40
	ld a, a                                          ; $5a61: $7f
	ret z                                            ; $5a62: $c8

	adc b                                            ; $5a63: $88
	ld hl, sp+$08                                    ; $5a64: $f8 $08
	jp hl                                            ; $5a66: $e9


	ret z                                            ; $5a67: $c8

	call z, $c2cf                                    ; $5a68: $cc $cf $c2
	rst SubAFromDE                                          ; $5a6b: $df
	rra                                              ; $5a6c: $1f
	rst FarCall                                          ; $5a6d: $f7
	halt                                             ; $5a6e: $76
	ld [hl], a                                       ; $5a6f: $77
	ld [hl], e                                       ; $5a70: $73
	ld [hl], b                                       ; $5a71: $70
	ld a, c                                          ; $5a72: $79
	rst $38                                          ; $5a73: $ff
	dec a                                            ; $5a74: $3d
	xor l                                            ; $5a75: $ad
	sbc h                                            ; $5a76: $9c
	adc b                                            ; $5a77: $88
	sbc b                                            ; $5a78: $98
	ld a, [de]                                       ; $5a79: $1a
	ld e, $7b                                        ; $5a7a: $1e $7b
	or b                                             ; $5a7c: $b0
	sbc l                                            ; $5a7d: $9d
	ld l, a                                          ; $5a7e: $6f
	ld a, a                                          ; $5a7f: $7f
	ld a, e                                          ; $5a80: $7b
	xor l                                            ; $5a81: $ad
	add b                                            ; $5a82: $80
	rst $38                                          ; $5a83: $ff
	ld a, [$c2f9]                                    ; $5a84: $fa $f9 $c2
	add h                                            ; $5a87: $84
	inc bc                                           ; $5a88: $03
	add d                                            ; $5a89: $82
	nop                                              ; $5a8a: $00
	inc hl                                           ; $5a8b: $23
	cp $fc                                           ; $5a8c: $fe $fc
	ld sp, hl                                        ; $5a8e: $f9
	di                                               ; $5a8f: $f3
	db $ec                                           ; $5a90: $ec
	cp c                                             ; $5a91: $b9
	ld [hl], a                                       ; $5a92: $77
	ld b, [hl]                                       ; $5a93: $46
	ld [$46e0], a                                    ; $5a94: $ea $e0 $46
	adc c                                            ; $5a97: $89
	inc d                                            ; $5a98: $14
	ld l, b                                          ; $5a99: $68
	add b                                            ; $5a9a: $80
	ld [hl], e                                       ; $5a9b: $73
	ld d, a                                          ; $5a9c: $57
	rst SubAFromDE                                          ; $5a9d: $df
	or e                                             ; $5a9e: $b3
	ld a, [hl]                                       ; $5a9f: $7e
	ld hl, sp-$10                                    ; $5aa0: $f8 $f0
	sbc c                                            ; $5aa2: $99
	ldh [hDisp0_OBP1], a                                     ; $5aa3: $e0 $87
	cp a                                             ; $5aa5: $bf
	ld [hl-], a                                      ; $5aa6: $32
	rst $38                                          ; $5aa7: $ff

jr_04e_5aa8:
	jr nc, jr_04e_5aa8                               ; $5aa8: $30 $fe

	sbc d                                            ; $5aaa: $9a
	dec sp                                           ; $5aab: $3b
	dec de                                           ; $5aac: $1b
	db $fd                                           ; $5aad: $fd
	dec h                                            ; $5aae: $25
	rrca                                             ; $5aaf: $0f
	ld a, e                                          ; $5ab0: $7b
	rst FarCall                                          ; $5ab1: $f7
	sbc d                                            ; $5ab2: $9a
	db $e4                                           ; $5ab3: $e4
	ld b, a                                          ; $5ab4: $47
	and c                                            ; $5ab5: $a1
	ld a, $60                                        ; $5ab6: $3e $60
	cp $9a                                           ; $5ab8: $fe $9a
	pop bc                                           ; $5aba: $c1
	ldh [$7f], a                                     ; $5abb: $e0 $7f
	sub c                                            ; $5abd: $91

Call_04e_5abe:
	sub b                                            ; $5abe: $90
	ld a, e                                          ; $5abf: $7b
	rst FarCall                                          ; $5ac0: $f7
	sbc e                                            ; $5ac1: $9b
	ld [hl], e                                       ; $5ac2: $73
	dec c                                            ; $5ac3: $0d
	rst $38                                          ; $5ac4: $ff
	cp $fd                                           ; $5ac5: $fe $fd
	sbc l                                            ; $5ac7: $9d
	adc c                                            ; $5ac8: $89
	ld a, c                                          ; $5ac9: $79
	ld a, c                                          ; $5aca: $79
	ld c, l                                          ; $5acb: $4d
	cp $9c                                           ; $5acc: $fe $9c
	and d                                            ; $5ace: $a2
	xor d                                            ; $5acf: $aa
	add b                                            ; $5ad0: $80
	ld [hl], a                                       ; $5ad1: $77
	ld sp, hl                                        ; $5ad2: $f9
	rst $38                                          ; $5ad3: $ff
	ld a, a                                          ; $5ad4: $7f
	ld sp, hl                                        ; $5ad5: $f9
	ld a, d                                          ; $5ad6: $7a
	jp nz, $9cff                                     ; $5ad7: $c2 $ff $9c

	and b                                            ; $5ada: $a0
	xor a                                            ; $5adb: $af
	nop                                              ; $5adc: $00
	ld l, a                                          ; $5add: $6f
	ldh a, [$67]                                     ; $5ade: $f0 $67
	ld sp, hl                                        ; $5ae0: $f9
	ld [hl], e                                       ; $5ae1: $73
	rst FarCall                                          ; $5ae2: $f7
	sbc e                                            ; $5ae3: $9b
	rlca                                             ; $5ae4: $07
	dec b                                            ; $5ae5: $05
	nop                                              ; $5ae6: $00
	ld b, h                                          ; $5ae7: $44
	ld [hl], a                                       ; $5ae8: $77
	ldh a, [$80]                                     ; $5ae9: $f0 $80
	rlca                                             ; $5aeb: $07
	ld [bc], a                                       ; $5aec: $02
	sub l                                            ; $5aed: $95
	rst FarCall                                          ; $5aee: $f7

jr_04e_5aef:
	rlca                                             ; $5aef: $07
	rst $38                                          ; $5af0: $ff
	rra                                              ; $5af1: $1f
	ld b, $f9                                        ; $5af2: $06 $f9
	call z, $0300                                    ; $5af4: $cc $00 $03
	db $fc                                           ; $5af7: $fc
	add hl, bc                                       ; $5af8: $09
	ld de, $fe1f                                     ; $5af9: $11 $1f $fe
	nop                                              ; $5afc: $00
	ld [hl], h                                       ; $5afd: $74
	db $ec                                           ; $5afe: $ec
	db $f4                                           ; $5aff: $f4
	ld sp, hl                                        ; $5b00: $f9
	rst $38                                          ; $5b01: $ff
	ld c, h                                          ; $5b02: $4c
	ld [hl], $cb                                     ; $5b03: $36 $cb
	ld a, b                                          ; $5b05: $78
	ldh a, [$9b]                                     ; $5b06: $f0 $9b
	ld c, $04                                        ; $5b08: $0e $04
	adc d                                            ; $5b0a: $8a
	or d                                             ; $5b0b: $b2
	add hl, de                                       ; $5b0c: $19
	inc c                                            ; $5b0d: $0c
	nop                                              ; $5b0e: $00
	ret nz                                           ; $5b0f: $c0

	ld h, b                                          ; $5b10: $60
	rst AddAOntoHL                                          ; $5b11: $ef
	ld h, b                                          ; $5b12: $60
	ldh [rSVBK], a                                   ; $5b13: $e0 $70
	cp b                                             ; $5b15: $b8
	nop                                              ; $5b16: $00
	ld h, b                                          ; $5b17: $60
	rst $38                                          ; $5b18: $ff
	ld [hl], b                                       ; $5b19: $70
	jr nc, jr_04e_5b3c                               ; $5b1a: $30 $20

	ret nc                                           ; $5b1c: $d0

	ld [$bd3a], sp                                   ; $5b1d: $08 $3a $bd
	ld l, e                                          ; $5b20: $6b
	or a                                             ; $5b21: $b7
	sbc [hl]                                         ; $5b22: $9e
	ld [bc], a                                       ; $5b23: $02
	ld l, a                                          ; $5b24: $6f
	ld sp, hl                                        ; $5b25: $f9
	rst SubAFromDE                                          ; $5b26: $df
	cp [hl]                                          ; $5b27: $be
	ld l, a                                          ; $5b28: $6f
	ldh a, [$df]                                     ; $5b29: $f0 $df
	ld bc, $f06f                                     ; $5b2b: $01 $6f $f0
	rst SubAFromDE                                          ; $5b2e: $df
	ld [$f06f], a                                    ; $5b2f: $ea $6f $f0
	rst SubAFromDE                                          ; $5b32: $df
	dec d                                            ; $5b33: $15
	ld l, a                                          ; $5b34: $6f
	ldh a, [$9b]                                     ; $5b35: $f0 $9b
	pop de                                           ; $5b37: $d1
	rst FarCall                                          ; $5b38: $f7
	nop                                              ; $5b39: $00
	ld hl, sp-$03                                    ; $5b3a: $f8 $fd

jr_04e_5b3c:
	sbc e                                            ; $5b3c: $9b
	ld l, $0a                                        ; $5b3d: $2e $0a
	rst $38                                          ; $5b3f: $ff
	rlca                                             ; $5b40: $07
	ld [hl], e                                       ; $5b41: $73
	ld e, b                                          ; $5b42: $58
	adc e                                            ; $5b43: $8b
	inc c                                            ; $5b44: $0c
	rrca                                             ; $5b45: $0f
	cp a                                             ; $5b46: $bf
	cp $7f                                           ; $5b47: $fe $7f
	nop                                              ; $5b49: $00
	nop                                              ; $5b4a: $00
	ld [hl], a                                       ; $5b4b: $77
	di                                               ; $5b4c: $f3
	rst $38                                          ; $5b4d: $ff
	ld a, a                                          ; $5b4e: $7f
	ld a, a                                          ; $5b4f: $7f
	ld a, [hl]                                       ; $5b50: $7e
	rrca                                             ; $5b51: $0f
	nop                                              ; $5b52: $00
	ld b, b                                          ; $5b53: $40
	ld b, b                                          ; $5b54: $40
	ld a, b                                          ; $5b55: $78
	ld a, l                                          ; $5b56: $7d
	dec [hl]                                         ; $5b57: $35
	halt                                             ; $5b58: $76
	jr c, jr_04e_5aef                                ; $5b59: $38 $94

	ccf                                              ; $5b5b: $3f
	cp a                                             ; $5b5c: $bf
	ld a, $7a                                        ; $5b5d: $3e $7a
	add [hl]                                         ; $5b5f: $86
	add b                                            ; $5b60: $80
	nop                                              ; $5b61: $00
	xor c                                            ; $5b62: $a9
	add hl, hl                                       ; $5b63: $29
	nop                                              ; $5b64: $00
	add c                                            ; $5b65: $81
	ld [hl], a                                       ; $5b66: $77
	add $9b                                          ; $5b67: $c6 $9b
	ld d, [hl]                                       ; $5b69: $56
	sub $ff                                          ; $5b6a: $d6 $ff
	ld a, [hl]                                       ; $5b6c: $7e
	db $fd                                           ; $5b6d: $fd
	add b                                            ; $5b6e: $80
	ret z                                            ; $5b6f: $c8

	ld c, h                                          ; $5b70: $4c
	ld e, a                                          ; $5b71: $5f
	ld d, l                                          ; $5b72: $55
	or d                                             ; $5b73: $b2
	dec h                                            ; $5b74: $25
	ld [$7504], sp                                   ; $5b75: $08 $04 $75
	or $f6                                           ; $5b78: $f6 $f6
	jp hl                                            ; $5b7a: $e9


	ld [hl], h                                       ; $5b7b: $74
	ld a, [de]                                       ; $5b7c: $1a
	dec b                                            ; $5b7d: $05
	ld [bc], a                                       ; $5b7e: $02
	ret nz                                           ; $5b7f: $c0

	ldh a, [$7d]                                     ; $5b80: $f0 $7d
	cp h                                             ; $5b82: $bc
	nop                                              ; $5b83: $00
	ld [$4284], sp                                   ; $5b84: $08 $84 $42
	ccf                                              ; $5b87: $3f
	rrca                                             ; $5b88: $0f
	ld [bc], a                                       ; $5b89: $02
	inc bc                                           ; $5b8a: $03
	rst SubAFromDE                                          ; $5b8b: $df
	ld h, a                                          ; $5b8c: $67
	inc sp                                           ; $5b8d: $33
	adc l                                            ; $5b8e: $8d
	sbc c                                            ; $5b8f: $99
	ld b, b                                          ; $5b90: $40
	add d                                            ; $5b91: $82
	ld b, c                                          ; $5b92: $41
	add d                                            ; $5b93: $82
	inc b                                            ; $5b94: $04
	ld d, b                                          ; $5b95: $50
	and b                                            ; $5b96: $a0
	ld b, b                                          ; $5b97: $40
	rst AddAOntoHL                                          ; $5b98: $ef
	db $dd                                           ; $5b99: $dd
	or [hl]                                          ; $5b9a: $b6
	ld l, h                                          ; $5b9b: $6c
	ret c                                            ; $5b9c: $d8

	and b                                            ; $5b9d: $a0
	ld b, b                                          ; $5b9e: $40
	add b                                            ; $5b9f: $80
	ret nz                                           ; $5ba0: $c0

	ld [hl], e                                       ; $5ba1: $73
	ld a, [bc]                                       ; $5ba2: $0a
	ldh [$b6], a                                     ; $5ba3: $e0 $b6
	cp $9c                                           ; $5ba5: $fe $9c
	ld b, $01                                        ; $5ba7: $06 $01
	ld [bc], a                                       ; $5ba9: $02
	ld a, b                                          ; $5baa: $78
	ld d, e                                          ; $5bab: $53
	rst $38                                          ; $5bac: $ff
	sbc d                                            ; $5bad: $9a
	inc c                                            ; $5bae: $0c
	ld b, $03                                        ; $5baf: $06 $03
	ld bc, $7801                                     ; $5bb1: $01 $01 $78
	ld e, d                                          ; $5bb4: $5a
	adc h                                            ; $5bb5: $8c
	jr jr_04e_5c31                                   ; $5bb6: $18 $79

	ld e, a                                          ; $5bb8: $5f
	add hl, sp                                       ; $5bb9: $39
	ld bc, $0700                                     ; $5bba: $01 $00 $07
	rrca                                             ; $5bbd: $0f
	rra                                              ; $5bbe: $1f
	adc a                                            ; $5bbf: $8f
	cpl                                              ; $5bc0: $2f
	rst FarCall                                          ; $5bc1: $f7
	rst $38                                          ; $5bc2: $ff
	rrca                                             ; $5bc3: $0f
	rst $38                                          ; $5bc4: $ff
	inc b                                            ; $5bc5: $04
	inc bc                                           ; $5bc6: $03
	rst $38                                          ; $5bc7: $ff
	ldh [$7a], a                                     ; $5bc8: $e0 $7a
	cp e                                             ; $5bca: $bb
	ld a, h                                          ; $5bcb: $7c
	db $fd                                           ; $5bcc: $fd
	ld a, b                                          ; $5bcd: $78
	sub c                                            ; $5bce: $91
	add b                                            ; $5bcf: $80
	ld hl, sp-$11                                    ; $5bd0: $f8 $ef
	jr z, jr_04e_5c27                                ; $5bd2: $28 $53

	ld [hl], a                                       ; $5bd4: $77
	ld l, $9d                                        ; $5bd5: $2e $9d
	dec a                                            ; $5bd7: $3d
	ld a, [$acc7]                                    ; $5bd8: $fa $c7 $ac
	nop                                              ; $5bdb: $00
	pop bc                                           ; $5bdc: $c1
	jp nz, $d8fd                                     ; $5bdd: $c2 $fd $d8

	ld sp, $60f8                                     ; $5be0: $31 $f8 $60
	or b                                             ; $5be3: $b0
	ret c                                            ; $5be4: $d8

	ld a, h                                          ; $5be5: $7c
	inc l                                            ; $5be6: $2c
	jr c, @-$1e                                      ; $5be7: $38 $e0

	ldh a, [rAUD4LEN]                                ; $5be9: $f0 $20
	sub b                                            ; $5beb: $90
	adc b                                            ; $5bec: $88
	ld b, h                                          ; $5bed: $44
	inc h                                            ; $5bee: $24
	sbc [hl]                                         ; $5bef: $9e
	ret z                                            ; $5bf0: $c8

	halt                                             ; $5bf1: $76
	ld b, l                                          ; $5bf2: $45
	ldh [hDisp1_OBP1], a                                     ; $5bf3: $e0 $94
	sbc [hl]                                         ; $5bf5: $9e
	ld [bc], a                                       ; $5bf6: $02
	ld a, e                                          ; $5bf7: $7b
	ld c, [hl]                                       ; $5bf8: $4e
	ld [hl], d                                       ; $5bf9: $72
	ld h, b                                          ; $5bfa: $60
	ld h, a                                          ; $5bfb: $67
	inc [hl]                                         ; $5bfc: $34
	sbc l                                            ; $5bfd: $9d
	ld [bc], a                                       ; $5bfe: $02
	add c                                            ; $5bff: $81
	db $fc                                           ; $5c00: $fc
	sub [hl]                                         ; $5c01: $96
	ld l, l                                          ; $5c02: $6d
	or a                                             ; $5c03: $b7
	db $db                                           ; $5c04: $db
	db $ed                                           ; $5c05: $ed
	halt                                             ; $5c06: $76
	dec sp                                           ; $5c07: $3b
	dec e                                            ; $5c08: $1d
	ld c, $80                                        ; $5c09: $0e $80
	halt                                             ; $5c0b: $76
	ld d, c                                          ; $5c0c: $51
	sbc [hl]                                         ; $5c0d: $9e
	ld bc, $bd71                                     ; $5c0e: $01 $71 $bd
	ld [hl], a                                       ; $5c11: $77
	rst FarCall                                          ; $5c12: $f7

jr_04e_5c13:
	ld [hl], d                                       ; $5c13: $72
	ld c, e                                          ; $5c14: $4b
	sbc e                                            ; $5c15: $9b
	ld h, b                                          ; $5c16: $60
	ldh a, [$f0]                                     ; $5c17: $f0 $f0
	ldh [$7b], a                                     ; $5c19: $e0 $7b
	pop af                                           ; $5c1b: $f1
	sbc h                                            ; $5c1c: $9c
	rst $38                                          ; $5c1d: $ff
	ldh a, [$f0]                                     ; $5c1e: $f0 $f0
	ld [hl], l                                       ; $5c20: $75
	xor l                                            ; $5c21: $ad
	ld [hl], a                                       ; $5c22: $77
	db $ed                                           ; $5c23: $ed
	ld [hl], e                                       ; $5c24: $73
	jp hl                                            ; $5c25: $e9


	ld l, e                                          ; $5c26: $6b

jr_04e_5c27:
	rst FarCall                                          ; $5c27: $f7
	ld b, a                                          ; $5c28: $47
	ldh a, [$7a]                                     ; $5c29: $f0 $7a
	xor $df                                          ; $5c2b: $ee $df
	ld bc, $e07a                                     ; $5c2d: $01 $7a $e0
	ld a, a                                          ; $5c30: $7f

jr_04e_5c31:
	ld [bc], a                                       ; $5c31: $02
	rst SubAFromDE                                          ; $5c32: $df
	ld [bc], a                                       ; $5c33: $02
	ld a, l                                          ; $5c34: $7d
	dec sp                                           ; $5c35: $3b
	rst $38                                          ; $5c36: $ff
	sub [hl]                                         ; $5c37: $96
	ld [de], a                                       ; $5c38: $12
	db $fd                                           ; $5c39: $fd
	ldh a, [$f9]                                     ; $5c3a: $f0 $f9
	db $fd                                           ; $5c3c: $fd
	db $fd                                           ; $5c3d: $fd
	nop                                              ; $5c3e: $00
	nop                                              ; $5c3f: $00
	db $ed                                           ; $5c40: $ed
	ld h, l                                          ; $5c41: $65
	sub c                                            ; $5c42: $91
	sbc e                                            ; $5c43: $9b
	add b                                            ; $5c44: $80
	ld b, b                                          ; $5c45: $40
	ld b, b                                          ; $5c46: $40
	cp a                                             ; $5c47: $bf
	halt                                             ; $5c48: $76
	ld l, d                                          ; $5c49: $6a
	ld a, a                                          ; $5c4a: $7f
	ei                                               ; $5c4b: $fb
	ld a, [hl]                                       ; $5c4c: $7e
	ld h, d                                          ; $5c4d: $62
	ld a, [hl]                                       ; $5c4e: $7e
	dec c                                            ; $5c4f: $0d
	add b                                            ; $5c50: $80
	db $f4                                           ; $5c51: $f4
	nop                                              ; $5c52: $00
	ld a, e                                          ; $5c53: $7b
	jr nc, jr_04e_5c56                               ; $5c54: $30 $00

jr_04e_5c56:
	cp $04                                           ; $5c56: $fe $04
	ld c, h                                          ; $5c58: $4c
	sbc b                                            ; $5c59: $98
	rst $38                                          ; $5c5a: $ff
	call z, $0038                                   ; $5c5b: $cc $38 $00
	ld bc, $08fb                                     ; $5c5e: $01 $fb $08
	pop de                                           ; $5c61: $d1
	ld d, b                                          ; $5c62: $50
	xor $c2                                          ; $5c63: $ee $c2
	ret nz                                           ; $5c65: $c0

	ccf                                              ; $5c66: $3f
	ld b, b                                          ; $5c67: $40
	ld [hl], a                                       ; $5c68: $77
	ld l, c                                          ; $5c69: $69
	rst $38                                          ; $5c6a: $ff
	inc sp                                           ; $5c6b: $33
	and e                                            ; $5c6c: $a3
	jr nz, @-$3e                                     ; $5c6d: $20 $c0

	cp a                                             ; $5c6f: $bf
	sbc d                                            ; $5c70: $9a
	jr nc, jr_04e_5c13                               ; $5c71: $30 $a0

	ld a, a                                          ; $5c73: $7f
	and b                                            ; $5c74: $a0
	jr nz, jr_04e_5cf2                               ; $5c75: $20 $7b

	xor c                                            ; $5c77: $a9
	sbc d                                            ; $5c78: $9a
	ret nc                                           ; $5c79: $d0

	ld h, b                                          ; $5c7a: $60
	ret nz                                           ; $5c7b: $c0

	ld a, a                                          ; $5c7c: $7f
	ret nz                                           ; $5c7d: $c0

	inc sp                                           ; $5c7e: $33
	sub b                                            ; $5c7f: $90
	inc bc                                           ; $5c80: $03
	ldh a, [$03]                                     ; $5c81: $f0 $03
	ldh a, [$03]                                     ; $5c83: $f0 $03
	ldh a, [rAUD1LOW]                                ; $5c85: $f0 $13
	ldh a, [rPCM12]                                  ; $5c87: $f0 $76
	call nc, $f97f                                   ; $5c89: $d4 $7f $f9
	ld a, c                                          ; $5c8c: $79
	or $73                                           ; $5c8d: $f6 $73
	ldh a, [$80]                                     ; $5c8f: $f0 $80
	rlca                                             ; $5c91: $07
	ld c, $e8                                        ; $5c92: $0e $e8
	inc l                                            ; $5c94: $2c
	ld c, h                                          ; $5c95: $4c
	call c, $0c34                                    ; $5c96: $dc $34 $0c
	ld bc, $1f07                                     ; $5c99: $01 $07 $1f
	rst AddAOntoHL                                          ; $5c9c: $ef
	ld [hl], h                                       ; $5c9d: $74
	ld a, a                                          ; $5c9e: $7f
	ld h, a                                          ; $5c9f: $67
	rlca                                             ; $5ca0: $07
	jr nc, jr_04e_5cc1                               ; $5ca1: $30 $1e

	rlca                                             ; $5ca3: $07
	ld [$04f1], sp                                   ; $5ca4: $08 $f1 $04
	dec bc                                           ; $5ca7: $0b
	ld [$fce0], sp                                   ; $5ca8: $08 $e0 $fc
	cp $fd                                           ; $5cab: $fe $fd
	dec bc                                           ; $5cad: $0b
	rst $38                                          ; $5cae: $ff
	ei                                               ; $5caf: $fb
	ld a, c                                          ; $5cb0: $79
	inc b                                            ; $5cb1: $04
	ld a, a                                          ; $5cb2: $7f
	reti                                             ; $5cb3: $d9


	sbc [hl]                                         ; $5cb4: $9e
	ld b, b                                          ; $5cb5: $40
	ld l, l                                          ; $5cb6: $6d
	ld l, e                                          ; $5cb7: $6b
	ld a, l                                          ; $5cb8: $7d
	jp c, $f873                                      ; $5cb9: $da $73 $f8

	ld l, h                                          ; $5cbc: $6c
	pop de                                           ; $5cbd: $d1
	ld h, a                                          ; $5cbe: $67
	rst FarCall                                          ; $5cbf: $f7
	sub e                                            ; $5cc0: $93

jr_04e_5cc1:
	rlca                                             ; $5cc1: $07
	inc bc                                           ; $5cc2: $03
	rst FarCall                                          ; $5cc3: $f7
	rst AddAOntoHL                                          ; $5cc4: $ef
	ld a, $7c                                        ; $5cc5: $3e $7c
	ld hl, sp-$47                                    ; $5cc7: $f8 $b9
	nop                                              ; $5cc9: $00
	inc b                                            ; $5cca: $04
	ld [$7a10], sp                                   ; $5ccb: $08 $10 $7a
	or a                                             ; $5cce: $b7
	sbc c                                            ; $5ccf: $99
	ld [bc], a                                       ; $5cd0: $02
	db $fd                                           ; $5cd1: $fd
	ld a, [$9ec0]                                    ; $5cd2: $fa $c0 $9e
	ld b, b                                          ; $5cd5: $40
	ld [hl], e                                       ; $5cd6: $73
	sbc $9d                                          ; $5cd7: $de $9d
	ccf                                              ; $5cd9: $3f
	ld h, c                                          ; $5cda: $61
	sbc $80                                          ; $5cdb: $de $80
	ld h, b                                          ; $5cdd: $60
	ld c, b                                          ; $5cde: $48
	ld a, e                                          ; $5cdf: $7b
	or $50                                           ; $5ce0: $f6 $50
	jr c, jr_04e_5d5e                                ; $5ce2: $38 $7a

	adc a                                            ; $5ce4: $8f
	jr c, @+$2a                                      ; $5ce5: $38 $28

	inc bc                                           ; $5ce7: $03
	ldh a, [rSCX]                                    ; $5ce8: $f0 $43
	ldh a, [hDisp1_SCY]                                     ; $5cea: $f0 $90
	inc c                                            ; $5cec: $0c
	inc e                                            ; $5ced: $1c
	db $fd                                           ; $5cee: $fd
	ccf                                              ; $5cef: $3f
	rrca                                             ; $5cf0: $0f
	dec de                                           ; $5cf1: $1b

jr_04e_5cf2:
	jr nz, jr_04e_5d2c                               ; $5cf2: $20 $38

	jr jr_04e_5d0e                                   ; $5cf4: $18 $18

	rrca                                             ; $5cf6: $0f
	rst GetHLinHL                                          ; $5cf7: $cf
	rrca                                             ; $5cf8: $0f
	rlca                                             ; $5cf9: $07
	rra                                              ; $5cfa: $1f
	ld a, b                                          ; $5cfb: $78
	ld h, [hl]                                       ; $5cfc: $66
	ld a, b                                          ; $5cfd: $78
	cp h                                             ; $5cfe: $bc
	sbc h                                            ; $5cff: $9c
	add c                                            ; $5d00: $81
	ld hl, $7ae1                                     ; $5d01: $21 $e1 $7a
	ld d, c                                          ; $5d04: $51
	adc e                                            ; $5d05: $8b
	rst $38                                          ; $5d06: $ff
	add c                                            ; $5d07: $81
	nop                                              ; $5d08: $00
	pop bc                                           ; $5d09: $c1
	ldh a, [rP1]                                     ; $5d0a: $f0 $00
	inc b                                            ; $5d0c: $04
	dec d                                            ; $5d0d: $15

jr_04e_5d0e:
	ld e, $fc                                        ; $5d0e: $1e $fc
	ld sp, hl                                        ; $5d10: $f9
	ld e, $3f                                        ; $5d11: $1e $3f
	nop                                              ; $5d13: $00
	ld [$fffe], sp                                   ; $5d14: $08 $fe $ff
	sbc [hl]                                         ; $5d17: $9e
	cp $81                                           ; $5d18: $fe $81
	ld h, a                                          ; $5d1a: $67
	ld a, c                                          ; $5d1b: $79
	ld [hl], l                                       ; $5d1c: $75
	cp e                                             ; $5d1d: $bb
	ld [hl], a                                       ; $5d1e: $77
	rst FarCall                                          ; $5d1f: $f7
	ld l, e                                          ; $5d20: $6b
	ldh a, [$9d]                                     ; $5d21: $f0 $9d
	inc c                                            ; $5d23: $0c
	cp l                                             ; $5d24: $bd
	ld l, e                                          ; $5d25: $6b
	ldh a, [$9e]                                     ; $5d26: $f0 $9e
	add hl, bc                                       ; $5d28: $09
	inc bc                                           ; $5d29: $03
	add b                                            ; $5d2a: $80
	ld c, e                                          ; $5d2b: $4b

jr_04e_5d2c:
	ldh a, [hDisp1_WX]                                     ; $5d2c: $f0 $96
	ld hl, sp-$01                                    ; $5d2e: $f8 $ff
	ld [$0809], sp                                   ; $5d30: $08 $09 $08
	ld [$0909], sp                                   ; $5d33: $08 $09 $09
	rrca                                             ; $5d36: $0f
	jp c, $7fff                                      ; $5d37: $da $ff $7f

	ld hl, sp-$21                                    ; $5d3a: $f8 $df

jr_04e_5d3c:
	cp b                                             ; $5d3c: $b8
	sbc $98                                          ; $5d3d: $de $98
	sbc h                                            ; $5d3f: $9c
	ld e, b                                          ; $5d40: $58
	ld hl, sp-$01                                    ; $5d41: $f8 $ff
	db $db                                           ; $5d43: $db
	rst AddAOntoHL                                          ; $5d44: $ef
	ld [hl], l                                       ; $5d45: $75
	ld a, [hl]                                       ; $5d46: $7e
	ld l, a                                          ; $5d47: $6f
	jp nc, $ffdb                                     ; $5d48: $d2 $db $ff

	ld a, l                                          ; $5d4b: $7d
	sbc [hl]                                         ; $5d4c: $9e
	sbc d                                            ; $5d4d: $9a
	inc bc                                           ; $5d4e: $03
	rlca                                             ; $5d4f: $07
	rla                                              ; $5d50: $17
	daa                                              ; $5d51: $27
	ccf                                              ; $5d52: $3f
	ld a, c                                          ; $5d53: $79
	ld c, l                                          ; $5d54: $4d
	adc [hl]                                         ; $5d55: $8e
	db $fc                                           ; $5d56: $fc
	ld hl, sp-$08                                    ; $5d57: $f8 $f8
	ldh a, [rIE]                                     ; $5d59: $f0 $ff
	bit 6, a                                         ; $5d5b: $cb $77
	di                                               ; $5d5d: $f3

jr_04e_5d5e:
	db $ec                                           ; $5d5e: $ec
	db $e4                                           ; $5d5f: $e4
	call nz, $f0d8                                   ; $5d60: $c4 $d8 $f0
	ld l, b                                          ; $5d63: $68
	ld [bc], a                                       ; $5d64: $02
	rlca                                             ; $5d65: $07
	rlca                                             ; $5d66: $07
	sbc $0f                                          ; $5d67: $de $0f
	sbc l                                            ; $5d69: $9d
	sbc a                                            ; $5d6a: $9f
	cp a                                             ; $5d6b: $bf
	ld l, a                                          ; $5d6c: $6f
	ret nc                                           ; $5d6d: $d0

	ld a, [hl]                                       ; $5d6e: $7e
	ld [hl], d                                       ; $5d6f: $72
	ld h, a                                          ; $5d70: $67
	ret nc                                           ; $5d71: $d0

	ld l, a                                          ; $5d72: $6f
	ldh a, [$7b]                                     ; $5d73: $f0 $7b
	ld a, [$f053]                                    ; $5d75: $fa $53 $f0
	sbc l                                            ; $5d78: $9d
	ret nz                                           ; $5d79: $c0

	ldh a, [rVBK]                                    ; $5d7a: $f0 $4f
	ldh a, [$5f]                                     ; $5d7c: $f0 $5f
	and b                                            ; $5d7e: $a0
	inc bc                                           ; $5d7f: $03
	ldh a, [rPCM34]                                  ; $5d80: $f0 $77
	ldh a, [$7d]                                     ; $5d82: $f0 $7d
	ld de, $029e                                     ; $5d84: $11 $9e $02
	ld h, a                                          ; $5d87: $67
	ldh a, [hDisp1_WX]                                     ; $5d88: $f0 $96
	sbc a                                            ; $5d8a: $9f
	ld [hl], b                                       ; $5d8b: $70
	ld [hl], b                                       ; $5d8c: $70
	ld h, c                                          ; $5d8d: $61
	ld h, a                                          ; $5d8e: $67
	ld [hl], c                                       ; $5d8f: $71
	ld b, b                                          ; $5d90: $40
	dec de                                           ; $5d91: $1b
	ld a, a                                          ; $5d92: $7f
	call c, $9eff                                    ; $5d93: $dc $ff $9e
	ld e, a                                          ; $5d96: $5f
	sbc $ff                                          ; $5d97: $de $ff
	ld a, h                                          ; $5d99: $7c
	call nz, $187e                                   ; $5d9a: $c4 $7e $18
	rst SubAFromDE                                          ; $5d9d: $df
	ret nz                                           ; $5d9e: $c0

	ld a, b                                          ; $5d9f: $78
	push bc                                          ; $5da0: $c5
	call c, $92ff                                    ; $5da1: $dc $ff $92
	ld a, $ff                                        ; $5da4: $3e $ff
	ld l, [hl]                                       ; $5da6: $6e
	push de                                          ; $5da7: $d5
	xor e                                            ; $5da8: $ab
	ld a, a                                          ; $5da9: $7f
	ld b, c                                          ; $5daa: $41
	ld c, c                                          ; $5dab: $49
	pop bc                                           ; $5dac: $c1
	ret nz                                           ; $5dad: $c0

	pop de                                           ; $5dae: $d1
	xor d                                            ; $5daf: $aa
	push de                                          ; $5db0: $d5
	call c, $98ff                                    ; $5db1: $dc $ff $98
	jp $8e8f                                         ; $5db4: $c3 $8f $8e


	dec e                                            ; $5db7: $1d
	ld a, [de]                                       ; $5db8: $1a
	jr jr_04e_5d3c                                   ; $5db9: $18 $81

	ld [hl], e                                       ; $5dbb: $73
	inc sp                                           ; $5dbc: $33
	sub l                                            ; $5dbd: $95
	db $fd                                           ; $5dbe: $fd
	rst $38                                          ; $5dbf: $ff
	add hl, sp                                       ; $5dc0: $39
	rst SubAFromBC                                          ; $5dc1: $e7
	add e                                            ; $5dc2: $83
	ld bc, $4580                                     ; $5dc3: $01 $80 $45
	adc d                                            ; $5dc6: $8a
	rlca                                             ; $5dc7: $07
	db $dd                                           ; $5dc8: $dd
	rst $38                                          ; $5dc9: $ff
	sbc l                                            ; $5dca: $9d
	ld a, a                                          ; $5dcb: $7f
	cp a                                             ; $5dcc: $bf
	ld [hl], a                                       ; $5dcd: $77
	cp d                                             ; $5dce: $ba
	sbc c                                            ; $5dcf: $99
	jr nz, @-$1e                                     ; $5dd0: $20 $e0

	ld hl, sp+$78                                    ; $5dd2: $f8 $78
	cp b                                             ; $5dd4: $b8
	ld a, b                                          ; $5dd5: $78
	ld d, a                                          ; $5dd6: $57
	sub b                                            ; $5dd7: $90
	sbc e                                            ; $5dd8: $9b
	ld [hl], b                                       ; $5dd9: $70
	ld e, h                                          ; $5dda: $5c
	add [hl]                                         ; $5ddb: $86
	or d                                             ; $5ddc: $b2
	ld [hl], e                                       ; $5ddd: $73
	ldh a, [$9c]                                     ; $5dde: $f0 $9c
	adc a                                            ; $5de0: $8f
	ld h, e                                          ; $5de1: $63
	ld h, e                                          ; $5de2: $63
	ld b, a                                          ; $5de3: $47
	ld [hl], b                                       ; $5de4: $70
	sbc b                                            ; $5de5: $98
	rrca                                             ; $5de6: $0f
	ld de, $1213                                     ; $5de7: $11 $13 $12
	ld [de], a                                       ; $5dea: $12
	di                                               ; $5deb: $f3
	rst AddAOntoHL                                          ; $5dec: $ef
	ld a, e                                          ; $5ded: $7b
	ld [$ffdc], sp                                   ; $5dee: $08 $dc $ff
	sbc h                                            ; $5df1: $9c
	rst SubAFromBC                                          ; $5df2: $e7
	ld l, b                                          ; $5df3: $68
	ld d, b                                          ; $5df4: $50
	sbc $48                                          ; $5df5: $de $48
	sbc c                                            ; $5df7: $99
	rst SubAFromDE                                          ; $5df8: $df
	ei                                               ; $5df9: $fb
	push hl                                          ; $5dfa: $e5
	rst $38                                          ; $5dfb: $ff
	rst AddAOntoHL                                          ; $5dfc: $ef
	rst FarCall                                          ; $5dfd: $f7
	ld [hl], a                                       ; $5dfe: $77
	pop af                                           ; $5dff: $f1
	sbc [hl]                                         ; $5e00: $9e
	sbc a                                            ; $5e01: $9f
	ld [hl], d                                       ; $5e02: $72
	ldh a, [c]                                       ; $5e03: $f2
	rst SubAFromDE                                          ; $5e04: $df
	rst $38                                          ; $5e05: $ff
	sbc [hl]                                         ; $5e06: $9e
	ld d, l                                          ; $5e07: $55
	reti                                             ; $5e08: $d9


	rst $38                                          ; $5e09: $ff
	add b                                            ; $5e0a: $80
	rst SubAFromDE                                          ; $5e0b: $df
	sbc a                                            ; $5e0c: $9f
	sbc [hl]                                         ; $5e0d: $9e
	ld [hl+], a                                      ; $5e0e: $22
	adc l                                            ; $5e0f: $8d
	or e                                             ; $5e10: $b3
	and [hl]                                         ; $5e11: $a6
	ld [hl], $80                                     ; $5e12: $36 $80
	ret nz                                           ; $5e14: $c0

	pop bc                                           ; $5e15: $c1
	sbc a                                            ; $5e16: $9f
	ld a, [hl]                                       ; $5e17: $7e
	sbc h                                            ; $5e18: $9c
	add hl, de                                       ; $5e19: $19
	add hl, bc                                       ; $5e1a: $09
	ld e, b                                          ; $5e1b: $58
	xor h                                            ; $5e1c: $ac
	ld hl, sp+$78                                    ; $5e1d: $f8 $78
	or b                                             ; $5e1f: $b0
	cp a                                             ; $5e20: $bf
	rra                                              ; $5e21: $1f
	jp z, $1f0f                                      ; $5e22: $ca $0f $1f

	rst AddAOntoHL                                          ; $5e25: $ef
	cp a                                             ; $5e26: $bf
	rra                                              ; $5e27: $1f
	rra                                              ; $5e28: $1f
	sbc a                                            ; $5e29: $9f
	sub [hl]                                         ; $5e2a: $96
	sbc a                                            ; $5e2b: $9f
	ld e, $34                                        ; $5e2c: $1e $34
	ld a, d                                          ; $5e2e: $7a
	ld [hl], h                                       ; $5e2f: $74
	ld a, b                                          ; $5e30: $78
	db $f4                                           ; $5e31: $f4
	ld a, [$d9fd]                                    ; $5e32: $fa $fd $d9
	rst $38                                          ; $5e35: $ff
	sbc b                                            ; $5e36: $98
	inc d                                            ; $5e37: $14
	jr c, @+$5e                                      ; $5e38: $38 $5c

	ld a, [hl-]                                      ; $5e3a: $3a
	ld d, [hl]                                       ; $5e3b: $56
	jr z, jr_04e_5e3e                                ; $5e3c: $28 $00

jr_04e_5e3e:
	ld [hl], e                                       ; $5e3e: $73
	ld d, c                                          ; $5e3f: $51
	ld [hl], e                                       ; $5e40: $73
	ld c, l                                          ; $5e41: $4d
	sbc c                                            ; $5e42: $99
	rra                                              ; $5e43: $1f
	cpl                                              ; $5e44: $2f
	ld e, a                                          ; $5e45: $5f
	cpl                                              ; $5e46: $2f
	ld e, a                                          ; $5e47: $5f
	xor a                                            ; $5e48: $af
	ld [hl], a                                       ; $5e49: $77
	rla                                              ; $5e4a: $17
	ld h, [hl]                                       ; $5e4b: $66
	ldh a, [c]                                       ; $5e4c: $f2
	ld a, a                                          ; $5e4d: $7f
	or l                                             ; $5e4e: $b5
	ld e, e                                          ; $5e4f: $5b
	and b                                            ; $5e50: $a0
	ld l, a                                          ; $5e51: $6f
	ld h, h                                          ; $5e52: $64
	sbc [hl]                                         ; $5e53: $9e
	cp $67                                           ; $5e54: $fe $67
	ldh a, [$78]                                     ; $5e56: $f0 $78
	db $d3                                           ; $5e58: $d3
	sbc c                                            ; $5e59: $99
	dec a                                            ; $5e5a: $3d
	dec d                                            ; $5e5b: $15
	xor d                                            ; $5e5c: $aa
	ld [hl], l                                       ; $5e5d: $75
	and b                                            ; $5e5e: $a0
	ld [hl], c                                       ; $5e5f: $71
	sbc $ff                                          ; $5e60: $de $ff
	add c                                            ; $5e62: $81
	ld [$8a55], a                                    ; $5e63: $ea $55 $8a
	ld e, a                                          ; $5e66: $5f
	adc [hl]                                         ; $5e67: $8e
	ld [bc], a                                       ; $5e68: $02
	ld [bc], a                                       ; $5e69: $02
	pop hl                                           ; $5e6a: $e1
	db $10                                           ; $5e6b: $10
	ret z                                            ; $5e6c: $c8

	rst SubAFromBC                                          ; $5e6d: $e7
	db $d3                                           ; $5e6e: $d3
	ld l, d                                          ; $5e6f: $6a
	cp $fe                                           ; $5e70: $fe $fe
	rst $38                                          ; $5e72: $ff
	rst $38                                          ; $5e73: $ff
	ccf                                              ; $5e74: $3f
	rra                                              ; $5e75: $1f
	cpl                                              ; $5e76: $2f
	sub a                                            ; $5e77: $97
	dec sp                                           ; $5e78: $3b
	add hl, sp                                       ; $5e79: $39
	di                                               ; $5e7a: $f3
	inc de                                           ; $5e7b: $13
	rra                                              ; $5e7c: $1f

Call_04e_5e7d:
	ei                                               ; $5e7d: $fb
	rst $38                                          ; $5e7e: $ff
	cp a                                             ; $5e7f: $bf
	rrca                                             ; $5e80: $0f
	ld [hl], l                                       ; $5e81: $75
	rst $38                                          ; $5e82: $ff
	sbc h                                            ; $5e83: $9c
	rst FarCall                                          ; $5e84: $f7
	di                                               ; $5e85: $f3
	di                                               ; $5e86: $f3
	ld [hl], l                                       ; $5e87: $75
	ld c, $7f                                        ; $5e88: $0e $7f
	ld d, b                                          ; $5e8a: $50
	sbc l                                            ; $5e8b: $9d
	xor $b9                                          ; $5e8c: $ee $b9
	ld [hl], e                                       ; $5e8e: $73
	jp $ff9b                                         ; $5e8f: $c3 $9b $ff


	pop af                                           ; $5e92: $f1
	ldh [$8d], a                                     ; $5e93: $e0 $8d
	sbc $92                                          ; $5e95: $de $92
	sbc e                                            ; $5e97: $9b
	ld d, d                                          ; $5e98: $52
	rst SubAFromHL                                          ; $5e99: $d7
	db $d3                                           ; $5e9a: $d3
	di                                               ; $5e9b: $f3
	reti                                             ; $5e9c: $d9


	rst $38                                          ; $5e9d: $ff
	sbc [hl]                                         ; $5e9e: $9e
	dec e                                            ; $5e9f: $1d
	db $dd                                           ; $5ea0: $dd
	rra                                              ; $5ea1: $1f
	sbc h                                            ; $5ea2: $9c
	cpl                                              ; $5ea3: $2f
	rst AddAOntoHL                                          ; $5ea4: $ef
	rst GetHLinHL                                          ; $5ea5: $cf
	ld [hl], a                                       ; $5ea6: $77
	jp nc, $e197                                     ; $5ea7: $d2 $97 $e1

	pop bc                                           ; $5eaa: $c1
	jp $2bc3                                         ; $5eab: $c3 $c3 $2b


	ld d, l                                          ; $5eae: $55
	xor e                                            ; $5eaf: $ab
	ld a, a                                          ; $5eb0: $7f
	ld h, a                                          ; $5eb1: $67
	inc bc                                           ; $5eb2: $03
	db $dd                                           ; $5eb3: $dd
	rst $38                                          ; $5eb4: $ff
	sbc c                                            ; $5eb5: $99
	db $fc                                           ; $5eb6: $fc
	rst $38                                          ; $5eb7: $ff
	cp a                                             ; $5eb8: $bf
	db $fd                                           ; $5eb9: $fd
	ld hl, sp-$0f                                    ; $5eba: $f8 $f1
	ld [hl], a                                       ; $5ebc: $77
	rst FarCall                                          ; $5ebd: $f7
	ld [hl], a                                       ; $5ebe: $77
	sbc [hl]                                         ; $5ebf: $9e
	rst SubAFromDE                                          ; $5ec0: $df
	rst $38                                          ; $5ec1: $ff
	sub b                                            ; $5ec2: $90
	and d                                            ; $5ec3: $a2
	ld e, e                                          ; $5ec4: $5b
	cp e                                             ; $5ec5: $bb
	rst $38                                          ; $5ec6: $ff
	rst $38                                          ; $5ec7: $ff
	dec sp                                           ; $5ec8: $3b
	cp e                                             ; $5ec9: $bb
	sbc e                                            ; $5eca: $9b
	pop af                                           ; $5ecb: $f1
	pop hl                                           ; $5ecc: $e1
	ld b, c                                          ; $5ecd: $41
	ld bc, $c101                                     ; $5ece: $01 $01 $c1
	pop bc                                           ; $5ed1: $c1
	ld a, c                                          ; $5ed2: $79
	jr z, jr_04e_5f4f                                ; $5ed3: $28 $7a

	ld b, d                                          ; $5ed5: $42
	sbc [hl]                                         ; $5ed6: $9e
	rst JumpTable                                          ; $5ed7: $c7
	rst SubAFromHL                                          ; $5ed8: $d7
	rst $38                                          ; $5ed9: $ff
	sbc b                                            ; $5eda: $98
	ld b, l                                          ; $5edb: $45
	xor d                                            ; $5edc: $aa
	ld d, l                                          ; $5edd: $55
	xor d                                            ; $5ede: $aa
	ld d, l                                          ; $5edf: $55
	ld c, d                                          ; $5ee0: $4a
	rst $38                                          ; $5ee1: $ff
	ld a, e                                          ; $5ee2: $7b
	db $db                                           ; $5ee3: $db
	call c, $9eff                                    ; $5ee4: $dc $ff $9e

jr_04e_5ee7:
	rst JumpTable                                          ; $5ee7: $c7
	ld a, e                                          ; $5ee8: $7b
	ldh a, [c]                                       ; $5ee9: $f2
	sbc d                                            ; $5eea: $9a
	xor e                                            ; $5eeb: $ab
	ld d, l                                          ; $5eec: $55
	xor e                                            ; $5eed: $ab
	ld e, a                                          ; $5eee: $5f
	or a                                             ; $5eef: $b7
	ld [hl], a                                       ; $5ef0: $77
	add c                                            ; $5ef1: $81
	ld [hl], l                                       ; $5ef2: $75
	sbc l                                            ; $5ef3: $9d
	add d                                            ; $5ef4: $82
	ld a, [$d4cf]                                    ; $5ef5: $fa $cf $d4
	ld l, a                                          ; $5ef8: $6f
	db $f4                                           ; $5ef9: $f4
	halt                                             ; $5efa: $76
	ld [hl], d                                       ; $5efb: $72
	ld [hl], d                                       ; $5efc: $72
	rst $38                                          ; $5efd: $ff
	rst $38                                          ; $5efe: $ff
	dec hl                                           ; $5eff: $2b
	ldh a, [$fa]                                     ; $5f00: $f0 $fa
	ld hl, sp-$04                                    ; $5f02: $f8 $fc
	db $fc                                           ; $5f04: $fc
	inc l                                            ; $5f05: $2c
	ld a, c                                          ; $5f06: $79
	ld [hl], l                                       ; $5f07: $75
	ld [hl], l                                       ; $5f08: $75
	jr z, jr_04e_5ee7                                ; $5f09: $28 $dc

	ret c                                            ; $5f0b: $d8

	ret nc                                           ; $5f0c: $d0

	inc de                                           ; $5f0d: $13
	ld b, $0e                                        ; $5f0e: $06 $0e
	ld c, $5f                                        ; $5f10: $0e $5f
	sbc $3f                                          ; $5f12: $de $3f
	adc h                                            ; $5f14: $8c
	push de                                          ; $5f15: $d5
	ld a, [$eefd]                                    ; $5f16: $fa $fd $ee
	db $ed                                           ; $5f19: $ed
	ld l, $6d                                        ; $5f1a: $2e $6d
	ld l, a                                          ; $5f1c: $6f
	rra                                              ; $5f1d: $1f
	rra                                              ; $5f1e: $1f
	rrca                                             ; $5f1f: $0f
	rlca                                             ; $5f20: $07
	rlca                                             ; $5f21: $07
	rst JumpTable                                          ; $5f22: $c7
	add a                                            ; $5f23: $87
	add [hl]                                         ; $5f24: $86
	cp $ff                                           ; $5f25: $fe $ff
	ccf                                              ; $5f27: $3f
	ld [hl], l                                       ; $5f28: $75
	ld [$479e], a                                    ; $5f29: $ea $9e $47
	sbc $ff                                          ; $5f2c: $de $ff
	ld a, e                                          ; $5f2e: $7b
	ld l, c                                          ; $5f2f: $69
	sbc h                                            ; $5f30: $9c
	rst AddAOntoHL                                          ; $5f31: $ef
	ccf                                              ; $5f32: $3f
	xor d                                            ; $5f33: $aa
	ld [hl], d                                       ; $5f34: $72
	or $7a                                           ; $5f35: $f6 $7a
	rla                                              ; $5f37: $17
	ld h, [hl]                                       ; $5f38: $66
	rst AddAOntoHL                                          ; $5f39: $ef
	sbc e                                            ; $5f3a: $9b

jr_04e_5f3b:
	db $fd                                           ; $5f3b: $fd
	ld a, [$eafd]                                    ; $5f3c: $fa $fd $ea
	ld a, e                                          ; $5f3f: $7b
	sbc e                                            ; $5f40: $9b
	reti                                             ; $5f41: $d9


	rst $38                                          ; $5f42: $ff
	ld [hl], a                                       ; $5f43: $77
	add c                                            ; $5f44: $81
	ld [hl], a                                       ; $5f45: $77
	adc l                                            ; $5f46: $8d
	ld l, a                                          ; $5f47: $6f
	db $e3                                           ; $5f48: $e3
	rst SubAFromDE                                          ; $5f49: $df
	cp $97                                           ; $5f4a: $fe $97
	xor h                                            ; $5f4c: $ac
	ld d, l                                          ; $5f4d: $55
	xor b                                            ; $5f4e: $a8

jr_04e_5f4f:
	ld e, c                                          ; $5f4f: $59
	ld a, b                                          ; $5f50: $78
	cp b                                             ; $5f51: $b8
	ld hl, sp+$58                                    ; $5f52: $f8 $58
	ld a, e                                          ; $5f54: $7b
	inc bc                                           ; $5f55: $03
	add b                                            ; $5f56: $80
	cp $3f                                           ; $5f57: $fe $3f
	ld a, a                                          ; $5f59: $7f
	ld a, a                                          ; $5f5a: $7f
	rst $38                                          ; $5f5b: $ff
	ld [$bf75], a                                    ; $5f5c: $ea $75 $bf
	ld e, a                                          ; $5f5f: $5f
	xor d                                            ; $5f60: $aa
	dec d                                            ; $5f61: $15
	nop                                              ; $5f62: $00
	nop                                              ; $5f63: $00
	dec d                                            ; $5f64: $15
	adc d                                            ; $5f65: $8a
	ld b, b                                          ; $5f66: $40
	and b                                            ; $5f67: $a0
	ld d, l                                          ; $5f68: $55
	ld [rIE], a                                    ; $5f69: $ea $ff $ff
	ld sp, hl                                        ; $5f6c: $f9
	ldh a, [c]                                       ; $5f6d: $f2
	jp hl                                            ; $5f6e: $e9


	jp nc, Jump_04e_42a2                             ; $5f6f: $d2 $a2 $42

	inc bc                                           ; $5f72: $03
	ld [bc], a                                       ; $5f73: $02
	rlca                                             ; $5f74: $07
	rrca                                             ; $5f75: $0f
	sbc h                                            ; $5f76: $9c
	rla                                              ; $5f77: $17
	cpl                                              ; $5f78: $2f
	ld e, a                                          ; $5f79: $5f
	ld a, e                                          ; $5f7a: $7b
	sbc [hl]                                         ; $5f7b: $9e
	sub [hl]                                         ; $5f7c: $96
	ld d, a                                          ; $5f7d: $57
	cp e                                             ; $5f7e: $bb
	ld e, a                                          ; $5f7f: $5f
	cp a                                             ; $5f80: $bf
	ld e, l                                          ; $5f81: $5d
	cp d                                             ; $5f82: $ba
	sub l                                            ; $5f83: $95
	ld a, [hl+]                                      ; $5f84: $2a
	ei                                               ; $5f85: $fb
	ld [hl], c                                       ; $5f86: $71
	cp a                                             ; $5f87: $bf
	ld a, a                                          ; $5f88: $7f
	ret nc                                           ; $5f89: $d0

	adc d                                            ; $5f8a: $8a
	ld [hl], e                                       ; $5f8b: $73
	ldh [c], a                                       ; $5f8c: $e2

Call_04e_5f8d:
	ld [hl], l                                       ; $5f8d: $75
	rst $38                                          ; $5f8e: $ff
	ld d, e                                          ; $5f8f: $53
	add e                                            ; $5f90: $83
	ld l, c                                          ; $5f91: $69
	cp [hl]                                          ; $5f92: $be
	ldh [c], a                                       ; $5f93: $e2
	rst $38                                          ; $5f94: $ff
	db $e4                                           ; $5f95: $e4
	rst $38                                          ; $5f96: $ff
	ld sp, hl                                        ; $5f97: $f9
	push hl                                          ; $5f98: $e5
	add $c0                                          ; $5f99: $c6 $c0
	rst FarCall                                          ; $5f9b: $f7
	sbc e                                            ; $5f9c: $9b
	rst $38                                          ; $5f9d: $ff
	rst FarCall                                          ; $5f9e: $f7
	rst SubAFromBC                                          ; $5f9f: $e7
	ld a, e                                          ; $5fa0: $7b
	rst SubAFromBC                                          ; $5fa1: $e7
	sbc d                                            ; $5fa2: $9a
	db $db                                           ; $5fa3: $db
	rst FarCall                                          ; $5fa4: $f7
	rst $38                                          ; $5fa5: $ff
	di                                               ; $5fa6: $f3
	di                                               ; $5fa7: $f3
	ld a, e                                          ; $5fa8: $7b
	ld hl, sp-$6a                                    ; $5fa9: $f8 $96
	reti                                             ; $5fab: $d9


	ld hl, $c0c1                                     ; $5fac: $21 $c1 $c0
	ld hl, sp-$18                                    ; $5faf: $f8 $e8
	add b                                            ; $5fb1: $80
	jr z, jr_04e_5f3b                                ; $5fb2: $28 $87

	ld a, b                                          ; $5fb4: $78
	push de                                          ; $5fb5: $d5
	rst SubAFromDE                                          ; $5fb6: $df
	rst FarCall                                          ; $5fb7: $f7
	ld a, a                                          ; $5fb8: $7f
	db $10                                           ; $5fb9: $10
	db $dd                                           ; $5fba: $dd
	rst $38                                          ; $5fbb: $ff
	sbc h                                            ; $5fbc: $9c
	or $0d                                           ; $5fbd: $f6 $0d
	ld c, $6c                                        ; $5fbf: $0e $6c
	add c                                            ; $5fc1: $81
	sbc $f7                                          ; $5fc2: $de $f7
	ld [hl], e                                       ; $5fc4: $73
	ld [hl], d                                       ; $5fc5: $72
	sbc l                                            ; $5fc6: $9d
	ld d, [hl]                                       ; $5fc7: $56
	xor h                                            ; $5fc8: $ac
	ld l, l                                          ; $5fc9: $6d
	ld sp, $ffde                                     ; $5fca: $31 $de $ff
	sub [hl]                                         ; $5fcd: $96
	sbc e                                            ; $5fce: $9b
	adc e                                            ; $5fcf: $8b
	adc e                                            ; $5fd0: $8b
	dec bc                                           ; $5fd1: $0b
	dec bc                                           ; $5fd2: $0b
	dec de                                           ; $5fd3: $1b
	dec de                                           ; $5fd4: $1b
	db $db                                           ; $5fd5: $db
	pop hl                                           ; $5fd6: $e1
	db $dd                                           ; $5fd7: $dd
	pop af                                           ; $5fd8: $f1
	sbc $e1                                          ; $5fd9: $de $e1
	sub a                                            ; $5fdb: $97
	and a                                            ; $5fdc: $a7
	ld d, a                                          ; $5fdd: $57
	and a                                            ; $5fde: $a7
	ld e, e                                          ; $5fdf: $5b
	or a                                             ; $5fe0: $b7

jr_04e_5fe1:
	ld c, c                                          ; $5fe1: $49
	ld a, [$7455]                                    ; $5fe2: $fa $55 $74
	ld h, c                                          ; $5fe5: $61
	ld a, [hl]                                       ; $5fe6: $7e
	ld a, e                                          ; $5fe7: $7b
	adc b                                            ; $5fe8: $88
	rst AddAOntoHL                                          ; $5fe9: $ef
	db $eb                                           ; $5fea: $eb
	nop                                              ; $5feb: $00
	ld [hl], c                                       ; $5fec: $71
	ld hl, sp+$1c                                    ; $5fed: $f8 $1c
	rrca                                             ; $5fef: $0f
	inc c                                            ; $5ff0: $0c
	add a                                            ; $5ff1: $87
	ret nc                                           ; $5ff2: $d0

	ld bc, $0000                                     ; $5ff3: $01 $00 $00
	ldh [$f0], a                                     ; $5ff6: $e0 $f0
	di                                               ; $5ff8: $f3
	ld a, b                                          ; $5ff9: $78
	rst $38                                          ; $5ffa: $ff
	ld a, a                                          ; $5ffb: $7f
	cp e                                             ; $5ffc: $bb
	ld a, a                                          ; $5ffd: $7f
	dec e                                            ; $5ffe: $1d
	cp a                                             ; $5fff: $bf
	ld a, c                                          ; $6000: $79
	add e                                            ; $6001: $83
	sbc e                                            ; $6002: $9b
	ldh a, [$fc]                                     ; $6003: $f0 $fc
	ld hl, sp-$02                                    ; $6005: $f8 $fe
	sbc $1f                                          ; $6007: $de $1f
	sub d                                            ; $6009: $92
	rrca                                             ; $600a: $0f
	dec [hl]                                         ; $600b: $35
	pop af                                           ; $600c: $f1
	pop af                                           ; $600d: $f1
	ld hl, $f9f9                                     ; $600e: $21 $f9 $f9
	rst $38                                          ; $6011: $ff
	rst $38                                          ; $6012: $ff
	ld hl, sp+$0c                                    ; $6013: $f8 $0c
	inc c                                            ; $6015: $0c
	call c, $fcdd                                    ; $6016: $dc $dd $fc
	add b                                            ; $6019: $80
	and h                                            ; $601a: $a4
	dec b                                            ; $601b: $05
	adc e                                            ; $601c: $8b
	rla                                              ; $601d: $17
	xor l                                            ; $601e: $ad
	sub b                                            ; $601f: $90
	ld b, b                                          ; $6020: $40
	add b                                            ; $6021: $80
	ld a, a                                          ; $6022: $7f
	cp $7c                                           ; $6023: $fe $7c
	ld hl, sp+$72                                    ; $6025: $f8 $72
	ld l, a                                          ; $6027: $6f
	ccf                                              ; $6028: $3f
	ld a, a                                          ; $6029: $7f
	xor l                                            ; $602a: $ad
	sub $ab                                          ; $602b: $d6 $ab
	pop af                                           ; $602d: $f1
	ld a, l                                          ; $602e: $7d
	cp [hl]                                          ; $602f: $be
	ld a, a                                          ; $6030: $7f
	xor a                                            ; $6031: $af
	ld bc, $0201                                     ; $6032: $01 $01 $02
	ld bc, $4080                                     ; $6035: $01 $80 $40
	add b                                            ; $6038: $80
	sbc b                                            ; $6039: $98
	ld d, b                                          ; $603a: $50
	sub b                                            ; $603b: $90
	xor [hl]                                         ; $603c: $ae
	ld [hl], l                                       ; $603d: $75
	nop                                              ; $603e: $00
	push de                                          ; $603f: $d5
	rst AddAOntoHL                                          ; $6040: $ef
	ld a, c                                          ; $6041: $79
	jr z, jr_04e_5fe1                                ; $6042: $28 $9d

	pop bc                                           ; $6044: $c1
	ld a, [$e47a]                                    ; $6045: $fa $7a $e4
	rst $38                                          ; $6048: $ff
	adc a                                            ; $6049: $8f
	ld a, d                                          ; $604a: $7a
	dec b                                            ; $604b: $05
	ld a, [$38d1]                                    ; $604c: $fa $d1 $38
	db $f4                                           ; $604f: $f4
	ei                                               ; $6050: $fb
	db $fc                                           ; $6051: $fc
	rst $38                                          ; $6052: $ff
	rst $38                                          ; $6053: $ff
	rlca                                             ; $6054: $07
	rlca                                             ; $6055: $07
	add $e3                                          ; $6056: $c6 $e3
	nop                                              ; $6058: $00
	nop                                              ; $6059: $00
	ld a, e                                          ; $605a: $7b
	ld h, b                                          ; $605b: $60
	sbc [hl]                                         ; $605c: $9e
	ld d, e                                          ; $605d: $53
	sbc $fb                                          ; $605e: $de $fb
	halt                                             ; $6060: $76
	sbc e                                            ; $6061: $9b
	ld a, e                                          ; $6062: $7b
	xor $df                                          ; $6063: $ee $df
	rlca                                             ; $6065: $07
	sbc b                                            ; $6066: $98
	dec a                                            ; $6067: $3d
	ld a, a                                          ; $6068: $7f
	ld a, b                                          ; $6069: $78
	dec l                                            ; $606a: $2d
	cp $fc                                           ; $606b: $fe $fc
	db $fd                                           ; $606d: $fd
	ld a, d                                          ; $606e: $7a
	ld d, h                                          ; $606f: $54
	sbc $fc                                          ; $6070: $de $fc
	ld a, d                                          ; $6072: $7a
	dec c                                            ; $6073: $0d
	adc a                                            ; $6074: $8f
	sbc b                                            ; $6075: $98
	ld a, h                                          ; $6076: $7c
	db $ec                                           ; $6077: $ec
	call c, $e0e8                                    ; $6078: $dc $e8 $e0
	call c, $ff34                                    ; $607b: $dc $34 $ff
	rst AddAOntoHL                                          ; $607e: $ef
	ld c, a                                          ; $607f: $4f
	rrca                                             ; $6080: $0f
	rla                                              ; $6081: $17
	rra                                              ; $6082: $1f
	ccf                                              ; $6083: $3f
	rst GetHLinHL                                          ; $6084: $cf
	ld sp, hl                                        ; $6085: $f9
	reti                                             ; $6086: $d9


	rst $38                                          ; $6087: $ff
	ld a, h                                          ; $6088: $7c
	ld b, a                                          ; $6089: $47
	sbc $01                                          ; $608a: $de $01
	ld e, e                                          ; $608c: $5b
	ldh a, [$97]                                     ; $608d: $f0 $97
	sub l                                            ; $608f: $95
	xor d                                            ; $6090: $aa

jr_04e_6091:
	push de                                          ; $6091: $d5
	jr nc, jr_04e_6091                               ; $6092: $30 $fd

	cp $de                                           ; $6094: $fe $de
	ld l, h                                          ; $6096: $6c
	sbc $7f                                          ; $6097: $de $7f
	add b                                            ; $6099: $80
	rst GetHLinHL                                          ; $609a: $cf
	add b                                            ; $609b: $80
	add c                                            ; $609c: $81
	pop hl                                           ; $609d: $e1
	di                                               ; $609e: $f3

Jump_04e_609f:
	ld a, b                                          ; $609f: $78
	ld a, a                                          ; $60a0: $7f
	ccf                                              ; $60a1: $3f
	inc de                                           ; $60a2: $13
	ld l, a                                          ; $60a3: $6f
	rst SubAFromDE                                          ; $60a4: $df
	ld a, [hl]                                       ; $60a5: $7e
	db $fc                                           ; $60a6: $fc
	add b                                            ; $60a7: $80
	add b                                            ; $60a8: $80
	ret nz                                           ; $60a9: $c0

	ldh [$c0], a                                     ; $60aa: $e0 $c0
	add b                                            ; $60ac: $80
	add c                                            ; $60ad: $81
	inc bc                                           ; $60ae: $03
	ld d, a                                          ; $60af: $57
	jr nc, jr_04e_60f1                               ; $60b0: $30 $3f

	ei                                               ; $60b2: $fb
	push hl                                          ; $60b3: $e5
	rlca                                             ; $60b4: $07
	dec b                                            ; $60b5: $05
	dec b                                            ; $60b6: $05
	ld hl, sp-$31                                    ; $60b7: $f8 $cf
	rst SubAFromDE                                          ; $60b9: $df
	rlca                                             ; $60ba: $07
	sbc d                                            ; $60bb: $9a
	dec de                                           ; $60bc: $1b
	ld sp, hl                                        ; $60bd: $f9
	ei                                               ; $60be: $fb
	ei                                               ; $60bf: $fb
	ld [hl], b                                       ; $60c0: $70
	ld l, b                                          ; $60c1: $68
	ld h, $9e                                        ; $60c2: $26 $9e
	adc a                                            ; $60c4: $8f
	jp c, Jump_04e_7eff                              ; $60c5: $da $ff $7e

	add $6e                                          ; $60c8: $c6 $6e
	push bc                                          ; $60ca: $c5
	sbc [hl]                                         ; $60cb: $9e
	di                                               ; $60cc: $f3
	ld [hl], h                                       ; $60cd: $74
	sub c                                            ; $60ce: $91
	sbc $ff                                          ; $60cf: $de $ff
	ld a, h                                          ; $60d1: $7c
	cp c                                             ; $60d2: $b9
	sbc c                                            ; $60d3: $99
	rst $38                                          ; $60d4: $ff
	db $f4                                           ; $60d5: $f4
	db $fc                                           ; $60d6: $fc
	cp $fa                                           ; $60d7: $fe $fa
	ld hl, sp-$22                                    ; $60d9: $f8 $de
	ldh a, [$df]                                     ; $60db: $f0 $df
	ei                                               ; $60dd: $fb
	add b                                            ; $60de: $80
	ld sp, hl                                        ; $60df: $f9
	db $fd                                           ; $60e0: $fd
	rst $38                                          ; $60e1: $ff
	xor e                                            ; $60e2: $ab
	db $db                                           ; $60e3: $db
	di                                               ; $60e4: $f3
	cp $57                                           ; $60e5: $fe $57
	ld e, e                                          ; $60e7: $5b
	ld [bc], a                                       ; $60e8: $02
	ld c, $71                                        ; $60e9: $0e $71
	ld sp, $031b                                     ; $60eb: $31 $1b $03
	and h                                            ; $60ee: $a4
	and h                                            ; $60ef: $a4
	db $fc                                           ; $60f0: $fc

jr_04e_60f1:
	ldh a, [$de]                                     ; $60f1: $f0 $de
	reti                                             ; $60f3: $d9


	sub $ba                                          ; $60f4: $d6 $ba
	add [hl]                                         ; $60f6: $86
	ld [bc], a                                       ; $60f7: $02
	ld d, d                                          ; $60f8: $52
	call z, $e7e3                                    ; $60f9: $cc $e3 $e7
	rst AddAOntoHL                                          ; $60fc: $ef
	rst JumpTable                                          ; $60fd: $c7
	add b                                            ; $60fe: $80
	inc bc                                           ; $60ff: $03
	rlca                                             ; $6100: $07
	rlca                                             ; $6101: $07
	ld b, a                                          ; $6102: $47
	or h                                             ; $6103: $b4
	cp l                                             ; $6104: $bd
	rst SubAFromDE                                          ; $6105: $df
	db $e4                                           ; $6106: $e4
	ld l, e                                          ; $6107: $6b
	jr z, @+$41                                      ; $6108: $28 $3f

	inc de                                           ; $610a: $13
	ld a, a                                          ; $610b: $7f
	ld e, $0e                                        ; $610c: $1e $0e
	rrca                                             ; $610e: $0f
	add h                                            ; $610f: $84
	rst JumpTable                                          ; $6110: $c7
	rst JumpTable                                          ; $6111: $c7
	rst SubAFromBC                                          ; $6112: $e7
	rst $38                                          ; $6113: $ff
	ei                                               ; $6114: $fb
	ld [$877a], a                                    ; $6115: $ea $7a $87
	sbc a                                            ; $6118: $9f
	rst GetHLinHL                                          ; $6119: $cf
	rst AddAOntoHL                                          ; $611a: $ef
	rlca                                             ; $611b: $07
	rlca                                             ; $611c: $07
	dec e                                            ; $611d: $1d
	sbc [hl]                                         ; $611e: $9e
	rst SubAFromBC                                          ; $611f: $e7
	halt                                             ; $6120: $76
	ld a, e                                          ; $6121: $7b
	rst SubAFromDE                                          ; $6122: $df
	ld hl, sp-$63                                    ; $6123: $f8 $9d
	db $10                                           ; $6125: $10
	ld h, b                                          ; $6126: $60
	db $dd                                           ; $6127: $dd
	ldh a, [$9a]                                     ; $6128: $f0 $9a
	db $fc                                           ; $612a: $fc
	ld sp, hl                                        ; $612b: $f9
	ld sp, hl                                        ; $612c: $f9
	sbc c                                            ; $612d: $99
	ld sp, hl                                        ; $612e: $f9
	ld a, d                                          ; $612f: $7a
	dec de                                           ; $6130: $1b
	ld [hl], h                                       ; $6131: $74
	ldh [$fd], a                                     ; $6132: $e0 $fd
	ld h, [hl]                                       ; $6134: $66
	ld e, a                                          ; $6135: $5f
	sbc e                                            ; $6136: $9b
	ld d, l                                          ; $6137: $55
	ld a, [hl+]                                      ; $6138: $2a
	dec d                                            ; $6139: $15
	ld [bc], a                                       ; $613a: $02
	db $fd                                           ; $613b: $fd
	ld a, a                                          ; $613c: $7f
	add hl, sp                                       ; $613d: $39
	sbc [hl]                                         ; $613e: $9e
	ld [$9c65], a                                    ; $613f: $ea $65 $9c
	halt                                             ; $6142: $76
	ret                                              ; $6143: $c9


	db $fd                                           ; $6144: $fd
	ld a, [hl]                                       ; $6145: $7e
	sub $6b                                          ; $6146: $d6 $6b
	ldh a, [$7d]                                     ; $6148: $f0 $7d
	rrca                                             ; $614a: $0f
	sbc l                                            ; $614b: $9d
	dec b                                            ; $614c: $05
	ld a, [bc]                                       ; $614d: $0a
	ld [hl], a                                       ; $614e: $77
	ldh a, [$79]                                     ; $614f: $f0 $79
	and b                                            ; $6151: $a0
	add b                                            ; $6152: $80
	db $fd                                           ; $6153: $fd
	rst JumpTable                                          ; $6154: $c7
	ret                                              ; $6155: $c9


	ret nc                                           ; $6156: $d0

	and [hl]                                         ; $6157: $a6
	xor $ae                                          ; $6158: $ee $ae
	cpl                                              ; $615a: $2f
	cpl                                              ; $615b: $2f
	add hl, bc                                       ; $615c: $09
	nop                                              ; $615d: $00
	ld [$1818], sp                                   ; $615e: $08 $18 $18
	ld e, b                                          ; $6161: $58
	ret c                                            ; $6162: $d8

	ret c                                            ; $6163: $d8

	cp $ff                                           ; $6164: $fe $ff
	ld a, c                                          ; $6166: $79
	pop af                                           ; $6167: $f1
	nop                                              ; $6168: $00
	ld b, $8e                                        ; $6169: $06 $8e
	call z, $fcff                                    ; $616b: $cc $ff $fc
	ldh a, [$60]                                     ; $616e: $f0 $60
	ld h, c                                          ; $6170: $61
	ld c, c                                          ; $6171: $49
	sub h                                            ; $6172: $94
	ld c, l                                          ; $6173: $4d
	ld b, a                                          ; $6174: $47
	ld [hl], h                                       ; $6175: $74
	call z, $9828                                    ; $6176: $cc $28 $98
	ret c                                            ; $6179: $d8

	ld e, b                                          ; $617a: $58
	ld e, b                                          ; $617b: $58
	ld e, h                                          ; $617c: $5c
	adc a                                            ; $617d: $8f
	ld [hl], d                                       ; $617e: $72
	sbc [hl]                                         ; $617f: $9e
	ld l, b                                          ; $6180: $68
	jr nc, jr_04e_61dd                               ; $6181: $30 $5a

	ret nc                                           ; $6183: $d0

	ld b, a                                          ; $6184: $47
	ldh a, [hDisp1_BGP]                                     ; $6185: $f0 $92
	inc sp                                           ; $6187: $33
	inc e                                            ; $6188: $1c
	add hl, bc                                       ; $6189: $09
	inc c                                            ; $618a: $0c
	ld b, $07                                        ; $618b: $06 $07
	ld [bc], a                                       ; $618d: $02
	ld bc, $f3ee                                     ; $618e: $01 $ee $f3
	ld hl, sp-$08                                    ; $6191: $f8 $f8
	db $fc                                           ; $6193: $fc
	ld a, b                                          ; $6194: $78
	adc [hl]                                         ; $6195: $8e
	sbc l                                            ; $6196: $9d
	ld hl, sp+$70                                    ; $6197: $f8 $70
	db $dd                                           ; $6199: $dd
	add b                                            ; $619a: $80
	rst SubAFromDE                                          ; $619b: $df
	add c                                            ; $619c: $81
	sbc l                                            ; $619d: $9d
	rlca                                             ; $619e: $07
	adc a                                            ; $619f: $8f
	call c, $977f                                    ; $61a0: $dc $7f $97
	ld a, [hl]                                       ; $61a3: $7e
	dec bc                                           ; $61a4: $0b
	ld [bc], a                                       ; $61a5: $02
	ld b, $07                                        ; $61a6: $06 $07
	dec c                                            ; $61a8: $0d
	dec c                                            ; $61a9: $0d
	sbc e                                            ; $61aa: $9b
	ld a, c                                          ; $61ab: $79
	sub l                                            ; $61ac: $95
	call c, Call_04e_61ff                            ; $61ad: $dc $ff $61
	xor b                                            ; $61b0: $a8
	ret                                              ; $61b1: $c9


	rst $38                                          ; $61b2: $ff
	rst SubAFromDE                                          ; $61b3: $df
	ld hl, sp-$21                                    ; $61b4: $f8 $df
	db $fd                                           ; $61b6: $fd
	push de                                          ; $61b7: $d5
	rst $38                                          ; $61b8: $ff
	sub a                                            ; $61b9: $97
	jr jr_04e_61ec                                   ; $61ba: $18 $30

	ld [hl], c                                       ; $61bc: $71
	ld sp, hl                                        ; $61bd: $f9
	ldh a, [$fe]                                     ; $61be: $f0 $fe
	ld a, a                                          ; $61c0: $7f
	jr nz, jr_04e_623d                               ; $61c1: $20 $7a

	ld [hl], e                                       ; $61c3: $73
	sbc l                                            ; $61c4: $9d
	ld [bc], a                                       ; $61c5: $02
	add hl, bc                                       ; $61c6: $09
	ld a, d                                          ; $61c7: $7a
	ld b, a                                          ; $61c8: $47
	sub a                                            ; $61c9: $97
	and $65                                          ; $61ca: $e6 $65
	ld a, b                                          ; $61cc: $78
	ld l, l                                          ; $61cd: $6d
	ld a, [hl-]                                      ; $61ce: $3a
	dec d                                            ; $61cf: $15
	ldh [$3f], a                                     ; $61d0: $e0 $3f
	sbc $0f                                          ; $61d2: $de $0f
	rst SubAFromDE                                          ; $61d4: $df
	rra                                              ; $61d5: $1f
	ld a, c                                          ; $61d6: $79
	nop                                              ; $61d7: $00
	ld d, h                                          ; $61d8: $54
	nop                                              ; $61d9: $00
	push de                                          ; $61da: $d5
	inc sp                                           ; $61db: $33
	sbc h                                            ; $61dc: $9c

jr_04e_61dd:
	ld [hl], e                                       ; $61dd: $73
	inc sp                                           ; $61de: $33
	scf                                              ; $61df: $37
	db $db                                           ; $61e0: $db
	inc sp                                           ; $61e1: $33
	add a                                            ; $61e2: $87
	ld h, [hl]                                       ; $61e3: $66
	ld h, e                                          ; $61e4: $63
	inc sp                                           ; $61e5: $33
	ld h, h                                          ; $61e6: $64
	ld h, e                                          ; $61e7: $63
	inc sp                                           ; $61e8: $33
	ld [hl], $63                                     ; $61e9: $36 $63
	inc sp                                           ; $61eb: $33

jr_04e_61ec:
	dec [hl]                                         ; $61ec: $35
	ld d, l                                          ; $61ed: $55
	ld d, l                                          ; $61ee: $55
	ld d, h                                          ; $61ef: $54
	ld b, h                                          ; $61f0: $44
	ld b, e                                          ; $61f1: $43
	inc sp                                           ; $61f2: $33
	ld d, l                                          ; $61f3: $55
	ld d, l                                          ; $61f4: $55
	ld d, e                                          ; $61f5: $53
	ld [hl], $33                                     ; $61f6: $36 $33
	ld h, h                                          ; $61f8: $64
	inc [hl]                                         ; $61f9: $34
	ld b, e                                          ; $61fa: $43
	call c, $9c33                                    ; $61fb: $dc $33 $9c
	ld b, h                                          ; $61fe: $44

Call_04e_61ff:
	inc sp                                           ; $61ff: $33
	ld b, [hl]                                       ; $6200: $46
	sbc $33                                          ; $6201: $de $33
	sbc l                                            ; $6203: $9d
	ld d, [hl]                                       ; $6204: $56
	ld h, e                                          ; $6205: $63
	ld a, e                                          ; $6206: $7b
	or $dc                                           ; $6207: $f6 $dc
	ld b, h                                          ; $6209: $44
	adc a                                            ; $620a: $8f
	ld d, h                                          ; $620b: $54
	ld h, h                                          ; $620c: $64
	ld d, h                                          ; $620d: $54
	ld b, h                                          ; $620e: $44
	ld b, h                                          ; $620f: $44
	ld b, e                                          ; $6210: $43
	ld b, l                                          ; $6211: $45
	ld d, l                                          ; $6212: $55
	ld b, h                                          ; $6213: $44
	ld d, l                                          ; $6214: $55
	ld b, h                                          ; $6215: $44
	ld h, h                                          ; $6216: $64
	ld d, l                                          ; $6217: $55
	ld d, h                                          ; $6218: $54
	ld d, l                                          ; $6219: $55
	ld d, e                                          ; $621a: $53
	ld a, e                                          ; $621b: $7b
	call z, Call_04e_55db                            ; $621c: $cc $db $55
	sbc [hl]                                         ; $621f: $9e
	ld d, e                                          ; $6220: $53
	ld [hl], a                                       ; $6221: $77
	pop bc                                           ; $6222: $c1
	sbc $55                                          ; $6223: $de $55
	sbc l                                            ; $6225: $9d
	ld d, [hl]                                       ; $6226: $56
	ld d, l                                          ; $6227: $55
	ld a, e                                          ; $6228: $7b
	call nc, $f66f                                   ; $6229: $d4 $6f $f6
	db $d3                                           ; $622c: $d3
	adc c                                            ; $622d: $89
	sbc e                                            ; $622e: $9b
	ld b, b                                          ; $622f: $40
	add b                                            ; $6230: $80
	ld b, b                                          ; $6231: $40
	and b                                            ; $6232: $a0
	ld [hl], a                                       ; $6233: $77
	cp $d9                                           ; $6234: $fe $d9
	rst $38                                          ; $6236: $ff
	adc l                                            ; $6237: $8d
	dec d                                            ; $6238: $15
	dec bc                                           ; $6239: $0b
	dec d                                            ; $623a: $15
	dec hl                                           ; $623b: $2b
	dec d                                            ; $623c: $15

jr_04e_623d:
	dec bc                                           ; $623d: $0b
	rla                                              ; $623e: $17
	dec bc                                           ; $623f: $0b
	ld [$eaf4], a                                    ; $6240: $ea $f4 $ea
	call nc, $f4ea                                   ; $6243: $d4 $ea $f4
	add sp, -$0c                                     ; $6246: $e8 $f4
	cp $ff                                           ; $6248: $fe $ff
	ld l, a                                          ; $624a: $6f
	cp $f9                                           ; $624b: $fe $f9
	sbc l                                            ; $624d: $9d
	and b                                            ; $624e: $a0
	ld d, b                                          ; $624f: $50
	ld [hl], e                                       ; $6250: $73
	cp $9e                                           ; $6251: $fe $9e
	ld b, b                                          ; $6253: $40
	ld sp, hl                                        ; $6254: $f9
	rst SubAFromDE                                          ; $6255: $df
	ldh [$99], a                                     ; $6256: $e0 $99
	ret nz                                           ; $6258: $c0

	xor c                                            ; $6259: $a9
	ret nz                                           ; $625a: $c0

	push de                                          ; $625b: $d5
	push bc                                          ; $625c: $c5
	ld l, c                                          ; $625d: $69
	cp $92                                           ; $625e: $fe $92
	db $10                                           ; $6260: $10
	jr jr_04e_626b                                   ; $6261: $18 $08

	ld [$0004], sp                                   ; $6263: $08 $04 $00
	nop                                              ; $6266: $00
	ld d, h                                          ; $6267: $54
	ld [$8ca3], a                                    ; $6268: $ea $a3 $8c

jr_04e_626b:
	add e                                            ; $626b: $83
	db $fc                                           ; $626c: $fc
	db $fd                                           ; $626d: $fd
	add b                                            ; $626e: $80
	inc e                                            ; $626f: $1c
	inc sp                                           ; $6270: $33
	inc a                                            ; $6271: $3c
	inc bc                                           ; $6272: $03
	dec a                                            ; $6273: $3d
	ld a, [hl]                                       ; $6274: $7e
	ei                                               ; $6275: $fb
	ld e, $85                                        ; $6276: $1e $85
	inc bc                                           ; $6278: $03
	db $f4                                           ; $6279: $f4
	ld [$0102], sp                                   ; $627a: $08 $02 $01
	inc b                                            ; $627d: $04
	ld bc, $f902                                     ; $627e: $01 $02 $f9
	dec bc                                           ; $6281: $0b
	di                                               ; $6282: $f3
	ld [$41c2], sp                                   ; $6283: $08 $c2 $41
	rst $38                                          ; $6286: $ff
	ld l, a                                          ; $6287: $6f
	and [hl]                                         ; $6288: $a6
	ld d, l                                          ; $6289: $55
	or c                                             ; $628a: $b1
	jr nc, jr_04e_62be                               ; $628b: $30 $31

	sbc [hl]                                         ; $628d: $9e
	add [hl]                                         ; $628e: $86
	nop                                              ; $628f: $00
	add b                                            ; $6290: $80
	ld b, c                                          ; $6291: $41
	and d                                            ; $6292: $a2
	ld b, d                                          ; $6293: $42
	sub d                                            ; $6294: $92
	ld b, l                                          ; $6295: $45
	adc c                                            ; $6296: $89
	add d                                            ; $6297: $82
	inc b                                            ; $6298: $04
	xor h                                            ; $6299: $ac
	ld d, d                                          ; $629a: $52
	or b                                             ; $629b: $b0
	ld h, c                                          ; $629c: $61
	and b                                            ; $629d: $a0
	ld h, h                                          ; $629e: $64
	ld c, h                                          ; $629f: $4c
	sbc d                                            ; $62a0: $9a
	ld [de], a                                       ; $62a1: $12
	inc l                                            ; $62a2: $2c
	ld c, b                                          ; $62a3: $48
	inc e                                            ; $62a4: $1c
	sbc [hl]                                         ; $62a5: $9e
	adc [hl]                                         ; $62a6: $8e
	ld c, a                                          ; $62a7: $4f
	sbc $47                                          ; $62a8: $de $47
	add d                                            ; $62aa: $82
	add e                                            ; $62ab: $83
	inc de                                           ; $62ac: $13
	ld de, $0009                                     ; $62ad: $11 $09 $00
	inc b                                            ; $62b0: $04
	inc b                                            ; $62b1: $04
	ld [bc], a                                       ; $62b2: $02
	nop                                              ; $62b3: $00
	inc c                                            ; $62b4: $0c
	ld [$0f08], sp                                   ; $62b5: $08 $08 $0f
	add a                                            ; $62b8: $87
	nop                                              ; $62b9: $00
	add b                                            ; $62ba: $80
	ret nz                                           ; $62bb: $c0

	ldh a, [$f8]                                     ; $62bc: $f0 $f8

jr_04e_62be:
	ldh a, [$f8]                                     ; $62be: $f0 $f8
	ld a, a                                          ; $62c0: $7f
	rst $38                                          ; $62c1: $ff
	ld a, a                                          ; $62c2: $7f
	ccf                                              ; $62c3: $3f
	ld sp, $1e33                                     ; $62c4: $31 $33 $1e
	add b                                            ; $62c7: $80
	ld a, e                                          ; $62c8: $7b
	ld [hl], e                                       ; $62c9: $73
	sbc [hl]                                         ; $62ca: $9e
	ld a, a                                          ; $62cb: $7f
	ld [hl], e                                       ; $62cc: $73
	add h                                            ; $62cd: $84
	rst SubAFromDE                                          ; $62ce: $df
	rst $38                                          ; $62cf: $ff
	sub l                                            ; $62d0: $95
	cp [hl]                                          ; $62d1: $be
	pop bc                                           ; $62d2: $c1
	add c                                            ; $62d3: $81
	inc bc                                           ; $62d4: $03
	inc bc                                           ; $62d5: $03
	rst JumpTable                                          ; $62d6: $c7
	ld a, a                                          ; $62d7: $7f
	db $fc                                           ; $62d8: $fc
	ret nz                                           ; $62d9: $c0

	nop                                              ; $62da: $00
	sbc $01                                          ; $62db: $de $01
	sub e                                            ; $62dd: $93
	inc bc                                           ; $62de: $03
	add [hl]                                         ; $62df: $86
	ld h, b                                          ; $62e0: $60
	nop                                              ; $62e1: $00
	or b                                             ; $62e2: $b0
	ld h, c                                          ; $62e3: $61
	ret nz                                           ; $62e4: $c0

	add c                                            ; $62e5: $81
	inc e                                            ; $62e6: $1c
	ret nz                                           ; $62e7: $c0

	rrca                                             ; $62e8: $0f
	ld a, a                                          ; $62e9: $7f
	ld [hl], a                                       ; $62ea: $77
	ld c, e                                          ; $62eb: $4b
	adc b                                            ; $62ec: $88
	ldh [rP1], a                                     ; $62ed: $e0 $00
	nop                                              ; $62ef: $00
	rra                                              ; $62f0: $1f
	add e                                            ; $62f1: $83
	adc a                                            ; $62f2: $8f
	cp $e0                                           ; $62f3: $fe $e0
	inc bc                                           ; $62f5: $03
	ccf                                              ; $62f6: $3f
	rst $38                                          ; $62f7: $ff
	rst $38                                          ; $62f8: $ff
	ld bc, $1006                                     ; $62f9: $01 $06 $10
	nop                                              ; $62fc: $00
	nop                                              ; $62fd: $00
	rlca                                             ; $62fe: $07
	ld a, a                                          ; $62ff: $7f
	rst $38                                          ; $6300: $ff
	db $fc                                           ; $6301: $fc
	jp z, Jump_04e_7b17                              ; $6302: $ca $17 $7b

	ldh a, [c]                                       ; $6305: $f2
	rst SubAFromDE                                          ; $6306: $df
	rst $38                                          ; $6307: $ff
	sbc h                                            ; $6308: $9c
	add b                                            ; $6309: $80
	nop                                              ; $630a: $00
	nop                                              ; $630b: $00
	ld [hl], a                                       ; $630c: $77
	jp hl                                            ; $630d: $e9


	sbc [hl]                                         ; $630e: $9e
	rst $38                                          ; $630f: $ff
	ld [hl], e                                       ; $6310: $73
	di                                               ; $6311: $f3
	sbc $ff                                          ; $6312: $de $ff
	ld a, e                                          ; $6314: $7b
	push de                                          ; $6315: $d5
	call c, $97ff                                    ; $6316: $dc $ff $97
	db $eb                                           ; $6319: $eb
	rst FarCall                                          ; $631a: $f7
	db $eb                                           ; $631b: $eb
	or $eb                                           ; $631c: $f6 $eb
	or $e3                                           ; $631e: $f6 $e3
	and $7b                                          ; $6320: $e6 $7b
	daa                                              ; $6322: $27
	sbc $e0                                          ; $6323: $de $e0
	rst SubAFromDE                                          ; $6325: $df
	ldh [c], a                                       ; $6326: $e2
	sub e                                            ; $6327: $93
	db $fd                                           ; $6328: $fd
	ld a, [$be7d]                                    ; $6329: $fa $7d $be
	ld a, a                                          ; $632c: $7f
	xor a                                            ; $632d: $af
	ld e, a                                          ; $632e: $5f
	cp a                                             ; $632f: $bf
	ld [bc], a                                       ; $6330: $02
	dec b                                            ; $6331: $05
	ld [bc], a                                       ; $6332: $02
	ld bc, $8ffd                                     ; $6333: $01 $fd $8f
	ld a, [bc]                                       ; $6336: $0a
	add l                                            ; $6337: $85
	ld b, d                                          ; $6338: $42
	and c                                            ; $6339: $a1
	ld d, d                                          ; $633a: $52
	and c                                            ; $633b: $a1
	ld d, b                                          ; $633c: $50
	xor b                                            ; $633d: $a8
	rst $38                                          ; $633e: $ff
	ld a, a                                          ; $633f: $7f
	cp a                                             ; $6340: $bf
	ld e, a                                          ; $6341: $5f
	xor a                                            ; $6342: $af
	ld e, a                                          ; $6343: $5f
	xor a                                            ; $6344: $af
	ld d, a                                          ; $6345: $57
	ld l, [hl]                                       ; $6346: $6e
	jp nz, $c05e                                     ; $6347: $c2 $5e $c0

	sbc l                                            ; $634a: $9d
	rla                                              ; $634b: $17
	dec hl                                           ; $634c: $2b
	ld l, a                                          ; $634d: $6f
	cp $9d                                           ; $634e: $fe $9d
	add sp, -$2c                                     ; $6350: $e8 $d4
	ld l, a                                          ; $6352: $6f
	cp $7f                                           ; $6353: $fe $7f
	adc a                                            ; $6355: $8f
	sbc c                                            ; $6356: $99
	ldh a, [$e8]                                     ; $6357: $f0 $e8
	call nc, Call_04e_54a8                           ; $6359: $d4 $a8 $54
	xor d                                            ; $635c: $aa
	ld sp, hl                                        ; $635d: $f9
	add b                                            ; $635e: $80
	pop bc                                           ; $635f: $c1
	db $10                                           ; $6360: $10
	and [hl]                                         ; $6361: $a6
	jp nc, $0109                                     ; $6362: $d2 $09 $01

	add c                                            ; $6365: $81
	pop bc                                           ; $6366: $c1
	inc a                                            ; $6367: $3c
	daa                                              ; $6368: $27
	db $10                                           ; $6369: $10
	ld hl, $fac2                                     ; $636a: $21 $c2 $fa
	ld a, d                                          ; $636d: $7a
	ld a, [de]                                       ; $636e: $1a
	ld bc, $8584                                     ; $636f: $01 $84 $85
	ld a, [bc]                                       ; $6372: $0a
	ld [hl-], a                                      ; $6373: $32
	inc [hl]                                         ; $6374: $34
	ld b, $24                                        ; $6375: $06 $24
	and $32                                          ; $6377: $e6 $32
	ld [de], a                                       ; $6379: $12
	ret nc                                           ; $637a: $d0

	ld c, b                                          ; $637b: $48
	ld c, b                                          ; $637c: $48
	ld l, b                                          ; $637d: $68
	add b                                            ; $637e: $80
	ld c, b                                          ; $637f: $48
	nop                                              ; $6380: $00
	pop de                                           ; $6381: $d1
	ld b, b                                          ; $6382: $40
	rrca                                             ; $6383: $0f
	db $fd                                           ; $6384: $fd
	rst $38                                          ; $6385: $ff
	ret nz                                           ; $6386: $c0

	ldh a, [$7f]                                     ; $6387: $f0 $7f
	ld h, b                                          ; $6389: $60
	ccf                                              ; $638a: $3f
	nop                                              ; $638b: $00
	nop                                              ; $638c: $00
	ld bc, $213e                                     ; $638d: $01 $3e $21
	ccf                                              ; $6390: $3f
	adc $81                                          ; $6391: $ce $81
	nop                                              ; $6393: $00
	dec h                                            ; $6394: $25
	inc [hl]                                         ; $6395: $34
	ret                                              ; $6396: $c9


	ld b, h                                          ; $6397: $44
	jp nz, $1e33                                     ; $6398: $c2 $33 $1e

	rst SubAFromHL                                          ; $639b: $d7
	sub [hl]                                         ; $639c: $96
	and a                                            ; $639d: $a7
	sbc b                                            ; $639e: $98
	ld h, [hl]                                       ; $639f: $66
	adc a                                            ; $63a0: $8f
	and c                                            ; $63a1: $a1
	ld e, b                                          ; $63a2: $58
	cp b                                             ; $63a3: $b8
	ld a, h                                          ; $63a4: $7c
	cp h                                             ; $63a5: $bc
	ld a, e                                          ; $63a6: $7b
	ld [hl+], a                                      ; $63a7: $22
	ld sp, hl                                        ; $63a8: $f9
	sub a                                            ; $63a9: $97
	adc e                                            ; $63aa: $8b
	inc b                                            ; $63ab: $04
	nop                                              ; $63ac: $00
	rrca                                             ; $63ad: $0f
	ld a, a                                          ; $63ae: $7f
	cp $c8                                           ; $63af: $fe $c8
	inc bc                                           ; $63b1: $03
	cp $9d                                           ; $63b2: $fe $9d
	ld bc, $7b0c                                     ; $63b4: $01 $0c $7b
	rrca                                             ; $63b7: $0f
	sbc h                                            ; $63b8: $9c
	inc bc                                           ; $63b9: $03
	ld e, $7e                                        ; $63ba: $1e $7e
	ld a, e                                          ; $63bc: $7b
	rrca                                             ; $63bd: $0f
	ld a, a                                          ; $63be: $7f
	rst SubAFromDE                                          ; $63bf: $df
	sbc e                                            ; $63c0: $9b
	ld bc, $3907                                     ; $63c1: $01 $07 $39
	sub b                                            ; $63c4: $90
	ld [hl], a                                       ; $63c5: $77
	inc l                                            ; $63c6: $2c
	sbc h                                            ; $63c7: $9c
	adc a                                            ; $63c8: $8f
	ccf                                              ; $63c9: $3f
	jr nc, jr_04e_6447                               ; $63ca: $30 $7b

	ldh a, [c]                                       ; $63cc: $f2
	rst SubAFromDE                                          ; $63cd: $df
	rst $38                                          ; $63ce: $ff
	sbc d                                            ; $63cf: $9a
	ld [hl], a                                       ; $63d0: $77
	ld hl, sp-$40                                    ; $63d1: $f8 $c0
	nop                                              ; $63d3: $00
	rlca                                             ; $63d4: $07
	sbc $ff                                          ; $63d5: $de $ff
	sbc l                                            ; $63d7: $9d
	ld hl, sp+$07                                    ; $63d8: $f8 $07
	ld l, a                                          ; $63da: $6f
	ld c, $7f                                        ; $63db: $0e $7f
	ldh a, [c]                                       ; $63dd: $f2
	ld [hl], e                                       ; $63de: $73
	jp hl                                            ; $63df: $e9


	sbc l                                            ; $63e0: $9d
	rst $38                                          ; $63e1: $ff
	rrca                                             ; $63e2: $0f
	jp c, $9eff                                      ; $63e3: $da $ff $9e

	ld bc, $016f                                     ; $63e6: $01 $6f $01
	sbc [hl]                                         ; $63e9: $9e
	ldh a, [$da]                                     ; $63ea: $f0 $da
	rst $38                                          ; $63ec: $ff
	sbc [hl]                                         ; $63ed: $9e
	ei                                               ; $63ee: $fb
	call c, Call_04e_7eff                            ; $63ef: $dc $ff $7e
	ld a, [hl-]                                      ; $63f2: $3a
	sbc [hl]                                         ; $63f3: $9e
	ld b, $db                                        ; $63f4: $06 $db
	rst $38                                          ; $63f6: $ff
	sbc l                                            ; $63f7: $9d
	ld [$ded5], a                                    ; $63f8: $ea $d5 $de
	rst $38                                          ; $63fb: $ff
	halt                                             ; $63fc: $76
	or b                                             ; $63fd: $b0
	sbc [hl]                                         ; $63fe: $9e
	nop                                              ; $63ff: $00
	jp c, $9eff                                      ; $6400: $da $ff $9e

	ld e, a                                          ; $6403: $5f
	ld a, e                                          ; $6404: $7b
	or [hl]                                          ; $6405: $b6
	db $fc                                           ; $6406: $fc
	reti                                             ; $6407: $d9


	rst $38                                          ; $6408: $ff
	sbc [hl]                                         ; $6409: $9e
	cp h                                             ; $640a: $bc
	ld a, d                                          ; $640b: $7a
	xor a                                            ; $640c: $af
	db $fd                                           ; $640d: $fd
	db $dd                                           ; $640e: $dd
	jp $c29b                                         ; $640f: $c3 $9b $c2


	ret nz                                           ; $6412: $c0

	jp $dcf7                                         ; $6413: $c3 $f7 $dc


	ld [hl+], a                                      ; $6416: $22
	rst SubAFromDE                                          ; $6417: $df
	jr nz, @-$65                                     ; $6418: $20 $99

	inc hl                                           ; $641a: $23
	ld e, a                                          ; $641b: $5f
	cp a                                             ; $641c: $bf
	ld a, [hl]                                       ; $641d: $7e
	pop hl                                           ; $641e: $e1
	inc bc                                           ; $641f: $03
	ld a, e                                          ; $6420: $7b
	and h                                            ; $6421: $a4
	db $fc                                           ; $6422: $fc
	ld a, e                                          ; $6423: $7b
	adc l                                            ; $6424: $8d
	sub h                                            ; $6425: $94
	ret nc                                           ; $6426: $d0

	add sp, -$50                                     ; $6427: $e8 $b0
	ld c, b                                          ; $6429: $48
	or b                                             ; $642a: $b0
	ld e, b                                          ; $642b: $58
	or b                                             ; $642c: $b0
	ld d, b                                          ; $642d: $50
	cpl                                              ; $642e: $2f
	rla                                              ; $642f: $17
	rrca                                             ; $6430: $0f
	ld a, e                                          ; $6431: $7b
	cp $df                                           ; $6432: $fe $df
	rra                                              ; $6434: $1f
	ld [hl], d                                       ; $6435: $72
	jp nz, Jump_04e_7c7d                             ; $6436: $c2 $7d $7c

	ld a, [hl]                                       ; $6439: $7e
	inc l                                            ; $643a: $2c
	ld h, [hl]                                       ; $643b: $66
	ret nz                                           ; $643c: $c0

	sbc h                                            ; $643d: $9c
	ld a, [bc]                                       ; $643e: $0a
	rla                                              ; $643f: $17
	dec bc                                           ; $6440: $0b
	ld a, d                                          ; $6441: $7a
	ret nz                                           ; $6442: $c0

	sbc l                                            ; $6443: $9d
	dec bc                                           ; $6444: $0b
	add sp, $79                                      ; $6445: $e8 $79

jr_04e_6447:
	add h                                            ; $6447: $84
	ld a, d                                          ; $6448: $7a
	ret nz                                           ; $6449: $c0

	sbc h                                            ; $644a: $9c
	db $f4                                           ; $644b: $f4
	ld d, l                                          ; $644c: $55
	xor d                                            ; $644d: $aa
	ld [hl], a                                       ; $644e: $77
	cp $9e                                           ; $644f: $fe $9e
	push af                                          ; $6451: $f5
	ld h, c                                          ; $6452: $61
	add b                                            ; $6453: $80
	add b                                            ; $6454: $80
	push bc                                          ; $6455: $c5
	ret nc                                           ; $6456: $d0

	add d                                            ; $6457: $82
	ld e, h                                          ; $6458: $5c
	ldh a, [rOCPS]                                   ; $6459: $f0 $6a
	xor d                                            ; $645b: $aa
	ld h, b                                          ; $645c: $60
	ld a, [de]                                       ; $645d: $1a
	ld [hl], $3c                                     ; $645e: $36 $3c
	add b                                            ; $6460: $80
	ld bc, $5c87                                     ; $6461: $01 $87 $5c
	add b                                            ; $6464: $80
	ld b, e                                          ; $6465: $43
	ld d, h                                          ; $6466: $54
	sub l                                            ; $6467: $95
	rlca                                             ; $6468: $07
	ld d, a                                          ; $6469: $57
	ld h, b                                          ; $646a: $60
	ld [$98cf], sp                                   ; $646b: $08 $cf $98
	and e                                            ; $646e: $a3
	ld c, [hl]                                       ; $646f: $4e
	ld a, b                                          ; $6470: $78
	ldh [$80], a                                     ; $6471: $e0 $80
	rlca                                             ; $6473: $07
	sbc l                                            ; $6474: $9d
	ccf                                              ; $6475: $3f
	ld a, [hl+]                                      ; $6476: $2a
	ld a, d                                          ; $6477: $7a
	jp $019e                                         ; $6478: $c3 $9e $01


	ld a, e                                          ; $647b: $7b
	dec e                                            ; $647c: $1d
	db $fc                                           ; $647d: $fc
	ld a, e                                          ; $647e: $7b
	inc hl                                           ; $647f: $23
	sbc h                                            ; $6480: $9c
	rrca                                             ; $6481: $0f
	ld [$7380], sp                                   ; $6482: $08 $80 $73
	ld h, $fe                                        ; $6485: $26 $fe
	ld a, d                                          ; $6487: $7a
	ld [bc], a                                       ; $6488: $02
	ld a, d                                          ; $6489: $7a
	ld [$e579], sp                                   ; $648a: $08 $79 $e5
	ld [hl], e                                       ; $648d: $73
	ld bc, $db77                                     ; $648e: $01 $77 $db
	ld a, a                                          ; $6491: $7f
	dec l                                            ; $6492: $2d
	sbc [hl]                                         ; $6493: $9e
	cp a                                             ; $6494: $bf
	ld [hl], e                                       ; $6495: $73
	ldh a, [c]                                       ; $6496: $f2
	ld a, d                                          ; $6497: $7a
	or d                                             ; $6498: $b2
	ld [hl], e                                       ; $6499: $73
	db $db                                           ; $649a: $db
	ld a, a                                          ; $649b: $7f
	call nz, $fb6e                                   ; $649c: $c4 $6e $fb
	sbc h                                            ; $649f: $9c
	nop                                              ; $64a0: $00
	dec b                                            ; $64a1: $05
	ld a, [hl+]                                      ; $64a2: $2a
	db $dd                                           ; $64a3: $dd
	rst $38                                          ; $64a4: $ff
	sbc h                                            ; $64a5: $9c
	rst AddAOntoHL                                          ; $64a6: $ef
	rst $38                                          ; $64a7: $ff
	ld a, [$087b]                                    ; $64a8: $fa $7b $08
	sbc e                                            ; $64ab: $9b
	db $fc                                           ; $64ac: $fc
	add d                                            ; $64ad: $82
	dec d                                            ; $64ae: $15
	xor e                                            ; $64af: $ab
	ld a, e                                          ; $64b0: $7b
	ld de, $ed7e                                     ; $64b1: $11 $7e $ed
	sbc c                                            ; $64b4: $99
	ld a, l                                          ; $64b5: $7d
	ld [$a054], a                                    ; $64b6: $ea $54 $a0

jr_04e_64b9:
	nop                                              ; $64b9: $00
	rst $38                                          ; $64ba: $ff
	ld a, e                                          ; $64bb: $7b
	ldh a, [c]                                       ; $64bc: $f2
	ld a, [hl]                                       ; $64bd: $7e
	sub b                                            ; $64be: $90
	sbc h                                            ; $64bf: $9c
	db $fd                                           ; $64c0: $fd
	or $fe                                           ; $64c1: $f6 $fe
	ld a, e                                          ; $64c3: $7b
	ldh a, [c]                                       ; $64c4: $f2
	ld a, a                                          ; $64c5: $7f
	dec c                                            ; $64c6: $0d
	add b                                            ; $64c7: $80
	inc bc                                           ; $64c8: $03
	inc c                                            ; $64c9: $0c
	ld [hl], a                                       ; $64ca: $77
	xor [hl]                                         ; $64cb: $ae
	db $fd                                           ; $64cc: $fd
	cp [hl]                                          ; $64cd: $be
	ld [hl], e                                       ; $64ce: $73
	rst SubAFromDE                                          ; $64cf: $df
	sbc l                                            ; $64d0: $9d
	jp c, Jump_04e_5988                              ; $64d1: $da $88 $59

	db $10                                           ; $64d4: $10
	ld bc, $0804                                     ; $64d5: $01 $04 $08
	db $10                                           ; $64d8: $10
	jr nz, jr_04e_64b9                               ; $64d9: $20 $de

	ld a, [hl]                                       ; $64db: $7e
	ld h, c                                          ; $64dc: $61
	cp a                                             ; $64dd: $bf
	rst $38                                          ; $64de: $ff
	ld hl, sp+$08                                    ; $64df: $f8 $08
	ld bc, $8170                                     ; $64e1: $01 $70 $81
	ld e, $40                                        ; $64e4: $1e $40
	nop                                              ; $64e6: $00
	add d                                            ; $64e7: $82
	inc b                                            ; $64e8: $04
	add h                                            ; $64e9: $84
	nop                                              ; $64ea: $00
	ld a, [$7adf]                                    ; $64eb: $fa $df $7a
	rst SubAFromHL                                          ; $64ee: $d7
	ld a, [$57ff]                                    ; $64ef: $fa $ff $57
	dec bc                                           ; $64f2: $0b
	nop                                              ; $64f3: $00
	nop                                              ; $64f4: $00
	add b                                            ; $64f5: $80
	ld a, h                                          ; $64f6: $7c
	rlca                                             ; $64f7: $07
	ld bc, $2000                                     ; $64f8: $01 $00 $20
	cp a                                             ; $64fb: $bf
	ldh [$ea], a                                     ; $64fc: $e0 $ea
	ld d, l                                          ; $64fe: $55
	cp d                                             ; $64ff: $ba
	db $dd                                           ; $6500: $dd
	scf                                              ; $6501: $37
	ld a, a                                          ; $6502: $7f
	nop                                              ; $6503: $00
	rra                                              ; $6504: $1f
	db $fd                                           ; $6505: $fd
	ld a, a                                          ; $6506: $7f
	cp [hl]                                          ; $6507: $be
	sbc l                                            ; $6508: $9d
	rst $38                                          ; $6509: $ff
	inc bc                                           ; $650a: $03
	ld [hl], e                                       ; $650b: $73
	and e                                            ; $650c: $a3
	ld a, a                                          ; $650d: $7f
	ld h, b                                          ; $650e: $60
	ld [hl], b                                       ; $650f: $70
	adc $5e                                          ; $6510: $ce $5e
	or b                                             ; $6512: $b0
	ld sp, hl                                        ; $6513: $f9
	ret c                                            ; $6514: $d8

	rst $38                                          ; $6515: $ff
	sbc [hl]                                         ; $6516: $9e
	ccf                                              ; $6517: $3f
	ld [hl], e                                       ; $6518: $73
	rst GetHLinHL                                          ; $6519: $cf
	sub [hl]                                         ; $651a: $96
	nop                                              ; $651b: $00
	sub b                                            ; $651c: $90
	db $10                                           ; $651d: $10
	sub b                                            ; $651e: $90
	db $10                                           ; $651f: $10
	jr @+$1e                                         ; $6520: $18 $1c

	ld [$db00], sp                                   ; $6522: $08 $00 $db

Jump_04e_6525:
	rra                                              ; $6525: $1f
	rst $38                                          ; $6526: $ff
	ld b, c                                          ; $6527: $41
	add b                                            ; $6528: $80
	ld a, b                                          ; $6529: $78
	ld b, h                                          ; $652a: $44
	ld a, [hl]                                       ; $652b: $7e
	ret nz                                           ; $652c: $c0

	ld a, h                                          ; $652d: $7c
	ld a, $6e                                        ; $652e: $3e $6e
	ret nz                                           ; $6530: $c0

	ld a, h                                          ; $6531: $7c
	ld a, $df                                        ; $6532: $3e $df
	ld hl, sp-$23                                    ; $6534: $f8 $dd
	ld sp, hl                                        ; $6536: $f9
	sbc l                                            ; $6537: $9d
	jp hl                                            ; $6538: $e9


	db $eb                                           ; $6539: $eb
	ei                                               ; $653a: $fb
	rst SubAFromDE                                          ; $653b: $df
	ld de, $0b71                                     ; $653c: $11 $71 $0b
	ld e, [hl]                                       ; $653f: $5e
	db $10                                           ; $6540: $10
	db $db                                           ; $6541: $db
	rst $38                                          ; $6542: $ff
	sbc [hl]                                         ; $6543: $9e
	ld hl, sp-$24                                    ; $6544: $f8 $dc
	rst $38                                          ; $6546: $ff
	ld a, [hl]                                       ; $6547: $7e
	jr nz, jr_04e_65c9                               ; $6548: $20 $7f

	rrca                                             ; $654a: $0f
	ld a, a                                          ; $654b: $7f
	cp $72                                           ; $654c: $fe $72
	daa                                              ; $654e: $27
	ld [hl], d                                       ; $654f: $72
	ld a, [$d175]                                    ; $6550: $fa $75 $d1
	rst SubAFromDE                                          ; $6553: $df
	rst $38                                          ; $6554: $ff
	sbc e                                            ; $6555: $9b
	ld sp, hl                                        ; $6556: $f9
	rrca                                             ; $6557: $0f
	inc e                                            ; $6558: $1c
	jr c, @+$7d                                      ; $6559: $38 $7b

	call nc, $fc9a                                   ; $655b: $d4 $9a $fc
	rlca                                             ; $655e: $07
	ld a, [$e0f1]                                    ; $655f: $fa $f1 $e0
	ld a, c                                          ; $6562: $79
	ldh [c], a                                       ; $6563: $e2
	sbc c                                            ; $6564: $99
	nop                                              ; $6565: $00
	ret nz                                           ; $6566: $c0

	ldh [$30], a                                     ; $6567: $e0 $30
	cp b                                             ; $6569: $b8
	ldh a, [$7b]                                     ; $656a: $f0 $7b
	rst GetHLinHL                                          ; $656c: $cf
	ld a, h                                          ; $656d: $7c
	ld [hl], l                                       ; $656e: $75
	sbc l                                            ; $656f: $9d
	ld e, a                                          ; $6570: $5f
	rrca                                             ; $6571: $0f
	ld [hl], d                                       ; $6572: $72
	jr z, jr_04e_65e5                                ; $6573: $28 $70

	jp hl                                            ; $6575: $e9


	ld [hl], a                                       ; $6576: $77
	pop bc                                           ; $6577: $c1
	call c, $94ff                                    ; $6578: $dc $ff $94
	ld d, l                                          ; $657b: $55
	xor a                                            ; $657c: $af
	ld d, a                                          ; $657d: $57
	xor d                                            ; $657e: $aa
	ld d, l                                          ; $657f: $55
	ld a, [bc]                                       ; $6580: $0a
	nop                                              ; $6581: $00
	ldh a, [$aa]                                     ; $6582: $f0 $aa
	ld d, b                                          ; $6584: $50
	xor b                                            ; $6585: $a8
	halt                                             ; $6586: $76
	ld c, c                                          ; $6587: $49
	call c, $7fff                                    ; $6588: $dc $ff $7f
	xor $9e                                          ; $658b: $ee $9e
	dec d                                            ; $658d: $15
	db $fc                                           ; $658e: $fc
	ld a, a                                          ; $658f: $7f
	xor $9c                                          ; $6590: $ee $9c
	ld [$d5ff], a                                    ; $6592: $ea $ff $d5
	ld [hl], a                                       ; $6595: $77
	db $eb                                           ; $6596: $eb
	sbc e                                            ; $6597: $9b
	xor e                                            ; $6598: $ab
	ld d, l                                          ; $6599: $55

jr_04e_659a:
	nop                                              ; $659a: $00
	jr nc, jr_04e_659a                               ; $659b: $30 $fd

	ld a, h                                          ; $659d: $7c
	jp hl                                            ; $659e: $e9


	sbc c                                            ; $659f: $99
	rst $38                                          ; $65a0: $ff
	ld d, h                                          ; $65a1: $54
	xor b                                            ; $65a2: $a8
	ld h, b                                          ; $65a3: $60
	pop af                                           ; $65a4: $f1
	ld a, [$b378]                                    ; $65a5: $fa $78 $b3
	sbc [hl]                                         ; $65a8: $9e
	jr z, @-$02                                      ; $65a9: $28 $fc

	sub d                                            ; $65ab: $92
	add b                                            ; $65ac: $80
	ld b, l                                          ; $65ad: $45
	nop                                              ; $65ae: $00
	rlca                                             ; $65af: $07
	add b                                            ; $65b0: $80
	ld b, $83                                        ; $65b1: $06 $83
	ld a, l                                          ; $65b3: $7d
	db $eb                                           ; $65b4: $eb
	rst $38                                          ; $65b5: $ff
	inc bc                                           ; $65b6: $03
	jr jr_04e_65f9                                   ; $65b7: $18 $40

	db $fd                                           ; $65b9: $fd
	sbc d                                            ; $65ba: $9a
	ld d, a                                          ; $65bb: $57
	inc d                                            ; $65bc: $14
	ld sp, hl                                        ; $65bd: $f9
	add hl, bc                                       ; $65be: $09
	rlca                                             ; $65bf: $07
	ld [hl], l                                       ; $65c0: $75
	sub d                                            ; $65c1: $92
	sbc e                                            ; $65c2: $9b
	ld h, d                                          ; $65c3: $62
	ld b, $04                                        ; $65c4: $06 $04
	ld [$5a76], sp                                   ; $65c6: $08 $76 $5a

jr_04e_65c9:
	sbc l                                            ; $65c9: $9d
	rra                                              ; $65ca: $1f
	rst GetHLinHL                                          ; $65cb: $cf
	ld e, d                                          ; $65cc: $5a
	ldh [$72], a                                     ; $65cd: $e0 $72
	ld b, e                                          ; $65cf: $43
	rst SubAFromDE                                          ; $65d0: $df
	rst $38                                          ; $65d1: $ff
	sbc [hl]                                         ; $65d2: $9e
	push af                                          ; $65d3: $f5
	ld a, c                                          ; $65d4: $79
	sbc $75                                          ; $65d5: $de $75
	nop                                              ; $65d7: $00
	jp c, Jump_04e_7eff                              ; $65d8: $da $ff $7e

	sbc a                                            ; $65db: $9f
	ld a, a                                          ; $65dc: $7f
	ldh a, [$9e]                                     ; $65dd: $f0 $9e
	cp a                                             ; $65df: $bf
	ld a, d                                          ; $65e0: $7a
	ld de, $ffdb                                     ; $65e1: $11 $db $ff
	sbc [hl]                                         ; $65e4: $9e

jr_04e_65e5:
	sbc $75                                          ; $65e5: $de $75
	ret nz                                           ; $65e7: $c0

	ld a, a                                          ; $65e8: $7f
	adc c                                            ; $65e9: $89
	sbc [hl]                                         ; $65ea: $9e
	nop                                              ; $65eb: $00
	ld l, e                                          ; $65ec: $6b
	ld [$f39e], sp                                   ; $65ed: $08 $9e $f3
	ld a, e                                          ; $65f0: $7b
	sub h                                            ; $65f1: $94
	sub [hl]                                         ; $65f2: $96
	ld d, a                                          ; $65f3: $57
	rst $38                                          ; $65f4: $ff
	xor d                                            ; $65f5: $aa
	ld d, l                                          ; $65f6: $55
	rrca                                             ; $65f7: $0f
	ccf                                              ; $65f8: $3f

jr_04e_65f9:
	rst GetHLinHL                                          ; $65f9: $cf
	db $e3                                           ; $65fa: $e3
	ld sp, hl                                        ; $65fb: $f9
	ld a, d                                          ; $65fc: $7a
	db $10                                           ; $65fd: $10
	ld l, l                                          ; $65fe: $6d
	add d                                            ; $65ff: $82
	ld e, l                                          ; $6600: $5d
	add b                                            ; $6601: $80
	ld a, [hl]                                       ; $6602: $7e
	add $7f                                          ; $6603: $c6 $7f
	sbc b                                            ; $6605: $98
	sbc [hl]                                         ; $6606: $9e
	rlca                                             ; $6607: $07
	ld a, d                                          ; $6608: $7a
	ret c                                            ; $6609: $d8

	ld a, [hl]                                       ; $660a: $7e
	add $95                                          ; $660b: $c6 $95
	ei                                               ; $660d: $fb
	rst FarCall                                          ; $660e: $f7
	ld hl, sp-$10                                    ; $660f: $f8 $f0
	pop hl                                           ; $6611: $e1
	pop hl                                           ; $6612: $e1
	db $eb                                           ; $6613: $eb
	db $eb                                           ; $6614: $eb
	dec bc                                           ; $6615: $0b
	scf                                              ; $6616: $37
	ld [hl], l                                       ; $6617: $75
	call $11df                                       ; $6618: $cd $df $11
	sbc l                                            ; $661b: $9d
	pop af                                           ; $661c: $f1
	pop bc                                           ; $661d: $c1
	ld d, d                                          ; $661e: $52
	call z, $cd6e                                    ; $661f: $cc $6e $cd
	sbc c                                            ; $6622: $99
	xor a                                            ; $6623: $af
	push de                                          ; $6624: $d5
	ld [$eadf], a                                    ; $6625: $ea $df $ea
	push bc                                          ; $6628: $c5
	ld [hl], a                                       ; $6629: $77
	sbc [hl]                                         ; $662a: $9e
	db $dd                                           ; $662b: $dd
	rst $38                                          ; $662c: $ff
	sbc c                                            ; $662d: $99
	rst SubAFromDE                                          ; $662e: $df
	cp a                                             ; $662f: $bf
	rst $38                                          ; $6630: $ff
	ld d, l                                          ; $6631: $55
	xor d                                            ; $6632: $aa
	push de                                          ; $6633: $d5
	ld a, e                                          ; $6634: $7b
	db $fc                                           ; $6635: $fc
	ld l, e                                          ; $6636: $6b
	ldh a, [rPCM12]                                  ; $6637: $f0 $76
	ldh a, [$7f]                                     ; $6639: $f0 $7f
	db $f4                                           ; $663b: $f4
	ld a, a                                          ; $663c: $7f
	db $fc                                           ; $663d: $fc
	sbc h                                            ; $663e: $9c
	xor [hl]                                         ; $663f: $ae
	ld d, l                                          ; $6640: $55
	xor [hl]                                         ; $6641: $ae
	ld e, e                                          ; $6642: $5b
	ldh a, [$7e]                                     ; $6643: $f0 $7e
	rst SubAFromHL                                          ; $6645: $d7
	ld e, e                                          ; $6646: $5b
	ldh [$7a], a                                     ; $6647: $e0 $7a
	jp nc, $f47f                                     ; $6649: $d2 $7f $f4

	ld e, e                                          ; $664c: $5b
	ldh a, [$9e]                                     ; $664d: $f0 $9e
	ld a, a                                          ; $664f: $7f
	ld a, e                                          ; $6650: $7b
	db $f4                                           ; $6651: $f4
	sbc h                                            ; $6652: $9c
	push de                                          ; $6653: $d5
	xor a                                            ; $6654: $af
	ld [hl], l                                       ; $6655: $75
	ld h, e                                          ; $6656: $63
	ldh a, [$9d]                                     ; $6657: $f0 $9d
	rst $38                                          ; $6659: $ff
	xor a                                            ; $665a: $af
	ld l, a                                          ; $665b: $6f
	xor [hl]                                         ; $665c: $ae
	reti                                             ; $665d: $d9


	rst $38                                          ; $665e: $ff
	ld a, a                                          ; $665f: $7f
	ld c, l                                          ; $6660: $4d
	ld [hl], a                                       ; $6661: $77
	cp [hl]                                          ; $6662: $be
	sbc [hl]                                         ; $6663: $9e
	ld e, l                                          ; $6664: $5d
	ld h, e                                          ; $6665: $63
	ldh a, [hDisp1_WX]                                     ; $6666: $f0 $96
	ld e, a                                          ; $6668: $5f
	ld a, [$ead5]                                    ; $6669: $fa $d5 $ea
	ld d, a                                          ; $666c: $57
	cp $f5                                           ; $666d: $fe $f5
	ld [$67bf], a                                    ; $666f: $ea $bf $67
	ldh [$7f], a                                     ; $6672: $e0 $7f
	ldh [c], a                                       ; $6674: $e2
	sbc [hl]                                         ; $6675: $9e
	xor a                                            ; $6676: $af
	ld d, a                                          ; $6677: $57
	or b                                             ; $6678: $b0
	ld a, a                                          ; $6679: $7f
	or $7f                                           ; $667a: $f6 $7f
	ldh [c], a                                       ; $667c: $e2
	sbc e                                            ; $667d: $9b
	ld d, c                                          ; $667e: $51
	and a                                            ; $667f: $a7
	ld c, a                                          ; $6680: $4f
	sub h                                            ; $6681: $94
	ld l, [hl]                                       ; $6682: $6e
	jr @-$69                                         ; $6683: $18 $95

	di                                               ; $6685: $f3
	db $eb                                           ; $6686: $eb
	ld d, l                                          ; $6687: $55
	xor a                                            ; $6688: $af
	ld hl, sp+$00                                    ; $6689: $f8 $00
	ld bc, $542a                                     ; $668b: $01 $2a $54
	jr z, jr_04e_6706                                ; $668e: $28 $76

	ret                                              ; $6690: $c9


	ld a, [hl]                                       ; $6691: $7e
	sub c                                            ; $6692: $91
	rst SubAFromDE                                          ; $6693: $df
	add b                                            ; $6694: $80
	sbc [hl]                                         ; $6695: $9e
	ld d, a                                          ; $6696: $57
	ld a, d                                          ; $6697: $7a
	ld [de], a                                       ; $6698: $12
	add e                                            ; $6699: $83
	ld a, [bc]                                       ; $669a: $0a
	dec d                                            ; $669b: $15
	ld a, [hl+]                                      ; $669c: $2a
	dec d                                            ; $669d: $15
	rst $38                                          ; $669e: $ff
	rst $38                                          ; $669f: $ff
	ld a, [$4061]                                    ; $66a0: $fa $61 $40
	ld b, b                                          ; $66a3: $40
	ld b, c                                          ; $66a4: $41
	ld b, d                                          ; $66a5: $42
	cp $01                                           ; $66a6: $fe $01
	ld b, $03                                        ; $66a8: $06 $03
	and c                                            ; $66aa: $a1
	ld h, d                                          ; $66ab: $62

jr_04e_66ac:
	and a                                            ; $66ac: $a7
	ld h, e                                          ; $66ad: $63
	rst $38                                          ; $66ae: $ff
	rst $38                                          ; $66af: $ff
	and a                                            ; $66b0: $a7
	ld d, e                                          ; $66b1: $53
	dec h                                            ; $66b2: $25
	inc h                                            ; $66b3: $24
	ld [hl+], a                                      ; $66b4: $22
	and a                                            ; $66b5: $a7
	ld [hl], b                                       ; $66b6: $70

jr_04e_66b7:
	add c                                            ; $66b7: $81
	sbc [hl]                                         ; $66b8: $9e
	ld d, l                                          ; $66b9: $55
	ld [hl], a                                       ; $66ba: $77
	ldh [$73], a                                     ; $66bb: $e0 $73
	ld h, d                                          ; $66bd: $62
	sbc [hl]                                         ; $66be: $9e
	cp a                                             ; $66bf: $bf
	ld l, a                                          ; $66c0: $6f
	ldh a, [$7b]                                     ; $66c1: $f0 $7b
	dec hl                                           ; $66c3: $2b
	jp c, Jump_04e_7eff                              ; $66c4: $da $ff $7e

	add $79                                          ; $66c7: $c6 $79
	dec sp                                           ; $66c9: $3b
	ld a, h                                          ; $66ca: $7c
	xor e                                            ; $66cb: $ab
	ld l, [hl]                                       ; $66cc: $6e
	ldh a, [c]                                       ; $66cd: $f2
	ld a, d                                          ; $66ce: $7a
	ld a, l                                          ; $66cf: $7d
	db $dd                                           ; $66d0: $dd
	inc de                                           ; $66d1: $13
	sbc [hl]                                         ; $66d2: $9e
	rlca                                             ; $66d3: $07
	ld a, d                                          ; $66d4: $7a
	ret c                                            ; $66d5: $d8

	db $dd                                           ; $66d6: $dd
	pop hl                                           ; $66d7: $e1
	sbc l                                            ; $66d8: $9d
	ld bc, $d103                                     ; $66d9: $01 $03 $d1
	rst $38                                          ; $66dc: $ff
	sub [hl]                                         ; $66dd: $96
	db $fc                                           ; $66de: $fc
	db $e3                                           ; $66df: $e3
	push de                                          ; $66e0: $d5
	ld a, [hl+]                                      ; $66e1: $2a
	ld d, l                                          ; $66e2: $55
	ld a, [hl+]                                      ; $66e3: $2a
	ret nc                                           ; $66e4: $d0

	jr nz, jr_04e_66b7                               ; $66e5: $20 $d0

	ld [hl], d                                       ; $66e7: $72
	ld b, l                                          ; $66e8: $45
	ld a, a                                          ; $66e9: $7f
	db $fc                                           ; $66ea: $fc
	ld a, a                                          ; $66eb: $7f
	cp $9c                                           ; $66ec: $fe $9c
	dec d                                            ; $66ee: $15
	xor d                                            ; $66ef: $aa
	dec d                                            ; $66f0: $15
	ld [hl], e                                       ; $66f1: $73
	cp [hl]                                          ; $66f2: $be
	ld e, d                                          ; $66f3: $5a
	ldh [rPCM12], a                                  ; $66f4: $e0 $76
	inc [hl]                                         ; $66f6: $34
	ld h, c                                          ; $66f7: $61
	ld [$c476], sp                                   ; $66f8: $08 $76 $c4
	sbc e                                            ; $66fb: $9b
	ld d, h                                          ; $66fc: $54
	ld b, $04                                        ; $66fd: $06 $04
	ld b, $57                                        ; $66ff: $06 $57
	ldh [$7f], a                                     ; $6701: $e0 $7f
	cp $9e                                           ; $6703: $fe $9e
	dec b                                            ; $6705: $05

jr_04e_6706:
	ld e, a                                          ; $6706: $5f

Call_04e_6707:
	ldh [$6f], a                                     ; $6707: $e0 $6f
	ld [hl], c                                       ; $6709: $71
	ld h, e                                          ; $670a: $63
	ldh a, [$7e]                                     ; $670b: $f0 $7e
	add $73                                          ; $670d: $c6 $73
	cp $9e                                           ; $670f: $fe $9e
	ld [hl+], a                                      ; $6711: $22
	ld c, e                                          ; $6712: $4b
	ldh [$62], a                                     ; $6713: $e0 $62
	ldh a, [$7e]                                     ; $6715: $f0 $7e
	add $6f                                          ; $6717: $c6 $6f
	cp $d9                                           ; $6719: $fe $d9
	rst $38                                          ; $671b: $ff
	ld a, [hl]                                       ; $671c: $7e
	jp nz, $fe6f                                     ; $671d: $c2 $6f $fe

	ld e, a                                          ; $6720: $5f
	ret nc                                           ; $6721: $d0

	ld a, l                                          ; $6722: $7d
	ld l, e                                          ; $6723: $6b
	sbc e                                            ; $6724: $9b
	ld d, l                                          ; $6725: $55
	xor c                                            ; $6726: $a9
	ld d, e                                          ; $6727: $53
	and l                                            ; $6728: $a5
	ld [hl], e                                       ; $6729: $73
	jr nc, jr_04e_66ac                               ; $672a: $30 $80

	cp $fd                                           ; $672c: $fe $fd
	ei                                               ; $672e: $fb
	dec a                                            ; $672f: $3d
	ld e, l                                          ; $6730: $5d
	dec l                                            ; $6731: $2d
	sub h                                            ; $6732: $94
	dec [hl]                                         ; $6733: $35
	push de                                          ; $6734: $d5
	or l                                             ; $6735: $b5
	push af                                          ; $6736: $f5
	db $db                                           ; $6737: $db
	sbc e                                            ; $6738: $9b
	cp e                                             ; $6739: $bb
	ld a, e                                          ; $673a: $7b
	ld c, e                                          ; $673b: $4b
	dec sp                                           ; $673c: $3b
	ei                                               ; $673d: $fb
	ei                                               ; $673e: $fb
	ld a, [$fafc]                                    ; $673f: $fa $fc $fa
	ld a, h                                          ; $6742: $7c
	ld hl, sp-$08                                    ; $6743: $f8 $f8
	add sp, -$0e                                     ; $6745: $e8 $f2
	ret nc                                           ; $6747: $d0

jr_04e_6748:
	add sp, -$10                                     ; $6748: $e8 $f0
	add b                                            ; $674a: $80
	adc b                                            ; $674b: $88
	ldh [$c0], a                                     ; $674c: $e0 $c0
	add b                                            ; $674e: $80
	add b                                            ; $674f: $80
	cp [hl]                                          ; $6750: $be
	cp a                                             ; $6751: $bf
	adc a                                            ; $6752: $8f
	cp h                                             ; $6753: $bc
	cp a                                             ; $6754: $bf
	sub a                                            ; $6755: $97
	add d                                            ; $6756: $82
	add l                                            ; $6757: $85
	ld l, a                                          ; $6758: $6f
	ld d, a                                          ; $6759: $57
	ld [hl], b                                       ; $675a: $70
	ld a, a                                          ; $675b: $7f
	ld b, c                                          ; $675c: $41
	ld b, c                                          ; $675d: $41
	ld b, b                                          ; $675e: $40
	ld b, b                                          ; $675f: $40
	xor c                                            ; $6760: $a9
	ld l, e                                          ; $6761: $6b
	rst GetHLinHL                                          ; $6762: $cf
	call c, $dfeb                                    ; $6763: $dc $eb $df
	rst SubAFromBC                                          ; $6766: $e7

Call_04e_6767:
	sbc [hl]                                         ; $6767: $9e
	jr nz, jr_04e_6748                               ; $6768: $20 $de

	rst SubAFromBC                                          ; $676a: $e7
	sub b                                            ; $676b: $90
	ld h, a                                          ; $676c: $67
	rst SubAFromBC                                          ; $676d: $e7
	xor d                                            ; $676e: $aa
	db $ed                                           ; $676f: $ed
	add d                                            ; $6770: $82
	ei                                               ; $6771: $fb
	db $fc                                           ; $6772: $fc
	db $f4                                           ; $6773: $f4
	rst AddAOntoHL                                          ; $6774: $ef
	rst SubAFromHL                                          ; $6775: $d7
	rst SubAFromDE                                          ; $6776: $df
	rst JumpTable                                          ; $6777: $c7
	ld [hl], a                                       ; $6778: $77
	ld sp, hl                                        ; $6779: $f9
	db $fd                                           ; $677a: $fd
	ld a, b                                          ; $677b: $78
	db $dd                                           ; $677c: $dd
	ld d, d                                          ; $677d: $52
	or b                                             ; $677e: $b0
	rst SubAFromDE                                          ; $677f: $df
	ld a, a                                          ; $6780: $7f
	sub l                                            ; $6781: $95
	sbc a                                            ; $6782: $9f
	nop                                              ; $6783: $00
	ld h, d                                          ; $6784: $62
	nop                                              ; $6785: $00
	ld b, d                                          ; $6786: $42
	ld b, d                                          ; $6787: $42
	ld b, [hl]                                       ; $6788: $46
	ld b, d                                          ; $6789: $42
	ld b, d                                          ; $678a: $42
	rst $38                                          ; $678b: $ff
	jp c, $9791                                      ; $678c: $da $91 $97

	or h                                             ; $678f: $b4
	cp l                                             ; $6790: $bd
	sbc [hl]                                         ; $6791: $9e
	sub l                                            ; $6792: $95
	sub [hl]                                         ; $6793: $96
	or l                                             ; $6794: $b5
	sub [hl]                                         ; $6795: $96
	sub l                                            ; $6796: $95
	reti                                             ; $6797: $d9


	rst GetHLinHL                                          ; $6798: $cf
	ld [hl], d                                       ; $6799: $72
	and b                                            ; $679a: $a0
	cp $9e                                           ; $679b: $fe $9e
	cp a                                             ; $679d: $bf
	halt                                             ; $679e: $76
	db $d3                                           ; $679f: $d3
	ld h, l                                          ; $67a0: $65
	ld [$029c], sp                                   ; $67a1: $08 $9c $02
	inc e                                            ; $67a4: $1c
	ld a, [hl-]                                      ; $67a5: $3a
	ld h, [hl]                                       ; $67a6: $66
	ld de, $c476                                     ; $67a7: $11 $76 $c4
	sbc e                                            ; $67aa: $9b
	nop                                              ; $67ab: $00
	and d                                            ; $67ac: $a2
	dec e                                            ; $67ad: $1d
	and [hl]                                         ; $67ae: $a6
	ld l, a                                          ; $67af: $6f
	ldh a, [c]                                       ; $67b0: $f2
	sbc l                                            ; $67b1: $9d
	cp $df                                           ; $67b2: $fe $df
	db $fd                                           ; $67b4: $fd
	sbc [hl]                                         ; $67b5: $9e
	dec b                                            ; $67b6: $05
	ld l, e                                          ; $67b7: $6b
	db $10                                           ; $67b8: $10
	sbc [hl]                                         ; $67b9: $9e
	ld a, [$967b]                                    ; $67ba: $fa $7b $96
	db $dd                                           ; $67bd: $dd
	inc b                                            ; $67be: $04
	sbc e                                            ; $67bf: $9b
	ld d, b                                          ; $67c0: $50
	xor l                                            ; $67c1: $ad
	ld d, b                                          ; $67c2: $50
	xor l                                            ; $67c3: $ad
	ld [hl], c                                       ; $67c4: $71
	or l                                             ; $67c5: $b5
	sbc h                                            ; $67c6: $9c
	ld d, [hl]                                       ; $67c7: $56
	xor a                                            ; $67c8: $af
	ld d, [hl]                                       ; $67c9: $56
	db $fd                                           ; $67ca: $fd
	sbc e                                            ; $67cb: $9b
	dec hl                                           ; $67cc: $2b
	ld [de], a                                       ; $67cd: $12
	dec [hl]                                         ; $67ce: $35
	rst AddAOntoHL                                          ; $67cf: $ef
	jp c, $9eff                                      ; $67d0: $da $ff $9e

	ccf                                              ; $67d3: $3f
	cp $9a                                           ; $67d4: $fe $9a
	jr nz, jr_04e_67d8                               ; $67d6: $20 $00

jr_04e_67d8:
	ld l, [hl]                                       ; $67d8: $6e
	cp l                                             ; $67d9: $bd
	adc $75                                          ; $67da: $ce $75
	ld b, d                                          ; $67dc: $42
	ld a, a                                          ; $67dd: $7f
	cp $9d                                           ; $67de: $fe $9d
	rst AddAOntoHL                                          ; $67e0: $ef
	rst FarCall                                          ; $67e1: $f7
	call c, $9c20                                    ; $67e2: $dc $20 $9c
	and b                                            ; $67e5: $a0
	jr nz, jr_04e_6808                               ; $67e6: $20 $20

	ld l, a                                          ; $67e8: $6f
	ld h, b                                          ; $67e9: $60
	ld a, d                                          ; $67ea: $7a
	ldh a, [$9b]                                     ; $67eb: $f0 $9b
	ld a, [hl+]                                      ; $67ed: $2a
	dec b                                            ; $67ee: $05
	ld [bc], a                                       ; $67ef: $02
	ld bc, $705a                                     ; $67f0: $01 $5a $70
	ld [hl], d                                       ; $67f3: $72
	jp nz, $2a9c                                     ; $67f4: $c2 $9c $2a

	ld e, l                                          ; $67f7: $5d
	ld a, [hl+]                                      ; $67f8: $2a
	ld h, $c0                                        ; $67f9: $26 $c0
	add b                                            ; $67fb: $80
	ld b, c                                          ; $67fc: $41
	sub e                                            ; $67fd: $93
	ld b, a                                          ; $67fe: $47
	xor a                                            ; $67ff: $af
	ccf                                              ; $6800: $3f
	ld b, b                                          ; $6801: $40
	ld l, d                                          ; $6802: $6a
	ld d, l                                          ; $6803: $55
	ei                                               ; $6804: $fb
	rst SubAFromBC                                          ; $6805: $e7
	rst AddAOntoHL                                          ; $6806: $ef
	rst GetHLinHL                                          ; $6807: $cf

jr_04e_6808:
	ret nz                                           ; $6808: $c0

	sbc a                                            ; $6809: $9f
	sub l                                            ; $680a: $95
	cp d                                             ; $680b: $ba
	push af                                          ; $680c: $f5
	push hl                                          ; $680d: $e5
	reti                                             ; $680e: $d9


	or l                                             ; $680f: $b5
	db $e4                                           ; $6810: $e4
	ld bc, $5fbe                                     ; $6811: $01 $be $5f
	ei                                               ; $6814: $fb
	ei                                               ; $6815: $fb
	rst FarCall                                          ; $6816: $f7
	ldh [c], a                                       ; $6817: $e2
	dec de                                           ; $6818: $1b
	cp $40                                           ; $6819: $fe $40
	sbc b                                            ; $681b: $98
	and b                                            ; $681c: $a0
	db $ec                                           ; $681d: $ec
	sub $f8                                          ; $681e: $d6 $f8
	rst $38                                          ; $6820: $ff
	rrca                                             ; $6821: $0f
	ret nz                                           ; $6822: $c0

	ld a, b                                          ; $6823: $78
	adc a                                            ; $6824: $8f
	ld a, e                                          ; $6825: $7b
	ld c, c                                          ; $6826: $49
	sbc [hl]                                         ; $6827: $9e
	ldh a, [$fe]                                     ; $6828: $f0 $fe
	sbc e                                            ; $682a: $9b
	add e                                            ; $682b: $83
	add l                                            ; $682c: $85
	adc a                                            ; $682d: $8f
	cp $77                                           ; $682e: $fe $77
	dec hl                                           ; $6830: $2b
	ld a, d                                          ; $6831: $7a
	push bc                                          ; $6832: $c5
	ld [hl], a                                       ; $6833: $77
	sbc c                                            ; $6834: $99
	sub d                                            ; $6835: $92
	nop                                              ; $6836: $00
	db $eb                                           ; $6837: $eb
	db $eb                                           ; $6838: $eb
	rst AddAOntoHL                                          ; $6839: $ef
	inc b                                            ; $683a: $04
	rst $38                                          ; $683b: $ff
	ld e, a                                          ; $683c: $5f
	xor a                                            ; $683d: $af
	ld d, a                                          ; $683e: $57
	ld h, a                                          ; $683f: $67
	rst SubAFromBC                                          ; $6840: $e7
	nop                                              ; $6841: $00
	ei                                               ; $6842: $fb
	db $fd                                           ; $6843: $fd
	sbc e                                            ; $6844: $9b
	jp hl                                            ; $6845: $e9


	ld d, h                                          ; $6846: $54
	rst $38                                          ; $6847: $ff
	nop                                              ; $6848: $00
	ld a, e                                          ; $6849: $7b
	and c                                            ; $684a: $a1
	sbc [hl]                                         ; $684b: $9e
	push af                                          ; $684c: $f5
	ld a, e                                          ; $684d: $7b
	ld b, $7d                                        ; $684e: $06 $7d
	call nc, $c97e                                   ; $6850: $d4 $7e $c9
	adc c                                            ; $6853: $89
	ld a, [bc]                                       ; $6854: $0a
	sbc d                                            ; $6855: $9a
	ld e, l                                          ; $6856: $5d
	ld a, [$ae5b]                                    ; $6857: $fa $5b $ae
	ld e, a                                          ; $685a: $5f
	xor [hl]                                         ; $685b: $ae
	ld e, a                                          ; $685c: $5f
	rst AddAOntoHL                                          ; $685d: $ef
	rst SubAFromBC                                          ; $685e: $e7
	rlca                                             ; $685f: $07
	and a                                            ; $6860: $a7
	ld d, e                                          ; $6861: $53
	and e                                            ; $6862: $a3
	ld d, e                                          ; $6863: $53
	and e                                            ; $6864: $a3
	ld [bc], a                                       ; $6865: $02
	ld h, b                                          ; $6866: $60
	ld b, b                                          ; $6867: $40
	nop                                              ; $6868: $00
	nop                                              ; $6869: $00
	sbc $04                                          ; $686a: $de $04
	sbc [hl]                                         ; $686c: $9e
	sub c                                            ; $686d: $91
	jp c, $9793                                      ; $686e: $da $93 $97

	sub a                                            ; $6871: $97
	cp l                                             ; $6872: $bd
	cp a                                             ; $6873: $bf
	sub l                                            ; $6874: $95
	or a                                             ; $6875: $b7
	sub l                                            ; $6876: $95
	sub h                                            ; $6877: $94
	or l                                             ; $6878: $b5
	reti                                             ; $6879: $d9


	rst GetHLinHL                                          ; $687a: $cf
	db $fd                                           ; $687b: $fd
	sbc l                                            ; $687c: $9d
	ld bc, $78a8                                     ; $687d: $01 $a8 $78
	db $ec                                           ; $6880: $ec
	halt                                             ; $6881: $76
	jr nc, jr_04e_6900                               ; $6882: $30 $7c

	sub e                                            ; $6884: $93
	adc [hl]                                         ; $6885: $8e
	ld [hl], b                                       ; $6886: $70
	ld [hl], l                                       ; $6887: $75
	db $e3                                           ; $6888: $e3
	add l                                            ; $6889: $85
	add sp, -$2b                                     ; $688a: $e8 $d5
	ld l, e                                          ; $688c: $6b
	dec d                                            ; $688d: $15
	rst $38                                          ; $688e: $ff
	db $eb                                           ; $688f: $eb
	db $dd                                           ; $6890: $dd
	ei                                               ; $6891: $fb
	rst SubAFromHL                                          ; $6892: $d7
	ld [$ead6], a                                    ; $6893: $ea $d6 $ea
	nop                                              ; $6896: $00
	ld a, b                                          ; $6897: $78
	add b                                            ; $6898: $80
	sbc [hl]                                         ; $6899: $9e
	ld a, [hl+]                                      ; $689a: $2a
	halt                                             ; $689b: $76
	and l                                            ; $689c: $a5
	sbc e                                            ; $689d: $9b
	xor e                                            ; $689e: $ab
	push de                                          ; $689f: $d5
	xor d                                            ; $68a0: $aa
	push de                                          ; $68a1: $d5
	ld [hl], a                                       ; $68a2: $77
	ld l, h                                          ; $68a3: $6c
	ld a, [hl]                                       ; $68a4: $7e
	call Call_04e_5f8d                               ; $68a5: $cd $8d $5f
	cpl                                              ; $68a8: $2f
	ld a, a                                          ; $68a9: $7f
	rst $38                                          ; $68aa: $ff
	ld d, c                                          ; $68ab: $51
	rst $38                                          ; $68ac: $ff
	xor d                                            ; $68ad: $aa
	push de                                          ; $68ae: $d5
	and b                                            ; $68af: $a0
	ret nc                                           ; $68b0: $d0

	add b                                            ; $68b1: $80
	ld b, b                                          ; $68b2: $40
	xor [hl]                                         ; $68b3: $ae
	nop                                              ; $68b4: $00
	ld d, b                                          ; $68b5: $50
	xor c                                            ; $68b6: $a9
	ei                                               ; $68b7: $fb
	ld sp, hl                                        ; $68b8: $f9
	ld a, e                                          ; $68b9: $7b
	cp $9b                                           ; $68ba: $fe $9b
	ei                                               ; $68bc: $fb
	xor a                                            ; $68bd: $af
	ld d, [hl]                                       ; $68be: $56
	inc b                                            ; $68bf: $04
	ld a, c                                          ; $68c0: $79
	ld a, d                                          ; $68c1: $7a
	rst SubAFromDE                                          ; $68c2: $df
	inc b                                            ; $68c3: $04
	ld a, h                                          ; $68c4: $7c
	jp z, $156d                                      ; $68c5: $ca $6d $15

	sbc d                                            ; $68c8: $9a
	ld a, a                                          ; $68c9: $7f
	ccf                                              ; $68ca: $3f
	rla                                              ; $68cb: $17

jr_04e_68cc:
	ld b, $04                                        ; $68cc: $06 $04
	cp $8b                                           ; $68ce: $fe $8b
	push af                                          ; $68d0: $f5
	jr c, jr_04e_68cc                                ; $68d1: $38 $f9

	cp $ff                                           ; $68d3: $fe $ff
	rst SubAFromDE                                          ; $68d5: $df
	ccf                                              ; $68d6: $3f
	rst $38                                          ; $68d7: $ff
	ei                                               ; $68d8: $fb
	rst SubAFromDE                                          ; $68d9: $df
	rst SubAFromHL                                          ; $68da: $d7
	add e                                            ; $68db: $83
	rrca                                             ; $68dc: $0f
	rla                                              ; $68dd: $17
	dec a                                            ; $68de: $3d
	ld l, d                                          ; $68df: $6a
	ld [$9a35], a                                    ; $68e0: $ea $35 $9a
	cp a                                             ; $68e3: $bf
	ld a, d                                          ; $68e4: $7a
	add hl, de                                       ; $68e5: $19
	sbc d                                            ; $68e6: $9a
	rst $38                                          ; $68e7: $ff
	or l                                             ; $68e8: $b5
	ld [$6865], a                                    ; $68e9: $ea $65 $68
	ld a, d                                          ; $68ec: $7a
	ld l, a                                          ; $68ed: $6f
	sbc l                                            ; $68ee: $9d
	cp d                                             ; $68ef: $ba
	nop                                              ; $68f0: $00
	halt                                             ; $68f1: $76
	ld e, a                                          ; $68f2: $5f
	ld a, a                                          ; $68f3: $7f
	ld e, l                                          ; $68f4: $5d
	sbc [hl]                                         ; $68f5: $9e
	ld b, b                                          ; $68f6: $40
	ld [hl], c                                       ; $68f7: $71
	ld [de], a                                       ; $68f8: $12
	ld a, h                                          ; $68f9: $7c
	ld e, e                                          ; $68fa: $5b
	sbc h                                            ; $68fb: $9c
	cp a                                             ; $68fc: $bf
	dec c                                            ; $68fd: $0d
	ld a, [de]                                       ; $68fe: $1a
	ld l, a                                          ; $68ff: $6f

jr_04e_6900:
	cp $26                                           ; $6900: $fe $26
	ret nz                                           ; $6902: $c0

	add b                                            ; $6903: $80
	ld [hl], b                                       ; $6904: $70
	ld h, c                                          ; $6905: $61
	ld [hl], b                                       ; $6906: $70
	ld h, c                                          ; $6907: $61
	ld [hl], d                                       ; $6908: $72
	ld h, c                                          ; $6909: $61
	ld [hl], e                                       ; $690a: $73
	ld h, e                                          ; $690b: $63
	cp a                                             ; $690c: $bf
	cp [hl]                                          ; $690d: $be
	cp a                                             ; $690e: $bf
	cp [hl]                                          ; $690f: $be
	cp l                                             ; $6910: $bd
	cp a                                             ; $6911: $bf
	cp l                                             ; $6912: $bd
	cp l                                             ; $6913: $bd
	cp a                                             ; $6914: $bf
	ld e, a                                          ; $6915: $5f
	xor a                                            ; $6916: $af
	ret nz                                           ; $6917: $c0

	ld l, b                                          ; $6918: $68
	rst $38                                          ; $6919: $ff
	cp $ff                                           ; $691a: $fe $ff
	ld b, b                                          ; $691c: $40
	and b                                            ; $691d: $a0
	ld d, b                                          ; $691e: $50
	nop                                              ; $691f: $00
	rst $38                                          ; $6920: $ff
	ld a, [$96f4]                                    ; $6921: $fa $f4 $96
	ld a, [$55a0]                                    ; $6924: $fa $a0 $55
	xor d                                            ; $6927: $aa
	ld sp, hl                                        ; $6928: $f9
	ld [bc], a                                       ; $6929: $02
	db $fc                                           ; $692a: $fc
	xor d                                            ; $692b: $aa
	ld d, h                                          ; $692c: $54
	cp $9d                                           ; $692d: $fe $9d
	ld b, $fc                                        ; $692f: $06 $fc
	db $fd                                           ; $6931: $fd
	ld a, a                                          ; $6932: $7f
	ld b, c                                          ; $6933: $41
	sbc d                                            ; $6934: $9a
	nop                                              ; $6935: $00
	rra                                              ; $6936: $1f
	dec d                                            ; $6937: $15
	xor d                                            ; $6938: $aa
	add c                                            ; $6939: $81
	cp $92                                           ; $693a: $fe $92
	ld a, a                                          ; $693c: $7f
	ldh [$c0], a                                     ; $693d: $e0 $c0
	ld b, b                                          ; $693f: $40
	ld b, b                                          ; $6940: $40
	xor e                                            ; $6941: $ab
	ld d, a                                          ; $6942: $57
	xor a                                            ; $6943: $af
	dec b                                            ; $6944: $05
	ld [$af57], a                                    ; $6945: $ea $57 $af
	ld d, a                                          ; $6948: $57
	cp $9e                                           ; $6949: $fe $9e
	ld a, [$b870]                                    ; $694b: $fa $70 $b8
	sbc e                                            ; $694e: $9b
	ld bc, $0fe1                                     ; $694f: $01 $e1 $0f
	ld d, a                                          ; $6952: $57
	ld [hl], c                                       ; $6953: $71
	ret z                                            ; $6954: $c8

	add [hl]                                         ; $6955: $86
	ld e, $fe                                        ; $6956: $1e $fe
	nop                                              ; $6958: $00
	inc b                                            ; $6959: $04
	ld a, [bc]                                       ; $695a: $0a
	inc b                                            ; $695b: $04
	xor [hl]                                         ; $695c: $ae
	rrca                                             ; $695d: $0f
	xor [hl]                                         ; $695e: $ae
	rst SubAFromDE                                          ; $695f: $df
	xor [hl]                                         ; $6960: $ae
	adc a                                            ; $6961: $8f
	ld l, $8f                                        ; $6962: $2e $8f
	ld d, e                                          ; $6964: $53
	di                                               ; $6965: $f3
	db $d3                                           ; $6966: $d3
	and e                                            ; $6967: $a3
	db $d3                                           ; $6968: $d3
	di                                               ; $6969: $f3
	db $d3                                           ; $696a: $d3
	di                                               ; $696b: $f3
	inc b                                            ; $696c: $04
	ld h, h                                          ; $696d: $64
	ld h, h                                          ; $696e: $64
	db $fc                                           ; $696f: $fc
	reti                                             ; $6970: $d9


	sub e                                            ; $6971: $93
	sbc d                                            ; $6972: $9a
	or [hl]                                          ; $6973: $b6
	or l                                             ; $6974: $b5
	xor h                                            ; $6975: $ac
	sub l                                            ; $6976: $95
	sub b                                            ; $6977: $90
	ld a, e                                          ; $6978: $7b
	cp $df                                           ; $6979: $fe $df
	rst GetHLinHL                                          ; $697b: $cf
	sbc [hl]                                         ; $697c: $9e
	rst SubAFromDE                                          ; $697d: $df
	call c, $95cf                                    ; $697e: $dc $cf $95
	xor h                                            ; $6981: $ac
	ld a, h                                          ; $6982: $7c
	or [hl]                                          ; $6983: $b6
	ld d, [hl]                                       ; $6984: $56
	or d                                             ; $6985: $b2
	ld d, d                                          ; $6986: $52
	xor a                                            ; $6987: $af
	ld e, c                                          ; $6988: $59
	ldh a, [$f0]                                     ; $6989: $f0 $f0
	call c, $91f8                                    ; $698b: $dc $f8 $91
	db $fc                                           ; $698e: $fc
	add hl, bc                                       ; $698f: $09
	ld [$0008], sp                                   ; $6990: $08 $08 $00
	dec e                                            ; $6993: $1d
	jr jr_04e_6996                                   ; $6994: $18 $00

jr_04e_6996:
	ld de, $1000                                     ; $6996: $11 $00 $10
	nop                                              ; $6999: $00
	nop                                              ; $699a: $00
	ld [hl-], a                                      ; $699b: $32
	cp $9a                                           ; $699c: $fe $9a
	dec de                                           ; $699e: $1b
	adc b                                            ; $699f: $88
	sub b                                            ; $69a0: $90
	nop                                              ; $69a1: $00
	dec c                                            ; $69a2: $0d
	db $fd                                           ; $69a3: $fd
	ld a, a                                          ; $69a4: $7f
	xor $fc                                          ; $69a5: $ee $fc
	sbc d                                            ; $69a7: $9a
	ld h, $12                                        ; $69a8: $26 $12
	ld [bc], a                                       ; $69aa: $02
	ld b, $80                                        ; $69ab: $06 $80
	ld a, d                                          ; $69ad: $7a
	ld [hl], $9a                                     ; $69ae: $36 $9a
	ld bc, $0121                                     ; $69b0: $01 $21 $01
	ld bc, $fe25                                     ; $69b3: $01 $25 $fe
	sub h                                            ; $69b6: $94
	ld d, d                                          ; $69b7: $52
	xor e                                            ; $69b8: $ab
	ld b, $02                                        ; $69b9: $06 $02
	add [hl]                                         ; $69bb: $86
	add d                                            ; $69bc: $82
	xor a                                            ; $69bd: $af
	ld d, d                                          ; $69be: $52
	inc b                                            ; $69bf: $04
	inc b                                            ; $69c0: $04
	nop                                              ; $69c1: $00
	ld [hl], e                                       ; $69c2: $73
	cp $78                                           ; $69c3: $fe $78
	ld d, l                                          ; $69c5: $55
	rst $38                                          ; $69c6: $ff
	sbc h                                            ; $69c7: $9c
	rrca                                             ; $69c8: $0f
	ld a, [hl]                                       ; $69c9: $7e
	cp l                                             ; $69ca: $bd
	ld l, l                                          ; $69cb: $6d
	jr c, @-$69                                      ; $69cc: $38 $95

	dec c                                            ; $69ce: $0d
	rlca                                             ; $69cf: $07
	ccf                                              ; $69d0: $3f
	ld l, a                                          ; $69d1: $6f
	ld c, c                                          ; $69d2: $49
	sbc e                                            ; $69d3: $9b
	inc de                                           ; $69d4: $13
	ld [bc], a                                       ; $69d5: $02
	dec b                                            ; $69d6: $05
	ld a, [de]                                       ; $69d7: $1a
	ld a, d                                          ; $69d8: $7a
	dec sp                                           ; $69d9: $3b
	add d                                            ; $69da: $82
	nop                                              ; $69db: $00
	ld [$c200], sp                                   ; $69dc: $08 $00 $c2
	push hl                                          ; $69df: $e5
	rst AddAOntoHL                                          ; $69e0: $ef
	or $56                                           ; $69e1: $f6 $56
	adc c                                            ; $69e3: $89
	xor c                                            ; $69e4: $a9
	jr nz, jr_04e_6a3c                               ; $69e5: $20 $55

	xor d                                            ; $69e7: $aa
	db $10                                           ; $69e8: $10
	ld bc, $1200                                     ; $69e9: $01 $00 $12
	nop                                              ; $69ec: $00
	nop                                              ; $69ed: $00
	xor d                                            ; $69ee: $aa
	ld d, l                                          ; $69ef: $55
	xor b                                            ; $69f0: $a8
	ld d, b                                          ; $69f1: $50
	xor b                                            ; $69f2: $a8
	ld d, h                                          ; $69f3: $54
	xor b                                            ; $69f4: $a8
	db $f4                                           ; $69f5: $f4
	ld a, b                                          ; $69f6: $78
	inc d                                            ; $69f7: $14
	ld a, e                                          ; $69f8: $7b
	dec l                                            ; $69f9: $2d
	ld a, a                                          ; $69fa: $7f
	dec h                                            ; $69fb: $25
	sbc h                                            ; $69fc: $9c
	dec bc                                           ; $69fd: $0b
	add a                                            ; $69fe: $87
	db $eb                                           ; $69ff: $eb
	ld b, $c0                                        ; $6a00: $06 $c0
	ld a, [hl]                                       ; $6a02: $7e
	add $7b                                          ; $6a03: $c6 $7b
	cp $9c                                           ; $6a05: $fe $9c
	ld l, e                                          ; $6a07: $6b
	ld [hl], e                                       ; $6a08: $73
	ld l, e                                          ; $6a09: $6b
	reti                                             ; $6a0a: $d9


	cp l                                             ; $6a0b: $bd
	reti                                             ; $6a0c: $d9


	rst $38                                          ; $6a0d: $ff
	ld a, h                                          ; $6a0e: $7c
	push hl                                          ; $6a0f: $e5
	ld [hl], a                                       ; $6a10: $77
	cp $7e                                           ; $6a11: $fe $7e
	or a                                             ; $6a13: $b7
	sbc e                                            ; $6a14: $9b
	xor d                                            ; $6a15: $aa
	sub $aa                                          ; $6a16: $d6 $aa
	sub $7a                                          ; $6a18: $d6 $7a
	ld [$f69e], sp                                   ; $6a1a: $08 $9e $f6
	ld [hl], d                                       ; $6a1d: $72
	ld l, c                                          ; $6a1e: $69
	ld a, a                                          ; $6a1f: $7f
	cp $9e                                           ; $6a20: $fe $9e
	and b                                            ; $6a22: $a0
	db $dd                                           ; $6a23: $dd
	add b                                            ; $6a24: $80
	ld a, a                                          ; $6a25: $7f
	ei                                               ; $6a26: $fb
	sbc l                                            ; $6a27: $9d
	and b                                            ; $6a28: $a0
	sub c                                            ; $6a29: $91
	reti                                             ; $6a2a: $d9


	ld b, b                                          ; $6a2b: $40
	sub a                                            ; $6a2c: $97
	cpl                                              ; $6a2d: $2f
	ld d, a                                          ; $6a2e: $57
	cpl                                              ; $6a2f: $2f
	ld e, a                                          ; $6a30: $5f
	xor a                                            ; $6a31: $af
	ld e, a                                          ; $6a32: $5f
	cp a                                             ; $6a33: $bf
	ld a, a                                          ; $6a34: $7f
	ld sp, hl                                        ; $6a35: $f9
	reti                                             ; $6a36: $d9


	cp $93                                           ; $6a37: $fe $93
	ld a, [bc]                                       ; $6a39: $0a
	inc d                                            ; $6a3a: $14
	ld a, [hl+]                                      ; $6a3b: $2a

jr_04e_6a3c:
	ld d, h                                          ; $6a3c: $54
	xor d                                            ; $6a3d: $aa
	ld d, h                                          ; $6a3e: $54
	cp d                                             ; $6a3f: $ba

Call_04e_6a40:
	ld e, h                                          ; $6a40: $5c
	ld l, $8f                                        ; $6a41: $2e $8f
	ld c, [hl]                                       ; $6a43: $4e
	add a                                            ; $6a44: $87
	ld a, e                                          ; $6a45: $7b
	cp $9a                                           ; $6a46: $fe $9a
	rst SubAFromHL                                          ; $6a48: $d7
	db $d3                                           ; $6a49: $d3
	di                                               ; $6a4a: $f3
	di                                               ; $6a4b: $f3
	ei                                               ; $6a4c: $fb
	ld [hl], a                                       ; $6a4d: $77
	cp $ff                                           ; $6a4e: $fe $ff
	ld c, [hl]                                       ; $6a50: $4e
	ret nz                                           ; $6a51: $c0

	sub a                                            ; $6a52: $97
	sub b                                            ; $6a53: $90
	or l                                             ; $6a54: $b5

jr_04e_6a55:
	xor b                                            ; $6a55: $a8
	push de                                          ; $6a56: $d5
	ret nc                                           ; $6a57: $d0

	push de                                          ; $6a58: $d5
	call nc, $7ad5                                   ; $6a59: $d4 $d5 $7a
	ret nz                                           ; $6a5c: $c0

	call c, $958f                                    ; $6a5d: $dc $8f $95
	xor c                                            ; $6a60: $a9
	ld e, a                                          ; $6a61: $5f
	xor l                                            ; $6a62: $ad
	ld d, l                                          ; $6a63: $55
	xor a                                            ; $6a64: $af
	ld d, [hl]                                       ; $6a65: $56
	xor d                                            ; $6a66: $aa
	ld d, [hl]                                       ; $6a67: $56
	db $fc                                           ; $6a68: $fc
	db $fc                                           ; $6a69: $fc
	sbc $fe                                          ; $6a6a: $de $fe
	halt                                             ; $6a6c: $76
	ld a, b                                          ; $6a6d: $78
	sbc b                                            ; $6a6e: $98
	sub d                                            ; $6a6f: $92
	nop                                              ; $6a70: $00
	sbc b                                            ; $6a71: $98
	sbc c                                            ; $6a72: $99
	ret z                                            ; $6a73: $c8

	adc a                                            ; $6a74: $8f
	ld a, [hl-]                                      ; $6a75: $3a
	ld [hl], l                                       ; $6a76: $75
	add sp, -$01                                     ; $6a77: $e8 $ff
	sbc [hl]                                         ; $6a79: $9e
	ld b, b                                          ; $6a7a: $40
	ld [hl], c                                       ; $6a7b: $71
	ld h, b                                          ; $6a7c: $60
	ld a, l                                          ; $6a7d: $7d
	pop hl                                           ; $6a7e: $e1
	ld a, l                                          ; $6a7f: $7d
	sub c                                            ; $6a80: $91
	ld a, [$f574]                                    ; $6a81: $fa $74 $f5
	ld a, d                                          ; $6a84: $7a
	ld [hl], $9e                                     ; $6a85: $36 $9e
	add e                                            ; $6a87: $83
	ld l, e                                          ; $6a88: $6b
	ldh a, [hDisp1_WY]                                     ; $6a89: $f0 $95
	ld a, h                                          ; $6a8b: $7c
	rst $38                                          ; $6a8c: $ff
	rst $38                                          ; $6a8d: $ff
	ld a, e                                          ; $6a8e: $7b
	ld a, a                                          ; $6a8f: $7f
	ld a, e                                          ; $6a90: $7b
	ccf                                              ; $6a91: $3f
	dec sp                                           ; $6a92: $3b
	dec sp                                           ; $6a93: $3b
	ld e, e                                          ; $6a94: $5b
	ld l, [hl]                                       ; $6a95: $6e
	jp nz, $0485                                     ; $6a96: $c2 $85 $04

	and h                                            ; $6a99: $a4

jr_04e_6a9a:
	rst SubAFromHL                                          ; $6a9a: $d7
	xor [hl]                                         ; $6a9b: $ae
	db $fd                                           ; $6a9c: $fd
	db $eb                                           ; $6a9d: $eb
	rst $38                                          ; $6a9e: $ff
	cp $25                                           ; $6a9f: $fe $25
	rst AddAOntoHL                                          ; $6aa1: $ef
	ld a, a                                          ; $6aa2: $7f
	ld a, a                                          ; $6aa3: $7f
	rra                                              ; $6aa4: $1f
	ld a, $2d                                        ; $6aa5: $3e $2d
	ld [bc], a                                       ; $6aa7: $02
	inc b                                            ; $6aa8: $04
	ld bc, $e57b                                     ; $6aa9: $01 $7b $e5
	add e                                            ; $6aac: $83
	sub $c4                                          ; $6aad: $d6 $c4
	adc h                                            ; $6aaf: $8c
	inc c                                            ; $6ab0: $0c
	jr @+$7d                                         ; $6ab1: $18 $7b

	or d                                             ; $6ab3: $b2
	sub d                                            ; $6ab4: $92
	ld bc, $6232                                     ; $6ab5: $01 $32 $62
	jr nz, jr_04e_6a9a                               ; $6ab8: $20 $e0

	ld d, l                                          ; $6aba: $55
	ei                                               ; $6abb: $fb
	db $dd                                           ; $6abc: $dd
	ld h, a                                          ; $6abd: $67
	ld d, e                                          ; $6abe: $53
	db $d3                                           ; $6abf: $d3
	pop bc                                           ; $6ac0: $c1
	add c                                            ; $6ac1: $81
	ld [hl], e                                       ; $6ac2: $73
	cp a                                             ; $6ac3: $bf
	rst SubAFromDE                                          ; $6ac4: $df
	jr nz, jr_04e_6a55                               ; $6ac5: $20 $8e

	ld l, b                                          ; $6ac7: $68
	ld [hl], b                                       ; $6ac8: $70
	db $fc                                           ; $6ac9: $fc
	ld b, h                                          ; $6aca: $44
	ld b, [hl]                                       ; $6acb: $46
	ld h, d                                          ; $6acc: $62
	ld hl, $1011                                     ; $6acd: $21 $11 $10
	add l                                            ; $6ad0: $85
	ld [bc], a                                       ; $6ad1: $02
	sub c                                            ; $6ad2: $91
	adc b                                            ; $6ad3: $88
	add hl, bc                                       ; $6ad4: $09
	inc c                                            ; $6ad5: $0c
	ld c, $0f                                        ; $6ad6: $0e $0f
	ld [hl-], a                                      ; $6ad8: $32
	ret nz                                           ; $6ad9: $c0

	ld a, l                                          ; $6ada: $7d
	inc de                                           ; $6adb: $13
	sbc [hl]                                         ; $6adc: $9e
	xor d                                            ; $6add: $aa
	ld h, d                                          ; $6ade: $62
	ret nz                                           ; $6adf: $c0

	ld a, d                                          ; $6ae0: $7a
	call nz, $779e                                   ; $6ae1: $c4 $9e $77
	ld a, e                                          ; $6ae4: $7b
	cp $dd                                           ; $6ae5: $fe $dd
	cp l                                             ; $6ae7: $bd
	sbc [hl]                                         ; $6ae8: $9e
	cp c                                             ; $6ae9: $b9
	ld a, e                                          ; $6aea: $7b
	cp $d1                                           ; $6aeb: $fe $d1
	rst $38                                          ; $6aed: $ff
	sbc l                                            ; $6aee: $9d
	ld a, [$77fe]                                    ; $6aef: $fa $fe $77
	cp $7f                                           ; $6af2: $fe $7f
	ld [hl], $7e                                     ; $6af4: $36 $7e
	ld l, c                                          ; $6af6: $69
	ld a, e                                          ; $6af7: $7b
	cp $7e                                           ; $6af8: $fe $7e
	rst AddAOntoHL                                          ; $6afa: $ef
	rst SubAFromDE                                          ; $6afb: $df
	xor d                                            ; $6afc: $aa
	sbc e                                            ; $6afd: $9b
	or l                                             ; $6afe: $b5
	xor d                                            ; $6aff: $aa
	or l                                             ; $6b00: $b5
	cp e                                             ; $6b01: $bb
	sbc $bf                                          ; $6b02: $de $bf
	reti                                             ; $6b04: $d9


	ld b, b                                          ; $6b05: $40
	reti                                             ; $6b06: $d9


	rst $38                                          ; $6b07: $ff

jr_04e_6b08:
	ld a, a                                          ; $6b08: $7f
	ld [hl], d                                       ; $6b09: $72
	ld a, [hl]                                       ; $6b0a: $7e
	dec hl                                           ; $6b0b: $2b
	ld a, a                                          ; $6b0c: $7f
	cp $9d                                           ; $6b0d: $fe $9d
	dec bc                                           ; $6b0f: $0b
	dec b                                            ; $6b10: $05
	reti                                             ; $6b11: $d9


	cp $8f                                           ; $6b12: $fe $8f
	cp [hl]                                          ; $6b14: $be
	ld a, h                                          ; $6b15: $7c
	cp $7c                                           ; $6b16: $fe $7c
	cp $fc                                           ; $6b18: $fe $fc
	cp $fc                                           ; $6b1a: $fe $fc
	ld l, [hl]                                       ; $6b1c: $6e
	rst SubAFromHL                                          ; $6b1d: $d7
	ld l, [hl]                                       ; $6b1e: $6e
	rst SubAFromHL                                          ; $6b1f: $d7
	ld b, [hl]                                       ; $6b20: $46
	rst SubAFromHL                                          ; $6b21: $d7
	ld h, [hl]                                       ; $6b22: $66
	rst SubAFromHL                                          ; $6b23: $d7
	halt                                             ; $6b24: $76
	call nz, $fbdd                                   ; $6b25: $c4 $dd $fb
	ld a, e                                          ; $6b28: $7b
	ld e, e                                          ; $6b29: $5b
	sbc [hl]                                         ; $6b2a: $9e
	ld h, b                                          ; $6b2b: $60
	db $dd                                           ; $6b2c: $dd
	jr nz, jr_04e_6b08                               ; $6b2d: $20 $d9

	sub e                                            ; $6b2f: $93
	sbc d                                            ; $6b30: $9a
	ret nc                                           ; $6b31: $d0

	call nc, $f4f0                                   ; $6b32: $d4 $f0 $f4
	jp nc, $be7a                                     ; $6b35: $d2 $7a $be

	reti                                             ; $6b38: $d9


	adc a                                            ; $6b39: $8f
	ld a, a                                          ; $6b3a: $7f
	sbc [hl]                                         ; $6b3b: $9e
	sbc c                                            ; $6b3c: $99
	ld d, l                                          ; $6b3d: $55
	xor e                                            ; $6b3e: $ab
	ld d, h                                          ; $6b3f: $54
	xor e                                            ; $6b40: $ab
	ld d, l                                          ; $6b41: $55
	xor e                                            ; $6b42: $ab
	ret c                                            ; $6b43: $d8

	rst $38                                          ; $6b44: $ff
	sbc b                                            ; $6b45: $98
	db $dd                                           ; $6b46: $dd
	db $ec                                           ; $6b47: $ec
	db $dd                                           ; $6b48: $dd
	xor [hl]                                         ; $6b49: $ae
	push de                                          ; $6b4a: $d5
	xor [hl]                                         ; $6b4b: $ae
	rst SubAFromHL                                          ; $6b4c: $d7
	reti                                             ; $6b4d: $d9


	rst $38                                          ; $6b4e: $ff
	sbc h                                            ; $6b4f: $9c
	push af                                          ; $6b50: $f5
	add b                                            ; $6b51: $80
	ret nz                                           ; $6b52: $c0

	ld a, e                                          ; $6b53: $7b
	cp $9d                                           ; $6b54: $fe $9d
	ret nc                                           ; $6b56: $d0

	xor b                                            ; $6b57: $a8
	reti                                             ; $6b58: $d9


	rst $38                                          ; $6b59: $ff
	sbc [hl]                                         ; $6b5a: $9e
	inc bc                                           ; $6b5b: $03
	call c, $9d01                                    ; $6b5c: $dc $01 $9d
	rlca                                             ; $6b5f: $07
	inc b                                            ; $6b60: $04
	reti                                             ; $6b61: $d9


	rst $38                                          ; $6b62: $ff
	sbc $fb                                          ; $6b63: $de $fb
	add b                                            ; $6b65: $80
	ld a, [hl]                                       ; $6b66: $7e
	db $fc                                           ; $6b67: $fc
	ld e, e                                          ; $6b68: $5b
	push bc                                          ; $6b69: $c5
	ld a, [hl-]                                      ; $6b6a: $3a
	inc b                                            ; $6b6b: $04
	inc b                                            ; $6b6c: $04
	add h                                            ; $6b6d: $84
	adc a                                            ; $6b6e: $8f
	cp a                                             ; $6b6f: $bf
	pop hl                                           ; $6b70: $e1
	add [hl]                                         ; $6b71: $86
	inc e                                            ; $6b72: $1c
	jp hl                                            ; $6b73: $e9


	rst $38                                          ; $6b74: $ff
	bit 7, [hl]                                      ; $6b75: $cb $7e
	ld a, h                                          ; $6b77: $7c
	set 6, c                                         ; $6b78: $cb $f1
	cp a                                             ; $6b7a: $bf
	rra                                              ; $6b7b: $1f
	ccf                                              ; $6b7c: $3f
	ld a, a                                          ; $6b7d: $7f
	add e                                            ; $6b7e: $83
	jp $ae7f                                         ; $6b7f: $c3 $7f $ae


	dec d                                            ; $6b82: $15
	jp c, $80b9                                      ; $6b83: $da $b9 $80

	rst SubAFromBC                                          ; $6b86: $e7
	ld a, a                                          ; $6b87: $7f
	db $dd                                           ; $6b88: $dd
	jp hl                                            ; $6b89: $e9


	rst $38                                          ; $6b8a: $ff
	cpl                                              ; $6b8b: $2f
	db $f4                                           ; $6b8c: $f4
	xor $ff                                          ; $6b8d: $ee $ff
	cp [hl]                                          ; $6b8f: $be
	cp [hl]                                          ; $6b90: $be
	rra                                              ; $6b91: $1f
	xor d                                            ; $6b92: $aa
	ld sp, hl                                        ; $6b93: $f9
	ld [hl], a                                       ; $6b94: $77
	ld c, a                                          ; $6b95: $4f
	rst FarCall                                          ; $6b96: $f7
	rst $38                                          ; $6b97: $ff
	ld sp, hl                                        ; $6b98: $f9
	or l                                             ; $6b99: $b5
	ei                                               ; $6b9a: $fb
	db $fd                                           ; $6b9b: $fd
	ccf                                              ; $6b9c: $3f
	ld a, [hl]                                       ; $6b9d: $7e
	ld a, a                                          ; $6b9e: $7f
	cp $7f                                           ; $6b9f: $fe $7f
	cp $37                                           ; $6ba1: $fe $37
	cpl                                              ; $6ba3: $2f
	scf                                              ; $6ba4: $37
	sub [hl]                                         ; $6ba5: $96
	push af                                          ; $6ba6: $f5
	ld l, d                                          ; $6ba7: $6a
	ld a, l                                          ; $6ba8: $7d
	ld a, [hl]                                       ; $6ba9: $7e
	ld e, l                                          ; $6baa: $5d
	ld e, b                                          ; $6bab: $58
	ld b, b                                          ; $6bac: $40
	xor [hl]                                         ; $6bad: $ae
	ld a, e                                          ; $6bae: $7b
	db $dd                                           ; $6baf: $dd
	rst $38                                          ; $6bb0: $ff
	sub l                                            ; $6bb1: $95
	rst GetHLinHL                                          ; $6bb2: $cf
	ld a, a                                          ; $6bb3: $7f
	adc l                                            ; $6bb4: $8d
	ld e, d                                          ; $6bb5: $5a
	xor l                                            ; $6bb6: $ad
	ld e, d                                          ; $6bb7: $5a
	xor c                                            ; $6bb8: $a9
	ld e, d                                          ; $6bb9: $5a
	adc c                                            ; $6bba: $89
	jr jr_04e_6c1f                                   ; $6bbb: $18 $62

	ret nz                                           ; $6bbd: $c0

	ld a, d                                          ; $6bbe: $7a
	call nz, $c056                                   ; $6bbf: $c4 $56 $c0
	ld a, d                                          ; $6bc2: $7a
	call nz, Call_04e_6f9e                           ; $6bc3: $c4 $9e $6f
	ld [hl], a                                       ; $6bc6: $77
	db $fc                                           ; $6bc7: $fc
	ld a, d                                          ; $6bc8: $7a
	call nz, $b9df                                   ; $6bc9: $c4 $df $b9
	ld a, e                                          ; $6bcc: $7b
	db $fc                                           ; $6bcd: $fc
	pop de                                           ; $6bce: $d1
	rst $38                                          ; $6bcf: $ff
	ld a, c                                          ; $6bd0: $79
	ld a, l                                          ; $6bd1: $7d
	ld [hl], e                                       ; $6bd2: $73
	cp $7f                                           ; $6bd3: $fe $7f
	jr z, jr_04e_6c53                                ; $6bd5: $28 $7c

	inc [hl]                                         ; $6bd7: $34
	sbc [hl]                                         ; $6bd8: $9e
	db $fc                                           ; $6bd9: $fc
	ld a, e                                          ; $6bda: $7b
	cp $d9                                           ; $6bdb: $fe $d9
	cp a                                             ; $6bdd: $bf
	sbc $40                                          ; $6bde: $de $40
	sbc d                                            ; $6be0: $9a
	ld d, c                                          ; $6be1: $51
	ld c, b                                          ; $6be2: $48
	ld d, l                                          ; $6be3: $55
	ld c, e                                          ; $6be4: $4b
	ld d, l                                          ; $6be5: $55
	reti                                             ; $6be6: $d9


	rst $38                                          ; $6be7: $ff
	sbc d                                            ; $6be8: $9a
	ld a, [bc]                                       ; $6be9: $0a
	dec b                                            ; $6bea: $05
	rrca                                             ; $6beb: $0f
	rla                                              ; $6bec: $17
	xor a                                            ; $6bed: $af
	ld a, c                                          ; $6bee: $79
	halt                                             ; $6bef: $76
	ret c                                            ; $6bf0: $d8

	cp $7a                                           ; $6bf1: $fe $7a
	call nz, $fe77                                   ; $6bf3: $c4 $77 $fe
	ld a, [hl]                                       ; $6bf6: $7e
	add $9d                                          ; $6bf7: $c6 $9d
	ld h, [hl]                                       ; $6bf9: $66
	push de                                          ; $6bfa: $d5
	ld [hl], a                                       ; $6bfb: $77
	cp $d9                                           ; $6bfc: $fe $d9
	ei                                               ; $6bfe: $fb
	ld c, c                                          ; $6bff: $49
	nop                                              ; $6c00: $00
	rst SubAFromDE                                          ; $6c01: $df
	ld d, l                                          ; $6c02: $55
	rst SubAFromDE                                          ; $6c03: $df
	ld b, h                                          ; $6c04: $44
	sbc [hl]                                         ; $6c05: $9e
	ld b, l                                          ; $6c06: $45
	db $db                                           ; $6c07: $db
	ld d, l                                          ; $6c08: $55
	sbc [hl]                                         ; $6c09: $9e
	ld d, h                                          ; $6c0a: $54
	ld h, a                                          ; $6c0b: $67
	rst FarCall                                          ; $6c0c: $f7
	ld a, a                                          ; $6c0d: $7f
	or $67                                           ; $6c0e: $f6 $67
	rst FarCall                                          ; $6c10: $f7
	reti                                             ; $6c11: $d9


	ld d, l                                          ; $6c12: $55
	rst SubAFromDE                                          ; $6c13: $df
	ld [hl], a                                       ; $6c14: $77
	rst SubAFromDE                                          ; $6c15: $df
	ld d, l                                          ; $6c16: $55
	call c, $9e33                                    ; $6c17: $dc $33 $9e
	scf                                              ; $6c1a: $37
	ld a, e                                          ; $6c1b: $7b
	or $9e                                           ; $6c1c: $f6 $9e
	ld d, e                                          ; $6c1e: $53

jr_04e_6c1f:
	call c, $df33                                    ; $6c1f: $dc $33 $df
	ld h, [hl]                                       ; $6c22: $66
	sub h                                            ; $6c23: $94
	ld h, a                                          ; $6c24: $67
	ld b, h                                          ; $6c25: $44
	inc sp                                           ; $6c26: $33
	inc sp                                           ; $6c27: $33
	ld [hl], $63                                     ; $6c28: $36 $63
	inc sp                                           ; $6c2a: $33
	ld [hl], $66                                     ; $6c2b: $36 $66
	ld h, [hl]                                       ; $6c2d: $66
	ld h, e                                          ; $6c2e: $63
	ld [hl], a                                       ; $6c2f: $77
	or $9e                                           ; $6c30: $f6 $9e
	ld h, [hl]                                       ; $6c32: $66
	ld [hl], a                                       ; $6c33: $77
	db $ec                                           ; $6c34: $ec
	ld a, a                                          ; $6c35: $7f
	or $df                                           ; $6c36: $f6 $df
	ld b, h                                          ; $6c38: $44
	sbc l                                            ; $6c39: $9d
	ld h, [hl]                                       ; $6c3a: $66
	ld [hl], a                                       ; $6c3b: $77
	ld h, a                                          ; $6c3c: $67
	or $9c                                           ; $6c3d: $f6 $9c
	ld [hl], $77                                     ; $6c3f: $36 $77
	ld [hl], e                                       ; $6c41: $73
	ld h, a                                          ; $6c42: $67
	db $ec                                           ; $6c43: $ec
	ld a, a                                          ; $6c44: $7f
	ld a, [$f677]                                    ; $6c45: $fa $77 $f6
	add b                                            ; $6c48: $80
	dec b                                            ; $6c49: $05
	sbc l                                            ; $6c4a: $9d
	inc bc                                           ; $6c4b: $03
	rst $38                                          ; $6c4c: $ff
	ld l, a                                          ; $6c4d: $6f
	cp $85                                           ; $6c4e: $fe $85
	dec bc                                           ; $6c50: $0b
	rst FarCall                                          ; $6c51: $f7
	ld d, a                                          ; $6c52: $57

jr_04e_6c53:
	xor e                                            ; $6c53: $ab
	xor e                                            ; $6c54: $ab
	ld d, a                                          ; $6c55: $57
	ld d, h                                          ; $6c56: $54
	xor a                                            ; $6c57: $af
	or b                                             ; $6c58: $b0
	rst $38                                          ; $6c59: $ff
	or b                                             ; $6c5a: $b0
	rst $38                                          ; $6c5b: $ff
	ldh a, [rIE]                                     ; $6c5c: $f0 $ff
	ld a, [$f5f5]                                    ; $6c5e: $fa $f5 $f5
	ld a, [$f5fa]                                    ; $6c61: $fa $fa $f5
	or l                                             ; $6c64: $b5
	ld a, [$1daa]                                    ; $6c65: $fa $aa $1d
	nop                                              ; $6c68: $00
	rst $38                                          ; $6c69: $ff
	inc bc                                           ; $6c6a: $03
	cp $23                                           ; $6c6b: $fe $23
	cp $9b                                           ; $6c6d: $fe $9b
	ld [bc], a                                       ; $6c6f: $02
	db $fd                                           ; $6c70: $fd
	dec d                                            ; $6c71: $15
	ld [$f25f], a                                    ; $6c72: $ea $5f $f2
	ld a, a                                          ; $6c75: $7f
	db $f4                                           ; $6c76: $f4
	sbc e                                            ; $6c77: $9b
	xor d                                            ; $6c78: $aa
	ld d, l                                          ; $6c79: $55
	ld d, l                                          ; $6c7a: $55
	xor d                                            ; $6c7b: $aa
	ld l, a                                          ; $6c7c: $6f

Call_04e_6c7d:
	db $f4                                           ; $6c7d: $f4
	sbc l                                            ; $6c7e: $9d
	dec b                                            ; $6c7f: $05
	ld a, [$f477]                                    ; $6c80: $fa $77 $f4
	ld h, a                                          ; $6c83: $67
	ldh a, [$7f]                                     ; $6c84: $f0 $7f
	ret c                                            ; $6c86: $d8

	ld l, a                                          ; $6c87: $6f
	db $f4                                           ; $6c88: $f4
	ld h, a                                          ; $6c89: $67
	ldh a, [$67]                                     ; $6c8a: $f0 $67
	db $f4                                           ; $6c8c: $f4
	ld h, a                                          ; $6c8d: $67
	ldh a, [$9d]                                     ; $6c8e: $f0 $9d
	and b                                            ; $6c90: $a0
	ld e, a                                          ; $6c91: $5f
	ld c, a                                          ; $6c92: $4f
	ldh a, [rPCM34]                                  ; $6c93: $f0 $77
	cp $9d                                           ; $6c95: $fe $9d
	xor b                                            ; $6c97: $a8
	ld d, a                                          ; $6c98: $57
	ld c, a                                          ; $6c99: $4f
	ldh a, [rPCM34]                                  ; $6c9a: $f0 $77
	cp $98                                           ; $6c9c: $fe $98
	add b                                            ; $6c9e: $80
	ld a, a                                          ; $6c9f: $7f
	ld d, h                                          ; $6ca0: $54
	xor e                                            ; $6ca1: $ab
	ld a, [hl+]                                      ; $6ca2: $2a
	rst $38                                          ; $6ca3: $ff
	dec b                                            ; $6ca4: $05
	ld d, e                                          ; $6ca5: $53

jr_04e_6ca6:
	ld a, h                                          ; $6ca6: $7c
	sbc h                                            ; $6ca7: $9c
	xor d                                            ; $6ca8: $aa
	rst $38                                          ; $6ca9: $ff
	ld d, l                                          ; $6caa: $55
	ld a, e                                          ; $6cab: $7b
	db $fc                                           ; $6cac: $fc
	sbc d                                            ; $6cad: $9a
	dec d                                            ; $6cae: $15
	rst $38                                          ; $6caf: $ff
	ld a, [bc]                                       ; $6cb0: $0a
	rst $38                                          ; $6cb1: $ff
	ld bc, $f05b                                     ; $6cb2: $01 $5b $f0
	ld h, a                                          ; $6cb5: $67
	db $fc                                           ; $6cb6: $fc
	ld a, a                                          ; $6cb7: $7f
	add sp, $57                                      ; $6cb8: $e8 $57
	ldh a, [$9c]                                     ; $6cba: $f0 $9c
	xor e                                            ; $6cbc: $ab
	rst $38                                          ; $6cbd: $ff
	ld e, a                                          ; $6cbe: $5f
	ld e, e                                          ; $6cbf: $5b
	ldh a, [$99]                                     ; $6cc0: $f0 $99
	nop                                              ; $6cc2: $00
	jp nz, $c1ea                                     ; $6cc3: $c2 $ea $c1

	push de                                          ; $6cc6: $d5
	ldh [$5f], a                                     ; $6cc7: $e0 $5f
	ldh a, [$99]                                     ; $6cc9: $f0 $99
	ld d, a                                          ; $6ccb: $57
	nop                                              ; $6ccc: $00
	xor d                                            ; $6ccd: $aa
	nop                                              ; $6cce: $00
	push de                                          ; $6ccf: $d5
	nop                                              ; $6cd0: $00
	ld e, e                                          ; $6cd1: $5b
	ldh [$7f], a                                     ; $6cd2: $e0 $7f
	db $fc                                           ; $6cd4: $fc
	sbc e                                            ; $6cd5: $9b
	nop                                              ; $6cd6: $00
	ld d, l                                          ; $6cd7: $55
	nop                                              ; $6cd8: $00
	adc d                                            ; $6cd9: $8a
	sbc $ff                                          ; $6cda: $de $ff
	sbc [hl]                                         ; $6cdc: $9e
	rst FarCall                                          ; $6cdd: $f7
	sbc $ff                                          ; $6cde: $de $ff
	ld h, a                                          ; $6ce0: $67
	ld [$849e], a                                    ; $6ce1: $ea $9e $84
	sbc $ff                                          ; $6ce4: $de $ff
	ld a, a                                          ; $6ce6: $7f
	cp b                                             ; $6ce7: $b8
	ld e, a                                          ; $6ce8: $5f
	ldh a, [$9a]                                     ; $6ce9: $f0 $9a
	rlca                                             ; $6ceb: $07
	ld hl, sp-$01                                    ; $6cec: $f8 $ff
	rst $38                                          ; $6cee: $ff
	dec hl                                           ; $6cef: $2b
	ld h, e                                          ; $6cf0: $63
	ldh a, [$7f]                                     ; $6cf1: $f0 $7f
	call z, $fd77                                    ; $6cf3: $cc $77 $fd
	db $dd                                           ; $6cf6: $dd
	rst $38                                          ; $6cf7: $ff
	ld h, a                                          ; $6cf8: $67
	ldh [hDisp1_OBP1], a                                     ; $6cf9: $e0 $94
	ld hl, sp+$05                                    ; $6cfb: $f8 $05
	db $fc                                           ; $6cfd: $fc
	ld a, [$f9dc]                                    ; $6cfe: $fa $dc $f9
	ld hl, sp-$12                                    ; $6d01: $f8 $ee
	ld a, b                                          ; $6d03: $78
	db $ed                                           ; $6d04: $ed
	or b                                             ; $6d05: $b0
	ld [hl], e                                       ; $6d06: $73
	db $fc                                           ; $6d07: $fc
	ld h, a                                          ; $6d08: $67
	jr jr_04e_6ca6                                   ; $6d09: $18 $9b

	xor e                                            ; $6d0b: $ab
	ld d, h                                          ; $6d0c: $54
	ld e, a                                          ; $6d0d: $5f
	and b                                            ; $6d0e: $a0
	ld [hl], a                                       ; $6d0f: $77
	ld c, a                                          ; $6d10: $4f
	ld l, a                                          ; $6d11: $6f
	ldh a, [$6f]                                     ; $6d12: $f0 $6f
	db $f4                                           ; $6d14: $f4
	ld l, a                                          ; $6d15: $6f
	ldh a, [$9d]                                     ; $6d16: $f0 $9d
	ld d, a                                          ; $6d18: $57
	xor b                                            ; $6d19: $a8
	ld d, a                                          ; $6d1a: $57
	rra                                              ; $6d1b: $1f
	ld [hl], a                                       ; $6d1c: $77
	ldh [rBGP], a                                    ; $6d1d: $e0 $47
	ldh a, [$9d]                                     ; $6d1f: $f0 $9d
	ld [$4f15], a                                    ; $6d21: $ea $15 $4f
	ldh a, [rPCM34]                                  ; $6d24: $f0 $77
	db $fc                                           ; $6d26: $fc
	sbc [hl]                                         ; $6d27: $9e
	cp $6f                                           ; $6d28: $fe $6f
	ld bc, $f063                                     ; $6d2a: $01 $63 $f0
	ld a, a                                          ; $6d2d: $7f
	db $fc                                           ; $6d2e: $fc
	sbc h                                            ; $6d2f: $9c
	push de                                          ; $6d30: $d5
	ld a, [hl+]                                      ; $6d31: $2a
	ld a, [$d57a]                                    ; $6d32: $fa $7a $d5
	ld d, [hl]                                       ; $6d35: $56
	sub h                                            ; $6d36: $94
	ld [hl], a                                       ; $6d37: $77
	db $fc                                           ; $6d38: $fc
	ld a, [hl]                                       ; $6d39: $7e
	cp h                                             ; $6d3a: $bc
	sbc l                                            ; $6d3b: $9d
	ld d, b                                          ; $6d3c: $50
	xor a                                            ; $6d3d: $af
	ld h, [hl]                                       ; $6d3e: $66
	and h                                            ; $6d3f: $a4
	ld e, [hl]                                       ; $6d40: $5e
	and b                                            ; $6d41: $a0
	ld a, a                                          ; $6d42: $7f
	jp $8298                                         ; $6d43: $c3 $98 $82


	ld a, a                                          ; $6d46: $7f
	ld d, l                                          ; $6d47: $55
	cp a                                             ; $6d48: $bf
	xor d                                            ; $6d49: $aa
	ld a, a                                          ; $6d4a: $7f
	ld d, l                                          ; $6d4b: $55
	ld a, d                                          ; $6d4c: $7a
	cp b                                             ; $6d4d: $b8
	sbc b                                            ; $6d4e: $98
	rla                                              ; $6d4f: $17
	rst $38                                          ; $6d50: $ff
	cpl                                              ; $6d51: $2f
	rst $38                                          ; $6d52: $ff
	ld d, a                                          ; $6d53: $57
	rst $38                                          ; $6d54: $ff
	xor a                                            ; $6d55: $af
	ld l, e                                          ; $6d56: $6b
	db $fc                                           ; $6d57: $fc
	pop de                                           ; $6d58: $d1
	rst $38                                          ; $6d59: $ff
	sbc h                                            ; $6d5a: $9c
	ldh [$f0], a                                     ; $6d5b: $e0 $f0
	rst $38                                          ; $6d5d: $ff
	sbc $f0                                          ; $6d5e: $de $f0
	sbc h                                            ; $6d60: $9c
	ld a, [$f3f8]                                    ; $6d61: $fa $f8 $f3
	ld l, e                                          ; $6d64: $6b
	cp $9e                                           ; $6d65: $fe $9e
	add b                                            ; $6d67: $80
	ld a, e                                          ; $6d68: $7b
	pop bc                                           ; $6d69: $c1
	rst $38                                          ; $6d6a: $ff
	sub h                                            ; $6d6b: $94
	ldh [rP1], a                                     ; $6d6c: $e0 $00
	ld [hl], l                                       ; $6d6e: $75
	nop                                              ; $6d6f: $00
	xor b                                            ; $6d70: $a8
	ld b, b                                          ; $6d71: $40
	cp h                                             ; $6d72: $bc
	ld b, b                                          ; $6d73: $40
	cp h                                             ; $6d74: $bc
	ld b, a                                          ; $6d75: $47
	nop                                              ; $6d76: $00
	ld [hl], e                                       ; $6d77: $73
	ldh a, [rIE]                                     ; $6d78: $f0 $ff
	ld a, [hl]                                       ; $6d7a: $7e
	or d                                             ; $6d7b: $b2
	sbc c                                            ; $6d7c: $99
	cp a                                             ; $6d7d: $bf
	nop                                              ; $6d7e: $00
	add c                                            ; $6d7f: $81
	nop                                              ; $6d80: $00
	ld l, a                                          ; $6d81: $6f
	sub b                                            ; $6d82: $90
	ld h, [hl]                                       ; $6d83: $66
	ld hl, sp-$68                                    ; $6d84: $f8 $98
	ld d, h                                          ; $6d86: $54
	rst $38                                          ; $6d87: $ff
	xor b                                            ; $6d88: $a8
	rst $38                                          ; $6d89: $ff
	ld d, b                                          ; $6d8a: $50
	rst $38                                          ; $6d8b: $ff
	and b                                            ; $6d8c: $a0
	ld a, e                                          ; $6d8d: $7b
	db $fc                                           ; $6d8e: $fc
	sbc [hl]                                         ; $6d8f: $9e
	add b                                            ; $6d90: $80
	ld l, c                                          ; $6d91: $69
	sbc $99                                          ; $6d92: $de $99
	ld a, [bc]                                       ; $6d94: $0a
	push af                                          ; $6d95: $f5
	dec d                                            ; $6d96: $15
	ld [$d52a], a                                    ; $6d97: $ea $2a $d5
	ld l, d                                          ; $6d9a: $6a
	ld a, [hl-]                                      ; $6d9b: $3a
	ld l, e                                          ; $6d9c: $6b
	ld [hl], d                                       ; $6d9d: $72
	sbc d                                            ; $6d9e: $9a
	cp [hl]                                          ; $6d9f: $be
	ld b, c                                          ; $6da0: $41
	dec d                                            ; $6da1: $15
	rst $38                                          ; $6da2: $ff
	ld [bc], a                                       ; $6da3: $02
	ld a, e                                          ; $6da4: $7b
	ld [hl], d                                       ; $6da5: $72
	ld l, a                                          ; $6da6: $6f
	ld e, d                                          ; $6da7: $5a
	ld a, [hl]                                       ; $6da8: $7e
	ld [de], a                                       ; $6da9: $12
	ld a, a                                          ; $6daa: $7f
	db $ec                                           ; $6dab: $ec
	adc a                                            ; $6dac: $8f
	ld a, c                                          ; $6dad: $79
	db $ec                                           ; $6dae: $ec
	or d                                             ; $6daf: $b2
	db $ec                                           ; $6db0: $ec
	ld [hl], l                                       ; $6db1: $75
	add sp, -$4a                                     ; $6db2: $e8 $b6
	add sp, $7d                                      ; $6db4: $e8 $7d
	ldh [$be], a                                     ; $6db6: $e0 $be
	ldh [$7d], a                                     ; $6db8: $e0 $7d
	ldh [$3e], a                                     ; $6dba: $e0 $3e
	ldh [$5f], a                                     ; $6dbc: $e0 $5f
	ld b, $7d                                        ; $6dbe: $06 $7d
	add l                                            ; $6dc0: $85
	ld a, [hl]                                       ; $6dc1: $7e
	ld h, d                                          ; $6dc2: $62
	ld h, l                                          ; $6dc3: $65
	pop hl                                           ; $6dc4: $e1
	sbc [hl]                                         ; $6dc5: $9e
	ld a, [$f473]                                    ; $6dc6: $fa $73 $f4
	ld h, a                                          ; $6dc9: $67
	ldh a, [$7a]                                     ; $6dca: $f0 $7a
	ld a, [hl-]                                      ; $6dcc: $3a
	ld d, e                                          ; $6dcd: $53
	ldh a, [rPCM12]                                  ; $6dce: $f0 $76
	ld h, $57                                        ; $6dd0: $26 $57
	ldh a, [$7f]                                     ; $6dd2: $f0 $7f
	cp $9e                                           ; $6dd4: $fe $9e
	xor a                                            ; $6dd6: $af
	ld c, e                                          ; $6dd7: $4b
	ldh a, [$7f]                                     ; $6dd8: $f0 $7f
	cp $9c                                           ; $6dda: $fe $9c
	ld a, a                                          ; $6ddc: $7f
	nop                                              ; $6ddd: $00
	xor e                                            ; $6dde: $ab
	ld d, e                                          ; $6ddf: $53
	ldh a, [$6f]                                     ; $6de0: $f0 $6f
	db $ec                                           ; $6de2: $ec
	ld a, a                                          ; $6de3: $7f
	inc a                                            ; $6de4: $3c
	ld a, a                                          ; $6de5: $7f
	ld a, [hl]                                       ; $6de6: $7e
	sbc l                                            ; $6de7: $9d
	push af                                          ; $6de8: $f5
	ld a, [bc]                                       ; $6de9: $0a
	ld h, [hl]                                       ; $6dea: $66
	and h                                            ; $6deb: $a4
	ld d, [hl]                                       ; $6dec: $56
	and b                                            ; $6ded: $a0
	ld a, [hl]                                       ; $6dee: $7e
	ld a, h                                          ; $6def: $7c
	ld a, a                                          ; $6df0: $7f
	add sp, $7e                                      ; $6df1: $e8 $7e
	and b                                            ; $6df3: $a0
	sbc h                                            ; $6df4: $9c
	db $fd                                           ; $6df5: $fd
	ld [bc], a                                       ; $6df6: $02
	ld a, [hl+]                                      ; $6df7: $2a
	ld a, e                                          ; $6df8: $7b
	ld [hl+], a                                      ; $6df9: $22
	ld d, a                                          ; $6dfa: $57
	db $fc                                           ; $6dfb: $fc
	ld h, [hl]                                       ; $6dfc: $66
	ret z                                            ; $6dfd: $c8

	ld h, $c0                                        ; $6dfe: $26 $c0
	ld h, [hl]                                       ; $6e00: $66
	ret z                                            ; $6e01: $c8

	ld [hl], a                                       ; $6e02: $77
	cp $9e                                           ; $6e03: $fe $9e
	rst FarCall                                          ; $6e05: $f7
	ld a, e                                          ; $6e06: $7b
	cp $8c                                           ; $6e07: $fe $8c
	cp a                                             ; $6e09: $bf
	ld b, b                                          ; $6e0a: $40
	or b                                             ; $6e0b: $b0
	ld b, b                                          ; $6e0c: $40
	xor b                                            ; $6e0d: $a8
	ld d, b                                          ; $6e0e: $50
	cp a                                             ; $6e0f: $bf
	ld c, a                                          ; $6e10: $4f
	cp a                                             ; $6e11: $bf
	ld c, a                                          ; $6e12: $4f
	cp e                                             ; $6e13: $bb
	ld b, h                                          ; $6e14: $44
	cp [hl]                                          ; $6e15: $be
	ld b, h                                          ; $6e16: $44
	cp e                                             ; $6e17: $bb
	ld b, a                                          ; $6e18: $47
	ld hl, sp+$07                                    ; $6e19: $f8 $07
	ld a, a                                          ; $6e1b: $7f
	halt                                             ; $6e1c: $76
	or b                                             ; $6e1d: $b0
	sbc $ff                                          ; $6e1e: $de $ff
	sbc c                                            ; $6e20: $99
	adc a                                            ; $6e21: $8f
	ld a, a                                          ; $6e22: $7f

Call_04e_6e23:
	jr nz, jr_04e_6e3d                               ; $6e23: $20 $18

	xor c                                            ; $6e25: $a9
	sbc $76                                          ; $6e26: $de $76
	call z, Call_04e_409e                            ; $6e28: $cc $9e $40
	ld e, e                                          ; $6e2b: $5b
	db $fc                                           ; $6e2c: $fc
	ld a, a                                          ; $6e2d: $7f
	add [hl]                                         ; $6e2e: $86
	sbc c                                            ; $6e2f: $99
	dec hl                                           ; $6e30: $2b
	call nc, $a857                                   ; $6e31: $d4 $57 $a8
	xor a                                            ; $6e34: $af
	ld d, b                                          ; $6e35: $50
	ld [hl], a                                       ; $6e36: $77
	db $fc                                           ; $6e37: $fc
	ld a, l                                          ; $6e38: $7d
	jp z, $fc7f                                      ; $6e39: $ca $7f $fc

	ld b, h                                          ; $6e3c: $44

jr_04e_6e3d:
	ld l, e                                          ; $6e3d: $6b
	sbc l                                            ; $6e3e: $9d
	call nc, $6f2b                                   ; $6e3f: $d4 $2b $6f
	ld h, [hl]                                       ; $6e42: $66
	ld l, a                                          ; $6e43: $6f
	ld h, d                                          ; $6e44: $62
	ld a, a                                          ; $6e45: $7f
	db $fc                                           ; $6e46: $fc
	sbc e                                            ; $6e47: $9b
	ld a, h                                          ; $6e48: $7c
	ldh [$3c], a                                     ; $6e49: $e0 $3c
	ldh [rPCM34], a                                  ; $6e4b: $e0 $77
	db $fc                                           ; $6e4d: $fc
	ld a, a                                          ; $6e4e: $7f
	cp $99                                           ; $6e4f: $fe $99
	cp h                                             ; $6e51: $bc
	ld h, b                                          ; $6e52: $60
	inc [hl]                                         ; $6e53: $34
	add sp, -$4c                                     ; $6e54: $e8 $b4
	ld l, b                                          ; $6e56: $68
	ld h, a                                          ; $6e57: $67
	ld [$fc6f], sp                                   ; $6e58: $08 $6f $fc
	sbc [hl]                                         ; $6e5b: $9e
	and b                                            ; $6e5c: $a0
	ld e, e                                          ; $6e5d: $5b
	db $f4                                           ; $6e5e: $f4
	ld a, a                                          ; $6e5f: $7f
	db $fc                                           ; $6e60: $fc
	db $fd                                           ; $6e61: $fd
	ld e, a                                          ; $6e62: $5f
	ldh a, [$fb]                                     ; $6e63: $f0 $fb
	ld d, a                                          ; $6e65: $57
	ldh [$9e], a                                     ; $6e66: $e0 $9e
	dec d                                            ; $6e68: $15
	ld c, e                                          ; $6e69: $4b
	ldh a, [$37]                                     ; $6e6a: $f0 $37
	db $fc                                           ; $6e6c: $fc
	ld a, [hl]                                       ; $6e6d: $7e
	sub h                                            ; $6e6e: $94
	ld l, [hl]                                       ; $6e6f: $6e
	cp b                                             ; $6e70: $b8
	ld d, [hl]                                       ; $6e71: $56
	and b                                            ; $6e72: $a0
	halt                                             ; $6e73: $76
	cp b                                             ; $6e74: $b8
	sbc [hl]                                         ; $6e75: $9e
	ld e, a                                          ; $6e76: $5f
	ld a, d                                          ; $6e77: $7a
	adc h                                            ; $6e78: $8c
	ld [hl], a                                       ; $6e79: $77
	db $e4                                           ; $6e7a: $e4
	halt                                             ; $6e7b: $76
	or h                                             ; $6e7c: $b4
	ld d, a                                          ; $6e7d: $57
	db $fc                                           ; $6e7e: $fc
	ld [bc], a                                       ; $6e7f: $02
	ret nz                                           ; $6e80: $c0

	pop de                                           ; $6e81: $d1
	rst $38                                          ; $6e82: $ff
	sbc d                                            ; $6e83: $9a
	ld hl, sp-$05                                    ; $6e84: $f8 $fb
	db $fc                                           ; $6e86: $fc
	ld hl, sp-$01                                    ; $6e87: $f8 $ff
	ld l, a                                          ; $6e89: $6f
	cp $dd                                           ; $6e8a: $fe $dd
	rst $38                                          ; $6e8c: $ff
	sub e                                            ; $6e8d: $93
	cp b                                             ; $6e8e: $b8
	ld b, h                                          ; $6e8f: $44
	sub [hl]                                         ; $6e90: $96
	ld l, a                                          ; $6e91: $6f
	sub e                                            ; $6e92: $93
	ld l, a                                          ; $6e93: $6f
	ld d, e                                          ; $6e94: $53
	rst AddAOntoHL                                          ; $6e95: $ef
	ld d, a                                          ; $6e96: $57
	rst AddAOntoHL                                          ; $6e97: $ef
	ld c, a                                          ; $6e98: $4f
	ldh a, [$dd]                                     ; $6e99: $f0 $dd
	rst $38                                          ; $6e9b: $ff
	sbc b                                            ; $6e9c: $98
	ld c, h                                          ; $6e9d: $4c
	inc sp                                           ; $6e9e: $33
	call nc, $cf38                                   ; $6e9f: $d4 $38 $cf
	rst $38                                          ; $6ea2: $ff
	ccf                                              ; $6ea3: $3f
	ld [hl], l                                       ; $6ea4: $75
	ld d, [hl]                                       ; $6ea5: $56
	sbc l                                            ; $6ea6: $9d
	rra                                              ; $6ea7: $1f
	ldh a, [c]                                       ; $6ea8: $f2
	sbc $ff                                          ; $6ea9: $de $ff
	halt                                             ; $6eab: $76
	call z, $886d                                    ; $6eac: $cc $6d $88
	ld a, l                                          ; $6eaf: $7d
	add b                                            ; $6eb0: $80
	ld a, l                                          ; $6eb1: $7d
	ld a, h                                          ; $6eb2: $7c
	ld a, l                                          ; $6eb3: $7d
	ld a, b                                          ; $6eb4: $78
	halt                                             ; $6eb5: $76
	call z, $c47e                                    ; $6eb6: $cc $7e $c4
	sub l                                            ; $6eb9: $95
	cpl                                              ; $6eba: $2f
	ret nc                                           ; $6ebb: $d0

	ld d, a                                          ; $6ebc: $57
	xor b                                            ; $6ebd: $a8
	dec hl                                           ; $6ebe: $2b

jr_04e_6ebf:
	call nc, $ea15                                   ; $6ebf: $d4 $15 $ea
	adc d                                            ; $6ec2: $8a
	push af                                          ; $6ec3: $f5
	ld b, [hl]                                       ; $6ec4: $46
	ret nz                                           ; $6ec5: $c0

	halt                                             ; $6ec6: $76
	call z, $c476                                    ; $6ec7: $cc $76 $c4
	adc h                                            ; $6eca: $8c
	db $f4                                           ; $6ecb: $f4
	dec bc                                           ; $6ecc: $0b
	ld [$d415], a                                    ; $6ecd: $ea $15 $d4
	dec hl                                           ; $6ed0: $2b
	xor b                                            ; $6ed1: $a8
	ld d, a                                          ; $6ed2: $57
	inc [hl]                                         ; $6ed3: $34
	add sp, $34                                      ; $6ed4: $e8 $34
	add sp, $30                                      ; $6ed6: $e8 $30
	db $ec                                           ; $6ed8: $ec
	jr c, jr_04e_6ebf                                ; $6ed9: $38 $e4

	inc a                                            ; $6edb: $3c
	ldh [$34], a                                     ; $6edc: $e0 $34
	ld [hl], e                                       ; $6ede: $73
	cp $e0                                           ; $6edf: $fe $e0
	pop bc                                           ; $6ee1: $c1
	sbc [hl]                                         ; $6ee2: $9e
	dec b                                            ; $6ee3: $05
	ldh a, [c]                                       ; $6ee4: $f2
	ld a, [hl]                                       ; $6ee5: $7e
	call c, $2a9e                                    ; $6ee6: $dc $9e $2a
	ld d, e                                          ; $6ee9: $53
	db $ec                                           ; $6eea: $ec
	ld e, [hl]                                       ; $6eeb: $5e
	call nz, $0a9e                                   ; $6eec: $c4 $9e $0a
	ld a, e                                          ; $6eef: $7b
	add sp, -$62                                     ; $6ef0: $e8 $9e
	ld [bc], a                                       ; $6ef2: $02
	ld b, d                                          ; $6ef3: $42
	and b                                            ; $6ef4: $a0
	ld h, [hl]                                       ; $6ef5: $66
	or h                                             ; $6ef6: $b4
	ld h, [hl]                                       ; $6ef7: $66
	or b                                             ; $6ef8: $b0
	ld [bc], a                                       ; $6ef9: $02
	ret nz                                           ; $6efa: $c0

	jp nc, $9bff                                     ; $6efb: $d2 $ff $9b

	ld a, [$f5f0]                                    ; $6efe: $fa $f0 $f5
	ld hl, sp+$57                                    ; $6f01: $f8 $57
	db $fc                                           ; $6f03: $fc
	sbc b                                            ; $6f04: $98
	and $08                                          ; $6f05: $e6 $08
	ld a, l                                          ; $6f07: $7d
	nop                                              ; $6f08: $00
	db $eb                                           ; $6f09: $eb
	nop                                              ; $6f0a: $00
	ld e, l                                          ; $6f0b: $5d
	ld h, e                                          ; $6f0c: $63
	db $fc                                           ; $6f0d: $fc
	ld a, [hl]                                       ; $6f0e: $7e
	ld l, h                                          ; $6f0f: $6c
	sbc e                                            ; $6f10: $9b
	ccf                                              ; $6f11: $3f
	ret nz                                           ; $6f12: $c0

	ldh a, [rIF]                                     ; $6f13: $f0 $0f
	ld [hl], h                                       ; $6f15: $74
	and d                                            ; $6f16: $a2
	sub b                                            ; $6f17: $90
	ret nz                                           ; $6f18: $c0

	nop                                              ; $6f19: $00
	pop hl                                           ; $6f1a: $e1
	nop                                              ; $6f1b: $00
	jp z, $ff00                                      ; $6f1c: $ca $00 $ff

	rst $38                                          ; $6f1f: $ff
	rlca                                             ; $6f20: $07
	ld hl, sp-$58                                    ; $6f21: $f8 $a8
	rst $38                                          ; $6f23: $ff
	inc bc                                           ; $6f24: $03
	db $fc                                           ; $6f25: $fc
	add b                                            ; $6f26: $80
	sbc $ff                                          ; $6f27: $de $ff
	ld a, [hl]                                       ; $6f29: $7e
	jp nz, $ffdc                                     ; $6f2a: $c2 $dc $ff

	rst $38                                          ; $6f2d: $ff
	ld a, e                                          ; $6f2e: $7b
	db $fc                                           ; $6f2f: $fc
	ld a, a                                          ; $6f30: $7f
	jp c, $ffdb                                      ; $6f31: $da $db $ff

	sbc [hl]                                         ; $6f34: $9e
	ld [$f473], a                                    ; $6f35: $ea $73 $f4
	rst $38                                          ; $6f38: $ff
	ld a, h                                          ; $6f39: $7c
	ld a, [hl]                                       ; $6f3a: $7e
	rst SubAFromDE                                          ; $6f3b: $df
	rst $38                                          ; $6f3c: $ff
	sbc [hl]                                         ; $6f3d: $9e
	db $eb                                           ; $6f3e: $eb
	ld [hl], e                                       ; $6f3f: $73
	call c, Call_04e_5e7d                            ; $6f40: $dc $7d $5e
	db $fd                                           ; $6f43: $fd
	sbc l                                            ; $6f44: $9d
	xor [hl]                                         ; $6f45: $ae
	ld bc, $947b                                     ; $6f46: $01 $7b $94
	sbc $ff                                          ; $6f49: $de $ff
	sub b                                            ; $6f4b: $90
	or h                                             ; $6f4c: $b4
	ldh [rLY], a                                     ; $6f4d: $e0 $44
	and b                                            ; $6f4f: $a0
	inc c                                            ; $6f50: $0c
	nop                                              ; $6f51: $00
	inc e                                            ; $6f52: $1c
	nop                                              ; $6f53: $00
	inc b                                            ; $6f54: $04
	ld hl, sp-$08                                    ; $6f55: $f8 $f8
	ldh a, [$d0]                                     ; $6f57: $f0 $d0
	ldh [$a0], a                                     ; $6f59: $e0 $a0
	ld a, e                                          ; $6f5b: $7b
	sub $e0                                          ; $6f5c: $d6 $e0
	and e                                            ; $6f5e: $a3
	sbc [hl]                                         ; $6f5f: $9e
	ld bc, $a042                                     ; $6f60: $01 $42 $a0
	halt                                             ; $6f63: $76
	ret z                                            ; $6f64: $c8

	ld a, [hl]                                       ; $6f65: $7e
	sbc h                                            ; $6f66: $9c
	ld a, l                                          ; $6f67: $7d
	ld b, h                                          ; $6f68: $44
	ld h, [hl]                                       ; $6f69: $66
	or b                                             ; $6f6a: $b0
	ld [hl], l                                       ; $6f6b: $75
	ld h, b                                          ; $6f6c: $60
	ld e, a                                          ; $6f6d: $5f
	db $fc                                           ; $6f6e: $fc
	ld [bc], a                                       ; $6f6f: $02
	ret nz                                           ; $6f70: $c0

	ld [hl+], a                                      ; $6f71: $22
	ret nz                                           ; $6f72: $c0

	sbc l                                            ; $6f73: $9d
	db $fd                                           ; $6f74: $fd
	ldh a, [rPCM34]                                  ; $6f75: $f0 $77
	db $fc                                           ; $6f77: $fc
	sub [hl]                                         ; $6f78: $96
	jp hl                                            ; $6f79: $e9


	nop                                              ; $6f7a: $00
	ld e, h                                          ; $6f7b: $5c
	ld bc, $01e8                                     ; $6f7c: $01 $e8 $01
	ld e, h                                          ; $6f7f: $5c
	ld bc, $6bea                                     ; $6f80: $01 $ea $6b
	db $fc                                           ; $6f83: $fc
	sbc [hl]                                         ; $6f84: $9e
	push af                                          ; $6f85: $f5
	ld a, d                                          ; $6f86: $7a
	cp d                                             ; $6f87: $ba
	ld a, a                                          ; $6f88: $7f
	db $fc                                           ; $6f89: $fc
	sub h                                            ; $6f8a: $94
	ld a, e                                          ; $6f8b: $7b
	add b                                            ; $6f8c: $80
	ccf                                              ; $6f8d: $3f
	ret nz                                           ; $6f8e: $c0

	ld e, $e1                                        ; $6f8f: $1e $e1
	ld e, $e1                                        ; $6f91: $1e $e1
	scf                                              ; $6f93: $37
	ret z                                            ; $6f94: $c8

	ld d, l                                          ; $6f95: $55
	ld h, c                                          ; $6f96: $61
	and l                                            ; $6f97: $a5
	sbc c                                            ; $6f98: $99
	add b                                            ; $6f99: $80
	ld a, a                                          ; $6f9a: $7f
	ld d, b                                          ; $6f9b: $50
	xor a                                            ; $6f9c: $af
	xor d                                            ; $6f9d: $aa

Call_04e_6f9e:
	ld d, l                                          ; $6f9e: $55
	ld e, a                                          ; $6f9f: $5f
	ldh a, [$7e]                                     ; $6fa0: $f0 $7e
	sub l                                            ; $6fa2: $95
	ld a, [hl]                                       ; $6fa3: $7e
	db $ec                                           ; $6fa4: $ec
	sub h                                            ; $6fa5: $94
	ld [$57f0], sp                                   ; $6fa6: $08 $f0 $57
	ld hl, sp+$10                                    ; $6fa9: $f8 $10
	ldh [rAUD4LEN], a                                ; $6fab: $e0 $20
	ret nz                                           ; $6fad: $c0

	ld b, b                                          ; $6fae: $40
	add b                                            ; $6faf: $80
	add b                                            ; $6fb0: $80
	ld a, [$a27a]                                    ; $6fb1: $fa $7a $a2
	db $f4                                           ; $6fb4: $f4
	ld [bc], a                                       ; $6fb5: $02
	rst GetHLinHL                                          ; $6fb6: $cf
	ldh [$c1], a                                     ; $6fb7: $e0 $c1
	ld [bc], a                                       ; $6fb9: $02
	or b                                             ; $6fba: $b0
	ld c, [hl]                                       ; $6fbb: $4e
	xor h                                            ; $6fbc: $ac
	ld e, [hl]                                       ; $6fbd: $5e
	call nz, $2b9e                                   ; $6fbe: $c4 $9e $2b
	ld a, d                                          ; $6fc1: $7a
	xor h                                            ; $6fc2: $ac

jr_04e_6fc3:
	ld a, a                                          ; $6fc3: $7f
	db $fc                                           ; $6fc4: $fc

jr_04e_6fc5:
	ld [bc], a                                       ; $6fc5: $02
	ret nz                                           ; $6fc6: $c0

	ld a, [hl+]                                      ; $6fc7: $2a
	ret nz                                           ; $6fc8: $c0

	sbc l                                            ; $6fc9: $9d
	ldh a, [c]                                       ; $6fca: $f2
	ld hl, sp+$6f                                    ; $6fcb: $f8 $6f
	ld hl, sp+$76                                    ; $6fcd: $f8 $76
	call z, $ce7e                                    ; $6fcf: $cc $7e $ce
	ld [hl], l                                       ; $6fd2: $75
	ld a, h                                          ; $6fd3: $7c
	ld l, a                                          ; $6fd4: $6f
	db $fc                                           ; $6fd5: $fc
	sub a                                            ; $6fd6: $97
	ld [hl], $c9                                     ; $6fd7: $36 $c9
	ld [hl], $c9                                     ; $6fd9: $36 $c9
	ld [hl+], a                                      ; $6fdb: $22
	db $dd                                           ; $6fdc: $dd
	ld [bc], a                                       ; $6fdd: $02
	db $fd                                           ; $6fde: $fd
	ld [hl], a                                       ; $6fdf: $77
	cp $9b                                           ; $6fe0: $fe $9b
	jr nz, jr_04e_6fc3                               ; $6fe2: $20 $df

	jr nz, jr_04e_6fc5                               ; $6fe4: $20 $df

	ld l, l                                          ; $6fe6: $6d
	or d                                             ; $6fe7: $b2
	rst FarCall                                          ; $6fe8: $f7
	sbc l                                            ; $6fe9: $9d
	ld d, b                                          ; $6fea: $50
	and b                                            ; $6feb: $a0
	ldh [rSCX], a                                    ; $6fec: $e0 $43
	ld a, [hl]                                       ; $6fee: $7e
	call z, $0b9e                                    ; $6fef: $cc $9e $0b
	ld a, c                                          ; $6ff2: $79
	ld a, b                                          ; $6ff3: $78
	ld [hl], a                                       ; $6ff4: $77
	db $fc                                           ; $6ff5: $fc
	sbc [hl]                                         ; $6ff6: $9e
	inc bc                                           ; $6ff7: $03
	ld [hl], e                                       ; $6ff8: $73
	db $fc                                           ; $6ff9: $fc
	ld [bc], a                                       ; $6ffa: $02
	ret nz                                           ; $6ffb: $c0

	ld [hl-], a                                      ; $6ffc: $32
	ret nz                                           ; $6ffd: $c0

	sbc [hl]                                         ; $6ffe: $9e
	rst FarCall                                          ; $6fff: $f7
	ld [hl], e                                       ; $7000: $73
	db $fc                                           ; $7001: $fc
	sbc [hl]                                         ; $7002: $9e
	ei                                               ; $7003: $fb
	ld a, e                                          ; $7004: $7b
	db $f4                                           ; $7005: $f4
	ld d, [hl]                                       ; $7006: $56
	call nz, $fc77                                   ; $7007: $c4 $77 $fc
	halt                                             ; $700a: $76
	call z, $fe57                                    ; $700b: $cc $57 $fe
	ldh [hDisp0_BGP], a                                     ; $700e: $e0 $85
	ld a, l                                          ; $7010: $7d
	ret z                                            ; $7011: $c8

	ld [hl], l                                       ; $7012: $75
	add $9c                                          ; $7013: $c6 $9c
	rra                                              ; $7015: $1f
	nop                                              ; $7016: $00
	ccf                                              ; $7017: $3f
	ld a, e                                          ; $7018: $7b
	cp $8d                                           ; $7019: $fe $8d
	ld a, a                                          ; $701b: $7f
	nop                                              ; $701c: $00
	cp $01                                           ; $701d: $fe $01
	db $fd                                           ; $701f: $fd
	ld [bc], a                                       ; $7020: $02
	ld [$0015], a                                    ; $7021: $ea $15 $00
	nop                                              ; $7024: $00
	ldh a, [rP1]                                     ; $7025: $f0 $00
	db $fd                                           ; $7027: $fd
	ld [bc], a                                       ; $7028: $02
	rst $38                                          ; $7029: $ff
	nop                                              ; $702a: $00
	ld [hl], l                                       ; $702b: $75
	adc d                                            ; $702c: $8a
	ld a, b                                          ; $702d: $78
	db $f4                                           ; $702e: $f4
	rst SubAFromDE                                          ; $702f: $df
	xor d                                            ; $7030: $aa
	ld a, l                                          ; $7031: $7d
	cp c                                             ; $7032: $b9
	cp $9b                                           ; $7033: $fe $9b
	ld e, b                                          ; $7035: $58
	and b                                            ; $7036: $a0
	and b                                            ; $7037: $a0
	ld e, a                                          ; $7038: $5f
	ld [hl], a                                       ; $7039: $77
	db $f4                                           ; $703a: $f4
	ld a, a                                          ; $703b: $7f
	db $fc                                           ; $703c: $fc
	sbc l                                            ; $703d: $9d
	xor b                                            ; $703e: $a8
	ld d, a                                          ; $703f: $57
	ei                                               ; $7040: $fb
	sub a                                            ; $7041: $97
	or b                                             ; $7042: $b0
	ld b, b                                          ; $7043: $40
	nop                                              ; $7044: $00
	rst $38                                          ; $7045: $ff
	and b                                            ; $7046: $a0
	ld e, a                                          ; $7047: $5f
	ld b, b                                          ; $7048: $40
	cp a                                             ; $7049: $bf
	ld e, h                                          ; $704a: $5c
	pop af                                           ; $704b: $f1
	sbc h                                            ; $704c: $9c
	and b                                            ; $704d: $a0
	ld b, b                                          ; $704e: $40
	inc a                                            ; $704f: $3c
	ld [hl], b                                       ; $7050: $70
	jp z, $ae7f                                      ; $7051: $ca $7f $ae

	ld a, h                                          ; $7054: $7c
	inc a                                            ; $7055: $3c
	ld l, l                                          ; $7056: $6d
	ld l, h                                          ; $7057: $6c
	ld a, h                                          ; $7058: $7c
	call z, $209b                                    ; $7059: $cc $9b $20
	db $fc                                           ; $705c: $fc
	ld b, $f9                                        ; $705d: $06 $f9
	ld [bc], a                                       ; $705f: $02
	ret nz                                           ; $7060: $c0

	jp nc, Jump_04e_76ff                             ; $7061: $d2 $ff $76

	call z, $fc7f                                    ; $7064: $cc $7f $fc
	halt                                             ; $7067: $76
	call nz, $fc7f                                   ; $7068: $c4 $7f $fc
	sbc [hl]                                         ; $706b: $9e
	rst $38                                          ; $706c: $ff
	ld [hl], a                                       ; $706d: $77
	ld hl, sp+$7a                                    ; $706e: $f8 $7a
	call z, $a97f                                    ; $7070: $cc $7f $a9
	ld a, a                                          ; $7073: $7f
	db $fc                                           ; $7074: $fc
	sbc [hl]                                         ; $7075: $9e
	rst AddAOntoHL                                          ; $7076: $ef
	ld a, e                                          ; $7077: $7b
	db $fc                                           ; $7078: $fc
	sbc h                                            ; $7079: $9c
	xor e                                            ; $707a: $ab
	ld b, b                                          ; $707b: $40
	dec a                                            ; $707c: $3d
	ld a, e                                          ; $707d: $7b
	adc b                                            ; $707e: $88
	ld a, l                                          ; $707f: $7d
	adc b                                            ; $7080: $88
	sub e                                            ; $7081: $93
	jr z, @-$27                                      ; $7082: $28 $d7

	jr nz, @-$1f                                     ; $7084: $20 $df

	ld [bc], a                                       ; $7086: $02
	db $fd                                           ; $7087: $fd
	ld a, [bc]                                       ; $7088: $0a
	push af                                          ; $7089: $f5
	ld a, [bc]                                       ; $708a: $0a
	push af                                          ; $708b: $f5
	jr z, @-$27                                      ; $708c: $28 $d7

	ldh [hDisp1_SCX], a                                     ; $708e: $e0 $91
	add b                                            ; $7090: $80
	dec b                                            ; $7091: $05
	ld [bc], a                                       ; $7092: $02
	rlca                                             ; $7093: $07
	rlca                                             ; $7094: $07
	inc bc                                           ; $7095: $03
	rlca                                             ; $7096: $07
	inc b                                            ; $7097: $04
	inc bc                                           ; $7098: $03
	ld [$0407], sp                                   ; $7099: $08 $07 $04
	dec bc                                           ; $709c: $0b
	ld [$2017], sp                                   ; $709d: $08 $17 $20
	rra                                              ; $70a0: $1f
	push de                                          ; $70a1: $d5
	ld a, [hl+]                                      ; $70a2: $2a
	add d                                            ; $70a3: $82
	db $fd                                           ; $70a4: $fd
	cp $ff                                           ; $70a5: $fe $ff
	cpl                                              ; $70a7: $2f
	rst $38                                          ; $70a8: $ff
	ld [bc], a                                       ; $70a9: $02
	rst $38                                          ; $70aa: $ff
	dec b                                            ; $70ab: $05
	rst $38                                          ; $70ac: $ff
	ld a, [bc]                                       ; $70ad: $0a
	rst $38                                          ; $70ae: $ff
	inc b                                            ; $70af: $04
	adc a                                            ; $70b0: $8f
	cp $55                                           ; $70b1: $fe $55
	xor d                                            ; $70b3: $aa
	add b                                            ; $70b4: $80
	ld a, a                                          ; $70b5: $7f
	add b                                            ; $70b6: $80
	rst $38                                          ; $70b7: $ff
	ret z                                            ; $70b8: $c8

	rst FarCall                                          ; $70b9: $f7
	xor b                                            ; $70ba: $a8
	rst SubAFromDE                                          ; $70bb: $df
	ld d, d                                          ; $70bc: $52
	cp a                                             ; $70bd: $bf
	and l                                            ; $70be: $a5
	ld a, a                                          ; $70bf: $7f
	ld c, c                                          ; $70c0: $49
	ld [hl], d                                       ; $70c1: $72
	db $ec                                           ; $70c2: $ec
	ld [hl], a                                       ; $70c3: $77
	cp $9c                                           ; $70c4: $fe $9c
	inc b                                            ; $70c6: $04
	rst $38                                          ; $70c7: $ff
	xor e                                            ; $70c8: $ab
	ld a, e                                          ; $70c9: $7b
	ld [bc], a                                       ; $70ca: $02
	sbc [hl]                                         ; $70cb: $9e
	dec hl                                           ; $70cc: $2b
	ld l, e                                          ; $70cd: $6b
	ldh a, [c]                                       ; $70ce: $f2
	sbc [hl]                                         ; $70cf: $9e
	inc d                                            ; $70d0: $14
	ld a, e                                          ; $70d1: $7b
	call nc, $a09c                                   ; $70d2: $d4 $9c $a0
	rst $38                                          ; $70d5: $ff
	cp $de                                           ; $70d6: $fe $de
	rst $38                                          ; $70d8: $ff
	ld l, a                                          ; $70d9: $6f
	ldh a, [$9c]                                     ; $70da: $f0 $9c
	dec d                                            ; $70dc: $15
	rst $38                                          ; $70dd: $ff
	xor d                                            ; $70de: $aa
	ld a, e                                          ; $70df: $7b
	ldh [c], a                                       ; $70e0: $e2
	sub d                                            ; $70e1: $92
	add d                                            ; $70e2: $82

jr_04e_70e3:
	rst $38                                          ; $70e3: $ff
	rst $38                                          ; $70e4: $ff
	cp $02                                           ; $70e5: $fe $02
	ld sp, hl                                        ; $70e7: $f9
	dec e                                            ; $70e8: $1d
	di                                               ; $70e9: $f3
	jr z, jr_04e_70e3                                ; $70ea: $28 $f7

	ld d, b                                          ; $70ec: $50
	rst AddAOntoHL                                          ; $70ed: $ef
	ld a, [bc]                                       ; $70ee: $0a
	ld a, e                                          ; $70ef: $7b

jr_04e_70f0:
	db $ec                                           ; $70f0: $ec
	ld a, [hl]                                       ; $70f1: $7e
	ret nc                                           ; $70f2: $d0

	sub l                                            ; $70f3: $95
	sub l                                            ; $70f4: $95
	ld a, a                                          ; $70f5: $7f
	xor d                                            ; $70f6: $aa
	ld a, a                                          ; $70f7: $7f
	push de                                          ; $70f8: $d5
	ld a, a                                          ; $70f9: $7f
	xor d                                            ; $70fa: $aa
	rst $38                                          ; $70fb: $ff
	push de                                          ; $70fc: $d5
	cp a                                             ; $70fd: $bf
	ld a, e                                          ; $70fe: $7b
	db $fc                                           ; $70ff: $fc
	sbc e                                            ; $7100: $9b
	rst $38                                          ; $7101: $ff
	ld [$d5df], a                                    ; $7102: $ea $df $d5
	ld [bc], a                                       ; $7105: $02
	ret nz                                           ; $7106: $c0

	halt                                             ; $7107: $76
	call z, $fc6f                                    ; $7108: $cc $6f $fc
	ld l, a                                          ; $710b: $6f
	cp $7e                                           ; $710c: $fe $7e
	call z, $bd9d                                    ; $710e: $cc $9d $bd
	ld b, b                                          ; $7111: $40
	ld e, a                                          ; $7112: $5f
	db $fc                                           ; $7113: $fc
	adc l                                            ; $7114: $8d
	sbc l                                            ; $7115: $9d
	ld b, b                                          ; $7116: $40
	jr z, jr_04e_70f0                                ; $7117: $28 $d7

	ld a, [bc]                                       ; $7119: $0a
	push af                                          ; $711a: $f5
	ld a, [hl+]                                      ; $711b: $2a
	push de                                          ; $711c: $d5
	rrca                                             ; $711d: $0f
	ldh a, [$0b]                                     ; $711e: $f0 $0b
	db $f4                                           ; $7120: $f4
	dec hl                                           ; $7121: $2b
	call nc, $f00f                                   ; $7122: $d4 $0f $f0
	rrca                                             ; $7125: $0f
	ldh a, [$e0]                                     ; $7126: $f0 $e0
	sub c                                            ; $7128: $91
	sbc d                                            ; $7129: $9a
	db $10                                           ; $712a: $10
	cpl                                              ; $712b: $2f
	ld e, a                                          ; $712c: $5f
	jr nz, jr_04e_71ad                               ; $712d: $20 $7e

	sbc $3f                                          ; $712f: $de $3f
	adc d                                            ; $7131: $8a
	rla                                              ; $7132: $17
	ccf                                              ; $7133: $3f
	rla                                              ; $7134: $17
	rra                                              ; $7135: $1f
	rra                                              ; $7136: $1f
	rrca                                             ; $7137: $0f
	rra                                              ; $7138: $1f
	rrca                                             ; $7139: $0f
	ld a, [bc]                                       ; $713a: $0a
	db $fd                                           ; $713b: $fd
	ld b, $f9                                        ; $713c: $06 $f9
	xor b                                            ; $713e: $a8
	ld d, e                                          ; $713f: $53
	rst SubAFromHL                                          ; $7140: $d7
	ld sp, hl                                        ; $7141: $f9
	ei                                               ; $7142: $fb
	rst $38                                          ; $7143: $ff
	ld a, c                                          ; $7144: $79
	rst $38                                          ; $7145: $ff
	cp d                                             ; $7146: $ba
	ld a, d                                          ; $7147: $7a
	db $fc                                           ; $7148: $fc
	sub h                                            ; $7149: $94
	and d                                            ; $714a: $a2
	rst SubAFromDE                                          ; $714b: $df
	ld c, b                                          ; $714c: $48
	or a                                             ; $714d: $b7
	db $10                                           ; $714e: $10
	rst AddAOntoHL                                          ; $714f: $ef
	add c                                            ; $7150: $81
	ld a, a                                          ; $7151: $7f
	inc e                                            ; $7152: $1c
	db $eb                                           ; $7153: $eb
	ld e, b                                          ; $7154: $58
	ld a, e                                          ; $7155: $7b
	jr nz, @+$81                                     ; $7156: $20 $7f

	ldh a, [$9c]                                     ; $7158: $f0 $9c
	ld b, [hl]                                       ; $715a: $46
	rst $38                                          ; $715b: $ff
	add l                                            ; $715c: $85
	ld a, d                                          ; $715d: $7a
	call nc, $1d92                                   ; $715e: $d4 $92 $1d
	rst $38                                          ; $7161: $ff
	ld a, [de]                                       ; $7162: $1a
	rst $38                                          ; $7163: $ff
	ld [hl], l                                       ; $7164: $75
	cp a                                             ; $7165: $bf
	ld [hl+], a                                      ; $7166: $22
	rst $38                                          ; $7167: $ff
	cp l                                             ; $7168: $bd
	rst $38                                          ; $7169: $ff
	cp a                                             ; $716a: $bf
	rst $38                                          ; $716b: $ff
	ld e, a                                          ; $716c: $5f
	ld a, e                                          ; $716d: $7b
	add sp, $7f                                      ; $716e: $e8 $7f
	db $fc                                           ; $7170: $fc
	ld a, a                                          ; $7171: $7f
	ld hl, sp-$62                                    ; $7172: $f8 $9e
	ld a, a                                          ; $7174: $7f
	sbc $ff                                          ; $7175: $de $ff
	sbc [hl]                                         ; $7177: $9e
	ld l, $dc                                        ; $7178: $2e $dc
	rst $38                                          ; $717a: $ff
	sub d                                            ; $717b: $92
	db $fd                                           ; $717c: $fd
	rst $38                                          ; $717d: $ff
	db $eb                                           ; $717e: $eb
	rst $38                                          ; $717f: $ff
	rst SubAFromHL                                          ; $7180: $d7
	rst $38                                          ; $7181: $ff
	xor e                                            ; $7182: $ab
	rst FarCall                                          ; $7183: $f7
	ld b, a                                          ; $7184: $47
	rst $38                                          ; $7185: $ff
	rst SubAFromDE                                          ; $7186: $df
	rst AddAOntoHL                                          ; $7187: $ef
	ld a, [hl+]                                      ; $7188: $2a
	ld a, d                                          ; $7189: $7a
	ret c                                            ; $718a: $d8

	sbc [hl]                                         ; $718b: $9e
	jp z, $d476                                      ; $718c: $ca $76 $d4

	sbc $ff                                          ; $718f: $de $ff
	sbc h                                            ; $7191: $9c
	db $ed                                           ; $7192: $ed
	rst $38                                          ; $7193: $ff
	rst FarCall                                          ; $7194: $f7
	ld a, e                                          ; $7195: $7b
	db $f4                                           ; $7196: $f4
	sub c                                            ; $7197: $91

Jump_04e_7198:
	push af                                          ; $7198: $f5
	rst AddAOntoHL                                          ; $7199: $ef
	ld [$e5ff], a                                    ; $719a: $ea $ff $e5
	rst $38                                          ; $719d: $ff
	ld a, [$fdf7]                                    ; $719e: $fa $f7 $fd
	rst FarCall                                          ; $71a1: $f7
	ldh a, [c]                                       ; $71a2: $f2
	rst $38                                          ; $71a3: $ff
	db $fd                                           ; $71a4: $fd
	ei                                               ; $71a5: $fb
	ld [bc], a                                       ; $71a6: $02
	ret nz                                           ; $71a7: $c0

	ld l, d                                          ; $71a8: $6a
	ret z                                            ; $71a9: $c8

	sbc [hl]                                         ; $71aa: $9e
	cp $6b                                           ; $71ab: $fe $6b

jr_04e_71ad:
	db $fc                                           ; $71ad: $fc
	halt                                             ; $71ae: $76
	call z, $af9e                                    ; $71af: $cc $9e $af
	ld l, e                                          ; $71b2: $6b
	db $fc                                           ; $71b3: $fc
	sbc e                                            ; $71b4: $9b
	xor [hl]                                         ; $71b5: $ae
	ld b, c                                          ; $71b6: $41
	sbc h                                            ; $71b7: $9c
	ld b, c                                          ; $71b8: $41
	halt                                             ; $71b9: $76
	call z, $c47e                                    ; $71ba: $cc $7e $c4
	ld a, a                                          ; $71bd: $7f
	cp $97                                           ; $71be: $fe $97
	rra                                              ; $71c0: $1f
	ldh [rIF], a                                     ; $71c1: $e0 $0f
	ldh a, [$09]                                     ; $71c3: $f0 $09
	or $1d                                           ; $71c5: $f6 $1d
	ldh [c], a                                       ; $71c7: $e2
	inc l                                            ; $71c8: $2c
	nop                                              ; $71c9: $00
	sbc [hl]                                         ; $71ca: $9e
	inc sp                                           ; $71cb: $33
	ret c                                            ; $71cc: $d8

	ld b, h                                          ; $71cd: $44
	rst SubAFromDE                                          ; $71ce: $df
	ld [hl], a                                       ; $71cf: $77
	sbc [hl]                                         ; $71d0: $9e
	ld [hl], h                                       ; $71d1: $74
	call c, $9e44                                    ; $71d2: $dc $44 $9e
	ld b, a                                          ; $71d5: $47
	sbc $77                                          ; $71d6: $de $77
	ld h, e                                          ; $71d8: $63
	or $9e                                           ; $71d9: $f6 $9e
	ld h, a                                          ; $71db: $67
	ld e, a                                          ; $71dc: $5f
	or $9e                                           ; $71dd: $f6 $9e
	inc [hl]                                         ; $71df: $34
	db $db                                           ; $71e0: $db
	ld b, h                                          ; $71e1: $44
	ld a, e                                          ; $71e2: $7b
	push af                                          ; $71e3: $f5
	ld h, a                                          ; $71e4: $67
	or $d8                                           ; $71e5: $f6 $d8
	ld b, h                                          ; $71e7: $44
	ld c, a                                          ; $71e8: $4f
	or $9e                                           ; $71e9: $f6 $9e
	ld b, l                                          ; $71eb: $45
	sbc $55                                          ; $71ec: $de $55
	ld l, e                                          ; $71ee: $6b
	or $de                                           ; $71ef: $f6 $de
	ld h, [hl]                                       ; $71f1: $66
	ld d, e                                          ; $71f2: $53
	or $2b                                           ; $71f3: $f6 $2b
	adc d                                            ; $71f5: $8a
	pop de                                           ; $71f6: $d1
	rst $38                                          ; $71f7: $ff
	sbc $b8                                          ; $71f8: $de $b8
	sbc d                                            ; $71fa: $9a
	cp a                                             ; $71fb: $bf
	sbc a                                            ; $71fc: $9f
	add c                                            ; $71fd: $81
	and b                                            ; $71fe: $a0
	cp a                                             ; $71ff: $bf
	sbc $c7                                          ; $7200: $de $c7
	sub a                                            ; $7202: $97
	ret nz                                           ; $7203: $c0

	ldh [$fe], a                                     ; $7204: $e0 $fe
	rst SubAFromDE                                          ; $7206: $df
	ret nz                                           ; $7207: $c0

	rst SubAFromDE                                          ; $7208: $df
	rra                                              ; $7209: $1f
	rra                                              ; $720a: $1f
	sbc $df                                          ; $720b: $de $df
	sbc d                                            ; $720d: $9a
	ld e, l                                          ; $720e: $5d
	ld d, h                                          ; $720f: $54
	ccf                                              ; $7210: $3f
	rst $38                                          ; $7211: $ff
	rst $38                                          ; $7212: $ff
	sbc $3f                                          ; $7213: $de $3f
	add b                                            ; $7215: $80
	cp [hl]                                          ; $7216: $be
	cp e                                             ; $7217: $bb
	db $fd                                           ; $7218: $fd
	db $fd                                           ; $7219: $fd
	db $e3                                           ; $721a: $e3
	rst FarCall                                          ; $721b: $f7
	cp a                                             ; $721c: $bf
	sbc a                                            ; $721d: $9f
	rst $38                                          ; $721e: $ff
	rst $38                                          ; $721f: $ff
	cp $fe                                           ; $7220: $fe $fe
	rst $38                                          ; $7222: $ff
	rst AddAOntoHL                                          ; $7223: $ef
	rst SubAFromDE                                          ; $7224: $df
	ld a, a                                          ; $7225: $7f
	rst $38                                          ; $7226: $ff
	rst $38                                          ; $7227: $ff
	rlca                                             ; $7228: $07
	dec d                                            ; $7229: $15
	ld a, [hl+]                                      ; $722a: $2a
	ld [hl], l                                       ; $722b: $75
	ld a, [hl-]                                      ; $722c: $3a
	sub l                                            ; $722d: $95
	adc e                                            ; $722e: $8b
	db $db                                           ; $722f: $db
	rst $38                                          ; $7230: $ff
	jp $80c0                                         ; $7231: $c3 $c0 $80


	ret nz                                           ; $7234: $c0

	adc h                                            ; $7235: $8c
	ldh [$f0], a                                     ; $7236: $e0 $f0
	db $e4                                           ; $7238: $e4
	ei                                               ; $7239: $fb
	rst AddAOntoHL                                          ; $723a: $ef
	ld d, a                                          ; $723b: $57
	cpl                                              ; $723c: $2f
	ccf                                              ; $723d: $3f
	rrca                                             ; $723e: $0f
	sbc a                                            ; $723f: $9f
	ld b, a                                          ; $7240: $47
	rst FarCall                                          ; $7241: $f7
	rst $38                                          ; $7242: $ff
	rst AddAOntoHL                                          ; $7243: $ef
	ld e, a                                          ; $7244: $5f
	rst SubAFromDE                                          ; $7245: $df
	sbc a                                            ; $7246: $9f
	ld c, a                                          ; $7247: $4f
	rrca                                             ; $7248: $0f
	sbc $ff                                          ; $7249: $de $ff
	rst SubAFromDE                                          ; $724b: $df
	cp $9c                                           ; $724c: $fe $9c
	ld hl, sp-$07                                    ; $724e: $f8 $f9
	or $db                                           ; $7250: $f6 $db
	rst $38                                          ; $7252: $ff
	sub e                                            ; $7253: $93
	db $fc                                           ; $7254: $fc
	ld sp, hl                                        ; $7255: $f9
	ld c, b                                          ; $7256: $48
	ld d, l                                          ; $7257: $55
	xor b                                            ; $7258: $a8
	or b                                             ; $7259: $b0
	sbc d                                            ; $725a: $9a
	xor l                                            ; $725b: $ad
	cp $f7                                           ; $725c: $fe $f7
	or a                                             ; $725e: $b7
	and b                                            ; $725f: $a0
	sbc $60                                          ; $7260: $de $60

jr_04e_7262:
	add c                                            ; $7262: $81
	ld [hl], b                                       ; $7263: $70
	ldh a, [$f8]                                     ; $7264: $f0 $f8
	rst SubAFromDE                                          ; $7266: $df
	rst SubAFromDE                                          ; $7267: $df
	ld e, a                                          ; $7268: $5f
	ccf                                              ; $7269: $3f
	ld a, a                                          ; $726a: $7f
	rlca                                             ; $726b: $07
	cpl                                              ; $726c: $2f
	rla                                              ; $726d: $17
	rst $38                                          ; $726e: $ff
	rst AddAOntoHL                                          ; $726f: $ef
	ld l, a                                          ; $7270: $6f
	rrca                                             ; $7271: $0f
	rrca                                             ; $7272: $0f
	ld l, a                                          ; $7273: $6f
	ld b, a                                          ; $7274: $47
	ld h, a                                          ; $7275: $67
	jp c, $f7ef                                      ; $7276: $da $ef $f7

	ld hl, sp-$02                                    ; $7279: $f8 $fe
	db $fd                                           ; $727b: $fd
	ld a, [$e0f5]                                    ; $727c: $fa $f5 $e0
	ldh a, [$f8]                                     ; $727f: $f0 $f8
	ld a, e                                          ; $7281: $7b
	add $80                                          ; $7282: $c6 $80
	db $fc                                           ; $7284: $fc
	ld hl, sp-$74                                    ; $7285: $f8 $8c
	ld b, c                                          ; $7287: $41
	and b                                            ; $7288: $a0
	and e                                            ; $7289: $a3
	adc c                                            ; $728a: $89
	inc de                                           ; $728b: $13
	add b                                            ; $728c: $80
	ld b, h                                          ; $728d: $44
	ld [hl], $1c                                     ; $728e: $36 $1c
	ld de, $735c                                     ; $7290: $11 $5c $73
	add hl, sp                                       ; $7293: $39
	dec e                                            ; $7294: $1d
	ld [$6fa7], sp                                   ; $7295: $08 $a7 $6f
	rst $38                                          ; $7298: $ff
	ld sp, hl                                        ; $7299: $f9
	db $fd                                           ; $729a: $fd
	db $fc                                           ; $729b: $fc
	db $fc                                           ; $729c: $fc
	ld a, l                                          ; $729d: $7d
	ld [hl], e                                       ; $729e: $73
	di                                               ; $729f: $f3
	di                                               ; $72a0: $f3
	ei                                               ; $72a1: $fb
	ei                                               ; $72a2: $fb
	adc d                                            ; $72a3: $8a
	db $fd                                           ; $72a4: $fd
	cp $fe                                           ; $72a5: $fe $fe
	sbc [hl]                                         ; $72a7: $9e
	cp [hl]                                          ; $72a8: $be
	rst SubAFromDE                                          ; $72a9: $df
	rst $38                                          ; $72aa: $ff
	ei                                               ; $72ab: $fb
	pop af                                           ; $72ac: $f1
	db $fc                                           ; $72ad: $fc
	ld a, a                                          ; $72ae: $7f
	sbc h                                            ; $72af: $9c
	rst SubAFromDE                                          ; $72b0: $df
	rst AddAOntoHL                                          ; $72b1: $ef
	rst SubAFromBC                                          ; $72b2: $e7
	rst FarCall                                          ; $72b3: $f7
	ei                                               ; $72b4: $fb
	ld sp, hl                                        ; $72b5: $f9
	db $fc                                           ; $72b6: $fc
	rst $38                                          ; $72b7: $ff
	ld a, a                                          ; $72b8: $7f
	ld a, e                                          ; $72b9: $7b
	ld l, e                                          ; $72ba: $6b
	add b                                            ; $72bb: $80
	rst FarCall                                          ; $72bc: $f7
	db $e3                                           ; $72bd: $e3
	ld sp, hl                                        ; $72be: $f9
	rst $38                                          ; $72bf: $ff
	ld a, a                                          ; $72c0: $7f
	cp a                                             ; $72c1: $bf
	sbc a                                            ; $72c2: $9f
	rst GetHLinHL                                          ; $72c3: $cf
	rst SubAFromBC                                          ; $72c4: $e7
	rst $38                                          ; $72c5: $ff
	di                                               ; $72c6: $f3
	db $ec                                           ; $72c7: $ec
	call nc, $fc6c                                   ; $72c8: $d4 $6c $fc
	ld e, [hl]                                       ; $72cb: $5e
	cp l                                             ; $72cc: $bd
	ld a, [hl]                                       ; $72cd: $7e
	cp l                                             ; $72ce: $bd
	db $10                                           ; $72cf: $10
	jr z, jr_04e_7262                                ; $72d0: $28 $90

	nop                                              ; $72d2: $00
	and b                                            ; $72d3: $a0
	ld b, b                                          ; $72d4: $40
	add b                                            ; $72d5: $80
	ld b, b                                          ; $72d6: $40
	nop                                              ; $72d7: $00
	inc b                                            ; $72d8: $04
	rlca                                             ; $72d9: $07
	dec b                                            ; $72da: $05
	db $dd                                           ; $72db: $dd
	rlca                                             ; $72dc: $07
	sbc [hl]                                         ; $72dd: $9e
	nop                                              ; $72de: $00
	jp c, $940f                                      ; $72df: $da $0f $94

	nop                                              ; $72e2: $00
	ret nz                                           ; $72e3: $c0

	ld sp, hl                                        ; $72e4: $f9
	ld a, a                                          ; $72e5: $7f
	xor e                                            ; $72e6: $ab
	db $fd                                           ; $72e7: $fd
	ei                                               ; $72e8: $fb
	push af                                          ; $72e9: $f5
	nop                                              ; $72ea: $00
	nop                                              ; $72eb: $00
	cp $dc                                           ; $72ec: $fe $dc
	rst $38                                          ; $72ee: $ff
	rst SubAFromDE                                          ; $72ef: $df
	rlca                                             ; $72f0: $07
	sbc c                                            ; $72f1: $99
	add a                                            ; $72f2: $87
	pop af                                           ; $72f3: $f1
	cp $ff                                           ; $72f4: $fe $ff
	xor $f7                                          ; $72f6: $ee $f7
	cp $73                                           ; $72f8: $fe $73
	rst AddAOntoHL                                          ; $72fa: $ef
	db $dd                                           ; $72fb: $dd
	cp [hl]                                          ; $72fc: $be
	db $dd                                           ; $72fd: $dd
	ld a, $d9                                        ; $72fe: $3e $d9
	ld a, h                                          ; $7300: $7c
	sbc l                                            ; $7301: $9d
	add l                                            ; $7302: $85
	ld b, l                                          ; $7303: $45
	ld l, a                                          ; $7304: $6f
	cp $d9                                           ; $7305: $fe $d9
	ld [$ffdd], sp                                   ; $7307: $08 $dd $ff
	sbc e                                            ; $730a: $9b
	ld bc, $ffea                                     ; $730b: $01 $ea $ff
	xor d                                            ; $730e: $aa
	db $dd                                           ; $730f: $dd
	rst $38                                          ; $7310: $ff
	sbc [hl]                                         ; $7311: $9e
	cp $fe                                           ; $7312: $fe $fe
	sub e                                            ; $7314: $93
	cp h                                             ; $7315: $bc
	cp a                                             ; $7316: $bf
	or e                                             ; $7317: $b3
	ld [de], a                                       ; $7318: $12
	ld d, h                                          ; $7319: $54
	xor d                                            ; $731a: $aa
	ld d, h                                          ; $731b: $54
	xor d                                            ; $731c: $aa
	jp $ccc0                                         ; $731d: $c3 $c0 $cc


	db $ed                                           ; $7320: $ed
	db $fd                                           ; $7321: $fd
	sub d                                            ; $7322: $92
	inc de                                           ; $7323: $13
	rst SubAFromDE                                          ; $7324: $df
	ld e, a                                          ; $7325: $5f
	ld e, a                                          ; $7326: $5f
	inc bc                                           ; $7327: $03
	nop                                              ; $7328: $00
	nop                                              ; $7329: $00
	add b                                            ; $732a: $80
	rst AddAOntoHL                                          ; $732b: $ef
	ccf                                              ; $732c: $3f
	cp a                                             ; $732d: $bf
	cp a                                             ; $732e: $bf
	rra                                              ; $732f: $1f
	cp $dc                                           ; $7330: $fe $dc
	rst $38                                          ; $7332: $ff
	ld a, a                                          ; $7333: $7f
	adc d                                            ; $7334: $8a
	ld l, a                                          ; $7335: $6f
	ld hl, sp-$02                                    ; $7336: $f8 $fe
	add d                                            ; $7338: $82
	ldh [c], a                                       ; $7339: $e2
	rst FarCall                                          ; $733a: $f7
	or $df                                           ; $733b: $f6 $df
	xor a                                            ; $733d: $af
	rst GetHLinHL                                          ; $733e: $cf
	nop                                              ; $733f: $00
	nop                                              ; $7340: $00
	db $fc                                           ; $7341: $fc
	ld hl, sp-$11                                    ; $7342: $f8 $ef
	rst SubAFromBC                                          ; $7344: $e7
	rst SubAFromDE                                          ; $7345: $df
	ccf                                              ; $7346: $3f
	nop                                              ; $7347: $00
	nop                                              ; $7348: $00
	xor a                                            ; $7349: $af
	db $fc                                           ; $734a: $fc
	push af                                          ; $734b: $f5
	ld [$bd9d], a                                    ; $734c: $ea $9d $bd
	ld bc, $060f                                     ; $734f: $01 $0f $06
	nop                                              ; $7352: $00
	add b                                            ; $7353: $80
	ret nz                                           ; $7354: $c0

	add b                                            ; $7355: $80
	cp $8d                                           ; $7356: $fe $8d
	jp hl                                            ; $7358: $e9


	rrca                                             ; $7359: $0f
	ld d, e                                          ; $735a: $53
	ld l, e                                          ; $735b: $6b
	xor e                                            ; $735c: $ab
	rla                                              ; $735d: $17
	ld a, [hl]                                       ; $735e: $7e
	sub a                                            ; $735f: $97
	rla                                              ; $7360: $17
	scf                                              ; $7361: $37
	ccf                                              ; $7362: $3f
	rra                                              ; $7363: $1f
	ld e, a                                          ; $7364: $5f
	cp b                                             ; $7365: $b8
	add c                                            ; $7366: $81
	ld l, b                                          ; $7367: $68
	ei                                               ; $7368: $fb
	db $fc                                           ; $7369: $fc
	sbc $ff                                          ; $736a: $de $ff
	sbc h                                            ; $736c: $9c
	di                                               ; $736d: $f3
	rst $38                                          ; $736e: $ff
	ld a, d                                          ; $736f: $7a
	ld [hl], a                                       ; $7370: $77
	ld sp, hl                                        ; $7371: $f9

Call_04e_7372:
	sub a                                            ; $7372: $97
	ret nz                                           ; $7373: $c0

	inc c                                            ; $7374: $0c
	nop                                              ; $7375: $00
	add l                                            ; $7376: $85

jr_04e_7377:
	ld d, e                                          ; $7377: $53
	ld [hl], e                                       ; $7378: $73
	or c                                             ; $7379: $b1
	sbc $de                                          ; $737a: $de $de
	rst $38                                          ; $737c: $ff
	sbc h                                            ; $737d: $9c
	ld a, a                                          ; $737e: $7f
	add e                                            ; $737f: $83
	add e                                            ; $7380: $83
	ld a, e                                          ; $7381: $7b
	sbc d                                            ; $7382: $9a
	ld a, e                                          ; $7383: $7b
	sbc b                                            ; $7384: $98
	sub h                                            ; $7385: $94
	ldh a, [c]                                       ; $7386: $f2
	push hl                                          ; $7387: $e5
	ld a, [de]                                       ; $7388: $1a
	cp a                                             ; $7389: $bf
	pop bc                                           ; $738a: $c1
	call c, $8088                                    ; $738b: $dc $88 $80
	ld hl, sp-$10                                    ; $738e: $f8 $f0
	ldh [$fe], a                                     ; $7390: $e0 $fe
	sbc c                                            ; $7392: $99
	db $10                                           ; $7393: $10
	inc bc                                           ; $7394: $03
	and [hl]                                         ; $7395: $a6
	ld d, e                                          ; $7396: $53
	and e                                            ; $7397: $a3
	ld d, [hl]                                       ; $7398: $56
	ld a, d                                          ; $7399: $7a
	xor $9a                                          ; $739a: $ee $9a
	rst $38                                          ; $739c: $ff
	ld [$0d0d], sp                                   ; $739d: $08 $0d $0d
	ld bc, $b077                                     ; $73a0: $01 $77 $b0
	ld a, e                                          ; $73a3: $7b
	db $f4                                           ; $73a4: $f4
	sbc h                                            ; $73a5: $9c
	ld a, a                                          ; $73a6: $7f
	ld e, c                                          ; $73a7: $59
	ld a, [$fb7b]                                    ; $73a8: $fa $7b $fb
	ld [hl], a                                       ; $73ab: $77
	inc d                                            ; $73ac: $14
	ld [hl], a                                       ; $73ad: $77
	ldh a, [$98]                                     ; $73ae: $f0 $98
	ld e, $3f                                        ; $73b0: $1e $3f
	rst AddAOntoHL                                          ; $73b2: $ef
	rst SubAFromDE                                          ; $73b3: $df
	rst GetHLinHL                                          ; $73b4: $cf
	rst $38                                          ; $73b5: $ff
	xor h                                            ; $73b6: $ac
	ld a, d                                          ; $73b7: $7a
	pop de                                           ; $73b8: $d1
	adc l                                            ; $73b9: $8d
	sbc a                                            ; $73ba: $9f
	rst AddAOntoHL                                          ; $73bb: $ef
	ccf                                              ; $73bc: $3f
	rlca                                             ; $73bd: $07
	ld d, b                                          ; $73be: $50
	ld a, [$1ebc]                                    ; $73bf: $fa $bc $1e
	cp a                                             ; $73c2: $bf
	rst $38                                          ; $73c3: $ff
	rst FarCall                                          ; $73c4: $f7
	rst SubAFromBC                                          ; $73c5: $e7
	rst FarCall                                          ; $73c6: $f7
	ld a, l                                          ; $73c7: $7d
	ld a, [hl]                                       ; $73c8: $7e
	cp a                                             ; $73c9: $bf
	rst SubAFromDE                                          ; $73ca: $df
	sbc a                                            ; $73cb: $9f
	ld a, d                                          ; $73cc: $7a
	xor [hl]                                         ; $73cd: $ae
	adc a                                            ; $73ce: $8f
	ld a, [hl]                                       ; $73cf: $7e
	dec a                                            ; $73d0: $3d
	xor [hl]                                         ; $73d1: $ae
	dec e                                            ; $73d2: $1d
	ld l, [hl]                                       ; $73d3: $6e
	dec c                                            ; $73d4: $0d
	sub [hl]                                         ; $73d5: $96
	ld h, l                                          ; $73d6: $65
	add b                                            ; $73d7: $80
	ld b, b                                          ; $73d8: $40
	db $10                                           ; $73d9: $10
	ldh [$c0], a                                     ; $73da: $e0 $c0
	ld [hl], b                                       ; $73dc: $70
	jr c, jr_04e_7377                                ; $73dd: $38 $98

	ld a, d                                          ; $73df: $7a
	ldh [$9a], a                                     ; $73e0: $e0 $9a
	rlca                                             ; $73e2: $07
	add [hl]                                         ; $73e3: $86
	ld b, a                                          ; $73e4: $47
	and [hl]                                         ; $73e5: $a6
	ld b, a                                          ; $73e6: $47
	reti                                             ; $73e7: $d9


	rrca                                             ; $73e8: $0f
	sub a                                            ; $73e9: $97
	db $eb                                           ; $73ea: $eb
	rst FarCall                                          ; $73eb: $f7
	ld [$aad7], a                                    ; $73ec: $ea $d7 $aa
	ld d, a                                          ; $73ef: $57
	xor d                                            ; $73f0: $aa
	ld d, a                                          ; $73f1: $57
	reti                                             ; $73f2: $d9


	rst $38                                          ; $73f3: $ff
	sub a                                            ; $73f4: $97
	xor $c7                                          ; $73f5: $ee $c7
	xor [hl]                                         ; $73f7: $ae
	ld d, l                                          ; $73f8: $55
	xor [hl]                                         ; $73f9: $ae
	ld b, l                                          ; $73fa: $45
	add [hl]                                         ; $73fb: $86
	ld b, l                                          ; $73fc: $45
	reti                                             ; $73fd: $d9


	rst $38                                          ; $73fe: $ff
	sbc [hl]                                         ; $73ff: $9e
	ld a, $da                                        ; $7400: $3e $da
	cp [hl]                                          ; $7402: $be
	ld h, $c0                                        ; $7403: $26 $c0
	sbc [hl]                                         ; $7405: $9e
	ld d, l                                          ; $7406: $55
	ld [hl], d                                       ; $7407: $72
	add $9d                                          ; $7408: $c6 $9d
	cp e                                             ; $740a: $bb
	ld d, l                                          ; $740b: $55
	ld sp, hl                                        ; $740c: $f9
	ld l, a                                          ; $740d: $6f
	ldh a, [$7f]                                     ; $740e: $f0 $7f
	ld h, c                                          ; $7410: $61
	ld h, e                                          ; $7411: $63
	ldh a, [$98]                                     ; $7412: $f0 $98
	adc d                                            ; $7414: $8a
	rst SubAFromHL                                          ; $7415: $d7
	jp z, $aa95                                      ; $7416: $ca $95 $aa

	sub l                                            ; $7419: $95
	ld a, [hl+]                                      ; $741a: $2a
	rst FarCall                                          ; $741b: $f7
	sbc c                                            ; $741c: $99
	rst $38                                          ; $741d: $ff
	and b                                            ; $741e: $a0
	ld [bc], a                                       ; $741f: $02
	add hl, bc                                       ; $7420: $09
	ld b, $18                                        ; $7421: $06 $18
	db $fd                                           ; $7423: $fd
	sub h                                            ; $7424: $94
	ld bc, $3906                                     ; $7425: $01 $06 $39
	ld h, a                                          ; $7428: $67
	nop                                              ; $7429: $00
	ld [bc], a                                       ; $742a: $02
	inc bc                                           ; $742b: $03
	sub h                                            ; $742c: $94
	add hl, hl                                       ; $742d: $29
	add b                                            ; $742e: $80
	inc de                                           ; $742f: $13
	ld a, e                                          ; $7430: $7b
	di                                               ; $7431: $f3
	sbc b                                            ; $7432: $98
	inc e                                            ; $7433: $1c
	ld l, b                                          ; $7434: $68
	ret nc                                           ; $7435: $d0

	ld [hl], e                                       ; $7436: $73
	ldh [$e0], a                                     ; $7437: $e0 $e0
	ld h, b                                          ; $7439: $60
	cp $7e                                           ; $743a: $fe $7e
	or $80                                           ; $743c: $f6 $80
	add b                                            ; $743e: $80
	jr nc, jr_04e_7460                               ; $743f: $30 $1f

	rst $38                                          ; $7441: $ff
	rst $38                                          ; $7442: $ff
	ld a, h                                          ; $7443: $7c
	db $fc                                           ; $7444: $fc
	rst $38                                          ; $7445: $ff
	rlca                                             ; $7446: $07
	inc bc                                           ; $7447: $03
	ld l, d                                          ; $7448: $6a
	sbc d                                            ; $7449: $9a
	add l                                            ; $744a: $85
	inc l                                            ; $744b: $2c
	add h                                            ; $744c: $84
	cp d                                             ; $744d: $ba
	dec c                                            ; $744e: $0d
	ld a, [de]                                       ; $744f: $1a
	sub l                                            ; $7450: $95
	inc b                                            ; $7451: $04
	ld [$3911], sp                                   ; $7452: $08 $11 $39
	inc b                                            ; $7455: $04
	ld [bc], a                                       ; $7456: $02
	dec b                                            ; $7457: $05
	push hl                                          ; $7458: $e5
	inc d                                            ; $7459: $14
	ld d, l                                          ; $745a: $55
	ld b, h                                          ; $745b: $44
	and h                                            ; $745c: $a4
	rst SubAFromDE                                          ; $745d: $df
	ld a, a                                          ; $745e: $7f
	sub e                                            ; $745f: $93

jr_04e_7460:
	cp a                                             ; $7460: $bf
	jr jr_04e_746b                                   ; $7461: $18 $08

	adc b                                            ; $7463: $88
	adc c                                            ; $7464: $89
	add hl, bc                                       ; $7465: $09
	nop                                              ; $7466: $00
	add b                                            ; $7467: $80
	ld b, b                                          ; $7468: $40
	sbc a                                            ; $7469: $9f
	ccf                                              ; $746a: $3f

jr_04e_746b:
	rra                                              ; $746b: $1f
	ld a, d                                          ; $746c: $7a
	push af                                          ; $746d: $f5
	sbc [hl]                                         ; $746e: $9e
	db $fc                                           ; $746f: $fc
	ld a, d                                          ; $7470: $7a
	add [hl]                                         ; $7471: $86
	sbc [hl]                                         ; $7472: $9e
	ldh [$7a], a                                     ; $7473: $e0 $7a
	pop hl                                           ; $7475: $e1
	sbc c                                            ; $7476: $99
	inc bc                                           ; $7477: $03
	rst $38                                          ; $7478: $ff
	add c                                            ; $7479: $81
	jr c, jr_04e_74b4                                ; $747a: $38 $38

	inc bc                                           ; $747c: $03
	ld a, d                                          ; $747d: $7a
	ld e, a                                          ; $747e: $5f
	ld a, [hl]                                       ; $747f: $7e
	ld h, l                                          ; $7480: $65
	sbc [hl]                                         ; $7481: $9e
	inc b                                            ; $7482: $04
	ld [hl], e                                       ; $7483: $73
	sub h                                            ; $7484: $94
	sub a                                            ; $7485: $97
	rst $38                                          ; $7486: $ff
	pop af                                           ; $7487: $f1
	ld [hl], l                                       ; $7488: $75
	jp hl                                            ; $7489: $e9


	db $ec                                           ; $748a: $ec
	ldh a, [c]                                       ; $748b: $f2
	rst $38                                          ; $748c: $ff
	add c                                            ; $748d: $81
	ld a, d                                          ; $748e: $7a
	ld d, l                                          ; $748f: $55
	sbc h                                            ; $7490: $9c
	inc b                                            ; $7491: $04
	ld bc, $7501                                     ; $7492: $01 $01 $75
	db $ed                                           ; $7495: $ed
	add b                                            ; $7496: $80
	ld a, a                                          ; $7497: $7f
	dec c                                            ; $7498: $0d
	or d                                             ; $7499: $b2

jr_04e_749a:
	inc b                                            ; $749a: $04
	add b                                            ; $749b: $80
	db $f4                                           ; $749c: $f4
	jp $8000                                         ; $749d: $c3 $00 $80


	sub d                                            ; $74a0: $92
	dec b                                            ; $74a1: $05
	nop                                              ; $74a2: $00
	ld bc, $fc03                                     ; $74a3: $01 $03 $fc
	pop de                                           ; $74a6: $d1
	push hl                                          ; $74a7: $e5
	ld c, c                                          ; $74a8: $49
	sub b                                            ; $74a9: $90
	inc b                                            ; $74aa: $04
	ld [$6512], sp                                   ; $74ab: $08 $12 $65
	ld l, $18                                        ; $74ae: $2e $18
	or b                                             ; $74b0: $b0
	ld h, e                                          ; $74b1: $63
	db $e3                                           ; $74b2: $e3
	rst JumpTable                                          ; $74b3: $c7

jr_04e_74b4:
	adc h                                            ; $74b4: $8c
	sbc b                                            ; $74b5: $98
	adc [hl]                                         ; $74b6: $8e
	ld a, [$083f]                                    ; $74b7: $fa $3f $08
	ld [bc], a                                       ; $74ba: $02
	ld b, b                                          ; $74bb: $40
	ld b, b                                          ; $74bc: $40
	nop                                              ; $74bd: $00
	db $10                                           ; $74be: $10
	dec a                                            ; $74bf: $3d
	adc $f0                                          ; $74c0: $ce $f0
	db $fc                                           ; $74c2: $fc
	ccf                                              ; $74c3: $3f
	ccf                                              ; $74c4: $3f
	rst $38                                          ; $74c5: $ff
	rst GetHLinHL                                          ; $74c6: $cf
	ld c, $7b                                        ; $74c7: $0e $7b
	cp b                                             ; $74c9: $b8
	sbc b                                            ; $74ca: $98
	add b                                            ; $74cb: $80
	ld h, b                                          ; $74cc: $60
	ld a, [hl-]                                      ; $74cd: $3a
	dec c                                            ; $74ce: $0d
	and $73                                          ; $74cf: $e6 $73
	ld bc, $f77b                                     ; $74d1: $01 $7b $f7
	sub e                                            ; $74d4: $93
	ret nz                                           ; $74d5: $c0

	ldh a, [$a5]                                     ; $74d6: $f0 $a5
	rst SubAFromDE                                          ; $74d8: $df
	ld a, b                                          ; $74d9: $78
	dec e                                            ; $74da: $1d
	ld [bc], a                                       ; $74db: $02
	ld bc, $c3a8                                     ; $74dc: $01 $a8 $c3
	rrca                                             ; $74df: $0f
	nop                                              ; $74e0: $00
	halt                                             ; $74e1: $76
	ld [hl], d                                       ; $74e2: $72
	sub l                                            ; $74e3: $95
	nop                                              ; $74e4: $00
	inc a                                            ; $74e5: $3c
	add d                                            ; $74e6: $82
	ld hl, sp+$00                                    ; $74e7: $f8 $00
	ld d, h                                          ; $74e9: $54
	xor b                                            ; $74ea: $a8
	ld d, h                                          ; $74eb: $54
	xor b                                            ; $74ec: $a8
	call nc, Call_04e_7372                           ; $74ed: $d4 $72 $73
	cp $9c                                           ; $74f0: $fe $9c
	sub [hl]                                         ; $74f2: $96
	dec e                                            ; $74f3: $1d
	inc b                                            ; $74f4: $04
	call c, Call_04e_7d03                            ; $74f5: $dc $03 $7d
	ldh a, [c]                                       ; $74f8: $f2
	ld [hl], d                                       ; $74f9: $72
	jr nc, jr_04e_749a                               ; $74fa: $30 $9e

	nop                                              ; $74fc: $00
	reti                                             ; $74fd: $d9


	cp [hl]                                          ; $74fe: $be
	ld h, $c0                                        ; $74ff: $26 $c0
	sbc l                                            ; $7501: $9d
	xor d                                            ; $7502: $aa
	ld d, l                                          ; $7503: $55
	ld l, a                                          ; $7504: $6f
	cp $f9                                           ; $7505: $fe $f9
	sub a                                            ; $7507: $97
	cp a                                             ; $7508: $bf
	ld a, a                                          ; $7509: $7f
	cp [hl]                                          ; $750a: $be
	ld a, [hl]                                       ; $750b: $7e
	cp [hl]                                          ; $750c: $be
	ld e, h                                          ; $750d: $5c
	cp l                                             ; $750e: $bd
	ld e, b                                          ; $750f: $58
	ld sp, hl                                        ; $7510: $f9
	sbc e                                            ; $7511: $9b
	ld d, h                                          ; $7512: $54
	dec hl                                           ; $7513: $2b
	ld d, h                                          ; $7514: $54
	xor h                                            ; $7515: $ac
	ld [hl], a                                       ; $7516: $77
	rst SubAFromDE                                          ; $7517: $df
	rst SubAFromDE                                          ; $7518: $df
	ld bc, $03df                                     ; $7519: $01 $df $03
	db $fd                                           ; $751c: $fd
	sub b                                            ; $751d: $90
	and b                                            ; $751e: $a0
	ldh [$d0], a                                     ; $751f: $e0 $d0
	ld l, b                                          ; $7521: $68
	or h                                             ; $7522: $b4
	adc $66                                          ; $7523: $ce $66
	and e                                            ; $7525: $a3
	rra                                              ; $7526: $1f
	sbc a                                            ; $7527: $9f
	rst AddAOntoHL                                          ; $7528: $ef
	rst FarCall                                          ; $7529: $f7
	ei                                               ; $752a: $fb
	ld a, l                                          ; $752b: $7d
	ccf                                              ; $752c: $3f
	ld [hl], l                                       ; $752d: $75
	ld l, l                                          ; $752e: $6d
	ld a, a                                          ; $752f: $7f
	daa                                              ; $7530: $27
	ld a, a                                          ; $7531: $7f
	ld [hl], h                                       ; $7532: $74
	sbc [hl]                                         ; $7533: $9e
	ld b, c                                          ; $7534: $41
	sbc $ff                                          ; $7535: $de $ff
	rst SubAFromDE                                          ; $7537: $df

jr_04e_7538:
	ld hl, sp+$7f                                    ; $7538: $f8 $7f
	inc hl                                           ; $753a: $23
	add b                                            ; $753b: $80
	cp [hl]                                          ; $753c: $be
	nop                                              ; $753d: $00
	jr nz, @-$6e                                     ; $753e: $20 $90

	inc bc                                           ; $7540: $03
	ld c, $3b                                        ; $7541: $0e $3b
	db $fc                                           ; $7543: $fc
	halt                                             ; $7544: $76
	di                                               ; $7545: $f3
	rst JumpTable                                          ; $7546: $c7
	rrca                                             ; $7547: $0f
	inc a                                            ; $7548: $3c
	pop af                                           ; $7549: $f1
	rst JumpTable                                          ; $754a: $c7
	rra                                              ; $754b: $1f
	rst $38                                          ; $754c: $ff
	rst JumpTable                                          ; $754d: $c7
	ld e, $6f                                        ; $754e: $1e $6f
	cp h                                             ; $7550: $bc
	db $ec                                           ; $7551: $ec
	ld h, h                                          ; $7552: $64
	and b                                            ; $7553: $a0
	push bc                                          ; $7554: $c5
	jr c, jr_04e_7538                                ; $7555: $38 $e1

	sbc a                                            ; $7557: $9f
	ld a, a                                          ; $7558: $7f
	rst $38                                          ; $7559: $ff
	ld hl, sp-$6b                                    ; $755a: $f8 $95
	ret nz                                           ; $755c: $c0

	nop                                              ; $755d: $00
	rst AddAOntoHL                                          ; $755e: $ef
	rst $38                                          ; $755f: $ff
	db $fc                                           ; $7560: $fc
	sbc h                                            ; $7561: $9c
	ldh [rTIMA], a                                   ; $7562: $e0 $05
	xor d                                            ; $7564: $aa
	ld d, l                                          ; $7565: $55
	ld a, d                                          ; $7566: $7a
	and b                                            ; $7567: $a0
	ld [hl], l                                       ; $7568: $75
	sbc a                                            ; $7569: $9f
	ld a, [hl]                                       ; $756a: $7e
	sbc $9c                                          ; $756b: $de $9c
	jp $15e0                                         ; $756d: $c3 $e0 $15


	ld [hl], a                                       ; $7570: $77
	add b                                            ; $7571: $80
	ld a, a                                          ; $7572: $7f
	jp hl                                            ; $7573: $e9


	ei                                               ; $7574: $fb
	ld a, a                                          ; $7575: $7f
	cp h                                             ; $7576: $bc
	ld a, d                                          ; $7577: $7a
	dec a                                            ; $7578: $3d
	ld [hl], a                                       ; $7579: $77
	ldh a, [$66]                                     ; $757a: $f0 $66
	ld d, d                                          ; $757c: $52
	sbc [hl]                                         ; $757d: $9e
	ld sp, hl                                        ; $757e: $f9
	ld l, e                                          ; $757f: $6b
	ldh a, [rOCPD]                                   ; $7580: $f0 $6b
	jr nz, @-$1f                                     ; $7582: $20 $df

	rst $38                                          ; $7584: $ff
	sbc e                                            ; $7585: $9b
	rst GetHLinHL                                          ; $7586: $cf
	dec e                                            ; $7587: $1d
	and e                                            ; $7588: $a3
	ld d, h                                          ; $7589: $54
	ld a, e                                          ; $758a: $7b
	ldh a, [$9d]                                     ; $758b: $f0 $9d
	rst $38                                          ; $758d: $ff
	ccf                                              ; $758e: $3f
	ld l, l                                          ; $758f: $6d
	ld c, a                                          ; $7590: $4f
	add b                                            ; $7591: $80
	cp b                                             ; $7592: $b8
	db $fc                                           ; $7593: $fc
	rst $38                                          ; $7594: $ff
	ccf                                              ; $7595: $3f
	ld l, a                                          ; $7596: $6f
	adc e                                            ; $7597: $8b
	ld d, l                                          ; $7598: $55
	ld a, c                                          ; $7599: $79
	rst JumpTable                                          ; $759a: $c7
	di                                               ; $759b: $f3
	db $fc                                           ; $759c: $fc
	rst $38                                          ; $759d: $ff
	rra                                              ; $759e: $1f
	rlca                                             ; $759f: $07
	inc bc                                           ; $75a0: $03
	adc b                                            ; $75a1: $88
	nop                                              ; $75a2: $00
	jr nz, jr_04e_75a5                               ; $75a3: $20 $00

jr_04e_75a5:
	jp nz, $f480                                     ; $75a5: $c2 $80 $f4

	pop af                                           ; $75a8: $f1
	rlca                                             ; $75a9: $07
	inc sp                                           ; $75aa: $33
	rst JumpTable                                          ; $75ab: $c7
	rst GetHLinHL                                          ; $75ac: $cf
	ld sp, $e2e6                                     ; $75ad: $31 $e6 $e2
	ld hl, sp-$79                                    ; $75b0: $f8 $87
	ld b, $33                                        ; $75b2: $06 $33
	ld [$0008], sp                                   ; $75b4: $08 $08 $00
	ld h, c                                          ; $75b7: $61
	and d                                            ; $75b8: $a2
	jr c, @-$06                                      ; $75b9: $38 $f8

	call z, Call_04e_6707                            ; $75bb: $cc $07 $67
	rrca                                             ; $75be: $0f
	ld e, $5c                                        ; $75bf: $1e $5c
	ret nz                                           ; $75c1: $c0

	ld a, [hl+]                                      ; $75c2: $2a
	add b                                            ; $75c3: $80
	ret nz                                           ; $75c4: $c0

	ld b, c                                          ; $75c5: $41
	ld b, b                                          ; $75c6: $40
	add e                                            ; $75c7: $83
	ld [bc], a                                       ; $75c8: $02
	dec b                                            ; $75c9: $05
	ld [hl], a                                       ; $75ca: $77
	push bc                                          ; $75cb: $c5
	sub e                                            ; $75cc: $93
	add c                                            ; $75cd: $81
	nop                                              ; $75ce: $00
	ld bc, $6802                                     ; $75cf: $01 $02 $68
	ld d, h                                          ; $75d2: $54
	xor b                                            ; $75d3: $a8
	ret nc                                           ; $75d4: $d0

	xor b                                            ; $75d5: $a8
	ld d, b                                          ; $75d6: $50
	xor b                                            ; $75d7: $a8
	ld d, b                                          ; $75d8: $50
	ld sp, hl                                        ; $75d9: $f9
	reti                                             ; $75da: $d9


	inc bc                                           ; $75db: $03
	ld sp, hl                                        ; $75dc: $f9
	ld [bc], a                                       ; $75dd: $02
	ret nz                                           ; $75de: $c0

	ld a, a                                          ; $75df: $7f
	ld h, h                                          ; $75e0: $64
	sbc [hl]                                         ; $75e1: $9e
	pop bc                                           ; $75e2: $c1
	ld l, b                                          ; $75e3: $68
	ld [hl], l                                       ; $75e4: $75
	sbc [hl]                                         ; $75e5: $9e
	ld a, $dd                                        ; $75e6: $3e $dd
	rst $38                                          ; $75e8: $ff
	sub a                                            ; $75e9: $97
	cp c                                             ; $75ea: $b9
	ld [hl], d                                       ; $75eb: $72
	and b                                            ; $75ec: $a0
	rst $38                                          ; $75ed: $ff
	rst $38                                          ; $75ee: $ff
	xor d                                            ; $75ef: $aa
	push de                                          ; $75f0: $d5
	xor d                                            ; $75f1: $aa
	ld l, a                                          ; $75f2: $6f
	ld d, h                                          ; $75f3: $54
	rst SubAFromDE                                          ; $75f4: $df
	rst $38                                          ; $75f5: $ff
	ld a, a                                          ; $75f6: $7f
	pop hl                                           ; $75f7: $e1
	ld a, a                                          ; $75f8: $7f
	ld sp, hl                                        ; $75f9: $f9
	sbc [hl]                                         ; $75fa: $9e
	ld e, l                                          ; $75fb: $5d
	ld a, e                                          ; $75fc: $7b
	db $db                                           ; $75fd: $db
	ld h, a                                          ; $75fe: $67
	ldh a, [$9c]                                     ; $75ff: $f0 $9c
	ld e, c                                          ; $7601: $59
	xor h                                            ; $7602: $ac
	ld [bc], a                                       ; $7603: $02
	ld a, e                                          ; $7604: $7b
	db $ec                                           ; $7605: $ec
	sbc d                                            ; $7606: $9a
	ld b, c                                          ; $7607: $41
	xor d                                            ; $7608: $aa
	rlca                                             ; $7609: $07
	inc bc                                           ; $760a: $03
	ld bc, $f073                                     ; $760b: $01 $73 $f0
	sub h                                            ; $760e: $94
	add b                                            ; $760f: $80
	jp $1e67                                         ; $7610: $c3 $67 $1e


	rst $38                                          ; $7613: $ff
	pop hl                                           ; $7614: $e1
	pop de                                           ; $7615: $d1
	cp $bc                                           ; $7616: $fe $bc
	db $db                                           ; $7618: $db
	rst SubAFromBC                                          ; $7619: $e7
	db $dd                                           ; $761a: $dd
	rst $38                                          ; $761b: $ff
	sub l                                            ; $761c: $95
	db $fd                                           ; $761d: $fd
	add $1c                                          ; $761e: $c6 $1c
	ld b, b                                          ; $7620: $40
	adc a                                            ; $7621: $8f
	rst $38                                          ; $7622: $ff
	cp a                                             ; $7623: $bf
	cp a                                             ; $7624: $bf
	rst $38                                          ; $7625: $ff
	ld hl, sp+$79                                    ; $7626: $f8 $79
	or c                                             ; $7628: $b1
	ld [hl], a                                       ; $7629: $77
	xor c                                            ; $762a: $a9
	sbc l                                            ; $762b: $9d
	ld a, [bc]                                       ; $762c: $0a
	dec d                                            ; $762d: $15
	ld l, l                                          ; $762e: $6d
	cpl                                              ; $762f: $2f
	ld l, e                                          ; $7630: $6b
	ret nz                                           ; $7631: $c0

	sbc [hl]                                         ; $7632: $9e
	nop                                              ; $7633: $00
	ld a, e                                          ; $7634: $7b
	or l                                             ; $7635: $b5
	ld a, a                                          ; $7636: $7f
	db $db                                           ; $7637: $db
	rst SubAFromDE                                          ; $7638: $df
	rst $38                                          ; $7639: $ff
	sbc [hl]                                         ; $763a: $9e
	and $73                                          ; $763b: $e6 $73
	ldh a, [$df]                                     ; $763d: $f0 $df
	db $fd                                           ; $763f: $fd
	sbc [hl]                                         ; $7640: $9e
	add hl, de                                       ; $7641: $19
	ld [hl], a                                       ; $7642: $77
	ldh a, [$de]                                     ; $7643: $f0 $de
	cp $9e                                           ; $7645: $fe $9e
	ld d, $67                                        ; $7647: $16 $67
	and b                                            ; $7649: $a0
	ld [hl], a                                       ; $764a: $77
	ldh a, [$78]                                     ; $764b: $f0 $78
	ld h, e                                          ; $764d: $63
	ld [hl], c                                       ; $764e: $71
	nop                                              ; $764f: $00
	ld h, e                                          ; $7650: $63
	ldh a, [$5f]                                     ; $7651: $f0 $5f
	ret nz                                           ; $7653: $c0

	ld b, e                                          ; $7654: $43
	ldh a, [$9d]                                     ; $7655: $f0 $9d
	xor e                                            ; $7657: $ab
	ld d, h                                          ; $7658: $54
	ld c, a                                          ; $7659: $4f
	ldh a, [$99]                                     ; $765a: $f0 $99
	ld a, d                                          ; $765c: $7a
	ld a, $ae                                        ; $765d: $3e $ae
	rst FarCall                                          ; $765f: $f7
	ld a, [$7bf5]                                    ; $7660: $fa $f5 $7b
	sbc h                                            ; $7663: $9c
	sbc h                                            ; $7664: $9c
	ld a, a                                          ; $7665: $7f
	rra                                              ; $7666: $1f
	ld [$e977], sp                                   ; $7667: $08 $77 $e9
	sub e                                            ; $766a: $93
	stop                                             ; $766b: $10 $00
	add b                                            ; $766d: $80
	ret nc                                           ; $766e: $d0

	xor d                                            ; $766f: $aa
	ld d, [hl]                                       ; $7670: $56
	xor e                                            ; $7671: $ab
	ld b, e                                          ; $7672: $43
	ldh [$c0], a                                     ; $7673: $e0 $c0
	nop                                              ; $7675: $00
	nop                                              ; $7676: $00
	sbc $fc                                          ; $7677: $de $fc
	sbc e                                            ; $7679: $9b
	nop                                              ; $767a: $00
	ld [$1a09], sp                                   ; $767b: $08 $09 $1a
	ld a, d                                          ; $767e: $7a
	ld b, l                                          ; $767f: $45
	rst SubAFromDE                                          ; $7680: $df
	rst $38                                          ; $7681: $ff
	rst SubAFromDE                                          ; $7682: $df
	ld b, $96                                        ; $7683: $06 $96
	nop                                              ; $7685: $00
	rra                                              ; $7686: $1f
	ld a, a                                          ; $7687: $7f
	ld a, l                                          ; $7688: $7d
	ld a, a                                          ; $7689: $7f
	ld [hl], c                                       ; $768a: $71
	and b                                            ; $768b: $a0
	ld d, b                                          ; $768c: $50
	add b                                            ; $768d: $80
	ld h, a                                          ; $768e: $67
	ret nz                                           ; $768f: $c0

	rst SubAFromDE                                          ; $7690: $df
	rst $38                                          ; $7691: $ff
	sbc h                                            ; $7692: $9c
	and c                                            ; $7693: $a1
	pop hl                                           ; $7694: $e1
	add a                                            ; $7695: $87
	sbc $03                                          ; $7696: $de $03
	rst SubAFromDE                                          ; $7698: $df
	rrca                                             ; $7699: $0f
	rst SubAFromDE                                          ; $769a: $df
	ld c, $7d                                        ; $769b: $0e $7d
	ld h, c                                          ; $769d: $61
	rst $38                                          ; $769e: $ff
	rst SubAFromDE                                          ; $769f: $df
	cp $de                                           ; $76a0: $fe $de
	rst $38                                          ; $76a2: $ff
	sbc $be                                          ; $76a3: $de $be
	rst SubAFromDE                                          ; $76a5: $df
	cp h                                             ; $76a6: $bc
	rst SubAFromDE                                          ; $76a7: $df
	db $fc                                           ; $76a8: $fc
	halt                                             ; $76a9: $76
	ret nz                                           ; $76aa: $c0

	rst SubAFromDE                                          ; $76ab: $df
	ld a, [hl]                                       ; $76ac: $7e
	rst SubAFromDE                                          ; $76ad: $df
	ld a, $9e                                        ; $76ae: $3e $9e
	db $fc                                           ; $76b0: $fc
	ld b, [hl]                                       ; $76b1: $46
	ret nz                                           ; $76b2: $c0

	rst GetHLinHL                                          ; $76b3: $cf
	rst $38                                          ; $76b4: $ff
	sbc d                                            ; $76b5: $9a
	rst SubAFromDE                                          ; $76b6: $df
	rst $38                                          ; $76b7: $ff
	add b                                            ; $76b8: $80
	add b                                            ; $76b9: $80
	ret nz                                           ; $76ba: $c0

	ld a, e                                          ; $76bb: $7b
	xor e                                            ; $76bc: $ab
	sbc [hl]                                         ; $76bd: $9e
	ldh [$79], a                                     ; $76be: $e0 $79
	pop de                                           ; $76c0: $d1
	ld a, a                                          ; $76c1: $7f
	rst FarCall                                          ; $76c2: $f7
	sbc l                                            ; $76c3: $9d
	rst $38                                          ; $76c4: $ff
	push af                                          ; $76c5: $f5
	ld l, e                                          ; $76c6: $6b
	ld h, h                                          ; $76c7: $64
	sbc h                                            ; $76c8: $9c
	jp z, $fe00                                      ; $76c9: $ca $00 $fe

	ld [hl], e                                       ; $76cc: $73
	ld hl, sp-$62                                    ; $76cd: $f8 $9e
	ld b, b                                          ; $76cf: $40
	ld a, e                                          ; $76d0: $7b
	ld a, e                                          ; $76d1: $7b
	ld [hl], a                                       ; $76d2: $77
	ld hl, sp+$7d                                    ; $76d3: $f8 $7d
	sub [hl]                                         ; $76d5: $96
	ld [hl], d                                       ; $76d6: $72
	ld e, h                                          ; $76d7: $5c
	ld a, [hl]                                       ; $76d8: $7e
	call nz, $419a                                   ; $76d9: $c4 $9a $41
	pop hl                                           ; $76dc: $e1
	ld b, c                                          ; $76dd: $41
	pop bc                                           ; $76de: $c1
	ld b, c                                          ; $76df: $41
	ld [hl], d                                       ; $76e0: $72
	ld a, h                                          ; $76e1: $7c
	call c, $80ff                                    ; $76e2: $dc $ff $80
	cp a                                             ; $76e5: $bf
	db $fd                                           ; $76e6: $fd
	rst FarCall                                          ; $76e7: $f7
	rst FarCall                                          ; $76e8: $f7
	or a                                             ; $76e9: $b7
	or e                                             ; $76ea: $b3
	or b                                             ; $76eb: $b0
	ld a, a                                          ; $76ec: $7f
	ld a, a                                          ; $76ed: $7f
	ld [hl-], a                                      ; $76ee: $32
	jr c, jr_04e_7729                                ; $76ef: $38 $38

	ld a, b                                          ; $76f1: $78
	ld a, h                                          ; $76f2: $7c
	ld a, a                                          ; $76f3: $7f
	rst $38                                          ; $76f4: $ff
	rst AddAOntoHL                                          ; $76f5: $ef
	rst $38                                          ; $76f6: $ff
	ei                                               ; $76f7: $fb
	ei                                               ; $76f8: $fb
	db $eb                                           ; $76f9: $eb
	jp hl                                            ; $76fa: $e9


	db $ec                                           ; $76fb: $ec
	rst $38                                          ; $76fc: $ff
	sbc $00                                          ; $76fd: $de $00

Jump_04e_76ff:
	inc b                                            ; $76ff: $04
	inc b                                            ; $7700: $04
	inc d                                            ; $7701: $14
	ld d, $1b                                        ; $7702: $16 $1b
	ld a, l                                          ; $7704: $7d
	pop bc                                           ; $7705: $c1
	adc l                                            ; $7706: $8d
	rst FarCall                                          ; $7707: $f7
	or $76                                           ; $7708: $f6 $76
	or a                                             ; $770a: $b7
	or a                                             ; $770b: $b7
	rst FarCall                                          ; $770c: $f7
	db $fd                                           ; $770d: $fd
	dec a                                            ; $770e: $3d
	dec c                                            ; $770f: $0d
	dec c                                            ; $7710: $0d
	adc l                                            ; $7711: $8d
	ld c, l                                          ; $7712: $4d
	ld c, l                                          ; $7713: $4d
	dec c                                            ; $7714: $0d
	rst $38                                          ; $7715: $ff
	db $eb                                           ; $7716: $eb
	ld d, l                                          ; $7717: $55
	xor c                                            ; $7718: $a9
	ld a, c                                          ; $7719: $79
	and c                                            ; $771a: $a1
	sbc d                                            ; $771b: $9a
	xor e                                            ; $771c: $ab
	cp $fe                                           ; $771d: $fe $fe
	ld a, [$77f6]                                    ; $771f: $fa $f6 $77
	ld d, b                                          ; $7722: $50
	halt                                             ; $7723: $76
	call nz, $fe7b                                   ; $7724: $c4 $7b $fe
	sbc [hl]                                         ; $7727: $9e
	ld a, h                                          ; $7728: $7c

jr_04e_7729:
	db $db                                           ; $7729: $db
	rst $38                                          ; $772a: $ff
	rst SubAFromDE                                          ; $772b: $df
	db $fc                                           ; $772c: $fc
	ld a, [hl]                                       ; $772d: $7e
	ld [hl], $99                                     ; $772e: $36 $99
	push de                                          ; $7730: $d5
	ld [$2aff], a                                    ; $7731: $ea $ff $2a
	scf                                              ; $7734: $37
	ld a, [hl+]                                      ; $7735: $2a
	db $db                                           ; $7736: $db
	rst $38                                          ; $7737: $ff
	sub l                                            ; $7738: $95
	ccf                                              ; $7739: $3f
	ld a, a                                          ; $773a: $7f
	ld d, l                                          ; $773b: $55
	xor d                                            ; $773c: $aa
	ld a, a                                          ; $773d: $7f
	xor a                                            ; $773e: $af
	ld a, a                                          ; $773f: $7f
	xor a                                            ; $7740: $af
	rst SubAFromDE                                          ; $7741: $df
	cp a                                             ; $7742: $bf
	jp nc, $7fff                                     ; $7743: $d2 $ff $7f

	adc $da                                          ; $7746: $ce $da
	rst $38                                          ; $7748: $ff
	ld a, a                                          ; $7749: $7f
	ld l, a                                          ; $774a: $6f
	ei                                               ; $774b: $fb
	sbc [hl]                                         ; $774c: $9e
	adc c                                            ; $774d: $89
	ld a, e                                          ; $774e: $7b
	ld a, [hl-]                                      ; $774f: $3a
	db $dd                                           ; $7750: $dd
	add b                                            ; $7751: $80
	sbc [hl]                                         ; $7752: $9e
	ld [bc], a                                       ; $7753: $02
	ld [hl], e                                       ; $7754: $73
	ld c, d                                          ; $7755: $4a
	rst $38                                          ; $7756: $ff
	sbc l                                            ; $7757: $9d
	cp l                                             ; $7758: $bd
	pop hl                                           ; $7759: $e1
	db $dd                                           ; $775a: $dd
	inc bc                                           ; $775b: $03
	rst SubAFromDE                                          ; $775c: $df
	ld [bc], a                                       ; $775d: $02
	ld h, a                                          ; $775e: $67
	sub $97                                          ; $775f: $d6 $97
	ld h, c                                          ; $7761: $61
	ld a, c                                          ; $7762: $79
	add hl, sp                                       ; $7763: $39
	ld a, c                                          ; $7764: $79
	ld c, l                                          ; $7765: $4d
	ld bc, $7d01                                     ; $7766: $01 $01 $7d
	reti                                             ; $7769: $d9


	rst $38                                          ; $776a: $ff
	add b                                            ; $776b: $80
	add a                                            ; $776c: $87
	rlca                                             ; $776d: $07
	cp a                                             ; $776e: $bf
	add c                                            ; $776f: $81
	sbc c                                            ; $7770: $99
	add c                                            ; $7771: $81
	dec sp                                           ; $7772: $3b
	rst $38                                          ; $7773: $ff
	ld c, $cd                                        ; $7774: $0e $cd
	adc $e6                                          ; $7776: $ce $e6
	rst AddAOntoHL                                          ; $7778: $ef
	set 3, a                                         ; $7779: $cb $df
	sub a                                            ; $777b: $97

jr_04e_777c:
	rst $38                                          ; $777c: $ff
	ld a, $3c                                        ; $777d: $3e $3c
	rra                                              ; $777f: $1f
	rra                                              ; $7780: $1f
	scf                                              ; $7781: $37
	jr nc, jr_04e_777c                               ; $7782: $30 $f8

	cp [hl]                                          ; $7784: $be
	inc a                                            ; $7785: $3c
	ld a, [hl]                                       ; $7786: $7e
	cp a                                             ; $7787: $bf
	db $fd                                           ; $7788: $fd
	ld [hl-], a                                      ; $7789: $32
	add l                                            ; $778a: $85
	sub [hl]                                         ; $778b: $96
	and d                                            ; $778c: $a2
	db $fc                                           ; $778d: $fc
	cp $bf                                           ; $778e: $fe $bf
	rst $38                                          ; $7790: $ff
	ei                                               ; $7791: $fb
	ld sp, hl                                        ; $7792: $f9
	ld a, c                                          ; $7793: $79
	ld e, l                                          ; $7794: $5d
	ld a, d                                          ; $7795: $7a
	call nz, $c5df                                   ; $7796: $c4 $df $c5
	sbc h                                            ; $7799: $9c
	push hl                                          ; $779a: $e5
	push bc                                          ; $779b: $c5
	push hl                                          ; $779c: $e5
	sbc $08                                          ; $779d: $de $08
	sbc d                                            ; $779f: $9a
	adc b                                            ; $77a0: $88
	ret z                                            ; $77a1: $c8

	ret z                                            ; $77a2: $c8

	add sp, -$18                                     ; $77a3: $e8 $e8
	pop de                                           ; $77a5: $d1
	rst $38                                          ; $77a6: $ff
	rst SubAFromDE                                          ; $77a7: $df
	ret nz                                           ; $77a8: $c0

	db $dd                                           ; $77a9: $dd
	add b                                            ; $77aa: $80
	ld [hl], a                                       ; $77ab: $77
	add e                                            ; $77ac: $83
	db $dd                                           ; $77ad: $dd

jr_04e_77ae:
	ret nz                                           ; $77ae: $c0

	sbc [hl]                                         ; $77af: $9e
	rst SubAFromDE                                          ; $77b0: $df
	ld a, d                                          ; $77b1: $7a
	ld c, d                                          ; $77b2: $4a
	ld [hl], d                                       ; $77b3: $72
	jp c, $9efa                                      ; $77b4: $da $fa $9e

	ld hl, sp-$04                                    ; $77b7: $f8 $fc
	sbc d                                            ; $77b9: $9a
	ld [bc], a                                       ; $77ba: $02
	nop                                              ; $77bb: $00
	or $06                                           ; $77bc: $f6 $06
	nop                                              ; $77be: $00
	db $dd                                           ; $77bf: $dd
	ld bc, $fb7b                                     ; $77c0: $01 $7b $fb
	call c, Call_04e_7a41                            ; $77c3: $dc $41 $7a
	cp h                                             ; $77c6: $bc
	reti                                             ; $77c7: $d9


	rst $38                                          ; $77c8: $ff
	sub [hl]                                         ; $77c9: $96
	rst FarCall                                          ; $77ca: $f7
	cp a                                             ; $77cb: $bf
	and b                                            ; $77cc: $a0
	and b                                            ; $77cd: $a0
	or b                                             ; $77ce: $b0
	or b                                             ; $77cf: $b0
	and b                                            ; $77d0: $a0
	or e                                             ; $77d1: $b3
	jr c, jr_04e_77ae                                ; $77d2: $38 $da

	ld a, a                                          ; $77d4: $7f
	ld a, a                                          ; $77d5: $7f
	adc d                                            ; $77d6: $8a
	add b                                            ; $77d7: $80
	inc l                                            ; $77d8: $2c
	ld b, b                                          ; $77d9: $40
	jr nz, jr_04e_783c                               ; $77da: $20 $60

	ld [hl], c                                       ; $77dc: $71
	ldh a, [$78]                                     ; $77dd: $f0 $78
	rst SubAFromDE                                          ; $77df: $df
	db $d3                                           ; $77e0: $d3
	cp a                                             ; $77e1: $bf
	rst SubAFromDE                                          ; $77e2: $df
	sbc a                                            ; $77e3: $9f
	adc [hl]                                         ; $77e4: $8e
	rst SubAFromDE                                          ; $77e5: $df
	ld a, a                                          ; $77e6: $7f
	rst $38                                          ; $77e7: $ff
	rlca                                             ; $77e8: $07
	ld [hl], a                                       ; $77e9: $77
	rst FarCall                                          ; $77ea: $f7
	rst $38                                          ; $77eb: $ff
	rst $38                                          ; $77ec: $ff
	ld d, a                                          ; $77ed: $57
	db $fd                                           ; $77ee: $fd
	db $fd                                           ; $77ef: $fd
	rst $38                                          ; $77f0: $ff
	adc l                                            ; $77f1: $8d
	add hl, bc                                       ; $77f2: $09
	inc bc                                           ; $77f3: $03
	dec b                                            ; $77f4: $05
	rst AddAOntoHL                                          ; $77f5: $ef
	ld e, a                                          ; $77f6: $5f
	sbc b                                            ; $77f7: $98
	cp $d5                                           ; $77f8: $fe $d5
	adc d                                            ; $77fa: $8a
	sub l                                            ; $77fb: $95
	adc d                                            ; $77fc: $8a
	push de                                          ; $77fd: $d5

Jump_04e_77fe:
	xor l                                            ; $77fe: $ad
	halt                                             ; $77ff: $76
	db $fc                                           ; $7800: $fc
	rst SubAFromDE                                          ; $7801: $df
	ld a, a                                          ; $7802: $7f
	sub l                                            ; $7803: $95
	ccf                                              ; $7804: $3f
	rst $38                                          ; $7805: $ff
	db $fc                                           ; $7806: $fc
	cp $f7                                           ; $7807: $fe $f7
	add sp, -$01                                     ; $7809: $e8 $ff
	rst FarCall                                          ; $780b: $f7
	ld a, a                                          ; $780c: $7f
	or b                                             ; $780d: $b0
	ld a, d                                          ; $780e: $7a
	or h                                             ; $780f: $b4
	sub d                                            ; $7810: $92
	rst FarCall                                          ; $7811: $f7
	or b                                             ; $7812: $b0
	sbc b                                            ; $7813: $98
	sbc a                                            ; $7814: $9f
	ld b, b                                          ; $7815: $40
	scf                                              ; $7816: $37
	ld l, e                                          ; $7817: $6b
	db $fd                                           ; $7818: $fd
	ld a, [hl+]                                      ; $7819: $2a
	or l                                             ; $781a: $b5
	ld l, d                                          ; $781b: $6a
	push de                                          ; $781c: $d5
	ld a, [hl-]                                      ; $781d: $3a
	ld [hl], a                                       ; $781e: $77
	add hl, bc                                       ; $781f: $09
	ld a, e                                          ; $7820: $7b
	db $fc                                           ; $7821: $fc
	adc h                                            ; $7822: $8c
	rra                                              ; $7823: $1f
	sbc $bc                                          ; $7824: $de $bc
	ld [hl], c                                       ; $7826: $71
	ldh [$5e], a                                     ; $7827: $e0 $5e
	rlc a                                            ; $7829: $cb $07
	halt                                             ; $782b: $76
	rst $38                                          ; $782c: $ff
	rst $38                                          ; $782d: $ff
	cp $ff                                           ; $782e: $fe $ff
	pop hl                                           ; $7830: $e1
	db $f4                                           ; $7831: $f4
	cp $80                                           ; $7832: $fe $80
	ld a, a                                          ; $7834: $7f
	ld a, a                                          ; $7835: $7f
	sbc $6f                                          ; $7836: $de $6f
	rst SubAFromDE                                          ; $7838: $df
	rst GetHLinHL                                          ; $7839: $cf
	ld a, [hl]                                       ; $783a: $7e
	dec bc                                           ; $783b: $0b

jr_04e_783c:
	ld [hl], d                                       ; $783c: $72
	cp d                                             ; $783d: $ba
	ld a, a                                          ; $783e: $7f
	di                                               ; $783f: $f3
	sub a                                            ; $7840: $97
	rst $38                                          ; $7841: $ff
	jr nz, jr_04e_7844                               ; $7842: $20 $00

jr_04e_7844:
	xor b                                            ; $7844: $a8
	db $10                                           ; $7845: $10
	xor b                                            ; $7846: $a8
	inc [hl]                                         ; $7847: $34
	cp d                                             ; $7848: $ba
	ld a, e                                          ; $7849: $7b
	ld a, $7d                                        ; $784a: $3e $7d
	add [hl]                                         ; $784c: $86
	ld a, e                                          ; $784d: $7b
	cp $9e                                           ; $784e: $fe $9e
	ldh [$fd], a                                     ; $7850: $e0 $fd
	sbc e                                            ; $7852: $9b
	jr nz, jr_04e_78a5                               ; $7853: $20 $50

	xor b                                            ; $7855: $a8
	cp $dd                                           ; $7856: $fe $dd
	ld [bc], a                                       ; $7858: $02
	ld a, d                                          ; $7859: $7a
	ret nz                                           ; $785a: $c0

	sub a                                            ; $785b: $97
	or b                                             ; $785c: $b0
	ccf                                              ; $785d: $3f
	cp [hl]                                          ; $785e: $be
	cp l                                             ; $785f: $bd
	ld a, [hl+]                                      ; $7860: $2a
	sub l                                            ; $7861: $95
	xor d                                            ; $7862: $aa
	sub l                                            ; $7863: $95
	reti                                             ; $7864: $d9


	ld a, a                                          ; $7865: $7f
	sub a                                            ; $7866: $97
	ld a, [hl]                                       ; $7867: $7e
	ld a, l                                          ; $7868: $7d
	ld a, [$f87c]                                    ; $7869: $fa $7c $f8
	ld a, l                                          ; $786c: $7d
	jp hl                                            ; $786d: $e9


	ld d, l                                          ; $786e: $55
	reti                                             ; $786f: $d9


	rst $38                                          ; $7870: $ff
	sub e                                            ; $7871: $93
	ld [hl], a                                       ; $7872: $77
	ld [hl], e                                       ; $7873: $73
	ld [hl], a                                       ; $7874: $77
	ld [hl], a                                       ; $7875: $77
	ld hl, sp+$5f                                    ; $7876: $f8 $5f
	ld l, $58                                        ; $7878: $2e $58
	ld hl, sp-$04                                    ; $787a: $f8 $fc
	ld hl, sp-$08                                    ; $787c: $f8 $f8
	db $dd                                           ; $787e: $dd
	rst $38                                          ; $787f: $ff
	add b                                            ; $7880: $80
	inc hl                                           ; $7881: $23
	adc d                                            ; $7882: $8a
	and c                                            ; $7883: $a1
	xor e                                            ; $7884: $ab
	ld b, a                                          ; $7885: $47
	rst GetHLinHL                                          ; $7886: $cf
	rra                                              ; $7887: $1f
	rra                                              ; $7888: $1f
	rst SubAFromDE                                          ; $7889: $df
	ld [hl], c                                       ; $788a: $71
	ld [hl], e                                       ; $788b: $73
	ld [hl], e                                       ; $788c: $73
	ei                                               ; $788d: $fb
	rst $38                                          ; $788e: $ff
	rst $38                                          ; $788f: $ff
	ei                                               ; $7890: $fb
	ld h, l                                          ; $7891: $65
	dec b                                            ; $7892: $05
	push hl                                          ; $7893: $e5
	and l                                            ; $7894: $a5
	dec b                                            ; $7895: $05
	dec h                                            ; $7896: $25
	dec h                                            ; $7897: $25
	ld h, l                                          ; $7898: $65
	ret z                                            ; $7899: $c8

	ld c, b                                          ; $789a: $48
	ld [$e848], sp                                   ; $789b: $08 $48 $e8
	adc b                                            ; $789e: $88
	ld [$289e], sp                                   ; $789f: $08 $9e $28
	pop de                                           ; $78a2: $d1
	rst $38                                          ; $78a3: $ff
	db $dd                                           ; $78a4: $dd

jr_04e_78a5:
	add b                                            ; $78a5: $80
	sbc e                                            ; $78a6: $9b
	add c                                            ; $78a7: $81
	add b                                            ; $78a8: $80
	add l                                            ; $78a9: $85
	add d                                            ; $78aa: $82
	reti                                             ; $78ab: $d9


	ret nz                                           ; $78ac: $c0

	rst $38                                          ; $78ad: $ff
	sbc c                                            ; $78ae: $99
	ld b, b                                          ; $78af: $40
	add b                                            ; $78b0: $80
	ld b, b                                          ; $78b1: $40
	and b                                            ; $78b2: $a0
	ld b, b                                          ; $78b3: $40
	xor a                                            ; $78b4: $af
	ld a, [$0796]                                    ; $78b5: $fa $96 $07
	nop                                              ; $78b8: $00
	ld [$0a04], sp                                   ; $78b9: $08 $04 $0a
	inc d                                            ; $78bc: $14
	ld a, [bc]                                       ; $78bd: $0a
	ld d, l                                          ; $78be: $55
	cp $6e                                           ; $78bf: $fe $6e
	pop bc                                           ; $78c1: $c1
	sbc d                                            ; $78c2: $9a
	nop                                              ; $78c3: $00
	rst AddAOntoHL                                          ; $78c4: $ef
	ld b, c                                          ; $78c5: $41
	pop hl                                           ; $78c6: $e1
	ld d, c                                          ; $78c7: $51
	ld a, e                                          ; $78c8: $7b
	cp $9d                                           ; $78c9: $fe $9d
	ld b, c                                          ; $78cb: $41
	jp hl                                            ; $78cc: $e9


	ld h, c                                          ; $78cd: $61
	add c                                            ; $78ce: $81
	ld a, [hl]                                       ; $78cf: $7e
	jp nz, $a0df                                     ; $78d0: $c2 $df $a0

	rst SubAFromDE                                          ; $78d3: $df
	and c                                            ; $78d4: $a1
	sbc [hl]                                         ; $78d5: $9e
	cp a                                             ; $78d6: $bf
	jp c, $7c7f                                      ; $78d7: $da $7f $7c

	cp b                                             ; $78da: $b8
	sbc d                                            ; $78db: $9a
	dec hl                                           ; $78dc: $2b
	ld h, b                                          ; $78dd: $60
	ld h, b                                          ; $78de: $60
	ld h, $ef                                        ; $78df: $26 $ef
	ld a, c                                          ; $78e1: $79
	ld a, [hl+]                                      ; $78e2: $2a
	ld a, [hl]                                       ; $78e3: $7e
	jp $9f9a                                         ; $78e4: $c3 $9a $9f


	rst SubAFromDE                                          ; $78e7: $df
	rst SubAFromDE                                          ; $78e8: $df
	sbc [hl]                                         ; $78e9: $9e
	sbc a                                            ; $78ea: $9f
	ld [hl], l                                       ; $78eb: $75
	cp h                                             ; $78ec: $bc
	sbc [hl]                                         ; $78ed: $9e
	ld [hl], a                                       ; $78ee: $77
	ld a, c                                          ; $78ef: $79
	jp nz, $ed98                                     ; $78f0: $c2 $98 $ed

	push bc                                          ; $78f3: $c5
	rst JumpTable                                          ; $78f4: $c7
	add c                                            ; $78f5: $81
	adc l                                            ; $78f6: $8d
	ld l, a                                          ; $78f7: $6f
	db $fd                                           ; $78f8: $fd

jr_04e_78f9:
	ld a, e                                          ; $78f9: $7b
	and $7e                                          ; $78fa: $e6 $7e
	ld hl, sp-$22                                    ; $78fc: $f8 $de

Jump_04e_78fe:
	cp $7d                                           ; $78fe: $fe $7d
	add hl, de                                       ; $7900: $19
	sub a                                            ; $7901: $97
	ei                                               ; $7902: $fb
	rst FarCall                                          ; $7903: $f7
	ld a, [$faf6]                                    ; $7904: $fa $f6 $fa
	cp $fa                                           ; $7907: $fe $fa
	ldh a, [$7a]                                     ; $7909: $f0 $7a
	ei                                               ; $790b: $fb
	ld a, [hl]                                       ; $790c: $7e
	db $e3                                           ; $790d: $e3
	add b                                            ; $790e: $80
	jp nc, $30ba                                     ; $790f: $d2 $ba $30

	rst $38                                          ; $7912: $ff
	ld h, c                                          ; $7913: $61
	ld h, d                                          ; $7914: $62
	ld sp, hl                                        ; $7915: $f9
	rst $38                                          ; $7916: $ff
	rst AddAOntoHL                                          ; $7917: $ef
	rst JumpTable                                          ; $7918: $c7
	db $fc                                           ; $7919: $fc
	db $eb                                           ; $791a: $eb
	and a                                            ; $791b: $a7
	xor b                                            ; $791c: $a8
	ld b, a                                          ; $791d: $47
	rst SubAFromBC                                          ; $791e: $e7
	xor a                                            ; $791f: $af
	or a                                             ; $7920: $b7
	ccf                                              ; $7921: $3f
	db $fc                                           ; $7922: $fc
	ld l, b                                          ; $7923: $68
	ld h, b                                          ; $7924: $60
	add sp, -$11                                     ; $7925: $e8 $ef
	ld [hl], a                                       ; $7927: $77
	ld [hl], a                                       ; $7928: $77
	ld e, c                                          ; $7929: $59
	rst FarCall                                          ; $792a: $f7
	sbc l                                            ; $792b: $9d
	inc a                                            ; $792c: $3c
	ldh a, [c]                                       ; $792d: $f2
	sbc $ff                                          ; $792e: $de $ff
	sbc e                                            ; $7930: $9b
	and [hl]                                         ; $7931: $a6
	nop                                              ; $7932: $00
	ld h, d                                          ; $7933: $62
	inc bc                                           ; $7934: $03
	ld [hl], h                                       ; $7935: $74
	ld c, a                                          ; $7936: $4f
	ld a, d                                          ; $7937: $7a
	rst JumpTable                                          ; $7938: $c7
	rst SubAFromDE                                          ; $7939: $df
	ld c, a                                          ; $793a: $4f
	sbc c                                            ; $793b: $99
	adc a                                            ; $793c: $8f
	rst GetHLinHL                                          ; $793d: $cf
	rst $38                                          ; $793e: $ff

Jump_04e_793f:
	ld l, a                                          ; $793f: $6f
	ld c, a                                          ; $7940: $4f
	ld c, a                                          ; $7941: $4f
	sbc $cf                                          ; $7942: $de $cf
	rst SubAFromDE                                          ; $7944: $df
	rst AddAOntoHL                                          ; $7945: $ef
	ld a, a                                          ; $7946: $7f
	or e                                             ; $7947: $b3
	ld l, l                                          ; $7948: $6d
	ccf                                              ; $7949: $3f
	ld a, [hl]                                       ; $794a: $7e
	ld c, $72                                        ; $794b: $0e $72
	ret nz                                           ; $794d: $c0

	sub l                                            ; $794e: $95
	rlca                                             ; $794f: $07
	ld hl, sp-$60                                    ; $7950: $f8 $a0
	ldh a, [$f0]                                     ; $7952: $f0 $f0
	pop af                                           ; $7954: $f1
	ld sp, hl                                        ; $7955: $f9
	db $fd                                           ; $7956: $fd
	ld sp, hl                                        ; $7957: $f9
	rst $38                                          ; $7958: $ff
	ld a, d                                          ; $7959: $7a
	jp nz, $03de                                     ; $795a: $c2 $de $03

	ld a, a                                          ; $795d: $7f
	jr nz, jr_04e_78f9                               ; $795e: $20 $99

	add c                                            ; $7960: $81
	nop                                              ; $7961: $00
	ld [hl], c                                       ; $7962: $71
	add sp, -$2b                                     ; $7963: $e8 $d5
	xor d                                            ; $7965: $aa
	halt                                             ; $7966: $76
	ld d, e                                          ; $7967: $53
	call c, $99ff                                    ; $7968: $dc $ff $99
	xor e                                            ; $796b: $ab
	ld d, l                                          ; $796c: $55
	xor e                                            ; $796d: $ab
	ld d, c                                          ; $796e: $51
	and b                                            ; $796f: $a0
	ld [hl], h                                       ; $7970: $74
	rst SubAFromHL                                          ; $7971: $d7
	rst $38                                          ; $7972: $ff
	sbc e                                            ; $7973: $9b
	xor [hl]                                         ; $7974: $ae
	ld e, e                                          ; $7975: $5b
	adc e                                            ; $7976: $8b
	ret                                              ; $7977: $c9


	sbc $f9                                          ; $7978: $de $f9
	ld a, l                                          ; $797a: $7d
	inc c                                            ; $797b: $0c
	jp c, $99ff                                      ; $797c: $da $ff $99

	rra                                              ; $797f: $1f
	ld a, a                                          ; $7980: $7f
	ccf                                              ; $7981: $3f
	ld a, $3f                                        ; $7982: $3e $3f
	cp a                                             ; $7984: $bf
	ld a, e                                          ; $7985: $7b
	ld c, a                                          ; $7986: $4f
	sbc [hl]                                         ; $7987: $9e
	di                                               ; $7988: $f3
	sbc $f7                                          ; $7989: $de $f7
	sbc b                                            ; $798b: $98
	push af                                          ; $798c: $f5
	ldh a, [$fd]                                     ; $798d: $f0 $fd
	push hl                                          ; $798f: $e5
	dec [hl]                                         ; $7990: $35
	push af                                          ; $7991: $f5
	ld h, l                                          ; $7992: $65
	sbc $e5                                          ; $7993: $de $e5
	sub a                                            ; $7995: $97
	push af                                          ; $7996: $f5
	add sp, -$18                                     ; $7997: $e8 $e8
	jp hl                                            ; $7999: $e9


	ld sp, hl                                        ; $799a: $f9
	ld sp, hl                                        ; $799b: $f9
	add hl, sp                                       ; $799c: $39
	add hl, sp                                       ; $799d: $39
	ld h, e                                          ; $799e: $63
	ld [$ffd8], sp                                   ; $799f: $08 $d8 $ff
	sbc l                                            ; $79a2: $9d
	adc d                                            ; $79a3: $8a
	add l                                            ; $79a4: $85
	ld [hl], a                                       ; $79a5: $77
	cp $9c                                           ; $79a6: $fe $9c
	adc e                                            ; $79a8: $8b
	rst $38                                          ; $79a9: $ff
	ldh [$71], a                                     ; $79aa: $e0 $71
	ld a, a                                          ; $79ac: $7f
	sbc e                                            ; $79ad: $9b
	ret nz                                           ; $79ae: $c0

	db $fd                                           ; $79af: $fd
	xor d                                            ; $79b0: $aa
	ld d, a                                          ; $79b1: $57
	ld [hl], b                                       ; $79b2: $70
	call nc, Call_04e_4b70                           ; $79b3: $d4 $70 $4b
	cp $9b                                           ; $79b6: $fe $9b
	inc b                                            ; $79b8: $04
	xor d                                            ; $79b9: $aa
	ld d, h                                          ; $79ba: $54
	ld a, [$fedd]                                    ; $79bb: $fa $dd $fe
	db $fd                                           ; $79be: $fd
	ld [hl], l                                       ; $79bf: $75
	add b                                            ; $79c0: $80
	sub [hl]                                         ; $79c1: $96
	ld d, l                                          ; $79c2: $55
	ei                                               ; $79c3: $fb
	ld d, a                                          ; $79c4: $57
	ei                                               ; $79c5: $fb
	ld [hl], l                                       ; $79c6: $75
	ld sp, hl                                        ; $79c7: $f9
	ld [hl], l                                       ; $79c8: $75
	ld sp, hl                                        ; $79c9: $f9
	rst $38                                          ; $79ca: $ff
	sbc $fd                                          ; $79cb: $de $fd
	ld [hl], c                                       ; $79cd: $71
	db $fd                                           ; $79ce: $fd
	sbc b                                            ; $79cf: $98
	xor d                                            ; $79d0: $aa
	ld [hl], l                                       ; $79d1: $75
	cp a                                             ; $79d2: $bf
	ld a, a                                          ; $79d3: $7f
	or l                                             ; $79d4: $b5
	ld a, d                                          ; $79d5: $7a
	or l                                             ; $79d6: $b5
	ld h, h                                          ; $79d7: $64
	ret c                                            ; $79d8: $d8

	sub [hl]                                         ; $79d9: $96
	ld l, a                                          ; $79da: $6f
	rst AddAOntoHL                                          ; $79db: $ef
	ld [$6fe5], a                                    ; $79dc: $ea $e5 $6f
	ld h, l                                          ; $79df: $65
	ld l, [hl]                                       ; $79e0: $6e
	dec a                                            ; $79e1: $3d
	sbc a                                            ; $79e2: $9f
	sbc $1f                                          ; $79e3: $de $1f
	sbc $9f                                          ; $79e5: $de $9f
	ld a, a                                          ; $79e7: $7f
	ld de, $ef97                                     ; $79e8: $11 $97 $ef
	rst SubAFromDE                                          ; $79eb: $df
	ld e, a                                          ; $79ec: $5f
	rst $38                                          ; $79ed: $ff
	ld e, e                                          ; $79ee: $5b
	xor l                                            ; $79ef: $ad
	ld c, l                                          ; $79f0: $4d
	rst AddAOntoHL                                          ; $79f1: $ef
	ld a, b                                          ; $79f2: $78
	daa                                              ; $79f3: $27
	ld [hl], e                                       ; $79f4: $73
	ld d, b                                          ; $79f5: $50
	sub h                                            ; $79f6: $94
	rst FarCall                                          ; $79f7: $f7
	xor l                                            ; $79f8: $ad
	ld d, a                                          ; $79f9: $57
	xor h                                            ; $79fa: $ac
	ld e, a                                          ; $79fb: $5f
	and c                                            ; $79fc: $a1
	jp z, $fffc                                      ; $79fd: $ca $fc $ff

	cp $fc                                           ; $7a00: $fe $fc
	sbc $ff                                          ; $7a02: $de $ff
	sub [hl]                                         ; $7a04: $96
	ld [hl], l                                       ; $7a05: $75
	ld a, [$f8ba]                                    ; $7a06: $fa $ba $f8
	db $fc                                           ; $7a09: $fc
	rst SubAFromDE                                          ; $7a0a: $df
	rst SubAFromHL                                          ; $7a0b: $d7
	sbc $7f                                          ; $7a0c: $de $7f
	db $dd                                           ; $7a0e: $dd
	rst JumpTable                                          ; $7a0f: $c7
	sbc d                                            ; $7a10: $9a
	and $ee                                          ; $7a11: $e6 $ee
	rst AddAOntoHL                                          ; $7a13: $ef
	rst AddAOntoHL                                          ; $7a14: $ef
	rst SubAFromHL                                          ; $7a15: $d7
	ld a, d                                          ; $7a16: $7a
	rst SubAFromDE                                          ; $7a17: $df
	db $dd                                           ; $7a18: $dd
	rst SubAFromDE                                          ; $7a19: $df
	sbc l                                            ; $7a1a: $9d
	scf                                              ; $7a1b: $37
	inc sp                                           ; $7a1c: $33
	db $db                                           ; $7a1d: $db
	ccf                                              ; $7a1e: $3f
	pop bc                                           ; $7a1f: $c1
	rst $38                                          ; $7a20: $ff
	reti                                             ; $7a21: $d9


	rst $38                                          ; $7a22: $ff
	ld l, b                                          ; $7a23: $68
	ld c, c                                          ; $7a24: $49
	sbc [hl]                                         ; $7a25: $9e
	inc bc                                           ; $7a26: $03
	ld [hl], e                                       ; $7a27: $73
	ld h, a                                          ; $7a28: $67
	rst SubAFromDE                                          ; $7a29: $df
	db $fd                                           ; $7a2a: $fd
	sbc h                                            ; $7a2b: $9c
	ld hl, sp+$07                                    ; $7a2c: $f8 $07
	ld bc, $8379                                     ; $7a2e: $01 $79 $83
	rst SubAFromDE                                          ; $7a31: $df
	inc bc                                           ; $7a32: $03
	ld a, a                                          ; $7a33: $7f
	sbc h                                            ; $7a34: $9c
	sbc e                                            ; $7a35: $9b
	ld hl, sp+$0f                                    ; $7a36: $f8 $0f
	add b                                            ; $7a38: $80
	nop                                              ; $7a39: $00
	ld a, e                                          ; $7a3a: $7b
	db $fd                                           ; $7a3b: $fd
	rst SubAFromDE                                          ; $7a3c: $df
	rst $38                                          ; $7a3d: $ff
	sub h                                            ; $7a3e: $94
	ldh a, [$7f]                                     ; $7a3f: $f0 $7f

Call_04e_7a41:
	rst $38                                          ; $7a41: $ff
	ldh a, [rP1]                                     ; $7a42: $f0 $00
	nop                                              ; $7a44: $00
	db $fc                                           ; $7a45: $fc
	ld a, c                                          ; $7a46: $79
	nop                                              ; $7a47: $00
	nop                                              ; $7a48: $00
	ld e, $74                                        ; $7a49: $1e $74
	sbc [hl]                                         ; $7a4b: $9e
	sbc h                                            ; $7a4c: $9c
	add [hl]                                         ; $7a4d: $86
	rst $38                                          ; $7a4e: $ff
	rst $38                                          ; $7a4f: $ff
	ld [hl], l                                       ; $7a50: $75
	ld d, h                                          ; $7a51: $54
	add b                                            ; $7a52: $80
	ld a, d                                          ; $7a53: $7a
	ld a, [de]                                       ; $7a54: $1a
	dec bc                                           ; $7a55: $0b
	dec sp                                           ; $7a56: $3b
	rrca                                             ; $7a57: $0f
	ld c, $3a                                        ; $7a58: $0e $3a
	nop                                              ; $7a5a: $00
	adc a                                            ; $7a5b: $8f
	rst AddAOntoHL                                          ; $7a5c: $ef
	rst $38                                          ; $7a5d: $ff
	adc $0e                                          ; $7a5e: $ce $0e
	rra                                              ; $7a60: $1f
	inc e                                            ; $7a61: $1c
	nop                                              ; $7a62: $00
	call Call_04e_6767                               ; $7a63: $cd $67 $67
	rla                                              ; $7a66: $17
	ccf                                              ; $7a67: $3f
	ld a, a                                          ; $7a68: $7f
	ld l, h                                          ; $7a69: $6c
	ld b, $7f                                        ; $7a6a: $06 $7f
	db $fd                                           ; $7a6c: $fd
	cp l                                             ; $7a6d: $bd
	dec e                                            ; $7a6e: $1d
	dec e                                            ; $7a6f: $1d
	dec a                                            ; $7a70: $3d
	ld [hl], $8e                                     ; $7a71: $36 $8e
	inc c                                            ; $7a73: $0c
	or $da                                           ; $7a74: $f6 $da
	ld b, b                                          ; $7a76: $40
	ret nz                                           ; $7a77: $c0

	jr nz, jr_04e_7a9a                               ; $7a78: $20 $20

	ld [hl], b                                       ; $7a7a: $70
	db $e3                                           ; $7a7b: $e3
	adc c                                            ; $7a7c: $89
	add b                                            ; $7a7d: $80
	ret nz                                           ; $7a7e: $c0

	ld b, b                                          ; $7a7f: $40
	ret nz                                           ; $7a80: $c0

	ld b, b                                          ; $7a81: $40
	ld h, b                                          ; $7a82: $60
	ld h, b                                          ; $7a83: $60
	pop de                                           ; $7a84: $d1
	rst $38                                          ; $7a85: $ff
	sbc d                                            ; $7a86: $9a
	sub a                                            ; $7a87: $97
	adc e                                            ; $7a88: $8b
	sub a                                            ; $7a89: $97
	rst $38                                          ; $7a8a: $ff
	add e                                            ; $7a8b: $83
	ld a, e                                          ; $7a8c: $7b
	add hl, de                                       ; $7a8d: $19
	rst SubAFromDE                                          ; $7a8e: $df
	ret nz                                           ; $7a8f: $c0

	sbc l                                            ; $7a90: $9d
	jp Jump_04e_78fe                                 ; $7a91: $c3 $fe $78


	inc [hl]                                         ; $7a94: $34
	sbc [hl]                                         ; $7a95: $9e
	ret nz                                           ; $7a96: $c0

	reti                                             ; $7a97: $d9


	rst $38                                          ; $7a98: $ff
	ld a, [hl]                                       ; $7a99: $7e

jr_04e_7a9a:
	push de                                          ; $7a9a: $d5
	ld l, h                                          ; $7a9b: $6c
	ld b, h                                          ; $7a9c: $44
	ld a, b                                          ; $7a9d: $78
	sbc a                                            ; $7a9e: $9f
	call c, $9dfe                                    ; $7a9f: $dc $fe $9d
	rlca                                             ; $7aa2: $07
	ei                                               ; $7aa3: $fb
	ld l, h                                          ; $7aa4: $6c
	ld b, b                                          ; $7aa5: $40
	ld a, d                                          ; $7aa6: $7a
	call nz, $eb9a                                   ; $7aa7: $c4 $9a $eb
	ld [hl], e                                       ; $7aaa: $73
	ld [$ee77], a                                    ; $7aab: $ea $77 $ee
	sbc $ff                                          ; $7aae: $de $ff
	sbc $fd                                          ; $7ab0: $de $fd
	rst SubAFromDE                                          ; $7ab2: $df
	ld sp, hl                                        ; $7ab3: $f9
	sbc b                                            ; $7ab4: $98
	ld a, a                                          ; $7ab5: $7f
	cp [hl]                                          ; $7ab6: $be
	ld a, l                                          ; $7ab7: $7d
	cp d                                             ; $7ab8: $ba
	ld a, l                                          ; $7ab9: $7d
	dec sp                                           ; $7aba: $3b
	ld a, [hl]                                       ; $7abb: $7e
	db $db                                           ; $7abc: $db
	rst $38                                          ; $7abd: $ff
	adc a                                            ; $7abe: $8f
	db $fc                                           ; $7abf: $fc
	pop hl                                           ; $7ac0: $e1
	rlca                                             ; $7ac1: $07
	ld a, $ad                                        ; $7ac2: $3e $ad
	dec a                                            ; $7ac4: $3d
	ld l, $77                                        ; $7ac5: $2e $77
	ld hl, sp-$40                                    ; $7ac7: $f8 $c0
	add b                                            ; $7ac9: $80
	rst SubAFromDE                                          ; $7aca: $df
	rst SubAFromDE                                          ; $7acb: $df
	sbc $d9                                          ; $7acc: $de $d9
	adc a                                            ; $7ace: $8f
	ld a, e                                          ; $7acf: $7b
	ld [bc], a                                       ; $7ad0: $02
	sbc d                                            ; $7ad1: $9a
	and [hl]                                         ; $7ad2: $a6
	ld [hl], a                                       ; $7ad3: $77
	call c, $1fe7                                    ; $7ad4: $dc $e7 $1f
	ld a, e                                          ; $7ad7: $7b
	ld [hl+], a                                      ; $7ad8: $22
	sbc l                                            ; $7ad9: $9d
	ld sp, hl                                        ; $7ada: $f9
	rst GetHLinHL                                          ; $7adb: $cf
	ld l, [hl]                                       ; $7adc: $6e
	push af                                          ; $7add: $f5
	sub a                                            ; $7ade: $97
	ld d, l                                          ; $7adf: $55
	ld h, b                                          ; $7ae0: $60
	ld hl, sp-$01                                    ; $7ae1: $f8 $ff
	rst FarCall                                          ; $7ae3: $f7
	sbc a                                            ; $7ae4: $9f
	dec b                                            ; $7ae5: $05
	rst $38                                          ; $7ae6: $ff
	halt                                             ; $7ae7: $76
	rrca                                             ; $7ae8: $0f
	sub e                                            ; $7ae9: $93
	db $fd                                           ; $7aea: $fd
	di                                               ; $7aeb: $f3
	ei                                               ; $7aec: $fb
	db $fc                                           ; $7aed: $fc
	ld h, c                                          ; $7aee: $61
	ld h, c                                          ; $7aef: $61
	pop hl                                           ; $7af0: $e1
	pop bc                                           ; $7af1: $c1
	adc a                                            ; $7af2: $8f
	ld bc, $f0af                                     ; $7af3: $01 $af $f0
	db $dd                                           ; $7af6: $dd
	rst $38                                          ; $7af7: $ff
	sbc [hl]                                         ; $7af8: $9e
	pop af                                           ; $7af9: $f1
	sbc $ff                                          ; $7afa: $de $ff
	sub [hl]                                         ; $7afc: $96
	ld e, d                                          ; $7afd: $5a
	push de                                          ; $7afe: $d5
	ld e, d                                          ; $7aff: $5a
	ld d, l                                          ; $7b00: $55
	ld e, a                                          ; $7b01: $5f
	ld e, a                                          ; $7b02: $5f
	ld a, d                                          ; $7b03: $7a
	push af                                          ; $7b04: $f5
	cp a                                             ; $7b05: $bf
	ld a, c                                          ; $7b06: $79
	ei                                               ; $7b07: $fb
	rst SubAFromDE                                          ; $7b08: $df
	cp a                                             ; $7b09: $bf
	sub [hl]                                         ; $7b0a: $96
	sbc a                                            ; $7b0b: $9f
	sbc e                                            ; $7b0c: $9b
	rst $38                                          ; $7b0d: $ff
	ld e, a                                          ; $7b0e: $5f
	xor d                                            ; $7b0f: $aa
	ld a, a                                          ; $7b10: $7f
	rst $38                                          ; $7b11: $ff
	push af                                          ; $7b12: $f5
	ld [$626a], a                                    ; $7b13: $ea $6a $62
	ld a, c                                          ; $7b16: $79

Jump_04e_7b17:
	ld sp, $ffdd                                     ; $7b17: $31 $dd $ff
	sbc h                                            ; $7b1a: $9c
	ld d, a                                          ; $7b1b: $57
	rst $38                                          ; $7b1c: $ff
	or b                                             ; $7b1d: $b0
	jp c, $9dff                                      ; $7b1e: $da $ff $9d

	ret nz                                           ; $7b21: $c0

	db $fc                                           ; $7b22: $fc
	ld [hl], a                                       ; $7b23: $77
	and $9a                                          ; $7b24: $e6 $9a
	pop af                                           ; $7b26: $f1
	ld hl, sp+$00                                    ; $7b27: $f8 $00
	rst $38                                          ; $7b29: $ff
	add b                                            ; $7b2a: $80
	cp $9c                                           ; $7b2b: $fe $9c
	rrca                                             ; $7b2d: $0f
	ldh a, [rP1]                                     ; $7b2e: $f0 $00
	db $dd                                           ; $7b30: $dd
	db $fc                                           ; $7b31: $fc
	sbc e                                            ; $7b32: $9b
	db $ec                                           ; $7b33: $ec
	ldh [rP1], a                                     ; $7b34: $e0 $00
	ld a, $fd                                        ; $7b36: $3e $fd
	sbc [hl]                                         ; $7b38: $9e
	jr jr_04e_7bab                                   ; $7b39: $18 $70

	inc sp                                           ; $7b3b: $33
	halt                                             ; $7b3c: $76
	xor d                                            ; $7b3d: $aa
	sbc [hl]                                         ; $7b3e: $9e
	ld hl, sp+$76                                    ; $7b3f: $f8 $76
	call $9cf8                                       ; $7b41: $cd $f8 $9c
	rlca                                             ; $7b44: $07
	ldh [$7c], a                                     ; $7b45: $e0 $7c
	push af                                          ; $7b47: $f5
	sbc h                                            ; $7b48: $9c
	ld e, d                                          ; $7b49: $5a
	sbc a                                            ; $7b4a: $9f
	ld a, b                                          ; $7b4b: $78
	rst FarCall                                          ; $7b4c: $f7
	sbc e                                            ; $7b4d: $9b
	dec l                                            ; $7b4e: $2d
	ld d, e                                          ; $7b4f: $53
	jp Jump_04e_77fe                                 ; $7b50: $c3 $fe $77


	ret                                              ; $7b53: $c9


	sbc l                                            ; $7b54: $9d
	ld e, $3c                                        ; $7b55: $1e $3c
	ei                                               ; $7b57: $fb
	sbc l                                            ; $7b58: $9d
	ld e, a                                          ; $7b59: $5f
	inc e                                            ; $7b5a: $1c
	ld a, b                                          ; $7b5b: $78
	ld l, l                                          ; $7b5c: $6d
	cp $9c                                           ; $7b5d: $fe $9c
	add b                                            ; $7b5f: $80
	inc bc                                           ; $7b60: $03
	db $10                                           ; $7b61: $10
	ld l, [hl]                                       ; $7b62: $6e

Call_04e_7b63:
	ldh a, [$ca]                                     ; $7b63: $f0 $ca
	rst $38                                          ; $7b65: $ff
	ld a, [hl]                                       ; $7b66: $7e
	add $7f                                          ; $7b67: $c6 $7f
	cp $9d                                           ; $7b69: $fe $9d
	add a                                            ; $7b6b: $87
	db $fc                                           ; $7b6c: $fc
	ld e, d                                          ; $7b6d: $5a
	ret nz                                           ; $7b6e: $c0

	ld [hl], a                                       ; $7b6f: $77
	adc d                                            ; $7b70: $8a
	cp $78                                           ; $7b71: $fe $78
	sub l                                            ; $7b73: $95
	call c, Call_04e_7efe                            ; $7b74: $dc $fe $7e
	call nz, $1e9d                                   ; $7b77: $c4 $9d $1e
	pop af                                           ; $7b7a: $f1
	ld [hl], l                                       ; $7b7b: $75
	ld a, l                                          ; $7b7c: $7d
	sub l                                            ; $7b7d: $95
	ld d, a                                          ; $7b7e: $57
	cp $75                                           ; $7b7f: $fe $75
	ld [$fdff], a                                    ; $7b81: $ea $ff $fd
	add sp, -$31                                     ; $7b84: $e8 $cf
	ld hl, sp-$1f                                    ; $7b86: $f8 $e1
	halt                                             ; $7b88: $76
	ldh [c], a                                       ; $7b89: $e2
	sub l                                            ; $7b8a: $95
	ld d, a                                          ; $7b8b: $57
	ccf                                              ; $7b8c: $3f
	cp $e4                                           ; $7b8d: $fe $e4
	rst $38                                          ; $7b8f: $ff
	rst $38                                          ; $7b90: $ff
	ld hl, sp+$1d                                    ; $7b91: $f8 $1d
	ld c, a                                          ; $7b93: $4f
	cp $72                                           ; $7b94: $fe $72
	ldh [c], a                                       ; $7b96: $e2
	sub b                                            ; $7b97: $90
	ldh [c], a                                       ; $7b98: $e2
	cp a                                             ; $7b99: $bf
	rst $38                                          ; $7b9a: $ff
	jr jr_04e_7ba4                                   ; $7b9b: $18 $07

	rst $38                                          ; $7b9d: $ff
	call nz, $3f00                                   ; $7b9e: $c4 $00 $3f
	ld sp, hl                                        ; $7ba1: $f9
	ret nz                                           ; $7ba2: $c0

	rst SubAFromBC                                          ; $7ba3: $e7

jr_04e_7ba4:
	rst $38                                          ; $7ba4: $ff
	rst $38                                          ; $7ba5: $ff
	ei                                               ; $7ba6: $fb
	ld [hl], l                                       ; $7ba7: $75
	ld [$7f98], a                                    ; $7ba8: $ea $98 $7f

jr_04e_7bab:
	db $fc                                           ; $7bab: $fc
	add e                                            ; $7bac: $83
	add b                                            ; $7bad: $80
	ccf                                              ; $7bae: $3f
	or $c0                                           ; $7baf: $f6 $c0
	ld a, e                                          ; $7bb1: $7b
	adc b                                            ; $7bb2: $88
	ld a, e                                          ; $7bb3: $7b
	ld d, $7b                                        ; $7bb4: $16 $7b
	xor a                                            ; $7bb6: $af
	ld a, a                                          ; $7bb7: $7f
	or a                                             ; $7bb8: $b7
	sbc b                                            ; $7bb9: $98
	jp $ceff                                         ; $7bba: $c3 $ff $ce


	nop                                              ; $7bbd: $00
	ld bc, $ff07                                     ; $7bbe: $01 $07 $ff
	ld a, e                                          ; $7bc1: $7b
	adc $79                                          ; $7bc2: $ce $79
	pop af                                           ; $7bc4: $f1
	ld a, a                                          ; $7bc5: $7f
	add sp, $7c                                      ; $7bc6: $e8 $7c
	ld c, [hl]                                       ; $7bc8: $4e
	sbc [hl]                                         ; $7bc9: $9e
	or b                                             ; $7bca: $b0
	ld a, e                                          ; $7bcb: $7b
	ld [$c39b], a                                    ; $7bcc: $ea $9b $c3
	rst JumpTable                                          ; $7bcf: $c7
	ccf                                              ; $7bd0: $3f
	rst $38                                          ; $7bd1: $ff
	ld [hl], e                                       ; $7bd2: $73
	ld d, a                                          ; $7bd3: $57
	sub d                                            ; $7bd4: $92
	rst $38                                          ; $7bd5: $ff
	cp e                                             ; $7bd6: $bb
	ret z                                            ; $7bd7: $c8

	dec a                                            ; $7bd8: $3d
	ld bc, $1ffc                                     ; $7bd9: $01 $fc $1f
	add b                                            ; $7bdc: $80
	rst $38                                          ; $7bdd: $ff
	db $fc                                           ; $7bde: $fc
	cp h                                             ; $7bdf: $bc
	adc $06                                          ; $7be0: $ce $06
	cp $97                                           ; $7be2: $fe $97
	call z, $0000                                   ; $7be4: $cc $00 $00
	ld a, a                                          ; $7be7: $7f
	ldh a, [$30]                                     ; $7be8: $f0 $30
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	ld [hl], a                                       ; $7bec: $77
	call nc, $f46e                                   ; $7bed: $d4 $6e $f4
	sbc l                                            ; $7bf0: $9d
	cp $83                                           ; $7bf1: $fe $83
	ld h, e                                          ; $7bf3: $63
	db $f4                                           ; $7bf4: $f4
	halt                                             ; $7bf5: $76
	db $f4                                           ; $7bf6: $f4
	sbc l                                            ; $7bf7: $9d
	pop af                                           ; $7bf8: $f1
	ccf                                              ; $7bf9: $3f
	ld [hl], e                                       ; $7bfa: $73
	ret z                                            ; $7bfb: $c8

	sbc [hl]                                         ; $7bfc: $9e
	ld [$9dfa], sp                                   ; $7bfd: $08 $fa $9d
	rst JumpTable                                          ; $7c00: $c7
	call c, $d670                                    ; $7c01: $dc $70 $d6
	sbc [hl]                                         ; $7c04: $9e
	ld b, d                                          ; $7c05: $42
	ld sp, hl                                        ; $7c06: $f9
	ld l, a                                          ; $7c07: $6f
	ld [bc], a                                       ; $7c08: $02
	sbc l                                            ; $7c09: $9d
	dec b                                            ; $7c0a: $05
	adc d                                            ; $7c0b: $8a
	push af                                          ; $7c0c: $f5
	sbc e                                            ; $7c0d: $9b
	dec b                                            ; $7c0e: $05
	ld a, [hl+]                                      ; $7c0f: $2a
	ld d, l                                          ; $7c10: $55
	xor d                                            ; $7c11: $aa
	push af                                          ; $7c12: $f5
	ld a, a                                          ; $7c13: $7f
	ldh a, [c]                                       ; $7c14: $f2
	ld e, e                                          ; $7c15: $5b
	ldh a, [$7b]                                     ; $7c16: $f0 $7b
	db $e4                                           ; $7c18: $e4
	ld d, e                                          ; $7c19: $53
	ldh a, [$73]                                     ; $7c1a: $f0 $73
	ldh a, [c]                                       ; $7c1c: $f2
	ld e, a                                          ; $7c1d: $5f
	ldh a, [rHDMA3]                                  ; $7c1e: $f0 $53
	nop                                              ; $7c20: $00
	rst SubAFromDE                                          ; $7c21: $df
	inc sp                                           ; $7c22: $33
	sub [hl]                                         ; $7c23: $96
	ld h, e                                          ; $7c24: $63
	ld [hl], $36                                     ; $7c25: $36 $36
	ld h, e                                          ; $7c27: $63
	inc sp                                           ; $7c28: $33
	ld [hl], $66                                     ; $7c29: $36 $66
	halt                                             ; $7c2b: $76
	ld h, e                                          ; $7c2c: $63
	db $db                                           ; $7c2d: $db
	inc sp                                           ; $7c2e: $33
	ld a, e                                          ; $7c2f: $7b
	or $9e                                           ; $7c30: $f6 $9e
	ld h, [hl]                                       ; $7c32: $66
	ld l, a                                          ; $7c33: $6f
	push af                                          ; $7c34: $f5
	ld l, e                                          ; $7c35: $6b
	or $df                                           ; $7c36: $f6 $df
	ld h, [hl]                                       ; $7c38: $66
	ld [hl], e                                       ; $7c39: $73
	or $9d                                           ; $7c3a: $f6 $9d
	ld h, [hl]                                       ; $7c3c: $66
	ld d, [hl]                                       ; $7c3d: $56
	db $dd                                           ; $7c3e: $dd
	ld h, [hl]                                       ; $7c3f: $66
	sub d                                            ; $7c40: $92
	ld h, a                                          ; $7c41: $67
	halt                                             ; $7c42: $76
	halt                                             ; $7c43: $76
	ld b, h                                          ; $7c44: $44
	ld b, h                                          ; $7c45: $44
	ld h, a                                          ; $7c46: $67
	ld [hl], a                                       ; $7c47: $77
	ld [hl], l                                       ; $7c48: $75
	ld d, a                                          ; $7c49: $57
	ld d, h                                          ; $7c4a: $54
	ld b, a                                          ; $7c4b: $47
	halt                                             ; $7c4c: $76
	ld h, [hl]                                       ; $7c4d: $66
	ld [hl], a                                       ; $7c4e: $77
	or $9a                                           ; $7c4f: $f6 $9a
	halt                                             ; $7c51: $76
	ld [hl], a                                       ; $7c52: $77
	ld h, h                                          ; $7c53: $64
	ld b, [hl]                                       ; $7c54: $46
	ld h, [hl]                                       ; $7c55: $66
	ld l, a                                          ; $7c56: $6f
	or $9a                                           ; $7c57: $f6 $9a
	ld h, [hl]                                       ; $7c59: $66
	ld h, h                                          ; $7c5a: $64
	ld b, [hl]                                       ; $7c5b: $46
	ld h, e                                          ; $7c5c: $63
	ld [hl], a                                       ; $7c5d: $77
	ld [hl], a                                       ; $7c5e: $77
	or $df                                           ; $7c5f: $f6 $df
	ld h, [hl]                                       ; $7c61: $66
	sbc h                                            ; $7c62: $9c
	ld h, h                                          ; $7c63: $64
	ld b, e                                          ; $7c64: $43
	inc sp                                           ; $7c65: $33
	ld a, e                                          ; $7c66: $7b
	db $ec                                           ; $7c67: $ec
	sbc [hl]                                         ; $7c68: $9e
	ld h, [hl]                                       ; $7c69: $66
	ld a, e                                          ; $7c6a: $7b
	or $7f                                           ; $7c6b: $f6 $7f
	and d                                            ; $7c6d: $a2
	ld [hl], a                                       ; $7c6e: $77
	ldh [c], a                                       ; $7c6f: $e2
	reti                                             ; $7c70: $d9


	ld h, [hl]                                       ; $7c71: $66
	and e                                            ; $7c72: $a3
	adc c                                            ; $7c73: $89
	cp $9b                                           ; $7c74: $fe $9b
	ld d, l                                          ; $7c76: $55
	xor d                                            ; $7c77: $aa
	ld d, l                                          ; $7c78: $55
	xor d                                            ; $7c79: $aa
	ret c                                            ; $7c7a: $d8

	rst $38                                          ; $7c7b: $ff
	sbc [hl]                                         ; $7c7c: $9e

Jump_04e_7c7d:
	ld bc, $77fe                                     ; $7c7d: $01 $fe $77
	ldh a, [$9e]                                     ; $7c80: $f0 $9e
	cp $d9                                           ; $7c82: $fe $d9
	rst $38                                          ; $7c84: $ff
	ld l, e                                          ; $7c85: $6b
	ldh a, [$9e]                                     ; $7c86: $f0 $9e
	nop                                              ; $7c88: $00
	reti                                             ; $7c89: $d9


	rst $38                                          ; $7c8a: $ff
	sub [hl]                                         ; $7c8b: $96
	rra                                              ; $7c8c: $1f
	nop                                              ; $7c8d: $00
	nop                                              ; $7c8e: $00
	and b                                            ; $7c8f: $a0
	ld d, l                                          ; $7c90: $55
	and b                                            ; $7c91: $a0
	rst $38                                          ; $7c92: $ff
	nop                                              ; $7c93: $00
	ldh [$db], a                                     ; $7c94: $e0 $db
	rst $38                                          ; $7c96: $ff
	ld a, a                                          ; $7c97: $7f
	ret c                                            ; $7c98: $d8

	ld [hl], a                                       ; $7c99: $77
	cp [hl]                                          ; $7c9a: $be
	ld a, a                                          ; $7c9b: $7f
	ldh [c], a                                       ; $7c9c: $e2
	rst $38                                          ; $7c9d: $ff
	db $db                                           ; $7c9e: $db
	rst $38                                          ; $7c9f: $ff
	ld a, e                                          ; $7ca0: $7b
	sub $3f                                          ; $7ca1: $d6 $3f
	ldh a, [$7b]                                     ; $7ca3: $f0 $7b
	di                                               ; $7ca5: $f3
	ld h, e                                          ; $7ca6: $63
	ldh a, [$9e]                                     ; $7ca7: $f0 $9e
	push af                                          ; $7ca9: $f5
	ld [hl], e                                       ; $7caa: $73
	rst AddAOntoHL                                          ; $7cab: $ef
	ld [hl], a                                       ; $7cac: $77
	ei                                               ; $7cad: $fb
	ld l, a                                          ; $7cae: $6f
	ldh a, [$9e]                                     ; $7caf: $f0 $9e
	ld d, l                                          ; $7cb1: $55
	ld b, e                                          ; $7cb2: $43
	ldh a, [$7b]                                     ; $7cb3: $f0 $7b
	sbc [hl]                                         ; $7cb5: $9e
	ld [hl], e                                       ; $7cb6: $73
	ldh a, [$73]                                     ; $7cb7: $f0 $73
	sbc [hl]                                         ; $7cb9: $9e
	ld [hl], a                                       ; $7cba: $77
	add h                                            ; $7cbb: $84
	sbc [hl]                                         ; $7cbc: $9e
	rrca                                             ; $7cbd: $0f
	ld l, a                                          ; $7cbe: $6f
	ldh a, [$9d]                                     ; $7cbf: $f0 $9d
	nop                                              ; $7cc1: $00
	ldh a, [rOCPD]                                   ; $7cc2: $f0 $6b
	ldh a, [rPCM34]                                  ; $7cc4: $f0 $77
	or e                                             ; $7cc6: $b3
	ld l, a                                          ; $7cc7: $6f
	xor d                                            ; $7cc8: $aa
	ld [hl], a                                       ; $7cc9: $77
	ldh a, [$9e]                                     ; $7cca: $f0 $9e
	cp a                                             ; $7ccc: $bf
	ld c, a                                          ; $7ccd: $4f
	ldh a, [$9b]                                     ; $7cce: $f0 $9b
	ld e, a                                          ; $7cd0: $5f
	rst $38                                          ; $7cd1: $ff
	rst $38                                          ; $7cd2: $ff
	ldh a, [rOCPD]                                   ; $7cd3: $f0 $6b
	ldh a, [$9e]                                     ; $7cd5: $f0 $9e
	rrca                                             ; $7cd7: $0f
	sbc $ff                                          ; $7cd8: $de $ff
	ld a, e                                          ; $7cda: $7b
	ldh [c], a                                       ; $7cdb: $e2
	ld [hl], e                                       ; $7cdc: $73
	and h                                            ; $7cdd: $a4
	ld l, e                                          ; $7cde: $6b
	pop hl                                           ; $7cdf: $e1
	db $dd                                           ; $7ce0: $dd
	rst $38                                          ; $7ce1: $ff
	sbc e                                            ; $7ce2: $9b
	ld hl, sp+$00                                    ; $7ce3: $f8 $00
	ld [bc], a                                       ; $7ce5: $02
	dec d                                            ; $7ce6: $15
	ld [hl], a                                       ; $7ce7: $77
	ldh a, [$9e]                                     ; $7ce8: $f0 $9e
	rlca                                             ; $7cea: $07
	ld h, e                                          ; $7ceb: $63
	ld e, $6f                                        ; $7cec: $1e $6f
	ld a, e                                          ; $7cee: $7b
	jp c, $7fff                                      ; $7cef: $da $ff $7f

	jp nz, $019e                                     ; $7cf2: $c2 $9e $01

	ld [hl], e                                       ; $7cf5: $73
	ldh a, [rPCM34]                                  ; $7cf6: $f0 $77
	jp nz, $ffde                                     ; $7cf8: $c2 $de $ff

	sbc [hl]                                         ; $7cfb: $9e
	db $fc                                           ; $7cfc: $fc
	ld [hl], d                                       ; $7cfd: $72
	rst SubAFromDE                                          ; $7cfe: $df
	ld a, a                                          ; $7cff: $7f
	ldh a, [$9e]                                     ; $7d00: $f0 $9e
	inc bc                                           ; $7d02: $03

Call_04e_7d03:
	ld h, e                                          ; $7d03: $63
	jp nc, $0a9e                                     ; $7d04: $d2 $9e $0a

	ld [hl], e                                       ; $7d07: $73
	ldh a, [$d8]                                     ; $7d08: $f0 $d8
	rst $38                                          ; $7d0a: $ff
	ld a, e                                          ; $7d0b: $7b
	ld l, [hl]                                       ; $7d0c: $6e
	ld [hl], e                                       ; $7d0d: $73
	rst AddAOntoHL                                          ; $7d0e: $ef
	ei                                               ; $7d0f: $fb
	ld l, e                                          ; $7d10: $6b
	ldh a, [$9e]                                     ; $7d11: $f0 $9e
	ld b, b                                          ; $7d13: $40
	ld c, a                                          ; $7d14: $4f
	ldh a, [$9e]                                     ; $7d15: $f0 $9e
	add b                                            ; $7d17: $80
	ld l, e                                          ; $7d18: $6b
	ld e, a                                          ; $7d19: $5f
	ld h, a                                          ; $7d1a: $67
	ldh a, [$67]                                     ; $7d1b: $f0 $67
	ld c, a                                          ; $7d1d: $4f
	inc bc                                           ; $7d1e: $03
	ldh a, [$7f]                                     ; $7d1f: $f0 $7f
	ld hl, sp+$73                                    ; $7d21: $f8 $73
	and d                                            ; $7d23: $a2
	ld c, e                                          ; $7d24: $4b
	ldh a, [$9c]                                     ; $7d25: $f0 $9c
	ld a, a                                          ; $7d27: $7f
	ccf                                              ; $7d28: $3f
	scf                                              ; $7d29: $37
	ld [hl], e                                       ; $7d2a: $73
	ldh a, [$df]                                     ; $7d2b: $f0 $df
	rra                                              ; $7d2d: $1f
	sbc [hl]                                         ; $7d2e: $9e
	jr jr_04e_7da4                                   ; $7d2f: $18 $73

	ldh a, [$df]                                     ; $7d31: $f0 $df
	rst $38                                          ; $7d33: $ff
	sbc [hl]                                         ; $7d34: $9e
	ld a, [$1f6b]                                    ; $7d35: $fa $6b $1f
	sbc [hl]                                         ; $7d38: $9e
	ld bc, $f073                                     ; $7d39: $01 $73 $f0
	ld a, a                                          ; $7d3c: $7f
	sub c                                            ; $7d3d: $91
	ld c, a                                          ; $7d3e: $4f
	ret nc                                           ; $7d3f: $d0

	ld h, [hl]                                       ; $7d40: $66
	rst $38                                          ; $7d41: $ff
	inc bc                                           ; $7d42: $03
	ldh a, [rOCPD]                                   ; $7d43: $f0 $6b
	ldh a, [$9e]                                     ; $7d45: $f0 $9e
	dec b                                            ; $7d47: $05
	dec bc                                           ; $7d48: $0b
	add b                                            ; $7d49: $80
	sbc l                                            ; $7d4a: $9d
	ld d, l                                          ; $7d4b: $55
	ld [bc], a                                       ; $7d4c: $02
	ld c, e                                          ; $7d4d: $4b
	ldh a, [$5b]                                     ; $7d4e: $f0 $5b
	nop                                              ; $7d50: $00
	ld a, [hl]                                       ; $7d51: $7e
	ld [hl], b                                       ; $7d52: $70
	sbc d                                            ; $7d53: $9a
	ld d, l                                          ; $7d54: $55
	xor e                                            ; $7d55: $ab
	ld d, l                                          ; $7d56: $55
	xor [hl]                                         ; $7d57: $ae
	ld d, a                                          ; $7d58: $57
	ld [hl], e                                       ; $7d59: $73
	ldh a, [$df]                                     ; $7d5a: $f0 $df
	inc bc                                           ; $7d5c: $03
	sbc h                                            ; $7d5d: $9c
	ld [bc], a                                       ; $7d5e: $02
	rst $38                                          ; $7d5f: $ff
	ld d, l                                          ; $7d60: $55
	ld a, e                                          ; $7d61: $7b
	cp $7e                                           ; $7d62: $fe $7e
	xor h                                            ; $7d64: $ac
	ld l, d                                          ; $7d65: $6a
	ld a, [de]                                       ; $7d66: $1a
	ld a, [hl]                                       ; $7d67: $7e
	ld [hl], $77                                     ; $7d68: $36 $77
	ldh a, [$9b]                                     ; $7d6a: $f0 $9b
	ld a, [$0ae5]                                    ; $7d6c: $fa $e5 $0a
	ld b, l                                          ; $7d6f: $45
	ld l, [hl]                                       ; $7d70: $6e
	cpl                                              ; $7d71: $2f
	sub a                                            ; $7d72: $97
	ldh a, [rAUD1SWEEP]                              ; $7d73: $f0 $10
	xor d                                            ; $7d75: $aa
	ld d, b                                          ; $7d76: $50
	and b                                            ; $7d77: $a0
	ld b, b                                          ; $7d78: $40
	and b                                            ; $7d79: $a0
	ld d, b                                          ; $7d7a: $50
	ld [hl], a                                       ; $7d7b: $77
	sbc [hl]                                         ; $7d7c: $9e
	push af                                          ; $7d7d: $f5
	sbc l                                            ; $7d7e: $9d
	add b                                            ; $7d7f: $80
	ld d, h                                          ; $7d80: $54
	ldh [$d5], a                                     ; $7d81: $e0 $d5
	sbc h                                            ; $7d83: $9c
	rlca                                             ; $7d84: $07
	rra                                              ; $7d85: $1f
	rra                                              ; $7d86: $1f
	ld a, c                                          ; $7d87: $79
	db $dd                                           ; $7d88: $dd
	ld a, d                                          ; $7d89: $7a
	ld c, [hl]                                       ; $7d8a: $4e
	sbc l                                            ; $7d8b: $9d
	ccf                                              ; $7d8c: $3f
	rra                                              ; $7d8d: $1f
	ld [hl], l                                       ; $7d8e: $75
	call nz, $009a                                   ; $7d8f: $c4 $9a $00
	ld b, b                                          ; $7d92: $40
	ldh [$e0], a                                     ; $7d93: $e0 $e0
	ret nz                                           ; $7d95: $c0

	ld [hl], e                                       ; $7d96: $73
	cp d                                             ; $7d97: $ba
	sbc $e0                                          ; $7d98: $de $e0
	pop af                                           ; $7d9a: $f1
	add a                                            ; $7d9b: $87
	ld [hl], $35                                     ; $7d9c: $36 $35
	ld [hl-], a                                      ; $7d9e: $32
	dec [hl]                                         ; $7d9f: $35
	ld [hl-], a                                      ; $7da0: $32
	ld sp, $312a                                     ; $7da1: $31 $2a $31

jr_04e_7da4:
	add hl, de                                       ; $7da4: $19
	ld a, [de]                                       ; $7da5: $1a
	dec e                                            ; $7da6: $1d
	ld a, [de]                                       ; $7da7: $1a
	dec e                                            ; $7da8: $1d
	rra                                              ; $7da9: $1f
	stop                                             ; $7daa: $10 $00
	and $e2                                          ; $7dac: $e6 $e2
	and $56                                          ; $7dae: $e6 $56
	xor [hl]                                         ; $7db0: $ae
	nop                                              ; $7db1: $00
	xor e                                            ; $7db2: $ab
	ld d, c                                          ; $7db3: $51
	sbc $01                                          ; $7db4: $de $01
	sbc e                                            ; $7db6: $9b
	xor c                                            ; $7db7: $a9
	ld d, c                                          ; $7db8: $51
	rst $38                                          ; $7db9: $ff
	nop                                              ; $7dba: $00
	ld [hl], l                                       ; $7dbb: $75
	ld bc, $9efd                                     ; $7dbc: $01 $fd $9e
	db $ec                                           ; $7dbf: $ec
	ld l, e                                          ; $7dc0: $6b
	ld a, b                                          ; $7dc1: $78
	ld [hl], e                                       ; $7dc2: $73
	cp b                                             ; $7dc3: $b8
	xor $67                                          ; $7dc4: $ee $67
	ret c                                            ; $7dc6: $d8

	ld a, [$ed7d]                                    ; $7dc7: $fa $7d $ed
	db $f4                                           ; $7dca: $f4
	sbc [hl]                                         ; $7dcb: $9e
	dec d                                            ; $7dcc: $15
	ld d, e                                          ; $7dcd: $53
	jr nc, @-$61                                     ; $7dce: $30 $9d

	ld bc, $722a                                     ; $7dd0: $01 $2a $72
	cp [hl]                                          ; $7dd3: $be
	ei                                               ; $7dd4: $fb
	sub a                                            ; $7dd5: $97
	ld [bc], a                                       ; $7dd6: $02
	dec b                                            ; $7dd7: $05
	ld a, [hl+]                                      ; $7dd8: $2a
	ld d, l                                          ; $7dd9: $55
	xor a                                            ; $7dda: $af
	ld b, a                                          ; $7ddb: $47
	and a                                            ; $7ddc: $a7
	dec hl                                           ; $7ddd: $2b
	db $fc                                           ; $7dde: $fc
	sbc h                                            ; $7ddf: $9c
	ld c, $02                                        ; $7de0: $0e $02
	ld d, $76                                        ; $7de2: $16 $76
	call nz, $e057                                   ; $7de4: $c4 $57 $e0
	sub l                                            ; $7de7: $95
	xor a                                            ; $7de8: $af
	ld d, a                                          ; $7de9: $57
	and [hl]                                         ; $7dea: $a6
	ld d, [hl]                                       ; $7deb: $56
	and [hl]                                         ; $7dec: $a6
	ld d, [hl]                                       ; $7ded: $56
	and a                                            ; $7dee: $a7
	ld d, a                                          ; $7def: $57
	ld [bc], a                                       ; $7df0: $02
	ld [bc], a                                       ; $7df1: $02
	db $dd                                           ; $7df2: $dd
	inc bc                                           ; $7df3: $03
	ld [hl], b                                       ; $7df4: $70
	add h                                            ; $7df5: $84
	ld a, d                                          ; $7df6: $7a
	ld h, b                                          ; $7df7: $60
	sbc l                                            ; $7df8: $9d
	db $fc                                           ; $7df9: $fc
	rst $38                                          ; $7dfa: $ff
	ld a, e                                          ; $7dfb: $7b
	rst JumpTable                                          ; $7dfc: $c7
	ld a, a                                          ; $7dfd: $7f
	sbc e                                            ; $7dfe: $9b

Call_04e_7dff:
	ld [hl], l                                       ; $7dff: $75
	ld d, l                                          ; $7e00: $55
	sub e                                            ; $7e01: $93
	ld b, l                                          ; $7e02: $45
	adc d                                            ; $7e03: $8a
	ld d, l                                          ; $7e04: $55
	ld a, [bc]                                       ; $7e05: $0a
	ld h, l                                          ; $7e06: $65
	ld c, $fd                                        ; $7e07: $0e $fd
	ld d, b                                          ; $7e09: $50
	or b                                             ; $7e0a: $b0
	ld [hl], b                                       ; $7e0b: $70
	and b                                            ; $7e0c: $a0
	ldh a, [$79]                                     ; $7e0d: $f0 $79
	rla                                              ; $7e0f: $17
	ld a, e                                          ; $7e10: $7b
	ldh [c], a                                       ; $7e11: $e2
	sbc [hl]                                         ; $7e12: $9e
	rst SubAFromDE                                          ; $7e13: $df
	ld [hl], b                                       ; $7e14: $70
	xor $5d                                          ; $7e15: $ee $5d
	jp nz, $8c78                                     ; $7e17: $c2 $78 $8c

	inc bc                                           ; $7e1a: $03
	ldh a, [$7e]                                     ; $7e1b: $f0 $7e
	ccf                                              ; $7e1d: $3f
	ld l, e                                          ; $7e1e: $6b
	ldh a, [$7f]                                     ; $7e1f: $f0 $7f
	sub [hl]                                         ; $7e21: $96
	sbc c                                            ; $7e22: $99
	and e                                            ; $7e23: $a3
	cp $4e                                           ; $7e24: $fe $4e
	call c, $27c0                                    ; $7e26: $dc $c0 $27
	sbc $0f                                          ; $7e29: $de $0f
	rst SubAFromDE                                          ; $7e2b: $df
	inc b                                            ; $7e2c: $04
	adc e                                            ; $7e2d: $8b
	jr @-$15                                         ; $7e2e: $18 $e9

	daa                                              ; $7e30: $27
	ldh a, [$ea]                                     ; $7e31: $f0 $ea
	push de                                          ; $7e33: $d5
	ld l, a                                          ; $7e34: $6f
	dec [hl]                                         ; $7e35: $35
	ld a, [hl-]                                      ; $7e36: $3a
	ld sp, hl                                        ; $7e37: $f9
	call nc, $c0c0                                   ; $7e38: $d4 $c0 $c0
	add b                                            ; $7e3b: $80
	add b                                            ; $7e3c: $80
	ret nz                                           ; $7e3d: $c0

	ld [hl], b                                       ; $7e3e: $70
	cpl                                              ; $7e3f: $2f
	db $ed                                           ; $7e40: $ed
	ld d, l                                          ; $7e41: $55
	ld a, b                                          ; $7e42: $78
	xor a                                            ; $7e43: $af
	ld l, h                                          ; $7e44: $6c
	adc l                                            ; $7e45: $8d
	ld [hl], e                                       ; $7e46: $73
	ret nc                                           ; $7e47: $d0

	adc a                                            ; $7e48: $8f
	ld [$3f3a], a                                    ; $7e49: $ea $3a $3f
	scf                                              ; $7e4c: $37
	rra                                              ; $7e4d: $1f
	ld e, $1b                                        ; $7e4e: $1e $1b
	ld sp, hl                                        ; $7e50: $f9
	rst $38                                          ; $7e51: $ff
	nop                                              ; $7e52: $00
	dec de                                           ; $7e53: $1b
	jr jr_04e_7e86                                   ; $7e54: $18 $30

	ld sp, $e63f                                     ; $7e56: $31 $3f $e6
	ld a, e                                          ; $7e59: $7b
	or h                                             ; $7e5a: $b4
	sbc b                                            ; $7e5b: $98
	ld e, $7f                                        ; $7e5c: $1e $7f
	inc de                                           ; $7e5e: $13
	db $fd                                           ; $7e5f: $fd
	nop                                              ; $7e60: $00

Jump_04e_7e61:
	db $fd                                           ; $7e61: $fd
	ld bc, $ffda                                     ; $7e62: $01 $da $ff
	adc h                                            ; $7e65: $8c
	ld [hl], d                                       ; $7e66: $72
	jp $0001                                         ; $7e67: $c3 $01 $00


	inc h                                            ; $7e6a: $24
	inc a                                            ; $7e6b: $3c
	cp a                                             ; $7e6c: $bf
	rst $38                                          ; $7e6d: $ff
	db $e3                                           ; $7e6e: $e3
	call $c744                                       ; $7e6f: $cd $44 $c7
	sbc [hl]                                         ; $7e72: $9e
	sbc [hl]                                         ; $7e73: $9e
	rst FarCall                                          ; $7e74: $f7
	rst AddAOntoHL                                          ; $7e75: $ef
	ld [bc], a                                       ; $7e76: $02
	ld d, l                                          ; $7e77: $55
	ld [$d470], a                                    ; $7e78: $ea $70 $d4
	ld a, [hl]                                       ; $7e7b: $7e
	or l                                             ; $7e7c: $b5
	ld a, c                                          ; $7e7d: $79
	ld l, e                                          ; $7e7e: $6b
	ld l, e                                          ; $7e7f: $6b
	add b                                            ; $7e80: $80
	ld [hl], e                                       ; $7e81: $73
	ldh a, [$6f]                                     ; $7e82: $f0 $6f
	or b                                             ; $7e84: $b0
	rst SubAFromDE                                          ; $7e85: $df

jr_04e_7e86:
	xor d                                            ; $7e86: $aa
	ld a, b                                          ; $7e87: $78
	ld b, b                                          ; $7e88: $40
	ld e, e                                          ; $7e89: $5b
	ldh a, [$9e]                                     ; $7e8a: $f0 $9e
	xor a                                            ; $7e8c: $af
	ld a, c                                          ; $7e8d: $79
	or [hl]                                          ; $7e8e: $b6
	ld d, a                                          ; $7e8f: $57
	ldh a, [hDisp1_WX]                                     ; $7e90: $f0 $96
	db $eb                                           ; $7e92: $eb
	xor d                                            ; $7e93: $aa
	db $fd                                           ; $7e94: $fd
	rst $38                                          ; $7e95: $ff
	rst $38                                          ; $7e96: $ff
	ld c, $ff                                        ; $7e97: $0e $ff
	db $fd                                           ; $7e99: $fd
	ld hl, sp-$03                                    ; $7e9a: $f8 $fd
	sub a                                            ; $7e9c: $97
	ld b, $0f                                        ; $7e9d: $06 $0f
	rst $38                                          ; $7e9f: $ff
	sbc c                                            ; $7ea0: $99
	sbc c                                            ; $7ea1: $99
	ld c, c                                          ; $7ea2: $49
	pop hl                                           ; $7ea3: $e1
	rst $38                                          ; $7ea4: $ff
	ld [hl], h                                       ; $7ea5: $74
	ld h, [hl]                                       ; $7ea6: $66
	sub a                                            ; $7ea7: $97
	ccf                                              ; $7ea8: $3f
	ld a, [de]                                       ; $7ea9: $1a
	ld c, $0a                                        ; $7eaa: $0e $0a
	dec b                                            ; $7eac: $05
	dec bc                                           ; $7ead: $0b
	rst $38                                          ; $7eae: $ff
	rst SubAFromBC                                          ; $7eaf: $e7
	ld a, e                                          ; $7eb0: $7b
	ld h, c                                          ; $7eb1: $61
	ld a, a                                          ; $7eb2: $7f
	db $f4                                           ; $7eb3: $f4
	sbc l                                            ; $7eb4: $9d
	db $eb                                           ; $7eb5: $eb
	ld d, a                                          ; $7eb6: $57
	ld [hl], l                                       ; $7eb7: $75
	dec a                                            ; $7eb8: $3d
	ld a, [hl]                                       ; $7eb9: $7e
	sub a                                            ; $7eba: $97
	sub h                                            ; $7ebb: $94
	dec d                                            ; $7ebc: $15
	xor e                                            ; $7ebd: $ab
	ld d, a                                          ; $7ebe: $57
	or a                                             ; $7ebf: $b7
	ld [hl], a                                       ; $7ec0: $77
	rst $38                                          ; $7ec1: $ff
	cp $11                                           ; $7ec2: $fe $11
	xor e                                            ; $7ec4: $ab
	ld d, a                                          ; $7ec5: $57
	xor a                                            ; $7ec6: $af
	db $dd                                           ; $7ec7: $dd
	inc bc                                           ; $7ec8: $03
	add b                                            ; $7ec9: $80
	add e                                            ; $7eca: $83
	ld d, a                                          ; $7ecb: $57
	xor a                                            ; $7ecc: $af
	ld e, a                                          ; $7ecd: $5f
	cp $ff                                           ; $7ece: $fe $ff
	db $ec                                           ; $7ed0: $ec
	call nz, $deca                                   ; $7ed1: $c4 $ca $de
	rst SubAFromBC                                          ; $7ed4: $e7
	ld a, [rIE]                                    ; $7ed5: $fa $ff $ff
	inc de                                           ; $7ed8: $13
	rst $38                                          ; $7ed9: $ff
	db $fd                                           ; $7eda: $fd
	db $eb                                           ; $7edb: $eb
	rst $38                                          ; $7edc: $ff
	db $fd                                           ; $7edd: $fd
	ld [$fef5], a                                    ; $7ede: $ea $f5 $fe

jr_04e_7ee1:
	push bc                                          ; $7ee1: $c5
	xor $7b                                          ; $7ee2: $ee $7b
	ld a, d                                          ; $7ee4: $7a
	ld a, e                                          ; $7ee5: $7b
	add b                                            ; $7ee6: $80
	ldh a, [$78]                                     ; $7ee7: $f0 $78
	sbc l                                            ; $7ee9: $9d
	ld l, b                                          ; $7eea: $68
	ld a, b                                          ; $7eeb: $78
	sbc $fc                                          ; $7eec: $de $fc
	ld a, e                                          ; $7eee: $7b
	sub [hl]                                         ; $7eef: $96
	ld a, c                                          ; $7ef0: $79
	call nz, $8d7b                                   ; $7ef1: $c4 $7b $8d
	ld h, d                                          ; $7ef4: $62
	sbc $9d                                          ; $7ef5: $de $9d
	nop                                              ; $7ef7: $00
	cp $77                                           ; $7ef8: $fe $77
	ldh a, [$9e]                                     ; $7efa: $f0 $9e
	ret c                                            ; $7efc: $d8

	ld h, a                                          ; $7efd: $67

Call_04e_7efe:
	pop af                                           ; $7efe: $f1

Call_04e_7eff:
Jump_04e_7eff:
jr_04e_7eff:
	ld a, a                                          ; $7eff: $7f
	push af                                          ; $7f00: $f5
	sbc c                                            ; $7f01: $99
	jr nz, jr_04e_7f04                               ; $7f02: $20 $00

jr_04e_7f04:
	nop                                              ; $7f04: $00
	rst SubAFromBC                                          ; $7f05: $e7
	nop                                              ; $7f06: $00
	sub b                                            ; $7f07: $90
	ei                                               ; $7f08: $fb
	sbc l                                            ; $7f09: $9d
	ret nz                                           ; $7f0a: $c0

	ld hl, sp+$73                                    ; $7f0b: $f8 $73
	halt                                             ; $7f0d: $76
	sbc d                                            ; $7f0e: $9a
	db $fc                                           ; $7f0f: $fc
	nop                                              ; $7f10: $00
	ld b, $04                                        ; $7f11: $06 $04
	inc b                                            ; $7f13: $04
	call c, $9602                                    ; $7f14: $dc $02 $96
	ld l, d                                          ; $7f17: $6a
	dec [hl]                                         ; $7f18: $35
	ld l, d                                          ; $7f19: $6a
	ld d, l                                          ; $7f1a: $55
	ld a, d                                          ; $7f1b: $7a
	ld [hl], l                                       ; $7f1c: $75
	inc l                                            ; $7f1d: $2c
	scf                                              ; $7f1e: $37
	jr nz, jr_04e_7eff                               ; $7f1f: $20 $de

	ldh [$80], a                                     ; $7f21: $e0 $80
	ld [hl], h                                       ; $7f23: $74
	halt                                             ; $7f24: $76
	halt                                             ; $7f25: $76
	ld a, [hl]                                       ; $7f26: $7e
	inc l                                            ; $7f27: $2c
	ld d, h                                          ; $7f28: $54
	xor h                                            ; $7f29: $ac
	ld d, h                                          ; $7f2a: $54
	adc [hl]                                         ; $7f2b: $8e
	dec e                                            ; $7f2c: $1d
	xor a                                            ; $7f2d: $af
	dec c                                            ; $7f2e: $0d
	add [hl]                                         ; $7f2f: $86
	ld b, $06                                        ; $7f30: $06 $06
	rrca                                             ; $7f32: $0f
	cpl                                              ; $7f33: $2f
	ld l, a                                          ; $7f34: $6f
	ld l, a                                          ; $7f35: $6f
	rst $38                                          ; $7f36: $ff
	rst $38                                          ; $7f37: $ff
	ld a, a                                          ; $7f38: $7f
	ld h, b                                          ; $7f39: $60
	ld h, b                                          ; $7f3a: $60
	rra                                              ; $7f3b: $1f
	db $10                                           ; $7f3c: $10
	rra                                              ; $7f3d: $1f
	rrca                                             ; $7f3e: $0f
	ld a, a                                          ; $7f3f: $7f
	ld a, a                                          ; $7f40: $7f
	ld b, b                                          ; $7f41: $40
	rst SubAFromDE                                          ; $7f42: $df
	jr nz, jr_04e_7ee1                               ; $7f43: $20 $9c

	jr nc, @-$6e                                     ; $7f45: $30 $90

	adc d                                            ; $7f47: $8a
	ld [hl], a                                       ; $7f48: $77
	sub b                                            ; $7f49: $90
	ld a, a                                          ; $7f4a: $7f
	db $fd                                           ; $7f4b: $fd
	sbc e                                            ; $7f4c: $9b
	sbc a                                            ; $7f4d: $9f
	ld hl, sp-$26                                    ; $7f4e: $f8 $da
	xor a                                            ; $7f50: $af
	ld l, h                                          ; $7f51: $6c
	adc e                                            ; $7f52: $8b
	ld a, e                                          ; $7f53: $7b
	ldh a, [$99]                                     ; $7f54: $f0 $99
	call c, $07ff                                    ; $7f56: $dc $ff $07
	ldh [rP1], a                                     ; $7f59: $e0 $00
	xor a                                            ; $7f5b: $af
	ld [hl], a                                       ; $7f5c: $77
	ld a, a                                          ; $7f5d: $7f
	adc l                                            ; $7f5e: $8d
	ld hl, sp+$1d                                    ; $7f5f: $f8 $1d
	ld b, c                                          ; $7f61: $41
	rst AddAOntoHL                                          ; $7f62: $ef
	ei                                               ; $7f63: $fb
	inc a                                            ; $7f64: $3c
	inc l                                            ; $7f65: $2c
	sub a                                            ; $7f66: $97
	db $ec                                           ; $7f67: $ec
	ret nz                                           ; $7f68: $c0

	nop                                              ; $7f69: $00
	sbc a                                            ; $7f6a: $9f
	rst SubAFromDE                                          ; $7f6b: $df
	ld e, h                                          ; $7f6c: $5c
	ld a, a                                          ; $7f6d: $7f
	ld a, h                                          ; $7f6e: $7c
	ld a, l                                          ; $7f6f: $7d
	and $76                                          ; $7f70: $e6 $76
	ldh a, [c]                                       ; $7f72: $f2
	sbc [hl]                                         ; $7f73: $9e
	ld a, a                                          ; $7f74: $7f
	ld a, d                                          ; $7f75: $7a
	add hl, de                                       ; $7f76: $19
	ld [hl], a                                       ; $7f77: $77
	ret c                                            ; $7f78: $d8

	sbc d                                            ; $7f79: $9a
	add b                                            ; $7f7a: $80
	rrca                                             ; $7f7b: $0f

jr_04e_7f7c:
	ld d, l                                          ; $7f7c: $55
	xor e                                            ; $7f7d: $ab
	ld d, a                                          ; $7f7e: $57
	ld a, d                                          ; $7f7f: $7a
	ld b, l                                          ; $7f80: $45
	sbc e                                            ; $7f81: $9b
	db $e4                                           ; $7f82: $e4
	dec bc                                           ; $7f83: $0b
	dec a                                            ; $7f84: $3d
	ld a, [hl]                                       ; $7f85: $7e
	sbc $ff                                          ; $7f86: $de $ff
	sub d                                            ; $7f88: $92
	db $fc                                           ; $7f89: $fc
	jr jr_04e_7f7c                                   ; $7f8a: $18 $f0

	sbc $bd                                          ; $7f8c: $de $bd
	ld a, [hl]                                       ; $7f8e: $7e
	rst $38                                          ; $7f8f: $ff
	push de                                          ; $7f90: $d5
	ccf                                              ; $7f91: $3f
	rst $38                                          ; $7f92: $ff
	xor c                                            ; $7f93: $a9
	ld d, h                                          ; $7f94: $54
	xor c                                            ; $7f95: $a9
	ld a, d                                          ; $7f96: $7a
	ld a, l                                          ; $7f97: $7d
	rst $38                                          ; $7f98: $ff
	add e                                            ; $7f99: $83
	ld d, [hl]                                       ; $7f9a: $56
	xor e                                            ; $7f9b: $ab

Jump_04e_7f9c:
	ld d, [hl]                                       ; $7f9c: $56
	db $ec                                           ; $7f9d: $ec
	rst $38                                          ; $7f9e: $ff
	ld a, a                                          ; $7f9f: $7f
	ld a, $5e                                        ; $7fa0: $3e $5e
	inc a                                            ; $7fa2: $3c
	db $fd                                           ; $7fa3: $fd
	ld a, c                                          ; $7fa4: $79
	rst $38                                          ; $7fa5: $ff
	ld d, l                                          ; $7fa6: $55
	ccf                                              ; $7fa7: $3f
	sbc l                                            ; $7fa8: $9d
	sbc a                                            ; $7fa9: $9f
	sbc a                                            ; $7faa: $9f
	dec sp                                           ; $7fab: $3b
	ld [hl], a                                       ; $7fac: $77
	ld a, a                                          ; $7fad: $7f
	and $ec                                          ; $7fae: $e6 $ec
	inc h                                            ; $7fb0: $24
	ld a, b                                          ; $7fb1: $78
	rst GetHLinHL                                          ; $7fb2: $cf
	ld b, b                                          ; $7fb3: $40
	and h                                            ; $7fb4: $a4
	xor $dd                                          ; $7fb5: $ee $dd
	rst $38                                          ; $7fb7: $ff
	rst SubAFromDE                                          ; $7fb8: $df
	rst SubAFromDE                                          ; $7fb9: $df
	rst SubAFromDE                                          ; $7fba: $df
	rst AddAOntoHL                                          ; $7fbb: $ef
	adc e                                            ; $7fbc: $8b
	ld a, a                                          ; $7fbd: $7f
	ccf                                              ; $7fbe: $3f
	rst $38                                          ; $7fbf: $ff
	cp a                                             ; $7fc0: $bf
	sbc a                                            ; $7fc1: $9f
	rst SubAFromDE                                          ; $7fc2: $df
	ld e, a                                          ; $7fc3: $5f
	ld a, a                                          ; $7fc4: $7f
	rst AddAOntoHL                                          ; $7fc5: $ef
	rst $38                                          ; $7fc6: $ff
	rst $38                                          ; $7fc7: $ff
	cp a                                             ; $7fc8: $bf
	rst SubAFromDE                                          ; $7fc9: $df
	db $d3                                           ; $7fca: $d3
	ldh [rIE], a                                     ; $7fcb: $e0 $ff
	ld e, l                                          ; $7fcd: $5d
	xor a                                            ; $7fce: $af
	db $fd                                           ; $7fcf: $fd
	cp $79                                           ; $7fd0: $fe $79
	xor h                                            ; $7fd2: $ac
	sbc d                                            ; $7fd3: $9a
	call nz, $dfa6                                   ; $7fd4: $c4 $a6 $df
	add d                                            ; $7fd7: $82
	pop bc                                           ; $7fd8: $c1
	ld a, e                                          ; $7fd9: $7b
	ld d, e                                          ; $7fda: $53
	sub d                                            ; $7fdb: $92
	rst $38                                          ; $7fdc: $ff
	ld d, a                                          ; $7fdd: $57
	db $fc                                           ; $7fde: $fc
	ld d, h                                          ; $7fdf: $54
	xor b                                            ; $7fe0: $a8
	or h                                             ; $7fe1: $b4
	ld c, d                                          ; $7fe2: $4a
	add h                                            ; $7fe3: $84
	ld c, d                                          ; $7fe4: $4a
	xor e                                            ; $7fe5: $ab
	rst $38                                          ; $7fe6: $ff
	xor b                                            ; $7fe7: $a8
	ld d, b                                          ; $7fe8: $50
	ld a, b                                          ; $7fe9: $78
	cp c                                             ; $7fea: $b9
	add b                                            ; $7feb: $80
	ret nz                                           ; $7fec: $c0

	db $dd                                           ; $7fed: $dd
	ld e, a                                          ; $7fee: $5f
	ld a, d                                          ; $7fef: $7a
	ld a, l                                          ; $7ff0: $7d
	ld a, [hl-]                                      ; $7ff1: $3a
	or l                                             ; $7ff2: $b5
	ld e, d                                          ; $7ff3: $5a
	xor l                                            ; $7ff4: $ad
	db $e3                                           ; $7ff5: $e3
	cp a                                             ; $7ff6: $bf
	rst FarCall                                          ; $7ff7: $f7
	jp $3f67                                         ; $7ff8: $c3 $67 $3f


	ccf                                              ; $7ffb: $3f
	rra                                              ; $7ffc: $1f
	ld a, [$c606]                                    ; $7ffd: $fa $06 $c6
