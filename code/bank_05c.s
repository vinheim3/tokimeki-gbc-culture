; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05c", ROMX[$4000], BANK[$5c]

	sub a                                            ; $4000: $97
	jr jr_05c_4007                                   ; $4001: $18 $04

	ldh a, [c]                                       ; $4003: $f2
	ld l, c                                          ; $4004: $69
	push af                                          ; $4005: $f5
	db $fc                                           ; $4006: $fc

jr_05c_4007:
	xor $31                                          ; $4007: $ee $31
	ld a, e                                          ; $4009: $7b
	inc h                                            ; $400a: $24
	sbc h                                            ; $400b: $9c
	sbc a                                            ; $400c: $9f
	rrca                                             ; $400d: $0f
	rst FarCall                                          ; $400e: $f7
	ld l, a                                          ; $400f: $6f
	ld a, b                                          ; $4010: $78
	rst SubAFromDE                                          ; $4011: $df
	add b                                            ; $4012: $80
	ld a, a                                          ; $4013: $7f
	ld a, d                                          ; $4014: $7a
	ld h, a                                          ; $4015: $67
	ld hl, sp-$24                                    ; $4016: $f8 $dc
	rrca                                             ; $4018: $0f
	sbc [hl]                                         ; $4019: $9e
	add hl, bc                                       ; $401a: $09
	halt                                             ; $401b: $76
	cp l                                             ; $401c: $bd
	sbc $0b                                          ; $401d: $de $0b
	sub a                                            ; $401f: $97
	rrca                                             ; $4020: $0f
	rlca                                             ; $4021: $07
	rlca                                             ; $4022: $07
	ld d, b                                          ; $4023: $50
	nop                                              ; $4024: $00
	ld a, [bc]                                       ; $4025: $0a
	ld d, l                                          ; $4026: $55
	cpl                                              ; $4027: $2f
	ld a, e                                          ; $4028: $7b
	dec l                                            ; $4029: $2d
	ld l, a                                          ; $402a: $6f
	ldh [$df], a                                     ; $402b: $e0 $df
	add b                                            ; $402d: $80
	sub [hl]                                         ; $402e: $96
	ld [$a858], sp                                   ; $402f: $08 $58 $a8
	ld [hl], h                                       ; $4032: $74
	db $fc                                           ; $4033: $fc
	cp $fb                                           ; $4034: $fe $fb
	db $e3                                           ; $4036: $e3
	rra                                              ; $4037: $1f
	sbc $0f                                          ; $4038: $de $0f
	sbc $07                                          ; $403a: $de $07
	sbc [hl]                                         ; $403c: $9e
	rra                                              ; $403d: $1f
	db $fd                                           ; $403e: $fd
	sbc e                                            ; $403f: $9b
	jr nz, jr_05c_40b2                               ; $4040: $20 $70

	ret nc                                           ; $4042: $d0

	db $fc                                           ; $4043: $fc
	call c, $99ff                                    ; $4044: $dc $ff $99
	rst SubAFromDE                                          ; $4047: $df
	cp a                                             ; $4048: $bf
	ccf                                              ; $4049: $3f
	inc bc                                           ; $404a: $03
	inc bc                                           ; $404b: $03
	ld bc, $ad76                                     ; $404c: $01 $76 $ad
	sbc [hl]                                         ; $404f: $9e
	dec c                                            ; $4050: $0d
	reti                                             ; $4051: $d9


	rst $38                                          ; $4052: $ff
	sbc b                                            ; $4053: $98
	ld a, [hl+]                                      ; $4054: $2a
	db $dd                                           ; $4055: $dd
	xor [hl]                                         ; $4056: $ae
	push de                                          ; $4057: $d5
	xor a                                            ; $4058: $af
	ei                                               ; $4059: $fb
	xor $7a                                          ; $405a: $ee $7a
	ld d, b                                          ; $405c: $50
	ld a, e                                          ; $405d: $7b
	and d                                            ; $405e: $a2
	sbc $c0                                          ; $405f: $de $c0
	sub [hl]                                         ; $4061: $96
	ld d, e                                          ; $4062: $53
	ld h, l                                          ; $4063: $65
	cp c                                             ; $4064: $b9
	ld d, l                                          ; $4065: $55
	xor d                                            ; $4066: $aa
	ld d, h                                          ; $4067: $54
	add sp, $54                                      ; $4068: $e8 $54
	ld [bc], a                                       ; $406a: $02
	ld [hl], e                                       ; $406b: $73
	reti                                             ; $406c: $d9


	rst $38                                          ; $406d: $ff
	ld a, a                                          ; $406e: $7f
	cp b                                             ; $406f: $b8
	sbc c                                            ; $4070: $99
	add a                                            ; $4071: $87
	rst JumpTable                                          ; $4072: $c7
	ld h, e                                          ; $4073: $63
	ld h, c                                          ; $4074: $61
	jr nc, jr_05c_408f                               ; $4075: $30 $18

	ld [hl], a                                       ; $4077: $77
	and c                                            ; $4078: $a1
	rst SubAFromDE                                          ; $4079: $df
	ld b, b                                          ; $407a: $40
	ld a, [hl]                                       ; $407b: $7e
	db $fc                                           ; $407c: $fc
	jp c, Jump_05c_5aff                              ; $407d: $da $ff $5a

	or b                                             ; $4080: $b0
	ld [hl], a                                       ; $4081: $77
	ldh a, [c]                                       ; $4082: $f2
	sbc l                                            ; $4083: $9d
	rst GetHLinHL                                          ; $4084: $cf
	rst SubAFromBC                                          ; $4085: $e7
	ld h, $c0                                        ; $4086: $26 $c0
	sbc [hl]                                         ; $4088: $9e
	db $fd                                           ; $4089: $fd
	ld l, [hl]                                       ; $408a: $6e
	ld a, a                                          ; $408b: $7f
	sbc [hl]                                         ; $408c: $9e
	rst $38                                          ; $408d: $ff
	ld l, a                                          ; $408e: $6f

jr_05c_408f:
	adc c                                            ; $408f: $89
	ld l, a                                          ; $4090: $6f
	ld e, d                                          ; $4091: $5a
	sbc h                                            ; $4092: $9c
	ld b, b                                          ; $4093: $40
	ldh [$a0], a                                     ; $4094: $e0 $a0
	ld a, e                                          ; $4096: $7b
	jr nc, jr_05c_4114                               ; $4097: $30 $7b

	sub b                                            ; $4099: $90
	sub h                                            ; $409a: $94

Jump_05c_409b:
	ld b, b                                          ; $409b: $40
	ld h, b                                          ; $409c: $60
	jr nz, @+$37                                     ; $409d: $20 $35

jr_05c_409f:
	ld l, d                                          ; $409f: $6a
	dec a                                            ; $40a0: $3d
	ld a, d                                          ; $40a1: $7a
	dec l                                            ; $40a2: $2d
	ld a, e                                          ; $40a3: $7b
	dec [hl]                                         ; $40a4: $35
	ld e, e                                          ; $40a5: $5b
	ld [hl], c                                       ; $40a6: $71
	sub d                                            ; $40a7: $92

Call_05c_40a8:
	sbc $01                                          ; $40a8: $de $01
	add h                                            ; $40aa: $84
	ld [de], a                                       ; $40ab: $12
	dec [hl]                                         ; $40ac: $35
	ld e, e                                          ; $40ad: $5b
	cp [hl]                                          ; $40ae: $be
	ld c, l                                          ; $40af: $4d
	cp c                                             ; $40b0: $b9
	db $ed                                           ; $40b1: $ed

jr_05c_40b2:
	ld d, h                                          ; $40b2: $54
	add hl, de                                       ; $40b3: $19
	ld a, [hl-]                                      ; $40b4: $3a
	ld a, h                                          ; $40b5: $7c
	ld sp, hl                                        ; $40b6: $f9
	ld a, [$9ece]                                    ; $40b7: $fa $ce $9e
	cp a                                             ; $40ba: $bf
	ld a, a                                          ; $40bb: $7f
	jp $fc00                                         ; $40bc: $c3 $00 $fc


	rst $38                                          ; $40bf: $ff
	ldh [$33], a                                     ; $40c0: $e0 $33
	ret nz                                           ; $40c2: $c0

	add b                                            ; $40c3: $80
	ccf                                              ; $40c4: $3f
	rst $38                                          ; $40c5: $ff
	ld a, c                                          ; $40c6: $79
	ld [hl], h                                       ; $40c7: $74
	rst $38                                          ; $40c8: $ff
	sub [hl]                                         ; $40c9: $96
	ldh a, [$e3]                                     ; $40ca: $f0 $e3
	rra                                              ; $40cc: $1f
	nop                                              ; $40cd: $00
	ld hl, sp+$3f                                    ; $40ce: $f8 $3f
	ld hl, sp-$7d                                    ; $40d0: $f8 $83
	rrca                                             ; $40d2: $0f
	sbc $ff                                          ; $40d3: $de $ff
	add b                                            ; $40d5: $80
	rlca                                             ; $40d6: $07
	nop                                              ; $40d7: $00
	rlca                                             ; $40d8: $07
	ld a, a                                          ; $40d9: $7f
	push af                                          ; $40da: $f5
	cp a                                             ; $40db: $bf
	rst GetHLinHL                                          ; $40dc: $cf
	rst $38                                          ; $40dd: $ff
	rra                                              ; $40de: $1f
	cp l                                             ; $40df: $bd
	ld a, [hl]                                       ; $40e0: $7e
	rst FarCall                                          ; $40e1: $f7
	ei                                               ; $40e2: $fb
	ret nz                                           ; $40e3: $c0

	db $fc                                           ; $40e4: $fc
	ld hl, sp-$10                                    ; $40e5: $f8 $f0
	ld h, d                                          ; $40e7: $62
	jp $ad8e                                         ; $40e8: $c3 $8e $ad


	ld e, d                                          ; $40eb: $5a
	and l                                            ; $40ec: $a5
	jp c, $faed                                      ; $40ed: $da $ed $fa

	rst FarCall                                          ; $40f0: $f7
	ld a, [hl]                                       ; $40f1: $7e
	sbc $e7                                          ; $40f2: $de $e7
	ld a, e                                          ; $40f4: $7b
	adc c                                            ; $40f5: $89
	dec a                                            ; $40f6: $3d
	ld e, $0f                                        ; $40f7: $1e $0f
	add hl, bc                                       ; $40f9: $09
	ld bc, $b060                                     ; $40fa: $01 $60 $b0
	ld d, b                                          ; $40fd: $50
	xor b                                            ; $40fe: $a8
	ld a, b                                          ; $40ff: $78
	cp b                                             ; $4100: $b8
	jr jr_05c_409f                                   ; $4101: $18 $9c

	ldh [rSVBK], a                                   ; $4103: $e0 $70
	or b                                             ; $4105: $b0
	ret c                                            ; $4106: $d8

	add sp, $78                                      ; $4107: $e8 $78
	ld hl, sp-$04                                    ; $4109: $f8 $fc
	rlca                                             ; $410b: $07
	sbc $03                                          ; $410c: $de $03
	ld a, l                                          ; $410e: $7d
	ld a, [hl+]                                      ; $410f: $2a
	sbc l                                            ; $4110: $9d
	ld sp, $7307                                     ; $4111: $31 $07 $73

jr_05c_4114:
	ld hl, sp-$6f                                    ; $4114: $f8 $91
	ld bc, $1909                                     ; $4116: $01 $09 $19
	xor a                                            ; $4119: $af
	cp h                                             ; $411a: $bc
	ldh [$c0], a                                     ; $411b: $e0 $c0
	ld h, c                                          ; $411d: $61
	ld h, a                                          ; $411e: $67
	cp $f8                                           ; $411f: $fe $f8
	ret nz                                           ; $4121: $c0

	jp Jump_05c_79df                                 ; $4122: $c3 $df $79


	ld a, [hl]                                       ; $4125: $7e
	add b                                            ; $4126: $80
	db $fc                                           ; $4127: $fc
	ld a, b                                          ; $4128: $78
	rlca                                             ; $4129: $07
	rrca                                             ; $412a: $0f
	ld d, $7d                                        ; $412b: $16 $7d
	rst $38                                          ; $412d: $ff
	ld a, l                                          ; $412e: $7d
	ld a, a                                          ; $412f: $7f
	cp $fe                                           ; $4130: $fe $fe
	db $fc                                           ; $4132: $fc
	ld sp, hl                                        ; $4133: $f9
	db $e3                                           ; $4134: $e3
	add a                                            ; $4135: $87
	ld b, $00                                        ; $4136: $06 $00
	ld bc, $6ebe                                     ; $4138: $01 $be $6e
	rst SubAFromDE                                          ; $413b: $df
	cp a                                             ; $413c: $bf
	ld a, e                                          ; $413d: $7b
	rst FarCall                                          ; $413e: $f7
	ld l, [hl]                                       ; $413f: $6e
	cp a                                             ; $4140: $bf
	ld a, e                                          ; $4141: $7b
	di                                               ; $4142: $f3
	rst SubAFromBC                                          ; $4143: $e7
	adc $9d                                          ; $4144: $ce $9d
	adc h                                            ; $4146: $8c
	dec sp                                           ; $4147: $3b
	rst FarCall                                          ; $4148: $f7
	rst GetHLinHL                                          ; $4149: $cf
	dec de                                           ; $414a: $1b
	dec e                                            ; $414b: $1d
	ccf                                              ; $414c: $3f
	cp e                                             ; $414d: $bb
	sbc a                                            ; $414e: $9f
	adc a                                            ; $414f: $8f
	ld a, l                                          ; $4150: $7d
	adc [hl]                                         ; $4151: $8e
	rst FarCall                                          ; $4152: $f7
	ei                                               ; $4153: $fb
	db $ec                                           ; $4154: $ec
	and $f1                                          ; $4155: $e6 $f1
	ld hl, sp-$02                                    ; $4157: $f8 $fe
	rst $38                                          ; $4159: $ff
	ld a, c                                          ; $415a: $79
	ld a, c                                          ; $415b: $79
	adc d                                            ; $415c: $8a
	ret c                                            ; $415d: $d8

	db $fc                                           ; $415e: $fc
	db $ec                                           ; $415f: $ec
	db $fc                                           ; $4160: $fc
	call c, $9020                                    ; $4161: $dc $20 $90
	ret z                                            ; $4164: $c8

	ld l, b                                          ; $4165: $68
	inc h                                            ; $4166: $24
	sub h                                            ; $4167: $94
	ld b, h                                          ; $4168: $44
	inc h                                            ; $4169: $24
	xor d                                            ; $416a: $aa
	ld d, h                                          ; $416b: $54
	adc b                                            ; $416c: $88
	ld d, b                                          ; $416d: $50
	jr z, jr_05c_4180                                ; $416e: $28 $10

	xor b                                            ; $4170: $a8
	ld b, b                                          ; $4171: $40
	ld sp, hl                                        ; $4172: $f9
	ld a, l                                          ; $4173: $7d
	ld d, h                                          ; $4174: $54
	ld a, l                                          ; $4175: $7d
	call z, $029e                                    ; $4176: $cc $9e $02
	ld a, e                                          ; $4179: $7b
	sub [hl]                                         ; $417a: $96
	ld a, l                                          ; $417b: $7d
	ld [hl], h                                       ; $417c: $74
	rst SubAFromDE                                          ; $417d: $df
	inc b                                            ; $417e: $04
	rst SubAFromDE                                          ; $417f: $df

jr_05c_4180:
	ld [bc], a                                       ; $4180: $02

Jump_05c_4181:
jr_05c_4181:
	rst SubAFromDE                                          ; $4181: $df
	ld bc, $b07e                                     ; $4182: $01 $7e $b0
	ld [hl], e                                       ; $4185: $73
	add [hl]                                         ; $4186: $86
	sbc [hl]                                         ; $4187: $9e
	add c                                            ; $4188: $81
	ld sp, hl                                        ; $4189: $f9
	sbc l                                            ; $418a: $9d
	pop af                                           ; $418b: $f1
	ld a, [$656e]                                    ; $418c: $fa $6e $65
	ld h, [hl]                                       ; $418f: $66
	sub b                                            ; $4190: $90
	ld b, [hl]                                       ; $4191: $46
	ret nz                                           ; $4192: $c0

	sbc d                                            ; $4193: $9a
	cp a                                             ; $4194: $bf
	sbc a                                            ; $4195: $9f
	rst JumpTable                                          ; $4196: $c7
	rst JumpTable                                          ; $4197: $c7
	rst AddAOntoHL                                          ; $4198: $ef
	ld [hl], e                                       ; $4199: $73
	ldh a, [$df]                                     ; $419a: $f0 $df
	ld [$109e], sp                                   ; $419c: $08 $9e $10
	cp $df                                           ; $419f: $fe $df
	ldh [$9d], a                                     ; $41a1: $e0 $9d
	ldh a, [$d0]                                     ; $41a3: $f0 $d0
	sbc $f0                                          ; $41a5: $de $f0
	sbc [hl]                                         ; $41a7: $9e
	pop af                                           ; $41a8: $f1
	sbc $20                                          ; $41a9: $de $20
	sub d                                            ; $41ab: $92
	jr nc, @+$12                                     ; $41ac: $30 $10

	db $10                                           ; $41ae: $10
	ld de, $3d12                                     ; $41af: $11 $12 $3d
	ld [hl], a                                       ; $41b2: $77
	inc l                                            ; $41b3: $2c
	dec de                                           ; $41b4: $1b
	ld [hl], $5d                                     ; $41b5: $36 $5d
	ld a, [hl+]                                      ; $41b7: $2a
	ccf                                              ; $41b8: $3f
	ld h, [hl]                                       ; $41b9: $66
	and c                                            ; $41ba: $a1
	add b                                            ; $41bb: $80
	ld d, d                                          ; $41bc: $52
	ld sp, $a9a2                                     ; $41bd: $31 $a2 $a9
	xor d                                            ; $41c0: $aa
	ld l, c                                          ; $41c1: $69
	ld c, d                                          ; $41c2: $4a
	dec h                                            ; $41c3: $25
	xor a                                            ; $41c4: $af
	adc $dd                                          ; $41c5: $ce $dd
	call nc, $52d4                                   ; $41c7: $d4 $d4 $52
	ld [hl], c                                       ; $41ca: $71
	jr c, @+$10                                      ; $41cb: $38 $0e

	or c                                             ; $41cd: $b1
	ld c, h                                          ; $41ce: $4c
	sub e                                            ; $41cf: $93
	xor c                                            ; $41d0: $a9
	ld b, d                                          ; $41d1: $42
	adc l                                            ; $41d2: $8d
	ld d, e                                          ; $41d3: $53
	rst $38                                          ; $41d4: $ff
	rrca                                             ; $41d5: $0f
	inc bc                                           ; $41d6: $03
	inc c                                            ; $41d7: $0c
	ld b, a                                          ; $41d8: $47
	ld sp, $941e                                     ; $41d9: $31 $1e $94
	adc a                                            ; $41dc: $8f
	rra                                              ; $41dd: $1f
	rst $38                                          ; $41de: $ff
	ld a, $01                                        ; $41df: $3e $01
	rst $38                                          ; $41e1: $ff
	ccf                                              ; $41e2: $3f
	ld b, $ff                                        ; $41e3: $06 $ff
	rst $38                                          ; $41e5: $ff
	db $e3                                           ; $41e6: $e3
	ld a, e                                          ; $41e7: $7b
	ld de, $4e7c                                     ; $41e8: $11 $7c $4e
	sub d                                            ; $41eb: $92
	ld hl, sp+$6e                                    ; $41ec: $f8 $6e
	db $ec                                           ; $41ee: $ec
	db $ec                                           ; $41ef: $ec
	db $f4                                           ; $41f0: $f4
	ldh [$e0], a                                     ; $41f1: $e0 $e0
	ret nz                                           ; $41f3: $c0

	call nz, $1c9c                                   ; $41f4: $c4 $9c $1c
	jr jr_05c_4181                                   ; $41f7: $18 $88

	db $fd                                           ; $41f9: $fd
	ld a, l                                          ; $41fa: $7d
	ld h, a                                          ; $41fb: $67
	ld [hl], a                                       ; $41fc: $77
	ld e, a                                          ; $41fd: $5f
	ld h, [hl]                                       ; $41fe: $66
	ld d, h                                          ; $41ff: $54
	rst $38                                          ; $4200: $ff
	sbc b                                            ; $4201: $98
	adc $73                                          ; $4202: $ce $73
	ld c, a                                          ; $4204: $4f
	rst SubAFromDE                                          ; $4205: $df
	di                                               ; $4206: $f3
	di                                               ; $4207: $f3
	xor $de                                          ; $4208: $ee $de
	cp $94                                           ; $420a: $fe $94
	rst $38                                          ; $420c: $ff
	ld h, e                                          ; $420d: $63
	ld h, b                                          ; $420e: $60
	ld h, b                                          ; $420f: $60
	ld [hl], b                                       ; $4210: $70
	ld [hl], b                                       ; $4211: $70
	ld hl, $8589                                     ; $4212: $21 $89 $85
	pop bc                                           ; $4215: $c1
	rst SubAFromBC                                          ; $4216: $e7
	sbc $01                                          ; $4217: $de $01
	sbc d                                            ; $4219: $9a
	rra                                              ; $421a: $1f
	rlca                                             ; $421b: $07
	inc bc                                           ; $421c: $03
	ld bc, $7bc1                                     ; $421d: $01 $c1 $7b
	reti                                             ; $4220: $d9


	sbc [hl]                                         ; $4221: $9e
	ld [hl], c                                       ; $4222: $71
	ld [hl], h                                       ; $4223: $74
	scf                                              ; $4224: $37
	rst SubAFromDE                                          ; $4225: $df
	add a                                            ; $4226: $87
	sbc l                                            ; $4227: $9d
	jp Jump_05c_6a20                                 ; $4228: $c3 $20 $6a


	inc h                                            ; $422b: $24
	call c, Call_05c_7dff                            ; $422c: $dc $ff $7d
	add b                                            ; $422f: $80
	sbc [hl]                                         ; $4230: $9e
	rst AddAOntoHL                                          ; $4231: $ef
	db $fc                                           ; $4232: $fc
	sub b                                            ; $4233: $90
	ld bc, $1f07                                     ; $4234: $01 $07 $1f
	db $fd                                           ; $4237: $fd
	or [hl]                                          ; $4238: $b6
	ei                                               ; $4239: $fb
	db $ec                                           ; $423a: $ec
	or b                                             ; $423b: $b0
	pop bc                                           ; $423c: $c1
	rlca                                             ; $423d: $07
	db $fd                                           ; $423e: $fd
	ld e, $79                                        ; $423f: $1e $79
	rlca                                             ; $4241: $07
	rra                                              ; $4242: $1f
	ld a, c                                          ; $4243: $79
	ld e, c                                          ; $4244: $59
	sbc d                                            ; $4245: $9a
	cp $4e                                           ; $4246: $fe $4e
	sbc e                                            ; $4248: $9b
	dec l                                            ; $4249: $2d
	ld a, [hl]                                       ; $424a: $7e
	ld a, e                                          ; $424b: $7b
	ld sp, hl                                        ; $424c: $f9
	add a                                            ; $424d: $87
	db $fd                                           ; $424e: $fd
	ld sp, hl                                        ; $424f: $f9
	db $fc                                           ; $4250: $fc
	or $c3                                           ; $4251: $f6 $c3
	add b                                            ; $4253: $80
	nop                                              ; $4254: $00
	ld bc, $f803                                     ; $4255: $01 $03 $f8
	ld a, b                                          ; $4258: $78
	ldh a, [$f0]                                     ; $4259: $f0 $f0
	ldh [$c0], a                                     ; $425b: $e0 $c0
	add b                                            ; $425d: $80
	nop                                              ; $425e: $00
	ld [$1088], sp                                   ; $425f: $08 $88 $10
	db $10                                           ; $4262: $10
	jr nz, jr_05c_42a5                               ; $4263: $20 $40

	add b                                            ; $4265: $80
	db $eb                                           ; $4266: $eb
	sbc h                                            ; $4267: $9c
	jr c, jr_05c_42b6                                ; $4268: $38 $4c

	sub h                                            ; $426a: $94
	ld l, a                                          ; $426b: $6f
	ld hl, sp-$64                                    ; $426c: $f8 $9c
	ld h, h                                          ; $426e: $64
	adc h                                            ; $426f: $8c
	add c                                            ; $4270: $81
	ld [hl], l                                       ; $4271: $75
	bit 7, l                                         ; $4272: $cb $7d
	ld [hl], c                                       ; $4274: $71
	sbc [hl]                                         ; $4275: $9e
	inc c                                            ; $4276: $0c
	ld a, c                                          ; $4277: $79
	cp d                                             ; $4278: $ba
	ld a, l                                          ; $4279: $7d
	ld [hl], d                                       ; $427a: $72
	ld a, l                                          ; $427b: $7d
	ld [hl], c                                       ; $427c: $71
	sbc [hl]                                         ; $427d: $9e
	ld [$2374], sp                                   ; $427e: $08 $74 $23
	ld a, b                                          ; $4281: $78
	or d                                             ; $4282: $b2
	ld [hl], c                                       ; $4283: $71
	jr jr_05c_4286                                   ; $4284: $18 $00

jr_05c_4286:
	jr nc, jr_05c_4286                               ; $4286: $30 $fe

	sbc e                                            ; $4288: $9b
	ldh a, [c]                                       ; $4289: $f2
	db $f4                                           ; $428a: $f4
	ldh a, [$f8]                                     ; $428b: $f0 $f8
	db $dd                                           ; $428d: $dd
	ldh a, [$9c]                                     ; $428e: $f0 $9c
	inc d                                            ; $4290: $14
	jr @+$1a                                         ; $4291: $18 $18

	call c, $9710                                    ; $4293: $dc $10 $97
	dec l                                            ; $4296: $2d
	ld d, $3a                                        ; $4297: $16 $3a
	dec e                                            ; $4299: $1d
	ld a, [hl+]                                      ; $429a: $2a
	rla                                              ; $429b: $17
	dec e                                            ; $429c: $1d
	ld a, [bc]                                       ; $429d: $0a
	ld sp, hl                                        ; $429e: $f9
	add b                                            ; $429f: $80
	inc h                                            ; $42a0: $24
	ld [de], a                                       ; $42a1: $12
	ld de, $181a                                     ; $42a2: $11 $1a $18

jr_05c_42a5:
	inc d                                            ; $42a5: $14
	ld a, [de]                                       ; $42a6: $1a
	ld de, $1438                                     ; $42a7: $11 $38 $14
	ld d, $15                                        ; $42aa: $16 $15
	dec d                                            ; $42ac: $15
	ld e, $1b                                        ; $42ad: $1e $1b
	ld de, $bb7e                                     ; $42af: $11 $7e $bb
	ld d, l                                          ; $42b2: $55
	xor [hl]                                         ; $42b3: $ae
	rst SubAFromHL                                          ; $42b4: $d7
	ld l, l                                          ; $42b5: $6d

jr_05c_42b6:
	or e                                             ; $42b6: $b3
	rst GetHLinHL                                          ; $42b7: $cf
	pop bc                                           ; $42b8: $c1
	ld h, a                                          ; $42b9: $67
	dec sp                                           ; $42ba: $3b
	rra                                              ; $42bb: $1f
	adc a                                            ; $42bc: $8f
	jp $837c                                         ; $42bd: $c3 $7c $83


	cp a                                             ; $42c0: $bf
	ld e, c                                          ; $42c1: $59
	ei                                               ; $42c2: $fb
	ei                                               ; $42c3: $fb
	cp $ff                                           ; $42c4: $fe $ff
	rrca                                             ; $42c6: $0f
	rst AddAOntoHL                                          ; $42c7: $ef
	rst $38                                          ; $42c8: $ff
	and $ec                                          ; $42c9: $e6 $ec
	inc c                                            ; $42cb: $0c
	ret                                              ; $42cc: $c9


	ld hl, sp-$02                                    ; $42cd: $f8 $fe
	di                                               ; $42cf: $f3
	rst $38                                          ; $42d0: $ff
	xor $ea                                          ; $42d1: $ee $ea
	and $c0                                          ; $42d3: $e6 $c0
	and b                                            ; $42d5: $a0
	nop                                              ; $42d6: $00
	ret nc                                           ; $42d7: $d0

	rst $38                                          ; $42d8: $ff
	nop                                              ; $42d9: $00
	ld h, h                                          ; $42da: $64
	add $de                                          ; $42db: $c6 $de
	ret nz                                           ; $42dd: $c0

	sbc d                                            ; $42de: $9a
	ldh [$38], a                                     ; $42df: $e0 $38
	ld b, b                                          ; $42e1: $40
	nop                                              ; $42e2: $00
	ld d, b                                          ; $42e3: $50
	ld [hl], a                                       ; $42e4: $77
	add hl, bc                                       ; $42e5: $09
	sbc l                                            ; $42e6: $9d
	cp [hl]                                          ; $42e7: $be
	nop                                              ; $42e8: $00
	ld [hl], a                                       ; $42e9: $77
	inc [hl]                                         ; $42ea: $34
	sub h                                            ; $42eb: $94
	inc bc                                           ; $42ec: $03
	rrca                                             ; $42ed: $0f
	ld a, a                                          ; $42ee: $7f
	db $eb                                           ; $42ef: $eb
	rst $38                                          ; $42f0: $ff
	db $fc                                           ; $42f1: $fc
	ld h, b                                          ; $42f2: $60
	ldh a, [$7e]                                     ; $42f3: $f0 $7e
	ld a, b                                          ; $42f5: $78

jr_05c_42f6:
	ld [hl], e                                       ; $42f6: $73
	ld a, d                                          ; $42f7: $7a
	push bc                                          ; $42f8: $c5
	sub d                                            ; $42f9: $92
	ldh a, [$c0]                                     ; $42fa: $f0 $c0
	add c                                            ; $42fc: $81
	add a                                            ; $42fd: $87
	db $fc                                           ; $42fe: $fc
	db $e3                                           ; $42ff: $e3
	inc sp                                           ; $4300: $33
	inc [hl]                                         ; $4301: $34
	ldh [$0c], a                                     ; $4302: $e0 $0c
	ld e, $f6                                        ; $4304: $1e $f6
	ld h, a                                          ; $4306: $67
	db $fc                                           ; $4307: $fc
	ld a, b                                          ; $4308: $78
	ld a, [$c197]                                    ; $4309: $fa $97 $c1
	ldh [rSVBK], a                                   ; $430c: $e0 $70
	ld a, b                                          ; $430e: $78
	db $10                                           ; $430f: $10
	jr c, jr_05c_434a                                ; $4310: $38 $38

	xor h                                            ; $4312: $ac
	ld [hl], a                                       ; $4313: $77
	inc sp                                           ; $4314: $33
	sbc [hl]                                         ; $4315: $9e
	jr jr_05c_42f6                                   ; $4316: $18 $de

	ld [$df89], sp                                   ; $4318: $08 $89 $df
	ld l, b                                          ; $431b: $68
	ld h, b                                          ; $431c: $60
	ld e, d                                          ; $431d: $5a
	ld sp, $382c                                     ; $431e: $31 $2c $38
	ld [hl], $3f                                     ; $4321: $36 $3f
	scf                                              ; $4323: $37
	jr nc, jr_05c_4356                               ; $4324: $30 $30

	jr jr_05c_4340                                   ; $4326: $18 $18

	inc c                                            ; $4328: $0c
	inc c                                            ; $4329: $0c
	add sp, $40                                      ; $432a: $e8 $40
	jr nc, jr_05c_434a                               ; $432c: $30 $1c

	inc c                                            ; $432e: $0c
	ld [bc], a                                       ; $432f: $02
	ld a, c                                          ; $4330: $79
	ld [$e56a], sp                                   ; $4331: $08 $6a $e5
	sbc d                                            ; $4334: $9a
	ld sp, hl                                        ; $4335: $f9
	ld a, $17                                        ; $4336: $3e $17
	rra                                              ; $4338: $1f
	pop bc                                           ; $4339: $c1
	ld a, b                                          ; $433a: $78
	or $9e                                           ; $433b: $f6 $9e
	rlca                                             ; $433d: $07
	ld h, b                                          ; $433e: $60
	or c                                             ; $433f: $b1

jr_05c_4340:
	sbc b                                            ; $4340: $98
	ld b, b                                          ; $4341: $40
	ret nz                                           ; $4342: $c0

	ldh [$f0], a                                     ; $4343: $e0 $f0
	ld a, b                                          ; $4345: $78
	inc a                                            ; $4346: $3c
	nop                                              ; $4347: $00
	ld a, b                                          ; $4348: $78
	or d                                             ; $4349: $b2

jr_05c_434a:
	ld a, d                                          ; $434a: $7a
	pop af                                           ; $434b: $f1
	sbc [hl]                                         ; $434c: $9e
	inc b                                            ; $434d: $04
	ld a, c                                          ; $434e: $79
	ld hl, sp-$66                                    ; $434f: $f8 $9a
	jr nc, jr_05c_43bf                               ; $4351: $30 $6c

	jp z, $ed17                                      ; $4353: $ca $17 $ed

jr_05c_4356:
	ld [hl], a                                       ; $4356: $77
	ld hl, sp-$80                                    ; $4357: $f8 $80
	ld c, h                                          ; $4359: $4c
	sbc d                                            ; $435a: $9a
	cp a                                             ; $435b: $bf
	db $f4                                           ; $435c: $f4
	ld a, [hl+]                                      ; $435d: $2a
	sub a                                            ; $435e: $97
	db $f4                                           ; $435f: $f4
	ld a, [de]                                       ; $4360: $1a
	ld hl, $1030                                     ; $4361: $21 $30 $10
	sub [hl]                                         ; $4364: $96
	ld a, [de]                                       ; $4365: $1a
	ld [hl], a                                       ; $4366: $77
	and $19                                          ; $4367: $e6 $19
	inc [hl]                                         ; $4369: $34
	ld a, [hl+]                                      ; $436a: $2a
	dec d                                            ; $436b: $15
	sbc e                                            ; $436c: $9b
	ld b, $9f                                        ; $436d: $06 $9f
	ld [hl], a                                       ; $436f: $77
	xor l                                            ; $4370: $ad
	ld a, h                                          ; $4371: $7c
	cp h                                             ; $4372: $bc
	ld hl, sp-$10                                    ; $4373: $f8 $f0
	inc b                                            ; $4375: $04
	sbc [hl]                                         ; $4376: $9e
	ld sp, hl                                        ; $4377: $f9
	sbc l                                            ; $4378: $9d
	ld [hl], b                                       ; $4379: $70
	and b                                            ; $437a: $a0
	ld a, e                                          ; $437b: $7b
	ld e, h                                          ; $437c: $5c
	ld a, [hl]                                       ; $437d: $7e
	ld [de], a                                       ; $437e: $12
	ld a, [hl]                                       ; $437f: $7e
	xor [hl]                                         ; $4380: $ae
	sbc e                                            ; $4381: $9b
	ldh a, [$7f]                                     ; $4382: $f0 $7f
	dec e                                            ; $4384: $1d
	rlca                                             ; $4385: $07
	ld [hl], e                                       ; $4386: $73
	or [hl]                                          ; $4387: $b6
	sbc h                                            ; $4388: $9c
	jr nc, jr_05c_4399                               ; $4389: $30 $0e

	inc bc                                           ; $438b: $03
	ld [hl], b                                       ; $438c: $70
	ld sp, $ffdf                                     ; $438d: $31 $df $ff
	sbc [hl]                                         ; $4390: $9e
	cp a                                             ; $4391: $bf
	ld a, [$c09e]                                    ; $4392: $fa $9e $c0
	call c, $9cff                                    ; $4395: $dc $ff $9c
	db $fd                                           ; $4398: $fd

jr_05c_4399:
	ld a, [$fcec]                                    ; $4399: $fa $ec $fc
	ld a, [hl]                                       ; $439c: $7e
	dec d                                            ; $439d: $15
	add [hl]                                         ; $439e: $86
	rra                                              ; $439f: $1f
	ret nc                                           ; $43a0: $d0

	ret nc                                           ; $43a1: $d0

	and b                                            ; $43a2: $a0
	ld h, b                                          ; $43a3: $60
	ret nc                                           ; $43a4: $d0

	add sp, $74                                      ; $43a5: $e8 $74
	ld a, d                                          ; $43a7: $7a
	jr nc, jr_05c_43da                               ; $43a8: $30 $30

	ld h, b                                          ; $43aa: $60
	ldh [$f0], a                                     ; $43ab: $e0 $f0
	sbc b                                            ; $43ad: $98
	adc h                                            ; $43ae: $8c
	add [hl]                                         ; $43af: $86
	inc d                                            ; $43b0: $14
	inc l                                            ; $43b1: $2c
	jr c, jr_05c_4408                                ; $43b2: $38 $54

	add hl, sp                                       ; $43b4: $39
	ld d, [hl]                                       ; $43b5: $56
	cp d                                             ; $43b6: $ba
	ld a, l                                          ; $43b7: $7d
	ld h, a                                          ; $43b8: $67
	ld [hl], d                                       ; $43b9: $72
	ld [hl], c                                       ; $43ba: $71
	ld hl, sp+$7b                                    ; $43bb: $f8 $7b
	ld d, h                                          ; $43bd: $54
	ld l, l                                          ; $43be: $6d

jr_05c_43bf:
	ldh a, [rIE]                                     ; $43bf: $f0 $ff
	sbc l                                            ; $43c1: $9d
	cp $05                                           ; $43c2: $fe $05
	cp $9b                                           ; $43c4: $fe $9b
	ld b, c                                          ; $43c6: $41
	dec b                                            ; $43c7: $05
	xor e                                            ; $43c8: $ab
	ld a, h                                          ; $43c9: $7c
	ld a, [$ab97]                                    ; $43ca: $fa $97 $ab
	ld d, l                                          ; $43cd: $55
	ld l, $5b                                        ; $43ce: $2e $5b
	cp [hl]                                          ; $43d0: $be
	ld [$fa5c], a                                    ; $43d1: $ea $5c $fa
	ld sp, hl                                        ; $43d4: $f9
	adc e                                            ; $43d5: $8b
	rst FarCall                                          ; $43d6: $f7
	push hl                                          ; $43d7: $e5
	ld a, d                                          ; $43d8: $7a
	ld c, d                                          ; $43d9: $4a

jr_05c_43da:
	rlca                                             ; $43da: $07
	ld [bc], a                                       ; $43db: $02
	ld [bc], a                                       ; $43dc: $02
	inc b                                            ; $43dd: $04
	adc a                                            ; $43de: $8f
	and e                                            ; $43df: $a3
	ld [hl], c                                       ; $43e0: $71
	ld c, l                                          ; $43e1: $4d
	ld b, a                                          ; $43e2: $47
	inc bc                                           ; $43e3: $03
	ld [bc], a                                       ; $43e4: $02
	ld b, $ff                                        ; $43e5: $06 $ff
	db $fd                                           ; $43e7: $fd
	rst AddAOntoHL                                          ; $43e8: $ef
	rst $38                                          ; $43e9: $ff
	sbc $3f                                          ; $43ea: $de $3f
	sbc e                                            ; $43ec: $9b
	rla                                              ; $43ed: $17
	rst $38                                          ; $43ee: $ff
	cp $f0                                           ; $43ef: $fe $f0
	ld a, c                                          ; $43f1: $79
	ld [$e97d], a                                    ; $43f2: $ea $7d $e9
	sub a                                            ; $43f5: $97
	sbc a                                            ; $43f6: $9f
	ld sp, hl                                        ; $43f7: $f9
	di                                               ; $43f8: $f3
	or $dc                                           ; $43f9: $f6 $dc
	rst $38                                          ; $43fb: $ff
	db $fd                                           ; $43fc: $fd
	db $fd                                           ; $43fd: $fd
	ld a, d                                          ; $43fe: $7a
	push de                                          ; $43ff: $d5
	cp $7c                                           ; $4400: $fe $7c
	or [hl]                                          ; $4402: $b6
	sub a                                            ; $4403: $97
	rst JumpTable                                          ; $4404: $c7
	adc a                                            ; $4405: $8f
	ld a, $78                                        ; $4406: $3e $78

jr_05c_4408:
	pop af                                           ; $4408: $f1
	inc bc                                           ; $4409: $03
	db $e3                                           ; $440a: $e3
	or b                                             ; $440b: $b0
	ld h, a                                          ; $440c: $67
	ld h, b                                          ; $440d: $60
	sub [hl]                                         ; $440e: $96
	xor b                                            ; $440f: $a8
	ld e, h                                          ; $4410: $5c
	sbc h                                            ; $4411: $9c
	cp h                                             ; $4412: $bc
	db $ec                                           ; $4413: $ec
	call z, $9c9c                                    ; $4414: $cc $9c $9c
	inc c                                            ; $4417: $0c
	jp c, $9604                                      ; $4418: $da $04 $96

	inc a                                            ; $441b: $3c
	ld a, [hl-]                                      ; $441c: $3a
	rra                                              ; $441d: $1f
	dec e                                            ; $441e: $1d
	rra                                              ; $441f: $1f
	ld c, $0f                                        ; $4420: $0e $0f
	rrca                                             ; $4422: $0f
	ld b, $70                                        ; $4423: $06 $70
	adc d                                            ; $4425: $8a
	rst $38                                          ; $4426: $ff
	ld a, d                                          ; $4427: $7a
	call nz, $029d                                   ; $4428: $c4 $9d $02
	and b                                            ; $442b: $a0
	ld a, d                                          ; $442c: $7a
	db $e4                                           ; $442d: $e4
	sbc l                                            ; $442e: $9d
	nop                                              ; $442f: $00
	inc b                                            ; $4430: $04
	ld a, d                                          ; $4431: $7a
	cp e                                             ; $4432: $bb
	rst SubAFromDE                                          ; $4433: $df
	add b                                            ; $4434: $80
	sub [hl]                                         ; $4435: $96
	ret nz                                           ; $4436: $c0

	ld b, e                                          ; $4437: $43
	ret nz                                           ; $4438: $c0

	jr nz, jr_05c_443d                               ; $4439: $20 $02

	add d                                            ; $443b: $82
	ld b, b                                          ; $443c: $40

jr_05c_443d:
	ld [hl+], a                                      ; $443d: $22
	inc sp                                           ; $443e: $33
	ld l, d                                          ; $443f: $6a
	or c                                             ; $4440: $b1
	sub [hl]                                         ; $4441: $96
	add b                                            ; $4442: $80
	ld a, $fd                                        ; $4443: $3e $fd
	ld a, a                                          ; $4445: $7f
	ld a, [hl]                                       ; $4446: $7e
	ld [hl], a                                       ; $4447: $77
	rra                                              ; $4448: $1f
	rrca                                             ; $4449: $0f
	ccf                                              ; $444a: $3f
	ld l, a                                          ; $444b: $6f
	jp nc, $9aff                                     ; $444c: $d2 $ff $9a

	ld a, [de]                                       ; $444f: $1a
	dec d                                            ; $4450: $15
	ld a, [de]                                       ; $4451: $1a
	adc l                                            ; $4452: $8d
	adc [hl]                                         ; $4453: $8e
	sbc $88                                          ; $4454: $de $88
	sbc d                                            ; $4456: $9a
	add hl, de                                       ; $4457: $19
	ld a, [de]                                       ; $4458: $1a
	dec d                                            ; $4459: $15
	adc e                                            ; $445a: $8b
	adc a                                            ; $445b: $8f
	sbc $88                                          ; $445c: $de $88
	sub [hl]                                         ; $445e: $96
	db $eb                                           ; $445f: $eb
	ld l, a                                          ; $4460: $6f
	and a                                            ; $4461: $a7
	jr nz, jr_05c_4484                               ; $4462: $20 $20

	ld d, a                                          ; $4464: $57
	ld e, [hl]                                       ; $4465: $5e
	ld c, [hl]                                       ; $4466: $4e
	ld l, h                                          ; $4467: $6c
	db $dd                                           ; $4468: $dd
	ldh [hDisp1_OBP1], a                                     ; $4469: $e0 $94
	jr nc, jr_05c_449e                               ; $446b: $30 $31

	add hl, sp                                       ; $446d: $39
	ldh [c], a                                       ; $446e: $e2
	push bc                                          ; $446f: $c5
	ld a, [bc]                                       ; $4470: $0a
	dec a                                            ; $4471: $3d
	ldh a, [c]                                       ; $4472: $f2
	sub d                                            ; $4473: $92
	sub d                                            ; $4474: $92
	sub e                                            ; $4475: $93
	db $fd                                           ; $4476: $fd
	sbc c                                            ; $4477: $99
	dec c                                            ; $4478: $0d
	ld l, l                                          ; $4479: $6d
	ld l, l                                          ; $447a: $6d
	ld l, h                                          ; $447b: $6c
	ld b, $07                                        ; $447c: $06 $07
	ld a, b                                          ; $447e: $78
	ret nc                                           ; $447f: $d0

	ld a, a                                          ; $4480: $7f
	add $9e                                          ; $4481: $c6 $9e
	and b                                            ; $4483: $a0

jr_05c_4484:
	ld l, [hl]                                       ; $4484: $6e
	ld [hl], c                                       ; $4485: $71
	ld a, a                                          ; $4486: $7f
	xor d                                            ; $4487: $aa
	add e                                            ; $4488: $83
	ld a, a                                          ; $4489: $7f
	inc sp                                           ; $448a: $33
	sbc c                                            ; $448b: $99
	call z, $f3e6                                    ; $448c: $cc $e6 $f3
	ld sp, hl                                        ; $448f: $f9
	ld a, h                                          ; $4490: $7c
	rst $38                                          ; $4491: $ff
	di                                               ; $4492: $f3
	ld [hl], c                                       ; $4493: $71
	jr c, jr_05c_44b2                                ; $4494: $38 $1c

	ld c, $07                                        ; $4496: $0e $07
	inc bc                                           ; $4498: $03
	db $fc                                           ; $4499: $fc
	cp $8e                                           ; $449a: $fe $8e
	add a                                            ; $449c: $87
	ld h, e                                          ; $449d: $63

jr_05c_449e:
	ld sp, $8c18                                     ; $449e: $31 $18 $8c
	di                                               ; $44a1: $f3
	ld bc, $8001                                     ; $44a2: $01 $01 $80
	ld a, d                                          ; $44a5: $7a
	ld e, a                                          ; $44a6: $5f
	sub c                                            ; $44a7: $91
	adc b                                            ; $44a8: $88
	ld a, [hl]                                       ; $44a9: $7e
	ld a, [hl]                                       ; $44aa: $7e
	ld a, d                                          ; $44ab: $7a
	cp $fc                                           ; $44ac: $fe $fc
	db $fc                                           ; $44ae: $fc
	ld hl, sp+$70                                    ; $44af: $f8 $70
	add d                                            ; $44b1: $82

jr_05c_44b2:
	add d                                            ; $44b2: $82
	add [hl]                                         ; $44b3: $86
	inc b                                            ; $44b4: $04
	inc b                                            ; $44b5: $04
	ld a, b                                          ; $44b6: $78
	dec l                                            ; $44b7: $2d
	sub d                                            ; $44b8: $92
	dec sp                                           ; $44b9: $3b
	adc [hl]                                         ; $44ba: $8e
	ld h, l                                          ; $44bb: $65
	sub d                                            ; $44bc: $92
	jp hl                                            ; $44bd: $e9


	db $f4                                           ; $44be: $f4
	ld a, [$c0f5]                                    ; $44bf: $fa $f5 $c0
	ld [hl], b                                       ; $44c2: $70
	jr @+$0e                                         ; $44c3: $18 $0c

	ld b, $74                                        ; $44c5: $06 $74
	adc b                                            ; $44c7: $88
	sbc [hl]                                         ; $44c8: $9e
	add b                                            ; $44c9: $80
	ld a, e                                          ; $44ca: $7b
	db $fc                                           ; $44cb: $fc
	sbc h                                            ; $44cc: $9c
	add d                                            ; $44cd: $82
	ld b, c                                          ; $44ce: $41
	ld hl, $616b                                     ; $44cf: $21 $6b $61
	sub a                                            ; $44d2: $97
	ret nz                                           ; $44d3: $c0

	ld d, [hl]                                       ; $44d4: $56
	dec hl                                           ; $44d5: $2b
	ld d, a                                          ; $44d6: $57
	xor a                                            ; $44d7: $af
	ld e, e                                          ; $44d8: $5b
	cp a                                             ; $44d9: $bf
	ld d, a                                          ; $44da: $57
	ld h, c                                          ; $44db: $61
	ld b, b                                          ; $44dc: $40
	sub a                                            ; $44dd: $97
	or h                                             ; $44de: $b4
	ld a, [$daf4]                                    ; $44df: $fa $f4 $da
	db $f4                                           ; $44e2: $f4
	xor b                                            ; $44e3: $a8
	db $f4                                           ; $44e4: $f4
	ld e, b                                          ; $44e5: $58
	ld sp, hl                                        ; $44e6: $f9
	rst SubAFromDE                                          ; $44e7: $df
	inc b                                            ; $44e8: $04
	ld [hl], a                                       ; $44e9: $77
	ld b, $9d                                        ; $44ea: $06 $9d
	ld b, $12                                        ; $44ec: $06 $12
	db $db                                           ; $44ee: $db
	inc b                                            ; $44ef: $04
	rst SubAFromDE                                          ; $44f0: $df
	ld [bc], a                                       ; $44f1: $02
	sbc [hl]                                         ; $44f2: $9e
	add hl, bc                                       ; $44f3: $09
	ld a, e                                          ; $44f4: $7b
	add hl, de                                       ; $44f5: $19
	db $fd                                           ; $44f6: $fd
	sbc [hl]                                         ; $44f7: $9e
	ld b, $69                                        ; $44f8: $06 $69
	ldh [$7c], a                                     ; $44fa: $e0 $7c
	ldh [c], a                                       ; $44fc: $e2
	sbc h                                            ; $44fd: $9c
	sbc a                                            ; $44fe: $9f
	daa                                              ; $44ff: $27
	db $10                                           ; $4500: $10
	ld [hl], d                                       ; $4501: $72
	ld [hl+], a                                      ; $4502: $22
	sbc h                                            ; $4503: $9c
	ld h, b                                          ; $4504: $60
	jr jr_05c_4516                                   ; $4505: $18 $0f

	cp $9d                                           ; $4507: $fe $9d
	ld a, a                                          ; $4509: $7f
	cp $de                                           ; $450a: $fe $de
	rst $38                                          ; $450c: $ff
	sbc [hl]                                         ; $450d: $9e
	ldh a, [$7b]                                     ; $450e: $f0 $7b
	add sp, $6b                                      ; $4510: $e8 $6b
	ldh [$9a], a                                     ; $4512: $e0 $9a
	ld e, h                                          ; $4514: $5c
	db $fc                                           ; $4515: $fc

jr_05c_4516:
	or $f8                                           ; $4516: $f6 $f8
	db $fc                                           ; $4518: $fc
	ld a, c                                          ; $4519: $79
	or b                                             ; $451a: $b0
	sbc e                                            ; $451b: $9b
	add h                                            ; $451c: $84
	db $fc                                           ; $451d: $fc
	inc c                                            ; $451e: $0c
	ld b, $77                                        ; $451f: $06 $77
	push bc                                          ; $4521: $c5
	ld a, a                                          ; $4522: $7f
	ld [hl-], a                                      ; $4523: $32
	sbc $07                                          ; $4524: $de $07
	sbc $03                                          ; $4526: $de $03
	ld sp, hl                                        ; $4528: $f9
	adc e                                            ; $4529: $8b
	pop hl                                           ; $452a: $e1
	and b                                            ; $452b: $a0
	ldh a, [$e5]                                     ; $452c: $f0 $e5
	jp nc, $f8d1                                     ; $452e: $d2 $d1 $f8

	ldh a, [rLCDC]                                   ; $4531: $f0 $40
	ld h, b                                          ; $4533: $60
	ld h, $32                                        ; $4534: $26 $32
	ld sp, $1030                                     ; $4536: $31 $30 $10
	db $10                                           ; $4539: $10
	ld b, b                                          ; $453a: $40
	add b                                            ; $453b: $80
	and b                                            ; $453c: $a0
	ld b, b                                          ; $453d: $40
	ld l, l                                          ; $453e: $6d
	adc c                                            ; $453f: $89
	ei                                               ; $4540: $fb
	ld a, [hl]                                       ; $4541: $7e
	add $9c                                          ; $4542: $c6 $9c
	rra                                              ; $4544: $1f
	ld e, $00                                        ; $4545: $1e $00
	ld a, c                                          ; $4547: $79
	add l                                            ; $4548: $85
	rst $38                                          ; $4549: $ff
	sub a                                            ; $454a: $97
	ld bc, $001e                                     ; $454b: $01 $1e $00
	ld b, b                                          ; $454e: $40
	ld b, b                                          ; $454f: $40
	ld h, b                                          ; $4550: $60
	add h                                            ; $4551: $84
	add [hl]                                         ; $4552: $86
	ld [hl], a                                       ; $4553: $77
	dec sp                                           ; $4554: $3b
	ld a, e                                          ; $4555: $7b
	or b                                             ; $4556: $b0
	sbc l                                            ; $4557: $9d
	add l                                            ; $4558: $85
	ld [bc], a                                       ; $4559: $02
	ld [hl], e                                       ; $455a: $73
	ld hl, sp+$7f                                    ; $455b: $f8 $7f
	inc bc                                           ; $455d: $03
	sbc h                                            ; $455e: $9c
	dec d                                            ; $455f: $15
	adc d                                            ; $4560: $8a
	rst JumpTable                                          ; $4561: $c7
	ld a, d                                          ; $4562: $7a
	rst $38                                          ; $4563: $ff
	sbc e                                            ; $4564: $9b
	ld a, h                                          ; $4565: $7c
	sbc [hl]                                         ; $4566: $9e
	dec bc                                           ; $4567: $0b
	dec b                                            ; $4568: $05
	halt                                             ; $4569: $76

jr_05c_456a:
	rst $38                                          ; $456a: $ff
	add h                                            ; $456b: $84
	sub e                                            ; $456c: $93
	sbc a                                            ; $456d: $9f
	rst $38                                          ; $456e: $ff
	rst AddAOntoHL                                          ; $456f: $ef
	ld a, a                                          ; $4570: $7f

jr_05c_4571:
	xor l                                            ; $4571: $ad
	db $db                                           ; $4572: $db
	xor $6c                                          ; $4573: $ee $6c
	ld h, b                                          ; $4575: $60
	ld bc, $d89c                                     ; $4576: $01 $9c $d8
	ld a, [hl]                                       ; $4579: $7e
	scf                                              ; $457a: $37
	add hl, de                                       ; $457b: $19
	ret z                                            ; $457c: $c8

	ret nz                                           ; $457d: $c0

	inc h                                            ; $457e: $24
	ldh a, [$fa]                                     ; $457f: $f0 $fa
	db $dd                                           ; $4581: $dd
	cp e                                             ; $4582: $bb
	db $ed                                           ; $4583: $ed
	nop                                              ; $4584: $00
	ldh [$f0], a                                     ; $4585: $e0 $f0
	sbc $30                                          ; $4587: $de $30
	sub l                                            ; $4589: $95
	ret c                                            ; $458a: $d8

	rst SubAFromDE                                          ; $458b: $df
	ld a, $1f                                        ; $458c: $3e $1f
	rrca                                             ; $458e: $0f
	add a                                            ; $458f: $87
	inc bc                                           ; $4590: $03
	ld b, c                                          ; $4591: $41
	sub b                                            ; $4592: $90
	ret nz                                           ; $4593: $c0

	ld h, l                                          ; $4594: $65
	ld hl, $6692                                     ; $4595: $21 $92 $66
	ld sp, $cc98                                     ; $4598: $31 $98 $cc
	db $e4                                           ; $459b: $e4
	or $f6                                           ; $459c: $f6 $f6
	halt                                             ; $459e: $76
	add $e1                                          ; $459f: $c6 $e1
	ld [hl], b                                       ; $45a1: $70
	jr c, @+$1e                                      ; $45a2: $38 $1c

	sbc $0c                                          ; $45a4: $de $0c
	adc l                                            ; $45a6: $8d
	jr nz, jr_05c_456a                               ; $45a7: $20 $c1

	ld [bc], a                                       ; $45a9: $02
	dec b                                            ; $45aa: $05
	dec bc                                           ; $45ab: $0b
	rla                                              ; $45ac: $17
	cpl                                              ; $45ad: $2f
	ld e, a                                          ; $45ae: $5f
	jr nz, jr_05c_4571                               ; $45af: $20 $c0

	ld bc, $0402                                     ; $45b1: $01 $02 $04
	ld [$2010], sp                                   ; $45b4: $08 $10 $20
	db $fc                                           ; $45b7: $fc
	ld e, b                                          ; $45b8: $58
	ld a, d                                          ; $45b9: $7a
	ldh a, [$7f]                                     ; $45ba: $f0 $7f
	db $fc                                           ; $45bc: $fc
	sbc [hl]                                         ; $45bd: $9e
	ld [$95f9], a                                    ; $45be: $ea $f9 $95
	sub d                                            ; $45c1: $92
	ld c, c                                          ; $45c2: $49
	ld [de], a                                       ; $45c3: $12
	add hl, bc                                       ; $45c4: $09
	inc b                                            ; $45c5: $04
	ld a, [bc]                                       ; $45c6: $0a
	dec b                                            ; $45c7: $05
	ld d, $60                                        ; $45c8: $16 $60
	jr nc, jr_05c_463a                               ; $45ca: $30 $6e

	or c                                             ; $45cc: $b1
	ld a, l                                          ; $45cd: $7d
	ld [hl], $7f                                     ; $45ce: $36 $7f
	cp $9b                                           ; $45d0: $fe $9b
	cp $7f                                           ; $45d2: $fe $7f
	ccf                                              ; $45d4: $3f
	sbc a                                            ; $45d5: $9f
	ld l, d                                          ; $45d6: $6a
	or c                                             ; $45d7: $b1
	sub [hl]                                         ; $45d8: $96
	ld h, b                                          ; $45d9: $60
	add sp, -$10                                     ; $45da: $e8 $f0
	xor b                                            ; $45dc: $a8
	ldh [$d0], a                                     ; $45dd: $e0 $d0
	or b                                             ; $45df: $b0
	ldh [$d0], a                                     ; $45e0: $e0 $d0
	ld sp, hl                                        ; $45e2: $f9
	sub a                                            ; $45e3: $97
	dec bc                                           ; $45e4: $0b
	ld bc, $0502                                     ; $45e5: $01 $02 $05
	ld a, [hl+]                                      ; $45e8: $2a
	ld d, l                                          ; $45e9: $55
	ld a, [hl-]                                      ; $45ea: $3a
	ld l, a                                          ; $45eb: $6f
	ld l, [hl]                                       ; $45ec: $6e
	ld [bc], a                                       ; $45ed: $02
	ld l, a                                          ; $45ee: $6f
	ld h, $9b                                        ; $45ef: $26 $9b
	and b                                            ; $45f1: $a0
	ld e, b                                          ; $45f2: $58
	xor h                                            ; $45f3: $ac
	ld d, a                                          ; $45f4: $57
	ld [hl], a                                       ; $45f5: $77
	ld hl, sp-$64                                    ; $45f6: $f8 $9c
	jr nz, jr_05c_4612                               ; $45f8: $20 $18

	inc b                                            ; $45fa: $04
	ld a, d                                          ; $45fb: $7a
	ld hl, sp+$77                                    ; $45fc: $f8 $77
	db $fc                                           ; $45fe: $fc
	ld a, h                                          ; $45ff: $7c
	ld sp, hl                                        ; $4600: $f9
	rst FarCall                                          ; $4601: $f7
	ld a, b                                          ; $4602: $78
	adc a                                            ; $4603: $8f
	rst $38                                          ; $4604: $ff
	sbc [hl]                                         ; $4605: $9e
	rra                                              ; $4606: $1f
	ld a, [$e87b]                                    ; $4607: $fa $7b $e8
	ld [hl], d                                       ; $460a: $72
	push de                                          ; $460b: $d5
	ld l, a                                          ; $460c: $6f
	and b                                            ; $460d: $a0
	ld a, b                                          ; $460e: $78
	ld l, $7f                                        ; $460f: $2e $7f
	adc h                                            ; $4611: $8c

jr_05c_4612:
	sbc [hl]                                         ; $4612: $9e
	add c                                            ; $4613: $81
	ld a, c                                          ; $4614: $79
	and l                                            ; $4615: $a5
	sbc l                                            ; $4616: $9d
	inc bc                                           ; $4617: $03
	rst GetHLinHL                                          ; $4618: $cf
	ld a, [$3f9e]                                    ; $4619: $fa $9e $3f
	sbc $f0                                          ; $461c: $de $f0
	rst SubAFromDE                                          ; $461e: $df
	sub $9c                                          ; $461f: $d6 $9c
	or e                                             ; $4621: $b3
	ld [hl], e                                       ; $4622: $73
	rst AddAOntoHL                                          ; $4623: $ef
	sbc $10                                          ; $4624: $de $10
	sub d                                            ; $4626: $92
	jr nc, jr_05c_4649                               ; $4627: $30 $20

	ld h, b                                          ; $4629: $60
	ret nz                                           ; $462a: $c0

	nop                                              ; $462b: $00
	ld b, d                                          ; $462c: $42
	ld h, c                                          ; $462d: $61
	ld [hl], a                                       ; $462e: $77
	di                                               ; $462f: $f3
	db $dd                                           ; $4630: $dd
	rst AddAOntoHL                                          ; $4631: $ef
	ei                                               ; $4632: $fb
	ld sp, hl                                        ; $4633: $f9
	ld sp, hl                                        ; $4634: $f9
	ld a, h                                          ; $4635: $7c
	or e                                             ; $4636: $b3
	rst SubAFromDE                                          ; $4637: $df
	ldh a, [$9a]                                     ; $4638: $f0 $9a

jr_05c_463a:
	ret z                                            ; $463a: $c8

	or $fd                                           ; $463b: $f6 $fd
	cp $20                                           ; $463d: $fe $20
	ld a, d                                          ; $463f: $7a
	and h                                            ; $4640: $a4
	sbc l                                            ; $4641: $9d
	jr @+$10                                         ; $4642: $18 $0e

	ld a, c                                          ; $4644: $79
	ld a, e                                          ; $4645: $7b
	sbc l                                            ; $4646: $9d
	ld b, $09                                        ; $4647: $06 $09

jr_05c_4649:
	ld a, e                                          ; $4649: $7b
	ld [hl+], a                                      ; $464a: $22
	sbc c                                            ; $464b: $99
	rst SubAFromDE                                          ; $464c: $df
	cp a                                             ; $464d: $bf
	ld bc, $0e07                                     ; $464e: $01 $07 $0e
	jr jr_05c_46cb                                   ; $4651: $18 $78

	sbc l                                            ; $4653: $9d
	add l                                            ; $4654: $85
	ret nz                                           ; $4655: $c0

	db $fc                                           ; $4656: $fc
	adc $db                                          ; $4657: $ce $db
	db $fd                                           ; $4659: $fd
	cp h                                             ; $465a: $bc
	cp b                                             ; $465b: $b8
	or b                                             ; $465c: $b0
	ld [hl], c                                       ; $465d: $71
	ld hl, sp+$3c                                    ; $465e: $f8 $3c
	ld h, $03                                        ; $4660: $26 $03
	ld b, e                                          ; $4662: $43

jr_05c_4663:
	ld b, a                                          ; $4663: $47
	ld c, a                                          ; $4664: $4f
	adc a                                            ; $4665: $8f
	ld [hl], a                                       ; $4666: $77
	ld a, [hl-]                                      ; $4667: $3a
	dec e                                            ; $4668: $1d
	adc [hl]                                         ; $4669: $8e
	rst JumpTable                                          ; $466a: $c7
	ld b, d                                          ; $466b: $42
	cp a                                             ; $466c: $bf
	inc e                                            ; $466d: $1c
	inc c                                            ; $466e: $0c
	ld a, c                                          ; $466f: $79
	adc d                                            ; $4670: $8a
	sub c                                            ; $4671: $91
	add b                                            ; $4672: $80
	pop bc                                           ; $4673: $c1
	and e                                            ; $4674: $a3
	inc e                                            ; $4675: $1c
	sub $ff                                          ; $4676: $d6 $ff
	cp $fd                                           ; $4678: $fe $fd
	ld a, [hl]                                       ; $467a: $7e
	cp l                                             ; $467b: $bd
	ld e, $2f                                        ; $467c: $1e $2f
	ld l, a                                          ; $467e: $6f
	ret nz                                           ; $467f: $c0

	ld a, e                                          ; $4680: $7b
	ld [hl+], a                                      ; $4681: $22
	sub h                                            ; $4682: $94
	and b                                            ; $4683: $a0
	jr @+$19                                         ; $4684: $18 $17

	and h                                            ; $4686: $a4
	ld d, b                                          ; $4687: $50
	xor d                                            ; $4688: $aa
	ld d, l                                          ; $4689: $55
	xor d                                            ; $468a: $aa
	ld d, l                                          ; $468b: $55
	xor a                                            ; $468c: $af
	ld hl, sp+$6c                                    ; $468d: $f8 $6c
	ld d, b                                          ; $468f: $50
	add h                                            ; $4690: $84
	ld e, $f0                                        ; $4691: $1e $f0
	inc a                                            ; $4693: $3c
	dec c                                            ; $4694: $0d
	jr nc, jr_05c_470b                               ; $4695: $30 $74

	ld l, e                                          ; $4697: $6b
	rst SubAFromHL                                          ; $4698: $d7
	cpl                                              ; $4699: $2f
	ld e, a                                          ; $469a: $5f
	ld [$1f18], sp                                   ; $469b: $08 $18 $1f
	inc hl                                           ; $469e: $23
	call nz, $1088                                   ; $469f: $c4 $88 $10
	jr nz, jr_05c_4663                               ; $46a2: $20 $bf

	ld a, a                                          ; $46a4: $7f
	rst $38                                          ; $46a5: $ff
	rst $38                                          ; $46a6: $ff
	ld a, a                                          ; $46a7: $7f
	cp a                                             ; $46a8: $bf
	rst SubAFromDE                                          ; $46a9: $df
	rst AddAOntoHL                                          ; $46aa: $ef
	ld b, b                                          ; $46ab: $40
	ld a, e                                          ; $46ac: $7b
	ld e, d                                          ; $46ad: $5a
	halt                                             ; $46ae: $76
	ld [hl], b                                       ; $46af: $70
	sbc [hl]                                         ; $46b0: $9e
	ld d, b                                          ; $46b1: $50
	ld a, d                                          ; $46b2: $7a
	db $f4                                           ; $46b3: $f4
	sbc [hl]                                         ; $46b4: $9e
	ld [hl], h                                       ; $46b5: $74
	ld e, c                                          ; $46b6: $59
	or b                                             ; $46b7: $b0
	ld a, [hl]                                       ; $46b8: $7e
	and h                                            ; $46b9: $a4
	sbc c                                            ; $46ba: $99
	inc bc                                           ; $46bb: $03
	dec d                                            ; $46bc: $15
	dec bc                                           ; $46bd: $0b
	rlca                                             ; $46be: $07
	dec l                                            ; $46bf: $2d
	rla                                              ; $46c0: $17
	ld sp, hl                                        ; $46c1: $f9
	sub l                                            ; $46c2: $95
	ld c, a                                          ; $46c3: $4f
	and a                                            ; $46c4: $a7
	db $d3                                           ; $46c5: $d3
	add sp, -$0c                                     ; $46c6: $e8 $f4
	ld a, e                                          ; $46c8: $7b
	db $fc                                           ; $46c9: $fc
	rst $38                                          ; $46ca: $ff

jr_05c_46cb:
	jr nc, jr_05c_46e5                               ; $46cb: $30 $18

	ld a, e                                          ; $46cd: $7b
	adc [hl]                                         ; $46ce: $8e
	cp $9b                                           ; $46cf: $fe $9b
	db $eb                                           ; $46d1: $eb
	db $fd                                           ; $46d2: $fd
	rst AddAOntoHL                                          ; $46d3: $ef
	ei                                               ; $46d4: $fb
	ld a, d                                          ; $46d5: $7a
	or c                                             ; $46d6: $b1
	sbc [hl]                                         ; $46d7: $9e
	ld c, a                                          ; $46d8: $4f
	ld l, d                                          ; $46d9: $6a
	or c                                             ; $46da: $b1
	sub [hl]                                         ; $46db: $96
	jr nc, jr_05c_4738                               ; $46dc: $30 $5a

	rst $38                                          ; $46de: $ff
	xor l                                            ; $46df: $ad
	rst $38                                          ; $46e0: $ff
	db $eb                                           ; $46e1: $eb
	cp $ff                                           ; $46e2: $fe $ff
	ld a, l                                          ; $46e4: $7d

jr_05c_46e5:
	ld sp, hl                                        ; $46e5: $f9
	sub a                                            ; $46e6: $97
	ldh [$a8], a                                     ; $46e7: $e0 $a8
	ld d, h                                          ; $46e9: $54
	and b                                            ; $46ea: $a0
	ld d, h                                          ; $46eb: $54
	ret z                                            ; $46ec: $c8

	and b                                            ; $46ed: $a0
	ld d, b                                          ; $46ee: $50
	ld sp, hl                                        ; $46ef: $f9
	ld a, a                                          ; $46f0: $7f
	sub e                                            ; $46f1: $93
	sbc l                                            ; $46f2: $9d
	rra                                              ; $46f3: $1f
	rlca                                             ; $46f4: $07
	halt                                             ; $46f5: $76
	and l                                            ; $46f6: $a5
	ld a, c                                          ; $46f7: $79
	add c                                            ; $46f8: $81
	ld [hl], c                                       ; $46f9: $71
	ld l, l                                          ; $46fa: $6d
	sbc b                                            ; $46fb: $98
	rst $38                                          ; $46fc: $ff
	ret nz                                           ; $46fd: $c0

	nop                                              ; $46fe: $00
	ret nz                                           ; $46ff: $c0

	ret c                                            ; $4700: $d8

	ld a, e                                          ; $4701: $7b
	rrca                                             ; $4702: $0f
	ld [hl], d                                       ; $4703: $72
	sub d                                            ; $4704: $92
	sub e                                            ; $4705: $93
	ldh [$3c], a                                     ; $4706: $e0 $3c
	rlca                                             ; $4708: $07
	nop                                              ; $4709: $00
	ld a, a                                          ; $470a: $7f

jr_05c_470b:
	rra                                              ; $470b: $1f
	nop                                              ; $470c: $00
	jr @+$0a                                         ; $470d: $18 $08

	nop                                              ; $470f: $00
	ld b, b                                          ; $4710: $40
	add sp, $6e                                      ; $4711: $e8 $6e
	sbc a                                            ; $4713: $9f
	sbc d                                            ; $4714: $9a
	add b                                            ; $4715: $80
	ldh a, [$ef]                                     ; $4716: $f0 $ef
	rst $38                                          ; $4718: $ff
	ccf                                              ; $4719: $3f
	ld [hl], d                                       ; $471a: $72
	xor a                                            ; $471b: $af
	ld a, c                                          ; $471c: $79
	ld e, l                                          ; $471d: $5d

jr_05c_471e:
	ld l, a                                          ; $471e: $6f
	ret nz                                           ; $471f: $c0

	sbc b                                            ; $4720: $98
	ei                                               ; $4721: $fb
	rst AddAOntoHL                                          ; $4722: $ef
	rst SubAFromBC                                          ; $4723: $e7
	rst SubAFromBC                                          ; $4724: $e7
	ld a, l                                          ; $4725: $7d
	ld a, a                                          ; $4726: $7f
	ccf                                              ; $4727: $3f
	ld sp, hl                                        ; $4728: $f9
	sbc [hl]                                         ; $4729: $9e
	db $fd                                           ; $472a: $fd
	call c, Call_05c_7fff                            ; $472b: $dc $ff $7f
	ld a, $f9                                        ; $472e: $3e $f9
	sbc e                                            ; $4730: $9b
	cp a                                             ; $4731: $bf
	rst GetHLinHL                                          ; $4732: $cf
	xor $ff                                          ; $4733: $ee $ff
	ld a, d                                          ; $4735: $7a
	inc e                                            ; $4736: $1c
	sbc e                                            ; $4737: $9b

jr_05c_4738:
	cp $40                                           ; $4738: $fe $40
	jr nc, jr_05c_474d                               ; $473a: $30 $11

	sbc $01                                          ; $473c: $de $01
	add b                                            ; $473e: $80
	inc bc                                           ; $473f: $03
	ld c, $be                                        ; $4740: $0e $be
	cp h                                             ; $4742: $bc
	db $10                                           ; $4743: $10
	inc b                                            ; $4744: $04
	ld [$3159], sp                                   ; $4745: $08 $59 $31
	ld h, c                                          ; $4748: $61
	pop bc                                           ; $4749: $c1
	jp $f3ef                                         ; $474a: $c3 $ef $f3


jr_05c_474d:
	rst SubAFromBC                                          ; $474d: $e7
	add [hl]                                         ; $474e: $86
	ld c, $1f                                        ; $474f: $0e $1f
	ld h, d                                          ; $4751: $62
	db $e4                                           ; $4752: $e4
	ret z                                            ; $4753: $c8

	ret nc                                           ; $4754: $d0

	and b                                            ; $4755: $a0
	ret nz                                           ; $4756: $c0

	add b                                            ; $4757: $80
	nop                                              ; $4758: $00
	sbc [hl]                                         ; $4759: $9e
	inc e                                            ; $475a: $1c
	jr c, jr_05c_478d                                ; $475b: $38 $30

	ld h, b                                          ; $475d: $60
	ld [hl], a                                       ; $475e: $77
	dec bc                                           ; $475f: $0b
	ld a, l                                          ; $4760: $7d
	ld e, b                                          ; $4761: $58
	ld [hl], c                                       ; $4762: $71
	ret z                                            ; $4763: $c8

	ld h, a                                          ; $4764: $67
	rst FarCall                                          ; $4765: $f7
	ld [hl], e                                       ; $4766: $73
	db $ed                                           ; $4767: $ed
	cp $9e                                           ; $4768: $fe $9e
	jr nz, jr_05c_47d3                               ; $476a: $20 $67

	rst FarCall                                          ; $476c: $f7
	ld a, c                                          ; $476d: $79
	ldh a, [$75]                                     ; $476e: $f0 $75
	and b                                            ; $4770: $a0
	ld h, a                                          ; $4771: $67
	ret c                                            ; $4772: $d8

	halt                                             ; $4773: $76
	ret nc                                           ; $4774: $d0

	db $dd                                           ; $4775: $dd
	rst $38                                          ; $4776: $ff
	ld h, a                                          ; $4777: $67
	pop hl                                           ; $4778: $e1
	sub l                                            ; $4779: $95
	rst FarCall                                          ; $477a: $f7
	ei                                               ; $477b: $fb
	db $fd                                           ; $477c: $fd
	cp $fd                                           ; $477d: $fe $fd
	rst $38                                          ; $477f: $ff
	push af                                          ; $4780: $f5
	rst $38                                          ; $4781: $ff
	ld [$6d04], sp                                   ; $4782: $08 $04 $6d
	jr nz, jr_05c_471e                               ; $4785: $20 $97

	or h                                             ; $4787: $b4
	ld e, b                                          ; $4788: $58
	db $ec                                           ; $4789: $ec
	ret c                                            ; $478a: $d8

	inc d                                            ; $478b: $14
	and b                                            ; $478c: $a0

jr_05c_478d:
	ld b, b                                          ; $478d: $40
	and b                                            ; $478e: $a0
	ld sp, hl                                        ; $478f: $f9
	sub a                                            ; $4790: $97
	dec hl                                           ; $4791: $2b
	ld e, [hl]                                       ; $4792: $5e
	scf                                              ; $4793: $37
	ld e, l                                          ; $4794: $5d
	cpl                                              ; $4795: $2f
	scf                                              ; $4796: $37
	rra                                              ; $4797: $1f
	dec l                                            ; $4798: $2d
	ld h, e                                          ; $4799: $63
	nop                                              ; $479a: $00
	ld [hl], a                                       ; $479b: $77
	ld d, d                                          ; $479c: $52
	sbc $ff                                          ; $479d: $de $ff
	ld sp, hl                                        ; $479f: $f9
	sbc d                                            ; $47a0: $9a
	and a                                            ; $47a1: $a7
	pop de                                           ; $47a2: $d1
	add sp, -$0a                                     ; $47a3: $e8 $f6
	ld sp, hl                                        ; $47a5: $f9
	ld a, b                                          ; $47a6: $78
	ld a, h                                          ; $47a7: $7c
	ld a, [hl]                                       ; $47a8: $7e
	inc d                                            ; $47a9: $14
	ld [hl], d                                       ; $47aa: $72
	jp hl                                            ; $47ab: $e9


	sub [hl]                                         ; $47ac: $96
	nop                                              ; $47ad: $00
	rst SubAFromHL                                          ; $47ae: $d7
	db $fd                                           ; $47af: $fd
	sub $7d                                          ; $47b0: $d6 $7d
	ld [hl], $9d                                     ; $47b2: $36 $9d
	ld b, [hl]                                       ; $47b4: $46
	and e                                            ; $47b5: $a3
	ld l, [hl]                                       ; $47b6: $6e
	or c                                             ; $47b7: $b1
	ld a, l                                          ; $47b8: $7d
	dec e                                            ; $47b9: $1d
	ld a, [hl]                                       ; $47ba: $7e
	ld l, h                                          ; $47bb: $6c
	ld a, a                                          ; $47bc: $7f
	sub a                                            ; $47bd: $97
	ld a, e                                          ; $47be: $7b
	cp $68                                           ; $47bf: $fe $68
	and d                                            ; $47c1: $a2
	rst $38                                          ; $47c2: $ff
	sub a                                            ; $47c3: $97
	and h                                            ; $47c4: $a4
	ld d, d                                          ; $47c5: $52
	cpl                                              ; $47c6: $2f
	cp d                                             ; $47c7: $ba
	ld d, a                                          ; $47c8: $57
	ld a, $1b                                        ; $47c9: $3e $1b
	ld [hl], $f6                                     ; $47cb: $36 $f6
	ld a, a                                          ; $47cd: $7f
	pop hl                                           ; $47ce: $e1
	ld a, a                                          ; $47cf: $7f
	cpl                                              ; $47d0: $2f
	ld h, e                                          ; $47d1: $63
	sub b                                            ; $47d2: $90

jr_05c_47d3:
	sbc [hl]                                         ; $47d3: $9e
	dec a                                            ; $47d4: $3d
	ld [hl], c                                       ; $47d5: $71
	ld a, [de]                                       ; $47d6: $1a
	rst $38                                          ; $47d7: $ff
	sbc [hl]                                         ; $47d8: $9e
	ld e, $6f                                        ; $47d9: $1e $6f
	ld sp, hl                                        ; $47db: $f9
	ld a, [hl]                                       ; $47dc: $7e
	xor h                                            ; $47dd: $ac
	sbc b                                            ; $47de: $98
	ld hl, sp+$60                                    ; $47df: $f8 $60
	and b                                            ; $47e1: $a0
	ldh [rSVBK], a                                   ; $47e2: $e0 $70
	jr nc, jr_05c_481e                               ; $47e4: $30 $38

	ld [hl], a                                       ; $47e6: $77
	or c                                             ; $47e7: $b1
	ld a, [hl]                                       ; $47e8: $7e
	ld hl, $207e                                     ; $47e9: $21 $7e $20
	sbc l                                            ; $47ec: $9d
	inc b                                            ; $47ed: $04
	ld bc, $b37b                                     ; $47ee: $01 $7b $b3
	ld a, a                                          ; $47f1: $7f
	rst FarCall                                          ; $47f2: $f7
	sbc [hl]                                         ; $47f3: $9e
	ld h, b                                          ; $47f4: $60
	ld h, h                                          ; $47f5: $64
	cpl                                              ; $47f6: $2f
	ld a, [hl]                                       ; $47f7: $7e
	sub b                                            ; $47f8: $90
	sub l                                            ; $47f9: $95
	ld b, c                                          ; $47fa: $41
	rlca                                             ; $47fb: $07
	ld e, $3c                                        ; $47fc: $1e $3c
	ld a, b                                          ; $47fe: $78
	jp nz, $e080                                     ; $47ff: $c2 $80 $e0

	ccf                                              ; $4802: $3f
	ld e, $7b                                        ; $4803: $1e $7b
	ld hl, $618a                                     ; $4805: $21 $8a $61
	pop af                                           ; $4808: $f1
	rst SubAFromHL                                          ; $4809: $d7
	ld h, d                                          ; $480a: $62
	inc c                                            ; $480b: $0c
	jr jr_05c_486e                                   ; $480c: $18 $60

	add b                                            ; $480e: $80
	ccf                                              ; $480f: $3f
	inc a                                            ; $4810: $3c
	ldh [hLCDCIntHandlerIdx], a                                     ; $4811: $e0 $81
	inc bc                                           ; $4813: $03
	rlca                                             ; $4814: $07
	rra                                              ; $4815: $1f
	ld a, a                                          ; $4816: $7f
	pop bc                                           ; $4817: $c1
	jp nz, $0f04                                     ; $4818: $c2 $04 $0f

	db $10                                           ; $481b: $10
	halt                                             ; $481c: $76
	db $f4                                           ; $481d: $f4

jr_05c_481e:
	sbc d                                            ; $481e: $9a
	ld a, $fc                                        ; $481f: $3e $fc
	ld hl, sp-$09                                    ; $4821: $f8 $f7
	ldh [$7a], a                                     ; $4823: $e0 $7a
	ret z                                            ; $4825: $c8

	ld a, d                                          ; $4826: $7a
	ld hl, sp-$63                                    ; $4827: $f8 $9d
	ld a, d                                          ; $4829: $7a
	dec b                                            ; $482a: $05
	ld l, [hl]                                       ; $482b: $6e
	ret nc                                           ; $482c: $d0

	sbc h                                            ; $482d: $9c
	add c                                            ; $482e: $81
	ld a, d                                          ; $482f: $7a
	rlca                                             ; $4830: $07
	ld l, [hl]                                       ; $4831: $6e
	ret nc                                           ; $4832: $d0

	sbc h                                            ; $4833: $9c
	add b                                            ; $4834: $80
	ld a, b                                          ; $4835: $78
	rlca                                             ; $4836: $07
	ld l, [hl]                                       ; $4837: $6e
	ret nc                                           ; $4838: $d0

	ld [hl], a                                       ; $4839: $77
	rst FarCall                                          ; $483a: $f7
	ld l, [hl]                                       ; $483b: $6e
	ret nc                                           ; $483c: $d0

	sbc [hl]                                         ; $483d: $9e
	rst SubAFromDE                                          ; $483e: $df
	ld h, $d0                                        ; $483f: $26 $d0
	db $dd                                           ; $4841: $dd
	rst $38                                          ; $4842: $ff
	halt                                             ; $4843: $76
	ret nc                                           ; $4844: $d0

	ld sp, hl                                        ; $4845: $f9
	sbc e                                            ; $4846: $9b
	push de                                          ; $4847: $d5
	rst $38                                          ; $4848: $ff
	ld d, l                                          ; $4849: $55
	ld a, [$fe7b]                                    ; $484a: $fa $7b $fe
	sbc [hl]                                         ; $484d: $9e
	xor d                                            ; $484e: $aa
	ld sp, hl                                        ; $484f: $f9
	sbc l                                            ; $4850: $9d
	ret nz                                           ; $4851: $c0

	jr nz, jr_05c_48ce                               ; $4852: $20 $7a

	ld h, c                                          ; $4854: $61
	ld a, a                                          ; $4855: $7f
	ld c, [hl]                                       ; $4856: $4e
	sbc [hl]                                         ; $4857: $9e

jr_05c_4858:
	call nc, $97f9                                   ; $4858: $d4 $f9 $97
	sub a                                            ; $485b: $97
	ld l, a                                          ; $485c: $6f
	dec sp                                           ; $485d: $3b
	ld d, l                                          ; $485e: $55
	cpl                                              ; $485f: $2f
	ld e, e                                          ; $4860: $5b
	ld l, $9b                                        ; $4861: $2e $9b
	ld d, [hl]                                       ; $4863: $56
	ret nz                                           ; $4864: $c0

	db $dd                                           ; $4865: $dd
	rst $38                                          ; $4866: $ff
	ld c, a                                          ; $4867: $4f
	ldh a, [$7e]                                     ; $4868: $f0 $7e
	cp a                                             ; $486a: $bf
	ld sp, hl                                        ; $486b: $f9
	sub a                                            ; $486c: $97
	reti                                             ; $486d: $d9


jr_05c_486e:
	db $e4                                           ; $486e: $e4
	ld a, [$e8b5]                                    ; $486f: $fa $b5 $e8
	ret nc                                           ; $4872: $d0

	and b                                            ; $4873: $a0
	ret nc                                           ; $4874: $d0

	ld l, d                                          ; $4875: $6a
	ld sp, hl                                        ; $4876: $f9
	ld [hl], a                                       ; $4877: $77
	ld a, [bc]                                       ; $4878: $0a
	sbc d                                            ; $4879: $9a
	ld [hl+], a                                      ; $487a: $22
	sub l                                            ; $487b: $95
	ld c, e                                          ; $487c: $4b
	ld h, $13                                        ; $487d: $26 $13
	ld l, l                                          ; $487f: $6d
	ld h, d                                          ; $4880: $62
	ld a, l                                          ; $4881: $7d
	ld c, e                                          ; $4882: $4b
	sub a                                            ; $4883: $97
	ld e, a                                          ; $4884: $5f
	cp e                                             ; $4885: $bb
	ld l, [hl]                                       ; $4886: $6e
	rra                                              ; $4887: $1f
	ld a, e                                          ; $4888: $7b
	xor [hl]                                         ; $4889: $ae
	ei                                               ; $488a: $fb
	cp $f9                                           ; $488b: $fe $f9
	sbc c                                            ; $488d: $99
	ld d, h                                          ; $488e: $54
	xor d                                            ; $488f: $aa
	ret nc                                           ; $4890: $d0

	xor d                                            ; $4891: $aa
	ld d, l                                          ; $4892: $55
	xor b                                            ; $4893: $a8
	ld e, a                                          ; $4894: $5f
	add b                                            ; $4895: $80
	ld h, d                                          ; $4896: $62
	xor h                                            ; $4897: $ac
	ld a, [$188e]                                    ; $4898: $fa $8e $18
	inc e                                            ; $489b: $1c

Jump_05c_489c:
	inc c                                            ; $489c: $0c
	ld [$060e], sp                                   ; $489d: $08 $0e $06
	inc b                                            ; $48a0: $04
	rlca                                             ; $48a1: $07
	db $10                                           ; $48a2: $10
	ld [$0c08], sp                                   ; $48a3: $08 $08 $0c
	inc b                                            ; $48a6: $04
	inc b                                            ; $48a7: $04
	ld b, $02                                        ; $48a8: $06 $02
	nop                                              ; $48aa: $00
	ld a, c                                          ; $48ab: $79
	xor e                                            ; $48ac: $ab
	ld a, [hl]                                       ; $48ad: $7e
	rst SubAFromBC                                          ; $48ae: $e7
	sbc l                                            ; $48af: $9d
	rlca                                             ; $48b0: $07
	rrca                                             ; $48b1: $0f
	ld a, e                                          ; $48b2: $7b
	jr nz, jr_05c_4934                               ; $48b3: $20 $7f

	rra                                              ; $48b5: $1f
	ld a, a                                          ; $48b6: $7f
	ld e, $9e                                        ; $48b7: $1e $9e
	inc b                                            ; $48b9: $04
	reti                                             ; $48ba: $d9


	rst $38                                          ; $48bb: $ff
	ld l, e                                          ; $48bc: $6b
	jr nz, jr_05c_4858                               ; $48bd: $20 $99

	ld bc, $fcfe                                     ; $48bf: $01 $fe $fc
	ld hl, sp-$10                                    ; $48c2: $f8 $f0
	ldh a, [$7a]                                     ; $48c4: $f0 $7a
	rst SubAFromHL                                          ; $48c6: $d7
	ld [hl], e                                       ; $48c7: $73
	inc bc                                           ; $48c8: $03
	ld bc, $3da0                                     ; $48c9: $01 $a0 $3d
	and b                                            ; $48cc: $a0
	sbc h                                            ; $48cd: $9c

jr_05c_48ce:
	ccf                                              ; $48ce: $3f
	ld e, a                                          ; $48cf: $5f
	rst AddAOntoHL                                          ; $48d0: $ef
	ld [hl], l                                       ; $48d1: $75
	xor l                                            ; $48d2: $ad
	ld a, h                                          ; $48d3: $7c
	jp hl                                            ; $48d4: $e9


	sbc l                                            ; $48d5: $9d
	and b                                            ; $48d6: $a0
	db $10                                           ; $48d7: $10
	ld [hl], c                                       ; $48d8: $71
	xor l                                            ; $48d9: $ad
	ld l, d                                          ; $48da: $6a
	ret nc                                           ; $48db: $d0

	sbc [hl]                                         ; $48dc: $9e
	ld a, a                                          ; $48dd: $7f
	ld h, a                                          ; $48de: $67
	ld l, b                                          ; $48df: $68
	ld b, [hl]                                       ; $48e0: $46
	ret nc                                           ; $48e1: $d0

	ld a, b                                          ; $48e2: $78
	inc hl                                           ; $48e3: $23
	sbc d                                            ; $48e4: $9a
	xor d                                            ; $48e5: $aa
	ld d, b                                          ; $48e6: $50
	xor d                                            ; $48e7: $aa
	ld b, b                                          ; $48e8: $40
	xor b                                            ; $48e9: $a8
	ld sp, hl                                        ; $48ea: $f9
	ld d, d                                          ; $48eb: $52
	nop                                              ; $48ec: $00
	sbc b                                            ; $48ed: $98
	ld d, l                                          ; $48ee: $55
	ld [hl+], a                                      ; $48ef: $22
	dec h                                            ; $48f0: $25
	ld d, e                                          ; $48f1: $53
	inc sp                                           ; $48f2: $33
	inc sp                                           ; $48f3: $33
	ld d, [hl]                                       ; $48f4: $56
	sbc $66                                          ; $48f5: $de $66
	sbc b                                            ; $48f7: $98
	ld d, d                                          ; $48f8: $52
	ld [hl+], a                                      ; $48f9: $22
	ld h, $53                                        ; $48fa: $26 $53
	inc sp                                           ; $48fc: $33
	ld [hl], e                                       ; $48fd: $73
	ld d, l                                          ; $48fe: $55
	ld [hl], e                                       ; $48ff: $73
	or $9a                                           ; $4900: $f6 $9a
	ld h, [hl]                                       ; $4902: $66
	dec h                                            ; $4903: $25
	scf                                              ; $4904: $37
	ld [hl], a                                       ; $4905: $77
	ld h, l                                          ; $4906: $65
	ld [hl], a                                       ; $4907: $77
	or $99                                           ; $4908: $f6 $99
	ld h, $66                                        ; $490a: $26 $66
	ld h, l                                          ; $490c: $65
	ld h, [hl]                                       ; $490d: $66
	ld [hl], a                                       ; $490e: $77
	ld h, l                                          ; $490f: $65
	ld a, e                                          ; $4910: $7b
	pop hl                                           ; $4911: $e1
	ld a, e                                          ; $4912: $7b
	or $de                                           ; $4913: $f6 $de
	ld h, [hl]                                       ; $4915: $66
	sbc [hl]                                         ; $4916: $9e
	ld h, l                                          ; $4917: $65
	ld a, e                                          ; $4918: $7b
	pop hl                                           ; $4919: $e1
	rst SubAFromDE                                          ; $491a: $df
	ld d, l                                          ; $491b: $55
	ld [hl], a                                       ; $491c: $77
	push af                                          ; $491d: $f5
	ld a, a                                          ; $491e: $7f
	or $7f                                           ; $491f: $f6 $7f
	push af                                          ; $4921: $f5
	rst SubAFromDE                                          ; $4922: $df
	ld d, l                                          ; $4923: $55
	ld [hl], a                                       ; $4924: $77
	ret z                                            ; $4925: $c8

	ld a, e                                          ; $4926: $7b
	or $dd                                           ; $4927: $f6 $dd
	ld d, l                                          ; $4929: $55
	sbc $66                                          ; $492a: $de $66
	sbc l                                            ; $492c: $9d
	ld h, h                                          ; $492d: $64
	ld b, l                                          ; $492e: $45
	ld c, e                                          ; $492f: $4b
	or $7f                                           ; $4930: $f6 $7f
	push af                                          ; $4932: $f5
	sbc l                                            ; $4933: $9d

jr_05c_4934:
	ld h, h                                          ; $4934: $64
	ld b, h                                          ; $4935: $44
	jp c, $9d55                                      ; $4936: $da $55 $9d

	ld d, [hl]                                       ; $4939: $56
	ld b, h                                          ; $493a: $44
	ld [hl], a                                       ; $493b: $77
	db $ed                                           ; $493c: $ed
	ld e, l                                          ; $493d: $5d
	adc d                                            ; $493e: $8a
	reti                                             ; $493f: $d9


	ld bc, $fed9                                     ; $4940: $01 $d9 $fe
	dec sp                                           ; $4943: $3b
	ldh a, [$9a]                                     ; $4944: $f0 $9a
	inc bc                                           ; $4946: $03
	ld bc, $0115                                     ; $4947: $01 $15 $01
	add hl, bc                                       ; $494a: $09
	sbc $fe                                          ; $494b: $de $fe
	sbc b                                            ; $494d: $98
	db $fc                                           ; $494e: $fc
	cp $ea                                           ; $494f: $fe $ea
	cp $f6                                           ; $4951: $fe $f6
	inc h                                            ; $4953: $24
	adc d                                            ; $4954: $8a
	ld a, e                                          ; $4955: $7b
	cp $9c                                           ; $4956: $fe $9c
	ld a, [bc]                                       ; $4958: $0a
	inc b                                            ; $4959: $04
	ld c, d                                          ; $495a: $4a
	jp c, $9eff                                      ; $495b: $da $ff $9e

	cp a                                             ; $495e: $bf
	call c, $de04                                    ; $495f: $dc $04 $de
	rlca                                             ; $4962: $07
	db $db                                           ; $4963: $db
	ei                                               ; $4964: $fb
	sbc e                                            ; $4965: $9b
	ld hl, sp-$06                                    ; $4966: $f8 $fa
	ld [$7b09], sp                                   ; $4968: $08 $09 $7b
	cp $9a                                           ; $496b: $fe $9a
	adc c                                            ; $496d: $89
	adc b                                            ; $496e: $88
	ret                                              ; $496f: $c9


	rst FarCall                                          ; $4970: $f7
	or $73                                           ; $4971: $f6 $73
	cp $86                                           ; $4973: $fe $86
	halt                                             ; $4975: $76
	xor b                                            ; $4976: $a8
	ld e, b                                          ; $4977: $58
	xor c                                            ; $4978: $a9
	ld e, [hl]                                       ; $4979: $5e
	xor a                                            ; $497a: $af
	ld d, h                                          ; $497b: $54
	xor c                                            ; $497c: $a9
	ld [hl], a                                       ; $497d: $77
	ld d, a                                          ; $497e: $57
	and a                                            ; $497f: $a7
	ld d, a                                          ; $4980: $57
	and a                                            ; $4981: $a7
	ld e, h                                          ; $4982: $5c
	cp e                                             ; $4983: $bb
	halt                                             ; $4984: $76
	db $ec                                           ; $4985: $ec
	inc a                                            ; $4986: $3c
	ret nz                                           ; $4987: $c0

	ld hl, sp+$44                                    ; $4988: $f8 $44
	ld b, d                                          ; $498a: $42
	ld e, c                                          ; $498b: $59
	add c                                            ; $498c: $81
	xor b                                            ; $498d: $a8
	sbc $ff                                          ; $498e: $de $ff
	rst SubAFromDE                                          ; $4990: $df
	adc a                                            ; $4991: $8f
	sub h                                            ; $4992: $94
	add a                                            ; $4993: $87
	ld a, a                                          ; $4994: $7f
	rst JumpTable                                          ; $4995: $c7
	nop                                              ; $4996: $00
	nop                                              ; $4997: $00
	ld b, b                                          ; $4998: $40
	add e                                            ; $4999: $83
	adc a                                            ; $499a: $8f
	nop                                              ; $499b: $00
	inc bc                                           ; $499c: $03
	add hl, de                                       ; $499d: $19
	sbc $ff                                          ; $499e: $de $ff
	add b                                            ; $49a0: $80
	db $fc                                           ; $49a1: $fc
	ldh a, [rIE]                                     ; $49a2: $f0 $ff
	db $fc                                           ; $49a4: $fc
	and $07                                          ; $49a5: $e6 $07
	db $fd                                           ; $49a7: $fd
	ld a, $ce                                        ; $49a8: $3e $ce
	add e                                            ; $49aa: $83
	pop bc                                           ; $49ab: $c1
	inc b                                            ; $49ac: $04
	ld d, d                                          ; $49ad: $52
	cp $03                                           ; $49ae: $fe $03
	pop bc                                           ; $49b0: $c1
	jr nc, jr_05c_49bb                               ; $49b1: $30 $08

	inc b                                            ; $49b3: $04
	jp nz, $5525                                     ; $49b4: $c2 $25 $55

	xor d                                            ; $49b7: $aa
	ld d, l                                          ; $49b8: $55
	ld a, [hl+]                                      ; $49b9: $2a
	dec d                                            ; $49ba: $15

jr_05c_49bb:
	ld a, [de]                                       ; $49bb: $1a
	dec c                                            ; $49bc: $0d
	ld c, $aa                                        ; $49bd: $0e $aa
	push de                                          ; $49bf: $d5
	sub a                                            ; $49c0: $97
	ld [$7af5], a                                    ; $49c1: $ea $f5 $7a
	dec a                                            ; $49c4: $3d
	ld a, d                                          ; $49c5: $7a
	ld a, l                                          ; $49c6: $7d
	ld l, d                                          ; $49c7: $6a
	and l                                            ; $49c8: $a5
	ld l, a                                          ; $49c9: $6f
	cp $9d                                           ; $49ca: $fe $9d
	sub l                                            ; $49cc: $95
	ld e, d                                          ; $49cd: $5a
	ld l, a                                          ; $49ce: $6f
	cp $80                                           ; $49cf: $fe $80
	xor [hl]                                         ; $49d1: $ae
	ld d, l                                          ; $49d2: $55
	xor e                                            ; $49d3: $ab
	ld d, a                                          ; $49d4: $57
	cp b                                             ; $49d5: $b8
	ld h, b                                          ; $49d6: $60
	jp Jump_05c_5f9e                                 ; $49d7: $c3 $9e $5f


	xor e                                            ; $49da: $ab
	ld d, l                                          ; $49db: $55
	xor a                                            ; $49dc: $af
	ld e, a                                          ; $49dd: $5f
	cp a                                             ; $49de: $bf
	ld a, a                                          ; $49df: $7f
	rst $38                                          ; $49e0: $ff
	ld sp, $fbcc                                     ; $49e1: $31 $cc $fb
	rst $38                                          ; $49e4: $ff
	add a                                            ; $49e5: $87
	ld de, $168d                                     ; $49e6: $11 $8d $16
	ret nz                                           ; $49e9: $c0

	ldh a, [$fc]                                     ; $49ea: $f0 $fc
	rst $38                                          ; $49ec: $ff
	nop                                              ; $49ed: $00
	ldh [$f0], a                                     ; $49ee: $e0 $f0
	add b                                            ; $49f0: $80
	jp hl                                            ; $49f1: $e9


	ld l, $96                                        ; $49f2: $2e $96
	ld a, [bc]                                       ; $49f4: $0a
	ld [bc], a                                       ; $49f5: $02
	inc d                                            ; $49f6: $14
	ld a, a                                          ; $49f7: $7f
	ld d, $69                                        ; $49f8: $16 $69
	pop af                                           ; $49fa: $f1
	ld a, c                                          ; $49fb: $79
	dec a                                            ; $49fc: $3d
	db $dd                                           ; $49fd: $dd
	rst AddAOntoHL                                          ; $49fe: $ef
	rst $38                                          ; $49ff: $ff
	rst $38                                          ; $4a00: $ff
	or $e6                                           ; $4a01: $f6 $e6
	sbc c                                            ; $4a03: $99
	xor a                                            ; $4a04: $af
	ld d, b                                          ; $4a05: $50
	ld a, h                                          ; $4a06: $7c
	rlca                                             ; $4a07: $07
	jr c, jr_05c_4a1c                                ; $4a08: $38 $12

	rra                                              ; $4a0a: $1f
	ld a, a                                          ; $4a0b: $7f
	ld [hl], b                                       ; $4a0c: $70
	rst AddAOntoHL                                          ; $4a0d: $ef
	add b                                            ; $4a0e: $80
	ld hl, sp-$75                                    ; $4a0f: $f8 $8b
	rst JumpTable                                          ; $4a11: $c7
	pop hl                                           ; $4a12: $e1
	xor d                                            ; $4a13: $aa
	push af                                          ; $4a14: $f5
	ld a, [bc]                                       ; $4a15: $0a
	ccf                                              ; $4a16: $3f
	ld a, [de]                                       ; $4a17: $1a
	dec c                                            ; $4a18: $0d
	ld b, $05                                        ; $4a19: $06 $05
	ld d, l                                          ; $4a1b: $55

jr_05c_4a1c:
	ld a, [$fefd]                                    ; $4a1c: $fa $fd $fe
	dec [hl]                                         ; $4a1f: $35
	ld a, [de]                                       ; $4a20: $1a
	adc l                                            ; $4a21: $8d
	and $aa                                          ; $4a22: $e6 $aa
	sub l                                            ; $4a24: $95
	ld l, a                                          ; $4a25: $6f
	cp $9d                                           ; $4a26: $fe $9d
	ld d, l                                          ; $4a28: $55
	ld l, d                                          ; $4a29: $6a
	ld l, a                                          ; $4a2a: $6f
	cp $8b                                           ; $4a2b: $fe $8b
	ret nz                                           ; $4a2d: $c0

	ld d, c                                          ; $4a2e: $51
	call nz, $d241                                   ; $4a2f: $c4 $41 $d2
	ld b, l                                          ; $4a32: $45
	jp nz, $3f55                                     ; $4a33: $c2 $55 $3f

	xor [hl]                                         ; $4a36: $ae
	dec sp                                           ; $4a37: $3b
	cp [hl]                                          ; $4a38: $be
	dec l                                            ; $4a39: $2d
	cp d                                             ; $4a3a: $ba
	dec a                                            ; $4a3b: $3d
	xor d                                            ; $4a3c: $aa
	ldh [$e2], a                                     ; $4a3d: $e0 $e2
	add sp, $62                                      ; $4a3f: $e8 $62
	ld a, e                                          ; $4a41: $7b
	cp $96                                           ; $4a42: $fe $96
	ld h, l                                          ; $4a44: $65
	rst $38                                          ; $4a45: $ff
	dec a                                            ; $4a46: $3d
	ld [hl], a                                       ; $4a47: $77
	cp l                                             ; $4a48: $bd
	scf                                              ; $4a49: $37
	cp l                                             ; $4a4a: $bd
	scf                                              ; $4a4b: $37
	cp d                                             ; $4a4c: $ba
	db $db                                           ; $4a4d: $db
	ld bc, $ff9e                                     ; $4a4e: $01 $9e $ff
	ld l, d                                          ; $4a51: $6a
	ret nc                                           ; $4a52: $d0

	rst $38                                          ; $4a53: $ff
	ld b, a                                          ; $4a54: $47
	ldh a, [$80]                                     ; $4a55: $f0 $80
	inc hl                                           ; $4a57: $23
	sub l                                            ; $4a58: $95
	dec hl                                           ; $4a59: $2b
	dec d                                            ; $4a5a: $15
	ld c, e                                          ; $4a5b: $4b
	rla                                              ; $4a5c: $17
	rst $38                                          ; $4a5d: $ff
	ld d, l                                          ; $4a5e: $55
	call c, $d46a                                    ; $4a5f: $dc $6a $d4
	ld [$e8b4], a                                    ; $4a62: $ea $b4 $e8
	nop                                              ; $4a65: $00
	nop                                              ; $4a66: $00
	and h                                            ; $4a67: $a4
	ld c, d                                          ; $4a68: $4a
	and h                                            ; $4a69: $a4
	ld d, d                                          ; $4a6a: $52
	and h                                            ; $4a6b: $a4
	jp nc, $a8fd                                     ; $4a6c: $d2 $fd $a8

	ld e, a                                          ; $4a6f: $5f
	cp a                                             ; $4a70: $bf
	ld e, a                                          ; $4a71: $5f
	xor a                                            ; $4a72: $af
	ld e, a                                          ; $4a73: $5f
	cpl                                              ; $4a74: $2f
	ld [bc], a                                       ; $4a75: $02
	sbc [hl]                                         ; $4a76: $9e
	inc bc                                           ; $4a77: $03
	db $db                                           ; $4a78: $db
	inc b                                            ; $4a79: $04
	ld a, a                                          ; $4a7a: $7f
	ld d, l                                          ; $4a7b: $55
	db $db                                           ; $4a7c: $db
	ei                                               ; $4a7d: $fb
	add b                                            ; $4a7e: $80
	nop                                              ; $4a7f: $00
	rst $38                                          ; $4a80: $ff
	ret z                                            ; $4a81: $c8

	ld c, c                                          ; $4a82: $49
	ld [$49c9], sp                                   ; $4a83: $08 $c9 $49
	ld c, c                                          ; $4a86: $49
	rst $38                                          ; $4a87: $ff
	ld b, c                                          ; $4a88: $41
	rst FarCall                                          ; $4a89: $f7
	or $37                                           ; $4a8a: $f6 $37
	ld [hl], $f7                                     ; $4a8c: $36 $f7
	rst FarCall                                          ; $4a8e: $f7
	ld b, c                                          ; $4a8f: $41
	rst $38                                          ; $4a90: $ff
	res 2, [hl]                                      ; $4a91: $cb $96
	sub e                                            ; $4a93: $93
	and [hl]                                         ; $4a94: $a6
	daa                                              ; $4a95: $27
	dec l                                            ; $4a96: $2d
	ld c, l                                          ; $4a97: $4d
	ld c, c                                          ; $4a98: $49
	ld a, l                                          ; $4a99: $7d
	ei                                               ; $4a9a: $fb
	cp $fd                                           ; $4a9b: $fe $fd
	db $fd                                           ; $4a9d: $fd
	rst SubAFromDE                                          ; $4a9e: $df
	ei                                               ; $4a9f: $fb
	add b                                            ; $4aa0: $80
	rst $38                                          ; $4aa1: $ff
	sbc e                                            ; $4aa2: $9b
	cp l                                             ; $4aa3: $bd
	adc l                                            ; $4aa4: $8d
	ret nz                                           ; $4aa5: $c0

	adc b                                            ; $4aa6: $88
	pop de                                           ; $4aa7: $d1
	sub $56                                          ; $4aa8: $d6 $56
	inc b                                            ; $4aaa: $04
	ld [bc], a                                       ; $4aab: $02
	ld [hl+], a                                      ; $4aac: $22
	ld [hl+], a                                      ; $4aad: $22
	ld h, d                                          ; $4aae: $62
	ld l, d                                          ; $4aaf: $6a
	ld l, e                                          ; $4ab0: $6b
	db $eb                                           ; $4ab1: $eb
	ld a, [$3061]                                    ; $4ab2: $fa $61 $30
	ld b, c                                          ; $4ab5: $41
	sbc c                                            ; $4ab6: $99

jr_05c_4ab7:
	and [hl]                                         ; $4ab7: $a6
	adc d                                            ; $4ab8: $8a
	jr z, jr_05c_4abc                                ; $4ab9: $28 $01

	add b                                            ; $4abb: $80

jr_05c_4abc:
	add b                                            ; $4abc: $80
	sub b                                            ; $4abd: $90
	ld b, d                                          ; $4abe: $42
	ld c, c                                          ; $4abf: $49
	add b                                            ; $4ac0: $80
	ld h, l                                          ; $4ac1: $65
	rst FarCall                                          ; $4ac2: $f7
	sbc h                                            ; $4ac3: $9c
	ld c, h                                          ; $4ac4: $4c
	xor [hl]                                         ; $4ac5: $ae
	rst SubAFromDE                                          ; $4ac6: $df
	rst SubAFromHL                                          ; $4ac7: $d7
	bit 5, c                                         ; $4ac8: $cb $69
	add d                                            ; $4aca: $82
	inc de                                           ; $4acb: $13
	adc e                                            ; $4acc: $8b
	ld b, l                                          ; $4acd: $45
	ld [hl+], a                                      ; $4ace: $22
	add hl, hl                                       ; $4acf: $29
	inc [hl]                                         ; $4ad0: $34
	sub [hl]                                         ; $4ad1: $96
	rst $38                                          ; $4ad2: $ff
	push bc                                          ; $4ad3: $c5
	ld c, d                                          ; $4ad4: $4a
	dec hl                                           ; $4ad5: $2b
	daa                                              ; $4ad6: $27
	sub l                                            ; $4ad7: $95
	add a                                            ; $4ad8: $87
	and d                                            ; $4ad9: $a2
	sbc $3e                                          ; $4ada: $de $3e
	or a                                             ; $4adc: $b7
	sub $db                                          ; $4add: $d6 $db
	ld l, e                                          ; $4adf: $6b
	add h                                            ; $4ae0: $84
	ld sp, hl                                        ; $4ae1: $f9
	ld a, l                                          ; $4ae2: $7d
	dec a                                            ; $4ae3: $3d
	ld l, e                                          ; $4ae4: $6b
	and l                                            ; $4ae5: $a5
	ld l, e                                          ; $4ae6: $6b
	and a                                            ; $4ae7: $a7
	ld l, d                                          ; $4ae8: $6a
	nop                                              ; $4ae9: $00
	add b                                            ; $4aea: $80
	rst $38                                          ; $4aeb: $ff
	sub l                                            ; $4aec: $95
	ld e, e                                          ; $4aed: $5b
	sub a                                            ; $4aee: $97
	ld e, d                                          ; $4aef: $5a
	sub l                                            ; $4af0: $95
	nop                                              ; $4af1: $00
	rst $38                                          ; $4af2: $ff
	add c                                            ; $4af3: $81
	ld a, h                                          ; $4af4: $7c
	adc c                                            ; $4af5: $89
	ld [de], a                                       ; $4af6: $12
	dec h                                            ; $4af7: $25
	ld c, c                                          ; $4af8: $49
	sub d                                            ; $4af9: $92
	ld [hl+], a                                      ; $4afa: $22
	ld h, h                                          ; $4afb: $64
	sbc $ff                                          ; $4afc: $de $ff
	sbc [hl]                                         ; $4afe: $9e
	cp $dd                                           ; $4aff: $fe $dd
	rst $38                                          ; $4b01: $ff
	sub e                                            ; $4b02: $93
	xor h                                            ; $4b03: $ac
	ld d, c                                          ; $4b04: $51
	pop bc                                           ; $4b05: $c1
	add h                                            ; $4b06: $84
	ld a, [hl+]                                      ; $4b07: $2a
	ld d, c                                          ; $4b08: $51
	sub c                                            ; $4b09: $91

jr_05c_4b0a:
	and b                                            ; $4b0a: $a0
	db $d3                                           ; $4b0b: $d3
	xor a                                            ; $4b0c: $af
	ld a, [hl]                                       ; $4b0d: $7e
	cp $de                                           ; $4b0e: $fe $de
	db $fc                                           ; $4b10: $fc
	sub e                                            ; $4b11: $93
	db $fd                                           ; $4b12: $fd
	adc c                                            ; $4b13: $89
	add l                                            ; $4b14: $85
	add h                                            ; $4b15: $84
	inc d                                            ; $4b16: $14
	sub b                                            ; $4b17: $90
	sub b                                            ; $4b18: $90
	add b                                            ; $4b19: $80
	add b                                            ; $4b1a: $80
	or $72                                           ; $4b1b: $f6 $72
	ld [hl], e                                       ; $4b1d: $73
	call c, $82e3                                    ; $4b1e: $dc $e3 $82
	ret                                              ; $4b21: $c9


	ld h, h                                          ; $4b22: $64
	jr nc, jr_05c_4ab7                               ; $4b23: $30 $92

	adc b                                            ; $4b25: $88
	sub c                                            ; $4b26: $91
	ld de, $3049                                     ; $4b27: $11 $49 $30
	jr jr_05c_4b38                                   ; $4b2a: $18 $0c

	inc c                                            ; $4b2c: $0c
	ld b, $06                                        ; $4b2d: $06 $06
	add [hl]                                         ; $4b2f: $86
	sub [hl]                                         ; $4b30: $96
	ld b, $a1                                        ; $4b31: $06 $a1
	ld d, a                                          ; $4b33: $57
	xor d                                            ; $4b34: $aa
	ld c, e                                          ; $4b35: $4b
	ld [hl], l                                       ; $4b36: $75
	push af                                          ; $4b37: $f5

jr_05c_4b38:
	push af                                          ; $4b38: $f5
	di                                               ; $4b39: $f3
	ld a, e                                          ; $4b3a: $7b
	add hl, sp                                       ; $4b3b: $39
	dec e                                            ; $4b3c: $1d
	inc e                                            ; $4b3d: $1c
	sbc $0e                                          ; $4b3e: $de $0e
	ld a, d                                          ; $4b40: $7a
	call nz, $ff9d                                   ; $4b41: $c4 $9d $ff
	add b                                            ; $4b44: $80
	ld a, e                                          ; $4b45: $7b
	or h                                             ; $4b46: $b4
	ld a, d                                          ; $4b47: $7a
	call nz, $f97f                                   ; $4b48: $c4 $7f $f9
	sbc $80                                          ; $4b4b: $de $80
	sub d                                            ; $4b4d: $92
	jp nz, $ca45                                     ; $4b4e: $c2 $45 $ca

	rst $38                                          ; $4b51: $ff
	nop                                              ; $4b52: $00
	db $eb                                           ; $4b53: $eb
	ld d, h                                          ; $4b54: $54
	xor b                                            ; $4b55: $a8
	dec a                                            ; $4b56: $3d
	cp d                                             ; $4b57: $ba
	dec [hl]                                         ; $4b58: $35
	nop                                              ; $4b59: $00
	rst $38                                          ; $4b5a: $ff
	cp $95                                           ; $4b5b: $fe $95
	ld [$ff65], a                                    ; $4b5d: $ea $65 $ff
	jr nz, @+$01                                     ; $4b60: $20 $ff

	jr nz, @+$12                                     ; $4b62: $20 $10

	jr nc, jr_05c_4b9b                               ; $4b64: $30 $35

	cp d                                             ; $4b66: $ba
	ld a, e                                          ; $4b67: $7b
	ld sp, hl                                        ; $4b68: $f9
	rst SubAFromDE                                          ; $4b69: $df
	jr nc, jr_05c_4b0a                               ; $4b6a: $30 $9e

	db $10                                           ; $4b6c: $10
	reti                                             ; $4b6d: $d9


	ld bc, $47f9                                     ; $4b6e: $01 $f9 $47
	ldh a, [$7e]                                     ; $4b71: $f0 $7e
	jp nz, $817d                                     ; $4b73: $c2 $7d $81

	ld d, a                                          ; $4b76: $57
	ldh a, [$97]                                     ; $4b77: $f0 $97
	ld d, l                                          ; $4b79: $55
	xor c                                            ; $4b7a: $a9
	ld d, l                                          ; $4b7b: $55
	add hl, hl                                       ; $4b7c: $29
	dec b                                            ; $4b7d: $05
	add hl, bc                                       ; $4b7e: $09
	ld d, l                                          ; $4b7f: $55
	dec c                                            ; $4b80: $0d
	reti                                             ; $4b81: $d9


	ld [bc], a                                       ; $4b82: $02
	sub a                                            ; $4b83: $97
	rst $38                                          ; $4b84: $ff
	push af                                          ; $4b85: $f5
	xor d                                            ; $4b86: $aa
	push de                                          ; $4b87: $d5
	xor b                                            ; $4b88: $a8
	ld d, d                                          ; $4b89: $52
	xor b                                            ; $4b8a: $a8
	ld d, d                                          ; $4b8b: $52
	ld sp, hl                                        ; $4b8c: $f9
	sub a                                            ; $4b8d: $97
	rst $38                                          ; $4b8e: $ff
	ld l, c                                          ; $4b8f: $69
	ld h, c                                          ; $4b90: $61
	ld b, c                                          ; $4b91: $41
	ld hl, $2060                                     ; $4b92: $21 $60 $20
	db $10                                           ; $4b95: $10
	sbc $41                                          ; $4b96: $de $41
	sbc l                                            ; $4b98: $9d
	ld h, c                                          ; $4b99: $61
	ld h, b                                          ; $4b9a: $60

jr_05c_4b9b:
	ld a, e                                          ; $4b9b: $7b
	sbc a                                            ; $4b9c: $9f
	db $dd                                           ; $4b9d: $dd
	ld c, c                                          ; $4b9e: $49
	sbc h                                            ; $4b9f: $9c
	xor c                                            ; $4ba0: $a9
	and h                                            ; $4ba1: $a4
	ld d, h                                          ; $4ba2: $54
	ld l, c                                          ; $4ba3: $69
	ld d, b                                          ; $4ba4: $50
	rst SubAFromDE                                          ; $4ba5: $df
	ld a, a                                          ; $4ba6: $7f
	sub a                                            ; $4ba7: $97
	ld c, e                                          ; $4ba8: $4b
	ld c, c                                          ; $4ba9: $49
	add hl, hl                                       ; $4baa: $29
	dec h                                            ; $4bab: $25
	inc [hl]                                         ; $4bac: $34
	or d                                             ; $4bad: $b2
	cp e                                             ; $4bae: $bb
	rst SubAFromDE                                          ; $4baf: $df
	db $db                                           ; $4bb0: $db
	rst $38                                          ; $4bb1: $ff
	sub [hl]                                         ; $4bb2: $96
	rst AddAOntoHL                                          ; $4bb3: $ef
	or $22                                           ; $4bb4: $f6 $22
	ld [hl-], a                                      ; $4bb6: $32
	sbc c                                            ; $4bb7: $99
	call c, $f9ef                                    ; $4bb8: $dc $ef $f9
	ld [hl], a                                       ; $4bbb: $77
	db $dd                                           ; $4bbc: $dd
	rst $38                                          ; $4bbd: $ff
	sub d                                            ; $4bbe: $92
	ld [hl], a                                       ; $4bbf: $77
	cp e                                             ; $4bc0: $bb
	sbc a                                            ; $4bc1: $9f
	adc l                                            ; $4bc2: $8d
	jp $2449                                         ; $4bc3: $c3 $49 $24


	ld [de], a                                       ; $4bc6: $12
	call $fd62                                       ; $4bc7: $cd $62 $fd
	db $fc                                           ; $4bca: $fc
	ld a, [hl]                                       ; $4bcb: $7e
	db $db                                           ; $4bcc: $db
	rst $38                                          ; $4bcd: $ff
	sub l                                            ; $4bce: $95
	rst FarCall                                          ; $4bcf: $f7
	cp e                                             ; $4bd0: $bb
	inc bc                                           ; $4bd1: $03
	ret nz                                           ; $4bd2: $c0

	ccf                                              ; $4bd3: $3f
	ret z                                            ; $4bd4: $c8

	ld b, h                                          ; $4bd5: $44
	inc h                                            ; $4bd6: $24
	ldh a, [c]                                       ; $4bd7: $f2
	ldh a, [c]                                       ; $4bd8: $f2
	jp c, $86ff                                      ; $4bd9: $da $ff $86

	sbc a                                            ; $4bdc: $9f
	pop af                                           ; $4bdd: $f1
	pop hl                                           ; $4bde: $e1
	and c                                            ; $4bdf: $a1
	pop af                                           ; $4be0: $f1
	ret nc                                           ; $4be1: $d0

	sbc b                                            ; $4be2: $98
	sbc b                                            ; $4be3: $98
	ld [$c1f1], sp                                   ; $4be4: $08 $f1 $c1
	ld h, c                                          ; $4be7: $61
	jr nz, @+$32                                     ; $4be8: $20 $30

	db $10                                           ; $4bea: $10
	ld [$c508], sp                                   ; $4beb: $08 $08 $c5
	push bc                                          ; $4bee: $c5
	ld c, c                                          ; $4bef: $49
	ld c, c                                          ; $4bf0: $49
	ld c, d                                          ; $4bf1: $4a
	ld c, d                                          ; $4bf2: $4a
	ld l, d                                          ; $4bf3: $6a
	ld a, [hl+]                                      ; $4bf4: $2a
	ld a, e                                          ; $4bf5: $7b
	and l                                            ; $4bf6: $a5
	sbc $7f                                          ; $4bf7: $de $7f
	rst SubAFromDE                                          ; $4bf9: $df
	ccf                                              ; $4bfa: $3f
	rst SubAFromDE                                          ; $4bfb: $df
	inc h                                            ; $4bfc: $24
	db $db                                           ; $4bfd: $db
	ld b, [hl]                                       ; $4bfe: $46
	reti                                             ; $4bff: $d9


	ld sp, hl                                        ; $4c00: $f9
	sbc [hl]                                         ; $4c01: $9e
	adc b                                            ; $4c02: $88
	jp c, $d99c                                      ; $4c03: $da $9c $d9

	db $e3                                           ; $4c06: $e3
	sbc [hl]                                         ; $4c07: $9e
	ld c, b                                          ; $4c08: $48

jr_05c_4c09:
	sbc $6c                                          ; $4c09: $de $6c
	rst SubAFromDE                                          ; $4c0b: $df
	ld h, l                                          ; $4c0c: $65
	sbc h                                            ; $4c0d: $9c
	ld h, a                                          ; $4c0e: $67
	ld [hl], e                                       ; $4c0f: $73
	sub a                                            ; $4c10: $97
	sbc $93                                          ; $4c11: $de $93
	rst SubAFromDE                                          ; $4c13: $df
	sbc e                                            ; $4c14: $9b
	adc c                                            ; $4c15: $89
	sbc c                                            ; $4c16: $99
	adc l                                            ; $4c17: $8d
	di                                               ; $4c18: $f3
	ld a, [$79fa]                                    ; $4c19: $fa $fa $79
	ld a, c                                          ; $4c1c: $79
	ld a, l                                          ; $4c1d: $7d
	dec l                                            ; $4c1e: $2d
	dec l                                            ; $4c1f: $2d
	ld c, $07                                        ; $4c20: $0e $07
	rlca                                             ; $4c22: $07
	add a                                            ; $4c23: $87
	add a                                            ; $4c24: $87
	add e                                            ; $4c25: $83
	db $d3                                           ; $4c26: $d3
	db $d3                                           ; $4c27: $d3
	db $fd                                           ; $4c28: $fd
	ld [$e0d4], a                                    ; $4c29: $ea $d4 $e0

jr_05c_4c2c:
	db $dd                                           ; $4c2c: $dd
	ret nz                                           ; $4c2d: $c0

	ret c                                            ; $4c2e: $d8

	ld b, b                                          ; $4c2f: $40
	ldh a, [c]                                       ; $4c30: $f2
	sub a                                            ; $4c31: $97
	jr nc, jr_05c_4c45                               ; $4c32: $30 $11

	inc de                                           ; $4c34: $13
	rla                                              ; $4c35: $17
	rra                                              ; $4c36: $1f
	rra                                              ; $4c37: $1f
	ccf                                              ; $4c38: $3f
	ld [hl], a                                       ; $4c39: $77
	jp c, $9e10                                      ; $4c3a: $da $10 $9e

	jr jr_05c_4cb4                                   ; $4c3d: $18 $75

	sub h                                            ; $4c3f: $94
	ld d, d                                          ; $4c40: $52
	ret nz                                           ; $4c41: $c0

	ld l, a                                          ; $4c42: $6f
	pop af                                           ; $4c43: $f1
	inc hl                                           ; $4c44: $23

jr_05c_4c45:
	ldh a, [$97]                                     ; $4c45: $f0 $97
	db $fd                                           ; $4c47: $fd
	dec e                                            ; $4c48: $1d
	dec l                                            ; $4c49: $2d
	dec d                                            ; $4c4a: $15
	dec l                                            ; $4c4b: $2d
	ld e, l                                          ; $4c4c: $5d
	dec l                                            ; $4c4d: $2d
	ld d, l                                          ; $4c4e: $55
	reti                                             ; $4c4f: $d9


	ld [bc], a                                       ; $4c50: $02
	sub a                                            ; $4c51: $97
	adc b                                            ; $4c52: $88
	ld hl, $4804                                     ; $4c53: $21 $04 $48
	jr nz, jr_05c_4c61                               ; $4c56: $20 $09

	add b                                            ; $4c58: $80
	db $10                                           ; $4c59: $10
	ld h, e                                          ; $4c5a: $63
	and b                                            ; $4c5b: $a0
	ld a, a                                          ; $4c5c: $7f
	inc l                                            ; $4c5d: $2c
	add a                                            ; $4c5e: $87
	jr @+$0a                                         ; $4c5f: $18 $08

jr_05c_4c61:
	inc b                                            ; $4c61: $04
	dec c                                            ; $4c62: $0d
	inc c                                            ; $4c63: $0c
	db $10                                           ; $4c64: $10
	jr jr_05c_4c7f                                   ; $4c65: $18 $18

	ld [$0c0c], sp                                   ; $4c67: $08 $0c $0c
	inc b                                            ; $4c6a: $04
	inc b                                            ; $4c6b: $04
	ld h, $13                                        ; $4c6c: $26 $13
	rra                                              ; $4c6e: $1f
	dec c                                            ; $4c6f: $0d
	ld d, l                                          ; $4c70: $55
	dec l                                            ; $4c71: $2d
	ld e, l                                          ; $4c72: $5d
	cp l                                             ; $4c73: $bd
	ccf                                              ; $4c74: $3f
	rra                                              ; $4c75: $1f
	rrca                                             ; $4c76: $0f
	call c, Call_05c_7f07                            ; $4c77: $dc $07 $7f
	jr jr_05c_4c09                                   ; $4c7a: $18 $8d

	ei                                               ; $4c7c: $fb
	ld sp, hl                                        ; $4c7d: $f9
	ld e, a                                          ; $4c7e: $5f

jr_05c_4c7f:
	ld h, [hl]                                       ; $4c7f: $66
	ld e, e                                          ; $4c80: $5b
	ld e, a                                          ; $4c81: $5f
	or d                                             ; $4c82: $b2
	adc $df                                          ; $4c83: $ce $df
	ld sp, hl                                        ; $4c85: $f9
	rst FarCall                                          ; $4c86: $f7
	rst FarCall                                          ; $4c87: $f7
	di                                               ; $4c88: $f3
	ldh a, [$fb]                                     ; $4c89: $f0 $fb
	cp $fe                                           ; $4c8b: $fe $fe
	ld hl, sp-$23                                    ; $4c8d: $f8 $dd
	ldh [$9e], a                                     ; $4c8f: $e0 $9e
	ld h, a                                          ; $4c91: $67
	ld a, e                                          ; $4c92: $7b
	sbc [hl]                                         ; $4c93: $9e
	rst SubAFromDE                                          ; $4c94: $df
	add b                                            ; $4c95: $80
	sub e                                            ; $4c96: $93
	nop                                              ; $4c97: $00
	jr nz, jr_05c_4c2c                               ; $4c98: $20 $92

	ld sp, hl                                        ; $4c9a: $f9
	sub c                                            ; $4c9b: $91
	ld d, b                                          ; $4c9c: $50
	ldh a, [$60]                                     ; $4c9d: $f0 $60
	nop                                              ; $4c9f: $00
	nop                                              ; $4ca0: $00
	add hl, de                                       ; $4ca1: $19
	pop af                                           ; $4ca2: $f1
	ld [hl], a                                       ; $4ca3: $77
	ld a, [$92ff]                                    ; $4ca4: $fa $ff $92
	ld sp, hl                                        ; $4ca7: $f9
	sub l                                            ; $4ca8: $95
	call nc, $e2b2                                   ; $4ca9: $d4 $b2 $e2
	jp c, $d25a                                      ; $4cac: $da $5a $d2

	sbc a                                            ; $4caf: $9f
	rst SubAFromDE                                          ; $4cb0: $df
	sbc a                                            ; $4cb1: $9f
	rra                                              ; $4cb2: $1f
	ld a, a                                          ; $4cb3: $7f

jr_05c_4cb4:
	ld a, d                                          ; $4cb4: $7a
	ld a, a                                          ; $4cb5: $7f
	sub h                                            ; $4cb6: $94
	inc h                                            ; $4cb7: $24
	ld c, h                                          ; $4cb8: $4c
	inc e                                            ; $4cb9: $1c
	inc d                                            ; $4cba: $14
	sub h                                            ; $4cbb: $94
	or h                                             ; $4cbc: $b4
	xor b                                            ; $4cbd: $a8
	ld l, b                                          ; $4cbe: $68
	inc c                                            ; $4cbf: $0c
	inc [hl]                                         ; $4cc0: $34
	ld [hl], h                                       ; $4cc1: $74
	sbc $7c                                          ; $4cc2: $de $7c
	sub d                                            ; $4cc4: $92
	ld l, b                                          ; $4cc5: $68
	ret z                                            ; $4cc6: $c8

	ld a, [hl-]                                      ; $4cc7: $3a
	add hl, bc                                       ; $4cc8: $09
	dec c                                            ; $4cc9: $0d
	dec c                                            ; $4cca: $0d
	dec b                                            ; $4ccb: $05
	ld b, $02                                        ; $4ccc: $06 $02
	inc bc                                           ; $4cce: $03
	rra                                              ; $4ccf: $1f
	rra                                              ; $4cd0: $1f
	rrca                                             ; $4cd1: $0f
	ld [hl], a                                       ; $4cd2: $77
	sbc a                                            ; $4cd3: $9f
	sbc l                                            ; $4cd4: $9d
	inc bc                                           ; $4cd5: $03
	ld b, d                                          ; $4cd6: $42
	sbc $43                                          ; $4cd7: $de $43
	sbc d                                            ; $4cd9: $9a
	inc hl                                           ; $4cda: $23
	and e                                            ; $4cdb: $a3
	and c                                            ; $4cdc: $a1
	sub c                                            ; $4cdd: $91
	db $fd                                           ; $4cde: $fd
	call c, $dffc                                    ; $4cdf: $dc $fc $df
	cp $9e                                           ; $4ce2: $fe $9e
	sbc h                                            ; $4ce4: $9c
	sbc $8c                                          ; $4ce5: $de $8c
	sbc $4e                                          ; $4ce7: $de $4e
	sbc l                                            ; $4ce9: $9d
	ld c, d                                          ; $4cea: $4a
	db $e3                                           ; $4ceb: $e3
	db $db                                           ; $4cec: $db
	di                                               ; $4ced: $f3
	adc [hl]                                         ; $4cee: $8e
	rst FarCall                                          ; $4cef: $f7
	ld [hl], d                                       ; $4cf0: $72
	ld [hl], d                                       ; $4cf1: $72
	ld [hl], c                                       ; $4cf2: $71
	ld d, l                                          ; $4cf3: $55
	push de                                          ; $4cf4: $d5
	push de                                          ; $4cf5: $d5
	call nc, $8dd4                                   ; $4cf6: $d4 $d4 $8d
	adc l                                            ; $4cf9: $8d
	adc [hl]                                         ; $4cfa: $8e
	xor d                                            ; $4cfb: $aa
	ld a, [hl+]                                      ; $4cfc: $2a
	ld a, [hl+]                                      ; $4cfd: $2a
	dec hl                                           ; $4cfe: $2b
	dec hl                                           ; $4cff: $2b
	sbc $ad                                          ; $4d00: $de $ad
	sbc d                                            ; $4d02: $9a
	add a                                            ; $4d03: $87
	ld b, a                                          ; $4d04: $47
	ld b, [hl]                                       ; $4d05: $46
	add $a6                                          ; $4d06: $c6 $a6
	sbc $d3                                          ; $4d08: $de $d3
	sbc $f9                                          ; $4d0a: $de $f9
	rst SubAFromDE                                          ; $4d0c: $df
	ld a, c                                          ; $4d0d: $79
	sbc [hl]                                         ; $4d0e: $9e
	and b                                            ; $4d0f: $a0
	db $dd                                           ; $4d10: $dd
	ld h, b                                          ; $4d11: $60
	sbc $e0                                          ; $4d12: $de $e0
	sbc [hl]                                         ; $4d14: $9e
	ld h, b                                          ; $4d15: $60
	jp c, $7ea0                                      ; $4d16: $da $a0 $7e

	rst $38                                          ; $4d19: $ff
	sbc c                                            ; $4d1a: $99
	inc bc                                           ; $4d1b: $03
	rlca                                             ; $4d1c: $07
	rrca                                             ; $4d1d: $0f
	ld e, $2b                                        ; $4d1e: $1e $2b
	ld d, $f9                                        ; $4d20: $16 $f9
	sbc [hl]                                         ; $4d22: $9e
	rst AddAOntoHL                                          ; $4d23: $ef
	db $dd                                           ; $4d24: $dd
	rst $38                                          ; $4d25: $ff
	sbc e                                            ; $4d26: $9b
	ei                                               ; $4d27: $fb
	rst FarCall                                          ; $4d28: $f7
	rst $38                                          ; $4d29: $ff
	jr @-$21                                         ; $4d2a: $18 $dd

	ld [$1f7b], sp                                   ; $4d2c: $08 $7b $1f
	jp c, $7501                                      ; $4d2f: $da $01 $75

	ld h, l                                          ; $4d32: $65
	ld e, c                                          ; $4d33: $59
	add b                                            ; $4d34: $80
	ld a, [hl]                                       ; $4d35: $7e
	bit 2, e                                         ; $4d36: $cb $53
	ldh a, [$9c]                                     ; $4d38: $f0 $9c
	ld a, a                                          ; $4d3a: $7f
	add c                                            ; $4d3b: $81
	inc bc                                           ; $4d3c: $03
	ld sp, hl                                        ; $4d3d: $f9
	ld a, [hl]                                       ; $4d3e: $7e
	jp nz, $299a                                     ; $4d3f: $c2 $9a $29

	ld e, l                                          ; $4d42: $5d
	dec a                                            ; $4d43: $3d
	db $dd                                           ; $4d44: $dd
	add hl, hl                                       ; $4d45: $29
	ld h, d                                          ; $4d46: $62
	ret nz                                           ; $4d47: $c0

	ld a, a                                          ; $4d48: $7f
	ld c, $73                                        ; $4d49: $0e $73
	jp c, $94f8                                      ; $4d4b: $da $f8 $94

	dec b                                            ; $4d4e: $05
	inc b                                            ; $4d4f: $04
	inc de                                           ; $4d50: $13
	rrca                                             ; $4d51: $0f
	ld d, [hl]                                       ; $4d52: $56
	cpl                                              ; $4d53: $2f
	ld e, d                                          ; $4d54: $5a
	cp a                                             ; $4d55: $bf
	inc b                                            ; $4d56: $04
	ld b, $06                                        ; $4d57: $06 $06
	call c, $9702                                    ; $4d59: $dc $02 $97
	ld l, l                                          ; $4d5c: $6d
	push af                                          ; $4d5d: $f5
	xor l                                            ; $4d5e: $ad
	push de                                          ; $4d5f: $d5
	and l                                            ; $4d60: $a5
	ld b, d                                          ; $4d61: $42
	add [hl]                                         ; $4d62: $86
	dec bc                                           ; $4d63: $0b
	call c, $df07                                    ; $4d64: $dc $07 $df
	inc bc                                           ; $4d67: $03
	sub l                                            ; $4d68: $95
	ld bc, $4b4f                                     ; $4d69: $01 $4f $4b
	ld c, a                                          ; $4d6c: $4f
	ld c, e                                          ; $4d6d: $4b
	add hl, hl                                       ; $4d6e: $29
	and h                                            ; $4d6f: $a4
	sub $df                                          ; $4d70: $d6 $df
	ld hl, sp+$7b                                    ; $4d72: $f8 $7b
	inc hl                                           ; $4d74: $23
	db $dd                                           ; $4d75: $dd
	rst $38                                          ; $4d76: $ff
	add a                                            ; $4d77: $87
	ldh [$fe], a                                     ; $4d78: $e0 $fe
	cp $f4                                           ; $4d7a: $fe $f4
	rst $38                                          ; $4d7c: $ff
	cp $3f                                           ; $4d7d: $fe $3f

Call_05c_4d7f:
	ld a, a                                          ; $4d7f: $7f
	jr nc, jr_05c_4d90                               ; $4d80: $30 $0e

	ld e, $0e                                        ; $4d82: $1e $0e
	nop                                              ; $4d84: $00
	ret nz                                           ; $4d85: $c0

	ld hl, sp-$01                                    ; $4d86: $f8 $ff
	ld [bc], a                                       ; $4d88: $02
	ld b, $0e                                        ; $4d89: $06 $0e
	inc d                                            ; $4d8b: $14
	inc a                                            ; $4d8c: $3c
	ld a, h                                          ; $4d8d: $7c
	db $ec                                           ; $4d8e: $ec
	db $fc                                           ; $4d8f: $fc

jr_05c_4d90:
	cp $92                                           ; $4d90: $fe $92
	ld [$3010], sp                                   ; $4d92: $08 $10 $30
	ldh a, [$e0]                                     ; $4d95: $f0 $e0
	or d                                             ; $4d97: $b2
	ld [hl], h                                       ; $4d98: $74
	ld h, l                                          ; $4d99: $65
	dec [hl]                                         ; $4d9a: $35
	dec a                                            ; $4d9b: $3d
	ld a, [bc]                                       ; $4d9c: $0a
	ld a, [de]                                       ; $4d9d: $1a
	ld c, $79                                        ; $4d9e: $0e $79
	and l                                            ; $4da0: $a5
	rst SubAFromDE                                          ; $4da1: $df
	rra                                              ; $4da2: $1f
	ld a, a                                          ; $4da3: $7f
	db $dd                                           ; $4da4: $dd
	sbc l                                            ; $4da5: $9d
	ld b, $e8                                        ; $4da6: $06 $e8
	sbc $e0                                          ; $4da8: $de $e0
	sbc c                                            ; $4daa: $99
	db $e4                                           ; $4dab: $e4
	ld h, b                                          ; $4dac: $60
	ld h, l                                          ; $4dad: $65
	ld [hl], d                                       ; $4dae: $72
	adc b                                            ; $4daf: $88
	add b                                            ; $4db0: $80
	ei                                               ; $4db1: $fb
	sub a                                            ; $4db2: $97
	sub e                                            ; $4db3: $93
	ld bc, $2a55                                     ; $4db4: $01 $55 $2a
	sub l                                            ; $4db7: $95
	ld a, [hl+]                                      ; $4db8: $2a
	ld a, l                                          ; $4db9: $7d
	xor $66                                          ; $4dba: $ee $66
	ld e, $de                                        ; $4dbc: $1e $de
	sub c                                            ; $4dbe: $91
	call c, $d9c9                                    ; $4dbf: $dc $c9 $d9
	cp $8e                                           ; $4dc2: $fe $8e
	jp z, $dcce                                      ; $4dc4: $ca $ce $dc

	call c, $d5d5                                    ; $4dc7: $dc $d5 $d5
	ld e, l                                          ; $4dca: $5d
	ld a, c                                          ; $4dcb: $79
	ld [hl], a                                       ; $4dcc: $77
	ld [hl], a                                       ; $4dcd: $77
	ld h, a                                          ; $4dce: $67
	ld h, a                                          ; $4dcf: $67
	ld l, [hl]                                       ; $4dd0: $6e
	ld l, [hl]                                       ; $4dd1: $6e
	xor $ce                                          ; $4dd2: $ee $ce
	jp nc, $d6de                                     ; $4dd4: $d2 $de $d6

	rst SubAFromDE                                          ; $4dd7: $df
	ld d, l                                          ; $4dd8: $55
	sbc l                                            ; $4dd9: $9d
	dec d                                            ; $4dda: $15
	dec b                                            ; $4ddb: $05
	db $dd                                           ; $4ddc: $dd
	dec l                                            ; $4ddd: $2d
	rst SubAFromDE                                          ; $4dde: $df
	ld l, $df                                        ; $4ddf: $2e $df
	ld l, [hl]                                       ; $4de1: $6e
	add [hl]                                         ; $4de2: $86
	and [hl]                                         ; $4de3: $a6
	ldh [c], a                                       ; $4de4: $e2
	ld d, e                                          ; $4de5: $53
	ld d, e                                          ; $4de6: $53
	ld [hl], e                                       ; $4de7: $73
	jr z, jr_05c_4e22                                ; $4de8: $28 $38

	sub l                                            ; $4dea: $95
	ld a, c                                          ; $4deb: $79
	dec a                                            ; $4dec: $3d
	cp h                                             ; $4ded: $bc
	cp h                                             ; $4dee: $bc
	sbc h                                            ; $4def: $9c
	sbc $ce                                          ; $4df0: $de $ce
	xor $d0                                          ; $4df2: $ee $d0
	or b                                             ; $4df4: $b0
	or b                                             ; $4df5: $b0
	sub b                                            ; $4df6: $90
	ld c, b                                          ; $4df7: $48
	ld a, b                                          ; $4df8: $78
	ld c, b                                          ; $4df9: $48
	ld [$deb0], sp                                   ; $4dfa: $08 $b0 $de
	ret nc                                           ; $4dfd: $d0

	sub e                                            ; $4dfe: $93
	ret c                                            ; $4dff: $d8

	ret z                                            ; $4e00: $c8

	ld l, b                                          ; $4e01: $68
	ld l, b                                          ; $4e02: $68
	xor l                                            ; $4e03: $ad
	rlca                                             ; $4e04: $07
	add hl, bc                                       ; $4e05: $09
	ld [bc], a                                       ; $4e06: $02
	dec h                                            ; $4e07: $25
	nop                                              ; $4e08: $00
	adc c                                            ; $4e09: $89
	inc b                                            ; $4e0a: $04
	ld sp, hl                                        ; $4e0b: $f9
	sub a                                            ; $4e0c: $97
	cp l                                             ; $4e0d: $bd
	ei                                               ; $4e0e: $fb
	ld l, a                                          ; $4e0f: $6f
	cp [hl]                                          ; $4e10: $be
	ld e, l                                          ; $4e11: $5d
	xor a                                            ; $4e12: $af
	ld d, a                                          ; $4e13: $57
	inc l                                            ; $4e14: $2c
	ld a, e                                          ; $4e15: $7b
	ld hl, $327b                                     ; $4e16: $21 $7b $32
	rst SubAFromHL                                          ; $4e19: $d7
	ld bc, $4024                                     ; $4e1a: $01 $24 $40
	sub a                                            ; $4e1d: $97
	dec h                                            ; $4e1e: $25
	inc bc                                           ; $4e1f: $03
	adc c                                            ; $4e20: $89
	inc hl                                           ; $4e21: $23

jr_05c_4e22:
	ld d, l                                          ; $4e22: $55
	xor e                                            ; $4e23: $ab
	ld d, l                                          ; $4e24: $55
	xor a                                            ; $4e25: $af
	ld sp, hl                                        ; $4e26: $f9
	sub a                                            ; $4e27: $97
	xor l                                            ; $4e28: $ad
	ld d, l                                          ; $4e29: $55
	cp l                                             ; $4e2a: $bd
	ld e, l                                          ; $4e2b: $5d
	cp l                                             ; $4e2c: $bd
	db $fd                                           ; $4e2d: $fd
	cp d                                             ; $4e2e: $ba
	ldh [$db], a                                     ; $4e2f: $e0 $db
	ld [bc], a                                       ; $4e31: $02
	sbc b                                            ; $4e32: $98
	dec b                                            ; $4e33: $05
	nop                                              ; $4e34: $00
	dec b                                            ; $4e35: $05
	ld [bc], a                                       ; $4e36: $02
	dec d                                            ; $4e37: $15
	dec bc                                           ; $4e38: $0b
	ld d, [hl]                                       ; $4e39: $56
	ld h, d                                          ; $4e3a: $62
	add d                                            ; $4e3b: $82
	ld a, a                                          ; $4e3c: $7f
	rst FarCall                                          ; $4e3d: $f7
	sbc d                                            ; $4e3e: $9a
	ld l, d                                          ; $4e3f: $6a
	push af                                          ; $4e40: $f5
	xor e                                            ; $4e41: $ab
	db $d3                                           ; $4e42: $d3
	and e                                            ; $4e43: $a3
	ld a, c                                          ; $4e44: $79
	ld c, h                                          ; $4e45: $4c
	ld l, a                                          ; $4e46: $6f
	and e                                            ; $4e47: $a3
	ld a, a                                          ; $4e48: $7f
	rst FarCall                                          ; $4e49: $f7
	sbc d                                            ; $4e4a: $9a
	dec d                                            ; $4e4b: $15
	dec hl                                           ; $4e4c: $2b
	ld d, l                                          ; $4e4d: $55
	xor e                                            ; $4e4e: $ab
	ld d, a                                          ; $4e4f: $57
	ld a, e                                          ; $4e50: $7b
	ldh [$6f], a                                     ; $4e51: $e0 $6f
	xor a                                            ; $4e53: $af
	ld a, a                                          ; $4e54: $7f
	rst FarCall                                          ; $4e55: $f7
	db $dd                                           ; $4e56: $dd
	rst $38                                          ; $4e57: $ff
	sbc b                                            ; $4e58: $98
	db $fc                                           ; $4e59: $fc
	ld hl, sp+$01                                    ; $4e5a: $f8 $01
	ld de, $93b6                                     ; $4e5c: $11 $b6 $93
	ld c, b                                          ; $4e5f: $48
	cp $7f                                           ; $4e60: $fe $7f
	rst FarCall                                          ; $4e62: $f7
	sbc l                                            ; $4e63: $9d
	rst SubAFromDE                                          ; $4e64: $df
	cp [hl]                                          ; $4e65: $be
	ld [hl], h                                       ; $4e66: $74
	sbc $9b                                          ; $4e67: $de $9b
	ld e, b                                          ; $4e69: $58
	adc l                                            ; $4e6a: $8d
	rst $38                                          ; $4e6b: $ff
	rst SubAFromBC                                          ; $4e6c: $e7
	ld l, [hl]                                       ; $4e6d: $6e
	rst AddAOntoHL                                          ; $4e6e: $ef
	sub l                                            ; $4e6f: $95
	rst SubAFromDE                                          ; $4e70: $df
	rlca                                             ; $4e71: $07
	rra                                              ; $4e72: $1f
	nop                                              ; $4e73: $00
	nop                                              ; $4e74: $00
	ldh [rSCX], a                                    ; $4e75: $e0 $43
	ld b, [hl]                                       ; $4e77: $46
	ldh [$f8], a                                     ; $4e78: $e0 $f8
	ei                                               ; $4e7a: $fb
	sbc l                                            ; $4e7b: $9d
	rlca                                             ; $4e7c: $07
	db $e3                                           ; $4e7d: $e3
	ld [hl], a                                       ; $4e7e: $77
	add sp, -$21                                     ; $4e7f: $e8 $df
	add b                                            ; $4e81: $80
	ld h, [hl]                                       ; $4e82: $66
	ccf                                              ; $4e83: $3f
	adc e                                            ; $4e84: $8b
	ld h, l                                          ; $4e85: $65
	ld [$6a67], a                                    ; $4e86: $ea $67 $6a
	jr nz, @+$41                                     ; $4e89: $20 $3f

	jr nc, jr_05c_4e9d                               ; $4e8b: $30 $10

	nop                                              ; $4e8d: $00
	add b                                            ; $4e8e: $80
	ld b, b                                          ; $4e8f: $40
	jr nz, jr_05c_4eb2                               ; $4e90: $20 $20

	db $10                                           ; $4e92: $10
	rra                                              ; $4e93: $1f
	db $10                                           ; $4e94: $10
	ld d, l                                          ; $4e95: $55
	ld a, [$aa55]                                    ; $4e96: $fa $55 $aa
	ld a, e                                          ; $4e99: $7b
	xor c                                            ; $4e9a: $a9
	ld h, e                                          ; $4e9b: $63
	add b                                            ; $4e9c: $80

jr_05c_4e9d:
	rst SubAFromDE                                          ; $4e9d: $df
	ret                                              ; $4e9e: $c9


	sbc c                                            ; $4e9f: $99
	pop de                                           ; $4ea0: $d1
	ret nc                                           ; $4ea1: $d0

	sub d                                            ; $4ea2: $92
	sub d                                            ; $4ea3: $92
	and c                                            ; $4ea4: $a1
	and h                                            ; $4ea5: $a4
	db $dd                                           ; $4ea6: $dd
	cp $de                                           ; $4ea7: $fe $de
	db $fc                                           ; $4ea9: $fc
	add b                                            ; $4eaa: $80
	ld hl, sp+$69                                    ; $4eab: $f8 $69
	ld a, b                                          ; $4ead: $78
	cp d                                             ; $4eae: $ba
	or d                                             ; $4eaf: $b2
	ldh a, [c]                                       ; $4eb0: $f2
	ld [de], a                                       ; $4eb1: $12

jr_05c_4eb2:
	sub h                                            ; $4eb2: $94
	inc h                                            ; $4eb3: $24

jr_05c_4eb4:
	sbc $de                                          ; $4eb4: $de $de
	call c, $9cdc                                    ; $4eb6: $dc $dc $9c
	cp h                                             ; $4eb9: $bc
	jr c, jr_05c_4ef4                                ; $4eba: $38 $38

	dec h                                            ; $4ebc: $25
	dec d                                            ; $4ebd: $15
	ld c, [hl]                                       ; $4ebe: $4e
	rrca                                             ; $4ebf: $0f
	cp c                                             ; $4ec0: $b9
	or c                                             ; $4ec1: $b1
	jr nc, jr_05c_4eb4                               ; $4ec2: $30 $f0

	ld c, [hl]                                       ; $4ec4: $4e
	ld c, [hl]                                       ; $4ec5: $4e
	rra                                              ; $4ec6: $1f
	dec de                                           ; $4ec7: $1b
	ld de, $8010                                     ; $4ec8: $11 $10 $80
	sub b                                            ; $4ecb: $90
	and b                                            ; $4ecc: $a0
	sbc h                                            ; $4ecd: $9c
	ld c, d                                          ; $4ece: $4a
	adc $a5                                          ; $4ecf: $ce $a5
	ld [hl], d                                       ; $4ed1: $72
	ei                                               ; $4ed2: $fb
	cp l                                             ; $4ed3: $bd
	cp $e7                                           ; $4ed4: $fe $e7
	rst FarCall                                          ; $4ed6: $f7
	ld [hl], e                                       ; $4ed7: $73
	ld a, e                                          ; $4ed8: $7b
	cp l                                             ; $4ed9: $bd
	cp h                                             ; $4eda: $bc
	sbc $5f                                          ; $4edb: $de $5f
	ld b, h                                          ; $4edd: $44
	xor h                                            ; $4ede: $ac
	inc b                                            ; $4edf: $04
	ld e, h                                          ; $4ee0: $5c
	inc d                                            ; $4ee1: $14
	add a                                            ; $4ee2: $87
	db $db                                           ; $4ee3: $db
	xor d                                            ; $4ee4: $aa
	inc l                                            ; $4ee5: $2c
	inc b                                            ; $4ee6: $04
	add h                                            ; $4ee7: $84
	add h                                            ; $4ee8: $84
	call z, $ec96                                    ; $4ee9: $cc $96 $ec
	ld h, [hl]                                       ; $4eec: $66
	halt                                             ; $4eed: $76
	ld hl, $0902                                     ; $4eee: $21 $02 $09
	jr nz, jr_05c_4ef8                               ; $4ef1: $20 $05

	ret nz                                           ; $4ef3: $c0

jr_05c_4ef4:
	ld h, e                                          ; $4ef4: $63
	sbc a                                            ; $4ef5: $9f
	sbc b                                            ; $4ef6: $98
	nop                                              ; $4ef7: $00

jr_05c_4ef8:
	ld d, a                                          ; $4ef8: $57
	dec hl                                           ; $4ef9: $2b
	ld d, l                                          ; $4efa: $55
	dec hl                                           ; $4efb: $2b
	rla                                              ; $4efc: $17
	xor l                                            ; $4efd: $ad
	ld e, a                                          ; $4efe: $5f
	ldh a, [$df]                                     ; $4eff: $f0 $df
	ld bc, $3f9d                                     ; $4f01: $01 $9d $3f
	pop bc                                           ; $4f04: $c1
	ld c, h                                          ; $4f05: $4c
	ld d, b                                          ; $4f06: $50
	sbc c                                            ; $4f07: $99
	dec d                                            ; $4f08: $15
	ld b, e                                          ; $4f09: $43
	rla                                              ; $4f0a: $17
	ld c, e                                          ; $4f0b: $4b
	rla                                              ; $4f0c: $17
	rrca                                             ; $4f0d: $0f
	ld sp, hl                                        ; $4f0e: $f9
	ld a, a                                          ; $4f0f: $7f
	add hl, sp                                       ; $4f10: $39
	sbc [hl]                                         ; $4f11: $9e
	rst $38                                          ; $4f12: $ff
	ld a, d                                          ; $4f13: $7a

jr_05c_4f14:
	pop bc                                           ; $4f14: $c1
	sbc l                                            ; $4f15: $9d
	xor e                                            ; $4f16: $ab
	dec d                                            ; $4f17: $15
	rst FarCall                                          ; $4f18: $f7
	ld a, a                                          ; $4f19: $7f
	ldh a, [$9b]                                     ; $4f1a: $f0 $9b
	xor d                                            ; $4f1c: $aa
	ld d, l                                          ; $4f1d: $55
	xor d                                            ; $4f1e: $aa
	ld d, h                                          ; $4f1f: $54
	ld e, e                                          ; $4f20: $5b
	ldh a, [$df]                                     ; $4f21: $f0 $df
	add b                                            ; $4f23: $80
	sbc h                                            ; $4f24: $9c
	adc a                                            ; $4f25: $8f
	add a                                            ; $4f26: $87
	xor [hl]                                         ; $4f27: $ae
	cp $df                                           ; $4f28: $fe $df
	ld h, b                                          ; $4f2a: $60
	sub h                                            ; $4f2b: $94
	ccf                                              ; $4f2c: $3f
	ld b, c                                          ; $4f2d: $41
	rra                                              ; $4f2e: $1f
	inc bc                                           ; $4f2f: $03
	ld bc, $07fe                                     ; $4f30: $01 $fe $07
	ld a, [bc]                                       ; $4f33: $0a
	push hl                                          ; $4f34: $e5
	ld e, $e5                                        ; $4f35: $1e $e5
	ld a, d                                          ; $4f37: $7a
	cp a                                             ; $4f38: $bf
	ld a, l                                          ; $4f39: $7d
	or l                                             ; $4f3a: $b5
	sbc l                                            ; $4f3b: $9d
	cp $e4                                           ; $4f3c: $fe $e4
	ld a, d                                          ; $4f3e: $7a
	ld c, b                                          ; $4f3f: $48
	ld a, e                                          ; $4f40: $7b
	ret nz                                           ; $4f41: $c0

	sbc h                                            ; $4f42: $9c
	ld d, [hl]                                       ; $4f43: $56
	xor d                                            ; $4f44: $aa
	ld b, d                                          ; $4f45: $42
	ld a, [$727f]                                    ; $4f46: $fa $7f $72
	sbc b                                            ; $4f49: $98
	ld b, $fc                                        ; $4f4a: $06 $fc
	ld sp, hl                                        ; $4f4c: $f9
	ldh a, [c]                                       ; $4f4d: $f2
	ld h, b                                          ; $4f4e: $60
	nop                                              ; $4f4f: $00
	inc h                                            ; $4f50: $24
	ld [hl], l                                       ; $4f51: $75
	and c                                            ; $4f52: $a1
	sub h                                            ; $4f53: $94
	ld hl, $0643                                     ; $4f54: $21 $43 $06
	jr @+$03                                         ; $4f57: $18 $01

	ld b, $c9                                        ; $4f59: $06 $c9
	ld a, b                                          ; $4f5b: $78
	ld l, l                                          ; $4f5c: $6d
	ld a, l                                          ; $4f5d: $7d
	ccf                                              ; $4f5e: $3f
	db $fd                                           ; $4f5f: $fd
	ld a, b                                          ; $4f60: $78
	ld b, c                                          ; $4f61: $41
	rst $38                                          ; $4f62: $ff
	sub a                                            ; $4f63: $97
	jp z, $f170                                      ; $4f64: $ca $70 $f1

	add d                                            ; $4f67: $82
	ld b, $c2                                        ; $4f68: $06 $c2
	jp nz, $f962                                     ; $4f6a: $c2 $62 $f9

	rst SubAFromDE                                          ; $4f6d: $df
	ld b, b                                          ; $4f6e: $40
	ld l, c                                          ; $4f6f: $69
	sub a                                            ; $4f70: $97
	ld a, [$10dd]                                    ; $4f71: $fa $dd $10
	rst SubAFromDE                                          ; $4f74: $df
	jr nc, jr_05c_4f14                               ; $4f75: $30 $9d

	inc de                                           ; $4f77: $13
	daa                                              ; $4f78: $27

Call_05c_4f79:
	db $db                                           ; $4f79: $db
	db $10                                           ; $4f7a: $10
	sbc [hl]                                         ; $4f7b: $9e
	inc sp                                           ; $4f7c: $33
	ld a, e                                          ; $4f7d: $7b
	cp b                                             ; $4f7e: $b8
	sbc d                                            ; $4f7f: $9a
	ld bc, $370f                                     ; $4f80: $01 $0f $37
	rst SubAFromDE                                          ; $4f83: $df
	rst $38                                          ; $4f84: $ff
	halt                                             ; $4f85: $76
	ld e, [hl]                                       ; $4f86: $5e
	sub l                                            ; $4f87: $95
	rrca                                             ; $4f88: $0f
	ld a, b                                          ; $4f89: $78
	ldh [rP1], a                                     ; $4f8a: $e0 $00
	nop                                              ; $4f8c: $00
	and l                                            ; $4f8d: $a5
	and e                                            ; $4f8e: $a3
	and b                                            ; $4f8f: $a0
	and d                                            ; $4f90: $a2
	and [hl]                                         ; $4f91: $a6
	sbc $96                                          ; $4f92: $de $96
	sbc l                                            ; $4f94: $9d
	ld hl, sp-$07                                    ; $4f95: $f8 $f9
	db $db                                           ; $4f97: $db
	ei                                               ; $4f98: $fb
	adc d                                            ; $4f99: $8a
	ld h, l                                          ; $4f9a: $65
	db $ec                                           ; $4f9b: $ec
	xor c                                            ; $4f9c: $a9
	xor e                                            ; $4f9d: $ab
	ret                                              ; $4f9e: $c9


	call $cbcb                                       ; $4f9f: $cd $cb $cb
	jr c, jr_05c_4fd5                                ; $4fa2: $38 $31

	ld [hl], c                                       ; $4fa4: $71
	ld [hl], c                                       ; $4fa5: $71
	ld [hl], e                                       ; $4fa6: $73
	ld [hl], e                                       ; $4fa7: $73
	ld [hl], a                                       ; $4fa8: $77
	ld [hl], a                                       ; $4fa9: $77
	ldh [$a0], a                                     ; $4faa: $e0 $a0
	ld b, b                                          ; $4fac: $40
	ld b, b                                          ; $4fad: $40
	ret nz                                           ; $4fae: $c0

	ld a, e                                          ; $4faf: $7b
	xor l                                            ; $4fb0: $ad
	sbc e                                            ; $4fb1: $9b
	and b                                            ; $4fb2: $a0
	ldh [$c0], a                                     ; $4fb3: $e0 $c0
	ret nz                                           ; $4fb5: $c0

	ld [hl], a                                       ; $4fb6: $77
	adc a                                            ; $4fb7: $8f
	adc h                                            ; $4fb8: $8c
	ld c, a                                          ; $4fb9: $4f
	jr z, jr_05c_4fcc                                ; $4fba: $28 $10

	inc d                                            ; $4fbc: $14
	ld [$060a], sp                                   ; $4fbd: $08 $0a $06
	ld b, $79                                        ; $4fc0: $06 $79
	jr c, jr_05c_4fdc                                ; $4fc2: $38 $18

	inc e                                            ; $4fc4: $1c
	inc c                                            ; $4fc5: $0c
	ld c, $06                                        ; $4fc6: $0e $06
	ld b, $ff                                        ; $4fc8: $06 $ff
	ld a, $07                                        ; $4fca: $3e $07

jr_05c_4fcc:
	db $fc                                           ; $4fcc: $fc
	sbc l                                            ; $4fcd: $9d
	ldh a, [c]                                       ; $4fce: $f2
	ld a, $6e                                        ; $4fcf: $3e $6e
	ld c, [hl]                                       ; $4fd1: $4e
	ld a, a                                          ; $4fd2: $7f
	and a                                            ; $4fd3: $a7
	sbc c                                            ; $4fd4: $99

jr_05c_4fd5:
	ret nz                                           ; $4fd5: $c0

	ldh [$30], a                                     ; $4fd6: $e0 $30
	jr jr_05c_4fe6                                   ; $4fd8: $18 $0c

	dec c                                            ; $4fda: $0d
	ld a, e                                          ; $4fdb: $7b

jr_05c_4fdc:
	ld h, c                                          ; $4fdc: $61
	sbc d                                            ; $4fdd: $9a
	ld h, b                                          ; $4fde: $60
	db $10                                           ; $4fdf: $10
	ld [$0708], sp                                   ; $4fe0: $08 $08 $07
	ld [hl], d                                       ; $4fe3: $72
	add $9c                                          ; $4fe4: $c6 $9c

jr_05c_4fe6:
	dec bc                                           ; $4fe6: $0b
	ld c, d                                          ; $4fe7: $4a
	pop af                                           ; $4fe8: $f1
	db $fc                                           ; $4fe9: $fc
	ld a, [hl]                                       ; $4fea: $7e
	sbc h                                            ; $4feb: $9c
	sbc [hl]                                         ; $4fec: $9e
	db $fc                                           ; $4fed: $fc
	sbc $01                                          ; $4fee: $de $01
	sbc d                                            ; $4ff0: $9a
	inc bc                                           ; $4ff1: $03
	add hl, bc                                       ; $4ff2: $09
	inc bc                                           ; $4ff3: $03
	dec d                                            ; $4ff4: $15
	dec bc                                           ; $4ff5: $0b
	ld h, d                                          ; $4ff6: $62
	and b                                            ; $4ff7: $a0
	sbc b                                            ; $4ff8: $98
	cpl                                              ; $4ff9: $2f
	ld e, a                                          ; $4ffa: $5f
	cp a                                             ; $4ffb: $bf
	ld e, a                                          ; $4ffc: $5f
	cp a                                             ; $4ffd: $bf
	ld a, [hl]                                       ; $4ffe: $7e
	cp l                                             ; $4fff: $bd
	ld l, d                                          ; $5000: $6a
	or d                                             ; $5001: $b2
	sbc l                                            ; $5002: $9d
	ld [bc], a                                       ; $5003: $02
	ld b, c                                          ; $5004: $41
	db $dd                                           ; $5005: $dd
	ld bc, $109d                                     ; $5006: $01 $9d $10

jr_05c_5009:
	inc c                                            ; $5009: $0c
	ld l, a                                          ; $500a: $6f
	dec sp                                           ; $500b: $3b
	sbc l                                            ; $500c: $9d
	rrca                                             ; $500d: $0f
	ldh a, [$fb]                                     ; $500e: $f0 $fb
	ld a, h                                          ; $5010: $7c
	sub [hl]                                         ; $5011: $96
	ei                                               ; $5012: $fb
	ld a, e                                          ; $5013: $7b
	cp d                                             ; $5014: $ba
	sbc l                                            ; $5015: $9d
	ld a, $81                                        ; $5016: $3e $81
	sbc $80                                          ; $5018: $de $80
	sbc d                                            ; $501a: $9a
	jr nz, jr_05c_5065                               ; $501b: $20 $48

	add e                                            ; $501d: $83
	jp Jump_05c_7a03                                 ; $501e: $c3 $03 $7a


	ld a, l                                          ; $5021: $7d
	add b                                            ; $5022: $80
	ret nz                                           ; $5023: $c0

	jr nc, jr_05c_50a5                               ; $5024: $30 $7f

	ld a, [bc]                                       ; $5026: $0a
	ld d, b                                          ; $5027: $50
	ldh [rP1], a                                     ; $5028: $e0 $00
	ld bc, $9b7d                                     ; $502a: $01 $7d $9b
	sub c                                            ; $502d: $91
	inc c                                            ; $502e: $0c
	cp b                                             ; $502f: $b8
	ldh a, [rP1]                                     ; $5030: $f0 $00
	ld bc, $801e                                     ; $5032: $01 $1e $80
	nop                                              ; $5035: $00
	inc b                                            ; $5036: $04
	dec bc                                           ; $5037: $0b
	rla                                              ; $5038: $17
	ld l, h                                          ; $5039: $6c
	cp b                                             ; $503a: $b8
	ldh [rP1], a                                     ; $503b: $e0 $00
	add b                                            ; $503d: $80
	ld b, $0c                                        ; $503e: $06 $0c
	jr jr_05c_50b2                                   ; $5040: $18 $70

	sbc [hl]                                         ; $5042: $9e
	ret nz                                           ; $5043: $c0

	cp $9c                                           ; $5044: $fe $9c
	jr nc, jr_05c_5009                               ; $5046: $30 $c1

	add d                                            ; $5048: $82
	ld [hl], a                                       ; $5049: $77
	sub $f7                                          ; $504a: $d6 $f7
	ld a, l                                          ; $504c: $7d
	cp b                                             ; $504d: $b8
	sbc e                                            ; $504e: $9b
	ret nz                                           ; $504f: $c0

	add c                                            ; $5050: $81
	rrca                                             ; $5051: $0f
	ld a, $6e                                        ; $5052: $3e $6e
	cpl                                              ; $5054: $2f
	sbc e                                            ; $5055: $9b
	ld bc, $1807                                     ; $5056: $01 $07 $18
	inc e                                            ; $5059: $1c
	ld a, d                                          ; $505a: $7a
	db $dd                                           ; $505b: $dd
	sbc e                                            ; $505c: $9b
	ld hl, sp-$48                                    ; $505d: $f8 $b8
	ldh a, [$d0]                                     ; $505f: $f0 $d0
	db $fc                                           ; $5061: $fc
	ld a, a                                          ; $5062: $7f
	rst GetHLinHL                                          ; $5063: $cf
	sbc [hl]                                         ; $5064: $9e

jr_05c_5065:
	jr nz, @-$20                                     ; $5065: $20 $de

	ld [bc], a                                       ; $5067: $02
	rst SubAFromDE                                          ; $5068: $df
	ld b, $9d                                        ; $5069: $06 $9d
	ld c, $0f                                        ; $506b: $0e $0f
	ld h, a                                          ; $506d: $67
	adc [hl]                                         ; $506e: $8e
	sbc c                                            ; $506f: $99
	ld bc, $772f                                     ; $5070: $01 $2f $77
	ld a, a                                          ; $5073: $7f
	ld l, a                                          ; $5074: $6f
	rst $38                                          ; $5075: $ff
	ld a, d                                          ; $5076: $7a
	ret nc                                           ; $5077: $d0

	ld a, h                                          ; $5078: $7c
	adc l                                            ; $5079: $8d
	rst SubAFromDE                                          ; $507a: $df
	ld [hl], b                                       ; $507b: $70
	sbc [hl]                                         ; $507c: $9e
	ld h, b                                          ; $507d: $60
	ld a, d                                          ; $507e: $7a
	db $fc                                           ; $507f: $fc
	reti                                             ; $5080: $d9


	rst $38                                          ; $5081: $ff
	ld sp, hl                                        ; $5082: $f9
	rst SubAFromDE                                          ; $5083: $df
	sub d                                            ; $5084: $92
	sub a                                            ; $5085: $97
	sbc d                                            ; $5086: $9a
	sbc c                                            ; $5087: $99
	sbc l                                            ; $5088: $9d
	sbc l                                            ; $5089: $9d
	sbc $de                                          ; $508a: $de $de
	rst $38                                          ; $508c: $ff
	rst $38                                          ; $508d: $ff
	sbc $ef                                          ; $508e: $de $ef
	sbc e                                            ; $5090: $9b
	rst SubAFromBC                                          ; $5091: $e7
	ld h, a                                          ; $5092: $67
	ld h, e                                          ; $5093: $63
	ld b, a                                          ; $5094: $47
	db $dd                                           ; $5095: $dd
	ld b, [hl]                                       ; $5096: $46
	sbc h                                            ; $5097: $9c
	ld h, $a6                                        ; $5098: $26 $a6
	and [hl]                                         ; $509a: $a6
	ld [hl], c                                       ; $509b: $71
	ld [hl], d                                       ; $509c: $72
	sbc $fc                                          ; $509d: $de $fc
	ld a, a                                          ; $509f: $7f
	ld l, a                                          ; $50a0: $6f
	sbc $04                                          ; $50a1: $de $04
	sbc $06                                          ; $50a3: $de $06

jr_05c_50a5:
	ld sp, hl                                        ; $50a5: $f9
	rst SubAFromDE                                          ; $50a6: $df
	ld [bc], a                                       ; $50a7: $02
	ld l, [hl]                                       ; $50a8: $6e
	ld l, e                                          ; $50a9: $6b
	ld [hl], e                                       ; $50aa: $73
	ld hl, sp+$6c                                    ; $50ab: $f8 $6c
	add b                                            ; $50ad: $80
	db $f4                                           ; $50ae: $f4
	sbc d                                            ; $50af: $9a
	dec c                                            ; $50b0: $0d
	rrca                                             ; $50b1: $0f

jr_05c_50b2:
	ld a, h                                          ; $50b2: $7c
	rst $38                                          ; $50b3: $ff
	ld a, [hl]                                       ; $50b4: $7e
	sbc $3e                                          ; $50b5: $de $3e
	sbc h                                            ; $50b7: $9c
	ld b, $04                                        ; $50b8: $06 $04
	ld b, $dc                                        ; $50ba: $06 $dc
	ld [bc], a                                       ; $50bc: $02
	sbc [hl]                                         ; $50bd: $9e
	cp $75                                           ; $50be: $fe $75
	jp nz, $159d                                     ; $50c0: $c2 $9d $15

	ld a, [bc]                                       ; $50c3: $0a
	ld h, a                                          ; $50c4: $67
	db $db                                           ; $50c5: $db
	sbc h                                            ; $50c6: $9c
	inc bc                                           ; $50c7: $03
	dec h                                            ; $50c8: $25
	jr nc, jr_05c_5145                               ; $50c9: $30 $7a

	pop af                                           ; $50cb: $f1
	sbc d                                            ; $50cc: $9a
	dec c                                            ; $50cd: $0d
	ld h, $23                                        ; $50ce: $26 $23
	nop                                              ; $50d0: $00
	rrca                                             ; $50d1: $0f
	sbc $ff                                          ; $50d2: $de $ff
	add b                                            ; $50d4: $80
	ld sp, hl                                        ; $50d5: $f9
	call nz, $031f                                   ; $50d6: $c4 $1f $03
	rlca                                             ; $50d9: $07
	rlca                                             ; $50da: $07
	rla                                              ; $50db: $17
	adc a                                            ; $50dc: $8f
	rst JumpTable                                          ; $50dd: $c7
	halt                                             ; $50de: $76
	xor $fc                                          ; $50df: $ee $fc
	ld hl, sp-$08                                    ; $50e1: $f8 $f8
	ldh [rP1], a                                     ; $50e3: $e0 $00
	cp b                                             ; $50e5: $b8
	ld a, c                                          ; $50e6: $79
	dec e                                            ; $50e7: $1d
	db $fc                                           ; $50e8: $fc
	rst $38                                          ; $50e9: $ff
	rst SubAFromBC                                          ; $50ea: $e7
	add c                                            ; $50eb: $81
	nop                                              ; $50ec: $00
	ld b, $08                                        ; $50ed: $06 $08
	stop                                             ; $50ef: $10 $00
	nop                                              ; $50f1: $00
	jr @+$80                                         ; $50f2: $18 $7e

	ld a, a                                          ; $50f4: $7f
	ldh [hDisp0_OBP1], a                                     ; $50f5: $e0 $87
	ldh a, [$e0]                                     ; $50f7: $f0 $e0
	inc b                                            ; $50f9: $04
	rst SubAFromBC                                          ; $50fa: $e7

jr_05c_50fb:
	db $fc                                           ; $50fb: $fc
	ld sp, hl                                        ; $50fc: $f9
	rst FarCall                                          ; $50fd: $f7
	db $fc                                           ; $50fe: $fc
	ld [hl], b                                       ; $50ff: $70
	ld h, b                                          ; $5100: $60
	inc bc                                           ; $5101: $03
	jr jr_05c_5107                                   ; $5102: $18 $03

	rlca                                             ; $5104: $07
	ld c, $18                                        ; $5105: $0e $18

jr_05c_5107:
	ld h, b                                          ; $5107: $60
	nop                                              ; $5108: $00
	ldh [c], a                                       ; $5109: $e2
	pop de                                           ; $510a: $d1
	ldh a, [c]                                       ; $510b: $f2
	call nz, $334e                                   ; $510c: $c4 $4e $33
	ld a, e                                          ; $510f: $7b
	ld a, l                                          ; $5110: $7d
	sbc [hl]                                         ; $5111: $9e
	jr nc, @+$78                                     ; $5112: $30 $76

	ldh [c], a                                       ; $5114: $e2
	rst $38                                          ; $5115: $ff
	sbc b                                            ; $5116: $98
	add c                                            ; $5117: $81
	ld b, d                                          ; $5118: $42
	dec b                                            ; $5119: $05
	reti                                             ; $511a: $d9


	ld b, b                                          ; $511b: $40
	add c                                            ; $511c: $81
	rra                                              ; $511d: $1f
	ld h, e                                          ; $511e: $63
	jr nc, jr_05c_519d                               ; $511f: $30 $7c

	ld h, d                                          ; $5121: $62
	sbc c                                            ; $5122: $99
	add b                                            ; $5123: $80
	ld bc, $ff1f                                     ; $5124: $01 $1f $ff
	cp $fc                                           ; $5127: $fe $fc
	ld l, d                                          ; $5129: $6a
	ldh [hDisp1_WX], a                                     ; $512a: $e0 $96
	inc e                                            ; $512c: $1c
	rlca                                             ; $512d: $07
	rra                                              ; $512e: $1f
	ld a, [hl]                                       ; $512f: $7e
	db $db                                           ; $5130: $db
	ld l, a                                          ; $5131: $6f
	cp h                                             ; $5132: $bc
	ldh a, [$e1]                                     ; $5133: $f0 $e1
	ld a, e                                          ; $5135: $7b
	db $f4                                           ; $5136: $f4
	sbc l                                            ; $5137: $9d
	inc a                                            ; $5138: $3c
	ldh a, [$7b]                                     ; $5139: $f0 $7b
	call $ffde                                       ; $513b: $cd $de $ff
	sub a                                            ; $513e: $97
	cp $4f                                           ; $513f: $fe $4f
	ld b, a                                          ; $5141: $47
	rst SubAFromBC                                          ; $5142: $e7
	xor $60                                          ; $5143: $ee $60

jr_05c_5145:
	add b                                            ; $5145: $80
	nop                                              ; $5146: $00
	ld [hl], e                                       ; $5147: $73
	ld l, h                                          ; $5148: $6c
	sub a                                            ; $5149: $97
	and b                                            ; $514a: $a0
	nop                                              ; $514b: $00
	ld b, b                                          ; $514c: $40
	or b                                             ; $514d: $b0
	and h                                            ; $514e: $a4
	inc d                                            ; $514f: $14
	ld [$7100], sp                                   ; $5150: $08 $00 $71
	db $db                                           ; $5153: $db
	cp $97                                           ; $5154: $fe $97
	rra                                              ; $5156: $1f
	ld e, $1e                                        ; $5157: $1e $1e
	inc a                                            ; $5159: $3c
	jr c, jr_05c_5194                                ; $515a: $38 $38

	jr nc, jr_05c_51ce                               ; $515c: $30 $70

	ld a, c                                          ; $515e: $79
	jr nc, jr_05c_50fb                               ; $515f: $30 $9a

	rlca                                             ; $5161: $07
	rrca                                             ; $5162: $0f
	rrca                                             ; $5163: $0f
	rra                                              ; $5164: $1f
	rra                                              ; $5165: $1f
	sbc $7f                                          ; $5166: $de $7f
	sbc [hl]                                         ; $5168: $9e
	ld a, [hl]                                       ; $5169: $7e
	sbc $7f                                          ; $516a: $de $7f
	sbc [hl]                                         ; $516c: $9e
	ld e, a                                          ; $516d: $5f

jr_05c_516e:
	jp c, $9dc0                                      ; $516e: $da $c0 $9d

	ldh [rIE], a                                     ; $5171: $e0 $ff
	sbc $7f                                          ; $5173: $de $7f
	ld a, d                                          ; $5175: $7a
	push de                                          ; $5176: $d5
	sbc [hl]                                         ; $5177: $9e
	rst SubAFromHL                                          ; $5178: $d7
	ld l, c                                          ; $5179: $69
	ld h, e                                          ; $517a: $63
	add [hl]                                         ; $517b: $86
	jr c, @-$1f                                      ; $517c: $38 $df

	rst AddAOntoHL                                          ; $517e: $ef
	rst AddAOntoHL                                          ; $517f: $ef
	rst FarCall                                          ; $5180: $f7
	rst FarCall                                          ; $5181: $f7
	ei                                               ; $5182: $fb
	rst $38                                          ; $5183: $ff
	db $fd                                           ; $5184: $fd
	ld h, e                                          ; $5185: $63
	ld sp, $1830                                     ; $5186: $31 $30 $18

jr_05c_5189:
	jr jr_05c_5197                                   ; $5189: $18 $0c

jr_05c_518b:
	inc b                                            ; $518b: $04
	ld b, $a6                                        ; $518c: $06 $a6
	and a                                            ; $518e: $a7
	sub $d2                                          ; $518f: $d6 $d2
	ld [hl], e                                       ; $5191: $73
	dec sp                                           ; $5192: $3b
	sbc c                                            ; $5193: $99

jr_05c_5194:
	adc l                                            ; $5194: $8d
	sbc $fc                                          ; $5195: $de $fc

jr_05c_5197:
	sbc d                                            ; $5197: $9a
	cp $7e                                           ; $5198: $fe $7e
	ld a, $1f                                        ; $519a: $3e $1f
	rrca                                             ; $519c: $0f

jr_05c_519d:
	sbc $02                                          ; $519d: $de $02
	db $dd                                           ; $519f: $dd
	inc bc                                           ; $51a0: $03
	sbc [hl]                                         ; $51a1: $9e
	add e                                            ; $51a2: $83
	ld h, [hl]                                       ; $51a3: $66
	ld b, d                                          ; $51a4: $42
	rst SubAFromDE                                          ; $51a5: $df
	jr jr_05c_518b                                   ; $51a6: $18 $e3

	sbc l                                            ; $51a8: $9d
	ccf                                              ; $51a9: $3f
	ld a, a                                          ; $51aa: $7f
	db $dd                                           ; $51ab: $dd
	ld a, [hl]                                       ; $51ac: $7e
	rst SubAFromDE                                          ; $51ad: $df
	cp $df                                           ; $51ae: $fe $df
	inc bc                                           ; $51b0: $03
	db $dd                                           ; $51b1: $dd
	ld [hl+], a                                      ; $51b2: $22
	rst SubAFromDE                                          ; $51b3: $df
	inc hl                                           ; $51b4: $23
	sbc h                                            ; $51b5: $9c
	add a                                            ; $51b6: $87
	ld a, [$6df8]                                    ; $51b7: $fa $f8 $6d
	cp l                                             ; $51ba: $bd
	ld [hl], e                                       ; $51bb: $73

jr_05c_51bc:
	ld l, $df                                        ; $51bc: $2e $df
	rst $38                                          ; $51be: $ff
	add b                                            ; $51bf: $80
	rra                                              ; $51c0: $1f
	ccf                                              ; $51c1: $3f
	ld e, $05                                        ; $51c2: $1e $05
	rrca                                             ; $51c4: $0f
	ld c, $07                                        ; $51c5: $0e $07
	ld bc, $e1ff                                     ; $51c7: $01 $ff $e1
	cp $fc                                           ; $51ca: $fe $fc
	ld sp, hl                                        ; $51cc: $f9
	ei                                               ; $51cd: $fb

jr_05c_51ce:
	cp $ff                                           ; $51ce: $fe $ff
	add l                                            ; $51d0: $85
	ld h, b                                          ; $51d1: $60
	ld hl, sp-$04                                    ; $51d2: $f8 $fc
	xor [hl]                                         ; $51d4: $ae
	rst FarCall                                          ; $51d5: $f7
	rst $38                                          ; $51d6: $ff
	cp $83                                           ; $51d7: $fe $83
	nop                                              ; $51d9: $00
	ld h, b                                          ; $51da: $60
	or b                                             ; $51db: $b0
	ld hl, sp-$14                                    ; $51dc: $f8 $ec
	ld [bc], a                                       ; $51de: $02
	sub h                                            ; $51df: $94
	add c                                            ; $51e0: $81
	add sp, -$48                                     ; $51e1: $e8 $b8
	ld c, l                                          ; $51e3: $4d
	ld d, [hl]                                       ; $51e4: $56
	jr nc, jr_05c_516e                               ; $51e5: $30 $87

	rst $38                                          ; $51e7: $ff
	db $fd                                           ; $51e8: $fd
	ret nz                                           ; $51e9: $c0

	ld a, b                                          ; $51ea: $78
	ld l, [hl]                                       ; $51eb: $6e
	sub b                                            ; $51ec: $90
	ld a, a                                          ; $51ed: $7f
	jr z, jr_05c_5189                                ; $51ee: $28 $99

	add e                                            ; $51f0: $83
	rrca                                             ; $51f1: $0f
	ld a, a                                          ; $51f2: $7f
	ei                                               ; $51f3: $fb
	ld a, $cc                                        ; $51f4: $3e $cc
	db $fc                                           ; $51f6: $fc
	sub h                                            ; $51f7: $94
	rlca                                             ; $51f8: $07
	db $fd                                           ; $51f9: $fd
	ldh a, [rIF]                                     ; $51fa: $f0 $0f
	ld a, a                                          ; $51fc: $7f
	rst $38                                          ; $51fd: $ff
	db $fd                                           ; $51fe: $fd
	sbc $e0                                          ; $51ff: $de $e0
	nop                                              ; $5201: $00
	ld [$e477], sp                                   ; $5202: $08 $77 $e4
	sub e                                            ; $5205: $93
	ccf                                              ; $5206: $3f
	rst $38                                          ; $5207: $ff
	rst $38                                          ; $5208: $ff
	rlca                                             ; $5209: $07
	rst $38                                          ; $520a: $ff
	rst $38                                          ; $520b: $ff
	rst SubAFromDE                                          ; $520c: $df
	rst SubAFromBC                                          ; $520d: $e7
	rlca                                             ; $520e: $07
	ld b, $07                                        ; $520f: $06 $07
	rlca                                             ; $5211: $07
	ld a, e                                          ; $5212: $7b
	ldh a, [c]                                       ; $5213: $f2
	ld [hl], d                                       ; $5214: $72
	ld c, $80                                        ; $5215: $0e $80
	db $ec                                           ; $5217: $ec
	cp b                                             ; $5218: $b8
	ld hl, sp+$72                                    ; $5219: $f8 $72
	dec b                                            ; $521b: $05
	ccf                                              ; $521c: $3f
	cp b                                             ; $521d: $b8
	add d                                            ; $521e: $82
	ld [hl], b                                       ; $521f: $70
	ret nz                                           ; $5220: $c0

	inc c                                            ; $5221: $0c
	pop af                                           ; $5222: $f1
	inc bc                                           ; $5223: $03
	ld c, $70                                        ; $5224: $0e $70
	ld bc, $5e47                                     ; $5226: $01 $47 $5e
	sbc b                                            ; $5229: $98
	inc h                                            ; $522a: $24
	sub b                                            ; $522b: $90
	ld [$8000], sp                                   ; $522c: $08 $00 $80
	nop                                              ; $522f: $00
	pop bc                                           ; $5230: $c1
	ld h, a                                          ; $5231: $67
	jr jr_05c_51bc                                   ; $5232: $18 $88

	nop                                              ; $5234: $00
	ld b, b                                          ; $5235: $40
	sub [hl]                                         ; $5236: $96
	add b                                            ; $5237: $80
	cp $4e                                           ; $5238: $fe $4e
	call z, $1c3c                                    ; $523a: $cc $3c $1c
	inc c                                            ; $523d: $0c
	inc e                                            ; $523e: $1c
	inc a                                            ; $523f: $3c
	ld a, e                                          ; $5240: $7b
	xor $fb                                          ; $5241: $ee $fb
	sbc d                                            ; $5243: $9a
	jr nz, jr_05c_5276                               ; $5244: $20 $30

	ret nc                                           ; $5246: $d0

	and b                                            ; $5247: $a0
	ld b, b                                          ; $5248: $40
	rst FarCall                                          ; $5249: $f7
	add l                                            ; $524a: $85
	ld d, b                                          ; $524b: $50
	ld h, c                                          ; $524c: $61
	ld h, b                                          ; $524d: $60
	ld l, d                                          ; $524e: $6a
	ld h, h                                          ; $524f: $64
	ld [hl], b                                       ; $5250: $70
	ld d, b                                          ; $5251: $50
	jr c, jr_05c_5293                                ; $5252: $38 $3f

	ld a, $3c                                        ; $5254: $3e $3c
	ld sp, $2f23                                     ; $5256: $31 $23 $2f
	jr nc, jr_05c_5272                               ; $5259: $30 $17

	cp a                                             ; $525b: $bf
	ld a, a                                          ; $525c: $7f
	cpl                                              ; $525d: $2f
	rra                                              ; $525e: $1f
	rra                                              ; $525f: $1f
	rrca                                             ; $5260: $0f
	ld a, a                                          ; $5261: $7f
	adc a                                            ; $5262: $8f
	jr nz, @+$22                                     ; $5263: $20 $20

	sbc $f0                                          ; $5265: $de $f0
	sbc h                                            ; $5267: $9c
	ld hl, sp+$08                                    ; $5268: $f8 $08
	ld [$c47a], sp                                   ; $526a: $08 $7a $c4
	sbc d                                            ; $526d: $9a
	ei                                               ; $526e: $fb
	rst FarCall                                          ; $526f: $f7
	rst $38                                          ; $5270: $ff
	db $fd                                           ; $5271: $fd

jr_05c_5272:
	ei                                               ; $5272: $fb
	sbc $18                                          ; $5273: $de $18
	rst SubAFromDE                                          ; $5275: $df

jr_05c_5276:
	inc c                                            ; $5276: $0c
	ld a, c                                          ; $5277: $79
	and a                                            ; $5278: $a7
	reti                                             ; $5279: $d9


	rst $38                                          ; $527a: $ff
	sbc [hl]                                         ; $527b: $9e
	ld [bc], a                                       ; $527c: $02
	ld l, c                                          ; $527d: $69
	sbc $7d                                          ; $527e: $de $7d
	db $f4                                           ; $5280: $f4
	sbc [hl]                                         ; $5281: $9e
	pop bc                                           ; $5282: $c1
	db $dd                                           ; $5283: $dd
	ldh [$9d], a                                     ; $5284: $e0 $9d
	ldh a, [rTAC]                                    ; $5286: $f0 $07
	ld l, h                                          ; $5288: $6c
	ld [hl], c                                       ; $5289: $71
	sbc c                                            ; $528a: $99
	nop                                              ; $528b: $00
	ld b, e                                          ; $528c: $43
	ld h, c                                          ; $528d: $61
	add c                                            ; $528e: $81
	ld b, c                                          ; $528f: $41
	ld hl, $01de                                     ; $5290: $21 $de $01

jr_05c_5293:
	ld a, [hl]                                       ; $5293: $7e
	ld h, c                                          ; $5294: $61
	sbc h                                            ; $5295: $9c
	ret nz                                           ; $5296: $c0

	ld b, b                                          ; $5297: $40
	jr nz, jr_05c_530c                               ; $5298: $20 $72

	cp [hl]                                          ; $529a: $be
	rst SubAFromDE                                          ; $529b: $df
	add b                                            ; $529c: $80
	ld a, d                                          ; $529d: $7a
	ld a, c                                          ; $529e: $79
	ld a, a                                          ; $529f: $7f
	ld a, $f6                                        ; $52a0: $3e $f6
	sbc $01                                          ; $52a2: $de $01
	sbc [hl]                                         ; $52a4: $9e
	ld hl, $dcf9                                     ; $52a5: $21 $f9 $dc
	db $fc                                           ; $52a8: $fc
	sbc e                                            ; $52a9: $9b
	rst $38                                          ; $52aa: $ff
	db $fc                                           ; $52ab: $fc
	db $fc                                           ; $52ac: $fc
	daa                                              ; $52ad: $27
	sbc $47                                          ; $52ae: $de $47
	rst SubAFromDE                                          ; $52b0: $df
	ld b, h                                          ; $52b1: $44
	rst SubAFromDE                                          ; $52b2: $df
	ld b, a                                          ; $52b3: $47
	db $fd                                           ; $52b4: $fd
	sbc [hl]                                         ; $52b5: $9e
	jr c, jr_05c_5326                                ; $52b6: $38 $6e

	ld [$137f], sp                                   ; $52b8: $08 $7f $13
	ld a, e                                          ; $52bb: $7b
	ld a, [$029b]                                    ; $52bc: $fa $9b $02
	ld [de], a                                       ; $52bf: $12
	ld c, b                                          ; $52c0: $48
	jr nz, jr_05c_533e                               ; $52c1: $20 $7b

	ld b, l                                          ; $52c3: $45
	add d                                            ; $52c4: $82
	ld [bc], a                                       ; $52c5: $02
	db $fc                                           ; $52c6: $fc
	pop hl                                           ; $52c7: $e1
	add a                                            ; $52c8: $87
	rra                                              ; $52c9: $1f
	ld a, a                                          ; $52ca: $7f
	rst $38                                          ; $52cb: $ff
	rst $38                                          ; $52cc: $ff
	db $fd                                           ; $52cd: $fd
	rst $38                                          ; $52ce: $ff
	ccf                                              ; $52cf: $3f
	rrca                                             ; $52d0: $0f
	dec h                                            ; $52d1: $25
	ld [$05a2], sp                                   ; $52d2: $08 $a2 $05
	ld c, d                                          ; $52d5: $4a
	ld h, b                                          ; $52d6: $60
	ldh a, [rIE]                                     ; $52d7: $f0 $ff
	jp c, Jump_05c_5df7                              ; $52d9: $da $f7 $5d

	ld a, [$eeb5]                                    ; $52dc: $fa $b5 $ee
	ldh a, [$c5]                                     ; $52df: $f0 $c5
	jr nz, jr_05c_535c                               ; $52e1: $20 $79

	ld c, l                                          ; $52e3: $4d
	sbc d                                            ; $52e4: $9a
	xor $1f                                          ; $52e5: $ee $1f
	ccf                                              ; $52e7: $3f
	ld a, [$79df]                                    ; $52e8: $fa $df $79
	ld b, [hl]                                       ; $52eb: $46
	adc [hl]                                         ; $52ec: $8e
	ld de, $0000                                     ; $52ed: $11 $00 $00
	ld b, h                                          ; $52f0: $44
	db $10                                           ; $52f1: $10
	ld c, d                                          ; $52f2: $4a
	and b                                            ; $52f3: $a0
	ld c, d                                          ; $52f4: $4a
	and c                                            ; $52f5: $a1
	rst $38                                          ; $52f6: $ff
	rst $38                                          ; $52f7: $ff
	cp e                                             ; $52f8: $bb
	rst AddAOntoHL                                          ; $52f9: $ef
	or l                                             ; $52fa: $b5
	ld e, a                                          ; $52fb: $5f
	or l                                             ; $52fc: $b5
	ld e, [hl]                                       ; $52fd: $5e
	ld a, c                                          ; $52fe: $79
	ld h, a                                          ; $52ff: $67
	sbc l                                            ; $5300: $9d
	ld bc, $7b04                                     ; $5301: $01 $04 $7b
	cp h                                             ; $5304: $bc
	ld a, l                                          ; $5305: $7d
	rst FarCall                                          ; $5306: $f7
	ld a, [hl]                                       ; $5307: $7e
	adc h                                            ; $5308: $8c
	sbc [hl]                                         ; $5309: $9e
	ld hl, sp+$7b                                    ; $530a: $f8 $7b

jr_05c_530c:
	cp h                                             ; $530c: $bc
	sbc d                                            ; $530d: $9a
	dec de                                           ; $530e: $1b
	cpl                                              ; $530f: $2f
	ld e, a                                          ; $5310: $5f
	cpl                                              ; $5311: $2f
	adc a                                            ; $5312: $8f
	sbc $0f                                          ; $5313: $de $0f
	sbc d                                            ; $5315: $9a
	inc c                                            ; $5316: $0c
	ret z                                            ; $5317: $c8

	adc b                                            ; $5318: $88
	jr jr_05c_5393                                   ; $5319: $18 $78

	sbc $f8                                          ; $531b: $de $f8
	sub e                                            ; $531d: $93
	ccf                                              ; $531e: $3f
	pop bc                                           ; $531f: $c1
	rst $38                                          ; $5320: $ff
	db $fc                                           ; $5321: $fc
	pop af                                           ; $5322: $f1
	ldh a, [c]                                       ; $5323: $f2
	di                                               ; $5324: $f3
	rst $38                                          ; $5325: $ff

jr_05c_5326:
	rrca                                             ; $5326: $0f
	nop                                              ; $5327: $00
	rlca                                             ; $5328: $07
	ld [$10dd], sp                                   ; $5329: $08 $dd $10
	sub a                                            ; $532c: $97
	add l                                            ; $532d: $85
	ret                                              ; $532e: $c9


	di                                               ; $532f: $f3
	sub c                                            ; $5330: $91
	inc de                                           ; $5331: $13
	rrca                                             ; $5332: $0f
	rra                                              ; $5333: $1f
	ccf                                              ; $5334: $3f
	ld [hl], d                                       ; $5335: $72
	ret nc                                           ; $5336: $d0

	rst SubAFromDE                                          ; $5337: $df
	ld [$0499], sp                                   ; $5338: $08 $99 $04
	ld a, h                                          ; $533b: $7c
	and $e6                                          ; $533c: $e6 $e6

jr_05c_533e:
	ld a, $3e                                        ; $533e: $3e $3e
	ld e, b                                          ; $5340: $58
	add b                                            ; $5341: $80
	pop af                                           ; $5342: $f1
	sub a                                            ; $5343: $97
	jr nc, jr_05c_536e                               ; $5344: $30 $28

	jr c, @+$3a                                      ; $5346: $38 $38

	dec d                                            ; $5348: $15
	inc e                                            ; $5349: $1c
	ld e, $1a                                        ; $534a: $1e $1a
	ld a, d                                          ; $534c: $7a
	bit 7, [hl]                                      ; $534d: $cb $7e
	add hl, de                                       ; $534f: $19
	adc h                                            ; $5350: $8c
	inc b                                            ; $5351: $04
	dec b                                            ; $5352: $05
	rlca                                             ; $5353: $07
	dec bc                                           ; $5354: $0b
	rla                                              ; $5355: $17
	cpl                                              ; $5356: $2f
	rla                                              ; $5357: $17
	ld b, a                                          ; $5358: $47
	add a                                            ; $5359: $87
	rlca                                             ; $535a: $07
	inc bc                                           ; $535b: $03

jr_05c_535c:
	db $fc                                           ; $535c: $fc
	db $e4                                           ; $535d: $e4
	call nz, $3c8c                                   ; $535e: $c4 $8c $3c
	ld a, h                                          ; $5361: $7c
	db $fc                                           ; $5362: $fc
	cp $75                                           ; $5363: $fe $75
	ld b, b                                          ; $5365: $40
	sbc [hl]                                         ; $5366: $9e
	db $fd                                           ; $5367: $fd
	sbc $bf                                          ; $5368: $de $bf
	ld [hl], c                                       ; $536a: $71
	xor b                                            ; $536b: $a8
	sbc $01                                          ; $536c: $de $01

jr_05c_536e:
	ld b, h                                          ; $536e: $44
	jr nc, jr_05c_53e7                               ; $536f: $30 $76

	sbc d                                            ; $5371: $9a
	rst SubAFromDE                                          ; $5372: $df
	ld hl, sp+$7f                                    ; $5373: $f8 $7f
	ret c                                            ; $5375: $d8

	ld h, d                                          ; $5376: $62
	db $e4                                           ; $5377: $e4
	db $dd                                           ; $5378: $dd
	inc bc                                           ; $5379: $03
	ld a, l                                          ; $537a: $7d
	ld [hl], $9e                                     ; $537b: $36 $9e
	rra                                              ; $537d: $1f
	ld h, e                                          ; $537e: $63
	ldh [$7b], a                                     ; $537f: $e0 $7b
	db $e3                                           ; $5381: $e3
	ld d, a                                          ; $5382: $57
	ret nc                                           ; $5383: $d0

	sbc l                                            ; $5384: $9d
	inc hl                                           ; $5385: $23
	inc sp                                           ; $5386: $33
	ld a, e                                          ; $5387: $7b
	ldh [c], a                                       ; $5388: $e2
	ld h, a                                          ; $5389: $67
	ldh a, [$de]                                     ; $538a: $f0 $de
	ld bc, $fcdf                                     ; $538c: $01 $df $fc
	db $db                                           ; $538f: $db
	ld hl, sp-$21                                    ; $5390: $f8 $df
	add a                                            ; $5392: $87

jr_05c_5393:
	sbc $8f                                          ; $5393: $de $8f
	sbc $0f                                          ; $5395: $de $0f
	ld sp, hl                                        ; $5397: $f9
	reti                                             ; $5398: $d9


	rst $38                                          ; $5399: $ff
	ld c, h                                          ; $539a: $4c
	nop                                              ; $539b: $00
	sbc $66                                          ; $539c: $de $66
	rst SubAFromDE                                          ; $539e: $df
	ld [hl+], a                                      ; $539f: $22
	sbc e                                            ; $53a0: $9b
	ld [hl], $54                                     ; $53a1: $36 $54
	ld b, h                                          ; $53a3: $44
	ld d, [hl]                                       ; $53a4: $56
	db $dd                                           ; $53a5: $dd
	ld h, [hl]                                       ; $53a6: $66
	rst SubAFromDE                                          ; $53a7: $df
	ld [hl+], a                                      ; $53a8: $22
	sbc e                                            ; $53a9: $9b
	ld h, $44                                        ; $53aa: $26 $44
	ld b, h                                          ; $53ac: $44
	ld b, [hl]                                       ; $53ad: $46
	db $dd                                           ; $53ae: $dd
	ld h, [hl]                                       ; $53af: $66
	sbc h                                            ; $53b0: $9c
	inc hl                                           ; $53b1: $23
	inc sp                                           ; $53b2: $33
	ld [hl-], a                                      ; $53b3: $32
	sbc $44                                          ; $53b4: $de $44
	ld c, a                                          ; $53b6: $4f
	or $9b                                           ; $53b7: $f6 $9b
	ld h, e                                          ; $53b9: $63
	inc sp                                           ; $53ba: $33
	ld [hl], $64                                     ; $53bb: $36 $64
	ld l, a                                          ; $53bd: $6f
	or $9e                                           ; $53be: $f6 $9e
	ld h, [hl]                                       ; $53c0: $66
	ld h, e                                          ; $53c1: $63
	or $7f                                           ; $53c2: $f6 $7f
	db $ec                                           ; $53c4: $ec
	sbc l                                            ; $53c5: $9d
	inc sp                                           ; $53c6: $33
	inc [hl]                                         ; $53c7: $34
	ld [hl], e                                       ; $53c8: $73
	or $9b                                           ; $53c9: $f6 $9b
	ld h, a                                          ; $53cb: $67
	inc sp                                           ; $53cc: $33
	inc sp                                           ; $53cd: $33
	ld [hl], a                                       ; $53ce: $77
	sbc $55                                          ; $53cf: $de $55
	sbc [hl]                                         ; $53d1: $9e
	halt                                             ; $53d2: $76
	sbc $77                                          ; $53d3: $de $77
	ld a, e                                          ; $53d5: $7b
	or $9b                                           ; $53d6: $f6 $9b
	dec [hl]                                         ; $53d8: $35
	ld d, l                                          ; $53d9: $55
	ld d, l                                          ; $53da: $55
	ld d, [hl]                                       ; $53db: $56
	ld l, a                                          ; $53dc: $6f
	or $9c                                           ; $53dd: $f6 $9c
	inc sp                                           ; $53df: $33
	ld d, l                                          ; $53e0: $55
	ld d, l                                          ; $53e1: $55
	db $dd                                           ; $53e2: $dd
	ld [hl], a                                       ; $53e3: $77
	ld l, e                                          ; $53e4: $6b
	or $99                                           ; $53e5: $f6 $99

jr_05c_53e7:
	adc c                                            ; $53e7: $89
	ld sp, hl                                        ; $53e8: $f9
	reti                                             ; $53e9: $d9


	rst $38                                          ; $53ea: $ff
	rst $38                                          ; $53eb: $ff
	sbc c                                            ; $53ec: $99
	ld bc, $0502                                     ; $53ed: $01 $02 $05
	dec bc                                           ; $53f0: $0b
	ld [de], a                                       ; $53f1: $12
	inc h                                            ; $53f2: $24
	db $dd                                           ; $53f3: $dd
	rst $38                                          ; $53f4: $ff
	sub e                                            ; $53f5: $93
	cp $fd                                           ; $53f6: $fe $fd
	rst $38                                          ; $53f8: $ff
	rst $38                                          ; $53f9: $ff
	inc sp                                           ; $53fa: $33
	adc $30                                          ; $53fb: $ce $30
	ret z                                            ; $53fd: $c8

	add c                                            ; $53fe: $81
	cpl                                              ; $53ff: $2f
	ld d, [hl]                                       ; $5400: $56
	or a                                             ; $5401: $b7
	sbc $ff                                          ; $5402: $de $ff
	sub d                                            ; $5404: $92
	ld h, a                                          ; $5405: $67
	rst GetHLinHL                                          ; $5406: $cf
	rst GetHLinHL                                          ; $5407: $cf
	pop hl                                           ; $5408: $e1
	rst GetHLinHL                                          ; $5409: $cf
	add c                                            ; $540a: $81
	inc bc                                           ; $540b: $03
	inc c                                            ; $540c: $0c
	ld sp, $81fe                                     ; $540d: $31 $fe $81
	ld b, $f8                                        ; $5410: $06 $f8
	reti                                             ; $5412: $d9


	rst $38                                          ; $5413: $ff
	sub a                                            ; $5414: $97
	ret c                                            ; $5415: $d8

	inc a                                            ; $5416: $3c
	ld a, h                                          ; $5417: $7c
	ldh a, [c]                                       ; $5418: $f2
	ld h, c                                          ; $5419: $61
	db $fc                                           ; $541a: $fc
	ld b, e                                          ; $541b: $43
	db $fc                                           ; $541c: $fc
	ld e, a                                          ; $541d: $5f
	ret nz                                           ; $541e: $c0

	cp $9c                                           ; $541f: $fe $9c
	add b                                            ; $5421: $80
	ret nz                                           ; $5422: $c0

	ret nz                                           ; $5423: $c0

	ld d, e                                          ; $5424: $53
	ldh a, [$9c]                                     ; $5425: $f0 $9c
	inc b                                            ; $5427: $04
	ld c, $13                                        ; $5428: $0e $13
	ld [hl], e                                       ; $542a: $73
	or b                                             ; $542b: $b0
	sbc b                                            ; $542c: $98
	ld hl, sp-$10                                    ; $542d: $f8 $f0
	ldh [rAUD1SWEEP], a                              ; $542f: $e0 $10
	inc a                                            ; $5431: $3c
	ld b, a                                          ; $5432: $47
	add c                                            ; $5433: $81
	cp $9b                                           ; $5434: $fe $9b
	add c                                            ; $5436: $81
	ldh [$c0], a                                     ; $5437: $e0 $c0
	add b                                            ; $5439: $80
	db $fc                                           ; $543a: $fc
	sbc b                                            ; $543b: $98
	ld bc, $0603                                     ; $543c: $01 $03 $06
	call z, $3c78                                    ; $543f: $cc $78 $3c
	rst SubAFromBC                                          ; $5442: $e7
	ld [hl], a                                       ; $5443: $77
	db $ec                                           ; $5444: $ec
	db $fc                                           ; $5445: $fc
	sbc e                                            ; $5446: $9b
	ldh a, [rAUD3LEVEL]                              ; $5447: $f0 $1c
	rlca                                             ; $5449: $07
	ld bc, $9efe                                     ; $544a: $01 $fe $9e
	ret nz                                           ; $544d: $c0

	ld hl, sp+$7f                                    ; $544e: $f8 $7f
	rst SubAFromDE                                          ; $5450: $df
	sbc d                                            ; $5451: $9a
	adc $78                                          ; $5452: $ce $78
	inc a                                            ; $5454: $3c
	ld h, a                                          ; $5455: $67
	pop bc                                           ; $5456: $c1
	ld h, e                                          ; $5457: $63
	ldh [$9d], a                                     ; $5458: $e0 $9d
	sbc h                                            ; $545a: $9c
	rlca                                             ; $545b: $07
	db $fd                                           ; $545c: $fd
	ld h, e                                          ; $545d: $63
	ldh [$7f], a                                     ; $545e: $e0 $7f
	pop hl                                           ; $5460: $e1
	sbc d                                            ; $5461: $9a
	add [hl]                                         ; $5462: $86
	db $ec                                           ; $5463: $ec
	jr c, jr_05c_54a4                                ; $5464: $38 $3e

	ld h, e                                          ; $5466: $63
	ld h, e                                          ; $5467: $63
	ldh a, [$9c]                                     ; $5468: $f0 $9c
	ldh a, [rAUD3HIGH]                               ; $546a: $f0 $1e
	inc bc                                           ; $546c: $03
	ld [hl], a                                       ; $546d: $77
	ld a, a                                          ; $546e: $7f
	sbc [hl]                                         ; $546f: $9e
	pop hl                                           ; $5470: $e1
	ld e, a                                          ; $5471: $5f
	ret nz                                           ; $5472: $c0

	sbc d                                            ; $5473: $9a
	add e                                            ; $5474: $83
	and $3c                                          ; $5475: $e6 $3c

jr_05c_5477:
	scf                                              ; $5477: $37
	ld h, c                                          ; $5478: $61
	ld h, e                                          ; $5479: $63
	ldh [$9d], a                                     ; $547a: $e0 $9d
	ld hl, sp-$72                                    ; $547c: $f8 $8e
	ld [hl], a                                       ; $547e: $77
	ldh [$9d], a                                     ; $547f: $e0 $9d
	ret nz                                           ; $5481: $c0

	ld [hl], b                                       ; $5482: $70
	ld hl, sp-$72                                    ; $5483: $f8 $8e
	inc c                                            ; $5485: $0c
	sbc h                                            ; $5486: $9c
	db $fd                                           ; $5487: $fd
	ld a, $3f                                        ; $5488: $3e $3f
	rra                                              ; $548a: $1f
	ld a, $00                                        ; $548b: $3e $00
	jr jr_05c_54bf                                   ; $548d: $18 $30

	jr nz, @+$23                                     ; $548f: $20 $21

	inc [hl]                                         ; $5491: $34
	inc a                                            ; $5492: $3c
	dec e                                            ; $5493: $1d
	inc hl                                           ; $5494: $23
	ld b, b                                          ; $5495: $40
	ld [hl], a                                       ; $5496: $77
	ld l, b                                          ; $5497: $68
	ld a, a                                          ; $5498: $7f
	ldh [$9c], a                                     ; $5499: $e0 $9c
	inc e                                            ; $549b: $1c
	ccf                                              ; $549c: $3f
	ld a, a                                          ; $549d: $7f
	sbc $ff                                          ; $549e: $de $ff
	sbc h                                            ; $54a0: $9c
	ccf                                              ; $54a1: $3f
	adc a                                            ; $54a2: $8f
	add b                                            ; $54a3: $80

jr_05c_54a4:
	ld l, a                                          ; $54a4: $6f
	ld l, a                                          ; $54a5: $6f
	sbc c                                            ; $54a6: $99
	inc b                                            ; $54a7: $04
	ld a, a                                          ; $54a8: $7f
	rrca                                             ; $54a9: $0f
	db $e3                                           ; $54aa: $e3
	ld hl, sp-$02                                    ; $54ab: $f8 $fe
	ld a, e                                          ; $54ad: $7b
	ld a, $97                                        ; $54ae: $3e $97
	inc b                                            ; $54b0: $04
	ld [$2010], sp                                   ; $54b1: $08 $10 $20
	add c                                            ; $54b4: $81
	add e                                            ; $54b5: $83
	rlca                                             ; $54b6: $07
	rrca                                             ; $54b7: $0f
	ld a, e                                          ; $54b8: $7b
	dec [hl]                                         ; $54b9: $35
	ld e, a                                          ; $54ba: $5f
	ld e, h                                          ; $54bb: $5c
	ld e, d                                          ; $54bc: $5a
	ret nz                                           ; $54bd: $c0

	sub a                                            ; $54be: $97

jr_05c_54bf:
	ld l, c                                          ; $54bf: $69
	ld l, d                                          ; $54c0: $6a
	ld d, a                                          ; $54c1: $57
	ld d, a                                          ; $54c2: $57
	ld l, [hl]                                       ; $54c3: $6e
	sbc h                                            ; $54c4: $9c
	ld a, [$dbbf]                                    ; $54c5: $fa $bf $db
	rst $38                                          ; $54c8: $ff
	add l                                            ; $54c9: $85
	db $fc                                           ; $54ca: $fc
	rst SubAFromDE                                          ; $54cb: $df
	dec sp                                           ; $54cc: $3b
	sub h                                            ; $54cd: $94
	jr z, jr_05c_5477                                ; $54ce: $28 $a7

	ld b, [hl]                                       ; $54d0: $46
	ldh a, [$6f]                                     ; $54d1: $f0 $6f
	inc bc                                           ; $54d3: $03
	rst $38                                          ; $54d4: $ff
	db $e3                                           ; $54d5: $e3
	rst JumpTable                                          ; $54d6: $c7
	rst GetHLinHL                                          ; $54d7: $cf
	add c                                            ; $54d8: $81
	rst $38                                          ; $54d9: $ff
	rra                                              ; $54da: $1f
	rst $38                                          ; $54db: $ff
	jp $1c07                                         ; $54dc: $c3 $07 $1c


	ld hl, sp+$07                                    ; $54df: $f8 $07
	ld a, h                                          ; $54e1: $7c
	ld hl, sp-$20                                    ; $54e2: $f8 $e0
	call c, $84ff                                    ; $54e4: $dc $ff $84
	ld hl, sp-$40                                    ; $54e7: $f8 $c0
	nop                                              ; $54e9: $00
	ei                                               ; $54ea: $fb
	xor h                                            ; $54eb: $ac
	rst SubAFromDE                                          ; $54ec: $df
	add h                                            ; $54ed: $84
	xor $7b                                          ; $54ee: $ee $7b
	ld a, $0e                                        ; $54f0: $3e $0e
	rst $38                                          ; $54f2: $ff
	rst SubAFromDE                                          ; $54f3: $df
	adc a                                            ; $54f4: $8f
	rst GetHLinHL                                          ; $54f5: $cf
	rst JumpTable                                          ; $54f6: $c7
	daa                                              ; $54f7: $27
	ld bc, $6000                                     ; $54f8: $01 $00 $60
	ldh [$f1], a                                     ; $54fb: $e0 $f1
	ld h, e                                          ; $54fd: $63
	inc [hl]                                         ; $54fe: $34
	sbc b                                            ; $54ff: $98
	db $fc                                           ; $5500: $fc
	cp h                                             ; $5501: $bc
	ld a, d                                          ; $5502: $7a
	jp nc, $fc9e                                     ; $5503: $d2 $9e $fc

	sbc $f8                                          ; $5506: $de $f8
	sbc l                                            ; $5508: $9d
	ld a, h                                          ; $5509: $7c
	jr nz, jr_05c_5587                               ; $550a: $20 $7b

	inc sp                                           ; $550c: $33
	sbc e                                            ; $550d: $9b
	ldh [$38], a                                     ; $550e: $e0 $38
	rrca                                             ; $5510: $0f
	rlca                                             ; $5511: $07
	ld l, d                                          ; $5512: $6a
	pop de                                           ; $5513: $d1
	sub a                                            ; $5514: $97
	inc bc                                           ; $5515: $03
	db $e3                                           ; $5516: $e3
	ld a, $1e                                        ; $5517: $3e $1e
	inc sp                                           ; $5519: $33
	ld h, b                                          ; $551a: $60
	rst $38                                          ; $551b: $ff
	pop af                                           ; $551c: $f1
	ld l, a                                          ; $551d: $6f
	add h                                            ; $551e: $84
	sbc [hl]                                         ; $551f: $9e
	ccf                                              ; $5520: $3f
	ld [hl], e                                       ; $5521: $73
	ld sp, hl                                        ; $5522: $f9
	ld a, a                                          ; $5523: $7f
	ldh [$9c], a                                     ; $5524: $e0 $9c
	jr nc, @-$22                                     ; $5526: $30 $dc

	ld h, a                                          ; $5528: $67
	ei                                               ; $5529: $fb
	sub a                                            ; $552a: $97
	ret nz                                           ; $552b: $c0

	jr nz, @+$75                                     ; $552c: $20 $73

	ld e, $0e                                        ; $552e: $1e $0e
	dec de                                           ; $5530: $1b
	jr nc, jr_05c_5593                               ; $5531: $30 $60

	ld l, e                                          ; $5533: $6b
	jp nc, $e377                                     ; $5534: $d2 $77 $e3

	ld [hl], e                                       ; $5537: $73
	ret nz                                           ; $5538: $c0

	sbc [hl]                                         ; $5539: $9e
	ld c, $77                                        ; $553a: $0e $77
	dec bc                                           ; $553c: $0b
	db $fc                                           ; $553d: $fc
	ld a, a                                          ; $553e: $7f
	ldh [$9d], a                                     ; $553f: $e0 $9d
	rrca                                             ; $5541: $0f
	add hl, de                                       ; $5542: $19
	ld c, e                                          ; $5543: $4b
	ldh [$7b], a                                     ; $5544: $e0 $7b
	inc de                                           ; $5546: $13
	ld [hl], d                                       ; $5547: $72
	adc h                                            ; $5548: $8c
	db $fc                                           ; $5549: $fc
	sbc e                                            ; $554a: $9b
	dec sp                                           ; $554b: $3b
	rrca                                             ; $554c: $0f
	dec c                                            ; $554d: $0d
	jr jr_05c_55cb                                   ; $554e: $18 $7b

	ldh [$9e], a                                     ; $5550: $e0 $9e
	ldh [$f7], a                                     ; $5552: $e0 $f7
	ld d, e                                          ; $5554: $53
	pop hl                                           ; $5555: $e1
	sbc [hl]                                         ; $5556: $9e
	nop                                              ; $5557: $00
	ld a, e                                          ; $5558: $7b
	db $f4                                           ; $5559: $f4
	sbc h                                            ; $555a: $9c
	ld [bc], a                                       ; $555b: $02
	ld [$7210], sp                                   ; $555c: $08 $10 $72
	ret nz                                           ; $555f: $c0

	adc d                                            ; $5560: $8a
	ld bc, $0f07                                     ; $5561: $01 $07 $0f
	rra                                              ; $5564: $1f
	rrca                                             ; $5565: $0f
	ld c, h                                          ; $5566: $4c
	adc h                                            ; $5567: $8c
	add $76                                          ; $5568: $c6 $76
	rra                                              ; $556a: $1f
	rlca                                             ; $556b: $07
	ld bc, $3f01                                     ; $556c: $01 $01 $3f
	ld a, a                                          ; $556f: $7f
	ccf                                              ; $5570: $3f
	adc a                                            ; $5571: $8f
	db $e3                                           ; $5572: $e3
	ei                                               ; $5573: $fb
	rst $38                                          ; $5574: $ff
	rst $38                                          ; $5575: $ff
	ld [hl], d                                       ; $5576: $72
	add c                                            ; $5577: $81
	sbc e                                            ; $5578: $9b
	add c                                            ; $5579: $81
	jp nz, $e1e4                                     ; $557a: $c2 $e4 $e1

	ld [hl], l                                       ; $557d: $75
	xor $92                                          ; $557e: $ee $92
	ld a, [hl]                                       ; $5580: $7e
	cp h                                             ; $5581: $bc
	sbc b                                            ; $5582: $98
	ld [$e090], sp                                   ; $5583: $08 $90 $e0
	ld b, b                                          ; $5586: $40

jr_05c_5587:
	add c                                            ; $5587: $81
	inc bc                                           ; $5588: $03
	rlca                                             ; $5589: $07
	rrca                                             ; $558a: $0f
	ldh a, [$60]                                     ; $558b: $f0 $60
	ld [hl], a                                       ; $558d: $77
	sub l                                            ; $558e: $95
	rst $38                                          ; $558f: $ff
	sub a                                            ; $5590: $97
	ld e, $3c                                        ; $5591: $1e $3c

jr_05c_5593:
	ld a, c                                          ; $5593: $79
	di                                               ; $5594: $f3
	rst SubAFromBC                                          ; $5595: $e7
	rst GetHLinHL                                          ; $5596: $cf
	sbc a                                            ; $5597: $9f
	ccf                                              ; $5598: $3f
	ld a, d                                          ; $5599: $7a
	ld [$0c9e], sp                                   ; $559a: $08 $9e $0c
	ld [hl], a                                       ; $559d: $77
	sub a                                            ; $559e: $97
	call c, $5a01                                    ; $559f: $dc $01 $5a
	ret nz                                           ; $55a2: $c0

	add a                                            ; $55a3: $87
	ld e, a                                          ; $55a4: $5f
	ld a, [hl]                                       ; $55a5: $7e
	sbc a                                            ; $55a6: $9f
	or l                                             ; $55a7: $b5
	sbc $dd                                          ; $55a8: $de $dd
	jp c, $ff53                                      ; $55aa: $da $53 $ff

	rst GetHLinHL                                          ; $55ad: $cf
	rst $38                                          ; $55ae: $ff
	cp $f6                                           ; $55af: $fe $f6
	rst FarCall                                          ; $55b1: $f7
	rst FarCall                                          ; $55b2: $f7
	rst $38                                          ; $55b3: $ff
	db $fc                                           ; $55b4: $fc
	and a                                            ; $55b5: $a7
	ld sp, hl                                        ; $55b6: $f9
	ld a, a                                          ; $55b7: $7f
	xor l                                            ; $55b8: $ad
	ld d, a                                          ; $55b9: $57
	call z, Call_05c_7a3f                            ; $55ba: $cc $3f $7a
	push bc                                          ; $55bd: $c5
	sbc e                                            ; $55be: $9b
	ldh [c], a                                       ; $55bf: $e2
	ld [hl], d                                       ; $55c0: $72
	cp b                                             ; $55c1: $b8
	rst $38                                          ; $55c2: $ff
	sbc $f0                                          ; $55c3: $de $f0
	adc c                                            ; $55c5: $89
	ldh [$98], a                                     ; $55c6: $e0 $98
	and $5f                                          ; $55c8: $e6 $5f
	rst $38                                          ; $55ca: $ff

jr_05c_55cb:
	rst GetHLinHL                                          ; $55cb: $cf
	add b                                            ; $55cc: $80
	ldh a, [$f0]                                     ; $55cd: $f0 $f0
	cp b                                             ; $55cf: $b8
	ld hl, sp-$50                                    ; $55d0: $f8 $b0
	nop                                              ; $55d2: $00
	nop                                              ; $55d3: $00
	ld b, $07                                        ; $55d4: $06 $07
	inc bc                                           ; $55d6: $03
	inc bc                                           ; $55d7: $03
	ld bc, $8203                                     ; $55d8: $01 $03 $82
	rst JumpTable                                          ; $55db: $c7
	db $fd                                           ; $55dc: $fd
	rst SubAFromDE                                          ; $55dd: $df
	ld [bc], a                                       ; $55de: $02
	rst SubAFromDE                                          ; $55df: $df
	inc bc                                           ; $55e0: $03
	sbc [hl]                                         ; $55e1: $9e
	cpl                                              ; $55e2: $2f
	ld a, e                                          ; $55e3: $7b
	add b                                            ; $55e4: $80
	sbc d                                            ; $55e5: $9a
	add b                                            ; $55e6: $80
	db $fc                                           ; $55e7: $fc
	ret nc                                           ; $55e8: $d0

	ld b, b                                          ; $55e9: $40
	rra                                              ; $55ea: $1f
	db $fc                                           ; $55eb: $fc
	sbc c                                            ; $55ec: $99
	ldh [$80], a                                     ; $55ed: $e0 $80
	adc l                                            ; $55ef: $8d
	ld [hl], a                                       ; $55f0: $77
	ld a, $06                                        ; $55f1: $3e $06
	db $fd                                           ; $55f3: $fd
	sbc l                                            ; $55f4: $9d
	adc [hl]                                         ; $55f5: $8e
	ld hl, sp+$63                                    ; $55f6: $f8 $63
	db $10                                           ; $55f8: $10
	db $f4                                           ; $55f9: $f4
	sbc e                                            ; $55fa: $9b
	inc sp                                           ; $55fb: $33
	ld e, $0c                                        ; $55fc: $1e $0c
	rlca                                             ; $55fe: $07
	sbc $06                                          ; $55ff: $de $06
	sbc e                                            ; $5601: $9b
	inc b                                            ; $5602: $04
	db $10                                           ; $5603: $10
	ld [$dd04], sp                                   ; $5604: $08 $04 $dd
	inc bc                                           ; $5607: $03
	sbc [hl]                                         ; $5608: $9e
	rlca                                             ; $5609: $07
	ld a, d                                          ; $560a: $7a
	db $d3                                           ; $560b: $d3
	sbc d                                            ; $560c: $9a
	inc c                                            ; $560d: $0c
	add a                                            ; $560e: $87
	ld b, c                                          ; $560f: $41
	jr nz, jr_05c_5623                               ; $5610: $20 $11

	ld l, l                                          ; $5612: $6d
	add hl, sp                                       ; $5613: $39
	sbc l                                            ; $5614: $9d
	ldh [$f0], a                                     ; $5615: $e0 $f0
	ld [hl], e                                       ; $5617: $73
	ld e, c                                          ; $5618: $59
	ld a, a                                          ; $5619: $7f
	ld sp, hl                                        ; $561a: $f9
	sbc [hl]                                         ; $561b: $9e
	sbc h                                            ; $561c: $9c
	ld sp, hl                                        ; $561d: $f9
	ld l, [hl]                                       ; $561e: $6e
	or h                                             ; $561f: $b4
	ld a, a                                          ; $5620: $7f
	adc [hl]                                         ; $5621: $8e
	ld sp, hl                                        ; $5622: $f9

jr_05c_5623:
	sbc d                                            ; $5623: $9a
	inc bc                                           ; $5624: $03
	ld c, $18                                        ; $5625: $0e $18
	or b                                             ; $5627: $b0
	ldh [$6d], a                                     ; $5628: $e0 $6d
	xor e                                            ; $562a: $ab
	db $fc                                           ; $562b: $fc
	ld l, d                                          ; $562c: $6a
	sub l                                            ; $562d: $95
	ld e, e                                          ; $562e: $5b
	sbc c                                            ; $562f: $99
	ld a, a                                          ; $5630: $7f
	xor [hl]                                         ; $5631: $ae
	sbc e                                            ; $5632: $9b
	inc a                                            ; $5633: $3c
	daa                                              ; $5634: $27
	ld b, c                                          ; $5635: $41
	add b                                            ; $5636: $80
	ld a, e                                          ; $5637: $7b
	call Call_05c_567f                               ; $5638: $cd $7f $56
	sbc h                                            ; $563b: $9c
	jr jr_05c_567c                                   ; $563c: $18 $3e

	ld a, a                                          ; $563e: $7f
	ld l, c                                          ; $563f: $69
	ld hl, $719e                                     ; $5640: $21 $9e $71
	ld [hl], l                                       ; $5643: $75
	or d                                             ; $5644: $b2
	ld a, c                                          ; $5645: $79
	and b                                            ; $5646: $a0
	sbc h                                            ; $5647: $9c
	adc [hl]                                         ; $5648: $8e
	ld bc, $7a01                                     ; $5649: $01 $01 $7a
	and b                                            ; $564c: $a0
	sbc d                                            ; $564d: $9a
	ld b, $a8                                        ; $564e: $06 $a8
	ld e, b                                          ; $5650: $58
	cp $fe                                           ; $5651: $fe $fe
	ld a, d                                          ; $5653: $7a

jr_05c_5654:
	ret nz                                           ; $5654: $c0

	sub l                                            ; $5655: $95
	ld hl, sp+$54                                    ; $5656: $f8 $54
	and b                                            ; $5658: $a0
	jr nc, jr_05c_56cb                               ; $5659: $30 $70

	or b                                             ; $565b: $b0
	ld e, c                                          ; $565c: $59
	adc l                                            ; $565d: $8d
	inc bc                                           ; $565e: $03
	ld c, $7b                                        ; $565f: $0e $7b
	ld b, c                                          ; $5661: $41
	sbc h                                            ; $5662: $9c
	jr nc, @-$66                                     ; $5663: $30 $98

	ld c, $7b                                        ; $5665: $0e $7b
	call nc, $d072                                   ; $5667: $d4 $72 $d0
	sbc h                                            ; $566a: $9c
	ld c, a                                          ; $566b: $4f
	rst AddAOntoHL                                          ; $566c: $ef
	rra                                              ; $566d: $1f
	ld [hl], d                                       ; $566e: $72
	ret nc                                           ; $566f: $d0

	sbc h                                            ; $5670: $9c
	or b                                             ; $5671: $b0
	ldh a, [$fe]                                     ; $5672: $f0 $fe

jr_05c_5674:
	ld [hl], l                                       ; $5674: $75
	ld l, d                                          ; $5675: $6a
	db $dd                                           ; $5676: $dd
	rst $38                                          ; $5677: $ff
	ld b, a                                          ; $5678: $47
	jr c, jr_05c_5654                                ; $5679: $38 $d9

	rst $38                                          ; $567b: $ff

jr_05c_567c:
	sbc d                                            ; $567c: $9a
	inc sp                                           ; $567d: $33
	ld [de], a                                       ; $567e: $12

Call_05c_567f:
	ld a, [bc]                                       ; $567f: $0a
	dec b                                            ; $5680: $05
	inc bc                                           ; $5681: $03
	ld a, e                                          ; $5682: $7b
	sbc l                                            ; $5683: $9d
	reti                                             ; $5684: $d9


	rst $38                                          ; $5685: $ff
	sub l                                            ; $5686: $95
	add a                                            ; $5687: $87
	rst $38                                          ; $5688: $ff
	adc $63                                          ; $5689: $ce $63
	inc a                                            ; $568b: $3c
	sbc a                                            ; $568c: $9f
	push bc                                          ; $568d: $c5
	ccf                                              ; $568e: $3f
	cp $f9                                           ; $568f: $fe $f9
	ld [hl], b                                       ; $5691: $70
	ld a, [hl]                                       ; $5692: $7e
	ld a, a                                          ; $5693: $7f
	ldh a, [$8d]                                     ; $5694: $f0 $8d
	db $ed                                           ; $5696: $ed
	ld [hl], l                                       ; $5697: $75
	cp a                                             ; $5698: $bf
	xor $ff                                          ; $5699: $ee $ff
	ld a, [hl-]                                      ; $569b: $3a
	ld c, $00                                        ; $569c: $0e $00
	jp nz, $c1fa                                     ; $569e: $c2 $fa $c1

	di                                               ; $56a1: $f3
	cp $02                                           ; $56a2: $fe $02
	jp nz, $e8fd                                     ; $56a4: $c2 $fd $e8

	and b                                            ; $56a7: $a0
	ld l, [hl]                                       ; $56a8: $6e
	ld l, b                                          ; $56a9: $68
	sbc [hl]                                         ; $56aa: $9e
	ld [hl], b                                       ; $56ab: $70
	ld d, c                                          ; $56ac: $51
	ld sp, $9de3                                     ; $56ad: $31 $e3 $9d
	inc b                                            ; $56b0: $04
	ld b, $72                                        ; $56b1: $06 $72
	xor h                                            ; $56b3: $ac
	db $fd                                           ; $56b4: $fd
	add b                                            ; $56b5: $80
	dec b                                            ; $56b6: $05
	dec bc                                           ; $56b7: $0b
	ld c, $16                                        ; $56b8: $0e $16
	inc e                                            ; $56ba: $1c
	dec l                                            ; $56bb: $2d
	ld e, a                                          ; $56bc: $5f
	ld e, a                                          ; $56bd: $5f
	ld b, $0c                                        ; $56be: $06 $0c
	add hl, bc                                       ; $56c0: $09
	add hl, de                                       ; $56c1: $19
	inc de                                           ; $56c2: $13
	ld [hl-], a                                      ; $56c3: $32
	ld h, b                                          ; $56c4: $60
	ld h, b                                          ; $56c5: $60
	dec bc                                           ; $56c6: $0b
	ld b, $26                                        ; $56c7: $06 $26
	ld h, l                                          ; $56c9: $65
	db $eb                                           ; $56ca: $eb

jr_05c_56cb:
	set 2, a                                         ; $56cb: $cb $d7
	sub a                                            ; $56cd: $97
	ld hl, sp-$04                                    ; $56ce: $f8 $fc
	sbc $9f                                          ; $56d0: $de $9f
	dec e                                            ; $56d2: $1d
	inc a                                            ; $56d3: $3c
	jr c, jr_05c_5674                                ; $56d4: $38 $9e

	ld a, b                                          ; $56d6: $78
	ld [hl], e                                       ; $56d7: $73
	ld de, $809c                                     ; $56d8: $11 $9c $80
	ld b, c                                          ; $56db: $41
	ld a, a                                          ; $56dc: $7f
	ld l, [hl]                                       ; $56dd: $6e
	push af                                          ; $56de: $f5
	sbc e                                            ; $56df: $9b
	ret nz                                           ; $56e0: $c0

	cp $06                                           ; $56e1: $fe $06
	call z, $3274                                    ; $56e3: $cc $74 $32
	ld c, e                                          ; $56e6: $4b
	ld b, d                                          ; $56e7: $42
	ld a, d                                          ; $56e8: $7a
	db $fd                                           ; $56e9: $fd
	ld sp, hl                                        ; $56ea: $f9
	sbc l                                            ; $56eb: $9d
	pop bc                                           ; $56ec: $c1
	ld [hl], b                                       ; $56ed: $70
	ld a, c                                          ; $56ee: $79
	cp [hl]                                          ; $56ef: $be
	ld a, h                                          ; $56f0: $7c
	ld a, h                                          ; $56f1: $7c
	ld a, a                                          ; $56f2: $7f
	rst SubAFromDE                                          ; $56f3: $df
	ld a, a                                          ; $56f4: $7f
	dec sp                                           ; $56f5: $3b
	sbc e                                            ; $56f6: $9b
	inc c                                            ; $56f7: $0c
	rra                                              ; $56f8: $1f
	ccf                                              ; $56f9: $3f
	ld a, a                                          ; $56fa: $7f
	ld [hl], a                                       ; $56fb: $77
	ret z                                            ; $56fc: $c8

	sbc d                                            ; $56fd: $9a
	add b                                            ; $56fe: $80
	pop bc                                           ; $56ff: $c1
	ld [hl-], a                                      ; $5700: $32
	add hl, de                                       ; $5701: $19
	ld l, $de                                        ; $5702: $2e $de
	rst $38                                          ; $5704: $ff
	add l                                            ; $5705: $85
	ld a, a                                          ; $5706: $7f
	ld a, $cd                                        ; $5707: $3e $cd
	and $d1                                          ; $5709: $e6 $d1
	inc e                                            ; $570b: $1c
	ld c, $57                                        ; $570c: $0e $57
	dec l                                            ; $570e: $2d
	ld d, [hl]                                       ; $570f: $56
	cp d                                             ; $5710: $ba
	ld d, h                                          ; $5711: $54
	and b                                            ; $5712: $a0
	db $e3                                           ; $5713: $e3
	ldh a, [$a8]                                     ; $5714: $f0 $a8
	ret nc                                           ; $5716: $d0

	xor b                                            ; $5717: $a8
	ld b, b                                          ; $5718: $40
	and b                                            ; $5719: $a0
	ld b, b                                          ; $571a: $40
	or b                                             ; $571b: $b0

jr_05c_571c:
	ret nz                                           ; $571c: $c0

	nop                                              ; $571d: $00
	add c                                            ; $571e: $81
	ld [bc], a                                       ; $571f: $02
	ld a, d                                          ; $5720: $7a
	ld l, a                                          ; $5721: $6f
	sbc [hl]                                         ; $5722: $9e
	ld b, b                                          ; $5723: $40
	ld a, [$3e97]                                    ; $5724: $fa $97 $3e
	ld a, h                                          ; $5727: $7c
	ret                                              ; $5728: $c9


	or c                                             ; $5729: $b1
	ld b, e                                          ; $572a: $43
	rst JumpTable                                          ; $572b: $c7

jr_05c_572c:
	adc e                                            ; $572c: $8b
	add l                                            ; $572d: $85
	ld l, c                                          ; $572e: $69
	and b                                            ; $572f: $a0
	sub d                                            ; $5730: $92
	nop                                              ; $5731: $00
	ld a, l                                          ; $5732: $7d
	sbc a                                            ; $5733: $9f
	db $e3                                           ; $5734: $e3
	cp c                                             ; $5735: $b9
	sub $aa                                          ; $5736: $d6 $aa
	push de                                          ; $5738: $d5
	ld [$6083], a                                    ; $5739: $ea $83 $60
	inc e                                            ; $573c: $1c
	ld b, $77                                        ; $573d: $06 $77
	ld [hl], l                                       ; $573f: $75
	sub b                                            ; $5740: $90
	rst SubAFromDE                                          ; $5741: $df
	cp e                                             ; $5742: $bb
	halt                                             ; $5743: $76
	call $9867                                       ; $5744: $cd $67 $98
	ld h, [hl]                                       ; $5747: $66
	cp c                                             ; $5748: $b9
	ldh [$7c], a                                     ; $5749: $e0 $7c
	rrca                                             ; $574b: $0f
	inc bc                                           ; $574c: $03
	add b                                            ; $574d: $80
	ld h, b                                          ; $574e: $60
	jr jr_05c_57b4                                   ; $574f: $18 $63

	jr c, jr_05c_572c                                ; $5751: $38 $d9

	rst $38                                          ; $5753: $ff
	db $fc                                           ; $5754: $fc
	ld a, l                                          ; $5755: $7d
	dec e                                            ; $5756: $1d
	sbc [hl]                                         ; $5757: $9e
	ld b, $dc                                        ; $5758: $06 $dc
	rst $38                                          ; $575a: $ff
	ld a, b                                          ; $575b: $78
	ld a, l                                          ; $575c: $7d
	sbc e                                            ; $575d: $9b
	inc c                                            ; $575e: $0c
	ld [$261c], sp                                   ; $575f: $08 $1c $26
	ld [hl], a                                       ; $5762: $77
	ret z                                            ; $5763: $c8

	sbc h                                            ; $5764: $9c
	ld hl, sp-$10                                    ; $5765: $f8 $f0
	ldh [rSVBK], a                                   ; $5767: $e0 $70
	res 2, l                                         ; $5769: $cb $95
	ld b, $02                                        ; $576b: $06 $02
	inc bc                                           ; $576d: $03
	rlca                                             ; $576e: $07
	adc l                                            ; $576f: $8d
	ret c                                            ; $5770: $d8

	ld [hl], b                                       ; $5771: $70
	ld hl, sp+$02                                    ; $5772: $f8 $02
	ld [bc], a                                       ; $5774: $02
	ld l, l                                          ; $5775: $6d
	ld c, b                                          ; $5776: $48
	ld [hl], c                                       ; $5777: $71
	jp c, $f89d                                      ; $5778: $da $9d $f8

	rst $38                                          ; $577b: $ff
	ld l, e                                          ; $577c: $6b
	jr nz, jr_05c_571c                               ; $577d: $20 $9d

	add b                                            ; $577f: $80
	ld b, b                                          ; $5780: $40
	ld l, e                                          ; $5781: $6b
	db $eb                                           ; $5782: $eb
	ld h, d                                          ; $5783: $62
	or e                                             ; $5784: $b3
	ld a, e                                          ; $5785: $7b
	ldh [c], a                                       ; $5786: $e2
	sbc d                                            ; $5787: $9a
	ld [hl], b                                       ; $5788: $70
	inc a                                            ; $5789: $3c
	ccf                                              ; $578a: $3f
	rra                                              ; $578b: $1f
	rrca                                             ; $578c: $0f
	ld a, e                                          ; $578d: $7b
	or $9d                                           ; $578e: $f6 $9d
	ld b, b                                          ; $5790: $40
	jr nz, jr_05c_580c                               ; $5791: $20 $79

	sbc e                                            ; $5793: $9b
	sbc $07                                          ; $5794: $de $07
	sbc l                                            ; $5796: $9d
	ld c, $1c                                        ; $5797: $0e $1c
	ld a, e                                          ; $5799: $7b
	or e                                             ; $579a: $b3
	ld [hl], l                                       ; $579b: $75
	cp h                                             ; $579c: $bc
	ld a, b                                          ; $579d: $78
	ret nz                                           ; $579e: $c0

	add b                                            ; $579f: $80
	ccf                                              ; $57a0: $3f
	cp a                                             ; $57a1: $bf
	cp a                                             ; $57a2: $bf
	ld a, $7c                                        ; $57a3: $3e $7c
	ld a, c                                          ; $57a5: $79
	di                                               ; $57a6: $f3
	rst $38                                          ; $57a7: $ff
	cp $c0                                           ; $57a8: $fe $c0
	ret nz                                           ; $57aa: $c0

	pop bc                                           ; $57ab: $c1
	add e                                            ; $57ac: $83
	add [hl]                                         ; $57ad: $86

Jump_05c_57ae:
	inc c                                            ; $57ae: $0c
	nop                                              ; $57af: $00
	ld bc, $5e2f                                     ; $57b0: $01 $2f $5e
	dec a                                            ; $57b3: $3d

jr_05c_57b4:
	ld a, [$c3f1]                                    ; $57b4: $fa $f1 $c3
	adc a                                            ; $57b7: $8f
	dec a                                            ; $57b8: $3d
	ldh a, [$e1]                                     ; $57b9: $f0 $e1
	jp $0e07                                         ; $57bb: $c3 $07 $0e


	inc a                                            ; $57be: $3c
	sub d                                            ; $57bf: $92
	ld [hl], b                                       ; $57c0: $70
	jp $b85d                                         ; $57c1: $c3 $5d $b8


	ld [hl], c                                       ; $57c4: $71
	ldh [c], a                                       ; $57c5: $e2
	call z, Call_05c_6190                            ; $57c6: $cc $90 $61
	add e                                            ; $57c9: $83
	db $e3                                           ; $57ca: $e3
	rst JumpTable                                          ; $57cb: $c7
	adc a                                            ; $57cc: $8f
	ld a, d                                          ; $57cd: $7a
	pop af                                           ; $57ce: $f1
	ld a, a                                          ; $57cf: $7f
	ld l, a                                          ; $57d0: $6f
	ld a, a                                          ; $57d1: $7f
	ld d, a                                          ; $57d2: $57
	ld a, h                                          ; $57d3: $7c
	call nz, Call_05c_7793                           ; $57d4: $c4 $93 $77
	rst SubAFromBC                                          ; $57d7: $e7
	rst AddAOntoHL                                          ; $57d8: $ef
	rst GetHLinHL                                          ; $57d9: $cf
	nop                                              ; $57da: $00
	rst $38                                          ; $57db: $ff
	ldh [$c0], a                                     ; $57dc: $e0 $c0
	adc b                                            ; $57de: $88
	jr jr_05c_57f1                                   ; $57df: $18 $10

	jr nc, jr_05c_5852                               ; $57e1: $30 $6f

	ld d, a                                          ; $57e3: $57
	rst SubAFromDE                                          ; $57e4: $df
	rst $38                                          ; $57e5: $ff
	sbc [hl]                                         ; $57e6: $9e
	ld bc, $466f                                     ; $57e7: $01 $6f $46
	ld a, a                                          ; $57ea: $7f
	add a                                            ; $57eb: $87
	ld a, e                                          ; $57ec: $7b
	ld [hl], e                                       ; $57ed: $73
	db $dd                                           ; $57ee: $dd
	rst $38                                          ; $57ef: $ff
	sbc e                                            ; $57f0: $9b

jr_05c_57f1:
	ccf                                              ; $57f1: $3f
	rst SubAFromDE                                          ; $57f2: $df
	ccf                                              ; $57f3: $3f
	rlca                                             ; $57f4: $07
	db $fd                                           ; $57f5: $fd
	adc [hl]                                         ; $57f6: $8e
	ld d, a                                          ; $57f7: $57
	xor c                                            ; $57f8: $a9
	ld d, [hl]                                       ; $57f9: $56
	xor d                                            ; $57fa: $aa
	sub $fc                                          ; $57fb: $d6 $fc
	db $fc                                           ; $57fd: $fc
	cp $a8                                           ; $57fe: $fe $a8
	ld d, h                                          ; $5800: $54
	xor b                                            ; $5801: $a8
	ld d, h                                          ; $5802: $54
	add sp, $30                                      ; $5803: $e8 $30
	ld [$e004], sp                                   ; $5805: $08 $04 $e0
	ld a, d                                          ; $5808: $7a
	and l                                            ; $5809: $a5
	sbc e                                            ; $580a: $9b
	inc b                                            ; $580b: $04

jr_05c_580c:
	dec d                                            ; $580c: $15
	ld a, [hl+]                                      ; $580d: $2a
	ld [hl], $fa                                     ; $580e: $36 $fa
	ld l, a                                          ; $5810: $6f
	ld d, d                                          ; $5811: $52
	ld a, [hl]                                       ; $5812: $7e
	sub b                                            ; $5813: $90
	ld hl, sp-$65                                    ; $5814: $f8 $9b
	dec bc                                           ; $5816: $0b
	rlca                                             ; $5817: $07
	dec bc                                           ; $5818: $0b
	dec b                                            ; $5819: $05
	ld a, c                                          ; $581a: $79
	ld d, [hl]                                       ; $581b: $56
	sbc [hl]                                         ; $581c: $9e
	dec b                                            ; $581d: $05
	ld sp, hl                                        ; $581e: $f9
	sub a                                            ; $581f: $97
	push de                                          ; $5820: $d5
	xor d                                            ; $5821: $aa
	ret nc                                           ; $5822: $d0

	push hl                                          ; $5823: $e5
	ret nc                                           ; $5824: $d0

	and h                                            ; $5825: $a4
	pop de                                           ; $5826: $d1
	db $e4                                           ; $5827: $e4
	ld sp, hl                                        ; $5828: $f9
	sub a                                            ; $5829: $97
	ld a, [hl]                                       ; $582a: $7e
	ld e, a                                          ; $582b: $5f
	xor a                                            ; $582c: $af
	ld d, a                                          ; $582d: $57
	xor a                                            ; $582e: $af
	ld d, a                                          ; $582f: $57
	cpl                                              ; $5830: $2f
	ld d, a                                          ; $5831: $57
	ld l, a                                          ; $5832: $6f
	rst JumpTable                                          ; $5833: $c7
	ld l, e                                          ; $5834: $6b
	cp e                                             ; $5835: $bb
	ld a, c                                          ; $5836: $79
	adc a                                            ; $5837: $8f
	ld l, d                                          ; $5838: $6a
	pop de                                           ; $5839: $d1
	sbc h                                            ; $583a: $9c
	ldh a, [$0b]                                     ; $583b: $f0 $0b
	ld de, $b377                                     ; $583d: $11 $77 $b3
	ld a, [hl]                                       ; $5840: $7e
	ld c, l                                          ; $5841: $4d
	ld a, a                                          ; $5842: $7f
	ld e, $6f                                        ; $5843: $1e $6f
	xor h                                            ; $5845: $ac
	sub a                                            ; $5846: $97
	ld bc, $c683                                     ; $5847: $01 $83 $c6
	ld l, h                                          ; $584a: $6c
	jr c, jr_05c_5889                                ; $584b: $38 $3c

	and $83                                          ; $584d: $e6 $83
	ld sp, hl                                        ; $584f: $f9
	sub a                                            ; $5850: $97
	adc h                                            ; $5851: $8c

jr_05c_5852:
	ld b, $03                                        ; $5852: $06 $03
	ld bc, $0201                                     ; $5854: $01 $01 $02
	dec b                                            ; $5857: $05
	ld a, [bc]                                       ; $5858: $0a
	ld l, d                                          ; $5859: $6a
	sbc b                                            ; $585a: $98
	adc d                                            ; $585b: $8a
	dec b                                            ; $585c: $05
	ccf                                              ; $585d: $3f
	ccf                                              ; $585e: $3f
	ld e, a                                          ; $585f: $5f
	xor a                                            ; $5860: $af
	ld d, e                                          ; $5861: $53
	and b                                            ; $5862: $a0
	ld b, b                                          ; $5863: $40
	add c                                            ; $5864: $81
	jr nz, jr_05c_5877                               ; $5865: $20 $10

	jr z, jr_05c_58bd                                ; $5867: $28 $54

	xor a                                            ; $5869: $af
	ld e, a                                          ; $586a: $5f
	cp a                                             ; $586b: $bf
	ld a, a                                          ; $586c: $7f
	ldh a, [$f8]                                     ; $586d: $f0 $f8
	db $fc                                           ; $586f: $fc
	cp $74                                           ; $5870: $fe $74
	and $6a                                          ; $5872: $e6 $6a
	jp $209d                                         ; $5874: $c3 $9d $20


jr_05c_5877:
	rlca                                             ; $5877: $07
	ld [hl], l                                       ; $5878: $75
	inc sp                                           ; $5879: $33
	ld a, e                                          ; $587a: $7b
	rst FarCall                                          ; $587b: $f7
	ld a, [hl]                                       ; $587c: $7e
	sub c                                            ; $587d: $91
	ld l, c                                          ; $587e: $69
	ldh [$98], a                                     ; $587f: $e0 $98
	inc bc                                           ; $5881: $03
	add a                                            ; $5882: $87
	adc $79                                          ; $5883: $ce $79
	scf                                              ; $5885: $37
	ld e, $04                                        ; $5886: $1e $04
	ld a, e                                          ; $5888: $7b

jr_05c_5889:
	sub h                                            ; $5889: $94
	sbc b                                            ; $588a: $98
	ld [hl], c                                       ; $588b: $71
	ld h, $18                                        ; $588c: $26 $18
	add hl, bc                                       ; $588e: $09
	rrca                                             ; $588f: $0f
	ld hl, sp-$1d                                    ; $5890: $f8 $e3
	ld a, d                                          ; $5892: $7a
	call nc, $8380                                   ; $5893: $d4 $80 $83
	rra                                              ; $5896: $1f
	ld a, a                                          ; $5897: $7f
	rlca                                             ; $5898: $07
	inc e                                            ; $5899: $1c
	ld [hl], b                                       ; $589a: $70
	jp Jump_05c_7c0f                                 ; $589b: $c3 $0f $7c


	ldh [$80], a                                     ; $589e: $e0 $80
	ldh a, [c]                                       ; $58a0: $f2
	call $be77                                       ; $58a1: $cd $77 $be
	db $fc                                           ; $58a4: $fc
	pop af                                           ; $58a5: $f1
	rst JumpTable                                          ; $58a6: $c7
	cp a                                             ; $58a7: $bf
	rrca                                             ; $58a8: $0f
	ld a, $f8                                        ; $58a9: $3e $f8
	pop bc                                           ; $58ab: $c1
	inc bc                                           ; $58ac: $03
	ld c, $38                                        ; $58ad: $0e $38
	ld b, b                                          ; $58af: $40
	ld b, a                                          ; $58b0: $47
	adc a                                            ; $58b1: $8f
	ld e, $3c                                        ; $58b2: $1e $3c
	sbc c                                            ; $58b4: $99
	ld hl, sp-$0d                                    ; $58b5: $f8 $f3
	rst $38                                          ; $58b7: $ff
	rst $38                                          ; $58b8: $ff
	cp b                                             ; $58b9: $b8
	ld [hl], b                                       ; $58ba: $70
	ld a, d                                          ; $58bb: $7a
	xor a                                            ; $58bc: $af

jr_05c_58bd:
	ld a, [hl]                                       ; $58bd: $7e
	and b                                            ; $58be: $a0
	sbc [hl]                                         ; $58bf: $9e
	nop                                              ; $58c0: $00
	halt                                             ; $58c1: $76
	cp d                                             ; $58c2: $ba
	db $dd                                           ; $58c3: $dd
	rst $38                                          ; $58c4: $ff
	sbc [hl]                                         ; $58c5: $9e
	ld [hl], b                                       ; $58c6: $70
	ld l, [hl]                                       ; $58c7: $6e
	ld sp, $0866                                     ; $58c8: $31 $66 $08
	sbc [hl]                                         ; $58cb: $9e
	cp $67                                           ; $58cc: $fe $67
	dec [hl]                                         ; $58ce: $35
	ld a, h                                          ; $58cf: $7c
	ret c                                            ; $58d0: $d8

	add b                                            ; $58d1: $80
	push af                                          ; $58d2: $f5
	jp nz, $08d0                                     ; $58d3: $c2 $d0 $08

	dec d                                            ; $58d6: $15
	ld [hl+], a                                      ; $58d7: $22
	ld bc, $0a06                                     ; $58d8: $01 $06 $0a
	dec a                                            ; $58db: $3d
	cpl                                              ; $58dc: $2f
	rst FarCall                                          ; $58dd: $f7
	ld [$8fdd], a                                    ; $58de: $ea $dd $8f
	ld d, a                                          ; $58e1: $57
	ld c, e                                          ; $58e2: $4b
	ld [bc], a                                       ; $58e3: $02
	xor c                                            ; $58e4: $a9
	inc b                                            ; $58e5: $04
	ld d, d                                          ; $58e6: $52
	ld de, $a972                                     ; $58e7: $11 $72 $a9
	or h                                             ; $58ea: $b4
	db $fd                                           ; $58eb: $fd
	ld d, [hl]                                       ; $58ec: $56
	ei                                               ; $58ed: $fb
	xor l                                            ; $58ee: $ad
	xor $6c                                          ; $58ef: $ee $6c
	ld a, a                                          ; $58f1: $7f
	dec e                                            ; $58f2: $1d
	sub d                                            ; $58f3: $92
	ld h, b                                          ; $58f4: $60
	jr nc, jr_05c_596f                               ; $58f5: $30 $78

	add [hl]                                         ; $58f7: $86

jr_05c_58f8:
	add hl, de                                       ; $58f8: $19
	inc bc                                           ; $58f9: $03
	ld b, $8c                                        ; $58fa: $06 $8c
	ret c                                            ; $58fc: $d8

	ldh a, [$b8]                                     ; $58fd: $f0 $b8
	ld a, [hl]                                       ; $58ff: $7e
	rst SubAFromBC                                          ; $5900: $e7
	pop af                                           ; $5901: $f1
	halt                                             ; $5902: $76
	call nz, Call_05c_4d7f                           ; $5903: $c4 $7f $4d
	ld [hl], e                                       ; $5906: $73
	ld c, e                                          ; $5907: $4b

jr_05c_5908:
	db $fc                                           ; $5908: $fc
	sub a                                            ; $5909: $97
	ld d, b                                          ; $590a: $50
	and c                                            ; $590b: $a1
	ld b, b                                          ; $590c: $40
	and b                                            ; $590d: $a0
	pop bc                                           ; $590e: $c1
	and b                                            ; $590f: $a0
	ret nz                                           ; $5910: $c0

	ld b, c                                          ; $5911: $41
	ld h, d                                          ; $5912: $62
	and b                                            ; $5913: $a0
	sbc l                                            ; $5914: $9d
	rla                                              ; $5915: $17
	ld c, e                                          ; $5916: $4b
	ld [hl], e                                       ; $5917: $73
	cp $f9                                           ; $5918: $fe $f9
	sub a                                            ; $591a: $97
	jr nz, jr_05c_595d                               ; $591b: $20 $40

	add b                                            ; $591d: $80
	ret nz                                           ; $591e: $c0

	ld h, b                                          ; $591f: $60
	jr nz, jr_05c_5953                               ; $5920: $20 $31

	dec de                                           ; $5922: $1b
	ld l, a                                          ; $5923: $6f
	ld [hl], d                                       ; $5924: $72
	rst $38                                          ; $5925: $ff
	sbc b                                            ; $5926: $98
	ld h, e                                          ; $5927: $63
	ld a, $18                                        ; $5928: $3e $18
	inc a                                            ; $592a: $3c
	ld h, [hl]                                       ; $592b: $66
	jp Jump_05c_5e81                                 ; $592c: $c3 $81 $5e


	and h                                            ; $592f: $a4
	ld [hl], c                                       ; $5930: $71
	rst SubAFromHL                                          ; $5931: $d7
	sbc l                                            ; $5932: $9d
	adc a                                            ; $5933: $8f
	sbc $67                                          ; $5934: $de $67
	pop af                                           ; $5936: $f1
	sbc [hl]                                         ; $5937: $9e
	or l                                             ; $5938: $b5
	ld a, d                                          ; $5939: $7a
	sbc h                                            ; $593a: $9c
	sbc d                                            ; $593b: $9a
	ret nz                                           ; $593c: $c0

	add e                                            ; $593d: $83
	rlca                                             ; $593e: $07
	inc e                                            ; $593f: $1c
	ld a, [bc]                                       ; $5940: $0a
	ld a, c                                          ; $5941: $79
	jp nz, $367f                                     ; $5942: $c2 $7f $36

	ld a, a                                          ; $5945: $7f
	di                                               ; $5946: $f3
	ld a, a                                          ; $5947: $7f
	db $e3                                           ; $5948: $e3
	ld a, a                                          ; $5949: $7f
	rst FarCall                                          ; $594a: $f7
	sub h                                            ; $594b: $94
	rlca                                             ; $594c: $07
	db $e3                                           ; $594d: $e3
	ccf                                              ; $594e: $3f
	inc bc                                           ; $594f: $03
	rst $38                                          ; $5950: $ff
	cp $fe                                           ; $5951: $fe $fe

jr_05c_5953:
	db $fd                                           ; $5953: $fd
	db $fc                                           ; $5954: $fc
	rst $38                                          ; $5955: $ff
	rra                                              ; $5956: $1f
	ld [hl], e                                       ; $5957: $73
	jr nc, jr_05c_58f8                               ; $5958: $30 $9e

	rst AddAOntoHL                                          ; $595a: $ef
	sbc $ff                                          ; $595b: $de $ff

jr_05c_595d:
	sbc b                                            ; $595d: $98
	jr nc, jr_05c_5908                               ; $595e: $30 $a8

	ld h, [hl]                                       ; $5960: $66
	inc de                                           ; $5961: $13
	cp a                                             ; $5962: $bf
	ld hl, sp-$80                                    ; $5963: $f8 $80
	ld a, c                                          ; $5965: $79
	ldh a, [rPCM12]                                  ; $5966: $f0 $76
	xor [hl]                                         ; $5968: $ae
	ld l, [hl]                                       ; $5969: $6e
	or b                                             ; $596a: $b0
	ld a, c                                          ; $596b: $79
	ld a, [hl]                                       ; $596c: $7e
	sub h                                            ; $596d: $94
	nop                                              ; $596e: $00

jr_05c_596f:
	inc c                                            ; $596f: $0c
	ld b, $05                                        ; $5970: $06 $05
	inc bc                                           ; $5972: $03
	inc bc                                           ; $5973: $03
	nop                                              ; $5974: $00
	ld bc, $0781                                     ; $5975: $01 $81 $07
	inc bc                                           ; $5978: $03
	ld a, d                                          ; $5979: $7a
	ld a, b                                          ; $597a: $78
	ld a, e                                          ; $597b: $7b

jr_05c_597c:
	and e                                            ; $597c: $a3
	halt                                             ; $597d: $76
	sub h                                            ; $597e: $94
	ld a, [hl]                                       ; $597f: $7e
	di                                               ; $5980: $f3
	sbc l                                            ; $5981: $9d
	add e                                            ; $5982: $83
	add a                                            ; $5983: $87
	ld [hl], e                                       ; $5984: $73
	ld c, a                                          ; $5985: $4f
	sbc l                                            ; $5986: $9d
	adc a                                            ; $5987: $8f
	db $fc                                           ; $5988: $fc
	ld l, l                                          ; $5989: $6d
	jp $8066                                         ; $598a: $c3 $66 $80


	ld b, h                                          ; $598d: $44
	add sp, $3b                                      ; $598e: $e8 $3b
	ldh a, [$80]                                     ; $5990: $f0 $80
	db $fd                                           ; $5992: $fd
	ld sp, hl                                        ; $5993: $f9
	ld a, [$e1f2]                                    ; $5994: $fa $f2 $e1
	pop de                                           ; $5997: $d1
	jp nc, $022a                                     ; $5998: $d2 $2a $02

	ld b, $05                                        ; $599b: $06 $05
	dec c                                            ; $599d: $0d
	ld e, $2e                                        ; $599e: $1e $2e
	dec l                                            ; $59a0: $2d
	push de                                          ; $59a1: $d5
	ld b, b                                          ; $59a2: $40
	db $10                                           ; $59a3: $10
	xor l                                            ; $59a4: $ad
	dec b                                            ; $59a5: $05
	nop                                              ; $59a6: $00
	ld d, b                                          ; $59a7: $50
	xor b                                            ; $59a8: $a8
	sub l                                            ; $59a9: $95
	cp a                                             ; $59aa: $bf
	rst AddAOntoHL                                          ; $59ab: $ef
	ld d, d                                          ; $59ac: $52
	ld a, [$afff]                                    ; $59ad: $fa $ff $af
	ld d, a                                          ; $59b0: $57
	adc l                                            ; $59b1: $8d
	ld l, d                                          ; $59b2: $6a
	xor d                                            ; $59b3: $aa
	adc b                                            ; $59b4: $88
	ld d, h                                          ; $59b5: $54
	db $10                                           ; $59b6: $10
	add b                                            ; $59b7: $80
	adc b                                            ; $59b8: $88
	ld d, b                                          ; $59b9: $50
	ld b, b                                          ; $59ba: $40
	ld d, l                                          ; $59bb: $55
	ld [hl], a                                       ; $59bc: $77
	xor e                                            ; $59bd: $ab
	rst AddAOntoHL                                          ; $59be: $ef
	ld a, a                                          ; $59bf: $7f
	ld [hl], a                                       ; $59c0: $77
	xor a                                            ; $59c1: $af
	cp a                                             ; $59c2: $bf
	inc bc                                           ; $59c3: $03
	ld a, c                                          ; $59c4: $79
	ld bc, $389a                                     ; $59c5: $01 $9a $38
	ld [hl], b                                       ; $59c8: $70
	ldh [$e0], a                                     ; $59c9: $e0 $e0
	rst $38                                          ; $59cb: $ff
	ld a, e                                          ; $59cc: $7b
	jr c, jr_05c_5a49                                ; $59cd: $38 $7a

	ld a, l                                          ; $59cf: $7d
	rst SubAFromDE                                          ; $59d0: $df
	add b                                            ; $59d1: $80
	sbc h                                            ; $59d2: $9c
	ldh [rAUD3LEVEL], a                              ; $59d3: $e0 $1c
	inc bc                                           ; $59d5: $03
	ld [hl], e                                       ; $59d6: $73
	ld h, h                                          ; $59d7: $64
	sbc h                                            ; $59d8: $9c
	ldh [$3c], a                                     ; $59d9: $e0 $3c
	rlca                                             ; $59db: $07
	ld [hl], a                                       ; $59dc: $77
	ld a, h                                          ; $59dd: $7c
	ld a, d                                          ; $59de: $7a
	jr jr_05c_597c                                   ; $59df: $18 $9b

	ld bc, $30c0                                     ; $59e1: $01 $c0 $30
	inc c                                            ; $59e4: $0c
	ld a, b                                          ; $59e5: $78
	dec l                                            ; $59e6: $2d
	ld a, c                                          ; $59e7: $79
	inc [hl]                                         ; $59e8: $34
	sbc e                                            ; $59e9: $9b
	ld [hl], b                                       ; $59ea: $70
	inc e                                            ; $59eb: $1c
	ld b, $80                                        ; $59ec: $06 $80
	ld a, b                                          ; $59ee: $78
	daa                                              ; $59ef: $27
	ld a, a                                          ; $59f0: $7f
	di                                               ; $59f1: $f3
	sbc l                                            ; $59f2: $9d
	ld bc, $f928                                     ; $59f3: $01 $28 $f9
	ld a, [hl]                                       ; $59f6: $7e
	add $9c                                          ; $59f7: $c6 $9c
	dec hl                                           ; $59f9: $2b
	sub a                                            ; $59fa: $97
	dec hl                                           ; $59fb: $2b
	ld a, c                                          ; $59fc: $79
	add b                                            ; $59fd: $80
	ld sp, hl                                        ; $59fe: $f9
	sbc d                                            ; $59ff: $9a
	ld c, $1e                                        ; $5a00: $0e $1e
	inc sp                                           ; $5a02: $33
	ld h, c                                          ; $5a03: $61
	pop bc                                           ; $5a04: $c1
	ld e, l                                          ; $5a05: $5d
	ld b, c                                          ; $5a06: $41
	ld [hl], c                                       ; $5a07: $71
	ld [hl], d                                       ; $5a08: $72
	sbc e                                            ; $5a09: $9b
	add a                                            ; $5a0a: $87
	rst GetHLinHL                                          ; $5a0b: $cf
	ld a, [hl]                                       ; $5a0c: $7e
	ld a, b                                          ; $5a0d: $78
	ld l, e                                          ; $5a0e: $6b
	db $f4                                           ; $5a0f: $f4
	sbc l                                            ; $5a10: $9d
	rlca                                             ; $5a11: $07
	ld a, h                                          ; $5a12: $7c
	ld l, b                                          ; $5a13: $68
	ld c, b                                          ; $5a14: $48
	sbc [hl]                                         ; $5a15: $9e
	inc bc                                           ; $5a16: $03
	ld a, b                                          ; $5a17: $78
	sub h                                            ; $5a18: $94
	halt                                             ; $5a19: $76
	rlca                                             ; $5a1a: $07
	sub h                                            ; $5a1b: $94
	jr nc, jr_05c_5a9c                               ; $5a1c: $30 $7e

	ld a, b                                          ; $5a1e: $78
	jr nc, jr_05c_5a41                               ; $5a1f: $30 $20

	jr c, jr_05c_5a3f                                ; $5a21: $38 $1c

	rlca                                             ; $5a23: $07
	ldh [$cc], a                                     ; $5a24: $e0 $cc
	ld hl, sp-$22                                    ; $5a26: $f8 $de
	ldh [$7e], a                                     ; $5a28: $e0 $7e
	push hl                                          ; $5a2a: $e5
	db $fc                                           ; $5a2b: $fc
	sbc [hl]                                         ; $5a2c: $9e
	rrca                                             ; $5a2d: $0f
	ld h, a                                          ; $5a2e: $67
	jr nc, @-$68                                     ; $5a2f: $30 $96

	ld bc, $3f0f                                     ; $5a31: $01 $0f $3f
	ld bc, $0300                                     ; $5a34: $01 $00 $03
	ld a, a                                          ; $5a37: $7f
	rst $38                                          ; $5a38: $ff
	add a                                            ; $5a39: $87
	ld [hl], e                                       ; $5a3a: $73
	ld l, h                                          ; $5a3b: $6c
	sbc [hl]                                         ; $5a3c: $9e
	nop                                              ; $5a3d: $00
	ld [hl], c                                       ; $5a3e: $71

jr_05c_5a3f:
	sub $dc                                          ; $5a3f: $d6 $dc

jr_05c_5a41:
	rst $38                                          ; $5a41: $ff
	ld l, e                                          ; $5a42: $6b
	sbc [hl]                                         ; $5a43: $9e
	rst SubAFromDE                                          ; $5a44: $df
	rst $38                                          ; $5a45: $ff
	sbc l                                            ; $5a46: $9d
	pop bc                                           ; $5a47: $c1
	db $e3                                           ; $5a48: $e3

jr_05c_5a49:
	sbc $ff                                          ; $5a49: $de $ff
	sbc [hl]                                         ; $5a4b: $9e
	db $fc                                           ; $5a4c: $fc
	ld a, b                                          ; $5a4d: $78
	ld b, c                                          ; $5a4e: $41
	ld [hl], a                                       ; $5a4f: $77
	xor h                                            ; $5a50: $ac
	sbc b                                            ; $5a51: $98
	rra                                              ; $5a52: $1f
	rst $38                                          ; $5a53: $ff
	rst $38                                          ; $5a54: $ff
	ld c, a                                          ; $5a55: $4f
	ld e, a                                          ; $5a56: $5f
	ld e, a                                          ; $5a57: $5f
	sbc a                                            ; $5a58: $9f
	ld a, b                                          ; $5a59: $78
	ld [hl+], a                                      ; $5a5a: $22
	sbc l                                            ; $5a5b: $9d
	ld bc, $ddf0                                     ; $5a5c: $01 $f0 $dd
	ldh [$9d], a                                     ; $5a5f: $e0 $9d
	ldh a, [rIE]                                     ; $5a61: $f0 $ff
	ld [hl], d                                       ; $5a63: $72
	or c                                             ; $5a64: $b1
	rst SubAFromDE                                          ; $5a65: $df
	rst $38                                          ; $5a66: $ff
	sbc l                                            ; $5a67: $9d
	adc e                                            ; $5a68: $8b
	ld d, h                                          ; $5a69: $54
	ei                                               ; $5a6a: $fb
	sbc l                                            ; $5a6b: $9d
	ld [hl], h                                       ; $5a6c: $74
	xor e                                            ; $5a6d: $ab
	ld [hl], c                                       ; $5a6e: $71
	and e                                            ; $5a6f: $a3
	sbc h                                            ; $5a70: $9c
	pop de                                           ; $5a71: $d1
	ld b, h                                          ; $5a72: $44
	xor d                                            ; $5a73: $aa
	ld [hl], e                                       ; $5a74: $73
	and d                                            ; $5a75: $a2
	add b                                            ; $5a76: $80
	ld l, $bb                                        ; $5a77: $2e $bb
	ld d, l                                          ; $5a79: $55
	cp $fe                                           ; $5a7a: $fe $fe
	ld hl, sp-$2b                                    ; $5a7c: $f8 $d5
	inc b                                            ; $5a7e: $04
	ld a, [hl+]                                      ; $5a7f: $2a
	ld h, d                                          ; $5a80: $62
	sub l                                            ; $5a81: $95
	ld bc, $0701                                     ; $5a82: $01 $01 $07
	ld a, [hl+]                                      ; $5a85: $2a
	ei                                               ; $5a86: $fb
	push de                                          ; $5a87: $d5
	sbc l                                            ; $5a88: $9d
	ld l, d                                          ; $5a89: $6a
	nop                                              ; $5a8a: $00
	sub l                                            ; $5a8b: $95
	ld d, c                                          ; $5a8c: $51
	ld a, [hl+]                                      ; $5a8d: $2a
	ld b, d                                          ; $5a8e: $42
	add c                                            ; $5a8f: $81
	ld sp, $ff5a                                     ; $5a90: $31 $5a $ff
	ld l, d                                          ; $5a93: $6a
	xor [hl]                                         ; $5a94: $ae
	push de                                          ; $5a95: $d5
	adc e                                            ; $5a96: $8b
	cp l                                             ; $5a97: $bd
	ld a, [hl]                                       ; $5a98: $7e
	adc $a5                                          ; $5a99: $ce $a5
	nop                                              ; $5a9b: $00

jr_05c_5a9c:
	ld d, b                                          ; $5a9c: $50
	ld [$20a4], sp                                   ; $5a9d: $08 $a4 $20
	ld b, b                                          ; $5aa0: $40
	db $10                                           ; $5aa1: $10
	xor b                                            ; $5aa2: $a8
	rst $38                                          ; $5aa3: $ff
	xor a                                            ; $5aa4: $af
	rst FarCall                                          ; $5aa5: $f7
	ld e, e                                          ; $5aa6: $5b
	rst SubAFromDE                                          ; $5aa7: $df
	cp a                                             ; $5aa8: $bf
	rst AddAOntoHL                                          ; $5aa9: $ef
	ld d, a                                          ; $5aaa: $57
	ld a, d                                          ; $5aab: $7a
	inc bc                                           ; $5aac: $03
	rst SubAFromDE                                          ; $5aad: $df
	rrca                                             ; $5aae: $0f
	ld [hl], a                                       ; $5aaf: $77
	ld b, l                                          ; $5ab0: $45
	ld a, c                                          ; $5ab1: $79
	rrca                                             ; $5ab2: $0f
	halt                                             ; $5ab3: $76
	adc $de                                          ; $5ab4: $ce $de
	ret nz                                           ; $5ab6: $c0

	call c, $e980                                    ; $5ab7: $dc $80 $e9
	ld h, l                                          ; $5aba: $65

jr_05c_5abb:
	add a                                            ; $5abb: $87
	ld l, a                                          ; $5abc: $6f
	ccf                                              ; $5abd: $3f
	rst $38                                          ; $5abe: $ff
	sbc d                                            ; $5abf: $9a
	add d                                            ; $5ac0: $82
	ld c, b                                          ; $5ac1: $48
	jr nc, jr_05c_5ae1                               ; $5ac2: $30 $1d

	inc b                                            ; $5ac4: $04
	ld a, c                                          ; $5ac5: $79
	ld [hl], c                                       ; $5ac6: $71
	ld a, c                                          ; $5ac7: $79
	sbc d                                            ; $5ac8: $9a
	sbc d                                            ; $5ac9: $9a
	jr jr_05c_5ad8                                   ; $5aca: $18 $0c

	ld b, $01                                        ; $5acc: $06 $01
	nop                                              ; $5ace: $00
	ld a, b                                          ; $5acf: $78
	ld b, d                                          ; $5ad0: $42
	ld a, h                                          ; $5ad1: $7c
	adc a                                            ; $5ad2: $8f
	ld a, h                                          ; $5ad3: $7c
	sbc b                                            ; $5ad4: $98
	ld h, [hl]                                       ; $5ad5: $66
	ld b, b                                          ; $5ad6: $40
	sub [hl]                                         ; $5ad7: $96

jr_05c_5ad8:
	ret nz                                           ; $5ad8: $c0

	nop                                              ; $5ad9: $00
	add c                                            ; $5ada: $81
	add e                                            ; $5adb: $83
	ld b, a                                          ; $5adc: $47
	ld a, [hl]                                       ; $5add: $7e
	inc a                                            ; $5ade: $3c
	ld a, b                                          ; $5adf: $78
	pop af                                           ; $5ae0: $f1

jr_05c_5ae1:
	ld l, [hl]                                       ; $5ae1: $6e
	add $7e                                          ; $5ae2: $c6 $7e
	ld h, e                                          ; $5ae4: $63
	ld a, a                                          ; $5ae5: $7f
	sbc l                                            ; $5ae6: $9d
	sub c                                            ; $5ae7: $91
	jp nz, $0090                                     ; $5ae8: $c2 $90 $00

	inc b                                            ; $5aeb: $04
	sub b                                            ; $5aec: $90
	ld [bc], a                                       ; $5aed: $02
	rrca                                             ; $5aee: $0f
	rra                                              ; $5aef: $1f
	dec a                                            ; $5af0: $3d
	ld l, a                                          ; $5af1: $6f
	rst $38                                          ; $5af2: $ff
	ei                                               ; $5af3: $fb
	ld l, a                                          ; $5af4: $6f
	db $fd                                           ; $5af5: $fd
	ld [hl], d                                       ; $5af6: $72
	ld h, h                                          ; $5af7: $64
	ld a, e                                          ; $5af8: $7b
	or c                                             ; $5af9: $b1
	db $dd                                           ; $5afa: $dd
	rst $38                                          ; $5afb: $ff
	ld a, d                                          ; $5afc: $7a
	pop af                                           ; $5afd: $f1
	sbc [hl]                                         ; $5afe: $9e

Jump_05c_5aff:
	db $fc                                           ; $5aff: $fc
	ld a, e                                          ; $5b00: $7b
	ld [hl], c                                       ; $5b01: $71
	ld a, h                                          ; $5b02: $7c
	xor a                                            ; $5b03: $af

jr_05c_5b04:
	add b                                            ; $5b04: $80
	ld a, c                                          ; $5b05: $79
	di                                               ; $5b06: $f3
	rst SubAFromBC                                          ; $5b07: $e7
	rst $38                                          ; $5b08: $ff
	ld hl, sp-$10                                    ; $5b09: $f8 $f0
	pop hl                                           ; $5b0b: $e1
	jp $0c86                                         ; $5b0c: $c3 $86 $0c


	jr jr_05c_5b04                                   ; $5b0f: $18 $f3

	pop hl                                           ; $5b11: $e1
	jr nc, jr_05c_5b8c                               ; $5b12: $30 $78

	db $f4                                           ; $5b14: $f4
	ldh [c], a                                       ; $5b15: $e2
	call $ff9f                                       ; $5b16: $cd $9f $ff
	ld a, a                                          ; $5b19: $7f
	rst SubAFromDE                                          ; $5b1a: $df
	adc a                                            ; $5b1b: $8f
	rrca                                             ; $5b1c: $0f
	rra                                              ; $5b1d: $1f
	inc sp                                           ; $5b1e: $33
	ld h, c                                          ; $5b1f: $61
	add b                                            ; $5b20: $80
	add b                                            ; $5b21: $80
	ret nz                                           ; $5b22: $c0

	ld b, b                                          ; $5b23: $40
	sbc e                                            ; $5b24: $9b
	jr z, jr_05c_5abb                                ; $5b25: $28 $94

	jp $dd71                                         ; $5b27: $c3 $71 $dd


jr_05c_5b2a:
	rst $38                                          ; $5b2a: $ff
	sub e                                            ; $5b2b: $93
	rst FarCall                                          ; $5b2c: $f7
	ld a, e                                          ; $5b2d: $7b
	inc a                                            ; $5b2e: $3c
	adc [hl]                                         ; $5b2f: $8e
	ret nz                                           ; $5b30: $c0

	ld h, b                                          ; $5b31: $60
	db $10                                           ; $5b32: $10
	ld [$1926], sp                                   ; $5b33: $08 $26 $19
	inc c                                            ; $5b36: $0c
	ld b, $dd                                        ; $5b37: $06 $dd
	rst $38                                          ; $5b39: $ff
	sbc e                                            ; $5b3a: $9b
	rst SubAFromDE                                          ; $5b3b: $df
	rst SubAFromBC                                          ; $5b3c: $e7
	di                                               ; $5b3d: $f3
	ld sp, hl                                        ; $5b3e: $f9
	ld a, e                                          ; $5b3f: $7b
	or [hl]                                          ; $5b40: $b6
	sbc b                                            ; $5b41: $98
	ld a, a                                          ; $5b42: $7f
	ccf                                              ; $5b43: $3f
	rra                                              ; $5b44: $1f
	add a                                            ; $5b45: $87
	inc bc                                           ; $5b46: $03
	rst $38                                          ; $5b47: $ff
	db $fc                                           ; $5b48: $fc
	ld a, e                                          ; $5b49: $7b
	ld l, l                                          ; $5b4a: $6d
	ld a, d                                          ; $5b4b: $7a
	add b                                            ; $5b4c: $80
	sbc [hl]                                         ; $5b4d: $9e
	jr nc, jr_05c_5b2a                               ; $5b4e: $30 $da

	rst $38                                          ; $5b50: $ff
	sbc [hl]                                         ; $5b51: $9e
	rst GetHLinHL                                          ; $5b52: $cf
	ld sp, hl                                        ; $5b53: $f9
	ld a, [hl]                                       ; $5b54: $7e
	cp h                                             ; $5b55: $bc
	sbc $ff                                          ; $5b56: $de $ff
	sbc e                                            ; $5b58: $9b
	push hl                                          ; $5b59: $e5
	ret z                                            ; $5b5a: $c8

	rst $38                                          ; $5b5b: $ff
	rrca                                             ; $5b5c: $0f
	db $fd                                           ; $5b5d: $fd
	sbc h                                            ; $5b5e: $9c
	ld a, [de]                                       ; $5b5f: $1a
	scf                                              ; $5b60: $37
	and l                                            ; $5b61: $a5
	ld [hl], l                                       ; $5b62: $75
	adc [hl]                                         ; $5b63: $8e
	sbc e                                            ; $5b64: $9b
	db $fc                                           ; $5b65: $fc
	ld d, l                                          ; $5b66: $55
	ld b, h                                          ; $5b67: $44
	ld e, d                                          ; $5b68: $5a
	ld [hl], a                                       ; $5b69: $77
	ld c, [hl]                                       ; $5b6a: $4e
	sbc e                                            ; $5b6b: $9b
	inc bc                                           ; $5b6c: $03
	xor d                                            ; $5b6d: $aa
	cp e                                             ; $5b6e: $bb
	ld d, h                                          ; $5b6f: $54
	ld a, e                                          ; $5b70: $7b

Call_05c_5b71:
	ldh a, [$9e]                                     ; $5b71: $f0 $9e
	db $f4                                           ; $5b73: $f4
	ld a, d                                          ; $5b74: $7a
	cp a                                             ; $5b75: $bf
	ld a, [hl]                                       ; $5b76: $7e
	and a                                            ; $5b77: $a7
	ld a, b                                          ; $5b78: $78
	or h                                             ; $5b79: $b4
	ld a, d                                          ; $5b7a: $7a
	cp a                                             ; $5b7b: $bf
	adc a                                            ; $5b7c: $8f
	ld a, [hl+]                                      ; $5b7d: $2a
	pop hl                                           ; $5b7e: $e1
	call nc, $2810                                   ; $5b7f: $d4 $10 $28
	ld b, d                                          ; $5b82: $42
	sub b                                            ; $5b83: $90
	db $10                                           ; $5b84: $10
	push de                                          ; $5b85: $d5

jr_05c_5b86:
	ld e, $2b                                        ; $5b86: $1e $2b
	rst AddAOntoHL                                          ; $5b88: $ef
	rst SubAFromHL                                          ; $5b89: $d7
	cp l                                             ; $5b8a: $bd
	ld l, a                                          ; $5b8b: $6f

jr_05c_5b8c:
	rst AddAOntoHL                                          ; $5b8c: $ef
	ld [hl], e                                       ; $5b8d: $73
	ld a, [hl-]                                      ; $5b8e: $3a
	ld a, d                                          ; $5b8f: $7a
	rst GetHLinHL                                          ; $5b90: $cf
	halt                                             ; $5b91: $76
	adc c                                            ; $5b92: $89
	ld [hl], l                                       ; $5b93: $75
	sbc l                                            ; $5b94: $9d
	ld h, [hl]                                       ; $5b95: $66
	dec a                                            ; $5b96: $3d
	ld a, d                                          ; $5b97: $7a
	jp z, Jump_05c_677f                              ; $5b98: $ca $7f $67

	sbc d                                            ; $5b9b: $9a
	jr nz, @+$12                                     ; $5b9c: $20 $10

	ld [$c0c0], sp                                   ; $5b9e: $08 $c0 $c0
	ld a, d                                          ; $5ba1: $7a
	ld e, c                                          ; $5ba2: $59
	ld a, a                                          ; $5ba3: $7f
	adc c                                            ; $5ba4: $89
	ld h, c                                          ; $5ba5: $61
	ld b, b                                          ; $5ba6: $40
	rst AddAOntoHL                                          ; $5ba7: $ef
	sbc h                                            ; $5ba8: $9c
	jr nc, jr_05c_5bb3                               ; $5ba9: $30 $08

	dec b                                            ; $5bab: $05
	ld h, [hl]                                       ; $5bac: $66
	jp Jump_05c_7fee                                 ; $5bad: $c3 $ee $7f


	ld b, h                                          ; $5bb0: $44
	sbc [hl]                                         ; $5bb1: $9e
	rrca                                             ; $5bb2: $0f

jr_05c_5bb3:
	ld a, b                                          ; $5bb3: $78
	ret nz                                           ; $5bb4: $c0

	rst $38                                          ; $5bb5: $ff
	sbc h                                            ; $5bb6: $9c
	ld h, b                                          ; $5bb7: $60
	jr nc, jr_05c_5bd6                               ; $5bb8: $30 $1c

	ld a, d                                          ; $5bba: $7a
	or d                                             ; $5bbb: $b2
	rst $38                                          ; $5bbc: $ff
	add b                                            ; $5bbd: $80
	ldh [c], a                                       ; $5bbe: $e2
	push bc                                          ; $5bbf: $c5
	adc d                                            ; $5bc0: $8a
	sub l                                            ; $5bc1: $95
	jp z, $e2e5                                      ; $5bc2: $ca $e5 $e2

	ld [hl], b                                       ; $5bc5: $70
	dec e                                            ; $5bc6: $1d
	ld a, [hl-]                                      ; $5bc7: $3a
	ld [hl], l                                       ; $5bc8: $75
	ld l, d                                          ; $5bc9: $6a
	dec [hl]                                         ; $5bca: $35
	ld a, [de]                                       ; $5bcb: $1a
	dec e                                            ; $5bcc: $1d
	adc a                                            ; $5bcd: $8f
	and b                                            ; $5bce: $a0
	ld [$40a4], sp                                   ; $5bcf: $08 $a4 $40
	and b                                            ; $5bd2: $a0
	db $10                                           ; $5bd3: $10
	add c                                            ; $5bd4: $81
	ld b, e                                          ; $5bd5: $43

jr_05c_5bd6:
	ld e, a                                          ; $5bd6: $5f
	rst FarCall                                          ; $5bd7: $f7
	ld e, e                                          ; $5bd8: $5b
	cp a                                             ; $5bd9: $bf
	ld e, a                                          ; $5bda: $5f
	rst AddAOntoHL                                          ; $5bdb: $ef
	ld a, [hl]                                       ; $5bdc: $7e
	sbc [hl]                                         ; $5bdd: $9e
	cp h                                             ; $5bde: $bc
	ld l, d                                          ; $5bdf: $6a
	pop de                                           ; $5be0: $d1
	sbc [hl]                                         ; $5be1: $9e
	rst GetHLinHL                                          ; $5be2: $cf
	ld l, d                                          ; $5be3: $6a
	pop de                                           ; $5be4: $d1
	sbc l                                            ; $5be5: $9d
	jr nc, jr_05c_5b86                               ; $5be6: $30 $9e

	ld [hl], e                                       ; $5be8: $73
	ldh a, [c]                                       ; $5be9: $f2
	sbc h                                            ; $5bea: $9c
	sub a                                            ; $5beb: $97
	cpl                                              ; $5bec: $2f
	ld h, c                                          ; $5bed: $61
	ld [hl], e                                       ; $5bee: $73
	ldh a, [c]                                       ; $5bef: $f2
	sub l                                            ; $5bf0: $95
	ld l, b                                          ; $5bf1: $68
	ret nc                                           ; $5bf2: $d0

	ccf                                              ; $5bf3: $3f
	ld a, a                                          ; $5bf4: $7f
	cp $fd                                           ; $5bf5: $fe $fd
	ld [$aad5], a                                    ; $5bf7: $ea $d5 $aa
	call nc, Call_05c_5b71                           ; $5bfa: $d4 $71 $5b
	cp $8b                                           ; $5bfd: $fe $8b
	cp b                                             ; $5bff: $b8
	sbc $ef                                          ; $5c00: $de $ef
	scf                                              ; $5c02: $37
	sbc a                                            ; $5c03: $9f
	rrca                                             ; $5c04: $0f
	add l                                            ; $5c05: $85
	ld b, $c7                                        ; $5c06: $06 $c7
	ld h, c                                          ; $5c08: $61
	jr nc, jr_05c_5c23                               ; $5c09: $30 $18

	ld [$0604], sp                                   ; $5c0b: $08 $04 $06
	inc bc                                           ; $5c0e: $03
	jp $3861                                         ; $5c0f: $c3 $61 $38


	rst SubAFromDE                                          ; $5c12: $df
	db $dd                                           ; $5c13: $dd
	rst $38                                          ; $5c14: $ff
	sbc e                                            ; $5c15: $9b
	inc a                                            ; $5c16: $3c
	sbc [hl]                                         ; $5c17: $9e

jr_05c_5c18:
	rst JumpTable                                          ; $5c18: $c7
	jr nz, jr_05c_5c18                               ; $5c19: $20 $fd

	sbc e                                            ; $5c1b: $9b
	add c                                            ; $5c1c: $81
	ldh [$f0], a                                     ; $5c1d: $e0 $f0
	ld a, b                                          ; $5c1f: $78
	ld [hl], l                                       ; $5c20: $75
	sbc e                                            ; $5c21: $9b
	sbc h                                            ; $5c22: $9c

jr_05c_5c23:
	ld a, [hl]                                       ; $5c23: $7e
	rra                                              ; $5c24: $1f
	rrca                                             ; $5c25: $0f
	ld [hl], b                                       ; $5c26: $70
	ld c, h                                          ; $5c27: $4c
	adc [hl]                                         ; $5c28: $8e
	rst $38                                          ; $5c29: $ff
	ccf                                              ; $5c2a: $3f
	rrca                                             ; $5c2b: $0f
	inc de                                           ; $5c2c: $13
	jr z, @-$69                                      ; $5c2d: $28 $95

	ret nz                                           ; $5c2f: $c0

	ldh a, [c]                                       ; $5c30: $f2
	nop                                              ; $5c31: $00
	ret nz                                           ; $5c32: $c0

	ldh a, [$ec]                                     ; $5c33: $f0 $ec
	rst SubAFromHL                                          ; $5c35: $d7
	ld l, d                                          ; $5c36: $6a
	ccf                                              ; $5c37: $3f
	dec c                                            ; $5c38: $0d
	db $f4                                           ; $5c39: $f4
	ld [hl], a                                       ; $5c3a: $77
	db $e3                                           ; $5c3b: $e3
	ld a, l                                          ; $5c3c: $7d
	dec sp                                           ; $5c3d: $3b
	sbc l                                            ; $5c3e: $9d
	xor b                                            ; $5c3f: $a8
	dec bc                                           ; $5c40: $0b
	ld [hl], a                                       ; $5c41: $77
	db $e3                                           ; $5c42: $e3
	add b                                            ; $5c43: $80
	ret nz                                           ; $5c44: $c0

	cp $57                                           ; $5c45: $fe $57
	xor d                                            ; $5c47: $aa
	adc b                                            ; $5c48: $88
	ret nz                                           ; $5c49: $c0

	db $e4                                           ; $5c4a: $e4
	ld [$00c9], a                                    ; $5c4b: $ea $c9 $00
	ld d, l                                          ; $5c4e: $55
	ld d, l                                          ; $5c4f: $55

jr_05c_5c50:
	ld [hl], a                                       ; $5c50: $77
	ccf                                              ; $5c51: $3f
	dec de                                           ; $5c52: $1b
	dec d                                            ; $5c53: $15
	ld [hl], $ff                                     ; $5c54: $36 $ff
	xor d                                            ; $5c56: $aa
	ld d, l                                          ; $5c57: $55
	ld d, h                                          ; $5c58: $54
	jr nz, jr_05c_5cbc                               ; $5c59: $20 $61

	inc b                                            ; $5c5b: $04
	ld d, b                                          ; $5c5c: $50
	ld bc, $aa28                                     ; $5c5d: $01 $28 $aa
	xor e                                            ; $5c60: $ab
	rst SubAFromDE                                          ; $5c61: $df
	sbc [hl]                                         ; $5c62: $9e
	sbc e                                            ; $5c63: $9b
	ei                                               ; $5c64: $fb
	xor a                                            ; $5c65: $af
	cp $d7                                           ; $5c66: $fe $d7
	ld l, d                                          ; $5c68: $6a
	add hl, bc                                       ; $5c69: $09
	sbc [hl]                                         ; $5c6a: $9e
	ld e, $71                                        ; $5c6b: $1e $71
	ld e, b                                          ; $5c6d: $58
	ld a, d                                          ; $5c6e: $7a
	rst GetHLinHL                                          ; $5c6f: $cf
	ld a, [hl]                                       ; $5c70: $7e
	ret nc                                           ; $5c71: $d0

	sbc [hl]                                         ; $5c72: $9e
	ldh a, [$73]                                     ; $5c73: $f0 $73
	ld [hl], l                                       ; $5c75: $75
	ld a, d                                          ; $5c76: $7a
	ret nc                                           ; $5c77: $d0

	ld l, c                                          ; $5c78: $69
	ld c, $9d                                        ; $5c79: $0e $9d
	ld a, a                                          ; $5c7b: $7f
	rrca                                             ; $5c7c: $0f
	ld a, c                                          ; $5c7d: $79
	pop bc                                           ; $5c7e: $c1
	ld a, l                                          ; $5c7f: $7d
	db $ed                                           ; $5c80: $ed
	sbc [hl]                                         ; $5c81: $9e
	inc b                                            ; $5c82: $04
	ld a, b                                          ; $5c83: $78
	ld h, [hl]                                       ; $5c84: $66
	ld [hl], e                                       ; $5c85: $73
	ldh a, [$db]                                     ; $5c86: $f0 $db
	rst $38                                          ; $5c88: $ff
	ld [hl], c                                       ; $5c89: $71
	add sp, -$66                                     ; $5c8a: $e8 $9a
	add b                                            ; $5c8c: $80
	ld h, b                                          ; $5c8d: $60
	jr c, jr_05c_5c50                                ; $5c8e: $38 $c0

	ldh a, [$71]                                     ; $5c90: $f0 $71
	dec c                                            ; $5c92: $0d
	ld [hl], c                                       ; $5c93: $71
	ret c                                            ; $5c94: $d8

	ld a, [$809a]                                    ; $5c95: $fa $9a $80
	ldh a, [$fc]                                     ; $5c98: $f0 $fc
	rst $38                                          ; $5c9a: $ff
	ld a, a                                          ; $5c9b: $7f
	ldh a, [c]                                       ; $5c9c: $f2
	ld a, l                                          ; $5c9d: $7d
	sbc b                                            ; $5c9e: $98
	ld [$798f], a                                    ; $5c9f: $ea $8f $79
	cp b                                             ; $5ca2: $b8
	inc a                                            ; $5ca3: $3c
	ld e, $2e                                        ; $5ca4: $1e $2e
	rrca                                             ; $5ca6: $0f
	rlca                                             ; $5ca7: $07
	dec bc                                           ; $5ca8: $0b
	add [hl]                                         ; $5ca9: $86
	ld b, a                                          ; $5caa: $47
	ld b, e                                          ; $5cab: $43
	ld hl, $1011                                     ; $5cac: $21 $11 $10
	ld [$6e04], sp                                   ; $5caf: $08 $04 $6e
	pop de                                           ; $5cb2: $d1
	sbc l                                            ; $5cb3: $9d
	adc $9c                                          ; $5cb4: $ce $9c
	ld l, [hl]                                       ; $5cb6: $6e
	pop de                                           ; $5cb7: $d1
	adc l                                            ; $5cb8: $8d
	ld sp, $9c63                                     ; $5cb9: $31 $63 $9c

jr_05c_5cbc:
	jr c, @+$73                                      ; $5cbc: $38 $71

	ldh [$8a], a                                     ; $5cbe: $e0 $8a
	nop                                              ; $5cc0: $00
	ld bc, $6304                                     ; $5cc1: $01 $04 $63
	rst JumpTable                                          ; $5cc4: $c7
	adc [hl]                                         ; $5cc5: $8e
	rra                                              ; $5cc6: $1f
	ld [hl], l                                       ; $5cc7: $75
	rst $38                                          ; $5cc8: $ff
	cp $fb                                           ; $5cc9: $fe $fb
	ld a, c                                          ; $5ccb: $79
	ld b, e                                          ; $5ccc: $43
	ld a, l                                          ; $5ccd: $7d
	dec a                                            ; $5cce: $3d
	adc h                                            ; $5ccf: $8c
	dec hl                                           ; $5cd0: $2b
	ld d, l                                          ; $5cd1: $55
	dec hl                                           ; $5cd2: $2b
	and b                                            ; $5cd3: $a0
	ld d, b                                          ; $5cd4: $50
	and b                                            ; $5cd5: $a0
	ld d, b                                          ; $5cd6: $50
	xor b                                            ; $5cd7: $a8
	call nc, $d4aa                                   ; $5cd8: $d4 $aa $d4
	xor d                                            ; $5cdb: $aa
	pop de                                           ; $5cdc: $d1
	xor d                                            ; $5cdd: $aa
	call nc, $b0ea                                   ; $5cde: $d4 $ea $b0
	ld [$f975], a                                    ; $5ce1: $ea $75 $f9
	sbc [hl]                                         ; $5ce4: $9e
	add e                                            ; $5ce5: $83
	ld l, b                                          ; $5ce6: $68
	rst $38                                          ; $5ce7: $ff
	ld h, h                                          ; $5ce8: $64
	ld hl, sp-$69                                    ; $5ce9: $f8 $97
	ld a, a                                          ; $5ceb: $7f
	cp a                                             ; $5cec: $bf
	rst SubAFromDE                                          ; $5ced: $df
	ld a, a                                          ; $5cee: $7f
	cpl                                              ; $5cef: $2f
	scf                                              ; $5cf0: $37
	dec de                                           ; $5cf1: $1b
	rrca                                             ; $5cf2: $0f
	ld a, c                                          ; $5cf3: $79
	nop                                              ; $5cf4: $00
	sbc d                                            ; $5cf5: $9a
	jr nz, jr_05c_5d28                               ; $5cf6: $20 $30

	jr jr_05c_5d06                                   ; $5cf8: $18 $0c

	inc b                                            ; $5cfa: $04
	ld d, a                                          ; $5cfb: $57
	ld b, b                                          ; $5cfc: $40
	db $fd                                           ; $5cfd: $fd
	sbc [hl]                                         ; $5cfe: $9e
	db $fc                                           ; $5cff: $fc
	ld a, e                                          ; $5d00: $7b
	ld b, c                                          ; $5d01: $41
	ld a, l                                          ; $5d02: $7d
	ld b, l                                          ; $5d03: $45
	sbc l                                            ; $5d04: $9d
	rst SubAFromBC                                          ; $5d05: $e7

jr_05c_5d06:
	ldh a, [rPCM34]                                  ; $5d06: $f0 $77
	inc e                                            ; $5d08: $1c
	sub [hl]                                         ; $5d09: $96
	add b                                            ; $5d0a: $80
	jr nz, @+$1a                                     ; $5d0b: $20 $18

	rrca                                             ; $5d0d: $0f
	add h                                            ; $5d0e: $84
	ld d, d                                          ; $5d0f: $52
	adc b                                            ; $5d10: $88
	ldh [c], a                                       ; $5d11: $e2
	ld hl, sp+$7b                                    ; $5d12: $f8 $7b
	db $ec                                           ; $5d14: $ec
	sbc d                                            ; $5d15: $9a
	ld a, e                                          ; $5d16: $7b
	xor l                                            ; $5d17: $ad
	ld [hl], a                                       ; $5d18: $77
	dec e                                            ; $5d19: $1d
	rlca                                             ; $5d1a: $07
	ld a, e                                          ; $5d1b: $7b
	db $ec                                           ; $5d1c: $ec
	add b                                            ; $5d1d: $80
	ld b, d                                          ; $5d1e: $42
	xor c                                            ; $5d1f: $a9
	adc b                                            ; $5d20: $88
	ld d, c                                          ; $5d21: $51
	ld b, h                                          ; $5d22: $44
	ld a, [bc]                                       ; $5d23: $0a
	ld hl, sp-$0d                                    ; $5d24: $f8 $f3
	cp l                                             ; $5d26: $bd
	ld d, [hl]                                       ; $5d27: $56

jr_05c_5d28:
	ld [hl], a                                       ; $5d28: $77
	xor [hl]                                         ; $5d29: $ae
	cp e                                             ; $5d2a: $bb
	push af                                          ; $5d2b: $f5
	rlca                                             ; $5d2c: $07
	inc c                                            ; $5d2d: $0c
	jr nz, jr_05c_5d82                               ; $5d2e: $20 $52

	ld c, b                                          ; $5d30: $48
	db $10                                           ; $5d31: $10
	ld h, c                                          ; $5d32: $61
	sub l                                            ; $5d33: $95
	ld d, e                                          ; $5d34: $53
	inc bc                                           ; $5d35: $03
	rst SubAFromDE                                          ; $5d36: $df
	xor l                                            ; $5d37: $ad
	or a                                             ; $5d38: $b7
	rst AddAOntoHL                                          ; $5d39: $ef
	sbc a                                            ; $5d3a: $9f
	ld l, e                                          ; $5d3b: $6b
	xor a                                            ; $5d3c: $af
	ld a, [hl]                                       ; $5d3d: $7e
	ld l, b                                          ; $5d3e: $68
	ld a, h                                          ; $5d3f: $7c
	call nz, $f8de                                   ; $5d40: $c4 $de $f8
	rst SubAFromDE                                          ; $5d43: $df
	db $fc                                           ; $5d44: $fc
	rst SubAFromDE                                          ; $5d45: $df
	ldh [$66], a                                     ; $5d46: $e0 $66
	ld a, $f1                                        ; $5d48: $3e $f1
	ld a, b                                          ; $5d4a: $78
	adc b                                            ; $5d4b: $88
	sbc [hl]                                         ; $5d4c: $9e
	inc e                                            ; $5d4d: $1c
	rst FarCall                                          ; $5d4e: $f7
	sbc h                                            ; $5d4f: $9c
	ld h, a                                          ; $5d50: $67
	ld sp, $7838                                     ; $5d51: $31 $38 $78
	ld a, b                                          ; $5d54: $78
	ld a, a                                          ; $5d55: $7f
	sub d                                            ; $5d56: $92
	sbc d                                            ; $5d57: $9a
	ld a, $1f                                        ; $5d58: $3e $1f
	rrca                                             ; $5d5a: $0f
	rrca                                             ; $5d5b: $0f
	rlca                                             ; $5d5c: $07
	ld a, e                                          ; $5d5d: $7b
	adc e                                            ; $5d5e: $8b
	ld a, a                                          ; $5d5f: $7f
	sub l                                            ; $5d60: $95
	sbc [hl]                                         ; $5d61: $9e
	ccf                                              ; $5d62: $3f
	ld [hl], a                                       ; $5d63: $77
	sbc c                                            ; $5d64: $99
	ld a, a                                          ; $5d65: $7f
	call nz, $c09e                                   ; $5d66: $c4 $9e $c0
	ld [hl], a                                       ; $5d69: $77
	adc d                                            ; $5d6a: $8a
	ld [hl], b                                       ; $5d6b: $70
	sbc h                                            ; $5d6c: $9c
	ld a, d                                          ; $5d6d: $7a
	ld b, b                                          ; $5d6e: $40
	ld a, [hl]                                       ; $5d6f: $7e
	adc l                                            ; $5d70: $8d
	ld [hl], d                                       ; $5d71: $72
	bit 7, d                                         ; $5d72: $cb $7a
	or a                                             ; $5d74: $b7
	ld a, e                                          ; $5d75: $7b
	db $fd                                           ; $5d76: $fd
	ld d, e                                          ; $5d77: $53
	ld d, b                                          ; $5d78: $50
	halt                                             ; $5d79: $76
	and b                                            ; $5d7a: $a0
	ld a, b                                          ; $5d7b: $78
	ret                                              ; $5d7c: $c9


	ld h, e                                          ; $5d7d: $63
	ldh a, [rRP]                                     ; $5d7e: $f0 $56
	nop                                              ; $5d80: $00
	db $dd                                           ; $5d81: $dd

jr_05c_5d82:
	ld b, h                                          ; $5d82: $44
	sbc [hl]                                         ; $5d83: $9e
	ld h, [hl]                                       ; $5d84: $66
	call c, $de55                                    ; $5d85: $dc $55 $de

Call_05c_5d88:
	ld b, h                                          ; $5d88: $44
	sbc [hl]                                         ; $5d89: $9e
	ld b, [hl]                                       ; $5d8a: $46
	ld [hl], e                                       ; $5d8b: $73
	or $9e                                           ; $5d8c: $f6 $9e
	ld d, [hl]                                       ; $5d8e: $56
	sbc $44                                          ; $5d8f: $de $44
	sbc l                                            ; $5d91: $9d
	ld b, d                                          ; $5d92: $42
	inc hl                                           ; $5d93: $23
	ld [hl], a                                       ; $5d94: $77
	rst FarCall                                          ; $5d95: $f7
	sbc [hl]                                         ; $5d96: $9e
	ld h, [hl]                                       ; $5d97: $66
	ld [hl], a                                       ; $5d98: $77
	or $9d                                           ; $5d99: $f6 $9d
	inc sp                                           ; $5d9b: $33
	dec [hl]                                         ; $5d9c: $35
	ld [hl], e                                       ; $5d9d: $73
	or $92                                           ; $5d9e: $f6 $92
	ld b, [hl]                                       ; $5da0: $46
	ld [hl+], a                                      ; $5da1: $22
	ld [hl+], a                                      ; $5da2: $22
	inc sp                                           ; $5da3: $33
	inc sp                                           ; $5da4: $33
	scf                                              ; $5da5: $37
	halt                                             ; $5da6: $76
	ld h, l                                          ; $5da7: $65
	ld d, [hl]                                       ; $5da8: $56
	ld b, [hl]                                       ; $5da9: $46
	ld h, [hl]                                       ; $5daa: $66
	ld [hl+], a                                      ; $5dab: $22
	inc hl                                           ; $5dac: $23
	db $dd                                           ; $5dad: $dd
	inc sp                                           ; $5dae: $33
	rst SubAFromDE                                          ; $5daf: $df
	ld d, l                                          ; $5db0: $55
	rst SubAFromDE                                          ; $5db1: $df
	ld h, [hl]                                       ; $5db2: $66
	ld [hl], a                                       ; $5db3: $77
	db $ec                                           ; $5db4: $ec
	sbc l                                            ; $5db5: $9d
	inc sp                                           ; $5db6: $33
	ld [hl-], a                                      ; $5db7: $32
	ld a, e                                          ; $5db8: $7b
	or $9e                                           ; $5db9: $f6 $9e
	ld h, d                                          ; $5dbb: $62
	ld [hl], e                                       ; $5dbc: $73
	or $9e                                           ; $5dbd: $f6 $9e
	ld [hl+], a                                      ; $5dbf: $22
	ld [hl], a                                       ; $5dc0: $77
	db $ec                                           ; $5dc1: $ec
	sbc [hl]                                         ; $5dc2: $9e
	ld h, e                                          ; $5dc3: $63
	ld [hl], a                                       ; $5dc4: $77
	db $ed                                           ; $5dc5: $ed
	sbc l                                            ; $5dc6: $9d
	ld [hl+], a                                      ; $5dc7: $22
	ld d, h                                          ; $5dc8: $54
	ld l, e                                          ; $5dc9: $6b
	or $dd                                           ; $5dca: $f6 $dd
	ld [hl+], a                                      ; $5dcc: $22
	sbc $66                                          ; $5dcd: $de $66
	sbc $33                                          ; $5dcf: $de $33
	sbc [hl]                                         ; $5dd1: $9e
	inc hl                                           ; $5dd2: $23
	sbc $22                                          ; $5dd3: $de $22
	sbc $88                                          ; $5dd5: $de $88
	add a                                            ; $5dd7: $87
	nop                                              ; $5dd8: $00
	ld bc, $0200                                     ; $5dd9: $01 $00 $02
	nop                                              ; $5ddc: $00
	inc b                                            ; $5ddd: $04
	nop                                              ; $5dde: $00
	ld [$feff], sp                                   ; $5ddf: $08 $ff $fe
	cp $fc                                           ; $5de2: $fe $fc
	db $fc                                           ; $5de4: $fc
	ld hl, sp-$08                                    ; $5de5: $f8 $f8
	ldh a, [$aa]                                     ; $5de7: $f0 $aa

jr_05c_5de9:
	dec d                                            ; $5de9: $15
	xor d                                            ; $5dea: $aa
	nop                                              ; $5deb: $00
	xor c                                            ; $5dec: $a9
	ld [bc], a                                       ; $5ded: $02
	dec b                                            ; $5dee: $05
	adc d                                            ; $5def: $8a
	db $fd                                           ; $5df0: $fd
	add b                                            ; $5df1: $80
	ld bc, $0603                                     ; $5df2: $01 $03 $06
	adc l                                            ; $5df5: $8d
	xor a                                            ; $5df6: $af

Jump_05c_5df7:
	ld e, e                                          ; $5df7: $5b
	xor a                                            ; $5df8: $af
	ret c                                            ; $5df9: $d8

	ld h, b                                          ; $5dfa: $60
	sbc a                                            ; $5dfb: $9f
	ld a, [hl]                                       ; $5dfc: $7e
	ld a, l                                          ; $5dfd: $7d
	rlca                                             ; $5dfe: $07
	inc e                                            ; $5dff: $1c
	jr nc, jr_05c_5de9                               ; $5e00: $30 $e7

	sbc a                                            ; $5e02: $9f
	ld h, b                                          ; $5e03: $60
	add b                                            ; $5e04: $80
	cp $ff                                           ; $5e05: $fe $ff
	cp $83                                           ; $5e07: $fe $83
	db $fc                                           ; $5e09: $fc
	nop                                              ; $5e0a: $00
	rra                                              ; $5e0b: $1f
	rlca                                             ; $5e0c: $07
	rst $38                                          ; $5e0d: $ff
	rst $38                                          ; $5e0e: $ff
	ld bc, $9d7c                                     ; $5e0f: $01 $7c $9d
	inc bc                                           ; $5e12: $03
	rst $38                                          ; $5e13: $ff
	cp $87                                           ; $5e14: $fe $87
	xor d                                            ; $5e16: $aa
	push af                                          ; $5e17: $f5
	adc $3d                                          ; $5e18: $ce $3d
	rst $38                                          ; $5e1a: $ff
	rlca                                             ; $5e1b: $07
	di                                               ; $5e1c: $f3
	ret nz                                           ; $5e1d: $c0

	nop                                              ; $5e1e: $00
	ldh a, [$3e]                                     ; $5e1f: $f0 $3e
	jp $f800                                         ; $5e21: $c3 $00 $f8


	rrca                                             ; $5e24: $0f
	ccf                                              ; $5e25: $3f
	xor c                                            ; $5e26: $a9
	ld d, h                                          ; $5e27: $54
	xor d                                            ; $5e28: $aa

jr_05c_5e29:
	push de                                          ; $5e29: $d5
	ld l, d                                          ; $5e2a: $6a
	sub l                                            ; $5e2b: $95
	ld l, [hl]                                       ; $5e2c: $6e
	ldh [c], a                                       ; $5e2d: $e2
	cp $92                                           ; $5e2e: $fe $92
	add b                                            ; $5e30: $80
	ldh [rSVBK], a                                   ; $5e31: $e0 $70

Call_05c_5e33:
	sbc h                                            ; $5e33: $9c
	cp $a2                                           ; $5e34: $fe $a2
	push de                                          ; $5e36: $d5
	ld l, $19                                        ; $5e37: $2e $19
	sub [hl]                                         ; $5e39: $96
	ld de, $5428                                     ; $5e3a: $11 $28 $54
	ld sp, hl                                        ; $5e3d: $f9
	adc e                                            ; $5e3e: $8b
	xor d                                            ; $5e3f: $aa
	ld d, h                                          ; $5e40: $54
	xor d                                            ; $5e41: $aa
	ld d, b                                          ; $5e42: $50
	and b                                            ; $5e43: $a0
	db $10                                           ; $5e44: $10
	ret nz                                           ; $5e45: $c0

	jr c, jr_05c_5e48                                ; $5e46: $38 $00

jr_05c_5e48:
	ld bc, $0301                                     ; $5e48: $01 $01 $03
	rlca                                             ; $5e4b: $07
	rlca                                             ; $5e4c: $07
	rrca                                             ; $5e4d: $0f
	rlca                                             ; $5e4e: $07
	ld b, b                                          ; $5e4f: $40
	db $10                                           ; $5e50: $10
	inc b                                            ; $5e51: $04
	ld [bc], a                                       ; $5e52: $02
	db $fd                                           ; $5e53: $fd
	sbc d                                            ; $5e54: $9a
	ccf                                              ; $5e55: $3f
	adc a                                            ; $5e56: $8f
	db $e3                                           ; $5e57: $e3
	ld sp, hl                                        ; $5e58: $f9
	db $fc                                           ; $5e59: $fc
	sbc $ff                                          ; $5e5a: $de $ff
	ld [hl], a                                       ; $5e5c: $77
	add sp, -$65                                     ; $5e5d: $e8 $9b
	add e                                            ; $5e5f: $83
	daa                                              ; $5e60: $27
	ld c, $0d                                        ; $5e61: $0e $0d
	ld [hl], a                                       ; $5e63: $77
	ld [hl], b                                       ; $5e64: $70
	sub e                                            ; $5e65: $93
	ld a, h                                          ; $5e66: $7c
	jr jr_05c_5e29                                   ; $5e67: $18 $c0

	ldh a, [$ea]                                     ; $5e69: $f0 $ea
	call nc, $d4a8                                   ; $5e6b: $d4 $a8 $d4
	xor b                                            ; $5e6e: $a8
	ld d, h                                          ; $5e6f: $54
	adc h                                            ; $5e70: $8c
	db $10                                           ; $5e71: $10
	ld hl, sp-$67                                    ; $5e72: $f8 $99
	jr z, jr_05c_5ec6                                ; $5e74: $28 $50

	and b                                            ; $5e76: $a0
	ld d, b                                          ; $5e77: $50
	jr nz, @+$22                                     ; $5e78: $20 $20

	ld e, a                                          ; $5e7a: $5f
	ldh a, [rPCM34]                                  ; $5e7b: $f0 $77
	ld e, b                                          ; $5e7d: $58
	or $97                                           ; $5e7e: $f6 $97
	ld d, a                                          ; $5e80: $57

Jump_05c_5e81:
	xor a                                            ; $5e81: $af
	ld d, l                                          ; $5e82: $55
	adc d                                            ; $5e83: $8a
	dec b                                            ; $5e84: $05
	adc d                                            ; $5e85: $8a
	inc d                                            ; $5e86: $14
	ld a, [hl+]                                      ; $5e87: $2a
	ld sp, hl                                        ; $5e88: $f9
	sbc b                                            ; $5e89: $98
	push de                                          ; $5e8a: $d5
	xor e                                            ; $5e8b: $ab
	ld d, l                                          ; $5e8c: $55
	xor d                                            ; $5e8d: $aa
	ld b, l                                          ; $5e8e: $45
	adc d                                            ; $5e8f: $8a
	dec b                                            ; $5e90: $05
	ld h, e                                          ; $5e91: $63
	ldh a, [$97]                                     ; $5e92: $f0 $97
	rst SubAFromDE                                          ; $5e94: $df
	cp [hl]                                          ; $5e95: $be
	ld a, l                                          ; $5e96: $7d
	cp d                                             ; $5e97: $ba
	ld [hl], l                                       ; $5e98: $75
	add sp, -$2c                                     ; $5e99: $e8 $d4
	xor d                                            ; $5e9b: $aa
	ld sp, hl                                        ; $5e9c: $f9
	sbc e                                            ; $5e9d: $9b
	ld b, b                                          ; $5e9e: $40
	and b                                            ; $5e9f: $a0
	nop                                              ; $5ea0: $00
	add b                                            ; $5ea1: $80
	push af                                          ; $5ea2: $f5
	sbc h                                            ; $5ea3: $9c
	dec b                                            ; $5ea4: $05
	ld a, [bc]                                       ; $5ea5: $0a
	inc b                                            ; $5ea6: $04
	db $f4                                           ; $5ea7: $f4
	sub a                                            ; $5ea8: $97
	dec d                                            ; $5ea9: $15
	ld a, [hl+]                                      ; $5eaa: $2a
	ld d, l                                          ; $5eab: $55
	xor d                                            ; $5eac: $aa
	dec d                                            ; $5ead: $15
	ld a, [hl+]                                      ; $5eae: $2a
	ld b, l                                          ; $5eaf: $45
	ld a, [bc]                                       ; $5eb0: $0a
	ld sp, hl                                        ; $5eb1: $f9
	ld a, a                                          ; $5eb2: $7f
	ldh a, [c]                                       ; $5eb3: $f2
	ld a, e                                          ; $5eb4: $7b
	cp $9c                                           ; $5eb5: $fe $9c
	cp b                                             ; $5eb7: $b8
	ld [hl], b                                       ; $5eb8: $70
	and b                                            ; $5eb9: $a0
	ld sp, hl                                        ; $5eba: $f9
	sub d                                            ; $5ebb: $92
	db $10                                           ; $5ebc: $10
	ld bc, $0121                                     ; $5ebd: $01 $21 $01
	ld b, b                                          ; $5ec0: $40
	nop                                              ; $5ec1: $00
	add b                                            ; $5ec2: $80
	add b                                            ; $5ec3: $80
	ldh [$e1], a                                     ; $5ec4: $e0 $e1

jr_05c_5ec6:
	pop bc                                           ; $5ec6: $c1
	pop bc                                           ; $5ec7: $c1
	add b                                            ; $5ec8: $80
	ld a, e                                          ; $5ec9: $7b
	or [hl]                                          ; $5eca: $b6
	add b                                            ; $5ecb: $80
	adc h                                            ; $5ecc: $8c
	ld d, l                                          ; $5ecd: $55
	ld e, d                                          ; $5ece: $5a
	add hl, hl                                       ; $5ecf: $29
	and e                                            ; $5ed0: $a3
	add d                                            ; $5ed1: $82
	ld b, l                                          ; $5ed2: $45
	dec [hl]                                         ; $5ed3: $35
	adc e                                            ; $5ed4: $8b
	jp c, $f7d5                                      ; $5ed5: $da $d5 $f7

	cp $fd                                           ; $5ed8: $fe $fd
	ld a, [hl]                                       ; $5eda: $7e
	cpl                                              ; $5edb: $2f
	xor e                                            ; $5edc: $ab
	cp $3b                                           ; $5edd: $fe $3b
	sub a                                            ; $5edf: $97
	dec [hl]                                         ; $5ee0: $35
	ld [hl], a                                       ; $5ee1: $77
	db $ec                                           ; $5ee2: $ec
	ld a, e                                          ; $5ee3: $7b
	rst JumpTable                                          ; $5ee4: $c7
	ld bc, $0ffc                                     ; $5ee5: $01 $fc $0f
	jp $1ff8                                         ; $5ee8: $c3 $f8 $1f


	add b                                            ; $5eeb: $80
	add a                                            ; $5eec: $87
	add b                                            ; $5eed: $80
	ld a, a                                          ; $5eee: $7f
	rra                                              ; $5eef: $1f
	add a                                            ; $5ef0: $87
	di                                               ; $5ef1: $f3
	ld e, l                                          ; $5ef2: $5d
	cpl                                              ; $5ef3: $2f
	sub a                                            ; $5ef4: $97
	rst $38                                          ; $5ef5: $ff
	rst $38                                          ; $5ef6: $ff
	ld hl, sp-$04                                    ; $5ef7: $f8 $fc
	cp $ef                                           ; $5ef9: $fe $ef
	di                                               ; $5efb: $f3
	ld hl, sp+$00                                    ; $5efc: $f8 $00
	ld hl, sp-$02                                    ; $5efe: $f8 $fe
	rst $38                                          ; $5f00: $ff
	ld [hl], a                                       ; $5f01: $77
	rst SubAFromDE                                          ; $5f02: $df
	or l                                             ; $5f03: $b5
	xor h                                            ; $5f04: $ac
	rst $38                                          ; $5f05: $ff
	rst $38                                          ; $5f06: $ff
	daa                                              ; $5f07: $27
	ld b, e                                          ; $5f08: $43
	call $95be                                       ; $5f09: $cd $be $95
	ld hl, sp-$12                                    ; $5f0c: $f8 $ee
	ld sp, $3408                                     ; $5f0e: $31 $08 $34
	adc d                                            ; $5f11: $8a
	push bc                                          ; $5f12: $c5
	push hl                                          ; $5f13: $e5
	ldh [c], a                                       ; $5f14: $e2
	ldh a, [c]                                       ; $5f15: $f2
	db $db                                           ; $5f16: $db
	rst $38                                          ; $5f17: $ff
	add b                                            ; $5f18: $80
	ccf                                              ; $5f19: $3f
	rra                                              ; $5f1a: $1f
	ld [$1a75], a                                    ; $5f1b: $ea $75 $1a
	ld l, l                                          ; $5f1e: $6d
	dec sp                                           ; $5f1f: $3b
	rra                                              ; $5f20: $1f
	add a                                            ; $5f21: $87
	ret nz                                           ; $5f22: $c0

	add b                                            ; $5f23: $80
	ldh [$f0], a                                     ; $5f24: $e0 $f0
	sbc h                                            ; $5f26: $9c
	rst JumpTable                                          ; $5f27: $c7
	ldh [$f8], a                                     ; $5f28: $e0 $f8
	rst $38                                          ; $5f2a: $ff
	add [hl]                                         ; $5f2b: $86
	ld bc, $0f80                                     ; $5f2c: $01 $80 $0f
	or b                                             ; $5f2f: $b0
	ret nz                                           ; $5f30: $c0

	ldh a, [$fc]                                     ; $5f31: $f0 $fc
	ld bc, $3f3c                                     ; $5f33: $01 $3c $3f
	ld a, a                                          ; $5f36: $7f
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5f37: $f0 $81
	ret nz                                           ; $5f39: $c0

	jr nc, jr_05c_5f48                               ; $5f3a: $30 $0c

	nop                                              ; $5f3c: $00
	add b                                            ; $5f3d: $80
	ld h, b                                          ; $5f3e: $60
	sbc b                                            ; $5f3f: $98

jr_05c_5f40:
	halt                                             ; $5f40: $76
	dec c                                            ; $5f41: $0d
	inc bc                                           ; $5f42: $03
	ld bc, $7fff                                     ; $5f43: $01 $ff $7f
	rra                                              ; $5f46: $1f
	rst JumpTable                                          ; $5f47: $c7

jr_05c_5f48:
	ld [hl], c                                       ; $5f48: $71
	inc c                                            ; $5f49: $0c
	ld [bc], a                                       ; $5f4a: $02
	ld bc, $1d1e                                     ; $5f4b: $01 $1e $1d
	ld a, [hl-]                                      ; $5f4e: $3a
	ld [hl], l                                       ; $5f4f: $75
	ld l, d                                          ; $5f50: $6a
	push af                                          ; $5f51: $f5
	ld [$e0d5], a                                    ; $5f52: $ea $d5 $e0
	ldh [$c0], a                                     ; $5f55: $e0 $c0
	ld [hl], a                                       ; $5f57: $77
	ld [hl], c                                       ; $5f58: $71
	sbc d                                            ; $5f59: $9a
	nop                                              ; $5f5a: $00
	adc b                                            ; $5f5b: $88
	ld d, h                                          ; $5f5c: $54
	ld a, [hl+]                                      ; $5f5d: $2a
	dec d                                            ; $5f5e: $15
	ld a, d                                          ; $5f5f: $7a
	rst $38                                          ; $5f60: $ff
	sbc [hl]                                         ; $5f61: $9e
	ld d, l                                          ; $5f62: $55
	ld sp, hl                                        ; $5f63: $f9
	sbc [hl]                                         ; $5f64: $9e
	ld [$6776], sp                                   ; $5f65: $08 $76 $67
	sbc [hl]                                         ; $5f68: $9e
	ld b, b                                          ; $5f69: $40
	ld e, a                                          ; $5f6a: $5f
	dec c                                            ; $5f6b: $0d
	ld a, [hl]                                       ; $5f6c: $7e
	call nz, $fe7b                                   ; $5f6d: $c4 $7b $fe
	ld e, d                                          ; $5f70: $5a
	cp a                                             ; $5f71: $bf
	sbc e                                            ; $5f72: $9b
	inc d                                            ; $5f73: $14
	ld [$4018], sp                                   ; $5f74: $08 $18 $40
	ld a, e                                          ; $5f77: $7b
	ldh [$9e], a                                     ; $5f78: $e0 $9e
	jr nz, jr_05c_5fde                               ; $5f7a: $20 $62

	ldh a, [$7d]                                     ; $5f7c: $f0 $7d
	db $f4                                           ; $5f7e: $f4
	halt                                             ; $5f7f: $76
	ld h, b                                          ; $5f80: $60
	ld [hl], d                                       ; $5f81: $72
	ld e, h                                          ; $5f82: $5c
	db $fd                                           ; $5f83: $fd
	sbc b                                            ; $5f84: $98
	ld d, h                                          ; $5f85: $54
	xor b                                            ; $5f86: $a8
	ld d, h                                          ; $5f87: $54
	jr z, jr_05c_5fde                                ; $5f88: $28 $54

	jr z, jr_05c_5fa0                                ; $5f8a: $28 $14

	ld d, d                                          ; $5f8c: $52
	call z, Call_05c_62fe                            ; $5f8d: $cc $fe $62
	ldh a, [$f1]                                     ; $5f90: $f0 $f1
	ld a, [hl]                                       ; $5f92: $7e
	or b                                             ; $5f93: $b0
	ld a, d                                          ; $5f94: $7a
	cp [hl]                                          ; $5f95: $be
	sbc h                                            ; $5f96: $9c
	ld a, [hl+]                                      ; $5f97: $2a
	ld d, h                                          ; $5f98: $54
	xor b                                            ; $5f99: $a8
	ld sp, hl                                        ; $5f9a: $f9
	sbc $c0                                          ; $5f9b: $de $c0
	rst SubAFromDE                                          ; $5f9d: $df

Jump_05c_5f9e:
	add b                                            ; $5f9e: $80
	sbc l                                            ; $5f9f: $9d

jr_05c_5fa0:
	ld [bc], a                                       ; $5fa0: $02
	inc b                                            ; $5fa1: $04
	ld h, d                                          ; $5fa2: $62
	or b                                             ; $5fa3: $b0
	ld a, [hl]                                       ; $5fa4: $7e
	jr nc, jr_05c_5f40                               ; $5fa5: $30 $99

	nop                                              ; $5fa7: $00
	dec bc                                           ; $5fa8: $0b
	ld bc, $11ab                                     ; $5fa9: $01 $ab $11
	xor e                                            ; $5fac: $ab
	ld [hl], a                                       ; $5fad: $77
	ld [hl], l                                       ; $5fae: $75
	db $dd                                           ; $5faf: $dd
	ld bc, $5680                                     ; $5fb0: $01 $80 $56
	xor a                                            ; $5fb3: $af
	xor a                                            ; $5fb4: $af
	ld d, e                                          ; $5fb5: $53
	reti                                             ; $5fb6: $d9


	ret c                                            ; $5fb7: $d8

	sbc $d1                                          ; $5fb8: $de $d1
	ld l, l                                          ; $5fba: $6d
	call nc, $a6d4                                   ; $5fbb: $d4 $d4 $a6
	ld [hl+], a                                      ; $5fbe: $22
	jr nz, jr_05c_5fe5                               ; $5fbf: $20 $24

	ld h, $ed                                        ; $5fc1: $26 $ed
	ld l, $9f                                        ; $5fc3: $2e $9f
	ld c, l                                          ; $5fc5: $4d
	ld h, $b2                                        ; $5fc6: $26 $b2
	ld e, d                                          ; $5fc8: $5a
	add hl, hl                                       ; $5fc9: $29
	db $db                                           ; $5fca: $db
	push hl                                          ; $5fcb: $e5
	ld [hl], e                                       ; $5fcc: $73
	dec sp                                           ; $5fcd: $3b
	dec e                                            ; $5fce: $1d
	rst GetHLinHL                                          ; $5fcf: $cf
	rst SubAFromBC                                          ; $5fd0: $e7
	add b                                            ; $5fd1: $80
	ld [hl], a                                       ; $5fd2: $77
	ei                                               ; $5fd3: $fb
	db $fd                                           ; $5fd4: $fd
	rst $38                                          ; $5fd5: $ff
	rst $38                                          ; $5fd6: $ff
	ei                                               ; $5fd7: $fb
	rst FarCall                                          ; $5fd8: $f7
	ld [hl], a                                       ; $5fd9: $77
	ld [hl], a                                       ; $5fda: $77
	ld a, h                                          ; $5fdb: $7c
	add [hl]                                         ; $5fdc: $86
	ret nz                                           ; $5fdd: $c0

jr_05c_5fde:
	ld h, b                                          ; $5fde: $60
	add h                                            ; $5fdf: $84
	adc h                                            ; $5fe0: $8c
	call z, $bacc                                    ; $5fe1: $cc $cc $ba
	db $dd                                           ; $5fe4: $dd

jr_05c_5fe5:
	ldh a, [rIE]                                     ; $5fe5: $f0 $ff
	db $f4                                           ; $5fe7: $f4
	db $e3                                           ; $5fe8: $e3
	ldh [hDisp1_SCY], a                                     ; $5fe9: $e0 $90
	ld l, [hl]                                       ; $5feb: $6e
	ld a, $0c                                        ; $5fec: $3e $0c
	nop                                              ; $5fee: $00
	inc bc                                           ; $5fef: $03
	ld bc, $0085                                     ; $5ff0: $01 $85 $00
	ld h, b                                          ; $5ff3: $60
	cp c                                             ; $5ff4: $b9
	inc e                                            ; $5ff5: $1c
	ld c, $87                                        ; $5ff6: $0e $87
	add [hl]                                         ; $5ff8: $86
	ld b, e                                          ; $5ff9: $43
	ld b, e                                          ; $5ffa: $43
	ld d, e                                          ; $5ffb: $53
	rrca                                             ; $5ffc: $0f
	rlca                                             ; $5ffd: $07
	rlca                                             ; $5ffe: $07
	inc bc                                           ; $5fff: $03
	inc bc                                           ; $6000: $03

Call_05c_6001:
	ld bc, $4141                                     ; $6001: $01 $41 $41
	ld b, b                                          ; $6004: $40
	and c                                            ; $6005: $a1
	ld d, c                                          ; $6006: $51
	add hl, hl                                       ; $6007: $29
	sub [hl]                                         ; $6008: $96
	ld c, c                                          ; $6009: $49
	or h                                             ; $600a: $b4
	jp z, $ffd9                                      ; $600b: $ca $d9 $ff

	adc c                                            ; $600e: $89
	ccf                                              ; $600f: $3f
	rst GetHLinHL                                          ; $6010: $cf
	ld a, h                                          ; $6011: $7c
	rra                                              ; $6012: $1f
	add e                                            ; $6013: $83
	ld b, b                                          ; $6014: $40
	and b                                            ; $6015: $a0
	ld e, b                                          ; $6016: $58
	jp Jump_05c_7ff0                                 ; $6017: $c3 $f0 $7f


	rra                                              ; $601a: $1f
	add e                                            ; $601b: $83
	ret nz                                           ; $601c: $c0

	ldh [$f8], a                                     ; $601d: $e0 $f8
	add b                                            ; $601f: $80
	ldh [$5f], a                                     ; $6020: $e0 $5f
	add $ff                                          ; $6022: $c6 $ff
	rra                                              ; $6024: $1f
	ld a, d                                          ; $6025: $7a
	db $ec                                           ; $6026: $ec
	ld a, l                                          ; $6027: $7d
	dec de                                           ; $6028: $1b
	sbc l                                            ; $6029: $9d

jr_05c_602a:
	add c                                            ; $602a: $81
	ld hl, sp+$77                                    ; $602b: $f8 $77
	ld hl, sp-$6c                                    ; $602d: $f8 $94
	ld b, b                                          ; $602f: $40
	ld h, b                                          ; $6030: $60
	ldh a, [rAUD2LOW]                                ; $6031: $f0 $18
	add [hl]                                         ; $6033: $86
	pop hl                                           ; $6034: $e1
	db $fc                                           ; $6035: $fc
	add b                                            ; $6036: $80
	ld b, b                                          ; $6037: $40
	jr nz, jr_05c_602a                               ; $6038: $20 $f0

	ld a, d                                          ; $603a: $7a
	ld h, l                                          ; $603b: $65
	sub [hl]                                         ; $603c: $96
	rra                                              ; $603d: $1f
	xor d                                            ; $603e: $aa
	ld d, l                                          ; $603f: $55
	ld a, [hl+]                                      ; $6040: $2a
	dec d                                            ; $6041: $15
	ld a, [bc]                                       ; $6042: $0a
	dec d                                            ; $6043: $15
	adc d                                            ; $6044: $8a
	push bc                                          ; $6045: $c5
	ei                                               ; $6046: $fb
	sbc h                                            ; $6047: $9c
	add b                                            ; $6048: $80
	ret nz                                           ; $6049: $c0

	adc b                                            ; $604a: $88
	ld a, c                                          ; $604b: $79
	pop de                                           ; $604c: $d1
	ld a, e                                          ; $604d: $7b
	cp $7e                                           ; $604e: $fe $7e
	dec c                                            ; $6050: $0d
	ld [$e723], a                                    ; $6051: $ea $23 $e7
	ld h, [hl]                                       ; $6054: $66
	sub b                                            ; $6055: $90
	sbc h                                            ; $6056: $9c
	db $10                                           ; $6057: $10
	ld hl, $7a12                                     ; $6058: $21 $12 $7a
	sub c                                            ; $605b: $91
	sbc [hl]                                         ; $605c: $9e
	inc d                                            ; $605d: $14
	ld sp, hl                                        ; $605e: $f9
	sbc e                                            ; $605f: $9b
	ld d, b                                          ; $6060: $50
	xor b                                            ; $6061: $a8
	ld b, b                                          ; $6062: $40
	and b                                            ; $6063: $a0
	ld e, d                                          ; $6064: $5a
	ld [hl], c                                       ; $6065: $71
	ld b, c                                          ; $6066: $41
	jr nc, jr_05c_60e2                               ; $6067: $30 $79

	sub d                                            ; $6069: $92
	sbc d                                            ; $606a: $9a
	xor e                                            ; $606b: $ab
	ld d, a                                          ; $606c: $57
	ld a, [hl+]                                      ; $606d: $2a
	ld d, h                                          ; $606e: $54
	and h                                            ; $606f: $a4
	ld e, [hl]                                       ; $6070: $5e
	add b                                            ; $6071: $80
	ld a, h                                          ; $6072: $7c
	pop af                                           ; $6073: $f1
	ld a, h                                          ; $6074: $7c
	cp $5f                                           ; $6075: $fe $5f
	adc $7f                                          ; $6077: $ce $7f
	ldh [c], a                                       ; $6079: $e2
	ld a, e                                          ; $607a: $7b
	sbc $7d                                          ; $607b: $de $7d
	sub b                                            ; $607d: $90
	ld a, l                                          ; $607e: $7d
	jp hl                                            ; $607f: $e9


	ld l, e                                          ; $6080: $6b
	res 0, b                                         ; $6081: $cb $80
	reti                                             ; $6083: $d9


	ld d, b                                          ; $6084: $50
	ldh [$f2], a                                     ; $6085: $e0 $f2
	or l                                             ; $6087: $b5
	add sp, $5c                                      ; $6088: $e8 $5c
	sub $22                                          ; $608a: $d6 $22
	and c                                            ; $608c: $a1
	sub b                                            ; $608d: $90
	sub h                                            ; $608e: $94
	jp nc, Jump_05c_6b5b                             ; $608f: $d2 $5b $6b

	ld l, l                                          ; $6092: $6d
	sbc h                                            ; $6093: $9c
	adc $e6                                          ; $6094: $ce $e6
	ld [hl], e                                       ; $6096: $73
	ld a, [hl-]                                      ; $6097: $3a
	reti                                             ; $6098: $d9


	ld l, h                                          ; $6099: $6c
	halt                                             ; $609a: $76
	ld [hl], e                                       ; $609b: $73
	add hl, sp                                       ; $609c: $39
	sbc l                                            ; $609d: $9d
	ld c, [hl]                                       ; $609e: $4e
	daa                                              ; $609f: $27
	scf                                              ; $60a0: $37
	sbc e                                            ; $60a1: $9b
	sub [hl]                                         ; $60a2: $96
	call $bfbf                                       ; $60a3: $cd $bf $bf
	ld a, a                                          ; $60a6: $7f
	ccf                                              ; $60a7: $3f
	dec sp                                           ; $60a8: $3b
	rra                                              ; $60a9: $1f
	sbc a                                            ; $60aa: $9f
	ld c, a                                          ; $60ab: $4f
	call c, $94e4                                    ; $60ac: $dc $e4 $94
	pop af                                           ; $60af: $f1
	ldh a, [$f8]                                     ; $60b0: $f0 $f8
	ld h, b                                          ; $60b2: $60
	ret z                                            ; $60b3: $c8

	ret c                                            ; $60b4: $d8

	sub b                                            ; $60b5: $90
	ret nc                                           ; $60b6: $d0

	ld b, b                                          ; $60b7: $40
	ldh [rIE], a                                     ; $60b8: $e0 $ff
	ld a, c                                          ; $60ba: $79
	ret nc                                           ; $60bb: $d0

	ld [hl], c                                       ; $60bc: $71
	rst GetHLinHL                                          ; $60bd: $cf
	sbc [hl]                                         ; $60be: $9e
	sub c                                            ; $60bf: $91
	sbc $01                                          ; $60c0: $de $01
	ld a, h                                          ; $60c2: $7c
	ld h, a                                          ; $60c3: $67
	sbc h                                            ; $60c4: $9c
	ld l, $b3                                        ; $60c5: $2e $b3
	add c                                            ; $60c7: $81
	ld [hl], a                                       ; $60c8: $77
	ld sp, hl                                        ; $60c9: $f9
	add b                                            ; $60ca: $80
	rrca                                             ; $60cb: $0f
	rra                                              ; $60cc: $1f
	ld a, h                                          ; $60cd: $7c
	ld a, l                                          ; $60ce: $7d
	sbc e                                            ; $60cf: $9b
	push bc                                          ; $60d0: $c5
	pop af                                           ; $60d1: $f1
	or b                                             ; $60d2: $b0
	ld a, b                                          ; $60d3: $78
	ld hl, sp-$08                                    ; $60d4: $f8 $f8
	rst $38                                          ; $60d6: $ff
	db $fd                                           ; $60d7: $fd
	ld hl, sp-$38                                    ; $60d8: $f8 $c8
	ret z                                            ; $60da: $c8

	add h                                            ; $60db: $84
	inc b                                            ; $60dc: $04
	inc b                                            ; $60dd: $04
	ld h, a                                          ; $60de: $67
	add hl, sp                                       ; $60df: $39
	sbc a                                            ; $60e0: $9f
	rst GetHLinHL                                          ; $60e1: $cf

jr_05c_60e2:
	daa                                              ; $60e2: $27
	jr jr_05c_60ec                                   ; $60e3: $18 $07

	inc bc                                           ; $60e5: $03
	cp $ff                                           ; $60e6: $fe $ff
	rst FarCall                                          ; $60e8: $f7
	ld a, c                                          ; $60e9: $79
	ld a, l                                          ; $60ea: $7d
	ld h, d                                          ; $60eb: $62

jr_05c_60ec:
	sbc [hl]                                         ; $60ec: $9e
	rlca                                             ; $60ed: $07
	halt                                             ; $60ee: $76
	ld c, e                                          ; $60ef: $4b
	sbc $83                                          ; $60f0: $de $83
	sbc l                                            ; $60f2: $9d
	jp Jump_05c_6ec1                                 ; $60f3: $c3 $c1 $6e


	pop hl                                           ; $60f6: $e1
	rst SubAFromDE                                          ; $60f7: $df
	add b                                            ; $60f8: $80
	sub d                                            ; $60f9: $92
	rst AddAOntoHL                                          ; $60fa: $ef
	ei                                               ; $60fb: $fb
	db $f4                                           ; $60fc: $f4
	db $fc                                           ; $60fd: $fc
	cp $fb                                           ; $60fe: $fe $fb
	ei                                               ; $6100: $fb
	rst $38                                          ; $6101: $ff
	rra                                              ; $6102: $1f
	dec bc                                           ; $6103: $0b
	inc c                                            ; $6104: $0c
	inc b                                            ; $6105: $04
	ld b, $7a                                        ; $6106: $06 $7a
	ld a, h                                          ; $6108: $7c
	sub l                                            ; $6109: $95
	ldh [c], a                                       ; $610a: $e2
	cp c                                             ; $610b: $b9
	call z, $1166                                    ; $610c: $cc $66 $11
	ld [$4084], sp                                   ; $610f: $08 $84 $40
	ldh [$b8], a                                     ; $6112: $e0 $b8
	ld [hl], e                                       ; $6114: $73
	ld hl, sp+$7f                                    ; $6115: $f8 $7f
	sbc h                                            ; $6117: $9c
	ld a, a                                          ; $6118: $7f
	ld de, $6e7d                                     ; $6119: $11 $7d $6e
	sbc h                                            ; $611c: $9c
	sub l                                            ; $611d: $95
	ld c, d                                          ; $611e: $4a
	dec b                                            ; $611f: $05
	ld l, a                                          ; $6120: $6f
	ret nc                                           ; $6121: $d0

	ld h, [hl]                                       ; $6122: $66
	jp nc, $b145                                     ; $6123: $d2 $45 $b1

	ld b, [hl]                                       ; $6126: $46
	set 6, a                                         ; $6127: $cb $f7
	ld a, c                                          ; $6129: $79
	add e                                            ; $612a: $83
	ld a, e                                          ; $612b: $7b
	ld bc, $fe7f                                     ; $612c: $01 $7f $fe
	add sp, $7d                                      ; $612f: $e8 $7d
	and h                                            ; $6131: $a4
	sbc e                                            ; $6132: $9b
	nop                                              ; $6133: $00
	inc b                                            ; $6134: $04
	ld a, [bc]                                       ; $6135: $0a
	dec d                                            ; $6136: $15
	ld e, l                                          ; $6137: $5d
	and b                                            ; $6138: $a0
	cp $79                                           ; $6139: $fe $79
	inc sp                                           ; $613b: $33
	sbc [hl]                                         ; $613c: $9e
	ld b, h                                          ; $613d: $44
	jp hl                                            ; $613e: $e9


	sbc h                                            ; $613f: $9c
	ld c, c                                          ; $6140: $49
	or d                                             ; $6141: $b2
	ld d, c                                          ; $6142: $51
	ld [hl], h                                       ; $6143: $74
	ld l, $9e                                        ; $6144: $2e $9e
	add d                                            ; $6146: $82
	ld sp, hl                                        ; $6147: $f9
	sbc h                                            ; $6148: $9c
	ld l, a                                          ; $6149: $6f
	or a                                             ; $614a: $b7
	ld e, l                                          ; $614b: $5d
	ld [hl], a                                       ; $614c: $77
	ldh a, [$99]                                     ; $614d: $f0 $99
	xor d                                            ; $614f: $aa
	inc [hl]                                         ; $6150: $34
	ld a, [de]                                       ; $6151: $1a
	dec bc                                           ; $6152: $0b
	dec c                                            ; $6153: $0d
	ld b, $79                                        ; $6154: $06 $79
	xor a                                            ; $6156: $af
	add h                                            ; $6157: $84
	dec sp                                           ; $6158: $3b
	add hl, de                                       ; $6159: $19
	adc l                                            ; $615a: $8d
	adc $e6                                          ; $615b: $ce $e6
	di                                               ; $615d: $f3
	ld [hl], c                                       ; $615e: $71
	ret c                                            ; $615f: $d8

	and $f7                                          ; $6160: $e6 $f7
	ld a, e                                          ; $6162: $7b
	cp c                                             ; $6163: $b9
	sbc l                                            ; $6164: $9d
	ld c, [hl]                                       ; $6165: $4e
	xor a                                            ; $6166: $af
	or a                                             ; $6167: $b7
	cpl                                              ; $6168: $2f
	rla                                              ; $6169: $17
	dec bc                                           ; $616a: $0b
	add a                                            ; $616b: $87
	ld b, c                                          ; $616c: $41
	jr nz, jr_05c_617f                               ; $616d: $20 $10

	adc b                                            ; $616f: $88
	db $fc                                           ; $6170: $fc
	rst $38                                          ; $6171: $ff
	cp $db                                           ; $6172: $fe $db
	rst $38                                          ; $6174: $ff
	sub h                                            ; $6175: $94
	db $fd                                           ; $6176: $fd
	cp $f7                                           ; $6177: $fe $f7
	ei                                               ; $6179: $fb

jr_05c_617a:
	db $dd                                           ; $617a: $dd
	ld l, [hl]                                       ; $617b: $6e
	scf                                              ; $617c: $37
	inc bc                                           ; $617d: $03
	sbc a                                            ; $617e: $9f

jr_05c_617f:
	rst SubAFromDE                                          ; $617f: $df
	ccf                                              ; $6180: $3f
	call c, $8fff                                    ; $6181: $dc $ff $8f
	ld a, a                                          ; $6184: $7f
	cp a                                             ; $6185: $bf
	ld d, a                                          ; $6186: $57
	xor a                                            ; $6187: $af
	ld a, a                                          ; $6188: $7f
	cp [hl]                                          ; $6189: $be
	ld e, a                                          ; $618a: $5f
	ret nz                                           ; $618b: $c0

	ldh a, [$f8]                                     ; $618c: $f0 $f8
	db $fc                                           ; $618e: $fc
	db $fd                                           ; $618f: $fd

Call_05c_6190:
	ld a, [$f0f8]                                    ; $6190: $fa $f8 $f0
	ld hl, sp+$7b                                    ; $6193: $f8 $7b
	inc h                                            ; $6195: $24
	sbc c                                            ; $6196: $99
	db $10                                           ; $6197: $10
	jr nc, jr_05c_617a                               ; $6198: $30 $e0

	ldh [rP1], a                                     ; $619a: $e0 $00
	ldh a, [$6e]                                     ; $619c: $f0 $6e
	ld c, h                                          ; $619e: $4c
	rst SubAFromDE                                          ; $619f: $df
	ld bc, $10df                                     ; $61a0: $01 $df $10
	sbc e                                            ; $61a3: $9b
	jr nc, jr_05c_61c6                               ; $61a4: $30 $20

	ld h, b                                          ; $61a6: $60
	ldh [$f9], a                                     ; $61a7: $e0 $f9
	sbc d                                            ; $61a9: $9a
	pop bc                                           ; $61aa: $c1
	pop hl                                           ; $61ab: $e1

jr_05c_61ac:
	ldh [$f0], a                                     ; $61ac: $e0 $f0
	ldh a, [$de]                                     ; $61ae: $f0 $de
	ld a, b                                          ; $61b0: $78
	rst SubAFromDE                                          ; $61b1: $df
	ld b, b                                          ; $61b2: $40
	sbc $20                                          ; $61b3: $de $20
	sbc $10                                          ; $61b5: $de $10
	ld a, e                                          ; $61b7: $7b
	cp a                                             ; $61b8: $bf
	sbc c                                            ; $61b9: $99
	sbc a                                            ; $61ba: $9f
	ld l, a                                          ; $61bb: $6f
	ccf                                              ; $61bc: $3f
	ccf                                              ; $61bd: $3f
	rra                                              ; $61be: $1f
	ld [bc], a                                       ; $61bf: $02
	db $dd                                           ; $61c0: $dd
	ld bc, $a774                                     ; $61c1: $01 $74 $a7
	adc l                                            ; $61c4: $8d
	ret nc                                           ; $61c5: $d0

jr_05c_61c6:
	add sp, -$0c                                     ; $61c6: $e8 $f4
	ld a, [$fefd]                                    ; $61c8: $fa $fd $fe
	sbc [hl]                                         ; $61cb: $9e
	ldh [rSVBK], a                                   ; $61cc: $e0 $70
	jr c, jr_05c_61ac                                ; $61ce: $38 $dc

	xor $97                                          ; $61d0: $ee $97
	db $eb                                           ; $61d2: $eb
	di                                               ; $61d3: $f3
	ld a, [bc]                                       ; $61d4: $0a
	dec d                                            ; $61d5: $15
	ld l, $76                                        ; $61d6: $2e $76
	ld bc, $c09e                                     ; $61d8: $01 $9e $c0
	ld l, d                                          ; $61db: $6a
	ret z                                            ; $61dc: $c8

	ld h, a                                          ; $61dd: $67
	rst FarCall                                          ; $61de: $f7
	db $f4                                           ; $61df: $f4
	sbc [hl]                                         ; $61e0: $9e
	ld [$10de], sp                                   ; $61e1: $08 $de $10
	ld e, [hl]                                       ; $61e4: $5e
	call nz, $b67f                                   ; $61e5: $c4 $7f $b6
	ld a, [hl]                                       ; $61e8: $7e
	db $ed                                           ; $61e9: $ed
	ld h, b                                          ; $61ea: $60
	ld b, c                                          ; $61eb: $41
	ld [hl], c                                       ; $61ec: $71
	ld b, d                                          ; $61ed: $42
	push hl                                          ; $61ee: $e5
	sbc h                                            ; $61ef: $9c
	inc d                                            ; $61f0: $14
	jr z, jr_05c_61f7                                ; $61f1: $28 $04

	ld d, l                                          ; $61f3: $55
	add c                                            ; $61f4: $81
	sbc b                                            ; $61f5: $98
	nop                                              ; $61f6: $00

jr_05c_61f7:
	xor b                                            ; $61f7: $a8
	ld d, b                                          ; $61f8: $50
	and d                                            ; $61f9: $a2
	ld d, h                                          ; $61fa: $54
	xor b                                            ; $61fb: $a8
	db $10                                           ; $61fc: $10
	ld a, d                                          ; $61fd: $7a
	cp [hl]                                          ; $61fe: $be
	ld h, $65                                        ; $61ff: $26 $65
	sbc l                                            ; $6201: $9d
	inc bc                                           ; $6202: $03
	dec b                                            ; $6203: $05
	ld [hl], a                                       ; $6204: $77
	ld d, l                                          ; $6205: $55
	ld hl, sp-$69                                    ; $6206: $f8 $97
	ld [hl], l                                       ; $6208: $75
	and d                                            ; $6209: $a2
	ld h, c                                          ; $620a: $61
	or b                                             ; $620b: $b0
	ld e, b                                          ; $620c: $58
	xor b                                            ; $620d: $a8
	call nc, $f9be                                   ; $620e: $d4 $be $f9
	sub h                                            ; $6211: $94
	cp h                                             ; $6212: $bc
	adc $76                                          ; $6213: $ce $76
	ld l, $17                                        ; $6215: $2e $17
	ld c, l                                          ; $6217: $4d
	ld h, $26                                        ; $6218: $26 $26
	db $d3                                           ; $621a: $d3
	ld a, c                                          ; $621b: $79
	dec l                                            ; $621c: $2d
	ld a, d                                          ; $621d: $7a
	xor l                                            ; $621e: $ad
	add b                                            ; $621f: $80
	dec b                                            ; $6220: $05
	inc b                                            ; $6221: $04
	ld h, h                                          ; $6222: $64
	ld [hl], e                                       ; $6223: $73
	add hl, sp                                       ; $6224: $39
	jr @-$62                                         ; $6225: $18 $9c

	and [hl]                                         ; $6227: $a6
	add sp, $41                                      ; $6228: $e8 $41
	rst SubAFromDE                                          ; $622a: $df
	adc $e3                                          ; $622b: $ce $e3
	rst FarCall                                          ; $622d: $f7
	inc sp                                           ; $622e: $33
	ld d, c                                          ; $622f: $51
	sbc l                                            ; $6230: $9d
	adc $1b                                          ; $6231: $ce $1b
	dec c                                            ; $6233: $0d
	sub [hl]                                         ; $6234: $96
	bit 4, l                                         ; $6235: $cb $65
	ld [hl-], a                                      ; $6237: $32
	add hl, hl                                       ; $6238: $29

jr_05c_6239:
	rla                                              ; $6239: $17
	rst $38                                          ; $623a: $ff
	rst $38                                          ; $623b: $ff
	ld l, a                                          ; $623c: $6f
	and a                                            ; $623d: $a7
	db $db                                           ; $623e: $db
	sbc c                                            ; $623f: $99
	db $ed                                           ; $6240: $ed
	halt                                             ; $6241: $76
	ld hl, sp-$41                                    ; $6242: $f8 $bf
	ld a, a                                          ; $6244: $7f
	rst $38                                          ; $6245: $ff
	ld a, d                                          ; $6246: $7a
	and [hl]                                         ; $6247: $a6
	sbc e                                            ; $6248: $9b
	ccf                                              ; $6249: $3f
	rrca                                             ; $624a: $0f
	ldh a, [$e0]                                     ; $624b: $f0 $e0
	ld a, c                                          ; $624d: $79
	ld [hl], c                                       ; $624e: $71
	ld a, [hl]                                       ; $624f: $7e
	cp e                                             ; $6250: $bb
	sbc h                                            ; $6251: $9c
	db $fc                                           ; $6252: $fc
	pop bc                                           ; $6253: $c1
	add a                                            ; $6254: $87
	ld a, e                                          ; $6255: $7b
	ld d, b                                          ; $6256: $50
	sbc $80                                          ; $6257: $de $80
	ld sp, hl                                        ; $6259: $f9
	sub d                                            ; $625a: $92
	ret nc                                           ; $625b: $d0

	add b                                            ; $625c: $80
	jp hl                                            ; $625d: $e9


	ld h, a                                          ; $625e: $67
	inc sp                                           ; $625f: $33
	ld a, [hl-]                                      ; $6260: $3a
	add hl, de                                       ; $6261: $19
	inc e                                            ; $6262: $1c
	jr nz, jr_05c_62d5                               ; $6263: $20 $70

	db $10                                           ; $6265: $10
	jr jr_05c_6274                                   ; $6266: $18 $0c

	ld a, c                                          ; $6268: $79
	and b                                            ; $6269: $a0
	sub l                                            ; $626a: $95
	ld a, b                                          ; $626b: $78
	db $fc                                           ; $626c: $fc
	ld hl, sp-$0c                                    ; $626d: $f8 $f4
	db $f4                                           ; $626f: $f4
	db $e4                                           ; $6270: $e4
	inc b                                            ; $6271: $04
	cp $08                                           ; $6272: $fe $08

jr_05c_6274:
	ld [$0cde], sp                                   ; $6274: $08 $de $0c
	sbc [hl]                                         ; $6277: $9e
	inc e                                            ; $6278: $1c
	ld a, b                                          ; $6279: $78
	ld c, a                                          ; $627a: $4f
	sbc $1f                                          ; $627b: $de $1f
	rst SubAFromDE                                          ; $627d: $df
	ccf                                              ; $627e: $3f
	sbc [hl]                                         ; $627f: $9e
	ld a, $63                                        ; $6280: $3e $63
	add b                                            ; $6282: $80
	adc e                                            ; $6283: $8b
	rst AddAOntoHL                                          ; $6284: $ef
	rst FarCall                                          ; $6285: $f7
	ei                                               ; $6286: $fb
	db $fd                                           ; $6287: $fd
	rst $38                                          ; $6288: $ff

jr_05c_6289:
	ccf                                              ; $6289: $3f
	ld a, $1c                                        ; $628a: $3e $1c
	ld sp, hl                                        ; $628c: $f9
	ld e, h                                          ; $628d: $5c
	ld c, [hl]                                       ; $628e: $4e
	daa                                              ; $628f: $27
	inc hl                                           ; $6290: $23
	ld hl, $1010                                     ; $6291: $21 $10 $10
	ld b, b                                          ; $6294: $40
	and b                                            ; $6295: $a0

jr_05c_6296:
	ret nc                                           ; $6296: $d0

	ldh a, [$79]                                     ; $6297: $f0 $79
	inc sp                                           ; $6299: $33
	sub a                                            ; $629a: $97
	inc a                                            ; $629b: $3c
	ret nz                                           ; $629c: $c0

	ldh [rSVBK], a                                   ; $629d: $e0 $70
	jr nc, jr_05c_6239                               ; $629f: $30 $98

	call nz, $7760                                   ; $62a1: $c4 $60 $77
	daa                                              ; $62a4: $27
	sbc l                                            ; $62a5: $9d
	rrca                                             ; $62a6: $0f
	push af                                          ; $62a7: $f5
	ld a, d                                          ; $62a8: $7a
	db $10                                           ; $62a9: $10
	or $9e                                           ; $62aa: $f6 $9e
	rst $38                                          ; $62ac: $ff
	halt                                             ; $62ad: $76
	nop                                              ; $62ae: $00
	or $9d                                           ; $62af: $f6 $9d
	add b                                            ; $62b1: $80
	ld a, h                                          ; $62b2: $7c
	ld a, b                                          ; $62b3: $78
	sbc h                                            ; $62b4: $9c
	db $f4                                           ; $62b5: $f4
	sbc h                                            ; $62b6: $9c
	add b                                            ; $62b7: $80
	ld [hl], b                                       ; $62b8: $70
	xor h                                            ; $62b9: $ac
	ldh [$c8], a                                     ; $62ba: $e0 $c8
	sbc b                                            ; $62bc: $98
	db $10                                           ; $62bd: $10
	ld a, [hl+]                                      ; $62be: $2a
	inc d                                            ; $62bf: $14
	jr z, jr_05c_62d2                                ; $62c0: $28 $10

	ld [bc], a                                       ; $62c2: $02
	inc d                                            ; $62c3: $14
	ld e, [hl]                                       ; $62c4: $5e
	ret nz                                           ; $62c5: $c0

	rst SubAFromDE                                          ; $62c6: $df
	inc bc                                           ; $62c7: $03
	ld a, l                                          ; $62c8: $7d
	ld e, a                                          ; $62c9: $5f
	sbc l                                            ; $62ca: $9d
	ld d, e                                          ; $62cb: $53
	xor [hl]                                         ; $62cc: $ae
	ld sp, hl                                        ; $62cd: $f9
	sbc h                                            ; $62ce: $9c
	push bc                                          ; $62cf: $c5
	add d                                            ; $62d0: $82
	add l                                            ; $62d1: $85

jr_05c_62d2:
	halt                                             ; $62d2: $76
	ld d, e                                          ; $62d3: $53
	ld h, e                                          ; $62d4: $63

jr_05c_62d5:
	db $10                                           ; $62d5: $10
	sub a                                            ; $62d6: $97
	jp Jump_05c_4181                                 ; $62d7: $c3 $81 $41


	add b                                            ; $62da: $80
	ld b, b                                          ; $62db: $40
	ld h, c                                          ; $62dc: $61
	db $d3                                           ; $62dd: $d3
	xor a                                            ; $62de: $af
	ld a, d                                          ; $62df: $7a
	sbc e                                            ; $62e0: $9b
	halt                                             ; $62e1: $76
	inc [hl]                                         ; $62e2: $34
	adc d                                            ; $62e3: $8a
	inc b                                            ; $62e4: $04
	ret nz                                           ; $62e5: $c0

	ld h, b                                          ; $62e6: $60
	and h                                            ; $62e7: $a4
	nop                                              ; $62e8: $00
	nop                                              ; $62e9: $00
	ldh [$f0], a                                     ; $62ea: $e0 $f0
	ld hl, sp+$42                                    ; $62ec: $f8 $42
	and a                                            ; $62ee: $a7
	and c                                            ; $62ef: $a1
	add e                                            ; $62f0: $83
	nop                                              ; $62f1: $00
	ldh [hDisp1_SCY], a                                     ; $62f2: $e0 $90
	ld c, b                                          ; $62f4: $48
	adc d                                            ; $62f5: $8a
	add l                                            ; $62f6: $85
	ld b, d                                          ; $62f7: $42
	ld hl, $4d7b                                     ; $62f8: $21 $7b $4d
	adc b                                            ; $62fb: $88
	ld [hl], b                                       ; $62fc: $70
	ld a, h                                          ; $62fd: $7c

Call_05c_62fe:
	ld l, [hl]                                       ; $62fe: $6e
	ccf                                              ; $62ff: $3f
	rst GetHLinHL                                          ; $6300: $cf
	cp e                                             ; $6301: $bb
	rrca                                             ; $6302: $0f
	ld c, a                                          ; $6303: $4f
	jr nc, jr_05c_6289                               ; $6304: $30 $83

	ret nz                                           ; $6306: $c0

	ld [hl], b                                       ; $6307: $70
	jr c, jr_05c_6296                                ; $6308: $38 $8c

	ld a, a                                          ; $630a: $7f
	ret nz                                           ; $630b: $c0

	nop                                              ; $630c: $00
	ld e, a                                          ; $630d: $5f
	ccf                                              ; $630e: $3f
	adc a                                            ; $630f: $8f
	rst JumpTable                                          ; $6310: $c7
	di                                               ; $6311: $f3
	rst $38                                          ; $6312: $ff
	ld a, c                                          ; $6313: $79
	ldh [c], a                                       ; $6314: $e2
	sbc e                                            ; $6315: $9b
	ret nz                                           ; $6316: $c0

	jr c, @+$08                                      ; $6317: $38 $06

	rra                                              ; $6319: $1f
	ld [hl], l                                       ; $631a: $75
	sub d                                            ; $631b: $92
	sbc e                                            ; $631c: $9b
	ret nz                                           ; $631d: $c0

	ld hl, sp-$02                                    ; $631e: $f8 $fe
	rst $38                                          ; $6320: $ff
	ld a, e                                          ; $6321: $7b
	ld hl, sp-$65                                    ; $6322: $f8 $9b
	inc e                                            ; $6324: $1c
	add hl, de                                       ; $6325: $19
	rlca                                             ; $6326: $07
	inc a                                            ; $6327: $3c
	ld [hl], a                                       ; $6328: $77
	pop af                                           ; $6329: $f1
	ld a, h                                          ; $632a: $7c
	inc hl                                           ; $632b: $23
	sbc l                                            ; $632c: $9d
	ld e, $78                                        ; $632d: $1e $78
	ld [hl], l                                       ; $632f: $75
	call nz, $269e                                   ; $6330: $c4 $9e $26
	ld l, l                                          ; $6333: $6d
	halt                                             ; $6334: $76
	sbc l                                            ; $6335: $9d
	ld bc, $69f9                                     ; $6336: $01 $f9 $69
	or a                                             ; $6339: $b7
	sbc b                                            ; $633a: $98
	inc e                                            ; $633b: $1c
	ld a, $0f                                        ; $633c: $3e $0f
	rlca                                             ; $633e: $07
	ld bc, $0f03                                     ; $633f: $01 $03 $0f
	ld [hl], a                                       ; $6342: $77
	push de                                          ; $6343: $d5
	ld l, l                                          ; $6344: $6d
	ldh a, [hDisp0_BGP]                                     ; $6345: $f0 $85
	jr @+$3c                                         ; $6347: $18 $3a

	ld sp, hl                                        ; $6349: $f9
	ld hl, sp-$08                                    ; $634a: $f8 $f8
	ldh [hDisp0_SCX], a                                     ; $634c: $e0 $84
	jr @+$0e                                         ; $634e: $18 $0c

	inc c                                            ; $6350: $0c
	ld c, $0f                                        ; $6351: $0e $0f
	rrca                                             ; $6353: $0f
	rra                                              ; $6354: $1f
	ld [hl], e                                       ; $6355: $73
	dec e                                            ; $6356: $1d
	ld a, [hl-]                                      ; $6357: $3a
	cp l                                             ; $6358: $bd
	cp $fd                                           ; $6359: $fe $fd
	ld a, [$6a75]                                    ; $635b: $fa $75 $6a
	db $10                                           ; $635e: $10
	db $10                                           ; $635f: $10
	ld [$8071], sp                                   ; $6360: $08 $71 $80
	halt                                             ; $6363: $76
	call nc, $559c                                   ; $6364: $d4 $9c $55
	xor a                                            ; $6367: $af
	ld a, l                                          ; $6368: $7d
	ld h, b                                          ; $6369: $60
	sub b                                            ; $636a: $90
	ld a, a                                          ; $636b: $7f
	ldh a, [c]                                       ; $636c: $f2
	sbc c                                            ; $636d: $99
	ld [hl], b                                       ; $636e: $70
	ret nz                                           ; $636f: $c0

	add c                                            ; $6370: $81
	ld a, [bc]                                       ; $6371: $0a
	dec d                                            ; $6372: $15
	ld a, [hl+]                                      ; $6373: $2a
	ld h, e                                          ; $6374: $63
	ldh a, [$9b]                                     ; $6375: $f0 $9b
	ld a, [bc]                                       ; $6377: $0a
	dec b                                            ; $6378: $05
	ld a, [hl+]                                      ; $6379: $2a
	dec d                                            ; $637a: $15
	ld e, d                                          ; $637b: $5a
	or b                                             ; $637c: $b0
	sbc h                                            ; $637d: $9c
	ld d, [hl]                                       ; $637e: $56
	xor d                                            ; $637f: $aa
	ld d, a                                          ; $6380: $57
	ld a, e                                          ; $6381: $7b
	cp $9e                                           ; $6382: $fe $9e
	ld e, a                                          ; $6384: $5f
	ld h, e                                          ; $6385: $63
	ldh a, [$9b]                                     ; $6386: $f0 $9b
	rrca                                             ; $6388: $0f
	ld a, [hl+]                                      ; $6389: $2a
	rst $38                                          ; $638a: $ff
	xor d                                            ; $638b: $aa
	ld [hl], a                                       ; $638c: $77
	cp $f9                                           ; $638d: $fe $f9
	sbc h                                            ; $638f: $9c
	ldh a, [$ac]                                     ; $6390: $f0 $ac
	cp $7b                                           ; $6392: $fe $7b
	ldh a, [c]                                       ; $6394: $f2
	sbc l                                            ; $6395: $9d
	db $fc                                           ; $6396: $fc
	xor b                                            ; $6397: $a8
	or $9e                                           ; $6398: $f6 $9e
	and b                                            ; $639a: $a0
	ld d, l                                          ; $639b: $55
	inc e                                            ; $639c: $1c
	ld [hl], a                                       ; $639d: $77
	adc d                                            ; $639e: $8a
	push af                                          ; $639f: $f5
	sbc b                                            ; $63a0: $98
	ld d, l                                          ; $63a1: $55
	xor e                                            ; $63a2: $ab
	ld d, a                                          ; $63a3: $57
	ld a, [bc]                                       ; $63a4: $0a
	ld d, l                                          ; $63a5: $55
	ld a, [bc]                                       ; $63a6: $0a
	ld [$1061], sp                                   ; $63a7: $08 $61 $10
	sbc b                                            ; $63aa: $98
	add c                                            ; $63ab: $81
	adc $75                                          ; $63ac: $ce $75
	xor d                                            ; $63ae: $aa
	ld bc, $00aa                                     ; $63af: $01 $aa $00
	ld h, e                                          ; $63b2: $63
	ld [hl], b                                       ; $63b3: $70
	sub a                                            ; $63b4: $97
	ld d, h                                          ; $63b5: $54
	xor h                                            ; $63b6: $ac
	ld d, a                                          ; $63b7: $57
	xor e                                            ; $63b8: $ab
	ld d, a                                          ; $63b9: $57
	xor e                                            ; $63ba: $ab
	dec b                                            ; $63bb: $05
	xor d                                            ; $63bc: $aa
	sbc $04                                          ; $63bd: $de $04
	rst SubAFromDE                                          ; $63bf: $df
	ld [bc], a                                       ; $63c0: $02
	ld a, d                                          ; $63c1: $7a
	cp l                                             ; $63c2: $bd
	ld a, h                                          ; $63c3: $7c
	ld l, e                                          ; $63c4: $6b
	sub c                                            ; $63c5: $91
	cp $f8                                           ; $63c6: $fe $f8
	ldh [$c0], a                                     ; $63c8: $e0 $c0
	ret nz                                           ; $63ca: $c0

	add b                                            ; $63cb: $80
	inc h                                            ; $63cc: $24
	dec h                                            ; $63cd: $25
	ld d, $18                                        ; $63ce: $16 $18
	jr nz, @+$42                                     ; $63d0: $20 $40

	ret nz                                           ; $63d2: $c0

	add b                                            ; $63d3: $80
	ld a, b                                          ; $63d4: $78
	ld l, d                                          ; $63d5: $6a
	ld a, a                                          ; $63d6: $7f
	ld de, $079c                                     ; $63d7: $11 $9c $07
	ld c, $3d                                        ; $63da: $0e $3d
	ld l, h                                          ; $63dc: $6c
	ld h, d                                          ; $63dd: $62
	ld a, a                                          ; $63de: $7f
	db $f4                                           ; $63df: $f4
	sbc l                                            ; $63e0: $9d
	nop                                              ; $63e1: $00
	jr c, jr_05c_645d                                ; $63e2: $38 $79

	add b                                            ; $63e4: $80
	sbc h                                            ; $63e5: $9c
	ld hl, sp-$1c                                    ; $63e6: $f8 $e4
	and d                                            ; $63e8: $a2
	db $fd                                           ; $63e9: $fd
	sbc [hl]                                         ; $63ea: $9e
	ld b, $78                                        ; $63eb: $06 $78
	ld l, $97                                        ; $63ed: $2e $97
	nop                                              ; $63ef: $00
	rlca                                             ; $63f0: $07
	rst $38                                          ; $63f1: $ff
	rst $38                                          ; $63f2: $ff
	rra                                              ; $63f3: $1f
	dec bc                                           ; $63f4: $0b
	ld b, h                                          ; $63f5: $44
	ld b, e                                          ; $63f6: $43
	ld [hl], d                                       ; $63f7: $72
	db $e4                                           ; $63f8: $e4
	ld a, e                                          ; $63f9: $7b
	ldh a, [$7b]                                     ; $63fa: $f0 $7b
	pop af                                           ; $63fc: $f1
	sbc d                                            ; $63fd: $9a
	rst $38                                          ; $63fe: $ff
	ld hl, sp-$04                                    ; $63ff: $f8 $fc
	ccf                                              ; $6401: $3f
	rrca                                             ; $6402: $0f
	db $fc                                           ; $6403: $fc
	sbc [hl]                                         ; $6404: $9e
	db $fc                                           ; $6405: $fc
	call c, $9aff                                    ; $6406: $dc $ff $9a
	rlca                                             ; $6409: $07
	rra                                              ; $640a: $1f
	ccf                                              ; $640b: $3f
	rst $38                                          ; $640c: $ff
	pop bc                                           ; $640d: $c1
	ld l, c                                          ; $640e: $69
	push bc                                          ; $640f: $c5
	ld a, e                                          ; $6410: $7b
	call nz, $f190                                   ; $6411: $c4 $90 $f1
	db $e3                                           ; $6414: $e3
	rst GetHLinHL                                          ; $6415: $cf
	ccf                                              ; $6416: $3f
	rst $38                                          ; $6417: $ff
	adc a                                            ; $6418: $8f
	ld bc, $0f07                                     ; $6419: $01 $07 $0f
	ld e, $3c                                        ; $641c: $1e $3c
	ldh a, [$f0]                                     ; $641e: $f0 $f0
	adc h                                            ; $6420: $8c
	ld l, a                                          ; $6421: $6f
	sbc $ff                                          ; $6422: $de $ff
	sbc d                                            ; $6424: $9a
	db $fd                                           ; $6425: $fd
	ldh a, [c]                                       ; $6426: $f2
	push hl                                          ; $6427: $e5
	jp z, Jump_05c_7be0                              ; $6428: $ca $e0 $7b

	sbc b                                            ; $642b: $98
	sub l                                            ; $642c: $95
	inc c                                            ; $642d: $0c
	db $10                                           ; $642e: $10
	jr nz, jr_05c_6471                               ; $642f: $20 $40

	ret c                                            ; $6431: $d8

	or b                                             ; $6432: $b0
	push bc                                          ; $6433: $c5
	and d                                            ; $6434: $a2
	ld b, l                                          ; $6435: $45
	and d                                            ; $6436: $a2
	ld e, [hl]                                       ; $6437: $5e
	ldh a, [rPCM12]                                  ; $6438: $f0 $76
	db $e4                                           ; $643a: $e4
	ld a, e                                          ; $643b: $7b
	cp $9e                                           ; $643c: $fe $9e
	xor e                                            ; $643e: $ab
	ld h, e                                          ; $643f: $63
	ldh a, [rPCM12]                                  ; $6440: $f0 $76
	jp nc, $ae9d                                     ; $6442: $d2 $9d $ae

	ld [hl], l                                       ; $6445: $75
	ld h, e                                          ; $6446: $63
	ldh [rPCM12], a                                  ; $6447: $e0 $76
	and d                                            ; $6449: $a2
	ld d, l                                          ; $644a: $55
	ld h, b                                          ; $644b: $60
	ld a, [hl]                                       ; $644c: $7e
	add $7c                                          ; $644d: $c6 $7c
	rst SubAFromDE                                          ; $644f: $df
	ld d, l                                          ; $6450: $55
	ld h, b                                          ; $6451: $60
	sbc b                                            ; $6452: $98
	rst SubAFromBC                                          ; $6453: $e7
	jp nz, $0080                                     ; $6454: $c2 $80 $00

	ret nz                                           ; $6457: $c0

	cp h                                             ; $6458: $bc
	ld d, a                                          ; $6459: $57
	ld e, [hl]                                       ; $645a: $5e
	ret nz                                           ; $645b: $c0

	sbc c                                            ; $645c: $99

jr_05c_645d:
	and b                                            ; $645d: $a0

jr_05c_645e:
	pop af                                           ; $645e: $f1
	dec de                                           ; $645f: $1b
	add hl, bc                                       ; $6460: $09
	dec b                                            ; $6461: $05
	db $fd                                           ; $6462: $fd
	ld h, e                                          ; $6463: $63
	or b                                             ; $6464: $b0
	ld a, a                                          ; $6465: $7f
	db $e3                                           ; $6466: $e3
	ld a, a                                          ; $6467: $7f
	dec de                                           ; $6468: $1b
	sbc [hl]                                         ; $6469: $9e
	ld h, b                                          ; $646a: $60
	ld a, e                                          ; $646b: $7b
	db $fc                                           ; $646c: $fc
	or $9a                                           ; $646d: $f6 $9a
	inc d                                            ; $646f: $14
	ld a, [bc]                                       ; $6470: $0a

jr_05c_6471:
	ld d, h                                          ; $6471: $54
	ld a, [hl+]                                      ; $6472: $2a
	dec d                                            ; $6473: $15
	ld sp, hl                                        ; $6474: $f9
	sbc d                                            ; $6475: $9a
	sub b                                            ; $6476: $90
	ld h, b                                          ; $6477: $60
	ld d, b                                          ; $6478: $50
	ld c, h                                          ; $6479: $4c
	add e                                            ; $647a: $83
	ld h, c                                          ; $647b: $61
	sub d                                            ; $647c: $92

Call_05c_647d:
	ld a, d                                          ; $647d: $7a
	rst $38                                          ; $647e: $ff
	ld a, c                                          ; $647f: $79
	sbc h                                            ; $6480: $9c
	sbc e                                            ; $6481: $9b
	inc b                                            ; $6482: $04
	adc b                                            ; $6483: $88
	ld [hl], b                                       ; $6484: $70
	jr c, @+$64                                      ; $6485: $38 $62

	or b                                             ; $6487: $b0
	sbc h                                            ; $6488: $9c
	ld a, [hl+]                                      ; $6489: $2a
	ld bc, $7b0a                                     ; $648a: $01 $0a $7b
	cp $75                                           ; $648d: $fe $75
	ld l, h                                          ; $648f: $6c
	ld [hl], e                                       ; $6490: $73
	pop hl                                           ; $6491: $e1
	add b                                            ; $6492: $80
	sub b                                            ; $6493: $90
	or b                                             ; $6494: $b0
	sub b                                            ; $6495: $90
	ld [hl], h                                       ; $6496: $74
	adc h                                            ; $6497: $8c
	dec b                                            ; $6498: $05
	inc bc                                           ; $6499: $03
	nop                                              ; $649a: $00
	sub b                                            ; $649b: $90
	or b                                             ; $649c: $b0
	sub h                                            ; $649d: $94
	db $f4                                           ; $649e: $f4
	ld a, l                                          ; $649f: $7d
	db $fd                                           ; $64a0: $fd
	rst $38                                          ; $64a1: $ff
	rst $38                                          ; $64a2: $ff
	ld a, e                                          ; $64a3: $7b
	di                                               ; $64a4: $f3
	rst SubAFromBC                                          ; $64a5: $e7
	jp $e3df                                         ; $64a6: $c3 $df $e3


	xor $1f                                          ; $64a9: $ee $1f
	inc bc                                           ; $64ab: $03
	inc sp                                           ; $64ac: $33
	ld h, a                                          ; $64ad: $67
	ld b, e                                          ; $64ae: $43
	ld e, [hl]                                       ; $64af: $5e
	ld [hl+], a                                      ; $64b0: $22
	xor $80                                          ; $64b1: $ee $80
	cp $91                                           ; $64b3: $fe $91
	db $10                                           ; $64b5: $10
	ld c, b                                          ; $64b6: $48
	inc b                                            ; $64b7: $04
	add d                                            ; $64b8: $82
	ret                                              ; $64b9: $c9


jr_05c_64ba:
	db $f4                                           ; $64ba: $f4
	sbc [hl]                                         ; $64bb: $9e
	ei                                               ; $64bc: $fb
	ld e, [hl]                                       ; $64bd: $5e
	rst SubAFromDE                                          ; $64be: $df
	add a                                            ; $64bf: $87
	rst AddAOntoHL                                          ; $64c0: $ef
	ld l, e                                          ; $64c1: $6b
	ccf                                              ; $64c2: $3f
	rrca                                             ; $64c3: $0f
	jr nz, jr_05c_645e                               ; $64c4: $20 $98

	ld b, [hl]                                       ; $64c6: $46
	ld sp, $1f3c                                     ; $64c7: $31 $3c $1f
	dec bc                                           ; $64ca: $0b
	ld b, [hl]                                       ; $64cb: $46
	rst $38                                          ; $64cc: $ff
	rst $38                                          ; $64cd: $ff
	rst FarCall                                          ; $64ce: $f7
	rst $38                                          ; $64cf: $ff
	cp a                                             ; $64d0: $bf
	di                                               ; $64d1: $f3
	ld a, h                                          ; $64d2: $7c
	ld d, d                                          ; $64d3: $52
	sub a                                            ; $64d4: $97
	jp $0c30                                         ; $64d5: $c3 $30 $0c


	add e                                            ; $64d8: $83
	ld h, b                                          ; $64d9: $60
	inc d                                            ; $64da: $14
	and e                                            ; $64db: $a3
	jr jr_05c_64ba                                   ; $64dc: $18 $dc

	rst $38                                          ; $64de: $ff
	sub e                                            ; $64df: $93
	rst FarCall                                          ; $64e0: $f7
	cp a                                             ; $64e1: $bf
	rra                                              ; $64e2: $1f
	ld a, $c1                                        ; $64e3: $3e $c1
	jr nc, @+$11                                     ; $64e5: $30 $0f

	db $e3                                           ; $64e7: $e3
	jr jr_05c_6471                                   ; $64e8: $18 $87

	ldh a, [$fe]                                     ; $64ea: $f0 $fe
	jp c, $9aff                                      ; $64ec: $da $ff $9a

	inc bc                                           ; $64ef: $03
	pop hl                                           ; $64f0: $e1
	rra                                              ; $64f1: $1f
	ldh [c], a                                       ; $64f2: $e2
	ld e, $7b                                        ; $64f3: $1e $7b
	cp $7f                                           ; $64f5: $fe $7f
	ld hl, sp+$7e                                    ; $64f7: $f8 $7e
	or l                                             ; $64f9: $b5
	ld a, a                                          ; $64fa: $7f
	ld a, [$fedf]                                    ; $64fb: $fa $df $fe
	sub a                                            ; $64fe: $97
	sub l                                            ; $64ff: $95
	ld a, [hl+]                                      ; $6500: $2a
	ld d, l                                          ; $6501: $55
	ld a, [hl+]                                      ; $6502: $2a
	ld d, h                                          ; $6503: $54
	ld [$0814], sp                                   ; $6504: $08 $14 $08
	ld h, a                                          ; $6507: $67
	ld e, l                                          ; $6508: $5d
	sbc b                                            ; $6509: $98
	ld d, l                                          ; $650a: $55
	xor b                                            ; $650b: $a8
	ld d, b                                          ; $650c: $50
	ld a, [de]                                       ; $650d: $1a
	ld sp, $51a2                                     ; $650e: $31 $a2 $51
	ld h, c                                          ; $6511: $61
	ldh [$9d], a                                     ; $6512: $e0 $9d
	ld d, a                                          ; $6514: $57
	ld a, d                                          ; $6515: $7a
	ld [hl], d                                       ; $6516: $72
	cp [hl]                                          ; $6517: $be
	ld e, l                                          ; $6518: $5d
	sub b                                            ; $6519: $90
	ld l, [hl]                                       ; $651a: $6e
	or b                                             ; $651b: $b0
	ld d, [hl]                                       ; $651c: $56
	ret nz                                           ; $651d: $c0

	dec sp                                           ; $651e: $3b
	ldh a, [$9d]                                     ; $651f: $f0 $9d
	ld d, c                                          ; $6521: $51
	and b                                            ; $6522: $a0
	ld e, e                                          ; $6523: $5b
	ldh a, [$7f]                                     ; $6524: $f0 $7f
	xor [hl]                                         ; $6526: $ae
	sbc h                                            ; $6527: $9c
	and d                                            ; $6528: $a2

jr_05c_6529:
	ld b, c                                          ; $6529: $41
	add d                                            ; $652a: $82
	ld c, e                                          ; $652b: $4b
	ret nc                                           ; $652c: $d0

	sbc [hl]                                         ; $652d: $9e
	jr z, jr_05c_6529                                ; $652e: $28 $f9

	sub a                                            ; $6530: $97
	ld b, b                                          ; $6531: $40
	xor d                                            ; $6532: $aa
	ld d, b                                          ; $6533: $50
	and b                                            ; $6534: $a0
	ld b, b                                          ; $6535: $40
	add b                                            ; $6536: $80
	ld b, b                                          ; $6537: $40
	add c                                            ; $6538: $81
	ld sp, hl                                        ; $6539: $f9
	ld a, a                                          ; $653a: $7f
	ld [hl], c                                       ; $653b: $71
	ld a, l                                          ; $653c: $7d
	inc hl                                           ; $653d: $23
	ld a, a                                          ; $653e: $7f
	cp $7f                                           ; $653f: $fe $7f
	rst SubAFromDE                                          ; $6541: $df
	ld e, [hl]                                       ; $6542: $5e
	and b                                            ; $6543: $a0
	sbc c                                            ; $6544: $99
	jr nz, jr_05c_655f                               ; $6545: $20 $18

	rlca                                             ; $6547: $07
	inc bc                                           ; $6548: $03
	inc b                                            ; $6549: $04
	inc b                                            ; $654a: $04
	ld sp, hl                                        ; $654b: $f9
	sbc b                                            ; $654c: $98
	inc h                                            ; $654d: $24
	ld b, e                                          ; $654e: $43
	add b                                            ; $654f: $80
	add b                                            ; $6550: $80
	nop                                              ; $6551: $00
	add b                                            ; $6552: $80
	ld h, b                                          ; $6553: $60
	ld h, c                                          ; $6554: $61
	ld [hl], b                                       ; $6555: $70
	sbc c                                            ; $6556: $99
	nop                                              ; $6557: $00
	inc b                                            ; $6558: $04
	ret z                                            ; $6559: $c8

	jr nz, jr_05c_6564                               ; $655a: $20 $08

	ld [hl+], a                                      ; $655c: $22
	ld a, b                                          ; $655d: $78
	sub b                                            ; $655e: $90

jr_05c_655f:
	ld a, l                                          ; $655f: $7d
	sbc e                                            ; $6560: $9b
	ld a, h                                          ; $6561: $7c
	and a                                            ; $6562: $a7
	sbc h                                            ; $6563: $9c

jr_05c_6564:
	ld de, $7f3c                                     ; $6564: $11 $3c $7f
	ei                                               ; $6567: $fb
	ld a, a                                          ; $6568: $7f
	xor a                                            ; $6569: $af
	db $db                                           ; $656a: $db
	rst $38                                          ; $656b: $ff
	sbc l                                            ; $656c: $9d
	ld a, a                                          ; $656d: $7f
	ccf                                              ; $656e: $3f
	ld a, b                                          ; $656f: $78
	xor h                                            ; $6570: $ac
	ld a, l                                          ; $6571: $7d
	pop bc                                           ; $6572: $c1
	sub a                                            ; $6573: $97
	ld a, a                                          ; $6574: $7f
	ld l, e                                          ; $6575: $6b
	rst SubAFromHL                                          ; $6576: $d7
	rst $38                                          ; $6577: $ff
	rst $38                                          ; $6578: $ff
	rst SubAFromBC                                          ; $6579: $e7
	db $e3                                           ; $657a: $e3
	ret nz                                           ; $657b: $c0

	ld a, e                                          ; $657c: $7b
	push bc                                          ; $657d: $c5
	add h                                            ; $657e: $84
	adc $ff                                          ; $657f: $ce $ff
	rst $38                                          ; $6581: $ff
	cp [hl]                                          ; $6582: $be
	adc $f1                                          ; $6583: $ce $f1
	cp $ff                                           ; $6585: $fe $ff
	ld [bc], a                                       ; $6587: $02
	add b                                            ; $6588: $80
	ret nz                                           ; $6589: $c0

	or b                                             ; $658a: $b0
	call z, $1e71                                    ; $658b: $cc $71 $1e
	rlca                                             ; $658e: $07
	inc hl                                           ; $658f: $23
	ret                                              ; $6590: $c9


	jr c, jr_05c_6599                                ; $6591: $38 $06

	ld bc, $c000                                     ; $6593: $01 $00 $c0
	ld [hl], b                                       ; $6596: $70
	xor $ff                                          ; $6597: $ee $ff

jr_05c_6599:
	dec sp                                           ; $6599: $3b
	ld [hl], e                                       ; $659a: $73
	ld hl, sp-$80                                    ; $659b: $f8 $80
	dec c                                            ; $659d: $0d
	add a                                            ; $659e: $87
	jp $b061                                         ; $659f: $c3 $61 $b0


	ld a, h                                          ; $65a2: $7c
	dec c                                            ; $65a3: $0d
	nop                                              ; $65a4: $00
	dec b                                            ; $65a5: $05
	nop                                              ; $65a6: $00
	add b                                            ; $65a7: $80
	ret nz                                           ; $65a8: $c0

	ldh [$78], a                                     ; $65a9: $e0 $78
	dec c                                            ; $65ab: $0d
	nop                                              ; $65ac: $00
	ccf                                              ; $65ad: $3f
	ld hl, sp-$02                                    ; $65ae: $f8 $fe
	ld sp, hl                                        ; $65b0: $f9
	ret c                                            ; $65b1: $d8

	ld hl, sp-$70                                    ; $65b2: $f8 $90
	inc b                                            ; $65b4: $04
	rst AddAOntoHL                                          ; $65b5: $ef
	ld hl, sp+$0e                                    ; $65b6: $f8 $0e
	add hl, bc                                       ; $65b8: $09
	ld [$9008], sp                                   ; $65b9: $08 $08 $90
	ld a, l                                          ; $65bc: $7d
	ld a, [hl]                                       ; $65bd: $7e
	adc b                                            ; $65be: $88
	rlca                                             ; $65bf: $07
	dec bc                                           ; $65c0: $0b
	sub c                                            ; $65c1: $91
	jr nz, jr_05c_6606                               ; $65c2: $20 $42

	ld b, c                                          ; $65c4: $41
	add b                                            ; $65c5: $80
	cp $05                                           ; $65c6: $fe $05
	add hl, bc                                       ; $65c8: $09
	sub b                                            ; $65c9: $90
	jr nz, @+$42                                     ; $65ca: $20 $40

	ld b, b                                          ; $65cc: $40
	add b                                            ; $65cd: $80
	inc d                                            ; $65ce: $14
	ld a, [bc]                                       ; $65cf: $0a
	add l                                            ; $65d0: $85
	jp z, $3ef5                                      ; $65d1: $ca $f5 $3e

	rst GetHLinHL                                          ; $65d4: $cf
	inc de                                           ; $65d5: $13
	ld [hl], a                                       ; $65d6: $77
	adc e                                            ; $65d7: $8b
	ld a, a                                          ; $65d8: $7f
	ld l, d                                          ; $65d9: $6a
	sub l                                            ; $65da: $95
	ld [bc], a                                       ; $65db: $02
	ld h, c                                          ; $65dc: $61
	ld d, h                                          ; $65dd: $54
	xor b                                            ; $65de: $a8
	ld d, l                                          ; $65df: $55
	xor b                                            ; $65e0: $a8
	ld d, h                                          ; $65e1: $54
	xor d                                            ; $65e2: $aa
	ld d, l                                          ; $65e3: $55

jr_05c_65e4:
	ld a, [$2167]                                    ; $65e4: $fa $67 $21
	halt                                             ; $65e7: $76
	call nz, $fc7b                                   ; $65e8: $c4 $7b $fc
	ld a, l                                          ; $65eb: $7d
	jr jr_05c_663d                                   ; $65ec: $18 $4f

	nop                                              ; $65ee: $00
	ld c, e                                          ; $65ef: $4b
	ldh a, [$9d]                                     ; $65f0: $f0 $9d
	ld d, h                                          ; $65f2: $54
	db $fc                                           ; $65f3: $fc
	ld h, d                                          ; $65f4: $62
	ldh a, [$74]                                     ; $65f5: $f0 $74
	adc $e6                                          ; $65f7: $ce $e6
	ld e, a                                          ; $65f9: $5f
	rlca                                             ; $65fa: $07
	db $eb                                           ; $65fb: $eb
	sbc h                                            ; $65fc: $9c
	xor d                                            ; $65fd: $aa
	dec d                                            ; $65fe: $15
	ld a, [bc]                                       ; $65ff: $0a
	ld a, b                                          ; $6600: $78
	ld a, d                                          ; $6601: $7a
	ld e, b                                          ; $6602: $58
	jr nc, jr_05c_65e4                               ; $6603: $30 $df

	db $10                                           ; $6605: $10

jr_05c_6606:
	sbc e                                            ; $6606: $9b
	and b                                            ; $6607: $a0
	ld [hl], b                                       ; $6608: $70
	adc h                                            ; $6609: $8c
	add e                                            ; $660a: $83
	ld hl, sp-$69                                    ; $660b: $f8 $97
	inc c                                            ; $660d: $0c
	inc bc                                           ; $660e: $03
	nop                                              ; $660f: $00
	ld [bc], a                                       ; $6610: $02
	inc b                                            ; $6611: $04
	nop                                              ; $6612: $00
	adc b                                            ; $6613: $88
	ld [hl], b                                       ; $6614: $70
	ld [hl], l                                       ; $6615: $75
	sub h                                            ; $6616: $94
	ld a, [hl]                                       ; $6617: $7e
	call $cc7e                                       ; $6618: $cd $7e $cc
	ld a, c                                          ; $661b: $79
	ld [hl+], a                                      ; $661c: $22
	sbc l                                            ; $661d: $9d
	jr nc, jr_05c_6628                               ; $661e: $30 $08

	ld a, c                                          ; $6620: $79
	add d                                            ; $6621: $82
	ld a, l                                          ; $6622: $7d
	ld a, [bc]                                       ; $6623: $0a
	ld a, [hl]                                       ; $6624: $7e
	push de                                          ; $6625: $d5
	sub c                                            ; $6626: $91
	rst JumpTable                                          ; $6627: $c7

jr_05c_6628:
	pop af                                           ; $6628: $f1
	db $fc                                           ; $6629: $fc
	rst $38                                          ; $662a: $ff
	ld de, $0005                                     ; $662b: $11 $05 $00
	dec b                                            ; $662e: $05
	inc b                                            ; $662f: $04
	ld [$3088], sp                                   ; $6630: $08 $88 $30
	adc [hl]                                         ; $6633: $8e
	ldh [c], a                                       ; $6634: $e2
	sbc $f8                                          ; $6635: $de $f8
	sub [hl]                                         ; $6637: $96
	ldh a, [rSVBK]                                   ; $6638: $f0 $70
	nop                                              ; $663a: $00
	xor d                                            ; $663b: $aa
	ld d, l                                          ; $663c: $55

jr_05c_663d:
	add d                                            ; $663d: $82
	add c                                            ; $663e: $81
	ld h, b                                          ; $663f: $60
	ld de, $ca7b                                     ; $6640: $11 $7b $ca
	ld a, [$ad7e]                                    ; $6643: $fa $7e $ad
	ld a, a                                          ; $6646: $7f
	cp $9b                                           ; $6647: $fe $9b
	xor a                                            ; $6649: $af
	ld e, l                                          ; $664a: $5d
	dec hl                                           ; $664b: $2b
	dec d                                            ; $664c: $15
	ld h, a                                          ; $664d: $67
	sbc e                                            ; $664e: $9b
	sub e                                            ; $664f: $93
	cp h                                             ; $6650: $bc
	rst $38                                          ; $6651: $ff
	rst SubAFromDE                                          ; $6652: $df
	xor a                                            ; $6653: $af
	ld d, a                                          ; $6654: $57
	ld [$ead5], a                                    ; $6655: $ea $d5 $ea
	cp h                                             ; $6658: $bc
	ld a, a                                          ; $6659: $7f
	rra                                              ; $665a: $1f
	rlca                                             ; $665b: $07
	ld l, a                                          ; $665c: $6f
	db $db                                           ; $665d: $db
	sbc c                                            ; $665e: $99
	ret nz                                           ; $665f: $c0

	ldh a, [$f8]                                     ; $6660: $f0 $f8
	db $fc                                           ; $6662: $fc
	ld l, [hl]                                       ; $6663: $6e
	or e                                             ; $6664: $b3
	ld l, a                                          ; $6665: $6f
	ld hl, sp-$6b                                    ; $6666: $f8 $95
	ld l, $13                                        ; $6668: $2e $13
	ld [$1119], sp                                   ; $666a: $08 $19 $11
	ld hl, $4763                                     ; $666d: $21 $63 $47
	add e                                            ; $6670: $83
	dec b                                            ; $6671: $05
	ld a, c                                          ; $6672: $79
	rlca                                             ; $6673: $07
	rst SubAFromDE                                          ; $6674: $df
	ld bc, $db76                                     ; $6675: $01 $76 $db
	ld [hl], h                                       ; $6678: $74
	db $fd                                           ; $6679: $fd
	rst SubAFromDE                                          ; $667a: $df
	add b                                            ; $667b: $80
	ld a, [hl]                                       ; $667c: $7e
	ld [hl], l                                       ; $667d: $75
	ld [hl], d                                       ; $667e: $72
	ld e, c                                          ; $667f: $59
	ld a, a                                          ; $6680: $7f
	inc de                                           ; $6681: $13
	sbc e                                            ; $6682: $9b
	jr z, jr_05c_66fc                                ; $6683: $28 $77

	add hl, sp                                       ; $6685: $39
	add $76                                          ; $6686: $c6 $76
	ld d, a                                          ; $6688: $57
	sbc l                                            ; $6689: $9d
	db $10                                           ; $668a: $10
	ld [$817a], sp                                   ; $668b: $08 $7a $81
	cp $97                                           ; $668e: $fe $97
	ld a, a                                          ; $6690: $7f
	ld [$6ad5], a                                    ; $6691: $ea $d5 $6a
	sub l                                            ; $6694: $95
	cp $ff                                           ; $6695: $fe $ff
	cp $72                                           ; $6697: $fe $72
	or b                                             ; $6699: $b0
	cp $9e                                           ; $669a: $fe $9e
	push de                                          ; $669c: $d5
	ld b, l                                          ; $669d: $45
	and b                                            ; $669e: $a0
	sbc d                                            ; $669f: $9a
	xor a                                            ; $66a0: $af
	ld d, l                                          ; $66a1: $55
	cp a                                             ; $66a2: $bf
	ld d, l                                          ; $66a3: $55
	rst $38                                          ; $66a4: $ff
	ld e, [hl]                                       ; $66a5: $5e
	ret nz                                           ; $66a6: $c0

	sbc b                                            ; $66a7: $98
	ld d, b                                          ; $66a8: $50
	ld hl, sp+$50                                    ; $66a9: $f8 $50
	ldh a, [$50]                                     ; $66ab: $f0 $50
	ld hl, sp+$54                                    ; $66ad: $f8 $54
	ld [hl], a                                       ; $66af: $77
	ret nc                                           ; $66b0: $d0

	ldh [$ac], a                                     ; $66b1: $e0 $ac
	ld d, l                                          ; $66b3: $55
	nop                                              ; $66b4: $00
	sub c                                            ; $66b5: $91
	ld h, $66                                        ; $66b6: $26 $66
	ld h, [hl]                                       ; $66b8: $66
	inc sp                                           ; $66b9: $33
	inc sp                                           ; $66ba: $33
	scf                                              ; $66bb: $37
	ld [hl], a                                       ; $66bc: $77
	ld [hl], a                                       ; $66bd: $77
	ld [hl], d                                       ; $66be: $72
	ld [hl+], a                                      ; $66bf: $22
	ld h, $64                                        ; $66c0: $26 $64
	ld b, h                                          ; $66c2: $44
	ld h, e                                          ; $66c3: $63
	ld l, a                                          ; $66c4: $6f
	or $9a                                           ; $66c5: $f6 $9a
	ld [hl], $64                                     ; $66c7: $36 $64
	ld d, h                                          ; $66c9: $54
	ld h, [hl]                                       ; $66ca: $66
	ld h, h                                          ; $66cb: $64
	ld l, e                                          ; $66cc: $6b
	or $9a                                           ; $66cd: $f6 $9a
	ld d, l                                          ; $66cf: $55
	ld d, h                                          ; $66d0: $54
	ld b, l                                          ; $66d1: $45
	ld h, [hl]                                       ; $66d2: $66
	ld h, a                                          ; $66d3: $67
	ld [hl], e                                       ; $66d4: $73
	or $91                                           ; $66d5: $f6 $91
	ld b, h                                          ; $66d7: $44
	ld d, h                                          ; $66d8: $54
	ld b, l                                          ; $66d9: $45
	ld b, [hl]                                       ; $66da: $46
	ld h, a                                          ; $66db: $67
	ld [hl], a                                       ; $66dc: $77
	ld [hl+], a                                      ; $66dd: $22
	ld [hl+], a                                      ; $66de: $22
	inc sp                                           ; $66df: $33
	ld h, [hl]                                       ; $66e0: $66
	ld h, h                                          ; $66e1: $64
	ld d, l                                          ; $66e2: $55
	ld d, l                                          ; $66e3: $55
	ld b, h                                          ; $66e4: $44
	db $dd                                           ; $66e5: $dd
	ld [hl+], a                                      ; $66e6: $22
	sbc c                                            ; $66e7: $99
	inc sp                                           ; $66e8: $33
	ld [hl], $66                                     ; $66e9: $36 $66
	ld h, l                                          ; $66eb: $65
	ld d, l                                          ; $66ec: $55
	ld d, l                                          ; $66ed: $55
	ld [hl], e                                       ; $66ee: $73
	or $9a                                           ; $66ef: $f6 $9a
	inc sp                                           ; $66f1: $33
	ld d, h                                          ; $66f2: $54
	ld b, h                                          ; $66f3: $44
	ld b, l                                          ; $66f4: $45
	ld d, d                                          ; $66f5: $52
	ld l, a                                          ; $66f6: $6f
	or $9c                                           ; $66f7: $f6 $9c
	ld d, [hl]                                       ; $66f9: $56
	ld b, h                                          ; $66fa: $44
	ld b, [hl]                                       ; $66fb: $46

jr_05c_66fc:
	call c, $de22                                    ; $66fc: $dc $22 $de
	inc sp                                           ; $66ff: $33
	ld h, e                                          ; $6700: $63
	db $ec                                           ; $6701: $ec
	rst SubAFromDE                                          ; $6702: $df
	inc sp                                           ; $6703: $33
	sbc [hl]                                         ; $6704: $9e
	dec [hl]                                         ; $6705: $35
	ld [hl], e                                       ; $6706: $73
	ret c                                            ; $6707: $d8

	pop af                                           ; $6708: $f1
	dec b                                            ; $6709: $05
	rst GetHLinHL                                          ; $670a: $cf
	rst $38                                          ; $670b: $ff
	adc e                                            ; $670c: $8b
	cp $ff                                           ; $670d: $fe $ff
	db $fc                                           ; $670f: $fc
	cp $f9                                           ; $6710: $fe $f9
	db $fc                                           ; $6712: $fc
	ldh a, [c]                                       ; $6713: $f2
	ld hl, sp-$1b                                    ; $6714: $f8 $e5
	ldh a, [$ca]                                     ; $6716: $f0 $ca
	ldh [hDisp1_WY], a                                     ; $6718: $e0 $95
	ret nz                                           ; $671a: $c0

	ld a, [hl+]                                      ; $671b: $2a
	add b                                            ; $671c: $80
	ld d, l                                          ; $671d: $55
	nop                                              ; $671e: $00
	xor d                                            ; $671f: $aa
	nop                                              ; $6720: $00
	ld l, a                                          ; $6721: $6f
	db $fc                                           ; $6722: $fc
	sbc h                                            ; $6723: $9c
	xor e                                            ; $6724: $ab
	nop                                              ; $6725: $00
	ld d, a                                          ; $6726: $57
	ld h, e                                          ; $6727: $63
	db $f4                                           ; $6728: $f4
	sbc d                                            ; $6729: $9a
	xor a                                            ; $672a: $af
	nop                                              ; $672b: $00
	ld a, a                                          ; $672c: $7f
	nop                                              ; $672d: $00
	rst $38                                          ; $672e: $ff
	ld a, e                                          ; $672f: $7b
	cp $67                                           ; $6730: $fe $67
	ldh a, [rPCM34]                                  ; $6732: $f0 $77
	db $f4                                           ; $6734: $f4
	inc bc                                           ; $6735: $03
	ldh a, [$03]                                     ; $6736: $f0 $03
	ldh a, [$03]                                     ; $6738: $f0 $03
	ldh a, [$03]                                     ; $673a: $f0 $03
	ldh a, [$03]                                     ; $673c: $f0 $03
	ldh a, [rOCPD]                                   ; $673e: $f0 $6b
	ldh a, [$7f]                                     ; $6740: $f0 $7f
	db $fc                                           ; $6742: $fc
	ld b, a                                          ; $6743: $47
	ldh a, [hDisp1_WY]                                     ; $6744: $f0 $95
	push de                                          ; $6746: $d5
	nop                                              ; $6747: $00
	ld [$fd00], a                                    ; $6748: $ea $00 $fd
	nop                                              ; $674b: $00
	xor c                                            ; $674c: $a9
	inc bc                                           ; $674d: $03
	ld d, h                                          ; $674e: $54
	ld bc, $ec5f                                     ; $674f: $01 $5f $ec
	ld a, e                                          ; $6752: $7b
	ret z                                            ; $6753: $c8

	sbc $ff                                          ; $6754: $de $ff
	sub e                                            ; $6756: $93
	ld a, a                                          ; $6757: $7f
	rst $38                                          ; $6758: $ff
	ccf                                              ; $6759: $3f
	ld a, a                                          ; $675a: $7f
	sbc a                                            ; $675b: $9f
	ccf                                              ; $675c: $3f
	ld c, a                                          ; $675d: $4f
	rra                                              ; $675e: $1f
	and a                                            ; $675f: $a7
	rrca                                             ; $6760: $0f
	ld d, e                                          ; $6761: $53
	rlca                                             ; $6762: $07
	ld [bc], a                                       ; $6763: $02
	ret nc                                           ; $6764: $d0

	ld a, d                                          ; $6765: $7a
	ret nc                                           ; $6766: $d0

	halt                                             ; $6767: $76
	ret c                                            ; $6768: $d8

	ld a, [hl]                                       ; $6769: $7e
	ldh [$9e], a                                     ; $676a: $e0 $9e
	ld e, a                                          ; $676c: $5f
	ld [hl], e                                       ; $676d: $73
	and b                                            ; $676e: $a0
	sbc [hl]                                         ; $676f: $9e
	cp a                                             ; $6770: $bf
	ld h, e                                          ; $6771: $63
	add [hl]                                         ; $6772: $86
	ld d, a                                          ; $6773: $57
	cp $8a                                           ; $6774: $fe $8a
	db $fc                                           ; $6776: $fc
	inc bc                                           ; $6777: $03
	ldh a, [$0c]                                     ; $6778: $f0 $0c
	db $e3                                           ; $677a: $e3
	inc de                                           ; $677b: $13
	call z, $902f                                    ; $677c: $cc $2f $90

Jump_05c_677f:
	ld e, a                                          ; $677f: $5f
	rst $38                                          ; $6780: $ff
	nop                                              ; $6781: $00
	pop bc                                           ; $6782: $c1
	ld a, $00                                        ; $6783: $3e $00
	pop bc                                           ; $6785: $c1
	nop                                              ; $6786: $00
	ld [hl], $f7                                     ; $6787: $36 $f7
	rst FarCall                                          ; $6789: $f7
	inc d                                            ; $678a: $14
	ld [hl], e                                       ; $678b: $73
	cp $77                                           ; $678c: $fe $77
	ldh [c], a                                       ; $678e: $e2
	sub e                                            ; $678f: $93
	ld a, a                                          ; $6790: $7f
	add b                                            ; $6791: $80
	rra                                              ; $6792: $1f
	ld h, b                                          ; $6793: $60
	add a                                            ; $6794: $87
	sbc b                                            ; $6795: $98
	ld h, e                                          ; $6796: $63
	db $e4                                           ; $6797: $e4
	add hl, de                                       ; $6798: $19
	ld a, [$fd04]                                    ; $6799: $fa $04 $fd
	scf                                              ; $679c: $37
	jp nz, $fe37                                     ; $679d: $c2 $37 $fe

	add b                                            ; $67a0: $80

jr_05c_67a1:
	cp $01                                           ; $67a1: $fe $01
	db $fc                                           ; $67a3: $fc
	ld [bc], a                                       ; $67a4: $02
	ld sp, hl                                        ; $67a5: $f9
	dec b                                            ; $67a6: $05
	ldh a, [c]                                       ; $67a7: $f2
	dec bc                                           ; $67a8: $0b
	rst $38                                          ; $67a9: $ff
	nop                                              ; $67aa: $00
	ld hl, sp+$07                                    ; $67ab: $f8 $07
	ldh [rAUD2LOW], a                                ; $67ad: $e0 $18
	add b                                            ; $67af: $80
	ld h, [hl]                                       ; $67b0: $66
	ld e, $9e                                        ; $67b1: $1e $9e
	ld h, d                                          ; $67b3: $62
	ld a, [hl]                                       ; $67b4: $7e
	add d                                            ; $67b5: $82
	cp $02                                           ; $67b6: $fe $02
	cp $ff                                           ; $67b8: $fe $ff
	nop                                              ; $67ba: $00
	ccf                                              ; $67bb: $3f
	ret nz                                           ; $67bc: $c0

	rrca                                             ; $67bd: $0f
	jr nc, @+$05                                     ; $67be: $30 $03

	sub [hl]                                         ; $67c0: $96
	call z, $f3f0                                    ; $67c1: $cc $f0 $f3
	adc h                                            ; $67c4: $8c
	db $fc                                           ; $67c5: $fc
	add e                                            ; $67c6: $83
	rst $38                                          ; $67c7: $ff
	add b                                            ; $67c8: $80
	rst $38                                          ; $67c9: $ff
	ld e, a                                          ; $67ca: $5f
	adc $7f                                          ; $67cb: $ce $7f
	sbc d                                            ; $67cd: $9a
	sbc e                                            ; $67ce: $9b
	ccf                                              ; $67cf: $3f
	ld b, b                                          ; $67d0: $40
	sbc a                                            ; $67d1: $9f
	and b                                            ; $67d2: $a0
	inc bc                                           ; $67d3: $03
	and [hl]                                         ; $67d4: $a6
	ld [hl], e                                       ; $67d5: $73
	and h                                            ; $67d6: $a4
	adc d                                            ; $67d7: $8a
	ld hl, sp+$06                                    ; $67d8: $f8 $06
	pop hl                                           ; $67da: $e1
	add hl, de                                       ; $67db: $19
	add $27                                          ; $67dc: $c6 $27
	sbc b                                            ; $67de: $98
	ld e, a                                          ; $67df: $5f
	jr nz, jr_05c_67a1                               ; $67e0: $20 $bf

	rst $38                                          ; $67e2: $ff
	nop                                              ; $67e3: $00
	add e                                            ; $67e4: $83
	ld a, h                                          ; $67e5: $7c
	nop                                              ; $67e6: $00
	add e                                            ; $67e7: $83
	nop                                              ; $67e8: $00
	ld l, h                                          ; $67e9: $6c
	rst AddAOntoHL                                          ; $67ea: $ef
	rst AddAOntoHL                                          ; $67eb: $ef
	jr z, jr_05c_6861                                ; $67ec: $28 $73

	cp $6f                                           ; $67ee: $fe $6f
	sbc $77                                          ; $67f0: $de $77
	sbc h                                            ; $67f2: $9c
	sbc c                                            ; $67f3: $99
	rst JumpTable                                          ; $67f4: $c7
	ret z                                            ; $67f5: $c8

	inc sp                                           ; $67f6: $33
	db $f4                                           ; $67f7: $f4
	add hl, bc                                       ; $67f8: $09
	ld a, [$b876]                                    ; $67f9: $fa $76 $b8
	sbc [hl]                                         ; $67fc: $9e
	ld a, [$c45b]                                    ; $67fd: $fa $5b $c4
	ld e, [hl]                                       ; $6800: $5e
	or b                                             ; $6801: $b0
	ld [hl], a                                       ; $6802: $77
	add sp, $7e                                      ; $6803: $e8 $7e
	and b                                            ; $6805: $a0
	ld b, [hl]                                       ; $6806: $46
	or b                                             ; $6807: $b0
	sbc l                                            ; $6808: $9d
	dec hl                                           ; $6809: $2b
	add b                                            ; $680a: $80
	ld l, [hl]                                       ; $680b: $6e
	call nc, $d87e                                   ; $680c: $d4 $7e $d8
	ld l, l                                          ; $680f: $6d
	or b                                             ; $6810: $b0
	ccf                                              ; $6811: $3f
	add h                                            ; $6812: $84
	ld c, a                                          ; $6813: $4f
	cp $96                                           ; $6814: $fe $96
	nop                                              ; $6816: $00
	sbc a                                            ; $6817: $9f
	ccf                                              ; $6818: $3f
	cp a                                             ; $6819: $bf
	nop                                              ; $681a: $00
	add b                                            ; $681b: $80
	rra                                              ; $681c: $1f
	cp a                                             ; $681d: $bf
	sub b                                            ; $681e: $90
	ld l, e                                          ; $681f: $6b
	cp $7e                                           ; $6820: $fe $7e
	adc $df                                          ; $6822: $ce $df
	rst FarCall                                          ; $6824: $f7
	rst $38                                          ; $6825: $ff
	ld h, [hl]                                       ; $6826: $66
	jp nz, $fe7f                                     ; $6827: $c2 $7f $fe

	ld a, [hl]                                       ; $682a: $7e
	and l                                            ; $682b: $a5
	rst SubAFromDE                                          ; $682c: $df
	cp $ff                                           ; $682d: $fe $ff
	ld a, a                                          ; $682f: $7f
	ei                                               ; $6830: $fb
	sbc [hl]                                         ; $6831: $9e
	inc b                                            ; $6832: $04
	ld l, e                                          ; $6833: $6b
	cp $7f                                           ; $6834: $fe $7f
	ld a, [de]                                       ; $6836: $1a
	ld c, a                                          ; $6837: $4f
	cp $47                                           ; $6838: $fe $47
	and b                                            ; $683a: $a0
	sub [hl]                                         ; $683b: $96
	ldh [rAUD1LOW], a                                ; $683c: $e0 $13
	rst SubAFromBC                                          ; $683e: $e7
	rla                                              ; $683f: $17
	ldh [rAUD1SWEEP], a                              ; $6840: $e0 $10
	db $e3                                           ; $6842: $e3
	rla                                              ; $6843: $17
	ldh [c], a                                       ; $6844: $e2
	ld l, e                                          ; $6845: $6b
	cp $7e                                           ; $6846: $fe $7e
	adc $77                                          ; $6848: $ce $77
	ret nz                                           ; $684a: $c0

	rst SubAFromDE                                          ; $684b: $df
	cp $7f                                           ; $684c: $fe $7f
	ld hl, sp+$6f                                    ; $684e: $f8 $6f
	cp $7a                                           ; $6850: $fe $7a
	adc $7f                                          ; $6852: $ce $7f
	db $db                                           ; $6854: $db
	ld a, e                                          ; $6855: $7b
	ld c, d                                          ; $6856: $4a
	ld a, a                                          ; $6857: $7f
	ld hl, sp+$6f                                    ; $6858: $f8 $6f
	cp $97                                           ; $685a: $fe $97
	rrca                                             ; $685c: $0f
	sub b                                            ; $685d: $90
	rst GetHLinHL                                          ; $685e: $cf
	ret nc                                           ; $685f: $d0

	rrca                                             ; $6860: $0f

jr_05c_6861:
	db $10                                           ; $6861: $10
	adc a                                            ; $6862: $8f
	ret nc                                           ; $6863: $d0

	ld h, a                                          ; $6864: $67
	cp $03                                           ; $6865: $fe $03
	ld d, b                                          ; $6867: $50
	ld a, a                                          ; $6868: $7f
	dec d                                            ; $6869: $15
	ld a, a                                          ; $686a: $7f
	daa                                              ; $686b: $27
	ld a, e                                          ; $686c: $7b
	ei                                               ; $686d: $fb
	sbc [hl]                                         ; $686e: $9e
	jr nz, @+$6d                                     ; $686f: $20 $6b

	cp $7e                                           ; $6871: $fe $7e
	adc $df                                          ; $6873: $ce $df
	rst AddAOntoHL                                          ; $6875: $ef
	rst $38                                          ; $6876: $ff
	ld h, [hl]                                       ; $6877: $66
	jp nz, $fe7f                                     ; $6878: $c2 $7f $fe

	sub [hl]                                         ; $687b: $96
	nop                                              ; $687c: $00
	ld sp, hl                                        ; $687d: $f9
	db $fc                                           ; $687e: $fc
	db $fd                                           ; $687f: $fd
	nop                                              ; $6880: $00
	ld bc, $fdf8                                     ; $6881: $01 $f8 $fd
	add hl, bc                                       ; $6884: $09
	ld l, e                                          ; $6885: $6b
	cp $47                                           ; $6886: $fe $47
	ld d, b                                          ; $6888: $50
	ld a, a                                          ; $6889: $7f
	ld [hl], e                                       ; $688a: $73
	ld c, a                                          ; $688b: $4f
	and b                                            ; $688c: $a0
	ld l, [hl]                                       ; $688d: $6e
	or b                                             ; $688e: $b0
	ld [hl], l                                       ; $688f: $75
	ld d, h                                          ; $6890: $54
	sbc [hl]                                         ; $6891: $9e
	push af                                          ; $6892: $f5
	ld l, [hl]                                       ; $6893: $6e
	or b                                             ; $6894: $b0
	ld [bc], a                                       ; $6895: $02
	ld b, h                                          ; $6896: $44
	ld c, a                                          ; $6897: $4f
	cp $7e                                           ; $6898: $fe $7e
	adc $de                                          ; $689a: $ce $de
	add b                                            ; $689c: $80
	sbc l                                            ; $689d: $9d
	cp a                                             ; $689e: $bf
	sbc a                                            ; $689f: $9f
	ld e, d                                          ; $68a0: $5a
	ret nz                                           ; $68a1: $c0

	cp $de                                           ; $68a2: $fe $de
	rst FarCall                                          ; $68a4: $f7
	ld h, [hl]                                       ; $68a5: $66
	ret nz                                           ; $68a6: $c0

	ld a, [hl]                                       ; $68a7: $7e
	adc $fe                                          ; $68a8: $ce $fe
	sbc [hl]                                         ; $68aa: $9e
	cp $02                                           ; $68ab: $fe $02
	ret nz                                           ; $68ad: $c0

	ld h, e                                          ; $68ae: $63
	cp $7e                                           ; $68af: $fe $7e
	adc $7e                                          ; $68b1: $ce $7e
	jp nz, $e09d                                     ; $68b3: $c2 $9d $e0

	rla                                              ; $68b6: $17
	ld d, [hl]                                       ; $68b7: $56
	ret nz                                           ; $68b8: $c0

	ld [hl], a                                       ; $68b9: $77
	ret nz                                           ; $68ba: $c0

	ld d, [hl]                                       ; $68bb: $56
	ret nz                                           ; $68bc: $c0

	cp $de                                           ; $68bd: $fe $de
	rst $38                                          ; $68bf: $ff
	ld h, [hl]                                       ; $68c0: $66
	ret nz                                           ; $68c1: $c0

	ld a, [hl]                                       ; $68c2: $7e
	adc $7e                                          ; $68c3: $ce $7e
	jp nz, $0f9e                                     ; $68c5: $c2 $9e $0f

	ld h, d                                          ; $68c8: $62
	jp nz, $c002                                     ; $68c9: $c2 $02 $c0

	sbc l                                            ; $68cc: $9d
	ld bc, $7a20                                     ; $68cd: $01 $20 $7a
	jp nz, $e57d                                     ; $68d0: $c2 $7d $e5

	ld d, [hl]                                       ; $68d3: $56
	ret nz                                           ; $68d4: $c0

	cp $de                                           ; $68d5: $fe $de
	rst AddAOntoHL                                          ; $68d7: $ef
	ld h, [hl]                                       ; $68d8: $66
	ret nz                                           ; $68d9: $c0

	ld a, [hl]                                       ; $68da: $7e
	adc $de                                          ; $68db: $ce $de
	ld bc, $fd9d                                     ; $68dd: $01 $9d $fd
	ld sp, hl                                        ; $68e0: $f9
	ld [hl+], a                                      ; $68e1: $22
	ret nz                                           ; $68e2: $c0

	ld bc, $7d22                                     ; $68e3: $01 $22 $7d
	add h                                            ; $68e6: $84
	sub [hl]                                         ; $68e7: $96
	and b                                            ; $68e8: $a0
	xor a                                            ; $68e9: $af
	ld d, b                                          ; $68ea: $50
	ld d, a                                          ; $68eb: $57
	xor b                                            ; $68ec: $a8
	xor d                                            ; $68ed: $aa
	ld d, l                                          ; $68ee: $55
	ld d, l                                          ; $68ef: $55
	xor d                                            ; $68f0: $aa
	ld [hl], a                                       ; $68f1: $77
	db $fc                                           ; $68f2: $fc
	ld d, a                                          ; $68f3: $57
	add sp, $77                                      ; $68f4: $e8 $77
	ldh a, [$5f]                                     ; $68f6: $f0 $5f
	halt                                             ; $68f8: $76
	ld l, a                                          ; $68f9: $6f
	db $ec                                           ; $68fa: $ec
	ld a, [hl]                                       ; $68fb: $7e
	adc $7e                                          ; $68fc: $ce $7e
	call nz, $80de                                   ; $68fe: $c4 $de $80
	db $dd                                           ; $6901: $dd
	rst $38                                          ; $6902: $ff
	ld [hl], e                                       ; $6903: $73
	jp c, $806d                                      ; $6904: $da $6d $80

	ld [hl], c                                       ; $6907: $71
	add hl, hl                                       ; $6908: $29
	ld [hl], e                                       ; $6909: $73
	ldh a, [$7e]                                     ; $690a: $f0 $7e
	adc $7e                                          ; $690c: $ce $7e
	call nz, $f057                                   ; $690e: $c4 $57 $f0
	rlca                                             ; $6911: $07
	ld a, b                                          ; $6912: $78
	ld a, [hl]                                       ; $6913: $7e
	adc $7e                                          ; $6914: $ce $7e
	call nz, $be7a                                   ; $6916: $c4 $7a $be
	sbc h                                            ; $6919: $9c
	rra                                              ; $691a: $1f
	rst $38                                          ; $691b: $ff
	rrca                                             ; $691c: $0f
	ld l, a                                          ; $691d: $6f
	ldh a, [$6d]                                     ; $691e: $f0 $6d
	add b                                            ; $6920: $80
	ld e, a                                          ; $6921: $5f
	ret nz                                           ; $6922: $c0

	ld l, l                                          ; $6923: $6d
	add b                                            ; $6924: $80
	ld e, a                                          ; $6925: $5f
	ldh a, [rPCM12]                                  ; $6926: $f0 $76
	call z, $be7a                                    ; $6928: $cc $7a $be
	sbc h                                            ; $692b: $9c
	ldh a, [rIE]                                     ; $692c: $f0 $ff
	ldh [$33], a                                     ; $692e: $e0 $33
	or b                                             ; $6930: $b0
	sbc [hl]                                         ; $6931: $9e
	ld [$5257], sp                                   ; $6932: $08 $57 $52
	ld [hl], a                                       ; $6935: $77
	cp $7e                                           ; $6936: $fe $7e
	adc $7e                                          ; $6938: $ce $7e
	call nz, $c057                                   ; $693a: $c4 $57 $c0
	ld l, l                                          ; $693d: $6d
	add b                                            ; $693e: $80
	ld e, a                                          ; $693f: $5f
	ldh a, [$7e]                                     ; $6940: $f0 $7e
	adc $7e                                          ; $6942: $ce $7e
	call nz, $01de                                   ; $6944: $c4 $de $01
	ld b, e                                          ; $6947: $43
	ld d, b                                          ; $6948: $50
	ld [hl], a                                       ; $6949: $77
	ld c, [hl]                                       ; $694a: $4e
	ld a, a                                          ; $694b: $7f
	cp d                                             ; $694c: $ba
	sbc l                                            ; $694d: $9d
	push af                                          ; $694e: $f5
	ld a, [bc]                                       ; $694f: $0a
	ld e, [hl]                                       ; $6950: $5e
	ld l, b                                          ; $6951: $68
	ld a, a                                          ; $6952: $7f
	db $f4                                           ; $6953: $f4
	ld l, [hl]                                       ; $6954: $6e
	ldh a, [$99]                                     ; $6955: $f0 $99
	db $fd                                           ; $6957: $fd
	ld [bc], a                                       ; $6958: $02
	ld [$d515], a                                    ; $6959: $ea $15 $d5
	ld a, [hl+]                                      ; $695c: $2a
	ld h, [hl]                                       ; $695d: $66
	ret nc                                           ; $695e: $d0

	ld a, a                                          ; $695f: $7f
	db $fc                                           ; $6960: $fc
	sbc l                                            ; $6961: $9d
	dec b                                            ; $6962: $05
	ld a, [$7f57]                                    ; $6963: $fa $57 $7f
	ld l, a                                          ; $6966: $6f
	db $ec                                           ; $6967: $ec
	ld a, a                                          ; $6968: $7f
	ld a, a                                          ; $6969: $7f
	ld e, e                                          ; $696a: $5b
	ldh a, [hDisp0_LCDC]                                     ; $696b: $f0 $82
	xor e                                            ; $696d: $ab
	xor a                                            ; $696e: $af
	ld d, [hl]                                       ; $696f: $56
	rlca                                             ; $6970: $07
	db $fd                                           ; $6971: $fd
	rra                                              ; $6972: $1f
	ld a, [$f51f]                                    ; $6973: $fa $1f $f5
	ld a, a                                          ; $6976: $7f
	ldh [rIE], a                                     ; $6977: $e0 $ff
	ret nz                                           ; $6979: $c0

	rst $38                                          ; $697a: $ff
	ld bc, $ff5f                                     ; $697b: $01 $5f $ff
	and e                                            ; $697e: $a3
	cp $bf                                           ; $697f: $fe $bf
	ld d, l                                          ; $6981: $55
	rst $38                                          ; $6982: $ff
	xor a                                            ; $6983: $af
	rst $38                                          ; $6984: $ff
	ld e, a                                          ; $6985: $5f
	ld a, a                                          ; $6986: $7f
	xor $7d                                          ; $6987: $ee $7d
	rst SubAFromHL                                          ; $6989: $d7
	ld a, c                                          ; $698a: $79
	db $ed                                           ; $698b: $ed
	ld a, a                                          ; $698c: $7f
	jp hl                                            ; $698d: $e9


	add h                                            ; $698e: $84
	cp a                                             ; $698f: $bf
	ret nz                                           ; $6990: $c0

	rst $38                                          ; $6991: $ff
	rst $38                                          ; $6992: $ff
	xor d                                            ; $6993: $aa
	rst $38                                          ; $6994: $ff
	ld d, l                                          ; $6995: $55
	pop hl                                           ; $6996: $e1
	xor [hl]                                         ; $6997: $ae
	pop hl                                           ; $6998: $e1
	rst FarCall                                          ; $6999: $f7
	rst $38                                          ; $699a: $ff
	nop                                              ; $699b: $00
	ld d, l                                          ; $699c: $55
	xor d                                            ; $699d: $aa
	ld [$d5d5], a                                    ; $699e: $ea $d5 $d5
	ld l, d                                          ; $69a1: $6a
	ld [$c0d5], a                                    ; $69a2: $ea $d5 $c0
	ld a, a                                          ; $69a5: $7f
	ret nz                                           ; $69a6: $c0

	rst $38                                          ; $69a7: $ff
	ret nz                                           ; $69a8: $c0

	ld a, a                                          ; $69a9: $7f
	ld a, d                                          ; $69aa: $7a
	adc h                                            ; $69ab: $8c
	adc e                                            ; $69ac: $8b
	xor a                                            ; $69ad: $af
	cp a                                             ; $69ae: $bf
	ld d, b                                          ; $69af: $50
	ld e, a                                          ; $69b0: $5f
	or b                                             ; $69b1: $b0
	and e                                            ; $69b2: $a3
	ld a, a                                          ; $69b3: $7f
	ld l, a                                          ; $69b4: $6f
	cp a                                             ; $69b5: $bf
	ccf                                              ; $69b6: $3f
	ldh [$60], a                                     ; $69b7: $e0 $60
	ret nz                                           ; $69b9: $c0

	cp a                                             ; $69ba: $bf
	ld [hl], b                                       ; $69bb: $70
	ld l, e                                          ; $69bc: $6b
	rst $38                                          ; $69bd: $ff
	ld e, [hl]                                       ; $69be: $5e
	rst $38                                          ; $69bf: $ff
	ld d, $7b                                        ; $69c0: $16 $7b
	and [hl]                                         ; $69c2: $a6
	sbc d                                            ; $69c3: $9a
	ld [hl], b                                       ; $69c4: $70
	rst $38                                          ; $69c5: $ff
	ld d, c                                          ; $69c6: $51
	rst SubAFromDE                                          ; $69c7: $df
	rst SubAFromBC                                          ; $69c8: $e7
	ld a, e                                          ; $69c9: $7b
	ldh [$7e], a                                     ; $69ca: $e0 $7e
	rst JumpTable                                          ; $69cc: $c7
	sbc b                                            ; $69cd: $98
	ld e, a                                          ; $69ce: $5f
	ret nc                                           ; $69cf: $d0

	rst SubAFromDE                                          ; $69d0: $df
	ret nc                                           ; $69d1: $d0

	di                                               ; $69d2: $f3
	rst $38                                          ; $69d3: $ff
	rlca                                             ; $69d4: $07
	ld a, e                                          ; $69d5: $7b
	or a                                             ; $69d6: $b7
	adc l                                            ; $69d7: $8d
	ldh [$c0], a                                     ; $69d8: $e0 $c0
	rst $38                                          ; $69da: $ff
	nop                                              ; $69db: $00
	push af                                          ; $69dc: $f5
	ld [$35ea], a                                    ; $69dd: $ea $ea $35
	push af                                          ; $69e0: $f5
	ld a, [hl+]                                      ; $69e1: $2a
	ld [$e0f5], a                                    ; $69e2: $ea $f5 $e0
	rst $38                                          ; $69e5: $ff
	ldh [$3f], a                                     ; $69e6: $e0 $3f
	ld h, b                                          ; $69e8: $60
	ccf                                              ; $69e9: $3f
	ld [hl], a                                       ; $69ea: $77
	or b                                             ; $69eb: $b0
	adc e                                            ; $69ec: $8b
	xor a                                            ; $69ed: $af
	ld d, a                                          ; $69ee: $57
	ld e, e                                          ; $69ef: $5b
	xor b                                            ; $69f0: $a8
	xor a                                            ; $69f1: $af
	ld e, a                                          ; $69f2: $5f
	rrca                                             ; $69f3: $0f
	rst $38                                          ; $69f4: $ff
	rrca                                             ; $69f5: $0f
	db $fc                                           ; $69f6: $fc
	ld [$fff0], sp                                   ; $69f7: $08 $f0 $ff
	nop                                              ; $69fa: $00
	ld d, a                                          ; $69fb: $57
	xor e                                            ; $69fc: $ab
	rst $38                                          ; $69fd: $ff
	rst $38                                          ; $69fe: $ff
	rst SubAFromHL                                          ; $69ff: $d7
	rla                                              ; $6a00: $17
	db $dd                                           ; $6a01: $dd
	rst $38                                          ; $6a02: $ff
	sbc [hl]                                         ; $6a03: $9e
	rst AddAOntoHL                                          ; $6a04: $ef
	sbc $0f                                          ; $6a05: $de $0f
	sub a                                            ; $6a07: $97
	rst $38                                          ; $6a08: $ff
	inc e                                            ; $6a09: $1c
	cp $fd                                           ; $6a0a: $fe $fd
	rst $38                                          ; $6a0c: $ff
	rst $38                                          ; $6a0d: $ff
	db $fd                                           ; $6a0e: $fd
	db $fc                                           ; $6a0f: $fc
	db $dd                                           ; $6a10: $dd
	rst $38                                          ; $6a11: $ff
	rst SubAFromDE                                          ; $6a12: $df
	or $df                                           ; $6a13: $f6 $df

jr_05c_6a15:
	db $ec                                           ; $6a15: $ec
	ld a, a                                          ; $6a16: $7f
	ldh [$7f], a                                     ; $6a17: $e0 $7f
	ld c, [hl]                                       ; $6a19: $4e
	add b                                            ; $6a1a: $80
	push af                                          ; $6a1b: $f5
	ld a, [$95da]                                    ; $6a1c: $fa $da $95
	push af                                          ; $6a1f: $f5

Jump_05c_6a20:
	ld a, [$fdfa]                                    ; $6a20: $fa $fa $fd
	db $ed                                           ; $6a23: $ed
	ld a, [bc]                                       ; $6a24: $0a
	ld a, [de]                                       ; $6a25: $1a
	dec c                                            ; $6a26: $0d
	rst $38                                          ; $6a27: $ff
	nop                                              ; $6a28: $00
	xor e                                            ; $6a29: $ab
	ld d, a                                          ; $6a2a: $57
	ld d, a                                          ; $6a2b: $57
	xor a                                            ; $6a2c: $af
	xor h                                            ; $6a2d: $ac
	ld d, h                                          ; $6a2e: $54
	ld d, [hl]                                       ; $6a2f: $56
	xor a                                            ; $6a30: $af
	xor a                                            ; $6a31: $af
	ld d, [hl]                                       ; $6a32: $56
	ld d, a                                          ; $6a33: $57
	xor [hl]                                         ; $6a34: $ae
	rlca                                             ; $6a35: $07
	cp $fa                                           ; $6a36: $fe $fa
	dec b                                            ; $6a38: $05
	db $fd                                           ; $6a39: $fd
	adc c                                            ; $6a3a: $89
	ld a, [$fefb]                                    ; $6a3b: $fa $fb $fe
	ld [$0817], sp                                   ; $6a3e: $08 $17 $08
	rst FarCall                                          ; $6a41: $f7
	di                                               ; $6a42: $f3
	ld c, $f7                                        ; $6a43: $0e $f7
	ld hl, sp-$01                                    ; $6a45: $f8 $ff
	adc l                                            ; $6a47: $8d
	xor d                                            ; $6a48: $aa
	ld d, l                                          ; $6a49: $55
	ld a, a                                          ; $6a4a: $7f
	rst AddAOntoHL                                          ; $6a4b: $ef
	ccf                                              ; $6a4c: $3f
	ld sp, hl                                        ; $6a4d: $f9
	ld d, b                                          ; $6a4e: $50
	or b                                             ; $6a4f: $b0
	ld c, $78                                        ; $6a50: $0e $78
	ld [hl], l                                       ; $6a52: $75
	sbc b                                            ; $6a53: $98
	inc de                                           ; $6a54: $13
	db $fd                                           ; $6a55: $fd
	db $db                                           ; $6a56: $db
	and $aa                                          ; $6a57: $e6 $aa
	ld d, l                                          ; $6a59: $55
	push de                                          ; $6a5a: $d5
	ld a, e                                          ; $6a5b: $7b
	ld b, b                                          ; $6a5c: $40
	sub l                                            ; $6a5d: $95
	dec [hl]                                         ; $6a5e: $35
	ld l, d                                          ; $6a5f: $6a
	ld [hl], b                                       ; $6a60: $70
	cp a                                             ; $6a61: $bf
	ld a, b                                          ; $6a62: $78
	adc a                                            ; $6a63: $8f
	db $fc                                           ; $6a64: $fc
	rst $38                                          ; $6a65: $ff
	cp $07                                           ; $6a66: $fe $07
	ld l, [hl]                                       ; $6a68: $6e
	ldh a, [$9d]                                     ; $6a69: $f0 $9d
	ld b, b                                          ; $6a6b: $40
	cp a                                             ; $6a6c: $bf
	ld h, [hl]                                       ; $6a6d: $66
	ldh a, [$9d]                                     ; $6a6e: $f0 $9d
	and b                                            ; $6a70: $a0
	ld e, a                                          ; $6a71: $5f
	ld e, a                                          ; $6a72: $5f
	db $f4                                           ; $6a73: $f4
	ld c, a                                          ; $6a74: $4f
	cp $72                                           ; $6a75: $fe $72
	jr jr_05c_6a15                                   ; $6a77: $18 $9c

	nop                                              ; $6a79: $00
	ld bc, $67ff                                     ; $6a7a: $01 $ff $67
	cp $df                                           ; $6a7d: $fe $df
	rst $38                                          ; $6a7f: $ff
	db $dd                                           ; $6a80: $dd
	ld bc, $ff7d                                     ; $6a81: $01 $7d $ff
	ld a, e                                          ; $6a84: $7b
	db $e4                                           ; $6a85: $e4
	sbc [hl]                                         ; $6a86: $9e
	sub d                                            ; $6a87: $92
	ld a, e                                          ; $6a88: $7b
	cp $7f                                           ; $6a89: $fe $7f
	ld a, [$499e]                                    ; $6a8b: $fa $9e $49
	ld a, e                                          ; $6a8e: $7b
	cp $8c                                           ; $6a8f: $fe $8c
	rst $38                                          ; $6a91: $ff
	ld a, b                                          ; $6a92: $78
	inc l                                            ; $6a93: $2c
	ld a, b                                          ; $6a94: $78
	rst SubAFromHL                                          ; $6a95: $d7
	ld a, b                                          ; $6a96: $78
	add hl, hl                                       ; $6a97: $29
	ld a, b                                          ; $6a98: $78
	ld d, c                                          ; $6a99: $51
	ld a, b                                          ; $6a9a: $78
	xor a                                            ; $6a9b: $af
	ld a, b                                          ; $6a9c: $78
	ld d, d                                          ; $6a9d: $52
	ld a, b                                          ; $6a9e: $78
	ld a, [hl+]                                      ; $6a9f: $2a
	ld a, b                                          ; $6aa0: $78
	rst SubAFromHL                                          ; $6aa1: $d7
	ld bc, $7b06                                     ; $6aa2: $01 $06 $7b
	call nc, $269c                                   ; $6aa5: $d4 $9c $26
	ld bc, $7a27                                     ; $6aa8: $01 $27 $7a
	dec c                                            ; $6aab: $0d
	sbc e                                            ; $6aac: $9b
	ld c, a                                          ; $6aad: $4f
	ld bc, $014e                      ; $6aae: $01 $4e $01
	ld a, d                                          ; $6ab1: $7a
	sbc a                                            ; $6ab2: $9f
	ld l, [hl]                                       ; $6ab3: $6e
	ret z                                            ; $6ab4: $c8

	ld a, d                                          ; $6ab5: $7a
	xor [hl]                                         ; $6ab6: $ae
	ld a, a                                          ; $6ab7: $7f
	db $fc                                           ; $6ab8: $fc
	rst SubAFromDE                                          ; $6ab9: $df
	ret nz                                           ; $6aba: $c0

	sbc l                                            ; $6abb: $9d
	ld b, b                                          ; $6abc: $40
	ld a, a                                          ; $6abd: $7f
	ld a, e                                          ; $6abe: $7b
	push af                                          ; $6abf: $f5
	add a                                            ; $6ac0: $87
	ld [hl], a                                       ; $6ac1: $77
	ret z                                            ; $6ac2: $c8

	ld h, e                                          ; $6ac3: $63
	call c, $d46b                                    ; $6ac4: $dc $6b $d4
	rst $38                                          ; $6ac7: $ff
	ret nz                                           ; $6ac8: $c0

	rst FarCall                                          ; $6ac9: $f7
	ld c, b                                          ; $6aca: $48
	db $e3                                           ; $6acb: $e3
	ld e, h                                          ; $6acc: $5c
	rst FarCall                                          ; $6acd: $f7
	rrca                                             ; $6ace: $0f
	rst $38                                          ; $6acf: $ff
	rlca                                             ; $6ad0: $07
	or [hl]                                          ; $6ad1: $b6
	ld c, a                                          ; $6ad2: $4f
	ld d, $ef                                        ; $6ad3: $16 $ef
	ld d, [hl]                                       ; $6ad5: $56
	xor a                                            ; $6ad6: $af
	or $0f                                           ; $6ad7: $f6 $0f
	ld [hl], a                                       ; $6ad9: $77
	ld hl, sp+$77                                    ; $6ada: $f8 $77
	add l                                            ; $6adc: $85
	sbc c                                            ; $6add: $99
	db $dd                                           ; $6ade: $dd
	ld [hl+], a                                      ; $6adf: $22
	adc b                                            ; $6ae0: $88
	ld [hl], a                                       ; $6ae1: $77
	xor d                                            ; $6ae2: $aa
	ld d, l                                          ; $6ae3: $55
	ld l, a                                          ; $6ae4: $6f
	ld hl, sp+$7e                                    ; $6ae5: $f8 $7e
	call z, $fe77                                    ; $6ae7: $cc $77 $fe
	sub e                                            ; $6aea: $93
	and b                                            ; $6aeb: $a0
	ld a, a                                          ; $6aec: $7f
	and b                                            ; $6aed: $a0
	ld a, a                                          ; $6aee: $7f
	cp a                                             ; $6aef: $bf
	ld a, a                                          ; $6af0: $7f
	cp a                                             ; $6af1: $bf
	ld h, b                                          ; $6af2: $60
	cp a                                             ; $6af3: $bf
	ld h, b                                          ; $6af4: $60
	ld [$77ff], sp                                   ; $6af5: $08 $ff $77
	cp $94                                           ; $6af8: $fe $94
	add hl, bc                                       ; $6afa: $09
	cp $09                                           ; $6afb: $fe $09
	cp $f8                                           ; $6afd: $fe $f8
	rst $38                                          ; $6aff: $ff
	ld sp, hl                                        ; $6b00: $f9
	ld c, $f9                                        ; $6b01: $0e $f9
	ld c, $03                                        ; $6b03: $0e $03
	ld a, e                                          ; $6b05: $7b
	ld h, [hl]                                       ; $6b06: $66
	add b                                            ; $6b07: $80
	call $dd33                                       ; $6b08: $cd $33 $dd
	xor e                                            ; $6b0b: $ab
	sbc c                                            ; $6b0c: $99
	ld h, a                                          ; $6b0d: $67
	ld bc, $99ff                                     ; $6b0e: $01 $ff $99
	ld h, a                                          ; $6b11: $67
	db $dd                                           ; $6b12: $dd
	xor e                                            ; $6b13: $ab
	ldh a, [$ef]                                     ; $6b14: $f0 $ef
	ldh [rIE], a                                     ; $6b16: $e0 $ff
	and $f9                                          ; $6b18: $e6 $f9
	xor $f5                                          ; $6b1a: $ee $f5
	db $ec                                           ; $6b1c: $ec
	di                                               ; $6b1d: $f3
	ldh [rIE], a                                     ; $6b1e: $e0 $ff
	db $ec                                           ; $6b20: $ec
	di                                               ; $6b21: $f3
	xor $f5                                          ; $6b22: $ee $f5
	inc c                                            ; $6b24: $0c
	rst $38                                          ; $6b25: $ff
	inc b                                            ; $6b26: $04
	sub b                                            ; $6b27: $90
	rst $38                                          ; $6b28: $ff
	ld h, h                                          ; $6b29: $64
	sbc a                                            ; $6b2a: $9f
	db $e4                                           ; $6b2b: $e4
	ld e, a                                          ; $6b2c: $5f
	call nz, $073f                                   ; $6b2d: $c4 $3f $07
	rst $38                                          ; $6b30: $ff
	rst JumpTable                                          ; $6b31: $c7
	inc a                                            ; $6b32: $3c
	rst SubAFromBC                                          ; $6b33: $e7
	ld e, h                                          ; $6b34: $5c
	rlca                                             ; $6b35: $07
	cp $6f                                           ; $6b36: $fe $6f
	cp $8d                                           ; $6b38: $fe $8d
	dec b                                            ; $6b3a: $05
	cp $ff                                           ; $6b3b: $fe $ff
	cp $ff                                           ; $6b3d: $fe $ff
	ld b, $fd                                        ; $6b3f: $06 $fd
	ld b, $c0                                        ; $6b41: $06 $c0
	add b                                            ; $6b43: $80
	rst $38                                          ; $6b44: $ff
	cp a                                             ; $6b45: $bf
	ld a, a                                          ; $6b46: $7f
	rst $38                                          ; $6b47: $ff
	rst AddAOntoHL                                          ; $6b48: $ef
	add $ef                                          ; $6b49: $c6 $ef
	rst AddAOntoHL                                          ; $6b4b: $ef
	ld a, e                                          ; $6b4c: $7b
	ld e, a                                          ; $6b4d: $5f
	ld a, e                                          ; $6b4e: $7b
	ld hl, sp-$6b                                    ; $6b4f: $f8 $95
	ld h, h                                          ; $6b51: $64
	inc a                                            ; $6b52: $3c
	rst $38                                          ; $6b53: $ff
	db $e3                                           ; $6b54: $e3
	rst $38                                          ; $6b55: $ff
	db $e3                                           ; $6b56: $e3
	ld a, a                                          ; $6b57: $7f
	ld [hl+], a                                      ; $6b58: $22
	ld a, a                                          ; $6b59: $7f
	ld h, e                                          ; $6b5a: $63

Jump_05c_6b5b:
	ld l, a                                          ; $6b5b: $6f
	ld hl, sp-$62                                    ; $6b5c: $f8 $9e
	inc bc                                           ; $6b5e: $03
	ld [hl], c                                       ; $6b5f: $71
	ld [hl], l                                       ; $6b60: $75
	sbc e                                            ; $6b61: $9b
	ld a, e                                          ; $6b62: $7b
	ld sp, $7b7b                                     ; $6b63: $31 $7b $7b
	ld l, a                                          ; $6b66: $6f
	ld hl, sp+$46                                    ; $6b67: $f8 $46
	ldh [rBGP], a                                    ; $6b69: $e0 $47
	ldh a, [rPCM34]                                  ; $6b6b: $f0 $77
	push af                                          ; $6b6d: $f5
	sbc h                                            ; $6b6e: $9c
	ld d, l                                          ; $6b6f: $55
	nop                                              ; $6b70: $00
	xor d                                            ; $6b71: $aa
	ld l, e                                          ; $6b72: $6b
	db $fc                                           ; $6b73: $fc
	ld a, e                                          ; $6b74: $7b
	ldh a, [$7a]                                     ; $6b75: $f0 $7a
	pop af                                           ; $6b77: $f1
	ld a, l                                          ; $6b78: $7d
	add c                                            ; $6b79: $81
	sbc [hl]                                         ; $6b7a: $9e
	xor e                                            ; $6b7b: $ab
	ld l, e                                          ; $6b7c: $6b
	db $fc                                           ; $6b7d: $fc
	ld a, [hl]                                       ; $6b7e: $7e
	or c                                             ; $6b7f: $b1
	ld d, [hl]                                       ; $6b80: $56
	call nz, $1d75                                   ; $6b81: $c4 $75 $1d
	ld d, [hl]                                       ; $6b84: $56
	call nz, $f077                                   ; $6b85: $c4 $77 $f0
	ld [hl], d                                       ; $6b88: $72
	call nz, $fa7f                                   ; $6b89: $c4 $7f $fa
	sbc e                                            ; $6b8c: $9b
	ld c, a                                          ; $6b8d: $4f
	inc bc                                           ; $6b8e: $03
	ld c, a                                          ; $6b8f: $4f
	ld [bc], a                                       ; $6b90: $02
	ld a, e                                          ; $6b91: $7b
	ld e, a                                          ; $6b92: $5f
	ld a, l                                          ; $6b93: $7d
	add hl, de                                       ; $6b94: $19
	ld a, [hl]                                       ; $6b95: $7e
	jp c, $d599                                      ; $6b96: $da $99 $d5

	ld b, b                                          ; $6b99: $40
	xor d                                            ; $6b9a: $aa
	add b                                            ; $6b9b: $80
	ld d, l                                          ; $6b9c: $55
	add b                                            ; $6b9d: $80
	ld l, a                                          ; $6b9e: $6f
	xor [hl]                                         ; $6b9f: $ae
	rst $38                                          ; $6ba0: $ff
	sub a                                            ; $6ba1: $97
	db $eb                                           ; $6ba2: $eb
	ld d, h                                          ; $6ba3: $54
	ld a, a                                          ; $6ba4: $7f
	ld b, b                                          ; $6ba5: $40
	rst FarCall                                          ; $6ba6: $f7
	ld c, b                                          ; $6ba7: $48
	ld h, e                                          ; $6ba8: $63
	ld e, h                                          ; $6ba9: $5c
	ld [hl], a                                       ; $6baa: $77
	ld hl, sp+$7e                                    ; $6bab: $f8 $7e
	add sp, -$63                                     ; $6bad: $e8 $9d
	ccf                                              ; $6baf: $3f
	nop                                              ; $6bb0: $00
	ld h, [hl]                                       ; $6bb1: $66
	ret z                                            ; $6bb2: $c8

	ld [hl], a                                       ; $6bb3: $77
	ld hl, sp+$7b                                    ; $6bb4: $f8 $7b
	xor [hl]                                         ; $6bb6: $ae
	ld a, c                                          ; $6bb7: $79
	jp nc, $c05e                                     ; $6bb8: $d2 $5e $c0

	ld [hl], a                                       ; $6bbb: $77
	ldh a, [$9a]                                     ; $6bbc: $f0 $9a
	sbc a                                            ; $6bbe: $9f
	ld h, b                                          ; $6bbf: $60
	adc d                                            ; $6bc0: $8a
	ld h, b                                          ; $6bc1: $60
	sub l                                            ; $6bc2: $95
	ld l, e                                          ; $6bc3: $6b
	db $fc                                           ; $6bc4: $fc
	adc c                                            ; $6bc5: $89
	dec [hl]                                         ; $6bc6: $35
	ret nz                                           ; $6bc7: $c0

	ldh [rP1], a                                     ; $6bc8: $e0 $00
	ld hl, sp+$0f                                    ; $6bca: $f8 $0f
	xor b                                            ; $6bcc: $a8
	rrca                                             ; $6bcd: $0f
	ld e, b                                          ; $6bce: $58
	rrca                                             ; $6bcf: $0f
	xor c                                            ; $6bd0: $a9
	ld c, $59                                        ; $6bd1: $0e $59
	ld c, $ac                                        ; $6bd3: $0e $ac
	rrca                                             ; $6bd5: $0f
	ld e, a                                          ; $6bd6: $5f
	rlca                                             ; $6bd7: $07
	rlca                                             ; $6bd8: $07
	nop                                              ; $6bd9: $00
	call Call_05c_5e33                               ; $6bda: $cd $33 $5e
	ret nz                                           ; $6bdd: $c0

	ld [hl], a                                       ; $6bde: $77
	ld l, a                                          ; $6bdf: $6f
	ld a, [hl]                                       ; $6be0: $7e
	call nz, $c05e                                   ; $6be1: $c4 $5e $c0
	ld [hl], a                                       ; $6be4: $77
	ldh a, [hDisp1_OBP1]                                     ; $6be5: $f0 $94
	ld h, [hl]                                       ; $6be7: $66
	sbc h                                            ; $6be8: $9c
	dec b                                            ; $6be9: $05
	db $fc                                           ; $6bea: $fc
	ld h, [hl]                                       ; $6beb: $66
	sbc h                                            ; $6bec: $9c
	push hl                                          ; $6bed: $e5
	ld e, h                                          ; $6bee: $5c
	add $3c                                          ; $6bef: $c6 $3c
	dec b                                            ; $6bf1: $05
	db $dd                                           ; $6bf2: $dd
	db $fc                                           ; $6bf3: $fc
	sbc c                                            ; $6bf4: $99
	nop                                              ; $6bf5: $00
	xor l                                            ; $6bf6: $ad
	ld b, $57                                        ; $6bf7: $06 $57
	ld [bc], a                                       ; $6bf9: $02
	xor d                                            ; $6bfa: $aa
	ld l, a                                          ; $6bfb: $6f
	ld [hl-], a                                      ; $6bfc: $32
	ld [hl], e                                       ; $6bfd: $73
	ld [hl], b                                       ; $6bfe: $70
	rst SubAFromDE                                          ; $6bff: $df
	rst AddAOntoHL                                          ; $6c00: $ef
	ld a, [hl]                                       ; $6c01: $7e
	jp z, $4679                                      ; $6c02: $ca $79 $46

	ld a, d                                          ; $6c05: $7a
	ret nz                                           ; $6c06: $c0

	ld a, e                                          ; $6c07: $7b
	ld hl, sp-$21                                    ; $6c08: $f8 $df
	ld a, a                                          ; $6c0a: $7f
	ld a, h                                          ; $6c0b: $7c
	ld d, b                                          ; $6c0c: $50
	ld l, d                                          ; $6c0d: $6a
	ret z                                            ; $6c0e: $c8

	ld [hl], a                                       ; $6c0f: $77
	ld hl, sp-$62                                    ; $6c10: $f8 $9e
	jp hl                                            ; $6c12: $e9


	ld a, b                                          ; $6c13: $78
	jp nz, $c866                                     ; $6c14: $c2 $66 $c8

	ld l, a                                          ; $6c17: $6f
	ld hl, sp+$4e                                    ; $6c18: $f8 $4e
	ldh [c], a                                       ; $6c1a: $e2
	ld [hl], a                                       ; $6c1b: $77
	db $fc                                           ; $6c1c: $fc
	ld b, a                                          ; $6c1d: $47
	ldh a, [$e0]                                     ; $6c1e: $f0 $e0
	nop                                              ; $6c20: $00
	ldh [$ba], a                                     ; $6c21: $e0 $ba
	halt                                             ; $6c23: $76
	ld [bc], a                                       ; $6c24: $02
	ld [hl], e                                       ; $6c25: $73
	cp $03                                           ; $6c26: $fe $03
	ldh a, [rAUD2ENV]                                ; $6c28: $f0 $17
	ldh a, [$9e]                                     ; $6c2a: $f0 $9e
	ld b, b                                          ; $6c2c: $40
	inc bc                                           ; $6c2d: $03
	ret nc                                           ; $6c2e: $d0

	inc bc                                           ; $6c2f: $03
	ldh a, [$03]                                     ; $6c30: $f0 $03
	ldh a, [$03]                                     ; $6c32: $f0 $03
	ldh a, [$03]                                     ; $6c34: $f0 $03
	ldh a, [$03]                                     ; $6c36: $f0 $03
	ldh a, [$03]                                     ; $6c38: $f0 $03
	ldh a, [$5f]                                     ; $6c3a: $f0 $5f
	ldh a, [$7c]                                     ; $6c3c: $f0 $7c
	ld a, [$829c]                                    ; $6c3e: $fa $9c $82
	rst $38                                          ; $6c41: $ff
	dec b                                            ; $6c42: $05
	ld h, e                                          ; $6c43: $63
	db $fc                                           ; $6c44: $fc
	sbc [hl]                                         ; $6c45: $9e
	adc d                                            ; $6c46: $8a
	ld a, e                                          ; $6c47: $7b
	xor $9e                                          ; $6c48: $ee $9e
	add b                                            ; $6c4a: $80
	ld a, e                                          ; $6c4b: $7b
	db $fc                                           ; $6c4c: $fc
	sbc h                                            ; $6c4d: $9c
	adc b                                            ; $6c4e: $88
	rst $38                                          ; $6c4f: $ff
	inc b                                            ; $6c50: $04
	ld [hl], e                                       ; $6c51: $73
	db $fc                                           ; $6c52: $fc
	sbc [hl]                                         ; $6c53: $9e
	ld [$f47b], sp                                   ; $6c54: $08 $7b $f4
	ld a, h                                          ; $6c57: $7c
	ld l, b                                          ; $6c58: $68
	ld a, a                                          ; $6c59: $7f
	add sp, -$62                                     ; $6c5a: $e8 $9e
	ld a, [bc]                                       ; $6c5c: $0a
	ld h, e                                          ; $6c5d: $63
	db $fc                                           ; $6c5e: $fc
	ld a, a                                          ; $6c5f: $7f
	ldh a, [rPCM34]                                  ; $6c60: $f0 $77
	ld [$fc77], a                                    ; $6c62: $ea $77 $fc
	sbc [hl]                                         ; $6c65: $9e
	inc d                                            ; $6c66: $14
	ld a, e                                          ; $6c67: $7b
	db $fc                                           ; $6c68: $fc
	sbc h                                            ; $6c69: $9c
	dec d                                            ; $6c6a: $15
	rst $38                                          ; $6c6b: $ff
	jr nz, jr_05c_6ce8                               ; $6c6c: $20 $7a

	call z, $a09e                                    ; $6c6e: $cc $9e $a0
	ld e, e                                          ; $6c71: $5b
	db $fc                                           ; $6c72: $fc
	sbc d                                            ; $6c73: $9a
	db $10                                           ; $6c74: $10
	rst $38                                          ; $6c75: $ff
	jr z, @+$01                                      ; $6c76: $28 $ff

	ld d, h                                          ; $6c78: $54
	ld [hl], e                                       ; $6c79: $73
	db $fc                                           ; $6c7a: $fc
	sbc [hl]                                         ; $6c7b: $9e
	xor b                                            ; $6c7c: $a8
	ld [hl], e                                       ; $6c7d: $73
	db $fc                                           ; $6c7e: $fc
	ld [hl], a                                       ; $6c7f: $77
	ret nc                                           ; $6c80: $d0

	ld a, a                                          ; $6c81: $7f
	cp [hl]                                          ; $6c82: $be
	ld a, a                                          ; $6c83: $7f
	db $fc                                           ; $6c84: $fc
	ld a, a                                          ; $6c85: $7f
	add $6f                                          ; $6c86: $c6 $6f
	db $fc                                           ; $6c88: $fc
	ld l, e                                          ; $6c89: $6b
	ld a, d                                          ; $6c8a: $7a
	ld [hl], e                                       ; $6c8b: $73
	add [hl]                                         ; $6c8c: $86
	ld l, a                                          ; $6c8d: $6f
	db $fc                                           ; $6c8e: $fc
	ld l, a                                          ; $6c8f: $6f
	cp $77                                           ; $6c90: $fe $77
	adc d                                            ; $6c92: $8a
	ld [hl], a                                       ; $6c93: $77
	db $fc                                           ; $6c94: $fc
	ld a, a                                          ; $6c95: $7f
	cp $7f                                           ; $6c96: $fe $7f
	xor d                                            ; $6c98: $aa
	ld a, a                                          ; $6c99: $7f
	cp h                                             ; $6c9a: $bc
	ld [hl], a                                       ; $6c9b: $77
	db $fc                                           ; $6c9c: $fc
	ld a, a                                          ; $6c9d: $7f
	or $77                                           ; $6c9e: $f6 $77
	or h                                             ; $6ca0: $b4
	ld [hl], a                                       ; $6ca1: $77
	ldh a, [rPCM34]                                  ; $6ca2: $f0 $77
	sub [hl]                                         ; $6ca4: $96
	ld a, a                                          ; $6ca5: $7f
	db $fc                                           ; $6ca6: $fc
	ld a, a                                          ; $6ca7: $7f
	jp nz, $927f                                     ; $6ca8: $c2 $7f $92

	ld [hl], a                                       ; $6cab: $77
	add b                                            ; $6cac: $80
	ld [hl], a                                       ; $6cad: $77
	or d                                             ; $6cae: $b2
	ld a, a                                          ; $6caf: $7f
	db $fc                                           ; $6cb0: $fc
	sbc d                                            ; $6cb1: $9a
	ld b, l                                          ; $6cb2: $45
	rst $38                                          ; $6cb3: $ff
	xor d                                            ; $6cb4: $aa
	rst $38                                          ; $6cb5: $ff
	ld d, l                                          ; $6cb6: $55
	ld a, e                                          ; $6cb7: $7b
	db $fc                                           ; $6cb8: $fc
	ld e, a                                          ; $6cb9: $5f
	or [hl]                                          ; $6cba: $b6
	ld a, a                                          ; $6cbb: $7f
	jp nz, $419e                                     ; $6cbc: $c2 $9e $41

	ld a, e                                          ; $6cbf: $7b
	db $fc                                           ; $6cc0: $fc
	ld a, a                                          ; $6cc1: $7f
	ld a, [hl]                                       ; $6cc2: $7e
	ld [hl], a                                       ; $6cc3: $77
	ld hl, sp+$7f                                    ; $6cc4: $f8 $7f
	halt                                             ; $6cc6: $76
	ld [hl], a                                       ; $6cc7: $77
	db $fc                                           ; $6cc8: $fc
	sbc [hl]                                         ; $6cc9: $9e
	ld d, c                                          ; $6cca: $51
	ld [hl], e                                       ; $6ccb: $73
	add b                                            ; $6ccc: $80
	ld h, a                                          ; $6ccd: $67
	and d                                            ; $6cce: $a2
	sbc [hl]                                         ; $6ccf: $9e
	add l                                            ; $6cd0: $85
	ld a, e                                          ; $6cd1: $7b
	jp nz, $fc7f                                     ; $6cd2: $c2 $7f $fc

	ld [hl], a                                       ; $6cd5: $77
	ld [hl], b                                       ; $6cd6: $70
	ld a, a                                          ; $6cd7: $7f
	ld a, [de]                                       ; $6cd8: $1a
	ld [hl], a                                       ; $6cd9: $77
	add $6f                                          ; $6cda: $c6 $6f
	db $fc                                           ; $6cdc: $fc
	ld h, a                                          ; $6cdd: $67
	ld [hl+], a                                      ; $6cde: $22
	ld [hl], a                                       ; $6cdf: $77
	ld hl, sp+$7e                                    ; $6ce0: $f8 $7e
	cp $57                                           ; $6ce2: $fe $57
	ld h, b                                          ; $6ce4: $60
	ld h, a                                          ; $6ce5: $67
	add b                                            ; $6ce6: $80
	ld a, a                                          ; $6ce7: $7f

jr_05c_6ce8:
	ld e, $7f                                        ; $6ce8: $1e $7f
	ld hl, sp+$77                                    ; $6cea: $f8 $77
	db $fc                                           ; $6cec: $fc
	ld a, a                                          ; $6ced: $7f
	db $f4                                           ; $6cee: $f4
	ld a, a                                          ; $6cef: $7f
	ld a, h                                          ; $6cf0: $7c
	ld [hl], a                                       ; $6cf1: $77
	ldh a, [$67]                                     ; $6cf2: $f0 $67
	xor [hl]                                         ; $6cf4: $ae
	ld a, c                                          ; $6cf5: $79
	call nc, $fc7b                                   ; $6cf6: $d4 $7b $fc
	ld l, $00                                        ; $6cf9: $2e $00
	call z, $9e33                                    ; $6cfb: $cc $33 $9e
	ld [hl], e                                       ; $6cfe: $73
	db $db                                           ; $6cff: $db
	inc sp                                           ; $6d00: $33
	sbc [hl]                                         ; $6d01: $9e
	scf                                              ; $6d02: $37
	ld e, e                                          ; $6d03: $5b
	or $9e                                           ; $6d04: $f6 $9e
	ld [hl], a                                       ; $6d06: $77
	ld [hl], e                                       ; $6d07: $73
	or $94                                           ; $6d08: $f6 $94
	ld h, e                                          ; $6d0a: $63
	inc sp                                           ; $6d0b: $33
	scf                                              ; $6d0c: $37
	ld [hl], a                                       ; $6d0d: $77
	ld [hl], a                                       ; $6d0e: $77
	ld d, [hl]                                       ; $6d0f: $56
	ld h, l                                          ; $6d10: $65
	ld [hl], a                                       ; $6d11: $77
	ld [hl], a                                       ; $6d12: $77
	ld d, l                                          ; $6d13: $55
	ld b, l                                          ; $6d14: $45
	sbc $77                                          ; $6d15: $de $77
	sbc h                                            ; $6d17: $9c
	ld b, h                                          ; $6d18: $44
	ld h, [hl]                                       ; $6d19: $66
	ld h, h                                          ; $6d1a: $64
	ld a, e                                          ; $6d1b: $7b
	or $9e                                           ; $6d1c: $f6 $9e
	ld d, l                                          ; $6d1e: $55
	ld [hl], a                                       ; $6d1f: $77
	rst FarCall                                          ; $6d20: $f7
	rst SubAFromDE                                          ; $6d21: $df
	ld h, [hl]                                       ; $6d22: $66
	ld l, a                                          ; $6d23: $6f
	or $c2                                           ; $6d24: $f6 $c2
	ld h, [hl]                                       ; $6d26: $66
	ldh a, [c]                                       ; $6d27: $f2
	ld b, $cd                                        ; $6d28: $06 $cd
	rst $38                                          ; $6d2a: $ff
	sub e                                            ; $6d2b: $93
	ld a, [$f9fd]                                    ; $6d2c: $fa $fd $f9
	ldh a, [$f0]                                     ; $6d2f: $f0 $f0
	ldh [$e0], a                                     ; $6d31: $e0 $e0
	ret nz                                           ; $6d33: $c0

	ret nc                                           ; $6d34: $d0

	ldh [$c8], a                                     ; $6d35: $e0 $c8
	pop af                                           ; $6d37: $f1
	db $db                                           ; $6d38: $db
	rst $38                                          ; $6d39: $ff
	sub l                                            ; $6d3a: $95
	cp a                                             ; $6d3b: $bf
	ld a, a                                          ; $6d3c: $7f
	sbc a                                            ; $6d3d: $9f
	ccf                                              ; $6d3e: $3f
	rst GetHLinHL                                          ; $6d3f: $cf
	rra                                              ; $6d40: $1f
	ld l, a                                          ; $6d41: $6f
	sbc a                                            ; $6d42: $9f
	rst $38                                          ; $6d43: $ff
	rra                                              ; $6d44: $1f
	db $d3                                           ; $6d45: $d3
	rst $38                                          ; $6d46: $ff
	sbc [hl]                                         ; $6d47: $9e
	ld sp, hl                                        ; $6d48: $f9
	sbc $ff                                          ; $6d49: $de $ff
	sbc b                                            ; $6d4b: $98

jr_05c_6d4c:
	di                                               ; $6d4c: $f3
	rst $38                                          ; $6d4d: $ff
	rst SubAFromBC                                          ; $6d4e: $e7
	ei                                               ; $6d4f: $fb
	db $eb                                           ; $6d50: $eb
	rst FarCall                                          ; $6d51: $f7
	rst FarCall                                          ; $6d52: $f7
	jp c, $9eff                                      ; $6d53: $da $ff $9e

	cp $4b                                           ; $6d56: $fe $4b
	cp $9b                                           ; $6d58: $fe $9b
	ld e, l                                          ; $6d5a: $5d
	and b                                            ; $6d5b: $a0
	ld a, $c0                                        ; $6d5c: $3e $c0
	ld d, a                                          ; $6d5e: $57
	db $fc                                           ; $6d5f: $fc
	ldh [$a1], a                                     ; $6d60: $e0 $a1
	sbc e                                            ; $6d62: $9b
	cp d                                             ; $6d63: $ba
	dec b                                            ; $6d64: $05
	ld a, h                                          ; $6d65: $7c
	inc bc                                           ; $6d66: $03
	ld d, a                                          ; $6d67: $57
	db $fc                                           ; $6d68: $fc
	sbc l                                            ; $6d69: $9d
	ld a, a                                          ; $6d6a: $7f
	rst $38                                          ; $6d6b: $ff
	ld c, a                                          ; $6d6c: $4f
	cp $db                                           ; $6d6d: $fe $db
	rst $38                                          ; $6d6f: $ff
	sbc b                                            ; $6d70: $98
	db $fd                                           ; $6d71: $fd
	cp $fc                                           ; $6d72: $fe $fc
	ld hl, sp-$08                                    ; $6d74: $f8 $f8
	ldh a, [$e0]                                     ; $6d76: $f0 $e0
	ld a, e                                          ; $6d78: $7b
	ld a, [de]                                       ; $6d79: $1a
	db $db                                           ; $6d7a: $db
	rst $38                                          ; $6d7b: $ff
	ld a, a                                          ; $6d7c: $7f
	add sp, $7f                                      ; $6d7d: $e8 $7f
	ld e, $9a                                        ; $6d7f: $1e $9a
	ld a, a                                          ; $6d81: $7f
	ccf                                              ; $6d82: $3f
	ld e, a                                          ; $6d83: $5f
	ccf                                              ; $6d84: $3f
	ld a, a                                          ; $6d85: $7f
	ld c, e                                          ; $6d86: $4b
	jr nz, jr_05c_6d4c                               ; $6d87: $20 $c3

	rst $38                                          ; $6d89: $ff
	sbc e                                            ; $6d8a: $9b
	rst SubAFromDE                                          ; $6d8b: $df
	rst $38                                          ; $6d8c: $ff
	xor a                                            ; $6d8d: $af
	rst SubAFromDE                                          ; $6d8e: $df
	pop de                                           ; $6d8f: $d1
	rst $38                                          ; $6d90: $ff
	sbc d                                            ; $6d91: $9a
	push bc                                          ; $6d92: $c5
	ld a, [$fce3]                                    ; $6d93: $fa $e3 $fc
	ldh [c], a                                       ; $6d96: $e2
	ld a, e                                          ; $6d97: $7b
	cp $9a                                           ; $6d98: $fe $9a
	ldh a, [c]                                       ; $6d9a: $f2
	db $fd                                           ; $6d9b: $fd
	push af                                          ; $6d9c: $f5
	ei                                               ; $6d9d: $fb
	ei                                               ; $6d9e: $fb
	sbc $ff                                          ; $6d9f: $de $ff
	ld a, [hl]                                       ; $6da1: $7e
	ret z                                            ; $6da2: $c8

	ld a, a                                          ; $6da3: $7f
	xor b                                            ; $6da4: $a8
	ld a, a                                          ; $6da5: $7f
	db $fd                                           ; $6da6: $fd
	ld h, a                                          ; $6da7: $67
	adc b                                            ; $6da8: $88
	ld a, [hl]                                       ; $6da9: $7e
	ldh a, [hDisp1_BGP]                                     ; $6daa: $f0 $92
	or $f9                                           ; $6dac: $f6 $f9
	rst AddAOntoHL                                          ; $6dae: $ef
	ldh a, [$df]                                     ; $6daf: $f0 $df
	ldh [$fc], a                                     ; $6db1: $e0 $fc
	ret nz                                           ; $6db3: $c0

	ldh a, [$80]                                     ; $6db4: $f0 $80
	ret nz                                           ; $6db6: $c0

	nop                                              ; $6db7: $00
	add b                                            ; $6db8: $80
	cp $77                                           ; $6db9: $fe $77
	add h                                            ; $6dbb: $84
	ld a, e                                          ; $6dbc: $7b
	add l                                            ; $6dbd: $85
	ld a, e                                          ; $6dbe: $7b
	add e                                            ; $6dbf: $83
	sbc h                                            ; $6dc0: $9c
	ld c, a                                          ; $6dc1: $4f
	ccf                                              ; $6dc2: $3f
	rlca                                             ; $6dc3: $07
	ld a, e                                          ; $6dc4: $7b
	cp $02                                           ; $6dc5: $fe $02
	ret nz                                           ; $6dc7: $c0

	ldh [$a2], a                                     ; $6dc8: $e0 $a2
	ld b, $c0                                        ; $6dca: $06 $c0
	adc d                                            ; $6dcc: $8a
	ld hl, sp-$40                                    ; $6dcd: $f8 $c0
	xor $c0                                          ; $6dcf: $ee $c0
	push hl                                          ; $6dd1: $e5
	jp nz, $e1e6                                     ; $6dd2: $c2 $e6 $e1

	ldh a, [c]                                       ; $6dd5: $f2
	pop hl                                           ; $6dd6: $e1
	ldh a, [c]                                       ; $6dd7: $f2
	pop af                                           ; $6dd8: $f1
	ld a, [$faf1]                                    ; $6dd9: $fa $f1 $fa
	ld sp, hl                                        ; $6ddc: $f9
	ld c, a                                          ; $6ddd: $4f
	ccf                                              ; $6dde: $3f
	adc a                                            ; $6ddf: $8f
	ld a, a                                          ; $6de0: $7f
	rrca                                             ; $6de1: $0f
	ld a, c                                          ; $6de2: $79
	jp hl                                            ; $6de3: $e9


	sbc [hl]                                         ; $6de4: $9e
	ccf                                              ; $6de5: $3f
	ld a, e                                          ; $6de6: $7b
	cp $5e                                           ; $6de7: $fe $5e
	and b                                            ; $6de9: $a0
	rst JumpTable                                          ; $6dea: $c7
	rst $38                                          ; $6deb: $ff
	sbc b                                            ; $6dec: $98
	cp a                                             ; $6ded: $bf
	rst GetHLinHL                                          ; $6dee: $cf
	xor a                                            ; $6def: $af
	rst SubAFromDE                                          ; $6df0: $df
	xor a                                            ; $6df1: $af
	rst SubAFromDE                                          ; $6df2: $df
	rst GetHLinHL                                          ; $6df3: $cf
	jp z, Jump_05c_7dff                              ; $6df4: $ca $ff $7d

	or h                                             ; $6df7: $b4
	pop de                                           ; $6df8: $d1
	rst $38                                          ; $6df9: $ff
	ld d, [hl]                                       ; $6dfa: $56
	db $f4                                           ; $6dfb: $f4
	db $dd                                           ; $6dfc: $dd
	rst $38                                          ; $6dfd: $ff
	ld a, d                                          ; $6dfe: $7a
	call z, $c676                                    ; $6dff: $cc $76 $c6
	add [hl]                                         ; $6e02: $86
	ld b, b                                          ; $6e03: $40
	ret nc                                           ; $6e04: $d0

	jr nz, @-$3a                                     ; $6e05: $20 $c4

	jr c, jr_05c_6e49                                ; $6e07: $38 $40

	cp a                                             ; $6e09: $bf
	add [hl]                                         ; $6e0a: $86
	ld sp, hl                                        ; $6e0b: $f9
	ld b, a                                          ; $6e0c: $47
	ccf                                              ; $6e0d: $3f
	daa                                              ; $6e0e: $27
	ld e, a                                          ; $6e0f: $5f
	scf                                              ; $6e10: $37
	ld c, a                                          ; $6e11: $4f
	ld d, a                                          ; $6e12: $57
	cpl                                              ; $6e13: $2f
	ld b, a                                          ; $6e14: $47
	cpl                                              ; $6e15: $2f

jr_05c_6e16:
	adc a                                            ; $6e16: $8f
	ld b, a                                          ; $6e17: $47
	rrca                                             ; $6e18: $0f
	add a                                            ; $6e19: $87
	adc a                                            ; $6e1a: $8f
	rlca                                             ; $6e1b: $07
	ld [bc], a                                       ; $6e1c: $02
	ret nz                                           ; $6e1d: $c0

	db $ec                                           ; $6e1e: $ec
	sbc [hl]                                         ; $6e1f: $9e
	ld bc, $fe6f                                     ; $6e20: $01 $6f $fe
	adc h                                            ; $6e23: $8c
	ld bc, $0103                                     ; $6e24: $01 $03 $01
	jr nz, jr_05c_6e29                               ; $6e27: $20 $00

jr_05c_6e29:
	jr nz, jr_05c_6e2b                               ; $6e29: $20 $00

jr_05c_6e2b:
	ld a, d                                          ; $6e2b: $7a
	nop                                              ; $6e2c: $00
	ld a, [hl]                                       ; $6e2d: $7e
	jr jr_05c_6e16                                   ; $6e2e: $18 $e6

	ld a, h                                          ; $6e30: $7c
	add a                                            ; $6e31: $87
	cp $09                                           ; $6e32: $fe $09
	rst $38                                          ; $6e34: $ff
	ld [hl], l                                       ; $6e35: $75
	rst $38                                          ; $6e36: $ff
	ldh [$d1], a                                     ; $6e37: $e0 $d1
	ld b, $c0                                        ; $6e39: $06 $c0
	sbc l                                            ; $6e3b: $9d
	cp $fd                                           ; $6e3c: $fe $fd
	rst SubAFromHL                                          ; $6e3e: $d7
	rst $38                                          ; $6e3f: $ff
	ld a, a                                          ; $6e40: $7f
	push af                                          ; $6e41: $f5
	sbc l                                            ; $6e42: $9d
	ei                                               ; $6e43: $fb
	db $fc                                           ; $6e44: $fc
	rst GetHLinHL                                          ; $6e45: $cf
	rst $38                                          ; $6e46: $ff
	ld a, l                                          ; $6e47: $7d
	ld h, h                                          ; $6e48: $64

jr_05c_6e49:
	add e                                            ; $6e49: $83
	ld a, [$f0fc]                                    ; $6e4a: $fa $fc $f0
	ld hl, sp-$0c                                    ; $6e4d: $f8 $f4
	ld hl, sp-$16                                    ; $6e4f: $f8 $ea
	db $f4                                           ; $6e51: $f4
	push hl                                          ; $6e52: $e5
	ldh [c], a                                       ; $6e53: $e2
	ldh [$e3], a                                     ; $6e54: $e0 $e3
	ld e, a                                          ; $6e56: $5f
	cp a                                             ; $6e57: $bf
	rst AddAOntoHL                                          ; $6e58: $ef
	rra                                              ; $6e59: $1f
	rst SubAFromBC                                          ; $6e5a: $e7
	rra                                              ; $6e5b: $1f
	ld [hl], e                                       ; $6e5c: $73
	rrca                                             ; $6e5d: $0f
	ld sp, $1a0f                                     ; $6e5e: $31 $0f $1a
	dec b                                            ; $6e61: $05
	adc c                                            ; $6e62: $89
	ld b, $45                                        ; $6e63: $06 $45
	add d                                            ; $6e65: $82
	push de                                          ; $6e66: $d5
	rst $38                                          ; $6e67: $ff
	ld [hl], a                                       ; $6e68: $77
	or b                                             ; $6e69: $b0
	sub b                                            ; $6e6a: $90
	xor $f1                                          ; $6e6b: $ee $f1
	rst SubAFromDE                                          ; $6e6d: $df
	ldh [$cf], a                                     ; $6e6e: $e0 $cf
	ldh a, [$e7]                                     ; $6e70: $f0 $e7
	ld hl, sp-$1d                                    ; $6e72: $f8 $e3

jr_05c_6e74:
	db $fc                                           ; $6e74: $fc
	add sp, -$09                                     ; $6e75: $e8 $f7
	xor $f1                                          ; $6e77: $ee $f1
	db $f4                                           ; $6e79: $f4
	ld a, c                                          ; $6e7a: $79
	adc l                                            ; $6e7b: $8d
	ld a, a                                          ; $6e7c: $7f
	db $ec                                           ; $6e7d: $ec
	sub [hl]                                         ; $6e7e: $96
	rst SubAFromDE                                          ; $6e7f: $df
	ccf                                              ; $6e80: $3f
	rst FarCall                                          ; $6e81: $f7
	rrca                                             ; $6e82: $0f
	rst $38                                          ; $6e83: $ff
	inc bc                                           ; $6e84: $03
	db $e3                                           ; $6e85: $e3
	rra                                              ; $6e86: $1f
	rrca                                             ; $6e87: $0f
	ld a, [hl-]                                      ; $6e88: $3a
	ld [hl], b                                       ; $6e89: $70
	sub e                                            ; $6e8a: $93
	add $f9                                          ; $6e8b: $c6 $f9
	add $f9                                          ; $6e8d: $c6 $f9
	db $ed                                           ; $6e8f: $ed
	ldh a, [c]                                       ; $6e90: $f2
	db $ed                                           ; $6e91: $ed
	ldh a, [c]                                       ; $6e92: $f2
	push af                                          ; $6e93: $f5
	ld a, [$fdf2]                                    ; $6e94: $fa $f2 $fd
	ld [hl], h                                       ; $6e97: $74
	ld b, d                                          ; $6e98: $42
	sbc d                                            ; $6e99: $9a
	sbc a                                            ; $6e9a: $9f
	rrca                                             ; $6e9b: $0f
	adc a                                            ; $6e9c: $8f
	rra                                              ; $6e9d: $1f
	sbc a                                            ; $6e9e: $9f
	ld d, c                                          ; $6e9f: $51
	ld e, [hl]                                       ; $6ea0: $5e
	ld b, $c0                                        ; $6ea1: $06 $c0
	halt                                             ; $6ea3: $76
	sub $5e                                          ; $6ea4: $d6 $5e
	call z, $0a80                                    ; $6ea6: $cc $80 $0a
	inc bc                                           ; $6ea9: $03
	ld a, [bc]                                       ; $6eaa: $0a
	inc bc                                           ; $6eab: $03
	inc c                                            ; $6eac: $0c
	rlca                                             ; $6ead: $07

jr_05c_6eae:
	inc c                                            ; $6eae: $0c
	rlca                                             ; $6eaf: $07
	adc b                                            ; $6eb0: $88
	rrca                                             ; $6eb1: $0f
	adc b                                            ; $6eb2: $88
	rrca                                             ; $6eb3: $0f
	ld d, b                                          ; $6eb4: $50
	rra                                              ; $6eb5: $1f
	ld [hl], b                                       ; $6eb6: $70
	rra                                              ; $6eb7: $1f
	rla                                              ; $6eb8: $17
	cp $0e                                           ; $6eb9: $fe $0e
	db $fc                                           ; $6ebb: $fc
	jr c, jr_05c_6eae                                ; $6ebc: $38 $f0

	ld h, b                                          ; $6ebe: $60
	ret nz                                           ; $6ebf: $c0

	ld b, b                                          ; $6ec0: $40

Jump_05c_6ec1:
	ret nz                                           ; $6ec1: $c0

	ret nz                                           ; $6ec2: $c0

	add b                                            ; $6ec3: $80
	pop bc                                           ; $6ec4: $c1
	add b                                            ; $6ec5: $80
	and a                                            ; $6ec6: $a7
	sub l                                            ; $6ec7: $95
	and d                                            ; $6ec8: $a2
	ld [bc], a                                       ; $6ec9: $02
	nop                                              ; $6eca: $00
	ld [bc], a                                       ; $6ecb: $02
	nop                                              ; $6ecc: $00
	add d                                            ; $6ecd: $82
	nop                                              ; $6ece: $00
	ld b, $00                                        ; $6ecf: $06 $00
	adc d                                            ; $6ed1: $8a
	ld a, e                                          ; $6ed2: $7b
	cp $9b                                           ; $6ed3: $fe $9b
	xor h                                            ; $6ed5: $ac
	jr nz, jr_05c_6e74                               ; $6ed6: $20 $9c

	db $10                                           ; $6ed8: $10
	ld [bc], a                                       ; $6ed9: $02
	ret nz                                           ; $6eda: $c0

	ld a, [bc]                                       ; $6edb: $0a
	ret nz                                           ; $6edc: $c0

	sbc h                                            ; $6edd: $9c
	ld a, [$fcfd]                                    ; $6ede: $fa $fd $fc
	ld a, d                                          ; $6ee1: $7a
	ret z                                            ; $6ee2: $c8

	ld d, [hl]                                       ; $6ee3: $56
	db $fc                                           ; $6ee4: $fc
	db $d3                                           ; $6ee5: $d3
	rst $38                                          ; $6ee6: $ff
	sub l                                            ; $6ee7: $95
	jp nz, $e0e1                                     ; $6ee8: $c2 $e1 $e0

	pop bc                                           ; $6eeb: $c1
	pop hl                                           ; $6eec: $e1
	ret nz                                           ; $6eed: $c0

	pop de                                           ; $6eee: $d1
	ldh [$ea], a                                     ; $6eef: $e0 $ea
	pop af                                           ; $6ef1: $f1
	ld [hl], a                                       ; $6ef2: $77
	sub $df                                          ; $6ef3: $d6 $df
	rst $38                                          ; $6ef5: $ff
	sub [hl]                                         ; $6ef6: $96
	inc e                                            ; $6ef7: $1c
	db $e3                                           ; $6ef8: $e3
	ld bc, $3bff                                     ; $6ef9: $01 $ff $3b
	rst JumpTable                                          ; $6efc: $c7
	ld h, a                                          ; $6efd: $67
	sbc a                                            ; $6efe: $9f
	rra                                              ; $6eff: $1f
	ld bc, $d764                                     ; $6f00: $01 $64 $d7
	rst $38                                          ; $6f03: $ff
	sbc [hl]                                         ; $6f04: $9e
	db $ed                                           ; $6f05: $ed
	ret nc                                           ; $6f06: $d0

	rst $38                                          ; $6f07: $ff
	ld a, a                                          ; $6f08: $7f
	call nz, $bf98                                   ; $6f09: $c4 $98 $bf
	rst $38                                          ; $6f0c: $ff
	rst SubAFromDE                                          ; $6f0d: $df
	rst $38                                          ; $6f0e: $ff
	rst GetHLinHL                                          ; $6f0f: $cf
	rst $38                                          ; $6f10: $ff
	rst AddAOntoHL                                          ; $6f11: $ef
	jp nz, Jump_05c_7fff                             ; $6f12: $c2 $ff $7f

	adc [hl]                                         ; $6f15: $8e
	ld c, [hl]                                       ; $6f16: $4e
	jp nz, $1e9e                                     ; $6f17: $c2 $9e $1e

	ld b, d                                          ; $6f1a: $42
	ret nz                                           ; $6f1b: $c0

	ld a, [hl]                                       ; $6f1c: $7e
	adc $9e                                          ; $6f1d: $ce $9e
	ld de, $ca7a                                     ; $6f1f: $11 $7a $ca
	sbc [hl]                                         ; $6f22: $9e
	add hl, bc                                       ; $6f23: $09
	ld a, e                                          ; $6f24: $7b
	cp $80                                           ; $6f25: $fe $80
	dec c                                            ; $6f27: $0d
	nop                                              ; $6f28: $00
	rlca                                             ; $6f29: $07
	ld bc, $0107                                     ; $6f2a: $01 $07 $01
	pop hl                                           ; $6f2d: $e1
	ccf                                              ; $6f2e: $3f
	pop hl                                           ; $6f2f: $e1
	ccf                                              ; $6f30: $3f
	pop bc                                           ; $6f31: $c1
	ld a, a                                          ; $6f32: $7f
	jp $837e                                         ; $6f33: $c3 $7e $83


	cp $83                                           ; $6f36: $fe $83
	cp $06                                           ; $6f38: $fe $06
	db $fc                                           ; $6f3a: $fc
	ld b, $fc                                        ; $6f3b: $06 $fc
	cp a                                             ; $6f3d: $bf
	ld sp, $1fbe                                     ; $6f3e: $31 $be $1f
	ldh a, [$3f]                                     ; $6f41: $f0 $3f
	ld h, b                                          ; $6f43: $60
	ld a, a                                          ; $6f44: $7f
	ld d, b                                          ; $6f45: $50
	adc c                                            ; $6f46: $89
	ld a, a                                          ; $6f47: $7f
	ldh [$bf], a                                     ; $6f48: $e0 $bf
	jp nc, $f67f                                     ; $6f4a: $d2 $7f $f6

	ld a, a                                          ; $6f4d: $7f
	rst $38                                          ; $6f4e: $ff
	sbc c                                            ; $6f4f: $99
	ld a, a                                          ; $6f50: $7f
	cp $07                                           ; $6f51: $fe $07
	rst $38                                          ; $6f53: $ff
	inc bc                                           ; $6f54: $03
	cp $01                                           ; $6f55: $fe $01
	rst $38                                          ; $6f57: $ff
	ld b, c                                          ; $6f58: $41
	rst $38                                          ; $6f59: $ff
	ret                                              ; $6f5a: $c9


	rst $38                                          ; $6f5b: $ff
	xor e                                            ; $6f5c: $ab
	ld [hl], c                                       ; $6f5d: $71
	ld [hl], b                                       ; $6f5e: $70
	sbc [hl]                                         ; $6f5f: $9e
	ld b, b                                          ; $6f60: $40
	ld a, e                                          ; $6f61: $7b
	cp $7c                                           ; $6f62: $fe $7c
	ld hl, sp+$7f                                    ; $6f64: $f8 $7f
	cp $7e                                           ; $6f66: $fe $7e
	ld [hl], e                                       ; $6f68: $73
	dec a                                            ; $6f69: $3d
	ld sp, $c00e                                     ; $6f6a: $31 $0e $c0
	sbc [hl]                                         ; $6f6d: $9e
	ld a, b                                          ; $6f6e: $78
	jp nc, Jump_05c_7cff                             ; $6f6f: $d2 $ff $7c

	ld c, h                                          ; $6f72: $4c
	set 7, a                                         ; $6f73: $cb $ff
	ld a, a                                          ; $6f75: $7f
	ld b, [hl]                                       ; $6f76: $46
	ld a, c                                          ; $6f77: $79
	ld h, h                                          ; $6f78: $64
	ld a, b                                          ; $6f79: $78
	ld [hl], d                                       ; $6f7a: $72
	sbc [hl]                                         ; $6f7b: $9e
	rst FarCall                                          ; $6f7c: $f7
	call c, $9eff                                    ; $6f7d: $dc $ff $9e
	or a                                             ; $6f80: $b7
	ld [bc], a                                       ; $6f81: $02
	adc $7d                                          ; $6f82: $ce $7d
	or [hl]                                          ; $6f84: $b6
	ld l, h                                          ; $6f85: $6c
	ld h, d                                          ; $6f86: $62
	ld d, [hl]                                       ; $6f87: $56
	adc $7f                                          ; $6f88: $ce $7f
	and h                                            ; $6f8a: $a4
	sbc [hl]                                         ; $6f8b: $9e
	sbc a                                            ; $6f8c: $9f
	ld a, e                                          ; $6f8d: $7b
	cp $9e                                           ; $6f8e: $fe $9e
	rst SubAFromBC                                          ; $6f90: $e7
	ld [hl], e                                       ; $6f91: $73
	cp $9e                                           ; $6f92: $fe $9e
	rst JumpTable                                          ; $6f94: $c7
	ld a, e                                          ; $6f95: $7b
	cp $9c                                           ; $6f96: $fe $9c
	adc a                                            ; $6f98: $8f
	rst $38                                          ; $6f99: $ff
	rrca                                             ; $6f9a: $0f
	ld a, d                                          ; $6f9b: $7a
	ldh a, [$d7]                                     ; $6f9c: $f0 $d7
	rst $38                                          ; $6f9e: $ff
	ld a, a                                          ; $6f9f: $7f
	ld [$e27f], a                                    ; $6fa0: $ea $7f $e2
	ld a, a                                          ; $6fa3: $7f
	call c, Call_05c_4f79                            ; $6fa4: $dc $79 $4f
	jp c, Jump_05c_7eff                              ; $6fa7: $da $ff $7e

	and h                                            ; $6faa: $a4
	ld a, [hl]                                       ; $6fab: $7e
	sbc [hl]                                         ; $6fac: $9e
	ld a, [hl]                                       ; $6fad: $7e
	sbc d                                            ; $6fae: $9a
	sbc b                                            ; $6faf: $98
	add $ff                                          ; $6fb0: $c6 $ff
	ldh a, [c]                                       ; $6fb2: $f2
	rst $38                                          ; $6fb3: $ff
	ldh a, [rIE]                                     ; $6fb4: $f0 $ff
	ld hl, sp+$63                                    ; $6fb6: $f8 $63
	cp $4e                                           ; $6fb8: $fe $4e
	ret nz                                           ; $6fba: $c0

	sbc c                                            ; $6fbb: $99
	cp [hl]                                          ; $6fbc: $be
	ld b, b                                          ; $6fbd: $40
	rlca                                             ; $6fbe: $07
	ld bc, $0306                                     ; $6fbf: $01 $06 $03
	ld [hl], a                                       ; $6fc2: $77
	cp $7f                                           ; $6fc3: $fe $7f
	ld hl, sp+$7c                                    ; $6fc5: $f8 $7c
	ld d, h                                          ; $6fc7: $54
	ld [hl], l                                       ; $6fc8: $75
	ld a, b                                          ; $6fc9: $78
	ld a, l                                          ; $6fca: $7d
	sub d                                            ; $6fcb: $92
	sbc b                                            ; $6fcc: $98
	rrca                                             ; $6fcd: $0f
	db $fc                                           ; $6fce: $fc
	dec bc                                           ; $6fcf: $0b
	rst $38                                          ; $6fd0: $ff
	ld bc, $00ff                                     ; $6fd1: $01 $ff $00
	ld a, e                                          ; $6fd4: $7b
	cp $90                                           ; $6fd5: $fe $90
	add b                                            ; $6fd7: $80
	rst $38                                          ; $6fd8: $ff
	ret nz                                           ; $6fd9: $c0

	ld a, a                                          ; $6fda: $7f
	jp hl                                            ; $6fdb: $e9


	rst $38                                          ; $6fdc: $ff
	ld a, [$f2bf]                                    ; $6fdd: $fa $bf $f2
	ccf                                              ; $6fe0: $3f
	di                                               ; $6fe1: $f3
	rst SubAFromDE                                          ; $6fe2: $df
	ld a, c                                          ; $6fe3: $79
	rst $38                                          ; $6fe4: $ff
	inc a                                            ; $6fe5: $3c
	ld a, e                                          ; $6fe6: $7b
	sub b                                            ; $6fe7: $90
	sbc b                                            ; $6fe8: $98
	jr nz, @+$01                                     ; $6fe9: $20 $ff

	xor a                                            ; $6feb: $af
	rst $38                                          ; $6fec: $ff
	sbc a                                            ; $6fed: $9f
	cp $16                                           ; $6fee: $fe $16
	ld a, d                                          ; $6ff0: $7a
	and [hl]                                         ; $6ff1: $a6
	sub [hl]                                         ; $6ff2: $96
	sbc h                                            ; $6ff3: $9c
	ld hl, sp+$3f                                    ; $6ff4: $f8 $3f
	ldh a, [rIE]                                     ; $6ff6: $f0 $ff
	rst $38                                          ; $6ff8: $ff
	jr @+$01                                         ; $6ff9: $18 $ff

	ret nz                                           ; $6ffb: $c0

	ld [hl], d                                       ; $6ffc: $72
	jp nz, $fe7f                                     ; $6ffd: $c2 $7f $fe

	halt                                             ; $7000: $76
	call nz, $e09b                                   ; $7001: $c4 $9b $e0
	nop                                              ; $7004: $00
	pop hl                                           ; $7005: $e1
	add b                                            ; $7006: $80
	ld c, $c0                                        ; $7007: $0e $c0
	sbc d                                            ; $7009: $9a
	ld a, l                                          ; $700a: $7d
	ld [bc], a                                       ; $700b: $02
	ld h, e                                          ; $700c: $63
	rst $38                                          ; $700d: $ff
	ld c, a                                          ; $700e: $4f
	ld a, e                                          ; $700f: $7b
	cp b                                             ; $7010: $b8
	ld a, l                                          ; $7011: $7d
	jp nz, $fe67                                     ; $7012: $c2 $67 $fe

	ld a, a                                          ; $7015: $7f
	ld e, h                                          ; $7016: $5c
	reti                                             ; $7017: $d9


	rst $38                                          ; $7018: $ff
	ld a, [hl]                                       ; $7019: $7e
	db $e4                                           ; $701a: $e4
	ld a, a                                          ; $701b: $7f
	ld b, h                                          ; $701c: $44
	ld d, l                                          ; $701d: $55
	halt                                             ; $701e: $76
	ld a, a                                          ; $701f: $7f
	jr nc, jr_05c_70a0                               ; $7020: $30 $7e

	ld a, [$007e]                                    ; $7022: $fa $7e $00
	ld l, a                                          ; $7025: $6f
	db $10                                           ; $7026: $10
	sbc [hl]                                         ; $7027: $9e
	db $e3                                           ; $7028: $e3
	ld a, e                                          ; $7029: $7b
	cp $9e                                           ; $702a: $fe $9e
	pop af                                           ; $702c: $f1
	ld a, e                                          ; $702d: $7b
	jr c, @+$60                                      ; $702e: $38 $5e

	sub b                                            ; $7030: $90
	ld a, [hl]                                       ; $7031: $7e
	ldh [$7f], a                                     ; $7032: $e0 $7f
	db $e4                                           ; $7034: $e4
	ld a, a                                          ; $7035: $7f
	ldh [$74], a                                     ; $7036: $e0 $74
	adc [hl]                                         ; $7038: $8e
	db $dd                                           ; $7039: $dd
	rst $38                                          ; $703a: $ff
	ld a, a                                          ; $703b: $7f
	ld b, $2d                                        ; $703c: $06 $2d
	ld [hl], d                                       ; $703e: $72
	ld a, a                                          ; $703f: $7f
	jp c, $8e9a                                      ; $7040: $da $9a $8e

	rst $38                                          ; $7043: $ff
	adc h                                            ; $7044: $8c
	rst $38                                          ; $7045: $ff
	adc b                                            ; $7046: $88
	ld a, e                                          ; $7047: $7b
	ld [hl], $7f                                     ; $7048: $36 $7f
	ld l, $9a                                        ; $704a: $2e $9a
	add hl, bc                                       ; $704c: $09
	rst FarCall                                          ; $704d: $f7
	ld de, $03ef                                     ; $704e: $11 $ef $03
	ld a, e                                          ; $7051: $7b
	ld a, [hl-]                                      ; $7052: $3a
	sbc d                                            ; $7053: $9a
	jr c, @+$01                                      ; $7054: $38 $ff

	ld [hl], b                                       ; $7056: $70
	rst $38                                          ; $7057: $ff
	pop hl                                           ; $7058: $e1
	ld a, e                                          ; $7059: $7b
	cp $9e                                           ; $705a: $fe $9e
	jp $fe73                                         ; $705c: $c3 $73 $fe


	ld l, a                                          ; $705f: $6f
	ret z                                            ; $7060: $c8

	ld [hl], l                                       ; $7061: $75
	and h                                            ; $7062: $a4
	sbc [hl]                                         ; $7063: $9e
	ld a, [$807b]                                    ; $7064: $fa $7b $80
	ld a, a                                          ; $7067: $7f
	or b                                             ; $7068: $b0
	ld a, [hl]                                       ; $7069: $7e
	adc $7e                                          ; $706a: $ce $7e
	cp h                                             ; $706c: $bc
	ld [hl], a                                       ; $706d: $77
	ld l, b                                          ; $706e: $68
	ld a, a                                          ; $706f: $7f
	ld e, h                                          ; $7070: $5c
	ld a, a                                          ; $7071: $7f
	call nc, $fc76                                   ; $7072: $d4 $76 $fc
	ld a, a                                          ; $7075: $7f
	adc h                                            ; $7076: $8c
	ld a, a                                          ; $7077: $7f
	cp $88                                           ; $7078: $fe $88
	pop hl                                           ; $707a: $e1
	cp $e2                                           ; $707b: $fe $e2
	db $fd                                           ; $707d: $fd
	pop bc                                           ; $707e: $c1
	cp $02                                           ; $707f: $fe $02
	db $fd                                           ; $7081: $fd
	dec b                                            ; $7082: $05
	ld a, [$d42b]                                    ; $7083: $fa $2b $d4
	ld a, l                                          ; $7086: $7d
	add b                                            ; $7087: $80
	cp d                                             ; $7088: $ba
	ld b, b                                          ; $7089: $40
	ld a, h                                          ; $708a: $7c
	add b                                            ; $708b: $80
	ld a, [$f400]                                    ; $708c: $fa $00 $f4
	nop                                              ; $708f: $00
	ld hl, sp+$7b                                    ; $7090: $f8 $7b
	db $fc                                           ; $7092: $fc
	sbc [hl]                                         ; $7093: $9e
	add sp, -$10                                     ; $7094: $e8 $f0
	sbc c                                            ; $7096: $99
	ld h, b                                          ; $7097: $60
	ccf                                              ; $7098: $3f
	ld sp, $181f                                     ; $7099: $31 $1f $18
	rrca                                             ; $709c: $0f
	ld [hl], h                                       ; $709d: $74
	ld a, $7e                                        ; $709e: $3e $7e

jr_05c_70a0:
	xor h                                            ; $70a0: $ac
	sbc e                                            ; $70a1: $9b
	ld [bc], a                                       ; $70a2: $02
	inc bc                                           ; $70a3: $03
	inc bc                                           ; $70a4: $03
	ld bc, $b86e                                     ; $70a5: $01 $6e $b8
	sbc [hl]                                         ; $70a8: $9e
	ld b, b                                          ; $70a9: $40
	ld a, e                                          ; $70aa: $7b
	cp $7f                                           ; $70ab: $fe $7f
	ld hl, sp-$62                                    ; $70ad: $f8 $9e
	db $10                                           ; $70af: $10
	ld a, e                                          ; $70b0: $7b
	xor d                                            ; $70b1: $aa
	ld a, a                                          ; $70b2: $7f
	ld hl, sp-$64                                    ; $70b3: $f8 $9c
	ld [hl+], a                                      ; $70b5: $22
	rst $38                                          ; $70b6: $ff
	ld hl, $727b                                     ; $70b7: $21 $7b $72
	ld [hl], a                                       ; $70ba: $77
	cp $7f                                           ; $70bb: $fe $7f
	ld hl, sp-$68                                    ; $70bd: $f8 $98
	pop bc                                           ; $70bf: $c1
	rst $38                                          ; $70c0: $ff
	ld h, b                                          ; $70c1: $60
	ret nz                                           ; $70c2: $c0

	ld h, d                                          ; $70c3: $62
	ret nz                                           ; $70c4: $c0

	ld h, e                                          ; $70c5: $63
	ld a, e                                          ; $70c6: $7b
	cp $98                                           ; $70c7: $fe $98
	ld h, l                                          ; $70c9: $65
	ret nz                                           ; $70ca: $c0

	ld h, h                                          ; $70cb: $64
	ret nz                                           ; $70cc: $c0

	ld l, [hl]                                       ; $70cd: $6e
	ret nz                                           ; $70ce: $c0

	rst GetHLinHL                                          ; $70cf: $cf
	ld h, d                                          ; $70d0: $62
	ret nz                                           ; $70d1: $c0

	ld [hl], l                                       ; $70d2: $75
	ld [hl], b                                       ; $70d3: $70
	ld [hl], a                                       ; $70d4: $77
	cp $94                                           ; $70d5: $fe $94
	cp [hl]                                          ; $70d7: $be
	ld bc, $025d                                     ; $70d8: $01 $5d $02
	ld a, $01                                        ; $70db: $3e $01
	ld e, a                                          ; $70dd: $5f
	nop                                              ; $70de: $00
	cpl                                              ; $70df: $2f
	nop                                              ; $70e0: $00
	rra                                              ; $70e1: $1f
	ld a, e                                          ; $70e2: $7b
	db $fc                                           ; $70e3: $fc
	sbc h                                            ; $70e4: $9c
	rla                                              ; $70e5: $17
	nop                                              ; $70e6: $00
	rrca                                             ; $70e7: $0f
	ld a, e                                          ; $70e8: $7b
	cp h                                             ; $70e9: $bc
	sub d                                            ; $70ea: $92
	add a                                            ; $70eb: $87
	ld a, a                                          ; $70ec: $7f
	ld b, a                                          ; $70ed: $47
	cp a                                             ; $70ee: $bf
	add e                                            ; $70ef: $83
	ld a, a                                          ; $70f0: $7f
	ld b, b                                          ; $70f1: $40
	cp a                                             ; $70f2: $bf
	and b                                            ; $70f3: $a0
	ld e, a                                          ; $70f4: $5f
	call nc, $fd2b                                   ; $70f5: $d4 $2b $fd
	ld a, d                                          ; $70f8: $7a
	ld hl, sp+$76                                    ; $70f9: $f8 $76
	jr z, @+$81                                      ; $70fb: $28 $7f

	ld e, d                                          ; $70fd: $5a
	sbc [hl]                                         ; $70fe: $9e
	ret nz                                           ; $70ff: $c0

	ld [hl], e                                       ; $7100: $73
	ld d, b                                          ; $7101: $50
	ld l, l                                          ; $7102: $6d
	ret z                                            ; $7103: $c8

	ld [hl], l                                       ; $7104: $75
	ld h, h                                          ; $7105: $64
	sbc [hl]                                         ; $7106: $9e
	ld e, a                                          ; $7107: $5f
	ld a, d                                          ; $7108: $7a
	and h                                            ; $7109: $a4
	ld a, [hl]                                       ; $710a: $7e
	add sp, $7f                                      ; $710b: $e8 $7f
	db $10                                           ; $710d: $10
	sbc d                                            ; $710e: $9a
	inc e                                            ; $710f: $1c
	rst $38                                          ; $7110: $ff
	ld c, $ff                                        ; $7111: $0e $ff
	add a                                            ; $7113: $87
	ld a, e                                          ; $7114: $7b
	cp $6f                                           ; $7115: $fe $6f
	db $10                                           ; $7117: $10
	sbc d                                            ; $7118: $9a
	ld [hl], c                                       ; $7119: $71
	rst $38                                          ; $711a: $ff
	ld sp, $11ff                                     ; $711b: $31 $ff $11
	ld a, e                                          ; $711e: $7b
	add h                                            ; $711f: $84
	ld a, a                                          ; $7120: $7f
	ld l, h                                          ; $7121: $6c
	sbc d                                            ; $7122: $9a
	sub b                                            ; $7123: $90
	rst AddAOntoHL                                          ; $7124: $ef
	adc b                                            ; $7125: $88
	rst FarCall                                          ; $7126: $f7
	ret nz                                           ; $7127: $c0

	ld b, c                                          ; $7128: $41
	sbc d                                            ; $7129: $9a
	halt                                             ; $712a: $76
	or $7f                                           ; $712b: $f6 $7f
	xor [hl]                                         ; $712d: $ae
	ld h, a                                          ; $712e: $67
	cp $7f                                           ; $712f: $fe $7f
	xor b                                            ; $7131: $a8
	sbc c                                            ; $7132: $99
	inc de                                           ; $7133: $13
	rst AddAOntoHL                                          ; $7134: $ef
	inc hl                                           ; $7135: $23
	rst SubAFromDE                                          ; $7136: $df
	ld d, e                                          ; $7137: $53
	xor a                                            ; $7138: $af
	ld [hl], a                                       ; $7139: $77
	db $fc                                           ; $713a: $fc
	sbc h                                            ; $713b: $9c
	ld hl, $51df                                     ; $713c: $21 $df $51
	ld a, e                                          ; $713f: $7b
	db $fc                                           ; $7140: $fc
	sbc b                                            ; $7141: $98
	add e                                            ; $7142: $83
	rst $38                                          ; $7143: $ff
	add e                                            ; $7144: $83
	rst $38                                          ; $7145: $ff
	sub c                                            ; $7146: $91
	rst AddAOntoHL                                          ; $7147: $ef
	add c                                            ; $7148: $81
	ld [hl], e                                       ; $7149: $73
	jp nz, $849b                                     ; $714a: $c2 $9b $84

	ei                                               ; $714d: $fb
	ret z                                            ; $714e: $c8

	rst FarCall                                          ; $714f: $f7
	ld [hl], a                                       ; $7150: $77
	jp c, $cc6f                                      ; $7151: $da $6f $cc

	ld a, [hl]                                       ; $7154: $7e
	ld h, h                                          ; $7155: $64
	ld [hl], a                                       ; $7156: $77
	add b                                            ; $7157: $80
	adc a                                            ; $7158: $8f
	sub c                                            ; $7159: $91
	xor $0a                                          ; $715a: $ee $0a
	push af                                          ; $715c: $f5
	dec b                                            ; $715d: $05
	ld a, [$d52a]                                    ; $715e: $fa $2a $d5
	dec d                                            ; $7161: $15
	ld [$d52a], a                                    ; $7162: $ea $2a $d5
	ld d, a                                          ; $7165: $57
	xor b                                            ; $7166: $a8
	xor a                                            ; $7167: $af
	ld d, b                                          ; $7168: $50
	ld [hl], a                                       ; $7169: $77
	db $fc                                           ; $716a: $fc
	sub d                                            ; $716b: $92
	ld e, a                                          ; $716c: $5f
	and b                                            ; $716d: $a0
	cp a                                             ; $716e: $bf
	ld b, b                                          ; $716f: $40
	ld a, a                                          ; $7170: $7f
	add b                                            ; $7171: $80
	cp $00                                           ; $7172: $fe $00
	db $fd                                           ; $7174: $fd
	nop                                              ; $7175: $00
	ld a, [$d000]                                    ; $7176: $fa $00 $d0
	ld a, d                                          ; $7179: $7a
	call z, $fc7f                                    ; $717a: $cc $7f $fc
	sbc [hl]                                         ; $717d: $9e
	and b                                            ; $717e: $a0
	ld [hl], b                                       ; $717f: $70
	adc [hl]                                         ; $7180: $8e
	ld [hl], a                                       ; $7181: $77
	db $fc                                           ; $7182: $fc
	pop af                                           ; $7183: $f1
	sbc $01                                          ; $7184: $de $01
	or $9d                                           ; $7186: $f6 $9d
	ld [bc], a                                       ; $7188: $02
	nop                                              ; $7189: $00
	ld l, l                                          ; $718a: $6d
	ld a, d                                          ; $718b: $7a
	ld a, [hl]                                       ; $718c: $7e
	xor d                                            ; $718d: $aa
	ld a, a                                          ; $718e: $7f
	cp $99                                           ; $718f: $fe $99
	jr nc, jr_05c_71b2                               ; $7191: $30 $1f

	jr c, jr_05c_71b4                                ; $7193: $38 $1f

	ld [hl], b                                       ; $7195: $70
	ccf                                              ; $7196: $3f
	ld l, [hl]                                       ; $7197: $6e
	add $7e                                          ; $7198: $c6 $7e
	ld h, h                                          ; $719a: $64
	ld a, a                                          ; $719b: $7f
	cp $7c                                           ; $719c: $fe $7c
	ld a, [hl-]                                      ; $719e: $3a
	ld [hl], a                                       ; $719f: $77
	or $7c                                           ; $71a0: $f6 $7c

jr_05c_71a2:
	ld sp, hl                                        ; $71a2: $f9
	sbc b                                            ; $71a3: $98
	db $f4                                           ; $71a4: $f4
	rra                                              ; $71a5: $1f
	ldh a, [$1f]                                     ; $71a6: $f0 $1f
	ldh a, [$3f]                                     ; $71a8: $f0 $3f
	adc b                                            ; $71aa: $88
	ld a, e                                          ; $71ab: $7b
	xor $7d                                          ; $71ac: $ee $7d
	ld b, h                                          ; $71ae: $44
	sbc l                                            ; $71af: $9d
	jr c, jr_05c_71a2                                ; $71b0: $38 $f0

jr_05c_71b2:
	ld a, c                                          ; $71b2: $79
	ld a, b                                          ; $71b3: $78

jr_05c_71b4:
	sbc [hl]                                         ; $71b4: $9e
	add b                                            ; $71b5: $80
	ld [hl], a                                       ; $71b6: $77
	cp $de                                           ; $71b7: $fe $de
	add b                                            ; $71b9: $80
	db $fc                                           ; $71ba: $fc
	sbc [hl]                                         ; $71bb: $9e
	dec bc                                           ; $71bc: $0b
	ld a, d                                          ; $71bd: $7a
	call z, $fc7f                                    ; $71be: $cc $7f $fc
	sbc [hl]                                         ; $71c1: $9e
	dec b                                            ; $71c2: $05
	ld a, e                                          ; $71c3: $7b
	or [hl]                                          ; $71c4: $b6
	ld a, a                                          ; $71c5: $7f
	xor b                                            ; $71c6: $a8
	ld [hl], a                                       ; $71c7: $77
	db $fc                                           ; $71c8: $fc
	add e                                            ; $71c9: $83
	ld [$f515], a                                    ; $71ca: $ea $15 $f5
	ld a, [bc]                                       ; $71cd: $0a
	ld a, [$fd05]                                    ; $71ce: $fa $05 $fd
	ld [bc], a                                       ; $71d1: $02
	cp $01                                           ; $71d2: $fe $01
	ld a, a                                          ; $71d4: $7f
	nop                                              ; $71d5: $00
	cp a                                             ; $71d6: $bf
	nop                                              ; $71d7: $00
	ld e, a                                          ; $71d8: $5f
	nop                                              ; $71d9: $00
	adc c                                            ; $71da: $89
	ld [hl], a                                       ; $71db: $77
	ld d, b                                          ; $71dc: $50
	xor a                                            ; $71dd: $af
	and b                                            ; $71de: $a0
	ld e, a                                          ; $71df: $5f
	ld d, h                                          ; $71e0: $54
	xor e                                            ; $71e1: $ab
	xor b                                            ; $71e2: $a8
	ld d, a                                          ; $71e3: $57
	ld d, h                                          ; $71e4: $54
	xor e                                            ; $71e5: $ab
	ld [hl], a                                       ; $71e6: $77
	db $e4                                           ; $71e7: $e4
	ld a, [hl]                                       ; $71e8: $7e
	ld [bc], a                                       ; $71e9: $02
	ld a, a                                          ; $71ea: $7f
	cp $76                                           ; $71eb: $fe $76
	jp nz, $fa7f                                     ; $71ed: $c2 $7f $fa

	ld a, h                                          ; $71f0: $7c
	and h                                            ; $71f1: $a4
	ld [hl], a                                       ; $71f2: $77
	jr nc, @+$80                                     ; $71f3: $30 $7e

	ld e, [hl]                                       ; $71f5: $5e
	ld a, a                                          ; $71f6: $7f

jr_05c_71f7:
	cp $9c                                           ; $71f7: $fe $9c
	adc c                                            ; $71f9: $89
	rst FarCall                                          ; $71fa: $f7
	add c                                            ; $71fb: $81
	ld [hl], c                                       ; $71fc: $71
	jp nz, $027f                                     ; $71fd: $c2 $7f $02

	ld a, [hl]                                       ; $7200: $7e
	ldh a, [c]                                       ; $7201: $f2
	ld a, a                                          ; $7202: $7f
	ld c, $9b                                        ; $7203: $0e $9b
	call nz, $cafb                                   ; $7205: $c4 $fb $ca
	push af                                          ; $7208: $f5
	ld [hl], a                                       ; $7209: $77
	db $fc                                           ; $720a: $fc
	ld a, a                                          ; $720b: $7f
	ld [bc], a                                       ; $720c: $02
	sbc [hl]                                         ; $720d: $9e
	adc d                                            ; $720e: $8a
	ld a, e                                          ; $720f: $7b
	db $fc                                           ; $7210: $fc
	ld l, a                                          ; $7211: $6f
	call nc, $fe67                                   ; $7212: $d4 $67 $fe
	ld a, l                                          ; $7215: $7d
	ret z                                            ; $7216: $c8

	ld e, h                                          ; $7217: $5c
	sub [hl]                                         ; $7218: $96
	ld l, a                                          ; $7219: $6f
	cp $7f                                           ; $721a: $fe $7f
	and d                                            ; $721c: $a2
	adc e                                            ; $721d: $8b
	jr z, jr_05c_71f7                                ; $721e: $28 $d7

	ld d, b                                          ; $7220: $50
	xor a                                            ; $7221: $af
	ld a, [hl+]                                      ; $7222: $2a
	push de                                          ; $7223: $d5
	ld d, l                                          ; $7224: $55
	xor d                                            ; $7225: $aa
	ld a, [hl+]                                      ; $7226: $2a
	push de                                          ; $7227: $d5
	ld e, l                                          ; $7228: $5d
	and d                                            ; $7229: $a2
	cpl                                              ; $722a: $2f
	ret nc                                           ; $722b: $d0

	call nz, $42fb                                   ; $722c: $c4 $fb $42
	db $fd                                           ; $722f: $fd
	dec h                                            ; $7230: $25
	ld a, [$b475]                                    ; $7231: $fa $75 $b4
	adc a                                            ; $7234: $8f
	xor d                                            ; $7235: $aa
	ld d, l                                          ; $7236: $55
	ld d, l                                          ; $7237: $55
	xor d                                            ; $7238: $aa
	xor a                                            ; $7239: $af
	ld d, b                                          ; $723a: $50
	ld bc, $8afe                                     ; $723b: $01 $fe $8a
	ld [hl], l                                       ; $723e: $75
	ld d, l                                          ; $723f: $55
	xor d                                            ; $7240: $aa
	xor d                                            ; $7241: $aa
	ld d, l                                          ; $7242: $55
	rst SubAFromHL                                          ; $7243: $d7
	jr z, jr_05c_72b9                                ; $7244: $28 $73

	sub c                                            ; $7246: $91
	ld a, a                                          ; $7247: $7f
	ld l, [hl]                                       ; $7248: $6e
	ld [hl], d                                       ; $7249: $72
	call nc, $f87f                                   ; $724a: $d4 $7f $f8
	halt                                             ; $724d: $76
	call nc, $f59c                                   ; $724e: $d4 $9c $f5
	nop                                              ; $7251: $00
	xor d                                            ; $7252: $aa
	ld a, e                                          ; $7253: $7b
	db $fc                                           ; $7254: $fc
	sbc b                                            ; $7255: $98
	ld [$d400], a                                    ; $7256: $ea $00 $d4
	nop                                              ; $7259: $00
	xor b                                            ; $725a: $a8
	nop                                              ; $725b: $00
	ld d, b                                          ; $725c: $50
	ld a, d                                          ; $725d: $7a
	call z, $d9e0                                    ; $725e: $cc $e0 $d9
	ld a, a                                          ; $7261: $7f
	jr @+$81                                         ; $7262: $18 $7f

	cp $9e                                           ; $7264: $fe $9e
	inc bc                                           ; $7266: $03
	ld [hl], e                                       ; $7267: $73
	cp $9e                                           ; $7268: $fe $9e
	inc de                                           ; $726a: $13
	ld a, c                                          ; $726b: $79
	ld [hl], b                                       ; $726c: $70
	ld a, a                                          ; $726d: $7f
	cp $7e                                           ; $726e: $fe $7e
	ret nz                                           ; $7270: $c0

	ld [hl], a                                       ; $7271: $77
	cp $7f                                           ; $7272: $fe $7f
	xor e                                            ; $7274: $ab
	ld [hl], a                                       ; $7275: $77
	cp $76                                           ; $7276: $fe $76
	call z, $9773                                    ; $7278: $cc $73 $97
	sbc e                                            ; $727b: $9b
	rst $38                                          ; $727c: $ff
	inc b                                            ; $727d: $04
	rst $38                                          ; $727e: $ff
	ld [$6e79], sp                                   ; $727f: $08 $79 $6e
	sbc l                                            ; $7282: $9d
	ldh [$c0], a                                     ; $7283: $e0 $c0
	halt                                             ; $7285: $76
	adc $db                                          ; $7286: $ce $db
	add b                                            ; $7288: $80
	halt                                             ; $7289: $76
	ret z                                            ; $728a: $c8

	pop hl                                           ; $728b: $e1
	sub [hl]                                         ; $728c: $96
	xor a                                            ; $728d: $af
	nop                                              ; $728e: $00
	ld d, a                                          ; $728f: $57
	nop                                              ; $7290: $00
	dec hl                                           ; $7291: $2b
	nop                                              ; $7292: $00
	dec d                                            ; $7293: $15
	nop                                              ; $7294: $00
	ld a, [bc]                                       ; $7295: $0a
	ld a, d                                          ; $7296: $7a
	xor h                                            ; $7297: $ac
	db $fd                                           ; $7298: $fd
	ld l, [hl]                                       ; $7299: $6e
	or h                                             ; $729a: $b4
	ld a, a                                          ; $729b: $7f
	or c                                             ; $729c: $b1
	halt                                             ; $729d: $76
	or h                                             ; $729e: $b4
	ld a, a                                          ; $729f: $7f
	db $e4                                           ; $72a0: $e4
	sbc c                                            ; $72a1: $99
	ld d, l                                          ; $72a2: $55
	nop                                              ; $72a3: $00
	add b                                            ; $72a4: $80
	ld a, a                                          ; $72a5: $7f
	ld d, c                                          ; $72a6: $51
	xor [hl]                                         ; $72a7: $ae
	ld [hl], a                                       ; $72a8: $77
	ld h, $9d                                        ; $72a9: $26 $9d
	db $eb                                           ; $72ab: $eb
	inc d                                            ; $72ac: $14
	ld l, a                                          ; $72ad: $6f
	sbc c                                            ; $72ae: $99
	ld a, l                                          ; $72af: $7d
	add $9b                                          ; $72b0: $c6 $9b
	ld b, d                                          ; $72b2: $42
	cp a                                             ; $72b3: $bf
	and h                                            ; $72b4: $a4
	ld e, a                                          ; $72b5: $5f
	ld [hl], l                                       ; $72b6: $75
	ld d, h                                          ; $72b7: $54
	ld [hl], a                                       ; $72b8: $77

jr_05c_72b9:
	ld a, [de]                                       ; $72b9: $1a
	ld a, [hl]                                       ; $72ba: $7e
	and b                                            ; $72bb: $a0
	ld a, l                                          ; $72bc: $7d
	ldh [c], a                                       ; $72bd: $e2
	sub c                                            ; $72be: $91
	inc d                                            ; $72bf: $14
	db $eb                                           ; $72c0: $eb
	ld a, [bc]                                       ; $72c1: $0a
	push af                                          ; $72c2: $f5
	ld d, h                                          ; $72c3: $54
	xor e                                            ; $72c4: $ab
	xor d                                            ; $72c5: $aa
	ld d, l                                          ; $72c6: $55
	ld d, h                                          ; $72c7: $54
	xor e                                            ; $72c8: $ab
	cp d                                             ; $72c9: $ba
	ld b, l                                          ; $72ca: $45
	db $f4                                           ; $72cb: $f4
	dec bc                                           ; $72cc: $0b
	ld [hl], h                                       ; $72cd: $74
	sub h                                            ; $72ce: $94
	ld d, a                                          ; $72cf: $57
	cp $5d                                           ; $72d0: $fe $5d
	add h                                            ; $72d2: $84
	ld [hl], l                                       ; $72d3: $75
	xor d                                            ; $72d4: $aa
	rst SubAFromDE                                          ; $72d5: $df
	rst $38                                          ; $72d6: $ff
	sub l                                            ; $72d7: $95
	rla                                              ; $72d8: $17
	add sp, $2b                                      ; $72d9: $e8 $2b
	call nc, $e817                                   ; $72db: $d4 $17 $e8
	dec bc                                           ; $72de: $0b
	db $f4                                           ; $72df: $f4
	dec d                                            ; $72e0: $15
	ld [$a875], a                                    ; $72e1: $ea $75 $a8
	ld a, [hl]                                       ; $72e4: $7e
	ret z                                            ; $72e5: $c8

	ld l, a                                          ; $72e6: $6f
	xor d                                            ; $72e7: $aa
	ld a, [hl]                                       ; $72e8: $7e
	db $e4                                           ; $72e9: $e4
	ld a, [hl]                                       ; $72ea: $7e
	ldh [$7d], a                                     ; $72eb: $e0 $7d
	or b                                             ; $72ed: $b0
	ld a, a                                          ; $72ee: $7f
	dec l                                            ; $72ef: $2d
	ld a, [hl]                                       ; $72f0: $7e
	call nc, $f87f                                   ; $72f1: $d4 $7f $f8
	ld a, [hl]                                       ; $72f4: $7e
	ldh [$9e], a                                     ; $72f5: $e0 $9e
	push de                                          ; $72f7: $d5
	ld a, d                                          ; $72f8: $7a
	ret c                                            ; $72f9: $d8

	ld a, [hl]                                       ; $72fa: $7e
	ldh [$7e], a                                     ; $72fb: $e0 $7e
	call c, $d87e                                    ; $72fd: $dc $7e $d8
	ld a, a                                          ; $7300: $7f
	db $f4                                           ; $7301: $f4
	sbc [hl]                                         ; $7302: $9e
	ld d, h                                          ; $7303: $54
	ld [hl], c                                       ; $7304: $71
	and h                                            ; $7305: $a4
	ldh [$c7], a                                     ; $7306: $e0 $c7
	sbc h                                            ; $7308: $9c
	dec de                                           ; $7309: $1b
	ld bc, $7b0f                                     ; $730a: $01 $0f $7b
	cp $94                                           ; $730d: $fe $94
	ld c, [hl]                                       ; $730f: $4e
	inc bc                                           ; $7310: $03
	ld e, [hl]                                       ; $7311: $5e
	inc bc                                           ; $7312: $03
	ld a, h                                          ; $7313: $7c
	rlca                                             ; $7314: $07
	ld a, h                                          ; $7315: $7c
	rlca                                             ; $7316: $07
	ld e, h                                          ; $7317: $5c
	rlca                                             ; $7318: $07
	nop                                              ; $7319: $00
	ld l, d                                          ; $731a: $6a
	ret nc                                           ; $731b: $d0

	ld l, c                                          ; $731c: $69
	adc d                                            ; $731d: $8a
	sbc e                                            ; $731e: $9b
	cp $30                                           ; $731f: $fe $30
	rst $38                                          ; $7321: $ff
	ldh [$67], a                                     ; $7322: $e0 $67
	cp $7a                                           ; $7324: $fe $7a
	and [hl]                                         ; $7326: $a6
	ld a, d                                          ; $7327: $7a
	and h                                            ; $7328: $a4
	ld [hl], d                                       ; $7329: $72
	jp z, Jump_05c_489c                              ; $732a: $ca $9c $48

	ret nz                                           ; $732d: $c0

	ld l, b                                          ; $732e: $68
	ld a, e                                          ; $732f: $7b
	cp $9e                                           ; $7330: $fe $9e
	ld a, b                                          ; $7332: $78
	ld a, e                                          ; $7333: $7b
	cp $e0                                           ; $7334: $fe $e0
	pop de                                           ; $7336: $d1
	sbc [hl]                                         ; $7337: $9e
	ld a, [hl+]                                      ; $7338: $2a
	ld [hl], c                                       ; $7339: $71
	ld h, h                                          ; $733a: $64
	rst FarCall                                          ; $733b: $f7
	ld a, [hl]                                       ; $733c: $7e
	cp b                                             ; $733d: $b8
	ld a, [hl]                                       ; $733e: $7e
	and b                                            ; $733f: $a0
	sbc [hl]                                         ; $7340: $9e
	xor e                                            ; $7341: $ab
	ld a, d                                          ; $7342: $7a
	cp b                                             ; $7343: $b8
	ld a, [hl]                                       ; $7344: $7e
	and b                                            ; $7345: $a0
	ld a, [hl]                                       ; $7346: $7e
	sbc h                                            ; $7347: $9c
	ld a, [hl]                                       ; $7348: $7e
	sbc b                                            ; $7349: $98
	ld a, a                                          ; $734a: $7f
	db $f4                                           ; $734b: $f4
	ld l, c                                          ; $734c: $69
	ld [$e87b], a                                    ; $734d: $ea $7b $e8
	ld a, l                                          ; $7350: $7d
	ld d, b                                          ; $7351: $50
	ld a, [hl]                                       ; $7352: $7e
	sbc b                                            ; $7353: $98
	ld a, [hl]                                       ; $7354: $7e
	sub h                                            ; $7355: $94
	sub l                                            ; $7356: $95
	add sp, $17                                      ; $7357: $e8 $17
	call nc, $e82b                                   ; $7359: $d4 $2b $e8
	rla                                              ; $735c: $17
	ret nc                                           ; $735d: $d0

	cpl                                              ; $735e: $2f
	xor b                                            ; $735f: $a8
	ld d, a                                          ; $7360: $57
	ld [hl], l                                       ; $7361: $75
	ld c, b                                          ; $7362: $48
	ld a, [hl]                                       ; $7363: $7e
	xor b                                            ; $7364: $a8
	ld e, l                                          ; $7365: $5d
	add h                                            ; $7366: $84
	ld [hl], l                                       ; $7367: $75
	halt                                             ; $7368: $76
	rst GetHLinHL                                          ; $7369: $cf
	rst $38                                          ; $736a: $ff
	ld a, l                                          ; $736b: $7d
	and b                                            ; $736c: $a0
	ld a, b                                          ; $736d: $78
	ret nz                                           ; $736e: $c0

	ld a, e                                          ; $736f: $7b
	ld d, d                                          ; $7370: $52
	sbc [hl]                                         ; $7371: $9e
	ldh a, [$79]                                     ; $7372: $f0 $79
	ld [hl], h                                       ; $7374: $74
	halt                                             ; $7375: $76
	or b                                             ; $7376: $b0
	ld a, l                                          ; $7377: $7d
	and b                                            ; $7378: $a0
	ld a, l                                          ; $7379: $7d
	adc h                                            ; $737a: $8c
	ld [hl], l                                       ; $737b: $75
	ld [hl], h                                       ; $737c: $74
	ld a, [hl]                                       ; $737d: $7e
	or b                                             ; $737e: $b0
	ld a, [hl]                                       ; $737f: $7e
	or h                                             ; $7380: $b4
	ld [hl], a                                       ; $7381: $77
	db $e4                                           ; $7382: $e4
	ld a, l                                          ; $7383: $7d
	and b                                            ; $7384: $a0
	ld a, [hl]                                       ; $7385: $7e
	or h                                             ; $7386: $b4
	ld [hl], a                                       ; $7387: $77
	sbc [hl]                                         ; $7388: $9e
	halt                                             ; $7389: $76
	or h                                             ; $738a: $b4
	ld a, h                                          ; $738b: $7c
	ld d, h                                          ; $738c: $54
	ld a, a                                          ; $738d: $7f
	add sp, $7e                                      ; $738e: $e8 $7e
	call nz, $c07e                                   ; $7390: $c4 $7e $c0
	ld a, [hl]                                       ; $7393: $7e
	cp h                                             ; $7394: $bc
	ld a, [hl]                                       ; $7395: $7e
	or b                                             ; $7396: $b0
	ld a, [hl]                                       ; $7397: $7e
	xor h                                            ; $7398: $ac
	halt                                             ; $7399: $76
	sbc h                                            ; $739a: $9c
	ld a, a                                          ; $739b: $7f
	add sp, -$09                                     ; $739c: $e8 $f7
	ld a, a                                          ; $739e: $7f
	add sp, $7e                                      ; $739f: $e8 $7e
	sbc h                                            ; $73a1: $9c
	ld a, a                                          ; $73a2: $7f
	add sp, -$1f                                     ; $73a3: $e8 $e1
	sub [hl]                                         ; $73a5: $96
	ret c                                            ; $73a6: $d8

	rrca                                             ; $73a7: $0f
	sbc b                                            ; $73a8: $98
	rrca                                             ; $73a9: $0f
	cp b                                             ; $73aa: $b8
	rrca                                             ; $73ab: $0f
	ldh a, [$1f]                                     ; $73ac: $f0 $1f

jr_05c_73ae:
	ld [hl], b                                       ; $73ae: $70
	ld a, e                                          ; $73af: $7b
	cp $76                                           ; $73b0: $fe $76
	ldh [$8a], a                                     ; $73b2: $e0 $8a
	ld b, $fe                                        ; $73b4: $06 $fe
	ld b, $fc                                        ; $73b6: $06 $fc
	inc c                                            ; $73b8: $0c
	db $fc                                           ; $73b9: $fc
	ld [$18f8], sp                                   ; $73ba: $08 $f8 $18
	ld hl, sp+$10                                    ; $73bd: $f8 $10
	ldh a, [$30]                                     ; $73bf: $f0 $30
	ldh a, [rAUD4LEN]                                ; $73c1: $f0 $20
	ldh [$30], a                                     ; $73c3: $e0 $30
	rra                                              ; $73c5: $1f
	jr nc, @+$21                                     ; $73c6: $30 $1f

	db $10                                           ; $73c8: $10
	ld a, e                                          ; $73c9: $7b
	cp $9a                                           ; $73ca: $fe $9a
	jr @+$11                                         ; $73cc: $18 $0f

	jr jr_05c_73df                                   ; $73ce: $18 $0f

	ld [$fe7b], sp                                   ; $73d0: $08 $7b $fe
	sbc l                                            ; $73d3: $9d
	ld [hl], b                                       ; $73d4: $70
	ret nz                                           ; $73d5: $c0

	ld l, a                                          ; $73d6: $6f
	cp $9d                                           ; $73d7: $fe $9d
	jr nc, @-$1e                                     ; $73d9: $30 $e0

	ld l, a                                          ; $73db: $6f
	cp $e0                                           ; $73dc: $fe $e0
	rst SubAFromHL                                          ; $73de: $d7

jr_05c_73df:
	ld a, [hl]                                       ; $73df: $7e
	ret z                                            ; $73e0: $c8

	ld a, [hl]                                       ; $73e1: $7e
	call c, $d87e                                    ; $73e2: $dc $7e $d8
	ld a, [hl]                                       ; $73e5: $7e
	call nz, $f87f                                   ; $73e6: $c4 $7f $f8
	ld a, [hl]                                       ; $73e9: $7e
	cp h                                             ; $73ea: $bc
	ld a, a                                          ; $73eb: $7f
	ld hl, sp+$7e                                    ; $73ec: $f8 $7e
	call z, $dc76                                    ; $73ee: $cc $76 $dc
	ld a, a                                          ; $73f1: $7f
	ld d, b                                          ; $73f2: $50
	ld a, l                                          ; $73f3: $7d
	ld a, h                                          ; $73f4: $7c
	ld a, a                                          ; $73f5: $7f
	ld hl, sp+$77                                    ; $73f6: $f8 $77
	jr nc, @+$78                                     ; $73f8: $30 $76

	call nc, $307c                                   ; $73fa: $d4 $7c $30
	ld a, l                                          ; $73fd: $7d
	sbc h                                            ; $73fe: $9c
	ld a, l                                          ; $73ff: $7d
	ld h, b                                          ; $7400: $60
	ld a, l                                          ; $7401: $7d
	adc h                                            ; $7402: $8c
	ld [hl], l                                       ; $7403: $75
	sub h                                            ; $7404: $94
	ld a, [hl]                                       ; $7405: $7e
	ret nc                                           ; $7406: $d0

	ld a, [hl]                                       ; $7407: $7e
	call nc, Call_05c_647d                           ; $7408: $d4 $7d $64
	ld a, [hl]                                       ; $740b: $7e
	inc a                                            ; $740c: $3c
	ld [hl], a                                       ; $740d: $77
	db $fc                                           ; $740e: $fc
	ld a, [hl]                                       ; $740f: $7e
	jr c, jr_05c_73ae                                ; $7410: $38 $9c

	rlca                                             ; $7412: $07
	rst $38                                          ; $7413: $ff
	rrca                                             ; $7414: $0f
	ld a, c                                          ; $7415: $79
	sub h                                            ; $7416: $94
	ld [hl], $d0                                     ; $7417: $36 $d0
	add hl, de                                       ; $7419: $19
	nop                                              ; $741a: $00
	rst SubAFromDE                                          ; $741b: $df
	ld b, h                                          ; $741c: $44
	sbc c                                            ; $741d: $99
	ld b, d                                          ; $741e: $42
	inc hl                                           ; $741f: $23
	inc sp                                           ; $7420: $33
	inc sp                                           ; $7421: $33
	ld [hl-], a                                      ; $7422: $32
	inc h                                            ; $7423: $24
	db $dd                                           ; $7424: $dd
	ld b, h                                          ; $7425: $44
	rla                                              ; $7426: $17
	or $de                                           ; $7427: $f6 $de
	ld [hl+], a                                      ; $7429: $22
	ld [hl], a                                       ; $742a: $77
	or $db                                           ; $742b: $f6 $db
	ld [hl+], a                                      ; $742d: $22
	inc bc                                           ; $742e: $03
	or $27                                           ; $742f: $f6 $27
	or $ad                                           ; $7431: $f6 $ad
	add a                                            ; $7433: $87
	rst GetHLinHL                                          ; $7434: $cf
	rst $38                                          ; $7435: $ff
	sub c                                            ; $7436: $91
	ld a, [$f0f9]                                    ; $7437: $fa $f9 $f0
	ldh [$d0], a                                     ; $743a: $e0 $d0
	ret z                                            ; $743c: $c8

	rst $38                                          ; $743d: $ff
	rst $38                                          ; $743e: $ff
	db $fd                                           ; $743f: $fd
	ldh a, [$e0]                                     ; $7440: $f0 $e0
	ret nz                                           ; $7442: $c0

	ldh [$f1], a                                     ; $7443: $e0 $f1
	sbc $ff                                          ; $7445: $de $ff
	sbc e                                            ; $7447: $9b
	cp a                                             ; $7448: $bf
	sbc a                                            ; $7449: $9f
	rst GetHLinHL                                          ; $744a: $cf
	ld l, a                                          ; $744b: $6f
	db $dd                                           ; $744c: $dd
	rst $38                                          ; $744d: $ff
	sbc d                                            ; $744e: $9a
	ld a, a                                          ; $744f: $7f
	ccf                                              ; $7450: $3f
	rra                                              ; $7451: $1f
	sbc a                                            ; $7452: $9f
	rra                                              ; $7453: $1f
	jp c, $9eff                                      ; $7454: $da $ff $9e

	ld sp, hl                                        ; $7457: $f9
	reti                                             ; $7458: $d9


	rst $38                                          ; $7459: $ff
	sub a                                            ; $745a: $97
	rst GetHLinHL                                          ; $745b: $cf
	ldh [$a0], a                                     ; $745c: $e0 $a0
	and b                                            ; $745e: $a0
	or a                                             ; $745f: $b7
	sbc a                                            ; $7460: $9f
	rst SubAFromDE                                          ; $7461: $df
	rst GetHLinHL                                          ; $7462: $cf
	reti                                             ; $7463: $d9


	rst $38                                          ; $7464: $ff
	add b                                            ; $7465: $80
	dec d                                            ; $7466: $15
	dec hl                                           ; $7467: $2b
	dec d                                            ; $7468: $15
	ld [bc], a                                       ; $7469: $02
	ld bc, $f1c0                                     ; $746a: $01 $c0 $f1
	ret nz                                           ; $746d: $c0

	ld [$ead4], a                                    ; $746e: $ea $d4 $ea
	db $fd                                           ; $7471: $fd
	cp $ff                                           ; $7472: $fe $ff
	cp $ff                                           ; $7474: $fe $ff
	db $fd                                           ; $7476: $fd
	cp $7d                                           ; $7477: $fe $7d
	cp [hl]                                          ; $7479: $be
	ld a, l                                          ; $747a: $7d
	cp [hl]                                          ; $747b: $be
	ld e, l                                          ; $747c: $5d
	cp [hl]                                          ; $747d: $be
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	add b                                            ; $7480: $80
	ld b, b                                          ; $7481: $40
	add b                                            ; $7482: $80
	ld b, b                                          ; $7483: $40
	and b                                            ; $7484: $a0
	sbc [hl]                                         ; $7485: $9e
	ld b, b                                          ; $7486: $40
	ldh [$a1], a                                     ; $7487: $e0 $a1
	sbc l                                            ; $7489: $9d
	cp a                                             ; $748a: $bf
	ld a, a                                          ; $748b: $7f
	ld a, e                                          ; $748c: $7b
	sub c                                            ; $748d: $91
	add b                                            ; $748e: $80
	ld a, l                                          ; $748f: $7d
	cp d                                             ; $7490: $ba
	ld a, l                                          ; $7491: $7d
	nop                                              ; $7492: $00
	nop                                              ; $7493: $00
	ld bc, $0102                                     ; $7494: $01 $02 $01
	ld [bc], a                                       ; $7497: $02
	dec b                                            ; $7498: $05
	ld [bc], a                                       ; $7499: $02
	xor b                                            ; $749a: $a8
	call nc, Call_05c_40a8                           ; $749b: $d4 $a8 $40
	add b                                            ; $749e: $80
	inc bc                                           ; $749f: $03
	adc a                                            ; $74a0: $8f
	inc bc                                           ; $74a1: $03
	ld d, a                                          ; $74a2: $57
	dec hl                                           ; $74a3: $2b
	ld d, a                                          ; $74a4: $57
	cp a                                             ; $74a5: $bf
	ld a, a                                          ; $74a6: $7f
	rst $38                                          ; $74a7: $ff
	ld a, a                                          ; $74a8: $7f
	rst $38                                          ; $74a9: $ff
	di                                               ; $74aa: $f3
	rlca                                             ; $74ab: $07
	dec b                                            ; $74ac: $05
	inc d                                            ; $74ad: $14
	sbc e                                            ; $74ae: $9b
	jp hl                                            ; $74af: $e9


	pop af                                           ; $74b0: $f1
	db $eb                                           ; $74b1: $eb
	db $e3                                           ; $74b2: $e3
	sbc $ff                                          ; $74b3: $de $ff
	sbc d                                            ; $74b5: $9a
	rst AddAOntoHL                                          ; $74b6: $ef
	cp $fe                                           ; $74b7: $fe $fe
	db $f4                                           ; $74b9: $f4
	db $fc                                           ; $74ba: $fc
	ld [hl], a                                       ; $74bb: $77
	jr z, @+$81                                      ; $74bc: $28 $7f

	rst SubAFromBC                                          ; $74be: $e7
	sbc l                                            ; $74bf: $9d
	ld e, a                                          ; $74c0: $5f
	ld a, a                                          ; $74c1: $7f
	ld l, a                                          ; $74c2: $6f
	rra                                              ; $74c3: $1f
	ld a, a                                          ; $74c4: $7f
	ld e, $c1                                        ; $74c5: $1e $c1
	rst $38                                          ; $74c7: $ff
	db $db                                           ; $74c8: $db
	rst $38                                          ; $74c9: $ff
	sbc l                                            ; $74ca: $9d
	rst SubAFromDE                                          ; $74cb: $df
	xor a                                            ; $74cc: $af
	ld h, a                                          ; $74cd: $67
	rst FarCall                                          ; $74ce: $f7
	pop de                                           ; $74cf: $d1
	rst $38                                          ; $74d0: $ff
	sub [hl]                                         ; $74d1: $96
	push bc                                          ; $74d2: $c5
	db $e3                                           ; $74d3: $e3
	ldh [c], a                                       ; $74d4: $e2
	ldh [c], a                                       ; $74d5: $e2
	ldh a, [c]                                       ; $74d6: $f2
	push af                                          ; $74d7: $f5
	ei                                               ; $74d8: $fb
	rst $38                                          ; $74d9: $ff
	ld a, [$fcde]                                    ; $74da: $fa $de $fc
	sbc b                                            ; $74dd: $98
	db $fd                                           ; $74de: $fd
	ei                                               ; $74df: $fb
	rst $38                                          ; $74e0: $ff
	rst $38                                          ; $74e1: $ff
	sbc a                                            ; $74e2: $9f
	ld a, a                                          ; $74e3: $7f
	ccf                                              ; $74e4: $3f
	ld [hl], a                                       ; $74e5: $77
	and h                                            ; $74e6: $a4
	sbc l                                            ; $74e7: $9d
	cp $3f                                           ; $74e8: $fe $3f
	ld [hl], e                                       ; $74ea: $73
	ld sp, hl                                        ; $74eb: $f9
	rst SubAFromDE                                          ; $74ec: $df
	rst $38                                          ; $74ed: $ff
	sub a                                            ; $74ee: $97
	or $ef                                           ; $74ef: $f6 $ef
	rst SubAFromDE                                          ; $74f1: $df
	db $fc                                           ; $74f2: $fc
	ldh a, [$c0]                                     ; $74f3: $f0 $c0
	add b                                            ; $74f5: $80
	nop                                              ; $74f6: $00
	ld a, d                                          ; $74f7: $7a
	sbc e                                            ; $74f8: $9b
	ld a, e                                          ; $74f9: $7b
	ld a, [$97ff]                                    ; $74fa: $fa $ff $97
	ldh [$30], a                                     ; $74fd: $e0 $30
	call c, $98a0                                    ; $74ff: $dc $a0 $98
	add b                                            ; $7502: $80
	add b                                            ; $7503: $80
	add $7b                                          ; $7504: $c6 $7b
	add d                                            ; $7506: $82
	db $dd                                           ; $7507: $dd
	ld a, a                                          ; $7508: $7f
	adc e                                            ; $7509: $8b
	ccf                                              ; $750a: $3f
	dec b                                            ; $750b: $05
	xor d                                            ; $750c: $aa
	rla                                              ; $750d: $17
	xor e                                            ; $750e: $ab
	ld d, l                                          ; $750f: $55
	ld a, [hl+]                                      ; $7510: $2a
	dec b                                            ; $7511: $05
	ld [bc], a                                       ; $7512: $02
	ld a, [$e855]                                    ; $7513: $fa $55 $e8
	ld d, h                                          ; $7516: $54
	xor d                                            ; $7517: $aa
	push de                                          ; $7518: $d5
	ld a, [$7dfd]                                    ; $7519: $fa $fd $7d
	cp $fd                                           ; $751c: $fe $fd
	ld a, e                                          ; $751e: $7b
	cp $7f                                           ; $751f: $fe $7f

jr_05c_7521:
	ld a, [$d477]                                    ; $7521: $fa $77 $d4
	ld a, d                                          ; $7524: $7a
	cp h                                             ; $7525: $bc
	ldh [$bc], a                                     ; $7526: $e0 $bc
	ld a, [hl]                                       ; $7528: $7e
	ld a, b                                          ; $7529: $78
	rst SubAFromDE                                          ; $752a: $df
	jr z, jr_05c_7521                                ; $752b: $28 $f4

	rst SubAFromDE                                          ; $752d: $df
	ld [$9ef8], sp                                   ; $752e: $08 $f8 $9e
	cp [hl]                                          ; $7531: $be
	ld a, d                                          ; $7532: $7a
	ldh a, [c]                                       ; $7533: $f2
	ld a, d                                          ; $7534: $7a
	cp h                                             ; $7535: $bc
	sbc l                                            ; $7536: $9d
	ld a, a                                          ; $7537: $7f
	ld bc, $7ffc                                     ; $7538: $01 $fc $7f
	ld a, [$a080]                                    ; $753b: $fa $80 $a0
	ld d, l                                          ; $753e: $55
	add sp, -$2b                                     ; $753f: $e8 $d5
	xor d                                            ; $7541: $aa
	ld d, h                                          ; $7542: $54
	and b                                            ; $7543: $a0
	ld b, b                                          ; $7544: $40
	ld e, a                                          ; $7545: $5f
	xor d                                            ; $7546: $aa
	rla                                              ; $7547: $17
	ld a, [hl+]                                      ; $7548: $2a
	ld d, l                                          ; $7549: $55
	xor e                                            ; $754a: $ab
	ld e, a                                          ; $754b: $5f
	cp a                                             ; $754c: $bf
	rlca                                             ; $754d: $07
	ld bc, $0018                                     ; $754e: $01 $18 $00
	inc c                                            ; $7551: $0c
	inc b                                            ; $7552: $04
	nop                                              ; $7553: $00
	ld a, h                                          ; $7554: $7c
	ld hl, sp-$02                                    ; $7555: $f8 $fe
	rst SubAFromBC                                          ; $7557: $e7
	rst $38                                          ; $7558: $ff
	di                                               ; $7559: $f3
	ei                                               ; $755a: $fb
	rst $38                                          ; $755b: $ff
	sbc d                                            ; $755c: $9a
	ei                                               ; $755d: $fb
	ld c, a                                          ; $755e: $4f
	adc a                                            ; $755f: $8f
	rrca                                             ; $7560: $0f
	rra                                              ; $7561: $1f
	ld a, e                                          ; $7562: $7b
	inc h                                            ; $7563: $24
	ld l, a                                          ; $7564: $6f
	ld a, [de]                                       ; $7565: $1a
	inc bc                                           ; $7566: $03
	rst $38                                          ; $7567: $ff
	ld a, c                                          ; $7568: $79
	or e                                             ; $7569: $b3
	rst SubAFromDE                                          ; $756a: $df
	xor a                                            ; $756b: $af
	ld [hl], c                                       ; $756c: $71
	call nc, $cf9d                                   ; $756d: $d4 $9d $cf
	rst SubAFromDE                                          ; $7570: $df
	ld d, d                                          ; $7571: $52
	push bc                                          ; $7572: $c5
	sbc [hl]                                         ; $7573: $9e
	di                                               ; $7574: $f3
	ret                                              ; $7575: $c9


	rst $38                                          ; $7576: $ff
	db $db                                           ; $7577: $db
	cp $d7                                           ; $7578: $fe $d7
	rst $38                                          ; $757a: $ff
	ld a, [hl]                                       ; $757b: $7e
	cp $7e                                           ; $757c: $fe $7e
	ret                                              ; $757e: $c9


	sbc e                                            ; $757f: $9b
	ret nc                                           ; $7580: $d0

	call nz, $8640                                   ; $7581: $c4 $40 $86
	ld a, d                                          ; $7584: $7a
	push af                                          ; $7585: $f5
	sbc d                                            ; $7586: $9a
	ld b, b                                          ; $7587: $40
	jr nz, jr_05c_75c2                               ; $7588: $20 $38

	cp a                                             ; $758a: $bf
	ld sp, hl                                        ; $758b: $f9
	sbc $87                                          ; $758c: $de $87
	sbc d                                            ; $758e: $9a
	sub a                                            ; $758f: $97
	or b                                             ; $7590: $b0
	ld h, b                                          ; $7591: $60
	ld b, b                                          ; $7592: $40
	ld b, a                                          ; $7593: $47
	sbc $7f                                          ; $7594: $de $7f
	sub d                                            ; $7596: $92
	ld l, a                                          ; $7597: $6f
	ld c, a                                          ; $7598: $4f
	sbc a                                            ; $7599: $9f
	cp a                                             ; $759a: $bf
	cp a                                             ; $759b: $bf
	add c                                            ; $759c: $81
	jp nz, $02e1                                     ; $759d: $c2 $e1 $02

	dec b                                            ; $75a0: $05
	xor d                                            ; $75a1: $aa
	dec d                                            ; $75a2: $15
	ld [bc], a                                       ; $75a3: $02

jr_05c_75a4:
	halt                                             ; $75a4: $76
	ret                                              ; $75a5: $c9


	ld a, [hl]                                       ; $75a6: $7e
	cp h                                             ; $75a7: $bc
	ld a, l                                          ; $75a8: $7d
	ld a, h                                          ; $75a9: $7c
	ld [hl], l                                       ; $75aa: $75
	add d                                            ; $75ab: $82
	ld a, [hl]                                       ; $75ac: $7e
	jp nz, $fc7f                                     ; $75ad: $c2 $7f $fc

	ld [hl], l                                       ; $75b0: $75
	add d                                            ; $75b1: $82
	ld a, a                                          ; $75b2: $7f
	call $fc7f                                       ; $75b3: $cd $7f $fc
	db $ed                                           ; $75b6: $ed
	rst SubAFromDE                                          ; $75b7: $df
	inc b                                            ; $75b8: $04
	rst SubAFromDE                                          ; $75b9: $df
	ld [bc], a                                       ; $75ba: $02
	ld e, [hl]                                       ; $75bb: $5e
	db $f4                                           ; $75bc: $f4
	sbc c                                            ; $75bd: $99
	ld c, b                                          ; $75be: $48
	ld b, b                                          ; $75bf: $40
	ld b, b                                          ; $75c0: $40
	ld b, h                                          ; $75c1: $44

jr_05c_75c2:
	ld b, h                                          ; $75c2: $44
	ld b, [hl]                                       ; $75c3: $46
	rst FarCall                                          ; $75c4: $f7
	sbc [hl]                                         ; $75c5: $9e
	jr nz, jr_05c_75a4                               ; $75c6: $20 $dc

	ld b, b                                          ; $75c8: $40
	ld sp, hl                                        ; $75c9: $f9
	sbc c                                            ; $75ca: $99
	jr z, jr_05c_75ed                                ; $75cb: $28 $20

	jr nz, jr_05c_75f7                               ; $75cd: $20 $28

	jr c, jr_05c_7609                                ; $75cf: $38 $38

	ld d, [hl]                                       ; $75d1: $56
	ret nz                                           ; $75d2: $c0

	db $dd                                           ; $75d3: $dd
	ld [$18df], sp                                   ; $75d4: $08 $df $18
	ld h, d                                          ; $75d7: $62
	ret nz                                           ; $75d8: $c0

	ld [hl], a                                       ; $75d9: $77
	adc a                                            ; $75da: $8f
	ld a, c                                          ; $75db: $79
	ld a, h                                          ; $75dc: $7c
	ld [hl], l                                       ; $75dd: $75
	add d                                            ; $75de: $82
	ld a, [hl]                                       ; $75df: $7e
	jp nz, $fc7f                                     ; $75e0: $c2 $7f $fc

	sub a                                            ; $75e3: $97
	add c                                            ; $75e4: $81
	ld b, e                                          ; $75e5: $43
	add a                                            ; $75e6: $87
	ld b, b                                          ; $75e7: $40
	and b                                            ; $75e8: $a0
	ld d, l                                          ; $75e9: $55
	xor b                                            ; $75ea: $a8
	ld b, b                                          ; $75eb: $40
	halt                                             ; $75ec: $76

jr_05c_75ed:
	xor c                                            ; $75ed: $a9
	ld a, [hl]                                       ; $75ee: $7e
	cp h                                             ; $75ef: $bc

Call_05c_75f0:
	ld a, l                                          ; $75f0: $7d
	ld a, h                                          ; $75f1: $7c
	ld [hl], l                                       ; $75f2: $75
	adc a                                            ; $75f3: $8f
	sbc h                                            ; $75f4: $9c
	rrca                                             ; $75f5: $0f
	rlca                                             ; $75f6: $07

jr_05c_75f7:
	inc bc                                           ; $75f7: $03
	inc hl                                           ; $75f8: $23
	db $10                                           ; $75f9: $10
	ld a, h                                          ; $75fa: $7c
	rst GetHLinHL                                          ; $75fb: $cf
	add c                                            ; $75fc: $81
	ld a, [$f4f0]                                    ; $75fd: $fa $f0 $f4
	ld [$e0e5], a                                    ; $7600: $ea $e5 $e0
	rst $38                                          ; $7603: $ff
	cp $fc                                           ; $7604: $fe $fc
	ld hl, sp-$08                                    ; $7606: $f8 $f8
	db $f4                                           ; $7608: $f4

jr_05c_7609:
	ldh [c], a                                       ; $7609: $e2
	db $e3                                           ; $760a: $e3
	ld e, a                                          ; $760b: $5f
	rst AddAOntoHL                                          ; $760c: $ef
	rst SubAFromBC                                          ; $760d: $e7
	ld [hl], e                                       ; $760e: $73
	ld sp, $891a                                     ; $760f: $31 $1a $89
	ld b, l                                          ; $7612: $45
	cp a                                             ; $7613: $bf
	rra                                              ; $7614: $1f
	rra                                              ; $7615: $1f
	rrca                                             ; $7616: $0f
	rrca                                             ; $7617: $0f
	dec b                                            ; $7618: $05
	ld b, $82                                        ; $7619: $06 $82
	db $db                                           ; $761b: $db
	rst $38                                          ; $761c: $ff
	rst SubAFromDE                                          ; $761d: $df
	ld a, a                                          ; $761e: $7f
	reti                                             ; $761f: $d9


	rst $38                                          ; $7620: $ff
	adc b                                            ; $7621: $88
	xor $df                                          ; $7622: $ee $df
	rst GetHLinHL                                          ; $7624: $cf
	rst SubAFromBC                                          ; $7625: $e7
	db $e3                                           ; $7626: $e3
	add sp, -$12                                     ; $7627: $e8 $ee
	db $f4                                           ; $7629: $f4
	pop af                                           ; $762a: $f1
	ldh [$f0], a                                     ; $762b: $e0 $f0
	ld hl, sp-$04                                    ; $762d: $f8 $fc
	rst FarCall                                          ; $762f: $f7
	pop af                                           ; $7630: $f1
	ei                                               ; $7631: $fb
	rst $38                                          ; $7632: $ff
	ld a, a                                          ; $7633: $7f
	rst SubAFromDE                                          ; $7634: $df
	rst FarCall                                          ; $7635: $f7
	rst $38                                          ; $7636: $ff
	db $e3                                           ; $7637: $e3
	rrca                                             ; $7638: $0f
	ld a, e                                          ; $7639: $7b
	ldh [$9c], a                                     ; $763a: $e0 $9c
	ccf                                              ; $763c: $3f
	rrca                                             ; $763d: $0f
	inc bc                                           ; $763e: $03
	add hl, sp                                       ; $763f: $39
	ld [hl-], a                                      ; $7640: $32
	rst SubAFromDE                                          ; $7641: $df
	add $df                                          ; $7642: $c6 $df
	db $ed                                           ; $7644: $ed
	sub l                                            ; $7645: $95
	push af                                          ; $7646: $f5
	ldh a, [c]                                       ; $7647: $f2
	ld sp, hl                                        ; $7648: $f9
	rst $38                                          ; $7649: $ff
	ld sp, hl                                        ; $764a: $f9
	ld sp, hl                                        ; $764b: $f9
	ldh a, [c]                                       ; $764c: $f2
	ldh a, [c]                                       ; $764d: $f2
	ld a, [$7bfd]                                    ; $764e: $fa $fd $7b
	ld [hl], h                                       ; $7651: $74
	ld a, [hl]                                       ; $7652: $7e
	ld b, c                                          ; $7653: $41
	sbc e                                            ; $7654: $9b
	sbc a                                            ; $7655: $9f
	ld l, [hl]                                       ; $7656: $6e
	cp $fc                                           ; $7657: $fe $fc
	ld [hl], b                                       ; $7659: $70
	ld hl, sp-$23                                    ; $765a: $f8 $dd
	rst $38                                          ; $765c: $ff
	sub a                                            ; $765d: $97
	add c                                            ; $765e: $81
	ldh [$f0], a                                     ; $765f: $e0 $f0
	ld a, b                                          ; $7661: $78
	db $ec                                           ; $7662: $ec
	call c, $c0c8                                    ; $7663: $dc $c8 $c0
	ld h, [hl]                                       ; $7666: $66
	adc l                                            ; $7667: $8d
	ld l, h                                          ; $7668: $6c
	ld b, d                                          ; $7669: $42
	ld a, a                                          ; $766a: $7f
	cp $6c                                           ; $766b: $fe $6c
	ld b, d                                          ; $766d: $42
	jr c, jr_05c_76b0                                ; $766e: $38 $40

jr_05c_7670:
	sbc b                                            ; $7670: $98
	db $10                                           ; $7671: $10
	ld [hl+], a                                      ; $7672: $22
	ld a, [hl+]                                      ; $7673: $2a
	ld [hl+], a                                      ; $7674: $22
	ld [hl+], a                                      ; $7675: $22
	inc hl                                           ; $7676: $23
	inc hl                                           ; $7677: $23
	ld sp, hl                                        ; $7678: $f9
	sub a                                            ; $7679: $97
	ld b, [hl]                                       ; $767a: $46
	ld c, [hl]                                       ; $767b: $4e
	ld e, [hl]                                       ; $767c: $5e
	halt                                             ; $767d: $76
	halt                                             ; $767e: $76
	ld [hl], a                                       ; $767f: $77
	ld [hl], a                                       ; $7680: $77
	rst $38                                          ; $7681: $ff
	ld a, [$449e]                                    ; $7682: $fa $9e $44
	db $dd                                           ; $7685: $dd
	ld b, b                                          ; $7686: $40
	ld a, a                                          ; $7687: $7f
	xor l                                            ; $7688: $ad
	ld a, a                                          ; $7689: $7f
	or d                                             ; $768a: $b2
	ei                                               ; $768b: $fb
	ld a, d                                          ; $768c: $7a
	ld c, l                                          ; $768d: $4d
	sbc b                                            ; $768e: $98
	jr c, jr_05c_7709                                ; $768f: $38 $78

	ld a, c                                          ; $7691: $79
	ld a, e                                          ; $7692: $7b
	ld a, a                                          ; $7693: $7f
	ld a, a                                          ; $7694: $7f
	rst AddAOntoHL                                          ; $7695: $ef
	ld l, e                                          ; $7696: $6b
	jp $3896                                         ; $7697: $c3 $96 $38


	jr jr_05c_76b4                                   ; $769a: $18 $18

	call c, $ecfc                                    ; $769c: $dc $fc $ec
	db $ec                                           ; $769f: $ec
	db $fc                                           ; $76a0: $fc
	cp h                                             ; $76a1: $bc
	ld l, e                                          ; $76a2: $6b
	ldh [$9e], a                                     ; $76a3: $e0 $9e
	ldh [$6c], a                                     ; $76a5: $e0 $6c
	ld b, d                                          ; $76a7: $42
	ld a, a                                          ; $76a8: $7f
	cp $6c                                           ; $76a9: $fe $6c
	ld b, d                                          ; $76ab: $42
	ld a, a                                          ; $76ac: $7f
	cp $97                                           ; $76ad: $fe $97
	add c                                            ; $76af: $81

jr_05c_76b0:
	rlca                                             ; $76b0: $07
	rrca                                             ; $76b1: $0f
	ld e, $37                                        ; $76b2: $1e $37

jr_05c_76b4:
	dec sp                                           ; $76b4: $3b
	inc de                                           ; $76b5: $13
	inc bc                                           ; $76b6: $03
	ld h, a                                          ; $76b7: $67
	rrca                                             ; $76b8: $0f
	sbc d                                            ; $76b9: $9a
	ld sp, hl                                        ; $76ba: $f9
	db $fd                                           ; $76bb: $fd
	ld sp, hl                                        ; $76bc: $f9
	ei                                               ; $76bd: $fb
	ld [hl], a                                       ; $76be: $77
	ld a, b                                          ; $76bf: $78
	ld d, a                                          ; $76c0: $57
	reti                                             ; $76c1: $d9


	rst $38                                          ; $76c2: $ff
	ld b, l                                          ; $76c3: $45
	adc c                                            ; $76c4: $89
	sub d                                            ; $76c5: $92
	jp nz, $e1e0                                     ; $76c6: $c2 $e0 $e1

	pop de                                           ; $76c9: $d1
	ld [$fcfa], a                                    ; $76ca: $ea $fa $fc
	rst $38                                          ; $76cd: $ff
	pop hl                                           ; $76ce: $e1
	pop bc                                           ; $76cf: $c1
	ret nz                                           ; $76d0: $c0

	ldh [$f1], a                                     ; $76d1: $e0 $f1
	ld a, e                                          ; $76d3: $7b
	jr nz, jr_05c_7670                               ; $76d4: $20 $9a

	inc e                                            ; $76d6: $1c
	ld bc, $673b                                     ; $76d7: $01 $3b $67
	rra                                              ; $76da: $1f
	ld a, e                                          ; $76db: $7b
	db $db                                           ; $76dc: $db
	sbc e                                            ; $76dd: $9b
	db $e3                                           ; $76de: $e3
	rst $38                                          ; $76df: $ff
	rst JumpTable                                          ; $76e0: $c7
	sbc a                                            ; $76e1: $9f
	ld bc, $0363                                     ; $76e2: $01 $63 $03
	rst $38                                          ; $76e5: $ff
	rst GetHLinHL                                          ; $76e6: $cf
	rst $38                                          ; $76e7: $ff
	rst SubAFromDE                                          ; $76e8: $df
	db $fc                                           ; $76e9: $fc
	sbc c                                            ; $76ea: $99
	or $fa                                           ; $76eb: $f6 $fa
	ld sp, hl                                        ; $76ed: $f9
	db $fc                                           ; $76ee: $fc
	pop hl                                           ; $76ef: $e1
	ret c                                            ; $76f0: $d8

	ld l, c                                          ; $76f1: $69
	ld d, d                                          ; $76f2: $52
	sub [hl]                                         ; $76f3: $96
	rst $38                                          ; $76f4: $ff
	ld h, c                                          ; $76f5: $61
	ld [hl+], a                                      ; $76f6: $22
	dec b                                            ; $76f7: $05
	ld a, [hl+]                                      ; $76f8: $2a
	dec d                                            ; $76f9: $15
	ld a, [bc]                                       ; $76fa: $0a
	ld d, l                                          ; $76fb: $55
	ld a, [hl+]                                      ; $76fc: $2a
	ld a, c                                          ; $76fd: $79
	add d                                            ; $76fe: $82
	sbc c                                            ; $76ff: $99
	push de                                          ; $7700: $d5
	ld [$aaf5], a                                    ; $7701: $ea $f5 $aa
	push de                                          ; $7704: $d5
	ld e, l                                          ; $7705: $5d
	ld a, c                                          ; $7706: $79
	add d                                            ; $7707: $82
	ld [hl], h                                       ; $7708: $74

jr_05c_7709:
	ld b, b                                          ; $7709: $40
	ld a, [hl]                                       ; $770a: $7e
	add $74                                          ; $770b: $c6 $74
	ld b, h                                          ; $770d: $44
	ld h, b                                          ; $770e: $60
	ld b, b                                          ; $770f: $40
	ld h, c                                          ; $7710: $61
	sub b                                            ; $7711: $90
	rst SubAFromDE                                          ; $7712: $df
	daa                                              ; $7713: $27
	rst SubAFromDE                                          ; $7714: $df
	scf                                              ; $7715: $37
	rst SubAFromDE                                          ; $7716: $df
	inc sp                                           ; $7717: $33
	rst SubAFromDE                                          ; $7718: $df
	ccf                                              ; $7719: $3f
	ld l, b                                          ; $771a: $68
	sub c                                            ; $771b: $91
	sub l                                            ; $771c: $95
	nop                                              ; $771d: $00
	rst $38                                          ; $771e: $ff
	db $fc                                           ; $771f: $fc
	ldh [$c0], a                                     ; $7720: $e0 $c0
	and b                                            ; $7722: $a0
	ret nz                                           ; $7723: $c0

	and l                                            ; $7724: $a5
	db $ed                                           ; $7725: $ed
	ld h, e                                          ; $7726: $63
	ld [hl], h                                       ; $7727: $74
	xor a                                            ; $7728: $af
	ld [hl], e                                       ; $7729: $73
	inc hl                                           ; $772a: $23
	ld a, c                                          ; $772b: $79
	jp nc, $8398                                     ; $772c: $d2 $98 $83

	sub e                                            ; $772f: $93
	ld d, a                                          ; $7730: $57
	ld [hl-], a                                      ; $7731: $32
	db $fc                                           ; $7732: $fc
	cp $fc                                           ; $7733: $fe $fc
	db $dd                                           ; $7735: $dd
	cp $7d                                           ; $7736: $fe $7d
	pop af                                           ; $7738: $f1
	sub l                                            ; $7739: $95
	rst SubAFromBC                                          ; $773a: $e7
	ldh a, [c]                                       ; $773b: $f2
	ldh a, [c]                                       ; $773c: $f2
	pop hl                                           ; $773d: $e1
	ld a, [$38c6]                                    ; $773e: $fa $c6 $38
	dec a                                            ; $7741: $3d
	dec a                                            ; $7742: $3d
	rra                                              ; $7743: $1f
	ld [hl], h                                       ; $7744: $74
	add a                                            ; $7745: $87
	sub a                                            ; $7746: $97
	cp h                                             ; $7747: $bc
	inc [hl]                                         ; $7748: $34
	inc [hl]                                         ; $7749: $34
	ld [hl], h                                       ; $774a: $74
	db $f4                                           ; $774b: $f4
	inc [hl]                                         ; $774c: $34
	ld a, h                                          ; $774d: $7c
	ret c                                            ; $774e: $d8

	sbc $e0                                          ; $774f: $de $e0
	rst SubAFromDE                                          ; $7751: $df
	ret nz                                           ; $7752: $c0

	rst SubAFromDE                                          ; $7753: $df
	ldh [$9d], a                                     ; $7754: $e0 $9d
	ldh a, [$ba]                                     ; $7756: $f0 $ba
	ld a, c                                          ; $7758: $79
	add d                                            ; $7759: $82
	ld [hl], h                                       ; $775a: $74
	ld b, b                                          ; $775b: $40
	ld a, [hl]                                       ; $775c: $7e
	add $74                                          ; $775d: $c6 $74
	ld a, $7f                                        ; $775f: $3e $7f
	db $fc                                           ; $7761: $fc
	sub a                                            ; $7762: $97
	add [hl]                                         ; $7763: $86
	ld b, h                                          ; $7764: $44
	and b                                            ; $7765: $a0
	ld d, h                                          ; $7766: $54
	xor b                                            ; $7767: $a8
	ld d, b                                          ; $7768: $50
	xor d                                            ; $7769: $aa
	ld d, h                                          ; $776a: $54
	ld a, c                                          ; $776b: $79
	add d                                            ; $776c: $82
	sub d                                            ; $776d: $92
	xor e                                            ; $776e: $ab
	ld d, a                                          ; $776f: $57
	xor a                                            ; $7770: $af
	ld d, l                                          ; $7771: $55
	xor e                                            ; $7772: $ab
	ccf                                              ; $7773: $3f
	ccf                                              ; $7774: $3f
	ld l, a                                          ; $7775: $6f
	ld e, a                                          ; $7776: $5f
	sbc a                                            ; $7777: $9f
	ccf                                              ; $7778: $3f
	add a                                            ; $7779: $87
	dec de                                           ; $777a: $1b
	ld e, [hl]                                       ; $777b: $5e
	jp nz, $f899                                     ; $777c: $c2 $99 $f8

	ldh [$d1], a                                     ; $777f: $e0 $d1
	add c                                            ; $7781: $81
	ld b, b                                          ; $7782: $40
	ld [bc], a                                       ; $7783: $02
	ld a, c                                          ; $7784: $79
	sub b                                            ; $7785: $90
	sub d                                            ; $7786: $92
	ldh a, [$e0]                                     ; $7787: $f0 $e0
	ret nz                                           ; $7789: $c0

	add c                                            ; $778a: $81
	ld bc, $8fff                                     ; $778b: $01 $ff $8f
	add e                                            ; $778e: $83
	ld b, c                                          ; $778f: $41
	ld b, b                                          ; $7790: $40
	ld h, b                                          ; $7791: $60
	and b                                            ; $7792: $a0

Call_05c_7793:
	db $10                                           ; $7793: $10
	ld a, c                                          ; $7794: $79
	sbc l                                            ; $7795: $9d
	rst SubAFromDE                                          ; $7796: $df
	cp a                                             ; $7797: $bf
	sbc h                                            ; $7798: $9c
	sbc a                                            ; $7799: $9f
	rra                                              ; $779a: $1f
	rrca                                             ; $779b: $0f
	call c, $9dff                                    ; $779c: $dc $ff $9d
	ccf                                              ; $779f: $3f
	rra                                              ; $77a0: $1f
	add hl, sp                                       ; $77a1: $39
	or [hl]                                          ; $77a2: $b6
	ld [hl+], a                                      ; $77a3: $22
	xor $9b                                          ; $77a4: $ee $9b
	pop af                                           ; $77a6: $f1
	pop bc                                           ; $77a7: $c1
	pop bc                                           ; $77a8: $c1
	add d                                            ; $77a9: $82
	ld [hl], l                                       ; $77aa: $75
	ld e, b                                          ; $77ab: $58
	sbc $fe                                          ; $77ac: $de $fe
	ld a, c                                          ; $77ae: $79
	xor b                                            ; $77af: $a8
	sbc b                                            ; $77b0: $98
	ccf                                              ; $77b1: $3f
	rst SubAFromDE                                          ; $77b2: $df
	cpl                                              ; $77b3: $2f
	rla                                              ; $77b4: $17
	rra                                              ; $77b5: $1f
	inc de                                           ; $77b6: $13
	rla                                              ; $77b7: $17
	ld [hl], a                                       ; $77b8: $77
	cp e                                             ; $77b9: $bb
	ld a, a                                          ; $77ba: $7f
	ld [hl], $7f                                     ; $77bb: $36 $7f
	dec [hl]                                         ; $77bd: $35
	pop de                                           ; $77be: $d1
	rst $38                                          ; $77bf: $ff
	ld [hl], h                                       ; $77c0: $74
	inc h                                            ; $77c1: $24
	sbc e                                            ; $77c2: $9b
	ldh a, [$c0]                                     ; $77c3: $f0 $c0
	sbc [hl]                                         ; $77c5: $9e
	cp a                                             ; $77c6: $bf
	reti                                             ; $77c7: $d9


	rst $38                                          ; $77c8: $ff
	ld a, [hl]                                       ; $77c9: $7e
	call nz, $0591                                   ; $77ca: $c4 $91 $05
	ld a, [bc]                                       ; $77cd: $0a
	dec d                                            ; $77ce: $15
	xor e                                            ; $77cf: $ab
	dec d                                            ; $77d0: $15
	ld a, [bc]                                       ; $77d1: $0a
	ld [$faf5], a                                    ; $77d2: $ea $f5 $fa
	push af                                          ; $77d5: $f5
	ld [$ea54], a                                    ; $77d6: $ea $54 $ea
	push af                                          ; $77d9: $f5
	ld a, b                                          ; $77da: $78
	ld b, h                                          ; $77db: $44
	halt                                             ; $77dc: $76
	ret nz                                           ; $77dd: $c0

	ld a, l                                          ; $77de: $7d
	add b                                            ; $77df: $80
	ld [hl], d                                       ; $77e0: $72
	call nz, Call_05c_7c7d                           ; $77e1: $c4 $7d $7c
	sbc l                                            ; $77e4: $9d
	dec b                                            ; $77e5: $05
	inc b                                            ; $77e6: $04
	ld a, b                                          ; $77e7: $78
	ld d, c                                          ; $77e8: $51
	sbc h                                            ; $77e9: $9c
	inc b                                            ; $77ea: $04
	dec b                                            ; $77eb: $05
	dec b                                            ; $77ec: $05
	ld sp, hl                                        ; $77ed: $f9
	sub [hl]                                         ; $77ee: $96
	dec sp                                           ; $77ef: $3b
	ccf                                              ; $77f0: $3f
	ccf                                              ; $77f1: $3f
	inc l                                            ; $77f2: $2c
	ld h, $27                                        ; $77f3: $26 $27
	daa                                              ; $77f5: $27
	cpl                                              ; $77f6: $2f
	ld bc, $1177                                     ; $77f7: $01 $77 $11
	ld a, e                                          ; $77fa: $7b
	rrca                                             ; $77fb: $0f
	sub a                                            ; $77fc: $97
	db $d3                                           ; $77fd: $d3
	push af                                          ; $77fe: $f5
	db $e4                                           ; $77ff: $e4
	ldh [c], a                                       ; $7800: $e2
	ld [hl], l                                       ; $7801: $75
	ld a, b                                          ; $7802: $78
	rst $38                                          ; $7803: $ff
	rst GetHLinHL                                          ; $7804: $cf
	ld a, e                                          ; $7805: $7b
	ld b, b                                          ; $7806: $40
	rst SubAFromDE                                          ; $7807: $df
	ccf                                              ; $7808: $3f
	ld a, [hl]                                       ; $7809: $7e
	rst SubAFromDE                                          ; $780a: $df
	sub [hl]                                         ; $780b: $96
	rst $38                                          ; $780c: $ff
	ld e, a                                          ; $780d: $5f
	ccf                                              ; $780e: $3f
	cpl                                              ; $780f: $2f
	rrca                                             ; $7810: $0f
	ccf                                              ; $7811: $3f
	cp $fc                                           ; $7812: $fe $fc
	or b                                             ; $7814: $b0
	ld a, e                                          ; $7815: $7b
	ld [hl], l                                       ; $7816: $75
	sub d                                            ; $7817: $92
	ld hl, sp-$0f                                    ; $7818: $f8 $f1
	db $e3                                           ; $781a: $e3
	rst $38                                          ; $781b: $ff
	rst $38                                          ; $781c: $ff
	rst GetHLinHL                                          ; $781d: $cf
	rst SubAFromBC                                          ; $781e: $e7

jr_05c_781f:
	ld sp, hl                                        ; $781f: $f9
	sbc b                                            ; $7820: $98
	inc bc                                           ; $7821: $03
	inc bc                                           ; $7822: $03
	rlca                                             ; $7823: $07
	rra                                              ; $7824: $1f
	sbc $7f                                          ; $7825: $de $7f
	ld a, e                                          ; $7827: $7b
	add e                                            ; $7828: $83
	rst SubAFromDE                                          ; $7829: $df
	db $fc                                           ; $782a: $fc
	sbc h                                            ; $782b: $9c
	sbc b                                            ; $782c: $98
	jr c, jr_05c_781f                                ; $782d: $38 $f0

	ld a, d                                          ; $782f: $7a
	add $df                                          ; $7830: $c6 $df
	add b                                            ; $7832: $80
	ld a, e                                          ; $7833: $7b
	inc bc                                           ; $7834: $03
	ld [hl], d                                       ; $7835: $72
	ld h, e                                          ; $7836: $63
	ld a, b                                          ; $7837: $78
	ld b, h                                          ; $7838: $44
	halt                                             ; $7839: $76
	ret nz                                           ; $783a: $c0

	ld a, l                                          ; $783b: $7d
	add b                                            ; $783c: $80
	halt                                             ; $783d: $76
	ld [hl], e                                       ; $783e: $73
	ld a, b                                          ; $783f: $78
	ld b, b                                          ; $7840: $40
	ld a, [hl]                                       ; $7841: $7e
	call nz, $a091                                   ; $7842: $c4 $91 $a0
	ld d, b                                          ; $7845: $50
	xor b                                            ; $7846: $a8
	push de                                          ; $7847: $d5
	xor b                                            ; $7848: $a8
	ld d, b                                          ; $7849: $50
	ld d, a                                          ; $784a: $57
	xor a                                            ; $784b: $af
	ld e, a                                          ; $784c: $5f
	xor a                                            ; $784d: $af
	ld d, a                                          ; $784e: $57
	ld a, [hl+]                                      ; $784f: $2a
	ld d, a                                          ; $7850: $57
	xor a                                            ; $7851: $af
	ld [hl], a                                       ; $7852: $77
	ret                                              ; $7853: $c9


	ld a, h                                          ; $7854: $7c
	and a                                            ; $7855: $a7
	sbc [hl]                                         ; $7856: $9e
	ld a, c                                          ; $7857: $79
	ld a, c                                          ; $7858: $79
	and [hl]                                         ; $7859: $a6
	db $db                                           ; $785a: $db
	rst $38                                          ; $785b: $ff
	ld a, l                                          ; $785c: $7d
	ld e, a                                          ; $785d: $5f
	add a                                            ; $785e: $87
	add h                                            ; $785f: $84
	call nz, $eae2                                   ; $7860: $c4 $e2 $ea
	di                                               ; $7863: $f3
	and $01                                          ; $7864: $e6 $01
	ld [bc], a                                       ; $7866: $02
	add d                                            ; $7867: $82
	add d                                            ; $7868: $82
	call nz, $ecc4                                   ; $7869: $c4 $c4 $ec
	ld sp, hl                                        ; $786c: $f9
	ld [$0204], sp                                   ; $786d: $08 $04 $02
	ld [bc], a                                       ; $7870: $02
	ld bc, $e21c                                     ; $7871: $01 $1c $e2
	inc b                                            ; $7874: $04
	rlca                                             ; $7875: $07
	inc bc                                           ; $7876: $03
	ld a, e                                          ; $7877: $7b
	ld l, [hl]                                       ; $7878: $6e
	adc [hl]                                         ; $7879: $8e
	inc bc                                           ; $787a: $03
	dec e                                            ; $787b: $1d
	ei                                               ; $787c: $fb
	adc a                                            ; $787d: $8f
	ld b, a                                          ; $787e: $47
	ld h, e                                          ; $787f: $63
	inc hl                                           ; $7880: $23
	ld sp, $0111                                     ; $7881: $31 $11 $01
	add c                                            ; $7884: $81
	ld a, a                                          ; $7885: $7f
	cp a                                             ; $7886: $bf
	sbc a                                            ; $7887: $9f
	rst SubAFromDE                                          ; $7888: $df
	rst GetHLinHL                                          ; $7889: $cf
	rst AddAOntoHL                                          ; $788a: $ef
	ld b, c                                          ; $788b: $41
	ld d, c                                          ; $788c: $51
	ret nc                                           ; $788d: $d0

	rst $38                                          ; $788e: $ff
	sub a                                            ; $788f: $97
	add h                                            ; $7890: $84
	inc b                                            ; $7891: $04
	inc b                                            ; $7892: $04
	ld [bc], a                                       ; $7893: $02
	ld de, $9019                                     ; $7894: $11 $19 $90
	and [hl]                                         ; $7897: $a6
	sbc $f8                                          ; $7898: $de $f8
	sub d                                            ; $789a: $92
	db $fc                                           ; $789b: $fc
	xor $e6                                          ; $789c: $ee $e6
	rst AddAOntoHL                                          ; $789e: $ef
	reti                                             ; $789f: $d9


	ld de, $1013                                     ; $78a0: $11 $13 $10
	ld de, $1010                                     ; $78a3: $11 $10 $10
	or b                                             ; $78a6: $b0
	ld l, b                                          ; $78a7: $68
	ld [hl], a                                       ; $78a8: $77
	or c                                             ; $78a9: $b1
	cp $9e                                           ; $78aa: $fe $9e
	sub b                                            ; $78ac: $90
	ld c, l                                          ; $78ad: $4d
	dec bc                                           ; $78ae: $0b
	rst SubAFromDE                                          ; $78af: $df
	ld a, a                                          ; $78b0: $7f
	sbc h                                            ; $78b1: $9c
	cp [hl]                                          ; $78b2: $be
	cp h                                             ; $78b3: $bc
	db $dd                                           ; $78b4: $dd
	ld a, e                                          ; $78b5: $7b
	ld b, l                                          ; $78b6: $45
	sbc l                                            ; $78b7: $9d
	rst GetHLinHL                                          ; $78b8: $cf
	rst SubAFromDE                                          ; $78b9: $df
	reti                                             ; $78ba: $d9


	rst $38                                          ; $78bb: $ff
	sub a                                            ; $78bc: $97
	ld bc, $f1e2                                     ; $78bd: $01 $e2 $f1
	ld [hl], b                                       ; $78c0: $70
	add hl, de                                       ; $78c1: $19
	nop                                              ; $78c2: $00
	dec d                                            ; $78c3: $15
	adc d                                            ; $78c4: $8a
	ld a, d                                          ; $78c5: $7a
	bit 7, c                                         ; $78c6: $cb $79
	ld [hl], d                                       ; $78c8: $72
	ld a, d                                          ; $78c9: $7a
	ret nz                                           ; $78ca: $c0

	ld [hl], b                                       ; $78cb: $70
	ld b, d                                          ; $78cc: $42
	ld a, d                                          ; $78cd: $7a
	ret nz                                           ; $78ce: $c0

	ld [hl], b                                       ; $78cf: $70
	ld b, d                                          ; $78d0: $42
	ld a, d                                          ; $78d1: $7a
	ret nz                                           ; $78d2: $c0

	rst SubAFromDE                                          ; $78d3: $df
	dec b                                            ; $78d4: $05
	sbc d                                            ; $78d5: $9a
	dec h                                            ; $78d6: $25
	daa                                              ; $78d7: $27
	daa                                              ; $78d8: $27
	dec h                                            ; $78d9: $25
	dec h                                            ; $78da: $25
	ld sp, hl                                        ; $78db: $f9
	sub l                                            ; $78dc: $95
	ld a, $38                                        ; $78dd: $3e $38
	ld [hl], b                                       ; $78df: $70
	ld [hl], b                                       ; $78e0: $70
	ld [hl], d                                       ; $78e1: $72
	ld [hl], d                                       ; $78e2: $72
	ld [hl-], a                                      ; $78e3: $32
	inc sp                                           ; $78e4: $33
	rlca                                             ; $78e5: $07
	rrca                                             ; $78e6: $0f
	db $db                                           ; $78e7: $db
	rra                                              ; $78e8: $1f
	sub a                                            ; $78e9: $97
	nop                                              ; $78ea: $00
	add hl, bc                                       ; $78eb: $09
	ld b, $00                                        ; $78ec: $06 $00
	ld [$1010], sp                                   ; $78ee: $08 $10 $10
	nop                                              ; $78f1: $00
	reti                                             ; $78f2: $d9


	rst $38                                          ; $78f3: $ff
	ld l, c                                          ; $78f4: $69
	ld c, l                                          ; $78f5: $4d
	sbc [hl]                                         ; $78f6: $9e
	ld [$ffd9], sp                                   ; $78f7: $08 $d9 $ff
	sub l                                            ; $78fa: $95
	rrca                                             ; $78fb: $0f
	dec e                                            ; $78fc: $1d
	dec a                                            ; $78fd: $3d
	db $fd                                           ; $78fe: $fd
	inc a                                            ; $78ff: $3c
	ld [hl], h                                       ; $7900: $74
	ld [hl], h                                       ; $7901: $74
	add sp, -$08                                     ; $7902: $e8 $f8
	ldh a, [rPCM12]                                  ; $7904: $f0 $76
	ret z                                            ; $7906: $c8

	ld a, d                                          ; $7907: $7a
	rst JumpTable                                          ; $7908: $c7
	sbc [hl]                                         ; $7909: $9e
	add b                                            ; $790a: $80
	db $db                                           ; $790b: $db
	ret nz                                           ; $790c: $c0

	ld sp, hl                                        ; $790d: $f9
	ld l, h                                          ; $790e: $6c
	ld b, d                                          ; $790f: $42
	ld a, d                                          ; $7910: $7a
	ret nz                                           ; $7911: $c0

	ld [hl], b                                       ; $7912: $70
	ld b, d                                          ; $7913: $42
	ld a, a                                          ; $7914: $7f
	ld a, [$8097]                                    ; $7915: $fa $97 $80
	ld b, a                                          ; $7918: $47
	adc a                                            ; $7919: $8f
	ld c, $98                                        ; $791a: $0e $98
	nop                                              ; $791c: $00
	xor b                                            ; $791d: $a8
	ld d, c                                          ; $791e: $51
	ld a, d                                          ; $791f: $7a
	xor e                                            ; $7920: $ab
	ld a, e                                          ; $7921: $7b
	ld c, c                                          ; $7922: $49
	ld a, [hl]                                       ; $7923: $7e
	ret nz                                           ; $7924: $c0

	sbc h                                            ; $7925: $9c
	ld a, l                                          ; $7926: $7d
	dec a                                            ; $7927: $3d
	cp e                                             ; $7928: $bb
	ld a, c                                          ; $7929: $79
	cpl                                              ; $792a: $2f
	sbc l                                            ; $792b: $9d
	di                                               ; $792c: $f3
	ei                                               ; $792d: $fb
	reti                                             ; $792e: $d9


	rst $38                                          ; $792f: $ff
	rst SubAFromDE                                          ; $7930: $df
	pop af                                           ; $7931: $f1
	ld a, h                                          ; $7932: $7c
	jp nz, $0d7d                                     ; $7933: $c2 $7d $0d

	rst SubAFromDE                                          ; $7936: $df
	ldh [c], a                                       ; $7937: $e2
	sbc $fe                                          ; $7938: $de $fe
	add d                                            ; $793a: $82
	rst $38                                          ; $793b: $ff
	di                                               ; $793c: $f3
	di                                               ; $793d: $f3
	pop hl                                           ; $793e: $e1
	pop hl                                           ; $793f: $e1
	ld a, h                                          ; $7940: $7c
	sbc c                                            ; $7941: $99
	pop hl                                           ; $7942: $e1
	db $e3                                           ; $7943: $e3
	db $e3                                           ; $7944: $e3
	ld h, b                                          ; $7945: $60
	and b                                            ; $7946: $a0
	pop bc                                           ; $7947: $c1
	add e                                            ; $7948: $83
	ld h, [hl]                                       ; $7949: $66
	ld e, $1c                                        ; $794a: $1e $1c
	inc e                                            ; $794c: $1c
	sbc a                                            ; $794d: $9f
	rst SubAFromDE                                          ; $794e: $df
	rst $38                                          ; $794f: $ff
	pop bc                                           ; $7950: $c1
	pop bc                                           ; $7951: $c1
	db $e3                                           ; $7952: $e3
	rst FarCall                                          ; $7953: $f7
	rst AddAOntoHL                                          ; $7954: $ef
	rst SubAFromDE                                          ; $7955: $df
	ld a, a                                          ; $7956: $7f
	rst $38                                          ; $7957: $ff
	ld a, d                                          ; $7958: $7a
	inc sp                                           ; $7959: $33
	ld a, a                                          ; $795a: $7f
	ld e, [hl]                                       ; $795b: $5e
	ld a, [hl]                                       ; $795c: $7e
	ld sp, $ff03                                     ; $795d: $31 $03 $ff
	sub h                                            ; $7960: $94
	adc [hl]                                         ; $7961: $8e
	adc h                                            ; $7962: $8c
	adc b                                            ; $7963: $88
	ldh [$f8], a                                     ; $7964: $e0 $f8
	db $fc                                           ; $7966: $fc
	cp $ff                                           ; $7967: $fe $ff
	pop af                                           ; $7969: $f1
	di                                               ; $796a: $f3
	rst FarCall                                          ; $796b: $f7
	call c, $90ff                                    ; $796c: $dc $ff $90
	ld b, h                                          ; $796f: $44
	ld [bc], a                                       ; $7970: $02
	dec c                                            ; $7971: $0d
	ld b, [hl]                                       ; $7972: $46
	jp $0160                                         ; $7973: $c3 $60 $01


	add hl, bc                                       ; $7976: $09
	cp b                                             ; $7977: $b8
	db $fc                                           ; $7978: $fc
	ldh a, [c]                                       ; $7979: $f2
	cp c                                             ; $797a: $b9
	inc a                                            ; $797b: $3c
	sbc a                                            ; $797c: $9f
	rst $38                                          ; $797d: $ff
	ld [hl], e                                       ; $797e: $73
	db $eb                                           ; $797f: $eb
	halt                                             ; $7980: $76
	pop bc                                           ; $7981: $c1
	db $dd                                           ; $7982: $dd
	ld a, a                                          ; $7983: $7f
	db $dd                                           ; $7984: $dd
	rst $38                                          ; $7985: $ff
	sbc h                                            ; $7986: $9c
	rst SubAFromDE                                          ; $7987: $df
	rst AddAOntoHL                                          ; $7988: $ef
	rst $38                                          ; $7989: $ff
	ld [hl], a                                       ; $798a: $77
	ld [hl], h                                       ; $798b: $74
	ld a, c                                          ; $798c: $79
	ld a, d                                          ; $798d: $7a
	db $db                                           ; $798e: $db
	rst $38                                          ; $798f: $ff
	sbc h                                            ; $7990: $9c
	push bc                                          ; $7991: $c5
	ldh [c], a                                       ; $7992: $e2
	pop af                                           ; $7993: $f1
	ld a, d                                          ; $7994: $7a
	add [hl]                                         ; $7995: $86
	sbc h                                            ; $7996: $9c
	inc e                                            ; $7997: $1c
	call nz, Call_05c_7afa                           ; $7998: $c4 $fa $7a
	ret nz                                           ; $799b: $c0

	db $dd                                           ; $799c: $dd
	rst $38                                          ; $799d: $ff
	ld a, c                                          ; $799e: $79
	add b                                            ; $799f: $80
	ld a, d                                          ; $79a0: $7a
	jp nz, $be7e                                     ; $79a1: $c2 $7e $be

	ld a, c                                          ; $79a4: $79
	add b                                            ; $79a5: $80
	ld a, d                                          ; $79a6: $7a
	jp nz, $be7e                                     ; $79a7: $c2 $7e $be

	rst SubAFromDE                                          ; $79aa: $df
	dec l                                            ; $79ab: $2d
	rst SubAFromDE                                          ; $79ac: $df
	inc l                                            ; $79ad: $2c
	sbc [hl]                                         ; $79ae: $9e
	cpl                                              ; $79af: $2f
	sbc $3f                                          ; $79b0: $de $3f
	ld sp, hl                                        ; $79b2: $f9
	sbc l                                            ; $79b3: $9d
	add hl, sp                                       ; $79b4: $39
	sbc l                                            ; $79b5: $9d
	ld [hl], c                                       ; $79b6: $71
	ld a, [hl-]                                      ; $79b7: $3a
	sbc [hl]                                         ; $79b8: $9e
	db $fc                                           ; $79b9: $fc
	ld a, e                                          ; $79ba: $7b
	dec hl                                           ; $79bb: $2b
	ld a, c                                          ; $79bc: $79
	call $a77d                                       ; $79bd: $cd $7d $a7
	sbc h                                            ; $79c0: $9c
	nop                                              ; $79c1: $00
	ld c, $81                                        ; $79c2: $0e $81
	sbc $c0                                          ; $79c4: $de $c0
	rst SubAFromDE                                          ; $79c6: $df
	ld b, b                                          ; $79c7: $40
	reti                                             ; $79c8: $d9


	rst $38                                          ; $79c9: $ff
	sbc h                                            ; $79ca: $9c
	ld [$8101], sp                                   ; $79cb: $08 $01 $81
	ld a, c                                          ; $79ce: $79
	sub c                                            ; $79cf: $91
	ld a, [hl]                                       ; $79d0: $7e
	and d                                            ; $79d1: $a2
	ld [hl], c                                       ; $79d2: $71
	dec d                                            ; $79d3: $15
	rst SubAFromDE                                          ; $79d4: $df
	db $fc                                           ; $79d5: $fc
	sbc h                                            ; $79d6: $9c
	cp $e8                                           ; $79d7: $fe $e8
	ret c                                            ; $79d9: $d8

	ld a, d                                          ; $79da: $7a
	ld d, c                                          ; $79db: $51
	ld a, e                                          ; $79dc: $7b
	ldh [$6e], a                                     ; $79dd: $e0 $6e

Jump_05c_79df:
	xor c                                            ; $79df: $a9
	rst $38                                          ; $79e0: $ff
	db $dd                                           ; $79e1: $dd
	ldh [$9b], a                                     ; $79e2: $e0 $9b
	ldh a, [$d0]                                     ; $79e4: $f0 $d0
	ret c                                            ; $79e6: $d8

	ret z                                            ; $79e7: $c8

	ld h, d                                          ; $79e8: $62
	ret nz                                           ; $79e9: $c0

	ld a, c                                          ; $79ea: $79
	add h                                            ; $79eb: $84
	halt                                             ; $79ec: $76
	cp h                                             ; $79ed: $bc
	ld a, e                                          ; $79ee: $7b
	or e                                             ; $79ef: $b3
	ld a, d                                          ; $79f0: $7a
	jp nz, $be7e                                     ; $79f1: $c2 $7e $be

	sub [hl]                                         ; $79f4: $96
	and e                                            ; $79f5: $a3
	ld b, a                                          ; $79f6: $47
	adc a                                            ; $79f7: $8f
	rra                                              ; $79f8: $1f
	rra                                              ; $79f9: $1f
	ccf                                              ; $79fa: $3f
	jr c, jr_05c_7a20                                ; $79fb: $38 $23

	ld e, a                                          ; $79fd: $5f
	ld a, d                                          ; $79fe: $7a
	ret nz                                           ; $79ff: $c0

jr_05c_7a00:
	db $dd                                           ; $7a00: $dd
	rst $38                                          ; $7a01: $ff
	sbc h                                            ; $7a02: $9c

Jump_05c_7a03:
	ei                                               ; $7a03: $fb
	rst FarCall                                          ; $7a04: $f7
	rst $38                                          ; $7a05: $ff
	halt                                             ; $7a06: $76
	inc d                                            ; $7a07: $14
	ld h, c                                          ; $7a08: $61
	cp $9a                                           ; $7a09: $fe $9a
	db $e4                                           ; $7a0b: $e4
	db $f4                                           ; $7a0c: $f4
	add sp, -$07                                     ; $7a0d: $e8 $f9
	di                                               ; $7a0f: $f3
	sbc $ff                                          ; $7a10: $de $ff
	rst SubAFromDE                                          ; $7a12: $df
	db $e3                                           ; $7a13: $e3
	rst SubAFromDE                                          ; $7a14: $df
	rst FarCall                                          ; $7a15: $f7
	ld h, h                                          ; $7a16: $64
	xor l                                            ; $7a17: $ad
	sbc e                                            ; $7a18: $9b
	ei                                               ; $7a19: $fb
	jp hl                                            ; $7a1a: $e9


	ldh [$c0], a                                     ; $7a1b: $e0 $c0
	ld [hl], b                                       ; $7a1d: $70
	halt                                             ; $7a1e: $76
	ld a, h                                          ; $7a1f: $7c

jr_05c_7a20:
	and a                                            ; $7a20: $a7
	sbc [hl]                                         ; $7a21: $9e
	add b                                            ; $7a22: $80

jr_05c_7a23:
	halt                                             ; $7a23: $76
	ld c, l                                          ; $7a24: $4d
	sbc e                                            ; $7a25: $9b
	pop bc                                           ; $7a26: $c1
	ldh a, [$7c]                                     ; $7a27: $f0 $7c
	jr jr_05c_7a9b                                   ; $7a29: $18 $70

	add hl, sp                                       ; $7a2b: $39
	ld a, l                                          ; $7a2c: $7d
	ld b, a                                          ; $7a2d: $47
	sbc [hl]                                         ; $7a2e: $9e
	rlca                                             ; $7a2f: $07
	ld l, c                                          ; $7a30: $69
	ret                                              ; $7a31: $c9


	add hl, bc                                       ; $7a32: $09
	ld a, b                                          ; $7a33: $78
	sbc l                                            ; $7a34: $9d
	rst AddAOntoHL                                          ; $7a35: $ef
	rst JumpTable                                          ; $7a36: $c7
	reti                                             ; $7a37: $d9


	rst $38                                          ; $7a38: $ff
	sbc l                                            ; $7a39: $9d
	add e                                            ; $7a3a: $83
	rst GetHLinHL                                          ; $7a3b: $cf
	db $dd                                           ; $7a3c: $dd
	rst $38                                          ; $7a3d: $ff
	sbc l                                            ; $7a3e: $9d

Call_05c_7a3f:
	db $fd                                           ; $7a3f: $fd
	ldh a, [c]                                       ; $7a40: $f2
	ld l, e                                          ; $7a41: $6b
	and l                                            ; $7a42: $a5
	ld a, h                                          ; $7a43: $7c
	jr nc, jr_05c_7a23                               ; $7a44: $30 $dd

	rst $38                                          ; $7a46: $ff
	sbc h                                            ; $7a47: $9c
	ld l, a                                          ; $7a48: $6f
	dec bc                                           ; $7a49: $0b
	dec b                                            ; $7a4a: $05
	call c, $9eff                                    ; $7a4b: $dc $ff $9e
	sbc a                                            ; $7a4e: $9f
	inc a                                            ; $7a4f: $3c
	jr nc, jr_05c_7ad1                               ; $7a50: $30 $7f

	inc sp                                           ; $7a52: $33
	ld a, [hl]                                       ; $7a53: $7e
	ret nz                                           ; $7a54: $c0

	sbc [hl]                                         ; $7a55: $9e
	ld sp, hl                                        ; $7a56: $f9
	ld a, d                                          ; $7a57: $7a
	cp [hl]                                          ; $7a58: $be
	halt                                             ; $7a59: $76
	xor l                                            ; $7a5a: $ad
	halt                                             ; $7a5b: $76
	cp [hl]                                          ; $7a5c: $be
	ld a, e                                          ; $7a5d: $7b
	inc sp                                           ; $7a5e: $33
	ld [hl], d                                       ; $7a5f: $72
	cp [hl]                                          ; $7a60: $be
	ld a, d                                          ; $7a61: $7a
	jp nz, $be72                                     ; $7a62: $c2 $72 $be

	ld a, d                                          ; $7a65: $7a
	jr c, jr_05c_7a00                                ; $7a66: $38 $98

	inc e                                            ; $7a68: $1c
	jr jr_05c_7a79                                   ; $7a69: $18 $0e

	rrca                                             ; $7a6b: $0f
	rlca                                             ; $7a6c: $07
	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	ld a, d                                          ; $7a6f: $7a
	ld [$c17f], a                                    ; $7a70: $ea $7f $c1
	sbc e                                            ; $7a73: $9b
	nop                                              ; $7a74: $00
	ld hl, sp-$10                                    ; $7a75: $f8 $f0
	pop hl                                           ; $7a77: $e1
	ld a, b                                          ; $7a78: $78

jr_05c_7a79:
	ld [hl], d                                       ; $7a79: $72
	sbc e                                            ; $7a7a: $9b
	db $fd                                           ; $7a7b: $fd
	push af                                          ; $7a7c: $f5
	rrca                                             ; $7a7d: $0f
	rra                                              ; $7a7e: $1f
	ld a, e                                          ; $7a7f: $7b
	and e                                            ; $7a80: $a3
	ld a, [hl]                                       ; $7a81: $7e
	push hl                                          ; $7a82: $e5
	sbc l                                            ; $7a83: $9d
	nop                                              ; $7a84: $00
	ld b, b                                          ; $7a85: $40
	call c, $9dc0                                    ; $7a86: $dc $c0 $9d
	add b                                            ; $7a89: $80
	adc b                                            ; $7a8a: $88
	ld h, [hl]                                       ; $7a8b: $66
	ld e, [hl]                                       ; $7a8c: $5e
	sbc [hl]                                         ; $7a8d: $9e
	inc de                                           ; $7a8e: $13
	ld l, b                                          ; $7a8f: $68
	daa                                              ; $7a90: $27
	ld h, [hl]                                       ; $7a91: $66
	ld e, a                                          ; $7a92: $5f
	sub a                                            ; $7a93: $97
	ret nz                                           ; $7a94: $c0

	pop hl                                           ; $7a95: $e1
	pop hl                                           ; $7a96: $e1
	pop af                                           ; $7a97: $f1
	pop af                                           ; $7a98: $f1
	ld [hl], c                                       ; $7a99: $71
	ld a, e                                          ; $7a9a: $7b

jr_05c_7a9b:
	ld a, e                                          ; $7a9b: $7b
	cp $71                                           ; $7a9c: $fe $71
	add l                                            ; $7a9e: $85
	sbc $c8                                          ; $7a9f: $de $c8
	call c, Call_05c_5d88                            ; $7aa1: $dc $88 $5d
	add b                                            ; $7aa4: $80
	ld l, [hl]                                       ; $7aa5: $6e
	cp [hl]                                          ; $7aa6: $be
	ld a, d                                          ; $7aa7: $7a
	jp nz, $be72                                     ; $7aa8: $c2 $72 $be

	ld a, [hl]                                       ; $7aab: $7e
	add [hl]                                         ; $7aac: $86
	ld a, [hl]                                       ; $7aad: $7e
	ret nz                                           ; $7aae: $c0

	sbc [hl]                                         ; $7aaf: $9e
	sbc a                                            ; $7ab0: $9f
	ld a, d                                          ; $7ab1: $7a
	cp [hl]                                          ; $7ab2: $be
	halt                                             ; $7ab3: $76
	call $8300                                       ; $7ab4: $cd $00 $83
	sbc $ff                                          ; $7ab7: $de $ff
	sub e                                            ; $7ab9: $93
	and b                                            ; $7aba: $a0
	pop de                                           ; $7abb: $d1
	rst SubAFromHL                                          ; $7abc: $d7
	call z, $c2c6                                    ; $7abd: $cc $c6 $c2
	add $ee                                          ; $7ac0: $c6 $ee
	ret nz                                           ; $7ac2: $c0

	and b                                            ; $7ac3: $a0
	adc b                                            ; $7ac4: $88
	add e                                            ; $7ac5: $83
	db $dd                                           ; $7ac6: $dd
	add c                                            ; $7ac7: $81
	sbc [hl]                                         ; $7ac8: $9e
	ld [hl], b                                       ; $7ac9: $70
	ld a, c                                          ; $7aca: $79
	ld h, $7f                                        ; $7acb: $26 $7f
	ld l, h                                          ; $7acd: $6c
	rst SubAFromDE                                          ; $7ace: $df
	pop hl                                           ; $7acf: $e1
	sbc [hl]                                         ; $7ad0: $9e

jr_05c_7ad1:
	rrca                                             ; $7ad1: $0f
	ld a, e                                          ; $7ad2: $7b
	cp [hl]                                          ; $7ad3: $be
	sbc e                                            ; $7ad4: $9b
	cp a                                             ; $7ad5: $bf
	ccf                                              ; $7ad6: $3f
	rra                                              ; $7ad7: $1f
	rra                                              ; $7ad8: $1f
	ld b, $c6                                        ; $7ad9: $06 $c6
	sbc l                                            ; $7adb: $9d
	db $db                                           ; $7adc: $db
	rst SubAFromDE                                          ; $7add: $df
	sbc $cf                                          ; $7ade: $de $cf
	sbc d                                            ; $7ae0: $9a
	rst JumpTable                                          ; $7ae1: $c7
	db $e3                                           ; $7ae2: $e3
	rst FarCall                                          ; $7ae3: $f7
	rst SubAFromBC                                          ; $7ae4: $e7
	db $e3                                           ; $7ae5: $e3
	sbc $f3                                          ; $7ae6: $de $f3
	ld a, c                                          ; $7ae8: $79
	and [hl]                                         ; $7ae9: $a6
	sbc d                                            ; $7aea: $9a
	db $fd                                           ; $7aeb: $fd
	ld hl, sp-$0c                                    ; $7aec: $f8 $f4
	ldh a, [c]                                       ; $7aee: $f2
	pop af                                           ; $7aef: $f1
	call c, Call_05c_75f0                            ; $7af0: $dc $f0 $75
	ld l, d                                          ; $7af3: $6a
	rst SubAFromDE                                          ; $7af4: $df
	rst $38                                          ; $7af5: $ff
	adc a                                            ; $7af6: $8f
	dec bc                                           ; $7af7: $0b
	sbc a                                            ; $7af8: $9f
	ld [hl], e                                       ; $7af9: $73

Call_05c_7afa:
	rst JumpTable                                          ; $7afa: $c7
	add a                                            ; $7afb: $87
	and a                                            ; $7afc: $a7
	sub a                                            ; $7afd: $97
	xor a                                            ; $7afe: $af
	rlca                                             ; $7aff: $07
	inc bc                                           ; $7b00: $03
	rlca                                             ; $7b01: $07
	daa                                              ; $7b02: $27
	ld l, a                                          ; $7b03: $6f
	ld e, a                                          ; $7b04: $5f
	ld l, a                                          ; $7b05: $6f
	ld e, a                                          ; $7b06: $5f
	pop de                                           ; $7b07: $d1
	rst $38                                          ; $7b08: $ff
	ld a, c                                          ; $7b09: $79
	db $dd                                           ; $7b0a: $dd
	call c, $d9fe                                    ; $7b0b: $dc $fe $d9
	rst $38                                          ; $7b0e: $ff
	sbc l                                            ; $7b0f: $9d
	ld e, l                                          ; $7b10: $5d
	ld a, $6f                                        ; $7b11: $3e $6f
	cp $9d                                           ; $7b13: $fe $9d
	and b                                            ; $7b15: $a0
	ret nz                                           ; $7b16: $c0

	ld l, a                                          ; $7b17: $6f
	cp $f1                                           ; $7b18: $fe $f1
	sub a                                            ; $7b1a: $97
	rlca                                             ; $7b1b: $07
	ld b, l                                          ; $7b1c: $45
	daa                                              ; $7b1d: $27
	rlca                                             ; $7b1e: $07
	rla                                              ; $7b1f: $17
	rra                                              ; $7b20: $1f
	rla                                              ; $7b21: $17
	ld d, $fe                                        ; $7b22: $16 $fe
	db $dd                                           ; $7b24: $dd
	ld bc, $039b                                     ; $7b25: $01 $9b $03
	add [hl]                                         ; $7b28: $86
	add e                                            ; $7b29: $83
	add c                                            ; $7b2a: $81
	call c, Call_05c_6001                            ; $7b2b: $dc $01 $60
	ld b, b                                          ; $7b2e: $40
	sbc [hl]                                         ; $7b2f: $9e
	ldh [rPCM12], a                                  ; $7b30: $e0 $76
	reti                                             ; $7b32: $d9


	rst SubAFromDE                                          ; $7b33: $df
	ldh [rOCPS], a                                   ; $7b34: $e0 $6a
	ld [$3f9d], sp                                   ; $7b36: $08 $9d $3f
	ld a, a                                          ; $7b39: $7f
	db $dd                                           ; $7b3a: $dd
	ccf                                              ; $7b3b: $3f
	sbc $1f                                          ; $7b3c: $de $1f
	ld a, e                                          ; $7b3e: $7b
	db $ed                                           ; $7b3f: $ed
	ld a, c                                          ; $7b40: $79
	add a                                            ; $7b41: $87
	rst SubAFromDE                                          ; $7b42: $df
	ldh a, [$97]                                     ; $7b43: $f0 $97
	adc b                                            ; $7b45: $88
	sbc b                                            ; $7b46: $98
	jr jr_05c_7b81                                   ; $7b47: $18 $38

	jr nc, jr_05c_7b7b                               ; $7b49: $30 $30

	ld h, b                                          ; $7b4b: $60
	ld h, b                                          ; $7b4c: $60
	ld sp, hl                                        ; $7b4d: $f9
	sbc l                                            ; $7b4e: $9d
	cp d                                             ; $7b4f: $ba
	ld a, h                                          ; $7b50: $7c
	ld l, a                                          ; $7b51: $6f
	cp $9d                                           ; $7b52: $fe $9d
	dec b                                            ; $7b54: $05
	inc bc                                           ; $7b55: $03
	ld l, a                                          ; $7b56: $6f
	cp $df                                           ; $7b57: $fe $df
	ccf                                              ; $7b59: $3f
	db $db                                           ; $7b5a: $db
	ld a, a                                          ; $7b5b: $7f
	call nz, $9cff                                   ; $7b5c: $c4 $ff $9c
	rst GetHLinHL                                          ; $7b5f: $cf
	and a                                            ; $7b60: $a7
	or a                                             ; $7b61: $b7
	db $db                                           ; $7b62: $db
	rst $38                                          ; $7b63: $ff
	ld a, a                                          ; $7b64: $7f
	inc bc                                           ; $7b65: $03
	adc h                                            ; $7b66: $8c
	cp [hl]                                          ; $7b67: $be
	call c, $ebdd                                    ; $7b68: $dc $dd $eb
	di                                               ; $7b6b: $f3
	ld a, [$fff8]                                    ; $7b6c: $fa $f8 $ff
	pop bc                                           ; $7b6f: $c1
	db $e3                                           ; $7b70: $e3
	ldh [c], a                                       ; $7b71: $e2
	db $f4                                           ; $7b72: $f4
	db $fc                                           ; $7b73: $fc
	db $fd                                           ; $7b74: $fd
	rst $38                                          ; $7b75: $ff
	rst $38                                          ; $7b76: $ff
	ld h, e                                          ; $7b77: $63
	ld h, a                                          ; $7b78: $67
	ld b, a                                          ; $7b79: $47
	ld [hl], b                                       ; $7b7a: $70

jr_05c_7b7b:
	ld c, b                                          ; $7b7b: $48
	rst SubAFromDE                                          ; $7b7c: $df
	sbc a                                            ; $7b7d: $9f
	sbc [hl]                                         ; $7b7e: $9e
	cp a                                             ; $7b7f: $bf
	ld [bc], a                                       ; $7b80: $02

jr_05c_7b81:
	add h                                            ; $7b81: $84
	call $9cff                                       ; $7b82: $cd $ff $9c
	ldh a, [$f9]                                     ; $7b85: $f0 $f9
	ld sp, hl                                        ; $7b87: $f9
	ld a, e                                          ; $7b88: $7b
	cp d                                             ; $7b89: $ba
	ld [hl], b                                       ; $7b8a: $70
	jp nz, $eb72                                     ; $7b8b: $c2 $72 $eb

	ld a, a                                          ; $7b8e: $7f
	or h                                             ; $7b8f: $b4
	rrca                                             ; $7b90: $0f
	ld [hl], h                                       ; $7b91: $74
	reti                                             ; $7b92: $d9


	cp $02                                           ; $7b93: $fe $02
	ret nz                                           ; $7b95: $c0

jr_05c_7b96:
	ld a, [$1e97]                                    ; $7b96: $fa $97 $1e
	ld a, $7e                                        ; $7b99: $3e $7e
	ld e, [hl]                                       ; $7b9b: $5e
	ld e, h                                          ; $7b9c: $5c
	ld a, h                                          ; $7b9d: $7c
	inc a                                            ; $7b9e: $3c
	inc a                                            ; $7b9f: $3c
	db $dd                                           ; $7ba0: $dd
	inc bc                                           ; $7ba1: $03
	db $dd                                           ; $7ba2: $dd
	rlca                                             ; $7ba3: $07
	sbc $03                                          ; $7ba4: $de $03
	sbc $06                                          ; $7ba6: $de $06
	rst SubAFromDE                                          ; $7ba8: $df
	inc c                                            ; $7ba9: $0c
	sbc $fe                                          ; $7baa: $de $fe
	sbc $fc                                          ; $7bac: $de $fc
	rst SubAFromDE                                          ; $7bae: $df
	ld hl, sp-$62                                    ; $7baf: $f8 $9e
	ld h, b                                          ; $7bb1: $60
	sbc $30                                          ; $7bb2: $de $30
	rst SubAFromDE                                          ; $7bb4: $df
	jr jr_05c_7b96                                   ; $7bb5: $18 $df

	inc c                                            ; $7bb7: $0c
	halt                                             ; $7bb8: $76
	call z, $0fdf                                    ; $7bb9: $cc $df $0f
	rst SubAFromDE                                          ; $7bbc: $df
	rlca                                             ; $7bbd: $07
	sbc $1f                                          ; $7bbe: $de $1f
	rst SubAFromDE                                          ; $7bc0: $df
	ld c, $de                                        ; $7bc1: $0e $de
	inc c                                            ; $7bc3: $0c
	halt                                             ; $7bc4: $76
	cpl                                              ; $7bc5: $2f
	db $dd                                           ; $7bc6: $dd
	ld hl, sp+$7d                                    ; $7bc7: $f8 $7d
	ld d, l                                          ; $7bc9: $55
	di                                               ; $7bca: $f3
	ld b, [hl]                                       ; $7bcb: $46
	ret nz                                           ; $7bcc: $c0

	reti                                             ; $7bcd: $d9


	ld a, a                                          ; $7bce: $7f
	ret                                              ; $7bcf: $c9


	rst $38                                          ; $7bd0: $ff
	sbc h                                            ; $7bd1: $9c
	or a                                             ; $7bd2: $b7
	and a                                            ; $7bd3: $a7
	add a                                            ; $7bd4: $87
	ld [hl], b                                       ; $7bd5: $70
	sbc [hl]                                         ; $7bd6: $9e
	sbc [hl]                                         ; $7bd7: $9e
	rst GetHLinHL                                          ; $7bd8: $cf
	ld [hl], h                                       ; $7bd9: $74
	ld a, [hl+]                                      ; $7bda: $2a
	inc bc                                           ; $7bdb: $03
	rst $38                                          ; $7bdc: $ff
	rst GetHLinHL                                          ; $7bdd: $cf
	rst $38                                          ; $7bde: $ff
	inc de                                           ; $7bdf: $13

Jump_05c_7be0:
	nop                                              ; $7be0: $00
	rst SubAFromDE                                          ; $7be1: $df
	ld b, h                                          ; $7be2: $44
	sbc c                                            ; $7be3: $99
	ld [hl+], a                                      ; $7be4: $22
	inc hl                                           ; $7be5: $23
	inc sp                                           ; $7be6: $33
	inc sp                                           ; $7be7: $33
	ld [hl-], a                                      ; $7be8: $32
	ld [hl+], a                                      ; $7be9: $22
	db $dd                                           ; $7bea: $dd
	ld b, h                                          ; $7beb: $44

jr_05c_7bec:
	inc bc                                           ; $7bec: $03
	or $03                                           ; $7bed: $f6 $03
	or $07                                           ; $7bef: $f6 $07
	or $0c                                           ; $7bf1: $f6 $0c
	adc d                                            ; $7bf3: $8a
	ld a, [$0a9e]                                    ; $7bf4: $fa $9e $0a
	db $f4                                           ; $7bf7: $f4
	sbc h                                            ; $7bf8: $9c
	inc c                                            ; $7bf9: $0c
	ld [de], a                                       ; $7bfa: $12
	inc hl                                           ; $7bfb: $23
	db $fc                                           ; $7bfc: $fc
	sbc h                                            ; $7bfd: $9c
	inc bc                                           ; $7bfe: $03
	inc c                                            ; $7bff: $0c
	inc e                                            ; $7c00: $1c
	db $fc                                           ; $7c01: $fc
	sbc l                                            ; $7c02: $9d
	add b                                            ; $7c03: $80
	ld h, b                                          ; $7c04: $60
	ld sp, hl                                        ; $7c05: $f9
	ld h, e                                          ; $7c06: $63
	rst FarCall                                          ; $7c07: $f7
	ldh [$b9], a                                     ; $7c08: $e0 $b9
	add b                                            ; $7c0a: $80
	inc bc                                           ; $7c0b: $03
	rlca                                             ; $7c0c: $07
	ld c, $1d                                        ; $7c0d: $0e $1d

Jump_05c_7c0f:
	dec sp                                           ; $7c0f: $3b
	ld [hl], a                                       ; $7c10: $77
	ld l, a                                          ; $7c11: $6f
	rst SubAFromDE                                          ; $7c12: $df
	inc bc                                           ; $7c13: $03
	inc b                                            ; $7c14: $04
	add hl, bc                                       ; $7c15: $09
	inc de                                           ; $7c16: $13
	ld h, $4c                                        ; $7c17: $26 $4c
	ld e, b                                          ; $7c19: $58
	or b                                             ; $7c1a: $b0
	call z, $c0b0                                    ; $7c1b: $cc $b0 $c0
	add c                                            ; $7c1e: $81
	inc bc                                           ; $7c1f: $03
	push hl                                          ; $7c20: $e5
	set 2, d                                         ; $7c21: $cb $d2
	inc sp                                           ; $7c23: $33
	ld c, a                                          ; $7c24: $4f
	cp a                                             ; $7c25: $bf
	ld a, [hl]                                       ; $7c26: $7e
	db $fc                                           ; $7c27: $fc
	jr jr_05c_7c5a                                   ; $7c28: $18 $30

	add b                                            ; $7c2a: $80
	ld hl, $3602                                     ; $7c2b: $21 $02 $36
	call nz, $9e8b                                   ; $7c2e: $c4 $8b $9e
	dec a                                            ; $7c31: $3d
	ld a, [hl-]                                      ; $7c32: $3a
	ld [hl], e                                       ; $7c33: $73
	db $fc                                           ; $7c34: $fc
	ret z                                            ; $7c35: $c8

	jr c, jr_05c_7ca8                                ; $7c36: $38 $70

	ld h, c                                          ; $7c38: $61
	jp $8ec7                                         ; $7c39: $c3 $c7 $8e


	ld b, [hl]                                       ; $7c3c: $46
	inc d                                            ; $7c3d: $14
	ldh [$b9], a                                     ; $7c3e: $e0 $b9
	reti                                             ; $7c40: $d9


	ld h, c                                          ; $7c41: $61
	sub $af                                          ; $7c42: $d6 $af
	add hl, sp                                       ; $7c44: $39
	dec bc                                           ; $7c45: $0b
	rrca                                             ; $7c46: $0f
	ld a, [hl]                                       ; $7c47: $7e
	and $9f                                          ; $7c48: $e6 $9f

jr_05c_7c4a:
	add b                                            ; $7c4a: $80
	add hl, sp                                       ; $7c4b: $39
	ld [hl], b                                       ; $7c4c: $70
	rrca                                             ; $7c4d: $0f
	ld a, [hl]                                       ; $7c4e: $7e
	add b                                            ; $7c4f: $80
	rst SubAFromBC                                          ; $7c50: $e7
	db $d3                                           ; $7c51: $d3
	ld l, $d9                                        ; $7c52: $2e $d9
	ld h, [hl]                                       ; $7c54: $66
	ldh a, [$80]                                     ; $7c55: $f0 $80
	ld a, a                                          ; $7c57: $7f
	rst $38                                          ; $7c58: $ff
	inc a                                            ; $7c59: $3c

jr_05c_7c5a:
	sbc e                                            ; $7c5a: $9b
	adc l                                            ; $7c5b: $8d
	call z, $28b0                                    ; $7c5c: $cc $b0 $28
	ld c, h                                          ; $7c5f: $4c
	add $b3                                          ; $7c60: $c6 $b3
	jp hl                                            ; $7c62: $e9


	ld l, h                                          ; $7c63: $6c
	or [hl]                                          ; $7c64: $b6
	ld [hl], b                                       ; $7c65: $70
	jr jr_05c_7bec                                   ; $7c66: $18 $84

	ldh a, [c]                                       ; $7c68: $f2
	ld a, c                                          ; $7c69: $79
	sbc h                                            ; $7c6a: $9c
	dec e                                            ; $7c6b: $1d
	add [hl]                                         ; $7c6c: $86
	jp nz, $dffb                                     ; $7c6d: $c2 $fb $df

	add b                                            ; $7c70: $80
	ld c, a                                          ; $7c71: $4f
	ld hl, sp-$20                                    ; $7c72: $f8 $e0
	or a                                             ; $7c74: $b7
	adc d                                            ; $7c75: $8a
	ld [de], a                                       ; $7c76: $12
	inc b                                            ; $7c77: $04
	inc de                                           ; $7c78: $13
	nop                                              ; $7c79: $00
	inc d                                            ; $7c7a: $14
	inc h                                            ; $7c7b: $24
	ld c, b                                          ; $7c7c: $48

Call_05c_7c7d:
	add b                                            ; $7c7d: $80
	inc c                                            ; $7c7e: $0c
	ld [$270c], sp                                   ; $7c7f: $08 $0c $27
	inc hl                                           ; $7c82: $23
	inc de                                           ; $7c83: $13
	scf                                              ; $7c84: $37
	ld a, a                                          ; $7c85: $7f
	jr nz, @+$12                                     ; $7c86: $20 $10

	jr nz, jr_05c_7c4a                               ; $7c88: $20 $c0

	ld b, b                                          ; $7c8a: $40
	cp $9a                                           ; $7c8b: $fe $9a
	rra                                              ; $7c8d: $1f
	rrca                                             ; $7c8e: $0f
	rra                                              ; $7c8f: $1f
	ccf                                              ; $7c90: $3f
	cp a                                             ; $7c91: $bf
	sbc $ff                                          ; $7c92: $de $ff
	add b                                            ; $7c94: $80
	and b                                            ; $7c95: $a0
	db $10                                           ; $7c96: $10
	ld [$202a], sp                                   ; $7c97: $08 $2a $20
	inc l                                            ; $7c9a: $2c
	jr jr_05c_7ca9                                   ; $7c9b: $18 $0c

	ld b, b                                          ; $7c9d: $40
	rst AddAOntoHL                                          ; $7c9e: $ef
	rst SubAFromBC                                          ; $7c9f: $e7
	pop de                                           ; $7ca0: $d1
	jp $e7c3                                         ; $7ca1: $c3 $c3 $e7


	di                                               ; $7ca4: $f3
	nop                                              ; $7ca5: $00
	add b                                            ; $7ca6: $80
	ld b, b                                          ; $7ca7: $40

jr_05c_7ca8:
	ld c, h                                          ; $7ca8: $4c

jr_05c_7ca9:
	sub d                                            ; $7ca9: $92
	ld l, h                                          ; $7caa: $6c
	db $10                                           ; $7cab: $10
	ld l, d                                          ; $7cac: $6a
	add b                                            ; $7cad: $80
	nop                                              ; $7cae: $00
	add b                                            ; $7caf: $80
	or b                                             ; $7cb0: $b0
	ld h, c                                          ; $7cb1: $61
	add e                                            ; $7cb2: $83
	rst AddAOntoHL                                          ; $7cb3: $ef
	sbc [hl]                                         ; $7cb4: $9e
	sub l                                            ; $7cb5: $95
	ld h, [hl]                                       ; $7cb6: $66
	adc [hl]                                         ; $7cb7: $8e
	ld a, [$0196]                                    ; $7cb8: $fa $96 $01
	ld [bc], a                                       ; $7cbb: $02
	ld bc, $0001                                     ; $7cbc: $01 $01 $00
	inc bc                                           ; $7cbf: $03
	dec b                                            ; $7cc0: $05
	ld b, h                                          ; $7cc1: $44
	call c, Call_05c_7ef9                            ; $7cc2: $dc $f9 $7e
	add l                                            ; $7cc5: $85
	sbc c                                            ; $7cc6: $99
	ld d, b                                          ; $7cc7: $50
	and $6e                                          ; $7cc8: $e6 $6e
	ld sp, hl                                        ; $7cca: $f9
	cp $7b                                           ; $7ccb: $fe $7b
	ld hl, sp-$68                                    ; $7ccd: $f8 $98
	inc b                                            ; $7ccf: $04
	dec bc                                           ; $7cd0: $0b
	dec c                                            ; $7cd1: $0d
	ld l, l                                          ; $7cd2: $6d
	scf                                              ; $7cd3: $37
	cp a                                             ; $7cd4: $bf
	rst $38                                          ; $7cd5: $ff
	ld a, e                                          ; $7cd6: $7b
	push de                                          ; $7cd7: $d5
	sbc $01                                          ; $7cd8: $de $01
	rst SubAFromDE                                          ; $7cda: $df
	inc bc                                           ; $7cdb: $03
	add b                                            ; $7cdc: $80
	rst AddAOntoHL                                          ; $7cdd: $ef
	or e                                             ; $7cde: $b3
	ld b, d                                          ; $7cdf: $42
	ld b, l                                          ; $7ce0: $45
	adc d                                            ; $7ce1: $8a
	adc h                                            ; $7ce2: $8c
	sub l                                            ; $7ce3: $95
	ld a, [de]                                       ; $7ce4: $1a
	or b                                             ; $7ce5: $b0
	db $ec                                           ; $7ce6: $ec
	db $fd                                           ; $7ce7: $fd
	ld a, [$f8f4]                                    ; $7ce8: $fa $f4 $f8
	ld hl, sp-$0f                                    ; $7ceb: $f8 $f1
	and [hl]                                         ; $7ced: $a6
	ld c, b                                          ; $7cee: $48
	sbc b                                            ; $7cef: $98
	ld sp, $a763                                     ; $7cf0: $31 $63 $a7
	ld e, [hl]                                       ; $7cf3: $5e
	ret c                                            ; $7cf4: $d8

	ld b, c                                          ; $7cf5: $41
	add e                                            ; $7cf6: $83
	inc bc                                           ; $7cf7: $03
	ld b, $06                                        ; $7cf8: $06 $06
	ld c, h                                          ; $7cfa: $4c
	adc c                                            ; $7cfb: $89
	add b                                            ; $7cfc: $80
	scf                                              ; $7cfd: $37
	ld h, l                                          ; $7cfe: $65

Jump_05c_7cff:
	push hl                                          ; $7cff: $e5
	rst JumpTable                                          ; $7d00: $c7
	res 1, [hl]                                      ; $7d01: $cb $8e
	dec d                                            ; $7d03: $15
	add hl, sp                                       ; $7d04: $39
	ld h, d                                          ; $7d05: $62
	sbc [hl]                                         ; $7d06: $9e
	ld e, $3c                                        ; $7d07: $1e $3c
	inc a                                            ; $7d09: $3c
	ld a, c                                          ; $7d0a: $79
	ei                                               ; $7d0b: $fb
	rst FarCall                                          ; $7d0c: $f7
	rst $38                                          ; $7d0d: $ff
	jp nc, $8b62                                     ; $7d0e: $d2 $62 $8b

	jp c, Jump_05c_57ae                              ; $7d11: $da $ae $57

	or a                                             ; $7d14: $b7
	or $60                                           ; $7d15: $f6 $60
	ret nz                                           ; $7d17: $c0

	ret nz                                           ; $7d18: $c0

	adc c                                            ; $7d19: $89
	sbc c                                            ; $7d1a: $99
	cp c                                             ; $7d1b: $b9
	sub d                                            ; $7d1c: $92
	ld a, c                                          ; $7d1d: $79
	ld a, e                                          ; $7d1e: $7b
	db $ec                                           ; $7d1f: $ec
	ld [hl-], a                                      ; $7d20: $32
	halt                                             ; $7d21: $76
	ld h, $26                                        ; $7d22: $26 $26
	ld l, a                                          ; $7d24: $6f
	ld l, e                                          ; $7d25: $6b
	xor e                                            ; $7d26: $ab
	ld b, [hl]                                       ; $7d27: $46
	ld h, [hl]                                       ; $7d28: $66
	ld [hl+], a                                      ; $7d29: $22
	sbc $32                                          ; $7d2a: $de $32
	add b                                            ; $7d2c: $80
	ld [hl], $76                                     ; $7d2d: $36 $76
	di                                               ; $7d2f: $f3
	ld e, c                                          ; $7d30: $59
	dec h                                            ; $7d31: $25
	add [hl]                                         ; $7d32: $86
	ld d, e                                          ; $7d33: $53
	ld c, d                                          ; $7d34: $4a
	ld e, c                                          ; $7d35: $59
	ld a, e                                          ; $7d36: $7b
	ld b, c                                          ; $7d37: $41
	ld hl, $1000                                     ; $7d38: $21 $00 $10
	sbc d                                            ; $7d3b: $9a
	db $db                                           ; $7d3c: $db
	set 1, c                                         ; $7d3d: $cb $c9

jr_05c_7d3f:
	ret nz                                           ; $7d3f: $c0

	nop                                              ; $7d40: $00
	ret nz                                           ; $7d41: $c0

	and b                                            ; $7d42: $a0
	ld h, b                                          ; $7d43: $60
	ldh [$a0], a                                     ; $7d44: $e0 $a0
	ldh [rLCDC], a                                   ; $7d46: $e0 $40
	ret nz                                           ; $7d48: $c0

	ret nz                                           ; $7d49: $c0

	ldh [$e0], a                                     ; $7d4a: $e0 $e0
	rst SubAFromDE                                          ; $7d4c: $df
	ld h, b                                          ; $7d4d: $60
	sbc [hl]                                         ; $7d4e: $9e
	jr nz, jr_05c_7d3f                               ; $7d4f: $20 $ee

	sbc d                                            ; $7d51: $9a
	ld [$1f0b], sp                                   ; $7d52: $08 $0b $1f
	rla                                              ; $7d55: $17
	inc bc                                           ; $7d56: $03
	ld hl, sp-$21                                    ; $7d57: $f8 $df
	ld [hl], b                                       ; $7d59: $70
	sbc d                                            ; $7d5a: $9a
	ld hl, sp+$78                                    ; $7d5b: $f8 $78
	and b                                            ; $7d5d: $a0
	ldh a, [c]                                       ; $7d5e: $f2
	bit 2, a                                         ; $7d5f: $cb $57
	ldh [$9b], a                                     ; $7d61: $e0 $9b
	inc e                                            ; $7d63: $1c
	ld a, h                                          ; $7d64: $7c
	ld a, h                                          ; $7d65: $7c
	ret nc                                           ; $7d66: $d0

	ld a, [$c043]                                    ; $7d67: $fa $43 $c0
	sbc e                                            ; $7d6a: $9b
	ld b, b                                          ; $7d6b: $40
	db $10                                           ; $7d6c: $10
	sub b                                            ; $7d6d: $90
	ldh [rPCM12], a                                  ; $7d6e: $e0 $76
	rst GetHLinHL                                          ; $7d70: $cf
	sbc l                                            ; $7d71: $9d
	sbc a                                            ; $7d72: $9f
	adc a                                            ; $7d73: $8f
	ld l, [hl]                                       ; $7d74: $6e
	rst GetHLinHL                                          ; $7d75: $cf
	ld sp, hl                                        ; $7d76: $f9
	reti                                             ; $7d77: $d9


	rst $38                                          ; $7d78: $ff
	ld a, [hl]                                       ; $7d79: $7e
	ldh a, [c]                                       ; $7d7a: $f2
	ei                                               ; $7d7b: $fb
	sbc [hl]                                         ; $7d7c: $9e
	cp $da                                           ; $7d7d: $fe $da
	rst $38                                          ; $7d7f: $ff
	adc [hl]                                         ; $7d80: $8e
	add c                                            ; $7d81: $81
	and b                                            ; $7d82: $a0
	jr nz, @+$42                                     ; $7d83: $20 $40

	ldh [$80], a                                     ; $7d85: $e0 $80
	ld bc, $7e01                                     ; $7d87: $01 $01 $7e
	ld e, a                                          ; $7d8a: $5f
	rst SubAFromDE                                          ; $7d8b: $df
	cp a                                             ; $7d8c: $bf
	rra                                              ; $7d8d: $1f
	ld a, a                                          ; $7d8e: $7f
	cp $fe                                           ; $7d8f: $fe $fe
	jr nc, jr_05c_7e0d                               ; $7d91: $30 $7a

	ld l, $8f                                        ; $7d93: $2e $8f
	add hl, bc                                       ; $7d95: $09
	adc e                                            ; $7d96: $8b
	rlca                                             ; $7d97: $07
	adc e                                            ; $7d98: $8b
	dec c                                            ; $7d99: $0d
	ccf                                              ; $7d9a: $3f
	rst $38                                          ; $7d9b: $ff
	rst $38                                          ; $7d9c: $ff
	or $74                                           ; $7d9d: $f6 $74
	ld [hl], b                                       ; $7d9f: $70
	ld [hl], h                                       ; $7da0: $74
	ld l, $cf                                        ; $7da1: $2e $cf
	ccf                                              ; $7da3: $3f
	rra                                              ; $7da4: $1f
	ld a, e                                          ; $7da5: $7b
	cp c                                             ; $7da6: $b9
	sbc [hl]                                         ; $7da7: $9e
	cp $7b                                           ; $7da8: $fe $7b
	ld c, b                                          ; $7daa: $48
	ld a, a                                          ; $7dab: $7f
	ld c, h                                          ; $7dac: $4c
	ld a, d                                          ; $7dad: $7a
	db $db                                           ; $7dae: $db
	ld a, l                                          ; $7daf: $7d
	ld [$ffdc], a                                    ; $7db0: $ea $dc $ff
	sbc [hl]                                         ; $7db3: $9e
	ccf                                              ; $7db4: $3f
	ld a, [$c09a]                                    ; $7db5: $fa $9a $c0
	rst AddAOntoHL                                          ; $7db8: $ef
	rst SubAFromBC                                          ; $7db9: $e7
	or $fe                                           ; $7dba: $f6 $fe
	db $dd                                           ; $7dbc: $dd
	db $fc                                           ; $7dbd: $fc
	db $dd                                           ; $7dbe: $dd
	inc bc                                           ; $7dbf: $03
	db $dd                                           ; $7dc0: $dd
	rlca                                             ; $7dc1: $07
	add a                                            ; $7dc2: $87
	inc l                                            ; $7dc3: $2c
	jr c, jr_05c_7e17                                ; $7dc4: $38 $51

	ld [hl], a                                       ; $7dc6: $77
	ld h, c                                          ; $7dc7: $61
	and d                                            ; $7dc8: $a2
	call nz, $f3cc                                   ; $7dc9: $c4 $cc $f3
	rst SubAFromBC                                          ; $7dcc: $e7
	rst AddAOntoHL                                          ; $7dcd: $ef
	rst GetHLinHL                                          ; $7dce: $cf
	rst SubAFromDE                                          ; $7dcf: $df
	rst SubAFromDE                                          ; $7dd0: $df
	cp a                                             ; $7dd1: $bf

jr_05c_7dd2:
	cp a                                             ; $7dd2: $bf
	ld hl, $9946                                     ; $7dd3: $21 $46 $99
	ldh [c], a                                       ; $7dd6: $e2
	rlca                                             ; $7dd7: $07
	dec l                                            ; $7dd8: $2d
	ld [hl], c                                       ; $7dd9: $71
	ld sp, hl                                        ; $7dda: $f9
	call c, $80ff                                    ; $7ddb: $dc $ff $80
	cp $de                                           ; $7dde: $fe $de
	adc [hl]                                         ; $7de0: $8e
	jp nz, $3d8c                                     ; $7de1: $c2 $8c $3d

	ei                                               ; $7de4: $fb
	db $ec                                           ; $7de5: $ec
	sbc a                                            ; $7de6: $9f
	rst $38                                          ; $7de7: $ff
	add b                                            ; $7de8: $80
	rst $38                                          ; $7de9: $ff
	rst $38                                          ; $7dea: $ff
	rst FarCall                                          ; $7deb: $f7
	adc $1f                                          ; $7dec: $ce $1f
	ld a, a                                          ; $7dee: $7f
	db $10                                           ; $7def: $10
	ld a, a                                          ; $7df0: $7f
	ld [hl], d                                       ; $7df1: $72
	and $e6                                          ; $7df2: $e6 $e6
	adc $5e                                          ; $7df4: $ce $5e
	xor [hl]                                         ; $7df6: $ae
	cp $3d                                           ; $7df7: $fe $3d
	rst SubAFromDE                                          ; $7df9: $df
	cp a                                             ; $7dfa: $bf
	ccf                                              ; $7dfb: $3f
	ld a, e                                          ; $7dfc: $7b
	rst SubAFromDE                                          ; $7dfd: $df
	di                                               ; $7dfe: $f3

Call_05c_7dff:
Jump_05c_7dff:
	ld a, l                                          ; $7dff: $7d
	ld l, a                                          ; $7e00: $6f
	sbc b                                            ; $7e01: $98
	ld h, $36                                        ; $7e02: $26 $36
	halt                                             ; $7e04: $76
	ld a, [hl]                                       ; $7e05: $7e
	ld a, a                                          ; $7e06: $7f
	db $d3                                           ; $7e07: $d3
	rst $38                                          ; $7e08: $ff
	ld a, e                                          ; $7e09: $7b
	ld h, c                                          ; $7e0a: $61
	sub a                                            ; $7e0b: $97
	rst SubAFromDE                                          ; $7e0c: $df

jr_05c_7e0d:
	db $db                                           ; $7e0d: $db
	db $db                                           ; $7e0e: $db
	cp a                                             ; $7e0f: $bf
	cp [hl]                                          ; $7e10: $be
	inc de                                           ; $7e11: $13
	ld a, a                                          ; $7e12: $7f
	rst $38                                          ; $7e13: $ff
	sbc $ed                                          ; $7e14: $de $ed
	add a                                            ; $7e16: $87

jr_05c_7e17:
	call $d3d3                                       ; $7e17: $cd $d3 $d3
	ret                                              ; $7e1a: $c9


	ret                                              ; $7e1b: $c9


	db $db                                           ; $7e1c: $db
	db $db                                           ; $7e1d: $db
	ld e, e                                          ; $7e1e: $5b
	ld a, e                                          ; $7e1f: $7b
	ld a, a                                          ; $7e20: $7f
	ld a, a                                          ; $7e21: $7f
	ldh [$e0], a                                     ; $7e22: $e0 $e0
	and b                                            ; $7e24: $a0
	and b                                            ; $7e25: $a0
	ld h, b                                          ; $7e26: $60
	ld b, b                                          ; $7e27: $40
	ld b, e                                          ; $7e28: $43
	push bc                                          ; $7e29: $c5
	jr nz, jr_05c_7e4c                               ; $7e2a: $20 $20

	ld h, b                                          ; $7e2c: $60
	ld h, b                                          ; $7e2d: $60
	ldh [$de], a                                     ; $7e2e: $e0 $de
	ret nz                                           ; $7e30: $c0

	rst $38                                          ; $7e31: $ff
	sbc d                                            ; $7e32: $9a
	rlca                                             ; $7e33: $07
	adc l                                            ; $7e34: $8d
	add a                                            ; $7e35: $87
	sub a                                            ; $7e36: $97
	db $fc                                           ; $7e37: $fc
	ld h, d                                          ; $7e38: $62
	jr nz, jr_05c_7dd2                               ; $7e39: $20 $97

	inc sp                                           ; $7e3b: $33
	push af                                          ; $7e3c: $f5
	ccf                                              ; $7e3d: $3f
	ccf                                              ; $7e3e: $3f

jr_05c_7e3f:
	rst SubAFromDE                                          ; $7e3f: $df
	cp h                                             ; $7e40: $bc
	jr nc, jr_05c_7e3f                               ; $7e41: $30 $fc

	db $fc                                           ; $7e43: $fc
	add h                                            ; $7e44: $84
	ld b, e                                          ; $7e45: $43
	rst GetHLinHL                                          ; $7e46: $cf
	inc bc                                           ; $7e47: $03
	cp $ff                                           ; $7e48: $fe $ff
	db $ed                                           ; $7e4a: $ed
	db $e4                                           ; $7e4b: $e4

jr_05c_7e4c:
	ld hl, sp-$18                                    ; $7e4c: $f8 $e8
	ld hl, $0102                                     ; $7e4e: $21 $02 $01
	nop                                              ; $7e51: $00
	ld [bc], a                                       ; $7e52: $02
	inc bc                                           ; $7e53: $03
	rlca                                             ; $7e54: $07
	rla                                              ; $7e55: $17
	sbc $fc                                          ; $7e56: $de $fc
	sub b                                            ; $7e58: $90
	db $10                                           ; $7e59: $10
	jr nz, jr_05c_7e7c                               ; $7e5a: $20 $20

	inc de                                           ; $7e5c: $13
	dec h                                            ; $7e5d: $25
	ld [hl], l                                       ; $7e5e: $75
	rst $38                                          ; $7e5f: $ff
	ld [hl], a                                       ; $7e60: $77
	jp $fd7f                                         ; $7e61: $c3 $7f $fd


	ld a, e                                          ; $7e64: $7b
	inc de                                           ; $7e65: $13
	sbc c                                            ; $7e66: $99
	db $10                                           ; $7e67: $10
	ld [hl], b                                       ; $7e68: $70
	ld [hl], b                                       ; $7e69: $70
	ldh [$e0], a                                     ; $7e6a: $e0 $e0
	db $ec                                           ; $7e6c: $ec
	ld l, a                                          ; $7e6d: $6f
	ret nc                                           ; $7e6e: $d0

	or $d9                                           ; $7e6f: $f6 $d9
	rst $38                                          ; $7e71: $ff
	inc bc                                           ; $7e72: $03
	ldh a, [rWX]                                     ; $7e73: $f0 $4b
	ldh a, [$df]                                     ; $7e75: $f0 $df
	rra                                              ; $7e77: $1f
	add b                                            ; $7e78: $80
	rst SubAFromDE                                          ; $7e79: $df
	ld a, a                                          ; $7e7a: $7f
	rrca                                             ; $7e7b: $0f

jr_05c_7e7c:
	rra                                              ; $7e7c: $1f
	rst $38                                          ; $7e7d: $ff
	cp $e0                                           ; $7e7e: $fe $e0
	ldh [rAUD4LEN], a                                ; $7e80: $e0 $20
	add b                                            ; $7e82: $80
	ldh a, [$e0]                                     ; $7e83: $f0 $e0
	nop                                              ; $7e85: $00
	ld bc, $fcf0                                     ; $7e86: $01 $f0 $fc
	xor $ff                                          ; $7e89: $ee $ff
	rst $38                                          ; $7e8b: $ff
	ld sp, hl                                        ; $7e8c: $f9
	adc b                                            ; $7e8d: $88
	ret nz                                           ; $7e8e: $c0

	rrca                                             ; $7e8f: $0f
	inc bc                                           ; $7e90: $03
	ld de, $0000                                     ; $7e91: $11 $00 $00
	ld b, $77                                        ; $7e94: $06 $77
	ccf                                              ; $7e96: $3f
	rrca                                             ; $7e97: $0f
	ld a, d                                          ; $7e98: $7a
	call z, $e29a                                    ; $7e99: $cc $9a $e2
	sbc b                                            ; $7e9c: $98

jr_05c_7e9d:
	rst $38                                          ; $7e9d: $ff
	rst SubAFromDE                                          ; $7e9e: $df
	ldh a, [$7a]                                     ; $7e9f: $f0 $7a
	cp h                                             ; $7ea1: $bc
	add e                                            ; $7ea2: $83
	dec e                                            ; $7ea3: $1d
	ld h, a                                          ; $7ea4: $67
	nop                                              ; $7ea5: $00
	jr nz, jr_05c_7e9d                               ; $7ea6: $20 $f5

	push bc                                          ; $7ea8: $c5
	dec e                                            ; $7ea9: $1d
	ld l, $26                                        ; $7eaa: $2e $26
	adc $fc                                          ; $7eac: $ce $fc
	db $fc                                           ; $7eae: $fc
	rrca                                             ; $7eaf: $0f
	ccf                                              ; $7eb0: $3f
	rst SubAFromBC                                          ; $7eb1: $e7
	rst JumpTable                                          ; $7eb2: $c7
	rst JumpTable                                          ; $7eb3: $c7
	scf                                              ; $7eb4: $37
	rlca                                             ; $7eb5: $07
	rlca                                             ; $7eb6: $07
	inc e                                            ; $7eb7: $1c
	dec e                                            ; $7eb8: $1d
	dec l                                            ; $7eb9: $2d
	dec l                                            ; $7eba: $2d
	ld c, c                                          ; $7ebb: $49
	ld e, c                                          ; $7ebc: $59
	reti                                             ; $7ebd: $d9


	reti                                             ; $7ebe: $d9


	call c, $deff                                    ; $7ebf: $dc $ff $de
	rst AddAOntoHL                                          ; $7ec2: $ef
	sbc l                                            ; $7ec3: $9d
	or $f9                                           ; $7ec4: $f6 $f9
	sbc $fb                                          ; $7ec6: $de $fb
	add b                                            ; $7ec8: $80
	db $db                                           ; $7ec9: $db
	ld h, a                                          ; $7eca: $67
	ld a, a                                          ; $7ecb: $7f
	cp a                                             ; $7ecc: $bf
	adc a                                            ; $7ecd: $8f
	sbc h                                            ; $7ece: $9c
	xor h                                            ; $7ecf: $ac
	sbc h                                            ; $7ed0: $9c
	call nz, $e0c0                                   ; $7ed1: $c4 $c0 $e0
	ccf                                              ; $7ed4: $3f
	cp h                                             ; $7ed5: $bc
	cp b                                             ; $7ed6: $b8
	cp e                                             ; $7ed7: $bb
	adc e                                            ; $7ed8: $8b
	adc h                                            ; $7ed9: $8c
	add a                                            ; $7eda: $87
	rst JumpTable                                          ; $7edb: $c7
	rst JumpTable                                          ; $7edc: $c7
	call c, $2f79                                    ; $7edd: $dc $79 $2f
	rrca                                             ; $7ee0: $0f
	rlca                                             ; $7ee1: $07
	rlca                                             ; $7ee2: $07
	nop                                              ; $7ee3: $00
	sbc a                                            ; $7ee4: $9f
	rst AddAOntoHL                                          ; $7ee5: $ef
	add sp, -$1d                                     ; $7ee6: $e8 $e3
	sub a                                            ; $7ee8: $97
	inc e                                            ; $7ee9: $1c
	db $10                                           ; $7eea: $10
	ld de, $6621                                     ; $7eeb: $11 $21 $66
	sub h                                            ; $7eee: $94
	rst SubAFromHL                                          ; $7eef: $d7
	sbc h                                            ; $7ef0: $9c
	ld [hl], h                                       ; $7ef1: $74
	ld [hl], e                                       ; $7ef2: $73
	add h                                            ; $7ef3: $84
	inc bc                                           ; $7ef4: $03
	ld a, h                                          ; $7ef5: $7c
	ld [hl], a                                       ; $7ef6: $77
	ld c, e                                          ; $7ef7: $4b
	adc a                                            ; $7ef8: $8f

Call_05c_7ef9:
	ei                                               ; $7ef9: $fb
	ld sp, $fc10                                     ; $7efa: $31 $10 $fc
	add e                                            ; $7efd: $83
	cp b                                             ; $7efe: $b8

Jump_05c_7eff:
	call z, $795f                                    ; $7eff: $cc $5f $79
	ld a, c                                          ; $7f02: $79
	ld [hl], c                                       ; $7f03: $71
	di                                               ; $7f04: $f3
	ld [hl], l                                       ; $7f05: $75
	rst SubAFromHL                                          ; $7f06: $d7

Call_05c_7f07:
	sbc d                                            ; $7f07: $9a
	inc d                                            ; $7f08: $14
	jr nz, jr_05c_7f0b                               ; $7f09: $20 $00

jr_05c_7f0b:
	add b                                            ; $7f0b: $80
	ld a, a                                          ; $7f0c: $7f
	db $fd                                           ; $7f0d: $fd
	rst SubAFromDE                                          ; $7f0e: $df
	ld [hl], a                                       ; $7f0f: $77
	ld hl, sp-$6a                                    ; $7f10: $f8 $96
	nop                                              ; $7f12: $00
	add a                                            ; $7f13: $87
	add c                                            ; $7f14: $81
	inc bc                                           ; $7f15: $03
	dec b                                            ; $7f16: $05
	rlca                                             ; $7f17: $07
	dec bc                                           ; $7f18: $0b
	rra                                              ; $7f19: $1f
	ccf                                              ; $7f1a: $3f
	ld h, h                                          ; $7f1b: $64
	ld b, [hl]                                       ; $7f1c: $46
	add a                                            ; $7f1d: $87
	ld a, e                                          ; $7f1e: $7b
	db $fc                                           ; $7f1f: $fc
	ld sp, hl                                        ; $7f20: $f9
	db $fc                                           ; $7f21: $fc
	ld e, $8f                                        ; $7f22: $1e $8f
	pop bc                                           ; $7f24: $c1
	pop hl                                           ; $7f25: $e1
	nop                                              ; $7f26: $00
	inc bc                                           ; $7f27: $03
	ld b, $03                                        ; $7f28: $06 $03
	pop hl                                           ; $7f2a: $e1
	ld [hl], b                                       ; $7f2b: $70
	ld a, $1e                                        ; $7f2c: $3e $1e
	ld e, a                                          ; $7f2e: $5f
	cp a                                             ; $7f2f: $bf
	ld a, a                                          ; $7f30: $7f
	adc a                                            ; $7f31: $8f
	ld e, a                                          ; $7f32: $5f
	ld c, $fc                                        ; $7f33: $0e $fc
	cp $7b                                           ; $7f35: $fe $7b
	push de                                          ; $7f37: $d5
	sbc b                                            ; $7f38: $98
	db $10                                           ; $7f39: $10
	and b                                            ; $7f3a: $a0
	pop af                                           ; $7f3b: $f1
	inc bc                                           ; $7f3c: $03
	ld bc, $fd94                                     ; $7f3d: $01 $94 $fd
	ld [hl], l                                       ; $7f40: $75
	sub $7f                                          ; $7f41: $d6 $7f
	add c                                            ; $7f43: $81
	sbc [hl]                                         ; $7f44: $9e
	ld h, b                                          ; $7f45: $60
	ld a, d                                          ; $7f46: $7a
	cp [hl]                                          ; $7f47: $be
	ld a, b                                          ; $7f48: $78
	jp nz, Jump_05c_409b                             ; $7f49: $c2 $9b $40

	ld [hl], a                                       ; $7f4c: $77
	ld a, a                                          ; $7f4d: $7f
	ld e, a                                          ; $7f4e: $5f
	sbc $ff                                          ; $7f4f: $de $ff
	ld a, a                                          ; $7f51: $7f
	ldh [$9e], a                                     ; $7f52: $e0 $9e
	ld [$7ffc], sp                                   ; $7f54: $08 $fc $7f
	ldh [hDisp1_SCX], a                                     ; $7f57: $e0 $91
	ld a, [hl]                                       ; $7f59: $7e
	and $ae                                          ; $7f5a: $e6 $ae
	sub $86                                          ; $7f5c: $d6 $86
	ld c, e                                          ; $7f5e: $4b
	dec a                                            ; $7f5f: $3d
	ld a, e                                          ; $7f60: $7b
	nop                                              ; $7f61: $00
	db $10                                           ; $7f62: $10
	db $10                                           ; $7f63: $10
	jr nz, jr_05c_7f96                               ; $7f64: $20 $30

	or b                                             ; $7f66: $b0
	halt                                             ; $7f67: $76
	xor a                                            ; $7f68: $af

jr_05c_7f69:
	ld [bc], a                                       ; $7f69: $02
	ret nc                                           ; $7f6a: $d0

	inc de                                           ; $7f6b: $13
	ldh a, [hDisp1_LCDC]                                     ; $7f6c: $f0 $8f
	ld a, b                                          ; $7f6e: $78
	ld a, h                                          ; $7f6f: $7c
	ld c, $0f                                        ; $7f70: $0e $0f
	inc bc                                           ; $7f72: $03
	rla                                              ; $7f73: $17
	ccf                                              ; $7f74: $3f
	db $ec                                           ; $7f75: $ec
	add a                                            ; $7f76: $87
	add e                                            ; $7f77: $83
	pop af                                           ; $7f78: $f1
	ldh a, [$fc]                                     ; $7f79: $f0 $fc
	add sp, -$40                                     ; $7f7b: $e8 $c0
	inc de                                           ; $7f7d: $13
	ld a, c                                          ; $7f7e: $79
	ld de, $fcdf                                     ; $7f7f: $11 $df $fc
	ld a, [hl]                                       ; $7f82: $7e
	xor d                                            ; $7f83: $aa
	sbc [hl]                                         ; $7f84: $9e
	ld c, $79                                        ; $7f85: $0e $79
	ret nc                                           ; $7f87: $d0

	rst SubAFromDE                                          ; $7f88: $df
	inc bc                                           ; $7f89: $03
	adc c                                            ; $7f8a: $89
	nop                                              ; $7f8b: $00
	ldh [$f1], a                                     ; $7f8c: $e0 $f1
	rra                                              ; $7f8e: $1f
	rrca                                             ; $7f8f: $0f
	rlca                                             ; $7f90: $07
	inc bc                                           ; $7f91: $03
	rlca                                             ; $7f92: $07
	cp a                                             ; $7f93: $bf
	rst $38                                          ; $7f94: $ff
	ld a, a                                          ; $7f95: $7f

jr_05c_7f96:
	ldh [$f0], a                                     ; $7f96: $e0 $f0
	ld hl, sp-$04                                    ; $7f98: $f8 $fc
	ld hl, sp+$40                                    ; $7f9a: $f8 $40
	nop                                              ; $7f9c: $00
	add b                                            ; $7f9d: $80
	sbc l                                            ; $7f9e: $9d
	db $fd                                           ; $7f9f: $fd
	db $fd                                           ; $7fa0: $fd
	db $dd                                           ; $7fa1: $dd
	cp $9d                                           ; $7fa2: $fe $9d
	add $67                                          ; $7fa4: $c6 $67
	db $db                                           ; $7fa6: $db
	rlca                                             ; $7fa7: $07
	sbc l                                            ; $7fa8: $9d
	ccf                                              ; $7fa9: $3f
	ld e, c                                          ; $7faa: $59
	sbc $6b                                          ; $7fab: $de $6b
	sbc d                                            ; $7fad: $9a
	ld l, l                                          ; $7fae: $6d
	push hl                                          ; $7faf: $e5
	and l                                            ; $7fb0: $a5
	and l                                            ; $7fb1: $a5
	rst AddAOntoHL                                          ; $7fb2: $ef
	sbc $cd                                          ; $7fb3: $de $cd
	sbc [hl]                                         ; $7fb5: $9e
	ret                                              ; $7fb6: $c9


	sbc $49                                          ; $7fb7: $de $49
	sbc [hl]                                         ; $7fb9: $9e
	ld a, a                                          ; $7fba: $7f
	jp c, $df2f                                      ; $7fbb: $da $2f $df

	db $fc                                           ; $7fbe: $fc
	sbc l                                            ; $7fbf: $9d
	ld a, [$ddf9]                                    ; $7fc0: $fa $f9 $dd
	ld hl, sp-$69                                    ; $7fc3: $f8 $97
	ldh [$fc], a                                     ; $7fc5: $e0 $fc
	ldh a, [$f8]                                     ; $7fc7: $f0 $f8

jr_05c_7fc9:
	ld hl, sp-$04                                    ; $7fc9: $f8 $fc
	db $fc                                           ; $7fcb: $fc
	cp $fd                                           ; $7fcc: $fe $fd
	ld a, a                                          ; $7fce: $7f
	ld [hl-], a                                      ; $7fcf: $32
	sub [hl]                                         ; $7fd0: $96
	jr nz, jr_05c_7fe3                               ; $7fd1: $20 $10

	dec h                                            ; $7fd3: $25
	ld c, l                                          ; $7fd4: $4d
	dec c                                            ; $7fd5: $0d
	nop                                              ; $7fd6: $00
	jr c, jr_05c_7fd9                                ; $7fd7: $38 $00

jr_05c_7fd9:
	db $10                                           ; $7fd9: $10
	cp $9c                                           ; $7fda: $fe $9c
	inc b                                            ; $7fdc: $04
	nop                                              ; $7fdd: $00

jr_05c_7fde:
	jr z, jr_05c_7fde                                ; $7fde: $28 $fe

	sub e                                            ; $7fe0: $93
	ld d, h                                          ; $7fe1: $54
	inc b                                            ; $7fe2: $04

jr_05c_7fe3:
	jr jr_05c_7f69                                   ; $7fe3: $18 $84

	jr jr_05c_7ff7                                   ; $7fe5: $18 $10

	jr nz, jr_05c_7fc9                               ; $7fe7: $20 $e0

	ld sp, $0301                                     ; $7fe9: $31 $01 $03
	rlca                                             ; $7fec: $07
	ld a, b                                          ; $7fed: $78

Jump_05c_7fee:
	cp [hl]                                          ; $7fee: $be
	adc h                                            ; $7fef: $8c

Jump_05c_7ff0:
	ld a, a                                          ; $7ff0: $7f
	db $ec                                           ; $7ff1: $ec
	jp c, $a478                                      ; $7ff2: $da $78 $a4

	dec c                                            ; $7ff5: $0d
	inc bc                                           ; $7ff6: $03

jr_05c_7ff7:
	ld bc, $0001                                     ; $7ff7: $01 $01 $00
	dec b                                            ; $7ffa: $05
	add a                                            ; $7ffb: $87
	ld d, e                                          ; $7ffc: $53
	ldh a, [c]                                       ; $7ffd: $f2
	db $fc                                           ; $7ffe: $fc

Call_05c_7fff:
Jump_05c_7fff:
	db $fe                                           ; $7fff: $fe
