; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $059", ROMX[$4000], BANK[$59]

	ld b, [hl]                                       ; $4000: $46
	ret nz                                           ; $4001: $c0

	cp c                                             ; $4002: $b9
	ldh [$73], a                                     ; $4003: $e0 $73
	db $10                                           ; $4005: $10
	sbc a                                            ; $4006: $9f
	jr jr_059_4088                                   ; $4007: $18 $7f

	cp a                                             ; $4009: $bf
	cp $67                                           ; $400a: $fe $67
	sbc h                                            ; $400c: $9c
	jr nz, @+$01                                     ; $400d: $20 $ff

	jr nz, jr_059_4087                               ; $400f: $20 $76

	ret c                                            ; $4011: $d8

	ld l, a                                          ; $4012: $6f
	cp $7d                                           ; $4013: $fe $7d
	rst FarCall                                          ; $4015: $f7
	ld a, [hl]                                       ; $4016: $7e
	ld a, [hl]                                       ; $4017: $7e
	ld a, h                                          ; $4018: $7c
	cp a                                             ; $4019: $bf
	sub [hl]                                         ; $401a: $96
	ei                                               ; $401b: $fb
	rlca                                             ; $401c: $07
	ei                                               ; $401d: $fb
	ld b, $ff                                        ; $401e: $06 $ff
	inc bc                                           ; $4020: $03
	cp l                                             ; $4021: $bd
	inc bc                                           ; $4022: $03
	rst $38                                          ; $4023: $ff
	cp a                                             ; $4024: $bf
	cp a                                             ; $4025: $bf
	cp a                                             ; $4026: $bf
	sub b                                            ; $4027: $90
	ld b, b                                          ; $4028: $40
	rst SubAFromDE                                          ; $4029: $df
	ldh [rIE], a                                     ; $402a: $e0 $ff
	ld h, b                                          ; $402c: $60
	cp a                                             ; $402d: $bf
	ld h, b                                          ; $402e: $60
	ld a, a                                          ; $402f: $7f
	ldh [rIE], a                                     ; $4030: $e0 $ff
	ret nz                                           ; $4032: $c0

	cp $01                                           ; $4033: $fe $01
	ld hl, sp+$07                                    ; $4035: $f8 $07
	ld [hl], a                                       ; $4037: $77
	jp c, $f87f                                      ; $4038: $da $7f $f8

	sub l                                            ; $403b: $95
	db $f4                                           ; $403c: $f4
	dec bc                                           ; $403d: $0b
	ldh [c], a                                       ; $403e: $e2
	inc e                                            ; $403f: $1c
	adc c                                            ; $4040: $89
	ld [hl], b                                       ; $4041: $70
	ld h, [hl]                                       ; $4042: $66
	add c                                            ; $4043: $81
	sbc e                                            ; $4044: $9b
	inc b                                            ; $4045: $04
	ld l, [hl]                                       ; $4046: $6e
	ldh [$7f], a                                     ; $4047: $e0 $7f
	ld hl, sp+$7e                                    ; $4049: $f8 $7e
	ldh [$7f], a                                     ; $404b: $e0 $7f
	sub $77                                          ; $404d: $d6 $77
	db $e4                                           ; $404f: $e4
	ld a, a                                          ; $4050: $7f
	ld hl, sp+$76                                    ; $4051: $f8 $76
	sub [hl]                                         ; $4053: $96
	ld a, a                                          ; $4054: $7f
	dec b                                            ; $4055: $05
	ld a, [hl]                                       ; $4056: $7e
	sub $99                                          ; $4057: $d6 $99
	pop hl                                           ; $4059: $e1
	rra                                              ; $405a: $1f
	add [hl]                                         ; $405b: $86
	ld a, a                                          ; $405c: $7f
	ld a, [de]                                       ; $405d: $1a
	db $fc                                           ; $405e: $fc
	ld h, a                                          ; $405f: $67
	ld hl, sp-$6d                                    ; $4060: $f8 $93
	ld l, c                                          ; $4062: $69
	ldh a, [$a7]                                     ; $4063: $f0 $a7
	ret nz                                           ; $4065: $c0

	sbc a                                            ; $4066: $9f
	nop                                              ; $4067: $00
	ld a, [hl]                                       ; $4068: $7e
	ld bc, $f871                                     ; $4069: $01 $71 $f8
	add a                                            ; $406c: $87
	ldh [rPCM34], a                                  ; $406d: $e0 $77
	ld hl, sp-$69                                    ; $406f: $f8 $97
	ld hl, sp+$06                                    ; $4071: $f8 $06
	pop hl                                           ; $4073: $e1
	db $18, $87                                      ; $4074: $18 $87
	ld h, b                                          ; $4076: $60
	rra                                              ; $4077: $1f
	add b                                            ; $4078: $80
	cp c                                             ; $4079: $b9
	xor d                                            ; $407a: $aa
	rst SubAFromHL                                          ; $407b: $d7
	xor d                                            ; $407c: $aa
	ld d, l                                          ; $407d: $55
	add b                                            ; $407e: $80
	ld d, l                                          ; $407f: $55
	nop                                              ; $4080: $00
	ld d, l                                          ; $4081: $55
	sub a                                            ; $4082: $97
	ld bc, $01ef                                     ; $4083: $01 $ef $01
	ld d, l                                          ; $4086: $55

jr_059_4087:
	inc bc                                           ; $4087: $03

jr_059_4088:
	xor d                                            ; $4088: $aa
	inc bc                                           ; $4089: $03
	ld d, [hl]                                       ; $408a: $56
	ld a, d                                          ; $408b: $7a
	jr @-$7e                                         ; $408c: $18 $80

	ld d, a                                          ; $408e: $57
	inc bc                                           ; $408f: $03
	inc bc                                           ; $4090: $03
	ld [bc], a                                       ; $4091: $02
	ld d, a                                          ; $4092: $57

Jump_059_4093:
	rst $38                                          ; $4093: $ff
	inc l                                            ; $4094: $2c
	rst $38                                          ; $4095: $ff
	ld h, e                                          ; $4096: $63
	rst $38                                          ; $4097: $ff
	ld [hl], b                                       ; $4098: $70
	rst $38                                          ; $4099: $ff
	call z, $e3ff                                    ; $409a: $cc $ff $e3
	ccf                                              ; $409d: $3f
	ld [hl], b                                       ; $409e: $70
	ccf                                              ; $409f: $3f
	inc l                                            ; $40a0: $2c
	rra                                              ; $40a1: $1f
	ld d, e                                          ; $40a2: $53
	ld sp, hl                                        ; $40a3: $f9
	sbc a                                            ; $40a4: $9f
	db $ed                                           ; $40a5: $ed
	rst SubAFromDE                                          ; $40a6: $df
	xor $5b                                          ; $40a7: $ee $5b
	ld c, a                                          ; $40a9: $4f
	ld sp, hl                                        ; $40aa: $f9
	and $fc                                          ; $40ab: $e6 $fc
	sbc b                                            ; $40ad: $98
	and [hl]                                         ; $40ae: $a6
	ld a, h                                          ; $40af: $7c
	ld [de], a                                       ; $40b0: $12
	cp $0b                                           ; $40b1: $fe $0b
	cp $ff                                           ; $40b3: $fe $ff
	ld a, d                                          ; $40b5: $7a
	ld [hl-], a                                      ; $40b6: $32
	sbc [hl]                                         ; $40b7: $9e
	sbc a                                            ; $40b8: $9f
	ld a, d                                          ; $40b9: $7a
	ld c, $df                                        ; $40ba: $0e $df
	ret nz                                           ; $40bc: $c0

	ei                                               ; $40bd: $fb
	ld a, a                                          ; $40be: $7f
	ld l, $67                                        ; $40bf: $2e $67
	cp $99                                           ; $40c1: $fe $99
	inc a                                            ; $40c3: $3c
	nop                                              ; $40c4: $00
	ld [$3e37], sp                                   ; $40c5: $08 $37 $3e
	ld c, a                                          ; $40c8: $4f
	db $fd                                           ; $40c9: $fd
	ld a, [hl]                                       ; $40ca: $7e
	jp nz, $ba7e                                     ; $40cb: $c2 $7e $ba

	ld a, l                                          ; $40ce: $7d
	add b                                            ; $40cf: $80
	ld a, h                                          ; $40d0: $7c
	call z, $199a                                    ; $40d1: $cc $9a $19
	nop                                              ; $40d4: $00
	db $10                                           ; $40d5: $10
	ld bc, $b108                                     ; $40d6: $01 $08 $b1
	rlca                                             ; $40d9: $07
	cp $f0                                           ; $40da: $fe $f0
	nop                                              ; $40dc: $00
	nop                                              ; $40dd: $00
	add b                                            ; $40de: $80
	ldh [$1f], a                                     ; $40df: $e0 $1f
	rrca                                             ; $40e1: $0f
	rrca                                             ; $40e2: $0f
	rrca                                             ; $40e3: $0f
	rlca                                             ; $40e4: $07
	rlca                                             ; $40e5: $07
	rlca                                             ; $40e6: $07
	rlca                                             ; $40e7: $07
	ld h, l                                          ; $40e8: $65
	add b                                            ; $40e9: $80
	ld a, [$7af5]                                    ; $40ea: $fa $f5 $7a
	db $f4                                           ; $40ed: $f4
	ld a, e                                          ; $40ee: $7b
	or d                                             ; $40ef: $b2
	ld a, l                                          ; $40f0: $7d
	cp d                                             ; $40f1: $ba
	ld a, l                                          ; $40f2: $7d
	xor d                                            ; $40f3: $aa
	ld a, l                                          ; $40f4: $7d
	cp c                                             ; $40f5: $b9
	ld l, [hl]                                       ; $40f6: $6e
	xor l                                            ; $40f7: $ad
	ld a, [hl]                                       ; $40f8: $7e
	or a                                             ; $40f9: $b7
	ldh a, [$aa]                                     ; $40fa: $f0 $aa
	ldh [$bf], a                                     ; $40fc: $e0 $bf
	ldh [$aa], a                                     ; $40fe: $e0 $aa
	ldh [$bd], a                                     ; $4100: $e0 $bd
	ldh [rOCPS], a                                   ; $4102: $e0 $6a
	ldh [rHDMA5], a                                  ; $4104: $e0 $55
	ret nz                                           ; $4106: $c0

	ld l, d                                          ; $4107: $6a
	ret nz                                           ; $4108: $c0

	ld a, a                                          ; $4109: $7f
	sub d                                            ; $410a: $92
	ld a, a                                          ; $410b: $7f
	ld d, e                                          ; $410c: $53
	ld [hl], a                                       ; $410d: $77
	db $fc                                           ; $410e: $fc
	ld a, a                                          ; $410f: $7f
	ld d, e                                          ; $4110: $53
	ld [hl], a                                       ; $4111: $77
	db $fc                                           ; $4112: $fc

jr_059_4113:
	sbc [hl]                                         ; $4113: $9e
	and b                                            ; $4114: $a0
	or c                                             ; $4115: $b1
	rst $38                                          ; $4116: $ff
	xor d                                            ; $4117: $aa
	rst $38                                          ; $4118: $ff
	xor d                                            ; $4119: $aa
	ld a, a                                          ; $411a: $7f
	xor d                                            ; $411b: $aa
	ld d, a                                          ; $411c: $57
	xor d                                            ; $411d: $aa
	rst $38                                          ; $411e: $ff
	rst $38                                          ; $411f: $ff
	rst $38                                          ; $4120: $ff
	rst AddAOntoHL                                          ; $4121: $ef
	cp $b1                                           ; $4122: $fe $b1
	rst JumpTable                                          ; $4124: $c7
	sbc a                                            ; $4125: $9f
	sub [hl]                                         ; $4126: $96
	nop                                              ; $4127: $00
	and $18                                          ; $4128: $e6 $18
	reti                                             ; $412a: $d9


	jr nz, jr_059_4113                               ; $412b: $20 $e6

	ld bc, $049b                                     ; $412d: $01 $9b $04
	ld h, [hl]                                       ; $4130: $66
	sbc h                                            ; $4131: $9c
	sbc l                                            ; $4132: $9d
	ld l, a                                          ; $4133: $6f
	db $10                                           ; $4134: $10
	ld l, [hl]                                       ; $4135: $6e
	ret c                                            ; $4136: $d8

	ld a, [hl]                                       ; $4137: $7e
	cp h                                             ; $4138: $bc
	add d                                            ; $4139: $82
	ld sp, hl                                        ; $413a: $f9
	rlca                                             ; $413b: $07
	and $1f                                          ; $413c: $e6 $1f
	sbc b                                            ; $413e: $98
	ld a, a                                          ; $413f: $7f
	ld hl, sp+$07                                    ; $4140: $f8 $07
	pop af                                           ; $4142: $f1
	rrca                                             ; $4143: $0f
	add $3f                                          ; $4144: $c6 $3f
	sbc e                                            ; $4146: $9b
	ld a, h                                          ; $4147: $7c
	ld l, h                                          ; $4148: $6c
	ldh a, [$b3]                                     ; $4149: $f0 $b3
	ret nz                                           ; $414b: $c0

	rst GetHLinHL                                          ; $414c: $cf
	nop                                              ; $414d: $00
	ld a, $01                                        ; $414e: $3e $01
	ld l, c                                          ; $4150: $69
	ldh a, [$b7]                                     ; $4151: $f0 $b7
	ret nz                                           ; $4153: $c0

	ret nz                                           ; $4154: $c0

	rrca                                             ; $4155: $0f
	ld a, $72                                        ; $4156: $3e $72
	ldh [$9b], a                                     ; $4158: $e0 $9b
	sub a                                            ; $415a: $97
	ld h, b                                          ; $415b: $60
	ld c, a                                          ; $415c: $4f
	add b                                            ; $415d: $80
	ld l, [hl]                                       ; $415e: $6e
	ret c                                            ; $415f: $d8

	sbc e                                            ; $4160: $9b
	ld bc, $fefe                                     ; $4161: $01 $fe $fe
	ld bc, $c06f                                     ; $4164: $01 $6f $c0
	ld h, a                                          ; $4167: $67
	cp b                                             ; $4168: $b8
	ld a, a                                          ; $4169: $7f
	db $fd                                           ; $416a: $fd
	ld a, [hl]                                       ; $416b: $7e
	and [hl]                                         ; $416c: $a6
	sbc h                                            ; $416d: $9c
	swap b                                           ; $416e: $cb $30
	daa                                              ; $4170: $27
	ld a, e                                          ; $4171: $7b
	ld a, [bc]                                       ; $4172: $0a
	sbc [hl]                                         ; $4173: $9e
	ld d, h                                          ; $4174: $54
	cp l                                             ; $4175: $bd
	nop                                              ; $4176: $00
	ld d, b                                          ; $4177: $50
	nop                                              ; $4178: $00
	ld bc, $039a                                     ; $4179: $01 $9a $03
	rlca                                             ; $417c: $07
	rrca                                             ; $417d: $0f
	dec de                                           ; $417e: $1b
	inc a                                            ; $417f: $3c
	cp [hl]                                          ; $4180: $be
	nop                                              ; $4181: $00
	inc bc                                           ; $4182: $03
	rrca                                             ; $4183: $0f
	adc l                                            ; $4184: $8d
	ld [de], a                                       ; $4185: $12
	dec a                                            ; $4186: $3d
	ld l, h                                          ; $4187: $6c
	pop af                                           ; $4188: $f1
	and c                                            ; $4189: $a1
	ret nz                                           ; $418a: $c0

	add b                                            ; $418b: $80
	add b                                            ; $418c: $80
	ret nz                                           ; $418d: $c0

	add b                                            ; $418e: $80
	add sp, $0f                                      ; $418f: $e8 $0f
	call nz, $8207                                   ; $4191: $c4 $07 $82
	inc bc                                           ; $4194: $03
	add c                                            ; $4195: $81
	ld bc, $6e64                                     ; $4196: $01 $64 $6e
	adc a                                            ; $4199: $8f
	push hl                                          ; $419a: $e5
	rst $38                                          ; $419b: $ff
	ld e, $ff                                        ; $419c: $1e $ff

Jump_059_419e:
	add hl, bc                                       ; $419e: $09
	ei                                               ; $419f: $fb
	inc de                                           ; $41a0: $13
	di                                               ; $41a1: $f3
	call nc, Call_059_74f7                           ; $41a2: $d4 $f7 $74
	scf                                              ; $41a5: $37
	ld a, e                                          ; $41a6: $7b
	dec bc                                           ; $41a7: $0b
	inc a                                            ; $41a8: $3c
	inc b                                            ; $41a9: $04
	ld a, d                                          ; $41aa: $7a
	ld a, [$8189]                                    ; $41ab: $fa $89 $81
	ld b, b                                          ; $41ae: $40
	ret nz                                           ; $41af: $c0

	ldh [$e0], a                                     ; $41b0: $e0 $e0
	ld h, c                                          ; $41b2: $61
	ret nz                                           ; $41b3: $c0

	ld sp, $78e3                                     ; $41b4: $31 $e3 $78
	sub b                                            ; $41b7: $90
	xor $dc                                          ; $41b8: $ee $dc
	dec e                                            ; $41ba: $1d
	cp [hl]                                          ; $41bb: $be
	inc [hl]                                         ; $41bc: $34
	ld a, b                                          ; $41bd: $78

jr_059_41be:
	ld h, b                                          ; $41be: $60
	ld [hl], b                                       ; $41bf: $70
	ld b, b                                          ; $41c0: $40
	ldh [$c0], a                                     ; $41c1: $e0 $c0
	ld a, e                                          ; $41c3: $7b
	jp nz, $9cfd                                     ; $41c4: $c2 $fd $9c

	jr nc, jr_059_41ca                               ; $41c7: $30 $01

	ld h, c                                          ; $41c9: $61

jr_059_41ca:
	cp d                                             ; $41ca: $ba
	ld b, b                                          ; $41cb: $40
	nop                                              ; $41cc: $00
	nop                                              ; $41cd: $00
	nop                                              ; $41ce: $00
	nop                                              ; $41cf: $00
	nop                                              ; $41d0: $00
	ldh [hDisp1_SCY], a                                     ; $41d1: $e0 $90
	add b                                            ; $41d3: $80
	add h                                            ; $41d4: $84
	ret nz                                           ; $41d5: $c0

	inc c                                            ; $41d6: $0c
	inc b                                            ; $41d7: $04
	inc e                                            ; $41d8: $1c
	ld [$3058], sp                                   ; $41d9: $08 $58 $30
	ld [hl], b                                       ; $41dc: $70
	ret nz                                           ; $41dd: $c0

	inc c                                            ; $41de: $0c
	nop                                              ; $41df: $00
	db $10                                           ; $41e0: $10
	ld [$6275], sp                                   ; $41e1: $08 $75 $62
	ld l, a                                          ; $41e4: $6f
	cp $89                                           ; $41e5: $fe $89
	ld [bc], a                                       ; $41e7: $02
	ld bc, $0103                                     ; $41e8: $01 $03 $01
	dec b                                            ; $41eb: $05
	inc bc                                           ; $41ec: $03
	xor [hl]                                         ; $41ed: $ae
	ld a, a                                          ; $41ee: $7f
	or [hl]                                          ; $41ef: $b6
	ld a, a                                          ; $41f0: $7f
	ld [hl], a                                       ; $41f1: $77
	rst $38                                          ; $41f2: $ff
	ld l, d                                          ; $41f3: $6a
	cp $ae                                           ; $41f4: $fe $ae
	cp $bb                                           ; $41f6: $fe $bb
	db $eb                                           ; $41f8: $eb
	jp hl                                            ; $41f9: $e9


	ld sp, hl                                        ; $41fa: $f9
	sub h                                            ; $41fb: $94
	sbc h                                            ; $41fc: $9c
	ld [hl], a                                       ; $41fd: $77
	cp b                                             ; $41fe: $b8
	db $dd                                           ; $41ff: $dd
	add b                                            ; $4200: $80
	rst SubAFromDE                                          ; $4201: $df
	add c                                            ; $4202: $81
	sbc c                                            ; $4203: $99
	ld b, d                                          ; $4204: $42
	ld b, e                                          ; $4205: $43
	inc c                                            ; $4206: $0c
	rrca                                             ; $4207: $0f
	or b                                             ; $4208: $b0
	cp a                                             ; $4209: $bf
	ld a, e                                          ; $420a: $7b
	ld h, c                                          ; $420b: $61
	sub [hl]                                         ; $420c: $96
	inc bc                                           ; $420d: $03
	inc e                                            ; $420e: $1c
	rra                                              ; $420f: $1f
	ld l, h                                          ; $4210: $6c
	ld [hl], e                                       ; $4211: $73
	cp a                                             ; $4212: $bf
	ret nz                                           ; $4213: $c0

	ld a, a                                          ; $4214: $7f
	add b                                            ; $4215: $80
	ld [hl], a                                       ; $4216: $77
	cp $df                                           ; $4217: $fe $df
	ld a, b                                          ; $4219: $78
	sub c                                            ; $421a: $91
	add a                                            ; $421b: $87
	rst $38                                          ; $421c: $ff
	db $f4                                           ; $421d: $f4
	rrca                                             ; $421e: $0f
	inc de                                           ; $421f: $13
	adc [hl]                                         ; $4220: $8e
	rlc [hl]                                         ; $4221: $cb $06
	ret                                              ; $4223: $c9


	rlca                                             ; $4224: $07
	push bc                                          ; $4225: $c5
	inc bc                                           ; $4226: $03
	push hl                                          ; $4227: $e5
	inc bc                                           ; $4228: $03
	ld a, e                                          ; $4229: $7b
	jr nz, jr_059_41be                               ; $422a: $20 $92

	pop bc                                           ; $422c: $c1
	ccf                                              ; $422d: $3f
	dec a                                            ; $422e: $3d
	ld [hl-], a                                      ; $422f: $32
	ld [hl+], a                                      ; $4230: $22
	inc [hl]                                         ; $4231: $34
	dec h                                            ; $4232: $25
	ld [hl], l                                       ; $4233: $75
	daa                                              ; $4234: $27
	ld a, d                                          ; $4235: $7a
	ld l, $74                                        ; $4236: $2e $74
	dec a                                            ; $4238: $3d
	ld a, e                                          ; $4239: $7b
	inc d                                            ; $423a: $14
	ld a, a                                          ; $423b: $7f
	jp c, Jump_059_4093                              ; $423c: $da $93 $40

	ccf                                              ; $423f: $3f
	ldh [$7c], a                                     ; $4240: $e0 $7c
	ld hl, sp-$69                                    ; $4242: $f8 $97
	db $fc                                           ; $4244: $fc
	rla                                              ; $4245: $17
	db $fc                                           ; $4246: $fc
	daa                                              ; $4247: $27
	rst $38                                          ; $4248: $ff
	ld c, h                                          ; $4249: $4c
	ld [hl], d                                       ; $424a: $72
	ret c                                            ; $424b: $d8

	ld a, h                                          ; $424c: $7c
	add c                                            ; $424d: $81
	ld a, l                                          ; $424e: $7d
	sbc [hl]                                         ; $424f: $9e
	sbc h                                            ; $4250: $9c
	ldh a, [c]                                       ; $4251: $f2
	inc c                                            ; $4252: $0c
	ret                                              ; $4253: $c9


	ld a, e                                          ; $4254: $7b
	nop                                              ; $4255: $00
	sbc b                                            ; $4256: $98
	add hl, sp                                       ; $4257: $39
	add $00                                          ; $4258: $c6 $00
	db $fc                                           ; $425a: $fc
	ldh [$1f], a                                     ; $425b: $e0 $1f
	rrca                                             ; $425d: $0f
	ld a, c                                          ; $425e: $79
	xor h                                            ; $425f: $ac
	ld l, [hl]                                       ; $4260: $6e
	and $78                                          ; $4261: $e6 $78
	ld h, a                                          ; $4263: $67
	ld a, a                                          ; $4264: $7f
	or $94                                           ; $4265: $f6 $94
	add b                                            ; $4267: $80
	add a                                            ; $4268: $87
	ld a, b                                          ; $4269: $78
	ldh a, [rIF]                                     ; $426a: $f0 $0f
	pop af                                           ; $426c: $f1
	inc c                                            ; $426d: $0c
	jp $0f30                                         ; $426e: $c3 $30 $0f


	ret nz                                           ; $4271: $c0

	ld h, a                                          ; $4272: $67
	ret c                                            ; $4273: $d8

	ld a, l                                          ; $4274: $7d
	sub [hl]                                         ; $4275: $96
	sbc d                                            ; $4276: $9a

Jump_059_4277:
	rlca                                             ; $4277: $07
	ld hl, sp-$10                                    ; $4278: $f8 $f0
	rrca                                             ; $427a: $0f
	db $fd                                           ; $427b: $fd
	cp d                                             ; $427c: $ba
	sbc a                                            ; $427d: $9f
	ld a, l                                          ; $427e: $7d
	ld [$aad5], a                                    ; $427f: $ea $d5 $aa
	push de                                          ; $4282: $d5
	ld a, a                                          ; $4283: $7f
	add c                                            ; $4284: $81
	add b                                            ; $4285: $80
	inc b                                            ; $4286: $04
	ei                                               ; $4287: $fb
	ld l, b                                          ; $4288: $68
	ldh a, [$e0]                                     ; $4289: $f0 $e0
	ret nz                                           ; $428b: $c0

	ld h, b                                          ; $428c: $60
	ldh [rSVBK], a                                   ; $428d: $e0 $70
	ld h, b                                          ; $428f: $60
	ld [hl], b                                       ; $4290: $70
	jr nz, jr_059_4303                               ; $4291: $20 $70

	jr nc, jr_059_42ad                               ; $4293: $30 $18

	jr nc, jr_059_42cf                               ; $4295: $30 $38

	db $10                                           ; $4297: $10
	add b                                            ; $4298: $80
	ret nz                                           ; $4299: $c0

	ldh [$c0], a                                     ; $429a: $e0 $c0
	ld b, b                                          ; $429c: $40
	ld h, b                                          ; $429d: $60
	ld d, b                                          ; $429e: $50
	ld h, b                                          ; $429f: $60
	ld h, b                                          ; $42a0: $60
	jr nc, @+$22                                     ; $42a1: $30 $20

	ld a, e                                          ; $42a3: $7b
	ldh a, [c]                                       ; $42a4: $f2
	adc d                                            ; $42a5: $8a
	db $10                                           ; $42a6: $10
	jr jr_059_42c9                                   ; $42a7: $18 $20

	ld b, b                                          ; $42a9: $40
	nop                                              ; $42aa: $00
	ld h, b                                          ; $42ab: $60
	ld d, b                                          ; $42ac: $50

jr_059_42ad:
	jr nz, jr_059_42af                               ; $42ad: $20 $00

jr_059_42af:
	jr nc, jr_059_42d9                               ; $42af: $30 $28

	db $10                                           ; $42b1: $10
	ld [$1810], sp                                   ; $42b2: $08 $10 $18
	ld [$081c], sp                                   ; $42b5: $08 $1c $08
	inc sp                                           ; $42b8: $33
	inc bc                                           ; $42b9: $03
	jr nz, @+$7d                                     ; $42ba: $20 $7b

	or $7f                                           ; $42bc: $f6 $7f
	db $fd                                           ; $42be: $fd
	sbc [hl]                                         ; $42bf: $9e
	inc b                                            ; $42c0: $04
	ld a, e                                          ; $42c1: $7b
	cp $7f                                           ; $42c2: $fe $7f
	db $fd                                           ; $42c4: $fd
	sub h                                            ; $42c5: $94
	ld [bc], a                                       ; $42c6: $02
	inc b                                            ; $42c7: $04
	rst $38                                          ; $42c8: $ff

jr_059_42c9:
	ld a, $e7                                        ; $42c9: $3e $e7
	pop bc                                           ; $42cb: $c1
	ccf                                              ; $42cc: $3f
	jr nc, @+$11                                     ; $42cd: $30 $0f

jr_059_42cf:
	rrca                                             ; $42cf: $0f
	ld [bc], a                                       ; $42d0: $02
	ld a, c                                          ; $42d1: $79
	ld d, e                                          ; $42d2: $53
	ld a, a                                          ; $42d3: $7f
	cp $9e                                           ; $42d4: $fe $9e
	dec b                                            ; $42d6: $05
	ld a, b                                          ; $42d7: $78
	ld d, a                                          ; $42d8: $57

jr_059_42d9:
	ld a, d                                          ; $42d9: $7a
	sub [hl]                                         ; $42da: $96
	sub h                                            ; $42db: $94
	add b                                            ; $42dc: $80
	ldh [$c0], a                                     ; $42dd: $e0 $c0
	ld l, b                                          ; $42df: $68
	ldh a, [$5a]                                     ; $42e0: $f0 $5a
	db $fc                                           ; $42e2: $fc
	ld c, [hl]                                       ; $42e3: $4e
	rst $38                                          ; $42e4: $ff
	ld [hl], a                                       ; $42e5: $77
	rst AddAOntoHL                                          ; $42e6: $ef
	push af                                          ; $42e7: $f5
	ld a, [hl]                                       ; $42e8: $7e
	add d                                            ; $42e9: $82
	sbc [hl]                                         ; $42ea: $9e
	rst AddAOntoHL                                          ; $42eb: $ef
	ld l, l                                          ; $42ec: $6d
	add a                                            ; $42ed: $87
	cp h                                             ; $42ee: $bc
	nop                                              ; $42ef: $00
	nop                                              ; $42f0: $00
	nop                                              ; $42f1: $00
	nop                                              ; $42f2: $00
	db $e3                                           ; $42f3: $e3
	add b                                            ; $42f4: $80
	rra                                              ; $42f5: $1f
	rlca                                             ; $42f6: $07
	inc bc                                           ; $42f7: $03
	rrca                                             ; $42f8: $0f
	rlca                                             ; $42f9: $07
	rra                                              ; $42fa: $1f
	rrca                                             ; $42fb: $0f
	rrca                                             ; $42fc: $0f
	rra                                              ; $42fd: $1f
	rra                                              ; $42fe: $1f
	ccf                                              ; $42ff: $3f
	ld a, $7f                                        ; $4300: $3e $7f
	ld a, l                                          ; $4302: $7d

jr_059_4303:
	cp $87                                           ; $4303: $fe $87
	ld hl, sp-$31                                    ; $4305: $f8 $cf
	rst GetHLinHL                                          ; $4307: $cf
	ld hl, sp-$01                                    ; $4308: $f8 $ff
	ret nz                                           ; $430a: $c0

	rst $38                                          ; $430b: $ff
	ldh a, [rIE]                                     ; $430c: $f0 $ff
	ld hl, sp+$2f                                    ; $430e: $f8 $2f
	db $fc                                           ; $4310: $fc
	rla                                              ; $4311: $17
	cp $0f                                           ; $4312: $fe $0f

jr_059_4314:
	sbc l                                            ; $4314: $9d
	cp $03                                           ; $4315: $fe $03
	ld a, c                                          ; $4317: $79
	adc a                                            ; $4318: $8f
	ld [hl], e                                       ; $4319: $73
	cp $7d                                           ; $431a: $fe $7d
	cp $95                                           ; $431c: $fe $95
	inc bc                                           ; $431e: $03
	db $fc                                           ; $431f: $fc
	rra                                              ; $4320: $1f
	ldh [$3f], a                                     ; $4321: $e0 $3f
	pop bc                                           ; $4323: $c1
	ld a, a                                          ; $4324: $7f
	add b                                            ; $4325: $80
	rst $38                                          ; $4326: $ff
	ld bc, $fe7b                                     ; $4327: $01 $7b $fe
	adc h                                            ; $432a: $8c
	ld [bc], a                                       ; $432b: $02
	db $fd                                           ; $432c: $fd
	inc e                                            ; $432d: $1c
	pop hl                                           ; $432e: $e1
	jr nz, jr_059_4314                               ; $432f: $20 $e3

	pop hl                                           ; $4331: $e1

jr_059_4332:
	inc de                                           ; $4332: $13
	dec de                                           ; $4333: $1b
	pop hl                                           ; $4334: $e1
	db $e3                                           ; $4335: $e3
	ld hl, $1f23                                     ; $4336: $21 $23 $1f
	inc de                                           ; $4339: $13
	rrca                                             ; $433a: $0f
	inc e                                            ; $433b: $1c
	ccf                                              ; $433c: $3f
	jr nc, jr_059_43ba                               ; $433d: $30 $7b

	ret                                              ; $433f: $c9


	ld a, b                                          ; $4340: $78
	db $f4                                           ; $4341: $f4
	add b                                            ; $4342: $80
	ld l, h                                          ; $4343: $6c
	ld a, e                                          ; $4344: $7b
	sub c                                            ; $4345: $91
	rst $38                                          ; $4346: $ff
	ld a, a                                          ; $4347: $7f
	sbc a                                            ; $4348: $9f
	rst SubAFromBC                                          ; $4349: $e7
	dec e                                            ; $434a: $1d
	rst GetHLinHL                                          ; $434b: $cf
	dec sp                                           ; $434c: $3b
	rst SubAFromDE                                          ; $434d: $df
	inc a                                            ; $434e: $3c
	rst SubAFromBC                                          ; $434f: $e7
	ld a, b                                          ; $4350: $78
	rst SubAFromDE                                          ; $4351: $df
	ldh [$5c], a                                     ; $4352: $e0 $5c
	rst AddAOntoHL                                          ; $4354: $ef
	adc b                                            ; $4355: $88
	rst SubAFromDE                                          ; $4356: $df
	cp c                                             ; $4357: $b9
	sbc a                                            ; $4358: $9f
	ld a, [$f437]                                    ; $4359: $fa $37 $f4
	rst AddAOntoHL                                          ; $435c: $ef
	ld c, c                                          ; $435d: $49
	rst $38                                          ; $435e: $ff
	rst FarCall                                          ; $435f: $f7
	ld a, a                                          ; $4360: $7f
	cp h                                             ; $4361: $bc
	ld a, a                                          ; $4362: $7f
	push hl                                          ; $4363: $e5
	ld a, a                                          ; $4364: $7f
	call c, $da7b                                    ; $4365: $dc $7b $da
	ld a, e                                          ; $4368: $7b
	db $fc                                           ; $4369: $fc
	ld a, h                                          ; $436a: $7c
	ld e, h                                          ; $436b: $5c
	ld a, a                                          ; $436c: $7f
	ld a, [$c09c]                                    ; $436d: $fa $9c $c0
	ccf                                              ; $4370: $3f
	ld a, b                                          ; $4371: $78
	ld a, b                                          ; $4372: $78
	ld d, [hl]                                       ; $4373: $56

Jump_059_4374:
	ld [hl], d                                       ; $4374: $72
	ret c                                            ; $4375: $d8

	sbc [hl]                                         ; $4376: $9e
	ld a, $bf                                        ; $4377: $3e $bf
	db $fd                                           ; $4379: $fd
	ld a, [de]                                       ; $437a: $1a
	sbc e                                            ; $437b: $9b
	ldh [$e3], a                                     ; $437c: $e0 $e3
	inc e                                            ; $437e: $1c
	ccf                                              ; $437f: $3f
	cp d                                             ; $4380: $ba
	db $fd                                           ; $4381: $fd
	ld [$aa55], a                                    ; $4382: $ea $55 $aa
	ld d, l                                          ; $4385: $55
	xor e                                            ; $4386: $ab
	call nc, Call_059_757c                           ; $4387: $d4 $7c $75
	cp [hl]                                          ; $438a: $be
	ld d, l                                          ; $438b: $55
	xor e                                            ; $438c: $ab
	ld d, h                                          ; $438d: $54
	sub e                                            ; $438e: $93
	inc bc                                           ; $438f: $03
	and b                                            ; $4390: $a0
	inc c                                            ; $4391: $0c
	ld b, c                                          ; $4392: $41
	jr nc, @+$0c                                     ; $4393: $30 $0a

	ret nz                                           ; $4395: $c0

	dec d                                            ; $4396: $15
	nop                                              ; $4397: $00
	ldh a, [rIF]                                     ; $4398: $f0 $0f
	push bc                                          ; $439a: $c5
	ld [hl], e                                       ; $439b: $73
	ld hl, sp+$6c                                    ; $439c: $f8 $6c
	cp $7f                                           ; $439e: $fe $7f
	ld hl, sp-$21                                    ; $43a0: $f8 $df
	jr jr_059_4332                                   ; $43a2: $18 $8e

	inc c                                            ; $43a4: $0c
	jr jr_059_43b3                                   ; $43a5: $18 $0c

	ld [$0c06], sp                                   ; $43a7: $08 $06 $0c
	ld c, $04                                        ; $43aa: $0e $04
	ld [bc], a                                       ; $43ac: $02
	ld b, $03                                        ; $43ad: $06 $03
	ld b, $07                                        ; $43af: $06 $07
	ld [bc], a                                       ; $43b1: $02
	inc d                                            ; $43b2: $14

jr_059_43b3:
	jr jr_059_43bd                                   ; $43b3: $18 $08

	sbc $0c                                          ; $43b5: $de $0c
	ld a, a                                          ; $43b7: $7f
	ldh a, [c]                                       ; $43b8: $f2
	sbc [hl]                                         ; $43b9: $9e

jr_059_43ba:
	inc b                                            ; $43ba: $04
	ld a, e                                          ; $43bb: $7b
	db $f4                                           ; $43bc: $f4

jr_059_43bd:
	ld a, d                                          ; $43bd: $7a
	rst AddAOntoHL                                          ; $43be: $ef
	sbc c                                            ; $43bf: $99
	inc bc                                           ; $43c0: $03
	inc b                                            ; $43c1: $04
	inc c                                            ; $43c2: $0c
	inc c                                            ; $43c3: $0c
	inc b                                            ; $43c4: $04
	ld b, $7b                                        ; $43c5: $06 $7b
	db $e4                                           ; $43c7: $e4
	ld a, a                                          ; $43c8: $7f
	ldh a, [c]                                       ; $43c9: $f2
	sbc h                                            ; $43ca: $9c
	ld b, $02                                        ; $43cb: $06 $02
	add hl, de                                       ; $43cd: $19
	cp a                                             ; $43ce: $bf
	rst SubAFromBC                                          ; $43cf: $e7
	dec b                                            ; $43d0: $05
	sbc l                                            ; $43d1: $9d
	ld [bc], a                                       ; $43d2: $02
	rlca                                             ; $43d3: $07
	cp [hl]                                          ; $43d4: $be
	dec de                                           ; $43d5: $1b
	ld h, a                                          ; $43d6: $67
	sbc h                                            ; $43d7: $9c
	sub a                                            ; $43d8: $97
	inc bc                                           ; $43d9: $03
	ld [hl], e                                       ; $43da: $73
	inc c                                            ; $43db: $0c
	rst GetHLinHL                                          ; $43dc: $cf
	jr nc, jr_059_4414                               ; $43dd: $30 $35

	ret nz                                           ; $43df: $c0

	ld a, [de]                                       ; $43e0: $1a
	cp a                                             ; $43e1: $bf
	ld a, l                                          ; $43e2: $7d
	jp c, $209b                                      ; $43e3: $da $9b $20

	dec d                                            ; $43e6: $15
	ret nz                                           ; $43e7: $c0

	ld a, [$55bd]                                    ; $43e8: $fa $bd $55
	ld [$a255], a                                    ; $43eb: $ea $55 $a2
	sub l                                            ; $43ee: $95
	cp $73                                           ; $43ef: $fe $73
	ld a, [hl]                                       ; $43f1: $7e
	xor c                                            ; $43f2: $a9
	cpl                                              ; $43f3: $2f
	ld d, l                                          ; $43f4: $55
	rla                                              ; $43f5: $17
	ld [bc], a                                       ; $43f6: $02
	inc bc                                           ; $43f7: $03
	ld d, l                                          ; $43f8: $55
	ld a, d                                          ; $43f9: $7a
	or h                                             ; $43fa: $b4
	ld a, a                                          ; $43fb: $7f
	ldh a, [$df]                                     ; $43fc: $f0 $df
	rra                                              ; $43fe: $1f
	adc [hl]                                         ; $43ff: $8e
	ld d, c                                          ; $4400: $51
	ld bc, $0303                                     ; $4401: $01 $03 $03
	ld d, l                                          ; $4404: $55
	rlca                                             ; $4405: $07
	adc b                                            ; $4406: $88
	adc a                                            ; $4407: $8f
	ret nc                                           ; $4408: $d0

	rst SubAFromDE                                          ; $4409: $df
	add sp, -$09                                     ; $440a: $e8 $f7
	ld a, l                                          ; $440c: $7d
	ld [hl], e                                       ; $440d: $73
	cp $ff                                           ; $440e: $fe $ff
	ld hl, sp-$41                                    ; $4410: $f8 $bf
	ldh [$c0], a                                     ; $4412: $e0 $c0

jr_059_4414:
	ld a, c                                          ; $4414: $79
	ld h, $7b                                        ; $4415: $26 $7b
	cp $df                                           ; $4417: $fe $df
	ret nz                                           ; $4419: $c0

	sbc h                                            ; $441a: $9c
	ld b, b                                          ; $441b: $40
	ld a, a                                          ; $441c: $7f
	add b                                            ; $441d: $80
	ld [hl], l                                       ; $441e: $75
	add h                                            ; $441f: $84
	ld a, a                                          ; $4420: $7f
	push de                                          ; $4421: $d5
	ld a, e                                          ; $4422: $7b
	db $d3                                           ; $4423: $d3
	cp [hl]                                          ; $4424: $be
	nop                                              ; $4425: $00
	nop                                              ; $4426: $00
	cp $9e                                           ; $4427: $fe $9e
	ld [bc], a                                       ; $4429: $02
	ld [hl], d                                       ; $442a: $72
	ldh [rPCM34], a                                  ; $442b: $e0 $77
	cp $80                                           ; $442d: $fe $80
	add hl, bc                                       ; $442f: $09
	rst FarCall                                          ; $4430: $f7
	add hl, de                                       ; $4431: $19
	ld h, a                                          ; $4432: $67
	ld sp, $ff01                                     ; $4433: $31 $01 $ff
	dec c                                            ; $4436: $0d
	rst $38                                          ; $4437: $ff
	inc de                                           ; $4438: $13
	ld [hl], e                                       ; $4439: $73
	jr nz, jr_059_449c                               ; $443a: $20 $60

	dec [hl]                                         ; $443c: $35
	ld h, c                                          ; $443d: $61
	cpl                                              ; $443e: $2f
	ldh [c], a                                       ; $443f: $e2
	daa                                              ; $4440: $27
	ldh [c], a                                       ; $4441: $e2
	ld b, a                                          ; $4442: $47
	call nz, $1e1d                                   ; $4443: $c4 $1d $1e
	ld [hl], $39                                     ; $4446: $36 $39
	ld l, a                                          ; $4448: $6f
	ld [hl], b                                       ; $4449: $70
	sbc a                                            ; $444a: $9f
	ldh [$78], a                                     ; $444b: $e0 $78
	add b                                            ; $444d: $80
	ld a, [hl]                                       ; $444e: $7e
	ld [hl], d                                       ; $444f: $72
	sbc [hl]                                         ; $4450: $9e
	add c                                            ; $4451: $81
	cp a                                             ; $4452: $bf

jr_059_4453:
	inc d                                            ; $4453: $14
	ld sp, hl                                        ; $4454: $f9
	add b                                            ; $4455: $80
	rrca                                             ; $4456: $0f
	or $16                                           ; $4457: $f6 $16
	sub [hl]                                         ; $4459: $96
	halt                                             ; $445a: $76
	or [hl]                                          ; $445b: $b6
	halt                                             ; $445c: $76
	dec [hl]                                         ; $445d: $35
	dec d                                            ; $445e: $15
	db $10                                           ; $445f: $10
	ld de, $1e30                                     ; $4460: $11 $30 $1e
	jr nz, jr_059_4496                               ; $4463: $20 $31

	cp a                                             ; $4465: $bf
	ret nz                                           ; $4466: $c0

	rst $38                                          ; $4467: $ff
	add e                                            ; $4468: $83

jr_059_4469:
	push af                                          ; $4469: $f5
	adc h                                            ; $446a: $8c
	push hl                                          ; $446b: $e5
	sbc h                                            ; $446c: $9c
	add a                                            ; $446d: $87
	db $fc                                           ; $446e: $fc
	ld d, l                                          ; $446f: $55
	ld l, l                                          ; $4470: $6d
	ld h, $af                                        ; $4471: $26 $af
	inc h                                            ; $4473: $24
	ld l, a                                          ; $4474: $6f
	add b                                            ; $4475: $80
	ld a, [hl]                                       ; $4476: $7e
	di                                               ; $4477: $f3
	rst $38                                          ; $4478: $ff
	db $fd                                           ; $4479: $fd
	ld e, a                                          ; $447a: $5f
	ld c, $7f                                        ; $447b: $0e $7f
	ccf                                              ; $447d: $3f
	adc $f1                                          ; $447e: $ce $f1
	jr jr_059_4469                                   ; $4480: $18 $e7

	jr nc, jr_059_4453                               ; $4482: $30 $cf

	ld h, c                                          ; $4484: $61
	sbc [hl]                                         ; $4485: $9e
	rlca                                             ; $4486: $07
	xor a                                            ; $4487: $af
	add c                                            ; $4488: $81
	push de                                          ; $4489: $d5
	ret nz                                           ; $448a: $c0

	ld [$35e0], a                                    ; $448b: $ea $e0 $35
	ld hl, sp-$21                                    ; $448e: $f8 $df
	rst $38                                          ; $4490: $ff
	ld h, l                                          ; $4491: $65
	ld a, a                                          ; $4492: $7f
	dec sp                                           ; $4493: $3b
	rst $38                                          ; $4494: $ff
	sbc [hl]                                         ; $4495: $9e

jr_059_4496:
	inc [hl]                                         ; $4496: $34
	ld a, c                                          ; $4497: $79
	or h                                             ; $4498: $b4
	adc c                                            ; $4499: $89
	add b                                            ; $449a: $80
	ld l, e                                          ; $449b: $6b

jr_059_449c:
	ret nz                                           ; $449c: $c0

	or a                                             ; $449d: $b7
	ld h, b                                          ; $449e: $60
	ld e, b                                          ; $449f: $58
	or b                                             ; $44a0: $b0
	cpl                                              ; $44a1: $2f
	ret c                                            ; $44a2: $d8

	ld d, $ec                                        ; $44a3: $16 $ec
	xor e                                            ; $44a5: $ab
	or $70                                           ; $44a6: $f6 $70
	adc h                                            ; $44a8: $8c
	sbc c                                            ; $44a9: $99
	ld h, b                                          ; $44aa: $60
	rlca                                             ; $44ab: $07
	ld hl, sp+$14                                    ; $44ac: $f8 $14
	inc bc                                           ; $44ae: $03
	xor e                                            ; $44af: $ab
	cp c                                             ; $44b0: $b9
	ld d, l                                          ; $44b1: $55
	xor d                                            ; $44b2: $aa
	ld b, l                                          ; $44b3: $45
	xor d                                            ; $44b4: $aa
	ld d, h                                          ; $44b5: $54
	and b                                            ; $44b6: $a0
	ldh [rAUD3HIGH], a                               ; $44b7: $e0 $1e
	sbc c                                            ; $44b9: $99
	ldh [rHDMA1], a                                  ; $44ba: $e0 $51
	ld c, $aa                                        ; $44bc: $0e $aa
	ld bc, $ba55                                     ; $44be: $01 $55 $ba
	ld a, [bc]                                       ; $44c1: $0a
	ld d, c                                          ; $44c2: $51
	nop                                              ; $44c3: $00
	ld bc, $d502                                     ; $44c4: $01 $02 $d5
	inc a                                            ; $44c7: $3c
	sbc h                                            ; $44c8: $9c
	jp $1f40                                         ; $44c9: $c3 $40 $1f


	ld a, e                                          ; $44cc: $7b
	inc hl                                           ; $44cd: $23
	add a                                            ; $44ce: $87
	ld bc, $0181                                     ; $44cf: $01 $81 $01
	nop                                              ; $44d2: $00
	add c                                            ; $44d3: $81
	add e                                            ; $44d4: $83
	add b                                            ; $44d5: $80
	inc c                                            ; $44d6: $0c
	ret nz                                           ; $44d7: $c0

	or e                                             ; $44d8: $b3
	ld b, b                                          ; $44d9: $40
	rst GetHLinHL                                          ; $44da: $cf
	nop                                              ; $44db: $00
	inc bc                                           ; $44dc: $03
	ld bc, $018d                                     ; $44dd: $01 $8d $01
	inc sp                                           ; $44e0: $33
	add b                                            ; $44e1: $80
	rst GetHLinHL                                          ; $44e2: $cf
	add b                                            ; $44e3: $80
	cp h                                             ; $44e4: $bc
	add e                                            ; $44e5: $83
	di                                               ; $44e6: $f3
	ld a, d                                          ; $44e7: $7a
	ldh [$9d], a                                     ; $44e8: $e0 $9d
	ccf                                              ; $44ea: $3f
	ret nz                                           ; $44eb: $c0

	ld h, [hl]                                       ; $44ec: $66
	ret c                                            ; $44ed: $d8

	ld a, [hl]                                       ; $44ee: $7e
	ld c, h                                          ; $44ef: $4c
	sbc [hl]                                         ; $44f0: $9e
	db $dd                                           ; $44f1: $dd
	or c                                             ; $44f2: $b1
	rst $38                                          ; $44f3: $ff
	rst $38                                          ; $44f4: $ff
	rst $38                                          ; $44f5: $ff
	ld d, l                                          ; $44f6: $55
	cp $55                                           ; $44f7: $fe $55
	ld a, [$fa55]                                    ; $44f9: $fa $55 $fa
	ld d, l                                          ; $44fc: $55
	xor b                                            ; $44fd: $a8
	ld d, l                                          ; $44fe: $55
	and b                                            ; $44ff: $a0
	ld d, l                                          ; $4500: $55
	add b                                            ; $4501: $80
	ld d, l                                          ; $4502: $55
	cp e                                             ; $4503: $bb
	nop                                              ; $4504: $00
	ld d, l                                          ; $4505: $55
	nop                                              ; $4506: $00
	ld d, l                                          ; $4507: $55
	nop                                              ; $4508: $00
	ld d, l                                          ; $4509: $55
	add c                                            ; $450a: $81
	ld bc, $0706                                     ; $450b: $01 $06 $07
	ld e, e                                          ; $450e: $5b
	inc e                                            ; $450f: $1c
	inc hl                                           ; $4510: $23
	inc a                                            ; $4511: $3c
	rst JumpTable                                          ; $4512: $c7
	ld hl, sp+$59                                    ; $4513: $f8 $59
	ld a, a                                          ; $4515: $7f
	push af                                          ; $4516: $f5
	adc a                                            ; $4517: $8f
	db $fd                                           ; $4518: $fd
	add e                                            ; $4519: $83
	ld a, l                                          ; $451a: $7d
	add e                                            ; $451b: $83
	db $fc                                           ; $451c: $fc
	inc bc                                           ; $451d: $03
	sbc [hl]                                         ; $451e: $9e
	ld bc, $011e                                     ; $451f: $01 $1e $01
	ld c, $01                                        ; $4522: $0e $01
	ret nz                                           ; $4524: $c0

	ld b, b                                          ; $4525: $40
	ldh [rLCDC], a                                   ; $4526: $e0 $40

jr_059_4528:
	ldh [$bf], a                                     ; $4528: $e0 $bf
	or $c7                                           ; $452a: $f6 $c7
	ld a, a                                          ; $452c: $7f
	sbc h                                            ; $452d: $9c
	sbc d                                            ; $452e: $9a
	add c                                            ; $452f: $81
	ld a, a                                          ; $4530: $7f
	add $38                                          ; $4531: $c6 $38
	ld hl, sp-$07                                    ; $4533: $f8 $f9
	add b                                            ; $4535: $80
	db $e4                                           ; $4536: $e4
	nop                                              ; $4537: $00
	ld hl, sp-$20                                    ; $4538: $f8 $e0
	inc bc                                           ; $453a: $03
	inc bc                                           ; $453b: $03
	rlca                                             ; $453c: $07
	inc b                                            ; $453d: $04
	ld l, a                                          ; $453e: $6f
	ld b, a                                          ; $453f: $47
	jr jr_059_458a                                   ; $4540: $18 $48

	sub a                                            ; $4542: $97
	ld d, b                                          ; $4543: $50
	xor a                                            ; $4544: $af
	jr nz, jr_059_45b6                               ; $4545: $20 $6f

	jr nz, jr_059_4528                               ; $4547: $20 $df

	ret nz                                           ; $4549: $c0

	rst SubAFromDE                                          ; $454a: $df
	ld b, b                                          ; $454b: $40
	ld c, [hl]                                       ; $454c: $4e
	pop de                                           ; $454d: $d1
	db $eb                                           ; $454e: $eb
	db $ec                                           ; $454f: $ec
	ld l, e                                          ; $4550: $6b
	ld l, h                                          ; $4551: $6c
	dec [hl]                                         ; $4552: $35
	ld a, [de]                                       ; $4553: $1a
	cp a                                             ; $4554: $bf
	sub l                                            ; $4555: $95
	db $10                                           ; $4556: $10
	dec a                                            ; $4557: $3d
	sub d                                            ; $4558: $92
	ld l, $b1                                        ; $4559: $2e $b1
	inc l                                            ; $455b: $2c
	cp a                                             ; $455c: $bf
	cp d                                             ; $455d: $ba
	inc sp                                           ; $455e: $33
	ld c, b                                          ; $455f: $48
	cp a                                             ; $4560: $bf
	ldh [c], a                                       ; $4561: $e2
	ld [hl], a                                       ; $4562: $77
	add b                                            ; $4563: $80
	add b                                            ; $4564: $80
	rla                                              ; $4565: $17
	ld hl, sp-$41                                    ; $4566: $f8 $bf
	ld [hl], b                                       ; $4568: $70
	ld l, h                                          ; $4569: $6c
	di                                               ; $456a: $f3
	cp $c1                                           ; $456b: $fe $c1
	cp b                                             ; $456d: $b8
	rst JumpTable                                          ; $456e: $c7
	and b                                            ; $456f: $a0
	daa                                              ; $4570: $27
	db $10                                           ; $4571: $10
	db $10                                           ; $4572: $10
	dec bc                                           ; $4573: $0b
	dec bc                                           ; $4574: $0b
	db $eb                                           ; $4575: $eb
	ld a, [bc]                                       ; $4576: $0a
	dec sp                                           ; $4577: $3b
	ei                                               ; $4578: $fb
	ld h, b                                          ; $4579: $60
	rst $38                                          ; $457a: $ff
	ld [$c9c7], a                                    ; $457b: $ea $c7 $c9
	add a                                            ; $457e: $87
	ld a, b                                          ; $457f: $78
	rst SubAFromDE                                          ; $4580: $df
	ld hl, sp-$01                                    ; $4581: $f8 $ff
	sub [hl]                                         ; $4583: $96
	or b                                             ; $4584: $b0
	rst SubAFromDE                                          ; $4585: $df
	sub b                                            ; $4586: $90

jr_059_4587:
	cp a                                             ; $4587: $bf
	ld [hl], b                                       ; $4588: $70
	cp a                                             ; $4589: $bf

jr_059_458a:
	and b                                            ; $458a: $a0
	rst $38                                          ; $458b: $ff
	ld h, b                                          ; $458c: $60
	ld a, e                                          ; $458d: $7b
	cp $80                                           ; $458e: $fe $80
	ld b, d                                          ; $4590: $42
	cp h                                             ; $4591: $bc
	inc b                                            ; $4592: $04
	ld hl, sp+$00                                    ; $4593: $f8 $00
	ld hl, sp+$0b                                    ; $4595: $f8 $0b
	pop af                                           ; $4597: $f1
	ld [bc], a                                       ; $4598: $02
	di                                               ; $4599: $f3
	inc d                                            ; $459a: $14
	rst SubAFromBC                                          ; $459b: $e7
	inc d                                            ; $459c: $14
	and $04                                          ; $459d: $e6 $04
	and $ff                                          ; $459f: $e6 $ff
	ld [hl], $ff                                     ; $45a1: $36 $ff
	ld l, a                                          ; $45a3: $6f
	rst $38                                          ; $45a4: $ff
	rst AddAOntoHL                                          ; $45a5: $ef
	jr z, jr_059_4587                                ; $45a6: $28 $df

	inc h                                            ; $45a8: $24
	sbc $62                                          ; $45a9: $de $62
	rst SubAFromDE                                          ; $45ab: $df
	ld h, d                                          ; $45ac: $62
	rst $38                                          ; $45ad: $ff
	add e                                            ; $45ae: $83
	adc [hl]                                         ; $45af: $8e
	ld a, a                                          ; $45b0: $7f
	db $dd                                           ; $45b1: $dd
	ld a, e                                          ; $45b2: $7b
	db $f4                                           ; $45b3: $f4
	cp a                                             ; $45b4: $bf
	ei                                               ; $45b5: $fb

jr_059_45b6:
	rst GetHLinHL                                          ; $45b6: $cf
	db $fc                                           ; $45b7: $fc
	rst SubAFromBC                                          ; $45b8: $e7
	ld a, [hl]                                       ; $45b9: $7e
	di                                               ; $45ba: $f3
	ld a, a                                          ; $45bb: $7f
	di                                               ; $45bc: $f3
	db $fd                                           ; $45bd: $fd
	call $1173                                       ; $45be: $cd $73 $11
	db $fd                                           ; $45c1: $fd
	sub d                                            ; $45c2: $92
	jp nz, Jump_059_6480                             ; $45c3: $c2 $80 $64

	ret nz                                           ; $45c6: $c0

	ld a, b                                          ; $45c7: $78
	or b                                             ; $45c8: $b0
	xor a                                            ; $45c9: $af
	call c, $f68b                                    ; $45ca: $dc $8b $f6
	add l                                            ; $45cd: $85
	ei                                               ; $45ce: $fb
	add d                                            ; $45cf: $82
	cp a                                             ; $45d0: $bf
	ld bc, $7e00                                     ; $45d1: $01 $00 $7e
	rra                                              ; $45d4: $1f
	ld a, a                                          ; $45d5: $7f
	ld b, a                                          ; $45d6: $47
	sub c                                            ; $45d7: $91
	jr c, jr_059_45dc                                ; $45d8: $38 $02

	ret nz                                           ; $45da: $c0

	inc d                                            ; $45db: $14

jr_059_45dc:
	nop                                              ; $45dc: $00
	add b                                            ; $45dd: $80
	add b                                            ; $45de: $80
	and b                                            ; $45df: $a0
	dec e                                            ; $45e0: $1d
	inc bc                                           ; $45e1: $03
	ld h, b                                          ; $45e2: $60
	dec b                                            ; $45e3: $05
	add b                                            ; $45e4: $80
	ld a, [hl+]                                      ; $45e5: $2a
	cp h                                             ; $45e6: $bc
	ld d, c                                          ; $45e7: $51
	ld [hl+], a                                      ; $45e8: $22
	ld b, c                                          ; $45e9: $41
	nop                                              ; $45ea: $00
	inc a                                            ; $45eb: $3c
	sbc [hl]                                         ; $45ec: $9e
	inc bc                                           ; $45ed: $03
	ld l, [hl]                                       ; $45ee: $6e
	ret c                                            ; $45ef: $d8

	ld l, b                                          ; $45f0: $68
	reti                                             ; $45f1: $d9


	cp c                                             ; $45f2: $b9
	rst $38                                          ; $45f3: $ff
	rst $38                                          ; $45f4: $ff
	rst $38                                          ; $45f5: $ff
	rst $38                                          ; $45f6: $ff
	rst $38                                          ; $45f7: $ff
	rst $38                                          ; $45f8: $ff
	rst $38                                          ; $45f9: $ff
	db $fd                                           ; $45fa: $fd
	ld a, l                                          ; $45fb: $7d
	ldh a, [c]                                       ; $45fc: $f2
	cp h                                             ; $45fd: $bc
	db $fd                                           ; $45fe: $fd
	rst $38                                          ; $45ff: $ff
	rst $38                                          ; $4600: $ff
	rst $38                                          ; $4601: $ff
	push af                                          ; $4602: $f5
	sbc c                                            ; $4603: $99
	ld a, [bc]                                       ; $4604: $0a
	xor d                                            ; $4605: $aa
	ld d, l                                          ; $4606: $55
	ld d, c                                          ; $4607: $51
	xor [hl]                                         ; $4608: $ae
	ld a, [$7dbd]                                    ; $4609: $fa $bd $7d
	ld a, [$fffd]                                    ; $460c: $fa $fd $ff
	ld a, b                                          ; $460f: $78
	cp h                                             ; $4610: $bc
	sub b                                            ; $4611: $90
	db $f4                                           ; $4612: $f4
	inc b                                            ; $4613: $04
	ret z                                            ; $4614: $c8

	ld [$0303], sp                                   ; $4615: $08 $03 $03
	ld e, h                                          ; $4618: $5c
	rrca                                             ; $4619: $0f
	scf                                              ; $461a: $37
	jr c, jr_059_467c                                ; $461b: $38 $5f

	ld h, b                                          ; $461d: $60
	rst $38                                          ; $461e: $ff
	add b                                            ; $461f: $80
	ccf                                              ; $4620: $3f
	cp [hl]                                          ; $4621: $be
	rra                                              ; $4622: $1f
	rlca                                             ; $4623: $07
	rlca                                             ; $4624: $07
	sbc h                                            ; $4625: $9c
	ld hl, sp+$17                                    ; $4626: $f8 $17
	add sp, $77                                      ; $4628: $e8 $77
	jp nc, $fe9d                                     ; $462a: $d2 $9d $fe

	ld bc, $ca6f                                     ; $462d: $01 $6f $ca
	ld a, [hl]                                       ; $4630: $7e
	ld l, [hl]                                       ; $4631: $6e
	sbc [hl]                                         ; $4632: $9e
	rst FarCall                                          ; $4633: $f7
	ld [hl], e                                       ; $4634: $73
	ldh a, [c]                                       ; $4635: $f2
	cp a                                             ; $4636: $bf
	rst $38                                          ; $4637: $ff
	rst $38                                          ; $4638: $ff

jr_059_4639:
	ld a, h                                          ; $4639: $7c
	pop de                                           ; $463a: $d1
	add e                                            ; $463b: $83
	pop hl                                           ; $463c: $e1
	rra                                              ; $463d: $1f
	db $10                                           ; $463e: $10
	ldh a, [rIF]                                     ; $463f: $f0 $0f
	ld hl, sp+$07                                    ; $4641: $f8 $07
	db $fc                                           ; $4643: $fc
	inc bc                                           ; $4644: $03
	rst $38                                          ; $4645: $ff
	rrca                                             ; $4646: $0f
	db $fc                                           ; $4647: $fc
	rra                                              ; $4648: $1f
	di                                               ; $4649: $f3
	ld a, h                                          ; $464a: $7c
	db $ec                                           ; $464b: $ec
	ldh a, [hDisp1_SCY]                                     ; $464c: $f0 $90
	rra                                              ; $464e: $1f
	jr @+$01                                         ; $464f: $18 $ff

	ld h, [hl]                                       ; $4651: $66
	ei                                               ; $4652: $fb
	sbc e                                            ; $4653: $9b
	pop af                                           ; $4654: $f1
	ld sp, $c1c1                                     ; $4655: $31 $c1 $c1
	ld [hl], l                                       ; $4658: $75
	ld a, [hl]                                       ; $4659: $7e
	ld a, a                                          ; $465a: $7f
	db $fc                                           ; $465b: $fc
	add b                                            ; $465c: $80
	call $d2d2                                       ; $465d: $cd $d2 $d2
	call z, $40c0                                    ; $4660: $cc $c0 $40
	db $e3                                           ; $4663: $e3
	ld h, b                                          ; $4664: $60
	rst $38                                          ; $4665: $ff
	cp a                                             ; $4666: $bf
	ldh a, [c]                                       ; $4667: $f2
	cp [hl]                                          ; $4668: $be
	ld sp, hl                                        ; $4669: $f9
	sbc a                                            ; $466a: $9f
	rst FarCall                                          ; $466b: $f7
	ld e, a                                          ; $466c: $5f
	ld sp, $583d                                     ; $466d: $31 $3d $58
	ld e, [hl]                                       ; $4670: $5e
	adc h                                            ; $4671: $8c
	rst AddAOntoHL                                          ; $4672: $ef
	add $f7                                          ; $4673: $c6 $f7
	db $e3                                           ; $4675: $e3
	ei                                               ; $4676: $fb
	ld [hl], c                                       ; $4677: $71
	ld a, l                                          ; $4678: $7d
	jr c, jr_059_4639                                ; $4679: $38 $be

	sbc h                                            ; $467b: $9c

jr_059_467c:
	ld a, l                                          ; $467c: $7d
	jp z, $8180                                      ; $467d: $ca $80 $81

	rst $38                                          ; $4680: $ff
	add e                                            ; $4681: $83
	ld h, l                                          ; $4682: $65
	ld e, a                                          ; $4683: $5f
	add hl, hl                                       ; $4684: $29
	cp a                                             ; $4685: $bf
	add hl, de                                       ; $4686: $19
	rst SubAFromDE                                          ; $4687: $df
	adc l                                            ; $4688: $8d
	rst AddAOntoHL                                          ; $4689: $ef
	rst GetHLinHL                                          ; $468a: $cf
	rst FarCall                                          ; $468b: $f7
	ld h, a                                          ; $468c: $67
	ld a, d                                          ; $468d: $7a
	ret nz                                           ; $468e: $c0

	cp a                                             ; $468f: $bf
	rrca                                             ; $4690: $0f
	rst $38                                          ; $4691: $ff
	ld [hl-], a                                      ; $4692: $32
	rst $38                                          ; $4693: $ff
	db $f4                                           ; $4694: $f4
	db $e3                                           ; $4695: $e3
	ret z                                            ; $4696: $c8

	rst SubAFromBC                                          ; $4697: $e7
	or b                                             ; $4698: $b0
	rst GetHLinHL                                          ; $4699: $cf
	and b                                            ; $469a: $a0
	rst GetHLinHL                                          ; $469b: $cf
	sub c                                            ; $469c: $91
	rst AddAOntoHL                                          ; $469d: $ef
	ld a, [hl]                                       ; $469e: $7e
	jp z, $2080                                      ; $469f: $ca $80 $20

	cp a                                             ; $46a2: $bf
	ld h, b                                          ; $46a3: $60
	ld a, a                                          ; $46a4: $7f
	ldh [$7f], a                                     ; $46a5: $e0 $7f
	and b                                            ; $46a7: $a0
	ld a, a                                          ; $46a8: $7f
	jr nz, @+$01                                     ; $46a9: $20 $ff

	or b                                             ; $46ab: $b0
	rst $38                                          ; $46ac: $ff
	ld [hl], b                                       ; $46ad: $70
	ld a, a                                          ; $46ae: $7f
	inc b                                            ; $46af: $04
	rst SubAFromBC                                          ; $46b0: $e7

jr_059_46b1:
	inc h                                            ; $46b1: $24
	rst JumpTable                                          ; $46b2: $c7
	ld [hl+], a                                      ; $46b3: $22
	rst JumpTable                                          ; $46b4: $c7
	rlca                                             ; $46b5: $07
	jp $c606                                         ; $46b6: $c3 $06 $c6


	add hl, de                                       ; $46b9: $19
	ret c                                            ; $46ba: $d8

	ld h, [hl]                                       ; $46bb: $66
	ldh [$98], a                                     ; $46bc: $e0 $98
	add b                                            ; $46be: $80
	ld a, h                                          ; $46bf: $7c
	sub a                                            ; $46c0: $97
	inc c                                            ; $46c1: $0c
	di                                               ; $46c2: $f3
	jr nc, jr_059_46b1                               ; $46c3: $30 $ec

	ret nz                                           ; $46c5: $c0

	sbc b                                            ; $46c6: $98
	add b                                            ; $46c7: $80
	ld h, b                                          ; $46c8: $60
	cp l                                             ; $46c9: $bd
	add b                                            ; $46ca: $80
	nop                                              ; $46cb: $00
	nop                                              ; $46cc: $00
	pop bc                                           ; $46cd: $c1
	call nc, Call_059_7d01                           ; $46ce: $d4 $01 $7d
	jp nz, $8280                                     ; $46d1: $c2 $80 $82

	db $fd                                           ; $46d4: $fd
	add l                                            ; $46d5: $85
	ld a, [$ff80]                                    ; $46d6: $fa $80 $ff
	ldh a, [rIE]                                     ; $46d9: $f0 $ff
	rst GetHLinHL                                          ; $46db: $cf
	rst $38                                          ; $46dc: $ff
	ld h, d                                          ; $46dd: $62
	db $fd                                           ; $46de: $fd
	add hl, de                                       ; $46df: $19
	cp $14                                           ; $46e0: $fe $14
	rst AddAOntoHL                                          ; $46e2: $ef
	ldh a, [rSVBK]                                   ; $46e3: $f0 $70
	ld e, [hl]                                       ; $46e5: $5e
	xor [hl]                                         ; $46e6: $ae
	xor c                                            ; $46e7: $a9
	ld d, a                                          ; $46e8: $57
	dec b                                            ; $46e9: $05
	ld a, [$ff00]                                    ; $46ea: $fa $00 $ff
	ldh [rIE], a                                     ; $46ed: $e0 $ff
	ld e, h                                          ; $46ef: $5c
	cp a                                             ; $46f0: $bf
	inc hl                                           ; $46f1: $23
	sbc [hl]                                         ; $46f2: $9e
	rst SubAFromDE                                          ; $46f3: $df
	ei                                               ; $46f4: $fb
	rst SubAFromDE                                          ; $46f5: $df
	ret nz                                           ; $46f6: $c0

	sub a                                            ; $46f7: $97
	and b                                            ; $46f8: $a0
	ld h, b                                          ; $46f9: $60
	ld d, b                                          ; $46fa: $50
	or b                                             ; $46fb: $b0
	ld [$96f8], sp                                   ; $46fc: $08 $f8 $96
	xor $6f                                          ; $46ff: $ee $6f
	inc d                                            ; $4701: $14
	sbc c                                            ; $4702: $99
	push de                                          ; $4703: $d5
	ld a, [hl+]                                      ; $4704: $2a
	xor d                                            ; $4705: $aa
	ld d, l                                          ; $4706: $55
	ld d, l                                          ; $4707: $55
	xor d                                            ; $4708: $aa
	ld [hl], d                                       ; $4709: $72
	ldh [hDisp1_SCY], a                                     ; $470a: $e0 $90
	dec b                                            ; $470c: $05

jr_059_470d:
	push de                                          ; $470d: $d5
	ld a, [hl+]                                      ; $470e: $2a
	xor b                                            ; $470f: $a8
	ld d, a                                          ; $4710: $57
	ld d, c                                          ; $4711: $51
	xor [hl]                                         ; $4712: $ae
	add a                                            ; $4713: $87
	ld a, b                                          ; $4714: $78
	inc e                                            ; $4715: $1c
	ldh [$73], a                                     ; $4716: $e0 $73
	add b                                            ; $4718: $80
	rst GetHLinHL                                          ; $4719: $cf
	nop                                              ; $471a: $00
	ld h, a                                          ; $471b: $67
	ld hl, sp+$7e                                    ; $471c: $f8 $7e
	ldh [c], a                                       ; $471e: $e2
	ld [hl], a                                       ; $471f: $77
	sub $7f                                          ; $4720: $d6 $7f
	rlca                                             ; $4722: $07
	adc [hl]                                         ; $4723: $8e
	jr c, jr_059_472e                                ; $4724: $38 $08

	ldh a, [rAUD1SWEEP]                              ; $4726: $f0 $10
	or $16                                           ; $4728: $f6 $16
	rst FarCall                                          ; $472a: $f7
	ld de, $12fe                                     ; $472b: $11 $fe $12

jr_059_472e:
	cp $12                                           ; $472e: $fe $12
	db $fc                                           ; $4730: $fc
	inc d                                            ; $4731: $14

jr_059_4732:
	db $fc                                           ; $4732: $fc
	inc d                                            ; $4733: $14
	jp $e1be                                         ; $4734: $c3 $be $e1


	ldh a, [$f8]                                     ; $4737: $f0 $f8
	ld a, a                                          ; $4739: $7f
	ld l, b                                          ; $473a: $68
	sbc b                                            ; $473b: $98
	ret nz                                           ; $473c: $c0

	cp [hl]                                          ; $473d: $be
	ld [hl], b                                       ; $473e: $70
	rst AddAOntoHL                                          ; $473f: $ef
	jr @+$79                                         ; $4740: $18 $77

	ld c, $77                                        ; $4742: $0e $77
	or d                                             ; $4744: $b2
	ld a, a                                          ; $4745: $7f
	jp c, Jump_059_7888                              ; $4746: $da $88 $78

	rlca                                             ; $4749: $07
	inc sp                                           ; $474a: $33
	rrca                                             ; $474b: $0f
	inc b                                            ; $474c: $04
	inc e                                            ; $474d: $1c
	dec de                                           ; $474e: $1b
	dec de                                           ; $474f: $1b
	db $e4                                           ; $4750: $e4
	ld h, h                                          ; $4751: $64
	ld [bc], a                                       ; $4752: $02
	cp $0f                                           ; $4753: $fe $0f
	db $fd                                           ; $4755: $fd

jr_059_4756:
	ld [hl], $f2                                     ; $4756: $36 $f2
	call c, Call_059_70cc                            ; $4758: $dc $cc $70
	jr nc, @-$3e                                     ; $475b: $30 $c0

	ret nz                                           ; $475d: $c0

	nop                                              ; $475e: $00
	cp a                                             ; $475f: $bf
	ccf                                              ; $4760: $3f
	xor $80                                          ; $4761: $ee $80
	ld h, c                                          ; $4763: $61
	sub d                                            ; $4764: $92
	adc h                                            ; $4765: $8c
	inc l                                            ; $4766: $2c
	db $10                                           ; $4767: $10
	ld d, b                                          ; $4768: $50
	jr nz, jr_059_47bb                               ; $4769: $20 $50

	jr nz, jr_059_470d                               ; $476b: $20 $a0

	ld b, b                                          ; $476d: $40
	add b                                            ; $476e: $80
	ld b, b                                          ; $476f: $40
	jr nz, jr_059_4732                               ; $4770: $20 $c0

	db $10                                           ; $4772: $10
	ldh [rOBP0], a                                   ; $4773: $e0 $48
	jr nc, jr_059_477b                               ; $4775: $30 $04

	ld [$0c02], sp                                   ; $4777: $08 $02 $0c
	ld a, [hl+]                                      ; $477a: $2a

jr_059_477b:
	inc b                                            ; $477b: $04
	ld a, [de]                                       ; $477c: $1a
	inc b                                            ; $477d: $04
	ld [hl-], a                                      ; $477e: $32

Call_059_477f:
	inc b                                            ; $477f: $04
	ld d, d                                          ; $4780: $52
	inc b                                            ; $4781: $04
	add l                                            ; $4782: $85
	rst $38                                          ; $4783: $ff
	ld e, b                                          ; $4784: $58
	ld hl, sp+$2f                                    ; $4785: $f8 $2f
	ccf                                              ; $4787: $3f
	daa                                              ; $4788: $27
	inc a                                            ; $4789: $3c
	rla                                              ; $478a: $17
	rra                                              ; $478b: $1f
	ld d, $1f                                        ; $478c: $16 $1f
	dec bc                                           ; $478e: $0b
	ccf                                              ; $478f: $3f
	dec bc                                           ; $4790: $0b
	rrca                                             ; $4791: $0f
	dec c                                            ; $4792: $0d

jr_059_4793:
	adc $6f                                          ; $4793: $ce $6f
	rst SubAFromBC                                          ; $4795: $e7
	scf                                              ; $4796: $37
	di                                               ; $4797: $f3
	ld a, [$1df9]                                    ; $4798: $fa $f9 $1d
	rst $38                                          ; $479b: $ff
	rlca                                             ; $479c: $07
	ld a, e                                          ; $479d: $7b
	add b                                            ; $479e: $80
	ld a, a                                          ; $479f: $7f
	daa                                              ; $47a0: $27
	add b                                            ; $47a1: $80
	rst GetHLinHL                                          ; $47a2: $cf
	ld [hl], e                                       ; $47a3: $73
	cp l                                             ; $47a4: $bd
	add hl, sp                                       ; $47a5: $39
	rst SubAFromDE                                          ; $47a6: $df
	sbc l                                            ; $47a7: $9d
	rst AddAOntoHL                                          ; $47a8: $ef
	rst $38                                          ; $47a9: $ff
	ld a, a                                          ; $47aa: $7f
	ret nz                                           ; $47ab: $c0

	add b                                            ; $47ac: $80
	db $fc                                           ; $47ad: $fc
	ld b, b                                          ; $47ae: $40
	rst $38                                          ; $47af: $ff
	jr nz, @+$01                                     ; $47b0: $20 $ff

	sub b                                            ; $47b2: $90
	bit 7, a                                         ; $47b3: $cb $7f
	or l                                             ; $47b5: $b5
	dec a                                            ; $47b6: $3d
	call z, $c60c                                    ; $47b7: $cc $0c $c6
	and [hl]                                         ; $47ba: $a6

jr_059_47bb:
	db $e3                                           ; $47bb: $e3
	ld e, c                                          ; $47bc: $59
	ld a, [hl]                                       ; $47bd: $7e
	ld h, $39                                        ; $47be: $26 $39
	jr jr_059_4756                                   ; $47c0: $18 $94

	db $e4                                           ; $47c2: $e4
	ld h, b                                          ; $47c3: $60
	inc sp                                           ; $47c4: $33
	ccf                                              ; $47c5: $3f
	inc e                                            ; $47c6: $1c
	inc e                                            ; $47c7: $1c
	or e                                             ; $47c8: $b3
	or b                                             ; $47c9: $b0
	call z, $30c0                                    ; $47ca: $cc $c0 $30
	or c                                             ; $47cd: $b1
	ret nz                                           ; $47ce: $c0

	nop                                              ; $47cf: $00
	nop                                              ; $47d0: $00
	jr nz, jr_059_4793                               ; $47d1: $20 $c0

	nop                                              ; $47d3: $00
	nop                                              ; $47d4: $00
	nop                                              ; $47d5: $00
	nop                                              ; $47d6: $00
	inc bc                                           ; $47d7: $03
	rra                                              ; $47d8: $1f
	nop                                              ; $47d9: $00
	nop                                              ; $47da: $00
	nop                                              ; $47db: $00
	nop                                              ; $47dc: $00
	nop                                              ; $47dd: $00
	cp [hl]                                          ; $47de: $be
	nop                                              ; $47df: $00
	rst $38                                          ; $47e0: $ff
	rst $38                                          ; $47e1: $ff
	sbc h                                            ; $47e2: $9c
	rrca                                             ; $47e3: $0f
	inc bc                                           ; $47e4: $03
	ld bc, $0c7a                                     ; $47e5: $01 $7a $0c
	add c                                            ; $47e8: $81
	nop                                              ; $47e9: $00
	rrca                                             ; $47ea: $0f
	ld bc, $030f                                     ; $47eb: $01 $0f $03
	rra                                              ; $47ee: $1f
	ld b, $ff                                        ; $47ef: $06 $ff
	ld hl, sp-$01                                    ; $47f1: $f8 $ff
	nop                                              ; $47f3: $00
	ld [bc], a                                       ; $47f4: $02
	rst $38                                          ; $47f5: $ff
	adc e                                            ; $47f6: $8b
	push af                                          ; $47f7: $f5
	add l                                            ; $47f8: $85
	ld a, [$f50a]                                    ; $47f9: $fa $0a $f5
	dec b                                            ; $47fc: $05
	ld a, [$fd02]                                    ; $47fd: $fa $02 $fd
	ld bc, $02fe                                     ; $4800: $01 $fe $02
	db $fd                                           ; $4803: $fd
	inc d                                            ; $4804: $14
	db $eb                                           ; $4805: $eb
	ld a, [bc]                                       ; $4806: $0a
	ld a, e                                          ; $4807: $7b
	ldh a, [hDisp0_SCY]                                     ; $4808: $f0 $83
	ret nz                                           ; $480a: $c0

	ld a, a                                          ; $480b: $7f
	ld h, b                                          ; $480c: $60
	cp a                                             ; $480d: $bf
	or b                                             ; $480e: $b0
	ld e, a                                          ; $480f: $5f
	ld e, b                                          ; $4810: $58
	xor a                                            ; $4811: $af
	xor h                                            ; $4812: $ac
	ld d, a                                          ; $4813: $57
	ld [hl], c                                       ; $4814: $71
	rst $38                                          ; $4815: $ff
	adc h                                            ; $4816: $8c
	ld a, a                                          ; $4817: $7f
	ld d, e                                          ; $4818: $53
	xor a                                            ; $4819: $af
	xor b                                            ; $481a: $a8
	ld d, a                                          ; $481b: $57
	ld d, l                                          ; $481c: $55
	xor d                                            ; $481d: $aa
	ld a, [hl+]                                      ; $481e: $2a
	push de                                          ; $481f: $d5
	dec d                                            ; $4820: $15
	ld [$f50a], a                                    ; $4821: $ea $0a $f5
	rlca                                             ; $4824: $07
	ld hl, sp+$66                                    ; $4825: $f8 $66
	ldh [$9d], a                                     ; $4827: $e0 $9d
	ld a, a                                          ; $4829: $7f
	add b                                            ; $482a: $80
	halt                                             ; $482b: $76
	ldh [$66], a                                     ; $482c: $e0 $66
	ret c                                            ; $482e: $d8

	sub a                                            ; $482f: $97
	di                                               ; $4830: $f3
	rrca                                             ; $4831: $0f
	call $343e                                       ; $4832: $cd $3e $34
	ld hl, sp-$2d                                    ; $4835: $f8 $d3
	ldh [$67], a                                     ; $4837: $e0 $67
	ld hl, sp-$62                                    ; $4839: $f8 $9e
	ld c, a                                          ; $483b: $4f
	ld a, c                                          ; $483c: $79
	and b                                            ; $483d: $a0
	ld [hl], c                                       ; $483e: $71

jr_059_483f:
	or b                                             ; $483f: $b0
	sbc e                                            ; $4840: $9b
	rrca                                             ; $4841: $0f
	inc a                                            ; $4842: $3c
	inc b                                            ; $4843: $04
	db $fc                                           ; $4844: $fc
	ld a, e                                          ; $4845: $7b
	cp $9e                                           ; $4846: $fe $9e
	cp $77                                           ; $4848: $fe $77
	cp $91                                           ; $484a: $fe $91
	ld b, $fe                                        ; $484c: $06 $fe
	ld [bc], a                                       ; $484e: $02
	add c                                            ; $484f: $81
	rst $38                                          ; $4850: $ff
	ldh a, [$7f]                                     ; $4851: $f0 $7f
	ld c, h                                          ; $4853: $4c
	ccf                                              ; $4854: $3f
	ld [hl-], a                                      ; $4855: $32
	rrca                                             ; $4856: $0f
	add hl, sp                                       ; $4857: $39
	rlca                                             ; $4858: $07
	jr c, jr_059_48d6                                ; $4859: $38 $7b

	cp $8b                                           ; $485b: $fe $8b
	inc e                                            ; $485d: $1c
	inc bc                                           ; $485e: $03
	cp b                                             ; $485f: $b8
	sbc b                                            ; $4860: $98
	and c                                            ; $4861: $a1
	and b                                            ; $4862: $a0
	and b                                            ; $4863: $a0
	and c                                            ; $4864: $a1
	and d                                            ; $4865: $a2
	and c                                            ; $4866: $a1
	ldh [c], a                                       ; $4867: $e2
	and c                                            ; $4868: $a1
	ld [$fba1], a                                    ; $4869: $ea $a1 $fb
	and b                                            ; $486c: $a0
	jp hl                                            ; $486d: $e9


	and b                                            ; $486e: $a0
	add b                                            ; $486f: $80
	ld a, a                                          ; $4870: $7f
	cp l                                             ; $4871: $bd
	ret nz                                           ; $4872: $c0

	add b                                            ; $4873: $80
	nop                                              ; $4874: $00
	nop                                              ; $4875: $00
	ld a, a                                          ; $4876: $7f
	ei                                               ; $4877: $fb
	sbc b                                            ; $4878: $98
	ld h, h                                          ; $4879: $64
	add b                                            ; $487a: $80
	ld e, b                                          ; $487b: $58
	add b                                            ; $487c: $80
	jr nz, jr_059_483f                               ; $487d: $20 $c0

	pop bc                                           ; $487f: $c1
	cp d                                             ; $4880: $ba
	nop                                              ; $4881: $00
	nop                                              ; $4882: $00
	ld bc, $140a                                     ; $4883: $01 $0a $14
	dec hl                                           ; $4886: $2b
	ld [bc], a                                       ; $4887: $02
	add a                                            ; $4888: $87
	inc c                                            ; $4889: $0c
	ld h, [hl]                                       ; $488a: $66
	ld [$0864], sp                                   ; $488b: $08 $64 $08
	add h                                            ; $488e: $84
	jr jr_059_48fd                                   ; $488f: $18 $6c

	db $10                                           ; $4891: $10
	add sp, $10                                      ; $4892: $e8 $10
	adc b                                            ; $4894: $88
	db $10                                           ; $4895: $10
	ld b, b                                          ; $4896: $40
	jr nc, jr_059_48a0                               ; $4897: $30 $07

	dec b                                            ; $4899: $05
	rrca                                             ; $489a: $0f
	inc b                                            ; $489b: $04
	rra                                              ; $489c: $1f
	ld [bc], a                                       ; $489d: $02
	rlca                                             ; $489e: $07
	ld [bc], a                                       ; $489f: $02

jr_059_48a0:
	inc bc                                           ; $48a0: $03
	sbc $01                                          ; $48a1: $de $01
	sbc [hl]                                         ; $48a3: $9e
	add hl, bc                                       ; $48a4: $09
	cp a                                             ; $48a5: $bf
	ld a, [hl+]                                      ; $48a6: $2a
	ldh a, [hDisp0_OBP1]                                     ; $48a7: $f0 $87
	ld sp, hl                                        ; $48a9: $f9
	ldh [$f7], a                                     ; $48aa: $e0 $f7
	pop bc                                           ; $48ac: $c1
	db $eb                                           ; $48ad: $eb
	jp nz, $c2e7                                     ; $48ae: $c2 $e7 $c2

	ld l, a                                          ; $48b1: $6f
	rst SubAFromBC                                          ; $48b2: $e7
	ld a, a                                          ; $48b3: $7f
	db $fc                                           ; $48b4: $fc
	cp h                                             ; $48b5: $bc
	di                                               ; $48b6: $f3
	or b                                             ; $48b7: $b0
	ld a, a                                          ; $48b8: $7f
	ret                                              ; $48b9: $c9


	ld a, $e6                                        ; $48ba: $3e $e6
	dec e                                            ; $48bc: $1d
	ld hl, sp+$36                                    ; $48bd: $f8 $36
	ld [hl], b                                       ; $48bf: $70
	ret z                                            ; $48c0: $c8

	ld l, d                                          ; $48c1: $6a
	sbc $5d                                          ; $48c2: $de $5d
	or [hl]                                          ; $48c4: $b6
	ld sp, hl                                        ; $48c5: $f9
	ld a, a                                          ; $48c6: $7f
	and [hl]                                         ; $48c7: $a6
	ld a, a                                          ; $48c8: $7f
	cp $7e                                           ; $48c9: $fe $7e
	sub $7f                                          ; $48cb: $d6 $7f
	cp $9d                                           ; $48cd: $fe $9d
	rlca                                             ; $48cf: $07
	ld bc, $fe7b                                     ; $48d0: $01 $7b $fe
	ld a, b                                          ; $48d3: $78
	ret nz                                           ; $48d4: $c0

	ld a, d                                          ; $48d5: $7a

jr_059_48d6:
	add [hl]                                         ; $48d6: $86
	ld a, l                                          ; $48d7: $7d
	inc e                                            ; $48d8: $1c
	ld a, b                                          ; $48d9: $78
	ldh [rBCPS], a                                   ; $48da: $e0 $68
	xor h                                            ; $48dc: $ac
	sbc [hl]                                         ; $48dd: $9e
	ldh a, [rPCM12]                                  ; $48de: $f0 $76
	jr nz, jr_059_495e                               ; $48e0: $20 $7c

	db $fd                                           ; $48e2: $fd
	ld [hl], h                                       ; $48e3: $74
	ei                                               ; $48e4: $fb
	ld [hl], h                                       ; $48e5: $74
	call c, Call_059_607b                            ; $48e6: $dc $7b $60
	ld a, e                                          ; $48e9: $7b
	db $eb                                           ; $48ea: $eb
	ld a, [hl]                                       ; $48eb: $7e
	db $f4                                           ; $48ec: $f4
	ld h, [hl]                                       ; $48ed: $66
	ldh a, [rPCM12]                                  ; $48ee: $f0 $76
	call z, $fc7f                                    ; $48f0: $cc $7f $fc
	ld a, a                                          ; $48f3: $7f
	ld [$4096], a                                    ; $48f4: $ea $96 $40
	cp a                                             ; $48f7: $bf
	and b                                            ; $48f8: $a0
	ld e, a                                          ; $48f9: $5f
	ld b, b                                          ; $48fa: $40
	cp a                                             ; $48fb: $bf
	add b                                            ; $48fc: $80

jr_059_48fd:
	ld a, a                                          ; $48fd: $7f
	ld d, b                                          ; $48fe: $50
	ld a, d                                          ; $48ff: $7a
	call nc, Call_059_549d                           ; $4900: $d4 $9d $54
	xor e                                            ; $4903: $ab
	ld [hl], l                                       ; $4904: $75
	and d                                            ; $4905: $a2
	ld l, a                                          ; $4906: $6f
	ldh [$6e], a                                     ; $4907: $e0 $6e
	xor b                                            ; $4909: $a8
	cp a                                             ; $490a: $bf
	rst $38                                          ; $490b: $ff
	rst $38                                          ; $490c: $ff
	ld l, a                                          ; $490d: $6f
	call c, $0055                                    ; $490e: $dc $55 $00
	sbc [hl]                                         ; $4911: $9e
	ld h, a                                          ; $4912: $67
	db $dd                                           ; $4913: $dd
	ld d, l                                          ; $4914: $55
	sbc [hl]                                         ; $4915: $9e
	ld d, d                                          ; $4916: $52
	db $dd                                           ; $4917: $dd
	ld [hl+], a                                      ; $4918: $22
	ld c, e                                          ; $4919: $4b
	or $9e                                           ; $491a: $f6 $9e
	ld b, h                                          ; $491c: $44
	ld [hl], e                                       ; $491d: $73
	or $9e                                           ; $491e: $f6 $9e
	ld [hl], l                                       ; $4920: $75
	sbc $55                                          ; $4921: $de $55
	sbc [hl]                                         ; $4923: $9e
	ld b, d                                          ; $4924: $42
	call c, $9e22                                    ; $4925: $dc $22 $9e
	ld b, h                                          ; $4928: $44
	sbc $55                                          ; $4929: $de $55
	sbc l                                            ; $492b: $9d
	halt                                             ; $492c: $76
	ld h, h                                          ; $492d: $64
	ld [hl], e                                       ; $492e: $73
	db $f4                                           ; $492f: $f4
	rst SubAFromDE                                          ; $4930: $df
	ld d, l                                          ; $4931: $55
	sbc e                                            ; $4932: $9b
	ld d, a                                          ; $4933: $57
	ld h, [hl]                                       ; $4934: $66
	ld [hl], l                                       ; $4935: $75
	ld d, h                                          ; $4936: $54
	db $dd                                           ; $4937: $dd
	ld [hl+], a                                      ; $4938: $22
	sbc h                                            ; $4939: $9c
	inc h                                            ; $493a: $24
	ld h, l                                          ; $493b: $65
	ld d, l                                          ; $493c: $55
	ld a, e                                          ; $493d: $7b
	sbc $77                                          ; $493e: $de $77
	db $eb                                           ; $4940: $eb
	sbc [hl]                                         ; $4941: $9e
	ld h, $73                                        ; $4942: $26 $73
	bit 7, e                                         ; $4944: $cb $7b
	db $eb                                           ; $4946: $eb
	sub [hl]                                         ; $4947: $96
	inc h                                            ; $4948: $24
	ld h, [hl]                                       ; $4949: $66
	ld h, a                                          ; $494a: $67
	ld [hl], l                                       ; $494b: $75
	inc sp                                           ; $494c: $33
	ld d, l                                          ; $494d: $55
	ld d, e                                          ; $494e: $53
	inc [hl]                                         ; $494f: $34
	ld b, h                                          ; $4950: $44
	ld a, e                                          ; $4951: $7b
	or $7f                                           ; $4952: $f6 $7f
	db $e4                                           ; $4954: $e4
	sbc h                                            ; $4955: $9c
	inc sp                                           ; $4956: $33
	ld d, e                                          ; $4957: $53
	inc sp                                           ; $4958: $33
	ld [hl], a                                       ; $4959: $77
	or $7f                                           ; $495a: $f6 $7f
	reti                                             ; $495c: $d9


	ld a, a                                          ; $495d: $7f

jr_059_495e:
	or $9b                                           ; $495e: $f6 $9b
	inc sp                                           ; $4960: $33
	dec [hl]                                         ; $4961: $35
	ld b, h                                          ; $4962: $44
	ld b, h                                          ; $4963: $44
	ld e, c                                          ; $4964: $59
	adc d                                            ; $4965: $8a
	ld sp, hl                                        ; $4966: $f9
	reti                                             ; $4967: $d9


	rst $38                                          ; $4968: $ff
	inc bc                                           ; $4969: $03
	ldh a, [$03]                                     ; $496a: $f0 $03
	ldh a, [$0b]                                     ; $496c: $f0 $0b
	ldh a, [hDisp1_OBP0]                                     ; $496e: $f0 $93
	ld bc, $0703                                     ; $4970: $01 $03 $07
	rrca                                             ; $4973: $0f
	inc a                                            ; $4974: $3c
	pop hl                                           ; $4975: $e1
	ld bc, rIE                                     ; $4976: $01 $ff $ff
	cp $fc                                           ; $4979: $fe $fc
	ei                                               ; $497b: $fb
	sbc $ff                                          ; $497c: $de $ff
	add b                                            ; $497e: $80
	xor d                                            ; $497f: $aa
	ld d, b                                          ; $4980: $50
	cp l                                             ; $4981: $bd
	ld h, b                                          ; $4982: $60
	cp c                                             ; $4983: $b9
	db $d3                                           ; $4984: $d3
	ld h, l                                          ; $4985: $65
	cp l                                             ; $4986: $bd
	db $dd                                           ; $4987: $dd
	cp e                                             ; $4988: $bb
	ld [hl], d                                       ; $4989: $72
	rst FarCall                                          ; $498a: $f7
	rst SubAFromBC                                          ; $498b: $e7
	rst AddAOntoHL                                          ; $498c: $ef
	rst SubAFromDE                                          ; $498d: $df
	cp $55                                           ; $498e: $fe $55
	xor c                                            ; $4990: $a9
	ld d, e                                          ; $4991: $53
	and [hl]                                         ; $4992: $a6
	ld d, b                                          ; $4993: $50
	cp $b7                                           ; $4994: $fe $b7
	ld a, c                                          ; $4996: $79
	cp d                                             ; $4997: $ba
	ld [hl], h                                       ; $4998: $74
	add sp, -$30                                     ; $4999: $e8 $d0
	xor l                                            ; $499b: $ad
	ld sp, hl                                        ; $499c: $f9
	rst GetHLinHL                                          ; $499d: $cf
	add b                                            ; $499e: $80
	ldh a, [$2a]                                     ; $499f: $f0 $2a
	ld d, h                                          ; $49a1: $54
	add hl, hl                                       ; $49a2: $29
	ld e, d                                          ; $49a3: $5a
	dec [hl]                                         ; $49a4: $35
	ld [hl], l                                       ; $49a5: $75
	xor e                                            ; $49a6: $ab
	db $eb                                           ; $49a7: $eb
	pop de                                           ; $49a8: $d1
	and e                                            ; $49a9: $a3
	ld b, [hl]                                       ; $49aa: $46
	add h                                            ; $49ab: $84
	adc b                                            ; $49ac: $88
	ld [$f050], sp                                   ; $49ad: $08 $50 $f0
	halt                                             ; $49b0: $76
	xor $ea                                          ; $49b1: $ee $ea
	jp c, $b492                                      ; $49b3: $da $92 $b4

	or h                                             ; $49b6: $b4
	ld h, h                                          ; $49b7: $64
	adc c                                            ; $49b8: $89
	ld de, $2111                                     ; $49b9: $11 $11 $21
	ld h, c                                          ; $49bc: $61
	ld b, e                                          ; $49bd: $43
	adc l                                            ; $49be: $8d
	ld b, e                                          ; $49bf: $43
	add e                                            ; $49c0: $83
	ret nc                                           ; $49c1: $d0

	inc a                                            ; $49c2: $3c
	rra                                              ; $49c3: $1f
	ld c, c                                          ; $49c4: $49
	ld b, h                                          ; $49c5: $44
	ld h, a                                          ; $49c6: $67
	ld h, a                                          ; $49c7: $67
	ld l, a                                          ; $49c8: $6f
	ldh [$f8], a                                     ; $49c9: $e0 $f8
	cp $bf                                           ; $49cb: $fe $bf
	cp a                                             ; $49cd: $bf
	sbc a                                            ; $49ce: $9f
	sbc a                                            ; $49cf: $9f
	sub a                                            ; $49d0: $97
	db $dd                                           ; $49d1: $dd
	ld b, b                                          ; $49d2: $40
	sbc e                                            ; $49d3: $9b
	ret nz                                           ; $49d4: $c0

	add b                                            ; $49d5: $80
	nop                                              ; $49d6: $00
	nop                                              ; $49d7: $00
	call c, $337f                                    ; $49d8: $dc $7f $33
	add b                                            ; $49db: $80
	rst SubAFromDE                                          ; $49dc: $df
	ld bc, $029a                                     ; $49dd: $01 $9a $02
	inc bc                                           ; $49e0: $03
	rlca                                             ; $49e1: $07
	rlca                                             ; $49e2: $07
	rst $38                                          ; $49e3: $ff
	sbc $fe                                          ; $49e4: $de $fe
	sub [hl]                                         ; $49e6: $96
	db $fc                                           ; $49e7: $fc
	cp $fc                                           ; $49e8: $fe $fc
	db $fd                                           ; $49ea: $fd
	add e                                            ; $49eb: $83
	inc bc                                           ; $49ec: $03
	rlca                                             ; $49ed: $07
	inc bc                                           ; $49ee: $03
	db $fd                                           ; $49ef: $fd
	ld l, e                                          ; $49f0: $6b
	ret c                                            ; $49f1: $d8

	add b                                            ; $49f2: $80
	ld hl, sp+$3d                                    ; $49f3: $f8 $3d
	cp l                                             ; $49f5: $bd
	ld e, l                                          ; $49f6: $5d
	db $fc                                           ; $49f7: $fc
	db $fd                                           ; $49f8: $fd
	pop af                                           ; $49f9: $f1
	ldh a, [$f9]                                     ; $49fa: $f0 $f9
	db $e3                                           ; $49fc: $e3
	db $e3                                           ; $49fd: $e3
	pop af                                           ; $49fe: $f1
	ld a, b                                          ; $49ff: $78
	ld a, b                                          ; $4a00: $78
	ld hl, sp-$07                                    ; $4a01: $f8 $f9
	pop af                                           ; $4a03: $f1
	ldh a, [$f0]                                     ; $4a04: $f0 $f0
	db $e3                                           ; $4a06: $e3
	add hl, hl                                       ; $4a07: $29
	ld [hl], l                                       ; $4a08: $75
	add sp, -$25                                     ; $4a09: $e8 $db
	cp h                                             ; $4a0b: $bc
	rst $38                                          ; $4a0c: $ff
	rst FarCall                                          ; $4a0d: $f7
	db $ed                                           ; $4a0e: $ed
	rst FarCall                                          ; $4a0f: $f7
	rst AddAOntoHL                                          ; $4a10: $ef
	rst SubAFromDE                                          ; $4a11: $df
	sub d                                            ; $4a12: $92
	cp h                                             ; $4a13: $bc
	ld a, e                                          ; $4a14: $7b
	halt                                             ; $4a15: $76
	ld l, [hl]                                       ; $4a16: $6e
	ld e, [hl]                                       ; $4a17: $5e
	ld [hl+], a                                      ; $4a18: $22
	and h                                            ; $4a19: $a4
	jr z, @-$4e                                      ; $4a1a: $28 $b0

	jr nz, @-$3e                                     ; $4a1c: $20 $c0

	ld bc, $7b02                                     ; $4a1e: $01 $02 $7b
	sbc l                                            ; $4a21: $9d
	db $f4                                           ; $4a22: $f4
	inc bc                                           ; $4a23: $03
	nop                                              ; $4a24: $00
	inc bc                                           ; $4a25: $03
	ldh a, [$1f]                                     ; $4a26: $f0 $1f
	ldh a, [$9e]                                     ; $4a28: $f0 $9e
	ld bc, $f05b                                     ; $4a2a: $01 $5b $f0
	ld a, d                                          ; $4a2d: $7a
	jp nz, $3f96                                     ; $4a2e: $c2 $96 $3f

	ld sp, hl                                        ; $4a31: $f9
	inc bc                                           ; $4a32: $03
	inc bc                                           ; $4a33: $03
	rra                                              ; $4a34: $1f
	rst $38                                          ; $4a35: $ff
	cp $fd                                           ; $4a36: $fe $fd
	rst FarCall                                          ; $4a38: $f7
	ld a, e                                          ; $4a39: $7b
	inc a                                            ; $4a3a: $3c
	add e                                            ; $4a3b: $83
	rst $38                                          ; $4a3c: $ff
	ld l, d                                          ; $4a3d: $6a
	jp c, Jump_059_7eb5                              ; $4a3e: $da $b5 $7e

	ld e, e                                          ; $4a41: $5b
	reti                                             ; $4a42: $d9


	and c                                            ; $4a43: $a1
	and d                                            ; $4a44: $a2
	db $fd                                           ; $4a45: $fd
	db $fd                                           ; $4a46: $fd
	ei                                               ; $4a47: $fb
	rst $38                                          ; $4a48: $ff
	rst FarCall                                          ; $4a49: $f7
	db $f4                                           ; $4a4a: $f4
	db $f4                                           ; $4a4b: $f4
	push af                                          ; $4a4c: $f5
	rst GetHLinHL                                          ; $4a4d: $cf
	cp a                                             ; $4a4e: $bf
	cp $c7                                           ; $4a4f: $fe $c7
	db $fc                                           ; $4a51: $fc
	ccf                                              ; $4a52: $3f
	ld e, e                                          ; $4a53: $5b
	and h                                            ; $4a54: $a4
	inc a                                            ; $4a55: $3c
	ld a, a                                          ; $4a56: $7f
	pop bc                                           ; $4a57: $c1
	ld a, e                                          ; $4a58: $7b
	call z, $f691                                    ; $4a59: $cc $91 $f6
	rst $38                                          ; $4a5c: $ff
	rst SubAFromHL                                          ; $4a5d: $d7
	ld l, e                                          ; $4a5e: $6b
	rst JumpTable                                          ; $4a5f: $c7
	or d                                             ; $4a60: $b2
	ld a, [de]                                       ; $4a61: $1a
	rst JumpTable                                          ; $4a62: $c7
	ld [hl], d                                       ; $4a63: $72
	cp $3a                                           ; $4a64: $fe $3a
	sbc a                                            ; $4a66: $9f
	cp $7e                                           ; $4a67: $fe $7e
	ld a, e                                          ; $4a69: $7b
	pop de                                           ; $4a6a: $d1
	adc [hl]                                         ; $4a6b: $8e
	cp a                                             ; $4a6c: $bf
	ld l, h                                          ; $4a6d: $6c
	ld c, b                                          ; $4a6e: $48
	ret z                                            ; $4a6f: $c8

	ld [hl], c                                       ; $4a70: $71
	ld [hl], c                                       ; $4a71: $71
	ld h, e                                          ; $4a72: $63
	sbc a                                            ; $4a73: $9f
	db $eb                                           ; $4a74: $eb
	add e                                            ; $4a75: $83
	add a                                            ; $4a76: $87
	add a                                            ; $4a77: $87
	adc $ce                                          ; $4a78: $ce $ce
	call c, $f7fc                                    ; $4a7a: $dc $fc $f7
	sbc $ea                                          ; $4a7d: $de $ea
	rst SubAFromDE                                          ; $4a7f: $df
	ret z                                            ; $4a80: $c8

	sbc h                                            ; $4a81: $9c
	jp c, $129a                                      ; $4a82: $da $9a $12

	sbc $17                                          ; $4a85: $de $17
	rst SubAFromDE                                          ; $4a87: $df
	scf                                              ; $4a88: $37
	sbc h                                            ; $4a89: $9c
	daa                                              ; $4a8a: $27
	ld h, a                                          ; $4a8b: $67
	rst AddAOntoHL                                          ; $4a8c: $ef
	sbc $80                                          ; $4a8d: $de $80
	sbc $c0                                          ; $4a8f: $de $c0
	rst SubAFromDE                                          ; $4a91: $df
	ld b, b                                          ; $4a92: $40
	sbc $ff                                          ; $4a93: $de $ff
	call c, Call_059_477f                            ; $4a95: $dc $7f $47
	ld [hl], b                                       ; $4a98: $70
	sbc $0f                                          ; $4a99: $de $0f
	rst SubAFromDE                                          ; $4a9b: $df
	rra                                              ; $4a9c: $1f
	sub h                                            ; $4a9d: $94
	ccf                                              ; $4a9e: $3f
	ld a, a                                          ; $4a9f: $7f
	rst $38                                          ; $4aa0: $ff
	ld hl, sp-$07                                    ; $4aa1: $f8 $f9
	ld a, [$f2f1]                                    ; $4aa3: $fa $f1 $f2
	push hl                                          ; $4aa6: $e5
	and d                                            ; $4aa7: $a2
	ld b, l                                          ; $4aa8: $45
	reti                                             ; $4aa9: $d9


	rst $38                                          ; $4aaa: $ff
	sbc e                                            ; $4aab: $9b
	cp e                                             ; $4aac: $bb

jr_059_4aad:
	ld a, e                                          ; $4aad: $7b
	ei                                               ; $4aae: $fb
	ld [hl], a                                       ; $4aaf: $77
	sbc $f7                                          ; $4ab0: $de $f7
	add b                                            ; $4ab2: $80
	rst AddAOntoHL                                          ; $4ab3: $ef
	di                                               ; $4ab4: $f3
	rst JumpTable                                          ; $4ab5: $c7
	rst SubAFromBC                                          ; $4ab6: $e7
	rst JumpTable                                          ; $4ab7: $c7
	adc e                                            ; $4ab8: $8b
	adc a                                            ; $4ab9: $8f
	rst JumpTable                                          ; $4aba: $c7
	rst AddAOntoHL                                          ; $4abb: $ef
	db $e3                                           ; $4abc: $e3
	db $e3                                           ; $4abd: $e3
	jp nz, $c7c1                                     ; $4abe: $c2 $c1 $c7

	rst JumpTable                                          ; $4ac1: $c7
	adc a                                            ; $4ac2: $8f
	adc [hl]                                         ; $4ac3: $8e
	call c, $76be                                    ; $4ac4: $dc $be $76
	ld l, [hl]                                       ; $4ac7: $6e
	call c, $eea9                                    ; $4ac8: $dc $a9 $ee
	ld a, h                                          ; $4acb: $7c
	ld a, $7c                                        ; $4acc: $3e $7c
	cp b                                             ; $4ace: $b8
	or h                                             ; $4acf: $b4
	ld l, h                                          ; $4ad0: $6c
	ld e, h                                          ; $4ad1: $5c
	sbc b                                            ; $4ad2: $98
	jr jr_059_4aad                                   ; $4ad3: $18 $d8

	inc b                                            ; $4ad5: $04
	add hl, bc                                       ; $4ad6: $09
	ld de, $a141                                     ; $4ad7: $11 $41 $a1
	sbc $21                                          ; $4ada: $de $21
	pop af                                           ; $4adc: $f1
	ld [bc], a                                       ; $4add: $02
	ldh a, [$03]                                     ; $4ade: $f0 $03
	ldh a, [$27]                                     ; $4ae0: $f0 $27
	ldh a, [$7e]                                     ; $4ae2: $f0 $7e
	ld d, h                                          ; $4ae4: $54
	sbc e                                            ; $4ae5: $9b
	dec b                                            ; $4ae6: $05
	ld b, $0c                                        ; $4ae7: $06 $0c
	ld [$ffde], sp                                   ; $4ae9: $08 $de $ff
	ld a, [hl]                                       ; $4aec: $7e
	adc $7b                                          ; $4aed: $ce $7b
	db $fc                                           ; $4aef: $fc
	add b                                            ; $4af0: $80
	ld h, [hl]                                       ; $4af1: $66
	add d                                            ; $4af2: $82
	ld bc, $1161                                     ; $4af3: $01 $61 $11
	add hl, bc                                       ; $4af6: $09
	dec bc                                           ; $4af7: $0b
	dec bc                                           ; $4af8: $0b
	ei                                               ; $4af9: $fb
	adc a                                            ; $4afa: $8f
	rlca                                             ; $4afb: $07
	ld h, a                                          ; $4afc: $67
	rst FarCall                                          ; $4afd: $f7
	rst $38                                          ; $4afe: $ff
	dec a                                            ; $4aff: $3d
	dec e                                            ; $4b00: $1d
	xor e                                            ; $4b01: $ab
	and [hl]                                         ; $4b02: $a6
	ld [hl], $ba                                     ; $4b03: $36 $ba
	ld a, [hl]                                       ; $4b05: $7e
	xor $6c                                          ; $4b06: $ee $6c
	push af                                          ; $4b08: $f5
	push af                                          ; $4b09: $f5
	ei                                               ; $4b0a: $fb
	ld a, [$6c7e]                                    ; $4b0b: $fa $7e $6c
	ld h, h                                          ; $4b0e: $64
	db $e4                                           ; $4b0f: $e4
	sub a                                            ; $4b10: $97
	and l                                            ; $4b11: $a5
	pop de                                           ; $4b12: $d1
	rst $38                                          ; $4b13: $ff
	call c, $3f3b                                    ; $4b14: $dc $3b $3f
	ccf                                              ; $4b17: $3f
	rrca                                             ; $4b18: $0f
	ld a, d                                          ; $4b19: $7a
	and h                                            ; $4b1a: $a4
	add b                                            ; $4b1b: $80
	ld h, $04                                        ; $4b1c: $26 $04
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	ld [hl], b                                       ; $4b20: $70
	ld [$9fe7], sp                                   ; $4b21: $08 $e7 $9f
	or c                                             ; $4b24: $b1
	ld d, c                                          ; $4b25: $51
	ld h, d                                          ; $4b26: $62
	ld h, l                                          ; $4b27: $65
	rlca                                             ; $4b28: $07
	ld [$b95f], sp                                   ; $4b29: $08 $5f $b9
	pop hl                                           ; $4b2c: $e1
	ld h, c                                          ; $4b2d: $61
	ld b, e                                          ; $4b2e: $43
	rlca                                             ; $4b2f: $07
	ld b, $08                                        ; $4b30: $06 $08
	ld [hl-], a                                      ; $4b32: $32
	cp $d1                                           ; $4b33: $fe $d1
	ld a, h                                          ; $4b35: $7c
	ld a, [$2a5f]                                    ; $4b36: $fa $5f $2a
	rst AddAOntoHL                                          ; $4b39: $ef
	pop bc                                           ; $4b3a: $c1
	ld a, [hl]                                       ; $4b3b: $7e
	pop hl                                           ; $4b3c: $e1
	rst SubAFromDE                                          ; $4b3d: $df
	rst SubAFromDE                                          ; $4b3e: $df
	adc h                                            ; $4b3f: $8c
	ei                                               ; $4b40: $fb
	ld a, a                                          ; $4b41: $7f
	cp $b5                                           ; $4b42: $fe $b5
	ld h, h                                          ; $4b44: $64
	db $f4                                           ; $4b45: $f4
	ld h, h                                          ; $4b46: $64
	ld c, e                                          ; $4b47: $4b
	ld a, [bc]                                       ; $4b48: $0a
	sub a                                            ; $4b49: $97
	and l                                            ; $4b4a: $a5
	adc $de                                          ; $4b4b: $ce $de
	cp $9e                                           ; $4b4d: $fe $9e
	cp [hl]                                          ; $4b4f: $be
	rst $38                                          ; $4b50: $ff
	db $fd                                           ; $4b51: $fd
	rst $38                                          ; $4b52: $ff
	ld a, c                                          ; $4b53: $79
	add d                                            ; $4b54: $82
	ld a, l                                          ; $4b55: $7d
	add c                                            ; $4b56: $81
	ld l, c                                          ; $4b57: $69
	add b                                            ; $4b58: $80
	ld l, l                                          ; $4b59: $6d
	sub b                                            ; $4b5a: $90
	sbc [hl]                                         ; $4b5b: $9e
	ld [bc], a                                       ; $4b5c: $02
	ld a, c                                          ; $4b5d: $79
	adc l                                            ; $4b5e: $8d
	rst SubAFromDE                                          ; $4b5f: $df
	inc bc                                           ; $4b60: $03
	ld a, c                                          ; $4b61: $79
	ld de, $fc9a                                     ; $4b62: $11 $9a $fc
	ld sp, hl                                        ; $4b65: $f9
	pop af                                           ; $4b66: $f1
	ldh [c], a                                       ; $4b67: $e2
	ldh [c], a                                       ; $4b68: $e2
	ld l, a                                          ; $4b69: $6f
	ld [$ffdf], a                                    ; $4b6a: $ea $df $ff
	sub a                                            ; $4b6d: $97
	ld c, d                                          ; $4b6e: $4a
	ld b, l                                          ; $4b6f: $45
	adc e                                            ; $4b70: $8b
	sub a                                            ; $4b71: $97
	dec bc                                           ; $4b72: $0b
	rla                                              ; $4b73: $17
	cpl                                              ; $4b74: $2f
	rla                                              ; $4b75: $17
	ld [hl], a                                       ; $4b76: $77
	ld l, b                                          ; $4b77: $68
	sbc $ff                                          ; $4b78: $de $ff
	sbc c                                            ; $4b7a: $99
	db $fc                                           ; $4b7b: $fc
	rst AddAOntoHL                                          ; $4b7c: $ef
	rst AddAOntoHL                                          ; $4b7d: $ef
	rst SubAFromDE                                          ; $4b7e: $df
	rst SubAFromDE                                          ; $4b7f: $df
	sbc $de                                          ; $4b80: $de $de
	cp [hl]                                          ; $4b82: $be
	add d                                            ; $4b83: $82
	ld e, [hl]                                       ; $4b84: $5e
	adc a                                            ; $4b85: $8f
	dec de                                           ; $4b86: $1b
	rrca                                             ; $4b87: $0f
	ccf                                              ; $4b88: $3f
	rra                                              ; $4b89: $1f
	ld a, $77                                        ; $4b8a: $3e $77
	adc l                                            ; $4b8c: $8d
	dec de                                           ; $4b8d: $1b
	rlca                                             ; $4b8e: $07
	rla                                              ; $4b8f: $17
	rla                                              ; $4b90: $17
	ld [hl], $2d                                     ; $4b91: $36 $2d
	dec hl                                           ; $4b93: $2b
	ret c                                            ; $4b94: $d8

	ret c                                            ; $4b95: $d8

	db $fc                                           ; $4b96: $fc
	ret c                                            ; $4b97: $d8

	cp h                                             ; $4b98: $bc
	ld a, b                                          ; $4b99: $78
	jp hl                                            ; $4b9a: $e9


	ld [$b0b8], a                                    ; $4b9b: $ea $b8 $b0
	add b                                            ; $4b9e: $80
	or b                                             ; $4b9f: $b0
	ld [hl], b                                       ; $4ba0: $70
	sbc $f0                                          ; $4ba1: $de $f0
	sub a                                            ; $4ba3: $97
	inc hl                                           ; $4ba4: $23
	inc h                                            ; $4ba5: $24
	add hl, hl                                       ; $4ba6: $29
	inc hl                                           ; $4ba7: $23
	ld h, l                                          ; $4ba8: $65
	adc c                                            ; $4ba9: $89
	ld sp, $0263                                     ; $4baa: $31 $63 $02
	ret nz                                           ; $4bad: $c0

	inc bc                                           ; $4bae: $03
	ldh a, [$03]                                     ; $4baf: $f0 $03
	ldh a, [$dc]                                     ; $4bb1: $f0 $dc
	rst $38                                          ; $4bb3: $ff
	add d                                            ; $4bb4: $82
	ld [$1e19], sp                                   ; $4bb5: $08 $19 $1e
	inc a                                            ; $4bb8: $3c
	jr c, @+$2a                                      ; $4bb9: $38 $28

	ld l, b                                          ; $4bbb: $68
	ld b, b                                          ; $4bbc: $40
	ld hl, sp-$0f                                    ; $4bbd: $f8 $f1
	di                                               ; $4bbf: $f3
	rst SubAFromBC                                          ; $4bc0: $e7
	rst $38                                          ; $4bc1: $ff
	rst SubAFromBC                                          ; $4bc2: $e7
	add $ce                                          ; $4bc3: $c6 $ce
	dec bc                                           ; $4bc5: $0b
	db $db                                           ; $4bc6: $db
	ld a, [hl-]                                      ; $4bc7: $3a
	ld a, $3c                                        ; $4bc8: $3e $3c
	inc d                                            ; $4bca: $14
	dec d                                            ; $4bcb: $15
	dec d                                            ; $4bcc: $15
	dec e                                            ; $4bcd: $1d
	call $252d                                       ; $4bce: $cd $2d $25
	rra                                              ; $4bd1: $1f
	sbc $6f                                          ; $4bd2: $de $6f
	rst SubAFromDE                                          ; $4bd4: $df
	ld hl, sp-$21                                    ; $4bd5: $f8 $df
	ret z                                            ; $4bd7: $c8

	sbc c                                            ; $4bd8: $99
	adc b                                            ; $4bd9: $88
	adc h                                            ; $4bda: $8c
	adc b                                            ; $4bdb: $88
	add h                                            ; $4bdc: $84
	jr nc, jr_059_4c17                               ; $4bdd: $30 $38

	ld a, b                                          ; $4bdf: $78
	adc $99                                          ; $4be0: $ce $99
	ld hl, sp+$7c                                    ; $4be2: $f8 $7c
	ld a, h                                          ; $4be4: $7c
	rst $38                                          ; $4be5: $ff

jr_059_4be6:
	ld a, [hl]                                       ; $4be6: $7e
	jr jr_059_4be6                                   ; $4be7: $18 $fd

	sbc e                                            ; $4be9: $9b
	inc bc                                           ; $4bea: $03
	ldh a, [$38]                                     ; $4beb: $f0 $38
	inc c                                            ; $4bed: $0c
	ld [hl], l                                       ; $4bee: $75
	ld b, [hl]                                       ; $4bef: $46
	rst SubAFromDE                                          ; $4bf0: $df
	ld bc, $507d                                     ; $4bf1: $01 $7d $50
	rst SubAFromDE                                          ; $4bf4: $df
	rrca                                             ; $4bf5: $0f
	sbc h                                            ; $4bf6: $9c
	ld c, c                                          ; $4bf7: $49
	rst JumpTable                                          ; $4bf8: $c7
	pop bc                                           ; $4bf9: $c1
	db $fc                                           ; $4bfa: $fc
	adc h                                            ; $4bfb: $8c
	ld b, $0f                                        ; $4bfc: $06 $0f
	inc bc                                           ; $4bfe: $03
	ld a, [hl-]                                      ; $4bff: $3a
	dec hl                                           ; $4c00: $2b
	push af                                          ; $4c01: $f5
	ld sp, hl                                        ; $4c02: $f9
	cp $7f                                           ; $4c03: $fe $7f
	cp l                                             ; $4c05: $bd
	sbc $ff                                          ; $4c06: $de $ff
	rst SubAFromDE                                          ; $4c08: $df
	rrca                                             ; $4c09: $0f
	rlca                                             ; $4c0a: $07
	inc bc                                           ; $4c0b: $03
	add e                                            ; $4c0c: $83
	ld b, e                                          ; $4c0d: $43
	and e                                            ; $4c0e: $a3
	halt                                             ; $4c0f: $76
	add sp, -$69                                     ; $4c10: $e8 $97
	ld hl, sp-$10                                    ; $4c12: $f8 $f0
	ldh [$f0], a                                     ; $4c14: $e0 $f0
	db $eb                                           ; $4c16: $eb

jr_059_4c17:
	rst SubAFromHL                                          ; $4c17: $d7
	ld l, a                                          ; $4c18: $6f
	ld e, a                                          ; $4c19: $5f
	ld [hl], l                                       ; $4c1a: $75
	adc l                                            ; $4c1b: $8d
	db $fc                                           ; $4c1c: $fc
	ld a, [hl]                                       ; $4c1d: $7e
	add [hl]                                         ; $4c1e: $86
	sbc [hl]                                         ; $4c1f: $9e
	db $10                                           ; $4c20: $10
	db $dd                                           ; $4c21: $dd
	rst $38                                          ; $4c22: $ff
	sbc e                                            ; $4c23: $9b
	cp $f8                                           ; $4c24: $fe $f8
	ld hl, sp-$20                                    ; $4c26: $f8 $e0
	ld a, e                                          ; $4c28: $7b
	pop bc                                           ; $4c29: $c1
	ld a, c                                          ; $4c2a: $79
	sub c                                            ; $4c2b: $91
	rst SubAFromDE                                          ; $4c2c: $df
	ld a, a                                          ; $4c2d: $7f
	sub a                                            ; $4c2e: $97
	jp nz, $8484                                     ; $4c2f: $c2 $84 $84

	ld [$1008], sp                                   ; $4c32: $08 $08 $10
	db $10                                           ; $4c35: $10
	ld sp, $ffd9                                     ; $4c36: $31 $d9 $ff
	adc a                                            ; $4c39: $8f
	cpl                                              ; $4c3a: $2f
	ld e, a                                          ; $4c3b: $5f
	cpl                                              ; $4c3c: $2f
	ld e, a                                          ; $4c3d: $5f
	cp [hl]                                          ; $4c3e: $be
	ld e, [hl]                                       ; $4c3f: $5e
	cp [hl]                                          ; $4c40: $be
	ld a, l                                          ; $4c41: $7d
	cp $fc                                           ; $4c42: $fe $fc
	ld hl, sp-$04                                    ; $4c44: $f8 $fc
	db $fc                                           ; $4c46: $fc
	or $ff                                           ; $4c47: $f6 $ff
	db $fc                                           ; $4c49: $fc
	sbc $7c                                          ; $4c4a: $de $7c
	ld a, e                                          ; $4c4c: $7b
	add b                                            ; $4c4d: $80
	add l                                            ; $4c4e: $85
	ldh a, [$f1]                                     ; $4c4f: $f0 $f1
	dec sp                                           ; $4c51: $3b
	dec sp                                           ; $4c52: $3b
	dec de                                           ; $4c53: $1b
	or a                                             ; $4c54: $b7
	rst FarCall                                          ; $4c55: $f7
	or $ef                                           ; $4c56: $f6 $ef
	ld a, [$4767]                                    ; $4c58: $fa $67 $47
	ld [hl], a                                       ; $4c5b: $77
	ld l, a                                          ; $4c5c: $6f
	ld l, [hl]                                       ; $4c5d: $6e
	db $ed                                           ; $4c5e: $ed
	ret c                                            ; $4c5f: $d8

	push bc                                          ; $4c60: $c5
	ld hl, sp-$0f                                    ; $4c61: $f8 $f1
	push bc                                          ; $4c63: $c5
	adc e                                            ; $4c64: $8b
	ld d, a                                          ; $4c65: $57
	ld l, e                                          ; $4c66: $6b
	rst $38                                          ; $4c67: $ff
	xor [hl]                                         ; $4c68: $ae
	sbc $e0                                          ; $4c69: $de $e0
	sbc [hl]                                         ; $4c6b: $9e
	ld b, b                                          ; $4c6c: $40
	ld a, c                                          ; $4c6d: $79
	ld h, $96                                        ; $4c6e: $26 $96
	pop bc                                           ; $4c70: $c1
	push de                                          ; $4c71: $d5
	ld l, e                                          ; $4c72: $6b
	ld e, [hl]                                       ; $4c73: $5e
	ld a, h                                          ; $4c74: $7c
	ld [hl], b                                       ; $4c75: $70
	ld h, c                                          ; $4c76: $61
	dec c                                            ; $4c77: $0d
	dec e                                            ; $4c78: $1d
	ld [hl], l                                       ; $4c79: $75
	add sp, -$64                                     ; $4c7a: $e8 $9c
	inc c                                            ; $4c7c: $0c
	db $10                                           ; $4c7d: $10
	ld h, b                                          ; $4c7e: $60
	db $fd                                           ; $4c7f: $fd
	rst SubAFromDE                                          ; $4c80: $df
	add b                                            ; $4c81: $80
	rst SubAFromDE                                          ; $4c82: $df
	ldh [$9e], a                                     ; $4c83: $e0 $9e
	db $fc                                           ; $4c85: $fc
	ld [hl], c                                       ; $4c86: $71
	db $10                                           ; $4c87: $10
	rst SubAFromDE                                          ; $4c88: $df
	rra                                              ; $4c89: $1f
	sbc [hl]                                         ; $4c8a: $9e
	inc bc                                           ; $4c8b: $03
	ld [bc], a                                       ; $4c8c: $02
	ldh [$03], a                                     ; $4c8d: $e0 $03

jr_059_4c8f:
	ldh a, [$db]                                     ; $4c8f: $f0 $db
	ld bc, $ffd9                                     ; $4c91: $01 $d9 $ff
	ld [hl], l                                       ; $4c94: $75
	db $f4                                           ; $4c95: $f4
	rst $38                                          ; $4c96: $ff
	sbc l                                            ; $4c97: $9d
	jr nz, @+$32                                     ; $4c98: $20 $30

	db $db                                           ; $4c9a: $db
	adc $df                                          ; $4c9b: $ce $df
	call z, $199e                                    ; $4c9d: $cc $9e $19
	db $dd                                           ; $4ca0: $dd
	dec de                                           ; $4ca1: $1b
	rst SubAFromDE                                          ; $4ca2: $df
	dec sp                                           ; $4ca3: $3b
	sbc l                                            ; $4ca4: $9d
	inc sp                                           ; $4ca5: $33
	ld h, a                                          ; $4ca6: $67
	db $dd                                           ; $4ca7: $dd
	and $df                                          ; $4ca8: $e6 $df
	add $9a                                          ; $4caa: $c6 $9a
	rst GetHLinHL                                          ; $4cac: $cf
	add [hl]                                         ; $4cad: $86
	call nz, $e2c3                                   ; $4cae: $c4 $c3 $e2
	sbc $e3                                          ; $4cb1: $de $e3
	add b                                            ; $4cb3: $80
	rst JumpTable                                          ; $4cb4: $c7
	ld a, h                                          ; $4cb5: $7c
	ld a, $3e                                        ; $4cb6: $3e $3e
	rra                                              ; $4cb8: $1f
	rra                                              ; $4cb9: $1f
	ld e, $1e                                        ; $4cba: $1e $1e
	ccf                                              ; $4cbc: $3f
	dec e                                            ; $4cbd: $1d
	dec de                                           ; $4cbe: $1b
	inc d                                            ; $4cbf: $14
	ld de, $9e93                                     ; $4cc0: $11 $93 $9e
	add b                                            ; $4cc3: $80
	db $e3                                           ; $4cc4: $e3
	nop                                              ; $4cc5: $00
	db $10                                           ; $4cc6: $10
	jr jr_059_4ce8                                   ; $4cc7: $18 $1f

	ld e, $8c                                        ; $4cc9: $1e $8c
	ret nz                                           ; $4ccb: $c0

	ld b, b                                          ; $4ccc: $40
	add c                                            ; $4ccd: $81
	nop                                              ; $4cce: $00
	add c                                            ; $4ccf: $81
	add e                                            ; $4cd0: $83
	rlca                                             ; $4cd1: $07
	rra                                              ; $4cd2: $1f

jr_059_4cd3:
	sbc l                                            ; $4cd3: $9d
	ld a, e                                          ; $4cd4: $7b
	sbc h                                            ; $4cd5: $9c
	ei                                               ; $4cd6: $fb
	add [hl]                                         ; $4cd7: $86
	rlca                                             ; $4cd8: $07
	ld a, a                                          ; $4cd9: $7f
	cp l                                             ; $4cda: $bd
	rst FarCall                                          ; $4cdb: $f7
	rst AddAOntoHL                                          ; $4cdc: $ef
	rst SubAFromHL                                          ; $4cdd: $d7
	and e                                            ; $4cde: $a3
	rst JumpTable                                          ; $4cdf: $c7
	rrca                                             ; $4ce0: $0f
	ccf                                              ; $4ce1: $3f
	add $6c                                          ; $4ce2: $c6 $6c
	add hl, de                                       ; $4ce4: $19
	ccf                                              ; $4ce5: $3f
	ld a, a                                          ; $4ce6: $7f
	db $fc                                           ; $4ce7: $fc

jr_059_4ce8:
	ld hl, sp-$30                                    ; $4ce8: $f8 $d0
	ret nc                                           ; $4cea: $d0

	adc b                                            ; $4ceb: $88
	ret nz                                           ; $4cec: $c0

	jr nz, jr_059_4c8f                               ; $4ced: $20 $a0

	ret nc                                           ; $4cef: $d0

	ldh a, [$75]                                     ; $4cf0: $f0 $75
	jr nz, jr_059_4cd3                               ; $4cf2: $20 $df

	rst $38                                          ; $4cf4: $ff
	ld a, l                                          ; $4cf5: $7d
	rst JumpTable                                          ; $4cf6: $c7
	sub [hl]                                         ; $4cf7: $96
	rst $38                                          ; $4cf8: $ff
	jr nz, jr_059_4cfc                               ; $4cf9: $20 $01

	ld b, e                                          ; $4cfb: $43

jr_059_4cfc:
	ld b, e                                          ; $4cfc: $43
	ld b, $0c                                        ; $4cfd: $06 $0c
	inc c                                            ; $4cff: $0c
	add hl, de                                       ; $4d00: $19
	ld a, c                                          ; $4d01: $79
	ld a, d                                          ; $4d02: $7a
	sub a                                            ; $4d03: $97
	add c                                            ; $4d04: $81
	add d                                            ; $4d05: $82
	inc b                                            ; $4d06: $04
	inc b                                            ; $4d07: $04
	add hl, bc                                       ; $4d08: $09
	rst $38                                          ; $4d09: $ff
	cp a                                             ; $4d0a: $bf
	rst $38                                          ; $4d0b: $ff
	ld [hl], c                                       ; $4d0c: $71
	adc [hl]                                         ; $4d0d: $8e
	sub a                                            ; $4d0e: $97
	ld h, b                                          ; $4d0f: $60
	and c                                            ; $4d10: $a1
	jp nz, $8245                                     ; $4d11: $c2 $45 $82

	add l                                            ; $4d14: $85
	adc d                                            ; $4d15: $8a
	dec b                                            ; $4d16: $05
	reti                                             ; $4d17: $d9


	rst $38                                          ; $4d18: $ff
	sbc d                                            ; $4d19: $9a
	cp l                                             ; $4d1a: $bd
	ld a, l                                          ; $4d1b: $7d
	ei                                               ; $4d1c: $fb
	ld a, e                                          ; $4d1d: $7b
	ei                                               ; $4d1e: $fb
	sbc $f7                                          ; $4d1f: $de $f7
	add b                                            ; $4d21: $80
	db $f4                                           ; $4d22: $f4
	push hl                                          ; $4d23: $e5
	di                                               ; $4d24: $f3
	ei                                               ; $4d25: $fb
	jp c, $f6fa                                      ; $4d26: $da $fa $f6

	ldh a, [c]                                       ; $4d29: $f2
	pop af                                           ; $4d2a: $f1
	pop af                                           ; $4d2b: $f1
	ldh [$e0], a                                     ; $4d2c: $e0 $e0
	pop hl                                           ; $4d2e: $e1
	jp $c7c3                                         ; $4d2f: $c3 $c3 $c7


	or $ef                                           ; $4d32: $f6 $ef
	cp e                                             ; $4d34: $bb
	ei                                               ; $4d35: $fb
	db $fc                                           ; $4d36: $fc
	db $fd                                           ; $4d37: $fd
	rst $38                                          ; $4d38: $ff
	db $e4                                           ; $4d39: $e4
	call Call_059_7d9d                               ; $4d3a: $cd $9d $7d
	ld a, l                                          ; $4d3d: $7d
	ld a, e                                          ; $4d3e: $7b
	ld a, e                                          ; $4d3f: $7b
	ld hl, sp-$6f                                    ; $4d40: $f8 $91
	ei                                               ; $4d42: $fb
	cp h                                             ; $4d43: $bc
	ld hl, sp-$1f                                    ; $4d44: $f8 $e1
	ld d, a                                          ; $4d46: $57
	rrca                                             ; $4d47: $0f
	adc a                                            ; $4d48: $8f
	ld e, a                                          ; $4d49: $5f
	rst SubAFromDE                                          ; $4d4a: $df
	jp nz, $9884                                     ; $4d4b: $c2 $84 $98

	and b                                            ; $4d4e: $a0
	ret nz                                           ; $4d4f: $c0

	cp $9e                                           ; $4d50: $fe $9e
	ld a, l                                          ; $4d52: $7d
	db $dd                                           ; $4d53: $dd
	db $fd                                           ; $4d54: $fd
	ld a, l                                          ; $4d55: $7d
	ld [hl], $9e                                     ; $4d56: $36 $9e
	di                                               ; $4d58: $f3
	ei                                               ; $4d59: $fb
	sub [hl]                                         ; $4d5a: $96
	inc b                                            ; $4d5b: $04
	ld [$f7ff], sp                                   ; $4d5c: $08 $ff $f7
	pop af                                           ; $4d5f: $f1
	call z, $e6cc                                    ; $4d60: $cc $cc $e6
	ld [hl], a                                       ; $4d63: $77
	ld l, [hl]                                       ; $4d64: $6e
	ld c, b                                          ; $4d65: $48
	ld a, d                                          ; $4d66: $7a
	or l                                             ; $4d67: $b5
	ld a, a                                          ; $4d68: $7f
	dec d                                            ; $4d69: $15
	sub [hl]                                         ; $4d6a: $96
	add b                                            ; $4d6b: $80
	ld bc, $a000                                     ; $4d6c: $01 $00 $a0
	ld d, b                                          ; $4d6f: $50
	xor b                                            ; $4d70: $a8
	rst $38                                          ; $4d71: $ff
	rra                                              ; $4d72: $1f
	rlca                                             ; $4d73: $07
	ld hl, sp+$7e                                    ; $4d74: $f8 $7e
	adc b                                            ; $4d76: $88

Jump_059_4d77:
	sbc l                                            ; $4d77: $9d
	jr c, jr_059_4d7d                                ; $4d78: $38 $03

	db $dd                                           ; $4d7a: $dd
	rst $38                                          ; $4d7b: $ff
	sbc l                                            ; $4d7c: $9d

jr_059_4d7d:
	ld a, a                                          ; $4d7d: $7f
	ccf                                              ; $4d7e: $3f
	ld e, a                                          ; $4d7f: $5f
	db $ec                                           ; $4d80: $ec
	ld h, $c0                                        ; $4d81: $26 $c0
	ld [hl], h                                       ; $4d83: $74
	call nc, $039e                                   ; $4d84: $d4 $9e $03
	sbc $02                                          ; $4d87: $de $02
	ld a, d                                          ; $4d89: $7a
	ld [bc], a                                       ; $4d8a: $02
	rst SubAFromDE                                          ; $4d8b: $df
	cp $de                                           ; $4d8c: $fe $de
	rst $38                                          ; $4d8e: $ff
	sbc l                                            ; $4d8f: $9d
	jr nc, @+$34                                     ; $4d90: $30 $32

	sbc $33                                          ; $4d92: $de $33
	sbc h                                            ; $4d94: $9c
	ld [hl+], a                                      ; $4d95: $22
	ld h, $26                                        ; $4d96: $26 $26
	call c, $9acc                                    ; $4d98: $dc $cc $9a
	db $dd                                           ; $4d9b: $dd
	reti                                             ; $4d9c: $d9


	reti                                             ; $4d9d: $d9


	inc sp                                           ; $4d9e: $33
	ld [hl], e                                       ; $4d9f: $73
	call c, $8077                                    ; $4da0: $dc $77 $80
	ld a, a                                          ; $4da3: $7f
	rst GetHLinHL                                          ; $4da4: $cf
	adc a                                            ; $4da5: $8f
	adc [hl]                                         ; $4da6: $8e
	adc l                                            ; $4da7: $8d

jr_059_4da8:
	adc l                                            ; $4da8: $8d
	adc [hl]                                         ; $4da9: $8e
	adc h                                            ; $4daa: $8c
	adc b                                            ; $4dab: $88
	ld d, b                                          ; $4dac: $50
	jr nc, jr_059_4da8                               ; $4dad: $30 $f9

	ld sp, hl                                        ; $4daf: $f9
	di                                               ; $4db0: $f3
	pop af                                           ; $4db1: $f1
	rst SubAFromBC                                          ; $4db2: $e7
	and $bf                                          ; $4db3: $e6 $bf
	rst AddAOntoHL                                          ; $4db5: $ef
	rst JumpTable                                          ; $4db6: $c7
	add a                                            ; $4db7: $87
	ld c, $0e                                        ; $4db8: $0e $0e
	jr jr_059_4dd5                                   ; $4dba: $18 $19

	cp a                                             ; $4dbc: $bf
	rst AddAOntoHL                                          ; $4dbd: $ef
	rst GetHLinHL                                          ; $4dbe: $cf
	sbc a                                            ; $4dbf: $9f
	sub b                                            ; $4dc0: $90
	dec sp                                           ; $4dc1: $3b
	sbc b                                            ; $4dc2: $98
	jr nc, jr_059_4e05                               ; $4dc3: $30 $40

Jump_059_4dc5:
	rst $38                                          ; $4dc5: $ff
	rst $38                                          ; $4dc6: $ff
	cp h                                             ; $4dc7: $bc
	ld a, b                                          ; $4dc8: $78
	ld a, a                                          ; $4dc9: $7f
	ld a, d                                          ; $4dca: $7a
	ld a, [hl+]                                      ; $4dcb: $2a
	sub d                                            ; $4dcc: $92
	db $e3                                           ; $4dcd: $e3
	ld a, a                                          ; $4dce: $7f
	db $fc                                           ; $4dcf: $fc
	add hl, sp                                       ; $4dd0: $39
	db $e3                                           ; $4dd1: $e3
	add a                                            ; $4dd2: $87
	rrca                                             ; $4dd3: $0f
	ld a, a                                          ; $4dd4: $7f

jr_059_4dd5:
	db $fc                                           ; $4dd5: $fc
	add b                                            ; $4dd6: $80
	inc bc                                           ; $4dd7: $03
	rst JumpTable                                          ; $4dd8: $c7
	rra                                              ; $4dd9: $1f
	ld a, d                                          ; $4dda: $7a
	or $80                                           ; $4ddb: $f6 $80
	ld hl, sp-$1d                                    ; $4ddd: $f8 $e3
	adc a                                            ; $4ddf: $8f
	ld hl, sp-$80                                    ; $4de0: $f8 $80
	ld hl, sp-$10                                    ; $4de2: $f8 $f0
	ld bc, $5c27                                     ; $4de4: $01 $27 $5c
	ldh a, [hDisp0_OBP1]                                     ; $4de7: $f0 $87
	rst $38                                          ; $4de9: $ff
	ret nz                                           ; $4dea: $c0

	add b                                            ; $4deb: $80
	cp $08                                           ; $4dec: $fe $08
	add sp, -$08                                     ; $4dee: $e8 $f8
	jr @+$0b                                         ; $4df0: $18 $09

	jp z, $f8e8                                      ; $4df2: $ca $e8 $f8

	db $fc                                           ; $4df5: $fc
	inc e                                            ; $4df6: $1c
	inc c                                            ; $4df7: $0c
	add sp, -$08                                     ; $4df8: $e8 $f8
	jr c, jr_059_4e14                                ; $4dfa: $38 $18

	adc e                                            ; $4dfc: $8b
	add hl, bc                                       ; $4dfd: $09
	ld sp, $6333                                     ; $4dfe: $31 $33 $63
	ld h, e                                          ; $4e01: $63
	jp $07c7                                         ; $4e02: $c3 $c7 $07


jr_059_4e05:
	adc a                                            ; $4e05: $8f
	ld de, $2212                                     ; $4e06: $11 $12 $22
	ld b, d                                          ; $4e09: $42
	ld b, e                                          ; $4e0a: $43
	ld b, $84                                        ; $4e0b: $06 $84
	ld a, [bc]                                       ; $4e0d: $0a
	rst $38                                          ; $4e0e: $ff
	rst $38                                          ; $4e0f: $ff
	rst SubAFromDE                                          ; $4e10: $df
	sbc $bf                                          ; $4e11: $de $bf
	rst SubAFromDE                                          ; $4e13: $df

jr_059_4e14:
	ld a, a                                          ; $4e14: $7f
	sbc b                                            ; $4e15: $98
	dec bc                                           ; $4e16: $0b
	ld a, a                                          ; $4e17: $7f
	add a                                            ; $4e18: $87
	rlca                                             ; $4e19: $07
	dec bc                                           ; $4e1a: $0b
	rlca                                             ; $4e1b: $07
	rrca                                             ; $4e1c: $0f
	ld [hl], h                                       ; $4e1d: $74
	ld d, b                                          ; $4e1e: $50
	call c, Call_059_7eff                            ; $4e1f: $dc $ff $7e
	ld a, c                                          ; $4e22: $79
	ld [hl], h                                       ; $4e23: $74
	ld c, [hl]                                       ; $4e24: $4e
	add b                                            ; $4e25: $80
	rst SubAFromDE                                          ; $4e26: $df
	cp [hl]                                          ; $4e27: $be
	cp l                                             ; $4e28: $bd
	db $ed                                           ; $4e29: $ed
	call $f035                                       ; $4e2a: $cd $35 $f0
	db $fd                                           ; $4e2d: $fd
	ld [hl], a                                       ; $4e2e: $77
	rst GetHLinHL                                          ; $4e2f: $cf
	add $86                                          ; $4e30: $c6 $86
	add [hl]                                         ; $4e32: $86
	adc [hl]                                         ; $4e33: $8e
	rrca                                             ; $4e34: $0f
	ld [bc], a                                       ; $4e35: $02
	ld c, $1e                                        ; $4e36: $0e $1e
	sbc $36                                          ; $4e38: $de $36
	rst SubAFromDE                                          ; $4e3a: $df
	cp a                                             ; $4e3b: $bf
	db $fd                                           ; $4e3c: $fd
	ld a, l                                          ; $4e3d: $7d
	ld a, a                                          ; $4e3e: $7f
	ld a, [hl]                                       ; $4e3f: $7e
	db $e3                                           ; $4e40: $e3
	rst GetHLinHL                                          ; $4e41: $cf
	ld a, $7e                                        ; $4e42: $3e $7e
	ld a, [hl]                                       ; $4e44: $7e
	ld a, l                                          ; $4e45: $7d
	ld h, e                                          ; $4e46: $63
	sbc [hl]                                         ; $4e47: $9e
	db $fd                                           ; $4e48: $fd
	ld a, b                                          ; $4e49: $78
	ld a, [hl+]                                      ; $4e4a: $2a
	sbc d                                            ; $4e4b: $9a
	ret c                                            ; $4e4c: $d8

	pop bc                                           ; $4e4d: $c1
	add l                                            ; $4e4e: $85
	ld [$797d], sp                                   ; $4e4f: $08 $7d $79
	add sp, -$6b                                     ; $4e52: $e8 $95
	ld b, $18                                        ; $4e54: $06 $18
	ld b, b                                          ; $4e56: $40
	sub l                                            ; $4e57: $95
	nop                                              ; $4e58: $00
	adc $1f                                          ; $4e59: $ce $1f
	ld a, d                                          ; $4e5b: $7a
	rst $38                                          ; $4e5c: $ff
	xor d                                            ; $4e5d: $aa
	ld a, e                                          ; $4e5e: $7b
	cp $9a                                           ; $4e5f: $fe $9a
	ld sp, $05c0                                     ; $4e61: $31 $c0 $05
	nop                                              ; $4e64: $00
	ld d, l                                          ; $4e65: $55
	ld a, e                                          ; $4e66: $7b
	cp $9c                                           ; $4e67: $fe $9c
	rra                                              ; $4e69: $1f
	dec bc                                           ; $4e6a: $0b
	ld bc, $9dfc                                     ; $4e6b: $01 $fc $9d
	ldh [$f4], a                                     ; $4e6e: $e0 $f4
	ld [hl], a                                       ; $4e70: $77
	ld [de], a                                       ; $4e71: $12
	rst SubAFromDE                                          ; $4e72: $df
	rst $38                                          ; $4e73: $ff
	sub a                                            ; $4e74: $97
	call nc, $9f7a                                   ; $4e75: $d4 $7a $9f
	rst SubAFromDE                                          ; $4e78: $df
	rst FarCall                                          ; $4e79: $f7
	ld l, e                                          ; $4e7a: $6b
	dec [hl]                                         ; $4e7b: $35
	db $10                                           ; $4e7c: $10
	db $fd                                           ; $4e7d: $fd
	sub e                                            ; $4e7e: $93
	ld [$ca94], sp                                   ; $4e7f: $08 $94 $ca
	rst AddAOntoHL                                          ; $4e82: $ef
	nop                                              ; $4e83: $00
	add b                                            ; $4e84: $80
	ld b, b                                          ; $4e85: $40
	and b                                            ; $4e86: $a0
	ret nc                                           ; $4e87: $d0

	add sp, -$04                                     ; $4e88: $e8 $fc
	sbc $f9                                          ; $4e8a: $de $f9
	sub e                                            ; $4e8c: $93
	ldh [$38], a                                     ; $4e8d: $e0 $38
	inc d                                            ; $4e8f: $14
	inc c                                            ; $4e90: $0c
	ld d, $0e                                        ; $4e91: $16 $0e
	ld d, $0b                                        ; $4e93: $16 $0b
	rra                                              ; $4e95: $1f
	rlca                                             ; $4e96: $07
	inc bc                                           ; $4e97: $03
	inc bc                                           ; $4e98: $03
	sbc $01                                          ; $4e99: $de $01
	ld a, [$905d]                                    ; $4e9b: $fa $5d $90
	sub a                                            ; $4e9e: $97
	ld [bc], a                                       ; $4e9f: $02
	ld b, $06                                        ; $4ea0: $06 $06
	ld a, [de]                                       ; $4ea2: $1a
	ld h, h                                          ; $4ea3: $64
	cp l                                             ; $4ea4: $bd
	reti                                             ; $4ea5: $d9


	db $eb                                           ; $4ea6: $eb
	call c, $80ff                                    ; $4ea7: $dc $ff $80
	adc $3e                                          ; $4eaa: $ce $3e
	db $ec                                           ; $4eac: $ec
	ld h, [hl]                                       ; $4ead: $66
	ld l, h                                          ; $4eae: $6c
	ld c, h                                          ; $4eaf: $4c
	call $9b99                                       ; $4eb0: $cd $99 $9b
	ld [hl], $7d                                     ; $4eb3: $36 $7d
	sbc c                                            ; $4eb5: $99
	sub e                                            ; $4eb6: $93
	or e                                             ; $4eb7: $b3
	ld [hl-], a                                      ; $4eb8: $32
	ld h, a                                          ; $4eb9: $67
	ld h, [hl]                                       ; $4eba: $66
	call z, $ff88                                    ; $4ebb: $cc $88 $ff
	rst $38                                          ; $4ebe: $ff
	rst AddAOntoHL                                          ; $4ebf: $ef
	rst SubAFromDE                                          ; $4ec0: $df
	cp a                                             ; $4ec1: $bf
	ld a, [hl]                                       ; $4ec2: $7e
	cp $7f                                           ; $4ec3: $fe $7f
	db $10                                           ; $4ec5: $10
	jr nz, jr_059_4f08                               ; $4ec6: $20 $40

	add b                                            ; $4ec8: $80
	ld a, e                                          ; $4ec9: $7b
	ret                                              ; $4eca: $c9


	ld a, a                                          ; $4ecb: $7f
	ld [hl], b                                       ; $4ecc: $70
	adc [hl]                                         ; $4ecd: $8e
	sbc $9c                                          ; $4ece: $de $9c
	cp h                                             ; $4ed0: $bc
	ld a, b                                          ; $4ed1: $78
	ld a, c                                          ; $4ed2: $79
	pop af                                           ; $4ed3: $f1
	pop af                                           ; $4ed4: $f1
	ld sp, $6321                                     ; $4ed5: $31 $21 $63
	ld b, e                                          ; $4ed8: $43
	add a                                            ; $4ed9: $87
	add a                                            ; $4eda: $87
	rrca                                             ; $4edb: $0f
	rrca                                             ; $4edc: $0f
	ld a, a                                          ; $4edd: $7f
	ld c, a                                          ; $4ede: $4f
	sbc $9f                                          ; $4edf: $de $9f
	ld a, b                                          ; $4ee1: $78
	adc a                                            ; $4ee2: $8f
	ld [hl], h                                       ; $4ee3: $74
	add d                                            ; $4ee4: $82
	ld a, h                                          ; $4ee5: $7c
	xor d                                            ; $4ee6: $aa
	add b                                            ; $4ee7: $80
	cp b                                             ; $4ee8: $b8
	or b                                             ; $4ee9: $b0
	db $f4                                           ; $4eea: $f4
	call nz, $e39e                                   ; $4eeb: $c4 $9e $e3
	rlca                                             ; $4eee: $07
	adc h                                            ; $4eef: $8c
	ldh a, [$80]                                     ; $4ef0: $f0 $80
	rst $38                                          ; $4ef2: $ff
	cp a                                             ; $4ef3: $bf
	ld a, l                                          ; $4ef4: $7d
	cp $f9                                           ; $4ef5: $fe $f9
	inc bc                                           ; $4ef7: $03
	rrca                                             ; $4ef8: $0f
	ld a, a                                          ; $4ef9: $7f
	ldh [rP1], a                                     ; $4efa: $e0 $00
	nop                                              ; $4efc: $00
	add h                                            ; $4efd: $84
	add $47                                          ; $4efe: $c6 $47
	ld b, e                                          ; $4f00: $43
	ld b, c                                          ; $4f01: $41
	rrca                                             ; $4f02: $0f
	rst JumpTable                                          ; $4f03: $c7
	di                                               ; $4f04: $f3
	dec de                                           ; $4f05: $1b
	adc c                                            ; $4f06: $89
	add b                                            ; $4f07: $80

jr_059_4f08:
	ret z                                            ; $4f08: $c8

	call z, Call_059_78cf                            ; $4f09: $cc $cf $78
	ld a, c                                          ; $4f0c: $79
	dec [hl]                                         ; $4f0d: $35
	ld [hl-], a                                      ; $4f0e: $32
	xor b                                            ; $4f0f: $a8
	db $e4                                           ; $4f10: $e4
	call nc, $89c8                                   ; $4f11: $d4 $c8 $89
	sub d                                            ; $4f14: $92
	jp nc, Jump_059_64e4                             ; $4f15: $d2 $e4 $64

	ld c, b                                          ; $4f18: $48
	adc b                                            ; $4f19: $88
	db $10                                           ; $4f1a: $10

jr_059_4f1b:
	ld c, $0e                                        ; $4f1b: $0e $0e
	ld e, $1d                                        ; $4f1d: $1e $1d
	dec a                                            ; $4f1f: $3d
	inc a                                            ; $4f20: $3c
	ld [hl], b                                       ; $4f21: $70
	ld h, b                                          ; $4f22: $60
	inc c                                            ; $4f23: $0c
	ld a, [bc]                                       ; $4f24: $0a
	inc d                                            ; $4f25: $14
	jr jr_059_4fa5                                   ; $4f26: $18 $7d

	ld a, [bc]                                       ; $4f28: $0a
	rst SubAFromDE                                          ; $4f29: $df
	ld b, b                                          ; $4f2a: $40
	call c, $98ff                                    ; $4f2b: $dc $ff $98
	rrca                                             ; $4f2e: $0f
	rlca                                             ; $4f2f: $07
	rrca                                             ; $4f30: $0f
	cpl                                              ; $4f31: $2f
	rra                                              ; $4f32: $1f
	cpl                                              ; $4f33: $2f
	ld e, a                                          ; $4f34: $5f
	halt                                             ; $4f35: $76
	ld bc, $ac7f                                     ; $4f36: $01 $7f $ac
	ld a, a                                          ; $4f39: $7f
	jr jr_059_4f1b                                   ; $4f3a: $18 $df

	ei                                               ; $4f3c: $fb
	sbc e                                            ; $4f3d: $9b
	cp $f6                                           ; $4f3e: $fe $f6
	cp [hl]                                          ; $4f40: $be
	cp [hl]                                          ; $4f41: $be
	db $dd                                           ; $4f42: $dd
	ld a, h                                          ; $4f43: $7c
	rst SubAFromDE                                          ; $4f44: $df
	ld hl, sp-$6b                                    ; $4f45: $f8 $95
	cp a                                             ; $4f47: $bf
	ccf                                              ; $4f48: $3f
	ld e, $5e                                        ; $4f49: $1e $5e
	ld a, [hl]                                       ; $4f4b: $7e
	ld a, [hl]                                       ; $4f4c: $7e
	dec a                                            ; $4f4d: $3d
	di                                               ; $4f4e: $f3
	ld e, $1e                                        ; $4f4f: $1e $1e
	db $dd                                           ; $4f51: $dd
	dec a                                            ; $4f52: $3d
	adc e                                            ; $4f53: $8b
	ld [hl], e                                       ; $4f54: $73
	ld c, a                                          ; $4f55: $4f
	ld hl, sp-$09                                    ; $4f56: $f8 $f7
	jp c, $baef                                      ; $4f58: $da $ef $ba

	ld [hl], a                                       ; $4f5b: $77
	jp nc, $fed7                                     ; $4f5c: $d2 $d7 $fe

	ld hl, sp-$1b                                    ; $4f5f: $f8 $e5
	sbc b                                            ; $4f61: $98
	ld e, l                                          ; $4f62: $5d
	ret c                                            ; $4f63: $d8

	cp l                                             ; $4f64: $bd
	cp b                                             ; $4f65: $b8
	xor b                                            ; $4f66: $a8
	db $fd                                           ; $4f67: $fd
	ld a, e                                          ; $4f68: $7b
	cp $9c                                           ; $4f69: $fe $9c
	db $fc                                           ; $4f6b: $fc
	xor b                                            ; $4f6c: $a8
	pop hl                                           ; $4f6d: $e1
	halt                                             ; $4f6e: $76
	call nc, Call_059_5580                           ; $4f6f: $d4 $80 $55
	ld bc, $1854                                     ; $4f72: $01 $54 $18
	xor d                                            ; $4f75: $aa
	db $fd                                           ; $4f76: $fd
	and b                                            ; $4f77: $a0
	jp $3586                                         ; $4f78: $c3 $86 $35


	halt                                             ; $4f7b: $76
	push de                                          ; $4f7c: $d5
	ld d, l                                          ; $4f7d: $55
	ld [bc], a                                       ; $4f7e: $02
	ld e, h                                          ; $4f7f: $5c
	jr nc, jr_059_4fc3                               ; $4f80: $30 $41

	add d                                            ; $4f82: $82
	ld bc, $4022                                     ; $4f83: $01 $22 $40
	nop                                              ; $4f86: $00
	inc b                                            ; $4f87: $04
	db $10                                           ; $4f88: $10
	ld b, b                                          ; $4f89: $40
	ld bc, $8044                                     ; $4f8a: $01 $44 $80
	cp a                                             ; $4f8d: $bf
	rst $38                                          ; $4f8e: $ff
	ei                                               ; $4f8f: $fb
	sbc c                                            ; $4f90: $99
	rst AddAOntoHL                                          ; $4f91: $ef
	cp a                                             ; $4f92: $bf
	cp $bb                                           ; $4f93: $fe $bb
	ld a, a                                          ; $4f95: $7f
	ld [$c97a], sp                                   ; $4f96: $08 $7a $c9
	sbc d                                            ; $4f99: $9a
	inc l                                            ; $4f9a: $2c
	rlca                                             ; $4f9b: $07
	inc bc                                           ; $4f9c: $03
	nop                                              ; $4f9d: $00
	rst FarCall                                          ; $4f9e: $f7
	ld a, d                                          ; $4f9f: $7a
	ld e, l                                          ; $4fa0: $5d
	sub e                                            ; $4fa1: $93
	db $d3                                           ; $4fa2: $d3
	ld hl, sp-$04                                    ; $4fa3: $f8 $fc

jr_059_4fa5:
	rst $38                                          ; $4fa5: $ff
	rst SubAFromBC                                          ; $4fa6: $e7
	ld [hl], d                                       ; $4fa7: $72

jr_059_4fa8:
	dec sp                                           ; $4fa8: $3b
	ld b, $01                                        ; $4fa9: $06 $01
	nop                                              ; $4fab: $00
	call nz, Call_059_797e                           ; $4fac: $c4 $7e $79
	ld a, e                                          ; $4faf: $7b
	sbc c                                            ; $4fb0: $99
	ld sp, hl                                        ; $4fb1: $f9
	cp $ff                                           ; $4fb2: $fe $ff
	dec sp                                           ; $4fb4: $3b
	add c                                            ; $4fb5: $81
	rst SubAFromHL                                          ; $4fb6: $d7
	ld a, c                                          ; $4fb7: $79
	ld a, c                                          ; $4fb8: $79
	sbc e                                            ; $4fb9: $9b
	rlca                                             ; $4fba: $07
	jp $0c10                                         ; $4fbb: $c3 $10 $0c


	ld [hl], l                                       ; $4fbe: $75
	ld l, c                                          ; $4fbf: $69

jr_059_4fc0:
	add a                                            ; $4fc0: $87
	ld hl, sp+$3c                                    ; $4fc1: $f8 $3c

jr_059_4fc3:
	rst AddAOntoHL                                          ; $4fc3: $ef
	di                                               ; $4fc4: $f3
	add c                                            ; $4fc5: $81
	add e                                            ; $4fc6: $83
	add $ed                                          ; $4fc7: $c6 $ed
	ei                                               ; $4fc9: $fb
	push af                                          ; $4fca: $f5
	db $eb                                           ; $4fcb: $eb
	ld d, l                                          ; $4fcc: $55
	ld a, a                                          ; $4fcd: $7f
	ld a, a                                          ; $4fce: $7f
	ccf                                              ; $4fcf: $3f
	rra                                              ; $4fd0: $1f
	rra                                              ; $4fd1: $1f
	ccf                                              ; $4fd2: $3f
	ld a, a                                          ; $4fd3: $7f
	rst $38                                          ; $4fd4: $ff
	ld [de], a                                       ; $4fd5: $12
	dec h                                            ; $4fd6: $25
	pop bc                                           ; $4fd7: $c1
	add e                                            ; $4fd8: $83
	sbc $07                                          ; $4fd9: $de $07
	sub e                                            ; $4fdb: $93
	rrca                                             ; $4fdc: $0f
	dec e                                            ; $4fdd: $1d
	ld a, [hl-]                                      ; $4fde: $3a
	or $cc                                           ; $4fdf: $f6 $cc
	cp b                                             ; $4fe1: $b8
	ld [hl], c                                       ; $4fe2: $71
	pop hl                                           ; $4fe3: $e1
	add d                                            ; $4fe4: $82
	ld hl, sp-$0f                                    ; $4fe5: $f8 $f1
	db $e3                                           ; $4fe7: $e3
	ld a, e                                          ; $4fe8: $7b
	call $467f                                       ; $4fe9: $cd $7f $46
	halt                                             ; $4fec: $76
	ret nc                                           ; $4fed: $d0

	ld a, [hl]                                       ; $4fee: $7e
	rst GetHLinHL                                          ; $4fef: $cf
	sub l                                            ; $4ff0: $95
	ret nz                                           ; $4ff1: $c0

	ld hl, sp-$01                                    ; $4ff2: $f8 $ff
	ei                                               ; $4ff4: $fb
	rst FarCall                                          ; $4ff5: $f7
	db $eb                                           ; $4ff6: $eb
	rst FarCall                                          ; $4ff7: $f7
	rst SubAFromBC                                          ; $4ff8: $e7
	rst GetHLinHL                                          ; $4ff9: $cf
	adc a                                            ; $4ffa: $8f
	ld sp, hl                                        ; $4ffb: $f9
	rst SubAFromDE                                          ; $4ffc: $df
	ldh [c], a                                       ; $4ffd: $e2
	sbc c                                            ; $4ffe: $99
	call nz, $88c5                                   ; $4fff: $c4 $c5 $88
	adc c                                            ; $5002: $89
	ld [$7b14], sp                                   ; $5003: $08 $14 $7b
	jp $3e80                                         ; $5006: $c3 $80 $3e


	ld a, a                                          ; $5009: $7f
	ld a, [hl]                                       ; $500a: $7e
	rst $38                                          ; $500b: $ff
	ei                                               ; $500c: $fb
	ldh [$c1], a                                     ; $500d: $e0 $c1
	call nz, $bc90                                   ; $500f: $c4 $90 $bc
	ld sp, hl                                        ; $5012: $f9
	di                                               ; $5013: $f3
	rst SubAFromBC                                          ; $5014: $e7
	ld a, a                                          ; $5015: $7f
	ld a, [hl]                                       ; $5016: $7e
	ld a, b                                          ; $5017: $78
	pop hl                                           ; $5018: $e1
	jp $8c86                                         ; $5019: $c3 $86 $8c


	sbc b                                            ; $501c: $98
	ld h, e                                          ; $501d: $63
	rst JumpTable                                          ; $501e: $c7
	ld b, $09                                        ; $501f: $06 $09
	ld de, $9cc6                                     ; $5021: $11 $c6 $9c
	add hl, sp                                       ; $5024: $39
	sbc h                                            ; $5025: $9c
	jr c, jr_059_4fa8                                ; $5026: $38 $80

	pop hl                                           ; $5028: $e1
	add [hl]                                         ; $5029: $86
	ld [$6331], sp                                   ; $502a: $08 $31 $63
	rst JumpTable                                          ; $502d: $c7
	db $e3                                           ; $502e: $e3
	db $f4                                           ; $502f: $f4
	sbc d                                            ; $5030: $9a
	ld hl, $5624                                     ; $5031: $21 $24 $56
	xor h                                            ; $5034: $ac
	inc l                                            ; $5035: $2c
	ld h, $17                                        ; $5036: $26 $17
	ld a, l                                          ; $5038: $7d
	ld a, [$e0f2]                                    ; $5039: $fa $f2 $e0
	pop bc                                           ; $503c: $c1
	add c                                            ; $503d: $81
	jr nz, jr_059_4fc0                               ; $503e: $20 $80

	nop                                              ; $5040: $00
	inc bc                                           ; $5041: $03
	rlca                                             ; $5042: $07
	dec bc                                           ; $5043: $0b
	ld d, $2e                                        ; $5044: $16 $2e
	sub b                                            ; $5046: $90
	ld a, a                                          ; $5047: $7f
	and b                                            ; $5048: $a0
	sub a                                            ; $5049: $97
	ld b, b                                          ; $504a: $40
	add e                                            ; $504b: $83
	add [hl]                                         ; $504c: $86
	ld c, $1c                                        ; $504d: $0e $1c
	ret nz                                           ; $504f: $c0

	rst GetHLinHL                                          ; $5050: $cf
	cp b                                             ; $5051: $b8
	ld [hl], h                                       ; $5052: $74
	sbc c                                            ; $5053: $99
	ld a, a                                          ; $5054: $7f
	ld h, e                                          ; $5055: $63
	sbc [hl]                                         ; $5056: $9e
	add c                                            ; $5057: $81
	ld a, e                                          ; $5058: $7b
	sub c                                            ; $5059: $91
	cp $9d                                           ; $505a: $fe $9d
	rrca                                             ; $505c: $0f
	rst SubAFromBC                                          ; $505d: $e7
	call c, $9c1f                                    ; $505e: $dc $1f $9c
	ccf                                              ; $5061: $3f
	nop                                              ; $5062: $00
	add c                                            ; $5063: $81
	ld [hl], b                                       ; $5064: $70
	and $95                                          ; $5065: $e6 $95
	rlca                                             ; $5067: $07
	or $fc                                           ; $5068: $f6 $fc
	cp $f9                                           ; $506a: $fe $f9
	rst SubAFromBC                                          ; $506c: $e7
	xor $f4                                          ; $506d: $ee $f4
	rst $38                                          ; $506f: $ff
	ld hl, sp-$23                                    ; $5070: $f8 $dd
	ldh a, [$98]                                     ; $5072: $f0 $98
	pop af                                           ; $5074: $f1
	db $eb                                           ; $5075: $eb
	pop hl                                           ; $5076: $e1
	rst SubAFromDE                                          ; $5077: $df
	ccf                                              ; $5078: $3f
	ld l, a                                          ; $5079: $6f
	rst AddAOntoHL                                          ; $507a: $ef
	sbc $ff                                          ; $507b: $de $ff
	sbc l                                            ; $507d: $9d
	sbc $2f                                          ; $507e: $de $2f
	ld [hl], l                                       ; $5080: $75
	ld [hl], d                                       ; $5081: $72
	ld a, l                                          ; $5082: $7d
	sub h                                            ; $5083: $94
	add d                                            ; $5084: $82
	cp c                                             ; $5085: $b9
	jp c, Jump_059_68fe                              ; $5086: $da $fe $68

	and b                                            ; $5089: $a0
	or e                                             ; $508a: $b3
	pop af                                           ; $508b: $f1
	jp z, $b571                                      ; $508c: $ca $71 $b5

	or c                                             ; $508f: $b1
	or [hl]                                          ; $5090: $b6
	ld a, b                                          ; $5091: $78
	ld h, b                                          ; $5092: $60
	ld a, [bc]                                       ; $5093: $0a
	ld sp, $86ea                                     ; $5094: $31 $ea $86
	dec e                                            ; $5097: $1d
	ld a, d                                          ; $5098: $7a
	push de                                          ; $5099: $d5
	xor d                                            ; $509a: $aa
	ld d, l                                          ; $509b: $55
	xor d                                            ; $509c: $aa
	ld d, l                                          ; $509d: $55
	ld h, c                                          ; $509e: $61
	add d                                            ; $509f: $82
	dec b                                            ; $50a0: $05
	ld a, [hl+]                                      ; $50a1: $2a
	ld a, e                                          ; $50a2: $7b
	ld sp, hl                                        ; $50a3: $f9
	sbc d                                            ; $50a4: $9a
	xor d                                            ; $50a5: $aa
	or [hl]                                          ; $50a6: $b6
	ld d, l                                          ; $50a7: $55
	and [hl]                                         ; $50a8: $a6
	ld b, l                                          ; $50a9: $45
	ld a, e                                          ; $50aa: $7b
	cp $9a                                           ; $50ab: $fe $9a
	dec b                                            ; $50ad: $05
	ld b, c                                          ; $50ae: $41
	and d                                            ; $50af: $a2
	ld d, c                                          ; $50b0: $51
	or d                                             ; $50b1: $b2
	ld a, e                                          ; $50b2: $7b
	cp $8b                                           ; $50b3: $fe $8b
	ldh a, [c]                                       ; $50b5: $f2
	ld d, l                                          ; $50b6: $55
	add b                                            ; $50b7: $80
	ld d, l                                          ; $50b8: $55
	and b                                            ; $50b9: $a0
	ld d, l                                          ; $50ba: $55
	xor b                                            ; $50bb: $a8
	ld d, l                                          ; $50bc: $55
	xor d                                            ; $50bd: $aa
	xor d                                            ; $50be: $aa
	ld a, a                                          ; $50bf: $7f
	xor d                                            ; $50c0: $aa
	ld e, a                                          ; $50c1: $5f
	xor d                                            ; $50c2: $aa
	ld d, a                                          ; $50c3: $57
	xor d                                            ; $50c4: $aa
	ld d, l                                          ; $50c5: $55
	ld b, b                                          ; $50c6: $40
	nop                                              ; $50c7: $00
	ld d, h                                          ; $50c8: $54
	ld a, e                                          ; $50c9: $7b
	cp $7f                                           ; $50ca: $fe $7f
	ld [$b07e], a                                    ; $50cc: $ea $7e $b0
	sbc [hl]                                         ; $50cf: $9e
	xor e                                            ; $50d0: $ab
	ld a, e                                          ; $50d1: $7b
	cp $7f                                           ; $50d2: $fe $7f
	ld [$e97e], a                                    ; $50d4: $ea $7e $e9
	add a                                            ; $50d7: $87

Call_059_50d8:
	rrca                                             ; $50d8: $0f
	ld b, $03                                        ; $50d9: $06 $03
	inc bc                                           ; $50db: $03
	ld b, c                                          ; $50dc: $41
	dec bc                                           ; $50dd: $0b
	add b                                            ; $50de: $80
	ret nz                                           ; $50df: $c0

	ldh a, [$f8]                                     ; $50e0: $f0 $f8
	db $fc                                           ; $50e2: $fc
	db $fc                                           ; $50e3: $fc
	cp [hl]                                          ; $50e4: $be
	db $f4                                           ; $50e5: $f4
	pop af                                           ; $50e6: $f1
	db $e3                                           ; $50e7: $e3
	db $fd                                           ; $50e8: $fd
	xor a                                            ; $50e9: $af
	ld e, d                                          ; $50ea: $5a
	xor l                                            ; $50eb: $ad
	ld b, $9d                                        ; $50ec: $06 $9d
	ld c, $1d                                        ; $50ee: $0e $1d
	ld a, e                                          ; $50f0: $7b
	ld [hl], e                                       ; $50f1: $73
	ld a, [hl]                                       ; $50f2: $7e
	reti                                             ; $50f3: $d9


	adc l                                            ; $50f4: $8d
	rrca                                             ; $50f5: $0f
	xor e                                            ; $50f6: $ab
	ld d, a                                          ; $50f7: $57
	xor l                                            ; $50f8: $ad
	ld e, l                                          ; $50f9: $5d
	or d                                             ; $50fa: $b2
	ld [hl], b                                       ; $50fb: $70
	or l                                             ; $50fc: $b5
	ld a, [rIE]                                    ; $50fd: $fa $ff $ff
	ld a, [$fdf2]                                    ; $5100: $fa $f2 $fd
	rst AddAOntoHL                                          ; $5103: $ef
	ld [$dff5], a                                    ; $5104: $ea $f5 $df
	ld a, d                                          ; $5107: $7a
	and b                                            ; $5108: $a0
	add a                                            ; $5109: $87
	ccf                                              ; $510a: $3f
	ld e, a                                          ; $510b: $5f
	sub e                                            ; $510c: $93
	db $e3                                           ; $510d: $e3
	inc b                                            ; $510e: $04
	add l                                            ; $510f: $85
	adc d                                            ; $5110: $8a
	sub $fd                                          ; $5111: $d6 $fd
	db $fd                                           ; $5113: $fd
	cp $ff                                           ; $5114: $fe $ff
	db $e3                                           ; $5116: $e3
	db $d3                                           ; $5117: $d3
	ld d, c                                          ; $5118: $51
	xor c                                            ; $5119: $a9
	call nc, $aa54                                   ; $511a: $d4 $54 $aa
	ld d, [hl]                                       ; $511d: $56
	db $fc                                           ; $511e: $fc
	ld a, h                                          ; $511f: $7c
	cp $fe                                           ; $5120: $fe $fe
	ld a, c                                          ; $5122: $79
	xor e                                            ; $5123: $ab
	sbc c                                            ; $5124: $99
	rst $38                                          ; $5125: $ff
	ld e, $be                                        ; $5126: $1e $be
	ld a, h                                          ; $5128: $7c
	db $fc                                           ; $5129: $fc
	ld hl, sp+$7b                                    ; $512a: $f8 $7b
	ld b, e                                          ; $512c: $43
	ld [hl], a                                       ; $512d: $77
	ld [hl-], a                                      ; $512e: $32
	ld [hl], a                                       ; $512f: $77
	ret nz                                           ; $5130: $c0

	sbc b                                            ; $5131: $98
	ld de, $2925                                     ; $5132: $11 $25 $29
	dec h                                            ; $5135: $25
	ld c, a                                          ; $5136: $4f
	ld e, e                                          ; $5137: $5b
	sbc e                                            ; $5138: $9b
	ld a, d                                          ; $5139: $7a
	ld b, c                                          ; $513a: $41
	adc [hl]                                         ; $513b: $8e
	rst FarCall                                          ; $513c: $f7
	ei                                               ; $513d: $fb
	di                                               ; $513e: $f3
	and $e6                                          ; $513f: $e6 $e6
	call nz, $18cc                                   ; $5141: $c4 $cc $18
	jr nc, jr_059_51a6                               ; $5144: $30 $60

	ret nz                                           ; $5146: $c0

	add c                                            ; $5147: $81
	add d                                            ; $5148: $82
	add [hl]                                         ; $5149: $86
	inc sp                                           ; $514a: $33
	rst SubAFromBC                                          ; $514b: $e7
	rst GetHLinHL                                          ; $514c: $cf
	ld a, c                                          ; $514d: $79
	ld a, c                                          ; $514e: $79
	rst SubAFromDE                                          ; $514f: $df
	ld a, [hl]                                       ; $5150: $7e
	sub h                                            ; $5151: $94
	ld [hl], $78                                     ; $5152: $36 $78
	ldh a, [$e0]                                     ; $5154: $f0 $e0
	add c                                            ; $5156: $81
	ld bc, $0202                                     ; $5157: $01 $02 $02
	rst GetHLinHL                                          ; $515a: $cf
	sbc h                                            ; $515b: $9c
	jr nc, jr_059_51d7                               ; $515c: $30 $79

	ld c, a                                          ; $515e: $4f
	rst $38                                          ; $515f: $ff
	rst SubAFromDE                                          ; $5160: $df
	ld e, b                                          ; $5161: $58
	rst SubAFromDE                                          ; $5162: $df
	or b                                             ; $5163: $b0
	rst SubAFromDE                                          ; $5164: $df
	ld l, b                                          ; $5165: $68
	add [hl]                                         ; $5166: $86
	pop de                                           ; $5167: $d1
	jp nc, $0202                                     ; $5168: $d2 $02 $02

	inc b                                            ; $516b: $04
	inc b                                            ; $516c: $04
	ld [$1109], sp                                   ; $516d: $08 $09 $11
	inc de                                           ; $5170: $13
	inc e                                            ; $5171: $1c
	inc l                                            ; $5172: $2c
	ld e, h                                          ; $5173: $5c
	cp b                                             ; $5174: $b8
	ld a, b                                          ; $5175: $78
	or b                                             ; $5176: $b0
	ld [hl], b                                       ; $5177: $70
	ldh [$3c], a                                     ; $5178: $e0 $3c
	ld a, b                                          ; $517a: $78
	ld a, b                                          ; $517b: $78
	ldh a, [$f0]                                     ; $517c: $f0 $f0
	ldh [$e0], a                                     ; $517e: $e0 $e0
	ld [hl], d                                       ; $5180: $72
	call nz, $287d                                   ; $5181: $c4 $7d $28
	sbc [hl]                                         ; $5184: $9e
	ld [bc], a                                       ; $5185: $02
	ld h, h                                          ; $5186: $64
	rst SubAFromBC                                          ; $5187: $e7
	sbc l                                            ; $5188: $9d
	nop                                              ; $5189: $00
	ccf                                              ; $518a: $3f
	ld [hl], c                                       ; $518b: $71
	inc [hl]                                         ; $518c: $34
	rst SubAFromDE                                          ; $518d: $df
	rst $38                                          ; $518e: $ff
	ld a, e                                          ; $518f: $7b
	sub h                                            ; $5190: $94
	ld [hl], l                                       ; $5191: $75
	ld a, [hl]                                       ; $5192: $7e
	adc d                                            ; $5193: $8a
	ld e, a                                          ; $5194: $5f
	push de                                          ; $5195: $d5
	db $fd                                           ; $5196: $fd
	rst SubAFromHL                                          ; $5197: $d7
	cp [hl]                                          ; $5198: $be
	or b                                             ; $5199: $b0
	db $eb                                           ; $519a: $eb
	rst SubAFromHL                                          ; $519b: $d7
	cpl                                              ; $519c: $2f
	db $eb                                           ; $519d: $eb
	jp $c1ea                                         ; $519e: $c3 $ea $c1


	rst GetHLinHL                                          ; $51a1: $cf
	sub a                                            ; $51a2: $97
	xor a                                            ; $51a3: $af
	rst SubAFromHL                                          ; $51a4: $d7
	db $fd                                           ; $51a5: $fd

jr_059_51a6:
	rst FarCall                                          ; $51a6: $f7
	rst SubAFromHL                                          ; $51a7: $d7
	scf                                              ; $51a8: $37
	ld a, b                                          ; $51a9: $78
	db $ec                                           ; $51aa: $ec
	sbc e                                            ; $51ab: $9b
	rst AddAOntoHL                                          ; $51ac: $ef
	and e                                            ; $51ad: $a3
	adc a                                            ; $51ae: $8f
	cpl                                              ; $51af: $2f
	ld [hl], b                                       ; $51b0: $70
	ld l, $95                                        ; $51b1: $2e $95
	xor $d5                                          ; $51b3: $ee $d5
	xor $d5                                          ; $51b5: $ee $d5
	xor [hl]                                         ; $51b7: $ae
	call nc, $cfac                                   ; $51b8: $d4 $ac $cf
	pop de                                           ; $51bb: $d1
	ld [$fe7b], a                                    ; $51bc: $ea $7b $fe
	adc c                                            ; $51bf: $89
	xor e                                            ; $51c0: $ab
	db $d3                                           ; $51c1: $d3
	or b                                             ; $51c2: $b0
	xor b                                            ; $51c3: $a8
	ld d, b                                          ; $51c4: $50
	and b                                            ; $51c5: $a0
	ld bc, $380f                                     ; $51c6: $01 $0f $38
	ldh [rP1], a                                     ; $51c9: $e0 $00
	ld d, a                                          ; $51cb: $57
	xor a                                            ; $51cc: $af
	ld e, a                                          ; $51cd: $5f
	cp $f0                                           ; $51ce: $fe $f0
	rst JumpTable                                          ; $51d0: $c7
	rra                                              ; $51d1: $1f
	rst $38                                          ; $51d2: $ff
	dec bc                                           ; $51d3: $0b
	ld d, $70                                        ; $51d4: $16 $70
	ld [hl], e                                       ; $51d6: $73

jr_059_51d7:
	sbc h                                            ; $51d7: $9c
	sbc e                                            ; $51d8: $9b
	db $f4                                           ; $51d9: $f4
	pop hl                                           ; $51da: $e1
	adc a                                            ; $51db: $8f
	ccf                                              ; $51dc: $3f
	db $dd                                           ; $51dd: $dd
	rst $38                                          ; $51de: $ff
	halt                                             ; $51df: $76
	xor h                                            ; $51e0: $ac
	ld a, e                                          ; $51e1: $7b
	cp $9e                                           ; $51e2: $fe $9e
	ld [$f96f], a                                    ; $51e4: $ea $6f $f9
	sbc l                                            ; $51e7: $9d
	xor d                                            ; $51e8: $aa
	dec d                                            ; $51e9: $15
	ld [hl], d                                       ; $51ea: $72
	or d                                             ; $51eb: $b2
	halt                                             ; $51ec: $76
	or b                                             ; $51ed: $b0
	halt                                             ; $51ee: $76
	or d                                             ; $51ef: $b2
	ld a, d                                          ; $51f0: $7a
	or b                                             ; $51f1: $b0
	add l                                            ; $51f2: $85
	ld d, a                                          ; $51f3: $57
	ld [bc], a                                       ; $51f4: $02
	ld d, l                                          ; $51f5: $55
	inc bc                                           ; $51f6: $03
	ld d, l                                          ; $51f7: $55
	ld bc, $0356                                     ; $51f8: $01 $56 $03
	xor b                                            ; $51fb: $a8
	db $fc                                           ; $51fc: $fc
	xor d                                            ; $51fd: $aa
	db $fc                                           ; $51fe: $fc
	xor d                                            ; $51ff: $aa
	cp $a9                                           ; $5200: $fe $a9
	db $fc                                           ; $5202: $fc
	ld c, $0b                                        ; $5203: $0e $0b
	inc d                                            ; $5205: $14
	add hl, hl                                       ; $5206: $29
	ld d, d                                          ; $5207: $52
	ld d, c                                          ; $5208: $51
	cp d                                             ; $5209: $ba
	or l                                             ; $520a: $b5
	rrca                                             ; $520b: $0f
	inc c                                            ; $520c: $0c
	ld a, e                                          ; $520d: $7b
	rla                                              ; $520e: $17
	ld a, a                                          ; $520f: $7f
	ld d, $9d                                        ; $5210: $16 $9d
	ret nz                                           ; $5212: $c0

	ld l, a                                          ; $5213: $6f
	ld a, d                                          ; $5214: $7a
	ret nc                                           ; $5215: $d0

	db $dd                                           ; $5216: $dd
	rst $38                                          ; $5217: $ff
	sbc l                                            ; $5218: $9d
	sbc a                                            ; $5219: $9f
	inc bc                                           ; $521a: $03
	ld l, e                                          ; $521b: $6b
	ld d, b                                          ; $521c: $50
	sbc [hl]                                         ; $521d: $9e
	ld c, e                                          ; $521e: $4b
	ld a, c                                          ; $521f: $79
	sub c                                            ; $5220: $91
	db $db                                           ; $5221: $db
	rst $38                                          ; $5222: $ff
	ld a, [hl]                                       ; $5223: $7e
	add [hl]                                         ; $5224: $86
	ld a, a                                          ; $5225: $7f
	ld c, l                                          ; $5226: $4d
	sub [hl]                                         ; $5227: $96
	rra                                              ; $5228: $1f
	push de                                          ; $5229: $d5
	xor l                                            ; $522a: $ad
	jp c, $ead5                                      ; $522b: $da $d5 $ea

	ld [$fdf5], a                                    ; $522e: $ea $f5 $fd
	reti                                             ; $5231: $d9


	rst $38                                          ; $5232: $ff
	ld a, l                                          ; $5233: $7d
	call $bf98                                       ; $5234: $cd $98 $bf
	ld d, l                                          ; $5237: $55
	or l                                             ; $5238: $b5
	xor e                                            ; $5239: $ab
	ld l, a                                          ; $523a: $6f
	ld l, a                                          ; $523b: $6f
	rra                                              ; $523c: $1f
	call c, $9dff                                    ; $523d: $dc $ff $9d
	cp $fc                                           ; $5240: $fe $fc
	ld [hl], h                                       ; $5242: $74
	ld e, b                                          ; $5243: $58
	add a                                            ; $5244: $87
	rst SubAFromBC                                          ; $5245: $e7
	db $fc                                           ; $5246: $fc
	adc c                                            ; $5247: $89
	sbc e                                            ; $5248: $9b
	adc b                                            ; $5249: $88
	jr nc, @-$1d                                     ; $524a: $30 $e1

	rst JumpTable                                          ; $524c: $c7
	sbc a                                            ; $524d: $9f
	rst $38                                          ; $524e: $ff
	ld a, [hl]                                       ; $524f: $7e
	ld a, h                                          ; $5250: $7c
	inc e                                            ; $5251: $1c

Jump_059_5252:
	inc a                                            ; $5252: $3c
	ld [hl], h                                       ; $5253: $74
	add sp, -$78                                     ; $5254: $e8 $88
	ld [$2010], sp                                   ; $5256: $08 $10 $20
	db $e4                                           ; $5259: $e4
	call z, Call_059_789c                            ; $525a: $cc $9c $78
	ld a, d                                          ; $525d: $7a
	sbc b                                            ; $525e: $98
	sub [hl]                                         ; $525f: $96
	ldh [rTIMA], a                                   ; $5260: $e0 $05
	dec b                                            ; $5262: $05
	dec bc                                           ; $5263: $0b
	dec bc                                           ; $5264: $0b
	ld d, $16                                        ; $5265: $16 $16
	ld b, e                                          ; $5267: $43
	add c                                            ; $5268: $81
	ei                                               ; $5269: $fb
	rst SubAFromDE                                          ; $526a: $df
	ld bc, $a18f                                     ; $526b: $01 $8f $a1
	and d                                            ; $526e: $a2
	ld b, l                                          ; $526f: $45
	ld c, e                                          ; $5270: $4b
	sub l                                            ; $5271: $95
	adc e                                            ; $5272: $8b
	rla                                              ; $5273: $17
	ld a, [hl+]                                      ; $5274: $2a
	inc hl                                           ; $5275: $23
	daa                                              ; $5276: $27
	ld b, a                                          ; $5277: $47
	ld c, a                                          ; $5278: $4f
	sbc a                                            ; $5279: $9f
	sbc a                                            ; $527a: $9f
	ld a, $3e                                        ; $527b: $3e $3e
	ld a, e                                          ; $527d: $7b
	ld a, l                                          ; $527e: $7d
	sbc $80                                          ; $527f: $de $80
	sbc l                                            ; $5281: $9d
	ld d, $a8                                        ; $5282: $16 $a8
	ld a, e                                          ; $5284: $7b
	ld a, [$99fc]                                    ; $5285: $fa $fc $99
	inc bc                                           ; $5288: $03
	dec b                                            ; $5289: $05
	inc bc                                           ; $528a: $03
	rlca                                             ; $528b: $07
	rrca                                             ; $528c: $0f
	ld e, a                                          ; $528d: $5f
	ld a, b                                          ; $528e: $78
	ld d, a                                          ; $528f: $57
	ld a, [hl]                                       ; $5290: $7e
	cp [hl]                                          ; $5291: $be
	ld a, [hl]                                       ; $5292: $7e
	cp d                                             ; $5293: $ba
	sbc h                                            ; $5294: $9c
	dec b                                            ; $5295: $05
	ld [bc], a                                       ; $5296: $02
	nop                                              ; $5297: $00
	ld [hl], a                                       ; $5298: $77
	sbc e                                            ; $5299: $9b
	rst SubAFromDE                                          ; $529a: $df
	cp $86                                           ; $529b: $fe $86
	db $fd                                           ; $529d: $fd
	ld e, l                                          ; $529e: $5d
	cp a                                             ; $529f: $bf
	ld a, a                                          ; $52a0: $7f
	cp a                                             ; $52a1: $bf
	ld a, a                                          ; $52a2: $7f
	rst $38                                          ; $52a3: $ff
	ld a, a                                          ; $52a4: $7f
	cp $3e                                           ; $52a5: $fe $3e
	ld d, a                                          ; $52a7: $57
	and a                                            ; $52a8: $a7
	ld e, a                                          ; $52a9: $5f
	xor a                                            ; $52aa: $af
	ld c, a                                          ; $52ab: $4f
	cp a                                             ; $52ac: $bf
	ld e, h                                          ; $52ad: $5c
	rst SubAFromBC                                          ; $52ae: $e7
	xor a                                            ; $52af: $af
	ld e, a                                          ; $52b0: $5f
	xor a                                            ; $52b1: $af
	ld e, a                                          ; $52b2: $5f
	cp a                                             ; $52b3: $bf
	ld e, h                                          ; $52b4: $5c
	and e                                            ; $52b5: $a3
	ld [hl], a                                       ; $52b6: $77
	ld a, c                                          ; $52b7: $79
	sub l                                            ; $52b8: $95
	cp l                                             ; $52b9: $bd
	rst SubAFromBC                                          ; $52ba: $e7
	cp a                                             ; $52bb: $bf
	cp $fe                                           ; $52bc: $fe $fe
	rst SubAFromDE                                          ; $52be: $df
	rst SubAFromDE                                          ; $52bf: $df
	call c, $9fc3                                    ; $52c0: $dc $c3 $9f
	ld a, e                                          ; $52c3: $7b
	ld [hl], $9e                                     ; $52c4: $36 $9e
	sub h                                            ; $52c6: $94
	ld l, [hl]                                       ; $52c7: $6e
	pop hl                                           ; $52c8: $e1
	sbc l                                            ; $52c9: $9d
	nop                                              ; $52ca: $00
	db $e3                                           ; $52cb: $e3
	ld l, [hl]                                       ; $52cc: $6e
	pop hl                                           ; $52cd: $e1
	sbc [hl]                                         ; $52ce: $9e
	rst $38                                          ; $52cf: $ff
	ld sp, hl                                        ; $52d0: $f9
	reti                                             ; $52d1: $d9


	rst $38                                          ; $52d2: $ff

Jump_059_52d3:
	ld b, a                                          ; $52d3: $47
	ldh a, [hDisp1_LCDC]                                     ; $52d4: $f0 $8f
	ld d, l                                          ; $52d6: $55
	cp $d5                                           ; $52d7: $fe $d5
	rst $38                                          ; $52d9: $ff
	ld [hl], a                                       ; $52da: $77
	rst $38                                          ; $52db: $ff
	db $dd                                           ; $52dc: $dd
	rst $38                                          ; $52dd: $ff
	xor d                                            ; $52de: $aa
	ld bc, $002a                                     ; $52df: $01 $2a $00
	adc b                                            ; $52e2: $88
	nop                                              ; $52e3: $00
	ld [hl+], a                                      ; $52e4: $22
	nop                                              ; $52e5: $00
	halt                                             ; $52e6: $76
	or h                                             ; $52e7: $b4
	sbc e                                            ; $52e8: $9b
	ld d, l                                          ; $52e9: $55
	rst $38                                          ; $52ea: $ff
	push de                                          ; $52eb: $d5
	rst $38                                          ; $52ec: $ff
	halt                                             ; $52ed: $76
	or h                                             ; $52ee: $b4
	add b                                            ; $52ef: $80
	xor d                                            ; $52f0: $aa
	nop                                              ; $52f1: $00
	ld a, [hl+]                                      ; $52f2: $2a
	nop                                              ; $52f3: $00
	ld d, l                                          ; $52f4: $55
	add c                                            ; $52f5: $81
	ld d, l                                          ; $52f6: $55
	and c                                            ; $52f7: $a1
	ld d, l                                          ; $52f8: $55
	db $eb                                           ; $52f9: $eb
	ld d, l                                          ; $52fa: $55
	ld [$7fab], a                                    ; $52fb: $ea $ab $7f
	xor e                                            ; $52fe: $ab
	ld e, a                                          ; $52ff: $5f
	xor e                                            ; $5300: $ab
	dec d                                            ; $5301: $15
	xor e                                            ; $5302: $ab
	dec d                                            ; $5303: $15
	dec sp                                           ; $5304: $3b
	dec a                                            ; $5305: $3d
	rra                                              ; $5306: $1f
	rra                                              ; $5307: $1f
	ld c, $00                                        ; $5308: $0e $00
	nop                                              ; $530a: $00
	add c                                            ; $530b: $81
	ret nz                                           ; $530c: $c0

	ret nz                                           ; $530d: $c0

	ldh [$9d], a                                     ; $530e: $e0 $9d
	ldh [$f1], a                                     ; $5310: $e0 $f1
	db $db                                           ; $5312: $db
	rst $38                                          ; $5313: $ff
	sbc d                                            ; $5314: $9a
	adc a                                            ; $5315: $8f
	rlca                                             ; $5316: $07
	dec sp                                           ; $5317: $3b
	ld hl, sp-$04                                    ; $5318: $f8 $fc
	cp $9d                                           ; $531a: $fe $9d
	ld [hl], b                                       ; $531c: $70
	ld hl, sp+$7a                                    ; $531d: $f8 $7a
	ldh a, [c]                                       ; $531f: $f2
	rst SubAFromDE                                          ; $5320: $df
	rst SubAFromDE                                          ; $5321: $df
	sbc c                                            ; $5322: $99
	cp a                                             ; $5323: $bf
	cp d                                             ; $5324: $ba
	or l                                             ; $5325: $b5
	ld l, e                                          ; $5326: $6b
	ld l, a                                          ; $5327: $6f
	ld d, a                                          ; $5328: $57
	halt                                             ; $5329: $76
	ld [$7e9e], sp                                   ; $532a: $08 $9e $7e
	ld a, c                                          ; $532d: $79
	sub [hl]                                         ; $532e: $96
	sbc c                                            ; $532f: $99
	xor d                                            ; $5330: $aa
	ld de, $c4aa                                     ; $5331: $11 $aa $c4
	ldh a, [c]                                       ; $5334: $f2
	ld sp, hl                                        ; $5335: $f9
	db $dd                                           ; $5336: $dd
	rst $38                                          ; $5337: $ff
	sbc [hl]                                         ; $5338: $9e
	db $fd                                           ; $5339: $fd
	ld a, c                                          ; $533a: $79
	dec [hl]                                         ; $533b: $35
	sub d                                            ; $533c: $92
	rlca                                             ; $533d: $07
	inc bc                                           ; $533e: $03
	sbc a                                            ; $533f: $9f
	cp $f8                                           ; $5340: $fe $f8
	ld h, b                                          ; $5342: $60
	rst $38                                          ; $5343: $ff
	rst $38                                          ; $5344: $ff
	push de                                          ; $5345: $d5
	xor d                                            ; $5346: $aa
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5347: $f0 $81
	rst JumpTable                                          ; $5349: $c7
	call c, $95ff                                    ; $534a: $dc $ff $95
	ld d, $24                                        ; $534d: $16 $24
	ld a, a                                          ; $534f: $7f
	rst $38                                          ; $5350: $ff
	push de                                          ; $5351: $d5
	xor e                                            ; $5352: $ab
	ld d, l                                          ; $5353: $55
	xor e                                            ; $5354: $ab
	ld sp, hl                                        ; $5355: $f9
	ei                                               ; $5356: $fb
	db $db                                           ; $5357: $db
	rst $38                                          ; $5358: $ff
	sub a                                            ; $5359: $97
	ld b, b                                          ; $535a: $40
	pop bc                                           ; $535b: $c1
	jp nz, $83c3                                     ; $535c: $c2 $c3 $83

	add e                                            ; $535f: $83
	ld bc, $dd01                                     ; $5360: $01 $01 $dd
	ret nz                                           ; $5363: $c0

	halt                                             ; $5364: $76
	db $ed                                           ; $5365: $ed
	sbc b                                            ; $5366: $98
	add d                                            ; $5367: $82
	ld c, $1e                                        ; $5368: $0e $1e
	ld a, h                                          ; $536a: $7c
	ld sp, $81e0                                     ; $536b: $31 $e0 $81
	sbc $02                                          ; $536e: $de $02
	adc a                                            ; $5370: $8f
	ld b, $0c                                        ; $5371: $06 $0c
	ld de, $8361                                     ; $5373: $11 $61 $83
	inc bc                                           ; $5376: $03
	ld d, a                                          ; $5377: $57
	ld l, $5d                                        ; $5378: $2e $5d
	xor a                                            ; $537a: $af
	ld e, [hl]                                       ; $537b: $5e
	cp h                                             ; $537c: $bc
	ld e, b                                          ; $537d: $58
	cp b                                             ; $537e: $b8
	ld a, h                                          ; $537f: $7c
	ld a, h                                          ; $5380: $7c
	ld [hl], l                                       ; $5381: $75
	ld a, [hl-]                                      ; $5382: $3a
	rst SubAFromDE                                          ; $5383: $df
	ldh [$9d], a                                     ; $5384: $e0 $9d
	ld d, b                                          ; $5386: $50
	ldh [$6e], a                                     ; $5387: $e0 $6e
	ret z                                            ; $5389: $c8

	rst FarCall                                          ; $538a: $f7
	sbc e                                            ; $538b: $9b
	dec b                                            ; $538c: $05
	ld a, [bc]                                       ; $538d: $0a
	dec b                                            ; $538e: $05
	ld a, [bc]                                       ; $538f: $0a
	ld a, e                                          ; $5390: $7b
	ld b, l                                          ; $5391: $45

jr_059_5392:
	ld h, a                                          ; $5392: $67
	ldh a, [c]                                       ; $5393: $f2
	ld a, [hl]                                       ; $5394: $7e
	or l                                             ; $5395: $b5
	sbc d                                            ; $5396: $9a
	add b                                            ; $5397: $80
	ld b, b                                          ; $5398: $40
	and b                                            ; $5399: $a0
	ld b, b                                          ; $539a: $40
	and b                                            ; $539b: $a0
	ld a, e                                          ; $539c: $7b
	ld c, h                                          ; $539d: $4c
	db $fc                                           ; $539e: $fc
	sbc [hl]                                         ; $539f: $9e
	push de                                          ; $53a0: $d5

jr_059_53a1:
	ld l, [hl]                                       ; $53a1: $6e
	pop hl                                           ; $53a2: $e1
	sbc l                                            ; $53a3: $9d
	nop                                              ; $53a4: $00
	jr c, jr_059_53a1                                ; $53a5: $38 $fa

	sbc h                                            ; $53a7: $9c
	sbc $1e                                          ; $53a8: $de $1e
	ld c, $71                                        ; $53aa: $0e $71
	ld d, e                                          ; $53ac: $53
	ld a, e                                          ; $53ad: $7b
	ld h, h                                          ; $53ae: $64
	ld h, c                                          ; $53af: $61
	ld c, h                                          ; $53b0: $4c
	rst $38                                          ; $53b1: $ff
	sbc l                                            ; $53b2: $9d
	ld b, b                                          ; $53b3: $40
	jr nz, jr_059_5392                               ; $53b4: $20 $dc

	rst $38                                          ; $53b6: $ff
	ld a, a                                          ; $53b7: $7f
	ld c, [hl]                                       ; $53b8: $4e
	sbc [hl]                                         ; $53b9: $9e
	rra                                              ; $53ba: $1f
	ld b, $c0                                        ; $53bb: $06 $c0
	ld c, l                                          ; $53bd: $4d
	nop                                              ; $53be: $00
	sbc $66                                          ; $53bf: $de $66
	sbc b                                            ; $53c1: $98
	ld h, a                                          ; $53c2: $67
	ld d, l                                          ; $53c3: $55
	ld d, l                                          ; $53c4: $55
	ld d, [hl]                                       ; $53c5: $56
	ld h, e                                          ; $53c6: $63
	ld [hl-], a                                      ; $53c7: $32
	ld [hl+], a                                      ; $53c8: $22
	ld l, a                                          ; $53c9: $6f
	or $9e                                           ; $53ca: $f6 $9e
	ld d, a                                          ; $53cc: $57
	ld e, a                                          ; $53cd: $5f
	or $9d                                           ; $53ce: $f6 $9d
	inc sp                                           ; $53d0: $33
	ld [hl+], a                                      ; $53d1: $22
	ld [hl], a                                       ; $53d2: $77
	or $9b                                           ; $53d3: $f6 $9b
	ld [hl], a                                       ; $53d5: $77
	ld d, l                                          ; $53d6: $55
	ld d, l                                          ; $53d7: $55
	halt                                             ; $53d8: $76
	ld l, e                                          ; $53d9: $6b
	or $9c                                           ; $53da: $f6 $9c
	ld b, l                                          ; $53dc: $45
	ld d, l                                          ; $53dd: $55
	ld [hl], e                                       ; $53de: $73
	ld l, e                                          ; $53df: $6b
	or $9c                                           ; $53e0: $f6 $9c
	ld b, h                                          ; $53e2: $44
	ld b, a                                          ; $53e3: $47
	ld h, e                                          ; $53e4: $63
	ld [hl], e                                       ; $53e5: $73
	or $9b                                           ; $53e6: $f6 $9b
	ld h, a                                          ; $53e8: $67
	ld [hl], h                                       ; $53e9: $74
	ld b, h                                          ; $53ea: $44
	ld [hl], a                                       ; $53eb: $77
	ld a, e                                          ; $53ec: $7b
	rst GetHLinHL                                          ; $53ed: $cf
	ld [hl], a                                       ; $53ee: $77
	or $7f                                           ; $53ef: $f6 $7f
	db $ed                                           ; $53f1: $ed
	ld a, a                                          ; $53f2: $7f
	reti                                             ; $53f3: $d9


	ld h, a                                          ; $53f4: $67
	or $77                                           ; $53f5: $f6 $77
	db $e3                                           ; $53f7: $e3
	ld a, a                                          ; $53f8: $7f
	or $9a                                           ; $53f9: $f6 $9a
	ld h, h                                          ; $53fb: $64
	ld b, a                                          ; $53fc: $47
	ld b, h                                          ; $53fd: $44
	halt                                             ; $53fe: $76
	inc sp                                           ; $53ff: $33
	ld l, a                                          ; $5400: $6f
	or $7f                                           ; $5401: $f6 $7f
	jp c, $f67f                                      ; $5403: $da $7f $f6

	sbc [hl]                                         ; $5406: $9e
	ld [hl], $de                                     ; $5407: $36 $de
	ld [hl+], a                                      ; $5409: $22
	dec c                                            ; $540a: $0d
	adc b                                            ; $540b: $88
	rst SubAFromDE                                          ; $540c: $df
	ld b, $80                                        ; $540d: $06 $80
	nop                                              ; $540f: $00
	inc b                                            ; $5410: $04
	inc c                                            ; $5411: $0c
	inc c                                            ; $5412: $0c
	inc b                                            ; $5413: $04
	dec b                                            ; $5414: $05
	add hl, bc                                       ; $5415: $09
	add hl, bc                                       ; $5416: $09
	ld c, $0a                                        ; $5417: $0e $0a
	ld [bc], a                                       ; $5419: $02
	ld bc, $0001                                     ; $541a: $01 $01 $00
	add hl, hl                                       ; $541d: $29
	dec c                                            ; $541e: $0d
	adc c                                            ; $541f: $89
	ld e, c                                          ; $5420: $59
	ld c, d                                          ; $5421: $4a
	ld c, d                                          ; $5422: $4a
	ld [de], a                                       ; $5423: $12
	ld d, $44                                        ; $5424: $16 $44
	ld h, b                                          ; $5426: $60
	ld d, d                                          ; $5427: $52
	add d                                            ; $5428: $82
	sub c                                            ; $5429: $91
	sub c                                            ; $542a: $91
	and h                                            ; $542b: $a4
	and b                                            ; $542c: $a0
	inc sp                                           ; $542d: $33
	add b                                            ; $542e: $80
	or e                                             ; $542f: $b3
	ld [hl+], a                                      ; $5430: $22
	ld b, h                                          ; $5431: $44
	ld c, h                                          ; $5432: $4c
	ld l, [hl]                                       ; $5433: $6e
	ld l, h                                          ; $5434: $6c
	ld l, l                                          ; $5435: $6d
	add h                                            ; $5436: $84

jr_059_5437:
	inc b                                            ; $5437: $04
	ld c, l                                          ; $5438: $4d
	dec hl                                           ; $5439: $2b
	inc hl                                           ; $543a: $23
	ld de, $9293                                     ; $543b: $11 $93 $92
	ld d, a                                          ; $543e: $57
	ld h, a                                          ; $543f: $67
	rst AddAOntoHL                                          ; $5440: $ef
	rst AddAOntoHL                                          ; $5441: $ef
	rst SubAFromBC                                          ; $5442: $e7
	rst SubAFromHL                                          ; $5443: $d7
	rst SubAFromHL                                          ; $5444: $d7
	ld e, e                                          ; $5445: $5b
	add sp, -$67                                     ; $5446: $e8 $99
	sbc c                                            ; $5448: $99
	sub c                                            ; $5449: $91
	ld a, [de]                                       ; $544a: $1a
	ld a, [hl-]                                      ; $544b: $3a
	ld a, [hl+]                                      ; $544c: $2a
	and h                                            ; $544d: $a4
	sbc $e8                                          ; $544e: $de $e8
	rst SubAFromDE                                          ; $5450: $df
	ld hl, sp-$66                                    ; $5451: $f8 $9a
	add sp, -$10                                     ; $5453: $e8 $f0
	ldh a, [$b8]                                     ; $5455: $f0 $b8
	jr c, jr_059_5437                                ; $5457: $38 $de

	ld e, b                                          ; $5459: $58
	sbc h                                            ; $545a: $9c
	cp b                                             ; $545b: $b8
	or b                                             ; $545c: $b0
	or b                                             ; $545d: $b0
	ldh [$ab], a                                     ; $545e: $e0 $ab
	sbc l                                            ; $5460: $9d
	ld bc, $6702                                     ; $5461: $01 $02 $67
	ld hl, sp-$7e                                    ; $5464: $f8 $82
	ld c, $09                                        ; $5466: $0e $09
	inc de                                           ; $5468: $13
	inc a                                            ; $5469: $3c
	ld c, c                                          ; $546a: $49
	cp a                                             ; $546b: $bf
	ld l, a                                          ; $546c: $6f
	ld e, e                                          ; $546d: $5b
	rlca                                             ; $546e: $07
	ld c, $1f                                        ; $546f: $0e $1f
	ccf                                              ; $5471: $3f
	ld [hl], b                                       ; $5472: $70
	rst $38                                          ; $5473: $ff
	ld a, b                                          ; $5474: $78
	ld [hl], a                                       ; $5475: $77
	db $ed                                           ; $5476: $ed
	jp c, Jump_059_6fb8                              ; $5477: $da $b8 $6f

	rla                                              ; $547a: $17
	bit 7, [hl]                                      ; $547b: $cb $7e
	db $fd                                           ; $547d: $fd
	db $10                                           ; $547e: $10
	ld hl, $f7ff                                     ; $547f: $21 $ff $f7
	ei                                               ; $5482: $fb
	sbc $ff                                          ; $5483: $de $ff
	add b                                            ; $5485: $80
	inc hl                                           ; $5486: $23
	ld e, d                                          ; $5487: $5a
	and d                                            ; $5488: $a2
	ld d, l                                          ; $5489: $55
	push hl                                          ; $548a: $e5
	ld e, d                                          ; $548b: $5a
	sub a                                            ; $548c: $97
	rst $38                                          ; $548d: $ff
	rst $38                                          ; $548e: $ff
	rst SubAFromBC                                          ; $548f: $e7
	rst GetHLinHL                                          ; $5490: $cf
	adc a                                            ; $5491: $8f
	rst $38                                          ; $5492: $ff
	cp a                                             ; $5493: $bf
	ld c, $ff                                        ; $5494: $0e $ff
	sbc h                                            ; $5496: $9c
	or d                                             ; $5497: $b2
	jp hl                                            ; $5498: $e9


	ld h, h                                          ; $5499: $64
	or b                                             ; $549a: $b0
	rst FarCall                                          ; $549b: $f7
	cp a                                             ; $549c: $bf

Call_059_549d:
	ld e, a                                          ; $549d: $5f
	inc c                                            ; $549e: $0c
	sbc [hl]                                         ; $549f: $9e
	cp a                                             ; $54a0: $bf
	rst $38                                          ; $54a1: $ff
	ld a, a                                          ; $54a2: $7f
	ld a, [hl-]                                      ; $54a3: $3a
	ld a, d                                          ; $54a4: $7a
	sbc [hl]                                         ; $54a5: $9e
	ld a, [$dffe]                                    ; $54a6: $fa $fe $df
	add b                                            ; $54a9: $80
	sbc $40                                          ; $54aa: $de $40

Jump_059_54ac:
	ld [hl], e                                       ; $54ac: $73
	ld hl, sp-$22                                    ; $54ad: $f8 $de
	ret nz                                           ; $54af: $c0

	ldh [$c1], a                                     ; $54b0: $e0 $c1
	add c                                            ; $54b2: $81
	rlca                                             ; $54b3: $07
	ld b, $00                                        ; $54b4: $06 $00
	ld [bc], a                                       ; $54b6: $02
	ld b, $06                                        ; $54b7: $06 $06
	inc b                                            ; $54b9: $04
	inc b                                            ; $54ba: $04
	nop                                              ; $54bb: $00
	ld bc, $0503                                     ; $54bc: $01 $03 $05
	ld bc, $0200                                     ; $54bf: $01 $00 $02
	ld [bc], a                                       ; $54c2: $02
	ld [hl], $26                                     ; $54c3: $36 $26
	ld a, [hl+]                                      ; $54c5: $2a
	dec l                                            ; $54c6: $2d
	dec c                                            ; $54c7: $0d
	ld c, l                                          ; $54c8: $4d
	ld c, d                                          ; $54c9: $4a
	ld c, d                                          ; $54ca: $4a
	add b                                            ; $54cb: $80
	adc c                                            ; $54cc: $89
	ld b, l                                          ; $54cd: $45
	ld b, d                                          ; $54ce: $42
	ld h, d                                          ; $54cf: $62
	sub d                                            ; $54d0: $92
	db $dd                                           ; $54d1: $dd
	sub l                                            ; $54d2: $95
	rst SubAFromDE                                          ; $54d3: $df
	sbc e                                            ; $54d4: $9b
	add e                                            ; $54d5: $83
	sbc c                                            ; $54d6: $99
	and l                                            ; $54d7: $a5
	and [hl]                                         ; $54d8: $a6
	halt                                             ; $54d9: $76
	ld l, d                                          ; $54da: $6a
	ld l, d                                          ; $54db: $6a
	ld h, h                                          ; $54dc: $64
	ld h, h                                          ; $54dd: $64
	ld h, [hl]                                       ; $54de: $66
	ld e, d                                          ; $54df: $5a
	ld e, c                                          ; $54e0: $59
	adc c                                            ; $54e1: $89
	dec sp                                           ; $54e2: $3b
	cp e                                             ; $54e3: $bb
	cp l                                             ; $54e4: $bd
	cp l                                             ; $54e5: $bd
	db $dd                                           ; $54e6: $dd
	sbc $ee                                          ; $54e7: $de $ee
	rst AddAOntoHL                                          ; $54e9: $ef
	push hl                                          ; $54ea: $e5
	ld b, l                                          ; $54eb: $45
	ld c, e                                          ; $54ec: $4b
	ld c, d                                          ; $54ed: $4a
	xor d                                            ; $54ee: $aa
	or e                                             ; $54ef: $b3
	sub l                                            ; $54f0: $95
	dec d                                            ; $54f1: $15
	db $dd                                           ; $54f2: $dd
	ret nc                                           ; $54f3: $d0

	sbc $f0                                          ; $54f4: $de $f0
	sbc [hl]                                         ; $54f6: $9e
	ret nc                                           ; $54f7: $d0

	sbc $70                                          ; $54f8: $de $70
	sbc $b0                                          ; $54fa: $de $b0
	sbc l                                            ; $54fc: $9d
	jr nc, jr_059_556f                               ; $54fd: $30 $70

	ldh [$ae], a                                     ; $54ff: $e0 $ae
	ld a, d                                          ; $5501: $7a
	ld a, [hl+]                                      ; $5502: $2a
	ld e, a                                          ; $5503: $5f
	ld hl, sp-$80                                    ; $5504: $f8 $80
	cp l                                             ; $5506: $bd
	push de                                          ; $5507: $d5
	cp a                                             ; $5508: $bf
	ld a, d                                          ; $5509: $7a
	cp c                                             ; $550a: $b9
	ld [hl], e                                       ; $550b: $73
	ld h, e                                          ; $550c: $63
	db $e3                                           ; $550d: $e3
	rst AddAOntoHL                                          ; $550e: $ef
	rst $38                                          ; $550f: $ff
	ldh a, [c]                                       ; $5510: $f2
	ldh a, [c]                                       ; $5511: $f2
	add sp, $67                                      ; $5512: $e8 $67
	ld h, b                                          ; $5514: $60
	and a                                            ; $5515: $a7
	and [hl]                                         ; $5516: $a6
	db $d3                                           ; $5517: $d3
	db $e3                                           ; $5518: $e3
	ldh [$c0], a                                     ; $5519: $e0 $c0
	add c                                            ; $551b: $81
	pop bc                                           ; $551c: $c1
	add h                                            ; $551d: $84
	rst $38                                          ; $551e: $ff
	ld h, d                                          ; $551f: $62
	ld b, d                                          ; $5520: $42
	ld bc, wPastTitleScreen                                     ; $5521: $01 $41 $c1
	inc bc                                           ; $5524: $03
	add b                                            ; $5525: $80
	inc bc                                           ; $5526: $03
	xor d                                            ; $5527: $aa
	push de                                          ; $5528: $d5
	xor e                                            ; $5529: $ab
	db $fd                                           ; $552a: $fd
	cp l                                             ; $552b: $bd
	xor e                                            ; $552c: $ab
	or a                                             ; $552d: $b7
	cp $fd                                           ; $552e: $fe $fd
	rst $38                                          ; $5530: $ff
	cp $af                                           ; $5531: $fe $af
	xor a                                            ; $5533: $af
	ld e, $1a                                        ; $5534: $1e $1a
	db $d3                                           ; $5536: $d3
	db $fd                                           ; $5537: $fd
	cp c                                             ; $5538: $b9
	ld d, l                                          ; $5539: $55
	cp h                                             ; $553a: $bc
	ld e, h                                          ; $553b: $5c
	cp l                                             ; $553c: $bd
	db $dd                                           ; $553d: $dd
	sub e                                            ; $553e: $93
	cp d                                             ; $553f: $ba
	ld a, [hl]                                       ; $5540: $7e
	cp $d7                                           ; $5541: $fe $d7
	or a                                             ; $5543: $b7
	rst FarCall                                          ; $5544: $f7
	sbc l                                            ; $5545: $9d
	rst FarCall                                          ; $5546: $f7
	rst $38                                          ; $5547: $ff
	db $db                                           ; $5548: $db
	ret nz                                           ; $5549: $c0

	reti                                             ; $554a: $d9


	ld b, b                                          ; $554b: $40
	ld [bc], a                                       ; $554c: $02
	ret nz                                           ; $554d: $c0

	ldh [$e0], a                                     ; $554e: $e0 $e0
	ld a, l                                          ; $5550: $7d
	add [hl]                                         ; $5551: $86
	ld a, [hl]                                       ; $5552: $7e
	push bc                                          ; $5553: $c5
	sbc $02                                          ; $5554: $de $02
	ld a, d                                          ; $5556: $7a
	rra                                              ; $5557: $1f
	call c, $8001                                    ; $5558: $dc $01 $80
	ld [bc], a                                       ; $555b: $02
	ld [de], a                                       ; $555c: $12
	inc de                                           ; $555d: $13
	sub d                                            ; $555e: $92
	sub d                                            ; $555f: $92
	ld [de], a                                       ; $5560: $12
	dec h                                            ; $5561: $25
	dec l                                            ; $5562: $2d
	inc l                                            ; $5563: $2c
	call $2dac                                       ; $5564: $cd $ac $2d
	dec l                                            ; $5567: $2d
	ld l, l                                          ; $5568: $6d
	ld e, d                                          ; $5569: $5a
	ld d, d                                          ; $556a: $52
	db $d3                                           ; $556b: $d3
	ld [hl], a                                       ; $556c: $77
	ld h, a                                          ; $556d: $67
	ld l, e                                          ; $556e: $6b

jr_059_556f:
	xor e                                            ; $556f: $ab
	cp l                                             ; $5570: $bd
	cp l                                             ; $5571: $bd
	sbc $de                                          ; $5572: $de $de
	sbc c                                            ; $5574: $99
	sbc c                                            ; $5575: $99
	sub [hl]                                         ; $5576: $96
	ld d, [hl]                                       ; $5577: $56
	ld h, d                                          ; $5578: $62
	ld h, [hl]                                       ; $5579: $66
	sbc b                                            ; $557a: $98
	dec h                                            ; $557b: $25
	ld h, l                                          ; $557c: $65
	ld [hl], a                                       ; $557d: $77
	ld [hl], a                                       ; $557e: $77
	cp e                                             ; $557f: $bb

Call_059_5580:
	cp e                                             ; $5580: $bb
	db $dd                                           ; $5581: $dd
	ld a, d                                          ; $5582: $7a
	cp a                                             ; $5583: $bf
	sub l                                            ; $5584: $95
	xor l                                            ; $5585: $ad
	xor d                                            ; $5586: $aa
	ld l, [hl]                                       ; $5587: $6e
	ld c, [hl]                                       ; $5588: $4e
	ld [hl], d                                       ; $5589: $72
	ld [hl], a                                       ; $558a: $77
	or l                                             ; $558b: $b5
	or l                                             ; $558c: $b5
	ret nc                                           ; $558d: $d0

	ldh a, [$de]                                     ; $558e: $f0 $de
	and b                                            ; $5590: $a0
	sbc d                                            ; $5591: $9a
	ldh [$e7], a                                     ; $5592: $e0 $e7
	rst AddAOntoHL                                          ; $5594: $ef
	ld [hl], b                                       ; $5595: $70
	ld [hl], b                                       ; $5596: $70
	sbc $e0                                          ; $5597: $de $e0
	sbc h                                            ; $5599: $9c
	ld h, b                                          ; $559a: $60
	ld h, [hl]                                       ; $559b: $66
	ld l, c                                          ; $559c: $69
	ei                                               ; $559d: $fb
	sbc l                                            ; $559e: $9d
	db $10                                           ; $559f: $10
	add sp, -$05                                     ; $55a0: $e8 $fb
	sbc l                                            ; $55a2: $9d
	jr nc, jr_059_55bd                               ; $55a3: $30 $18

	ldh [$b1], a                                     ; $55a5: $e0 $b1
	sub l                                            ; $55a7: $95
	rst FarCall                                          ; $55a8: $f7
	and e                                            ; $55a9: $a3
	ld h, b                                          ; $55aa: $60
	jr nz, jr_059_560d                               ; $55ab: $20 $60

	or c                                             ; $55ad: $b1
	ld hl, $af71                                     ; $55ae: $21 $71 $af
	ldh [$7b], a                                     ; $55b1: $e0 $7b
	ld hl, sp-$80                                    ; $55b3: $f8 $80
	and b                                            ; $55b5: $a0
	ld sp, $8351                                     ; $55b6: $31 $51 $83
	ld bc, $5cd3                                     ; $55b9: $01 $d3 $5c
	ld [hl], b                                       ; $55bc: $70

jr_059_55bd:
	ldh a, [$b8]                                     ; $55bd: $f0 $b8
	ld hl, sp-$7c                                    ; $55bf: $f8 $84
	add e                                            ; $55c1: $83
	inc hl                                           ; $55c2: $23
	ld h, b                                          ; $55c3: $60
	nop                                              ; $55c4: $00
	ldh [hDisp1_SCY], a                                     ; $55c5: $e0 $90
	ldh a, [$ef]                                     ; $55c7: $f0 $ef
	cp a                                             ; $55c9: $bf
	sbc $ef                                          ; $55ca: $de $ef
	ccf                                              ; $55cc: $3f
	ld [hl], a                                       ; $55cd: $77
	rst $38                                          ; $55ce: $ff
	db $ed                                           ; $55cf: $ed
	inc sp                                           ; $55d0: $33
	jp Jump_059_77e3                                 ; $55d1: $c3 $e3 $77


	sub b                                            ; $55d4: $90
	inc b                                            ; $55d5: $04
	dec c                                            ; $55d6: $0d
	dec bc                                           ; $55d7: $0b
	rra                                              ; $55d8: $1f
	or e                                             ; $55d9: $b3
	ld e, d                                          ; $55da: $5a
	xor d                                            ; $55db: $aa
	ld a, [$dada]                                    ; $55dc: $fa $da $da
	ld a, d                                          ; $55df: $7a
	ld l, [hl]                                       ; $55e0: $6e
	rst $38                                          ; $55e1: $ff
	cp $fe                                           ; $55e2: $fe $fe
	sbc $ee                                          ; $55e4: $de $ee
	sbc c                                            ; $55e6: $99
	ld c, [hl]                                       ; $55e7: $4e
	ld e, [hl]                                       ; $55e8: $5e
	ld b, b                                          ; $55e9: $40
	and b                                            ; $55ea: $a0

jr_059_55eb:
	ld h, b                                          ; $55eb: $60
	jr nz, jr_059_55eb                               ; $55ec: $20 $fd

	sbc [hl]                                         ; $55ee: $9e
	ret nz                                           ; $55ef: $c0

	ld a, e                                          ; $55f0: $7b
	ret nz                                           ; $55f1: $c0

	ldh [$bd], a                                     ; $55f2: $e0 $bd
	sub [hl]                                         ; $55f4: $96
	xor c                                            ; $55f5: $a9
	ld bc, $02ab                                     ; $55f6: $01 $ab $02
	xor h                                            ; $55f9: $ac
	inc b                                            ; $55fa: $04
	xor h                                            ; $55fb: $ac
	ld d, h                                          ; $55fc: $54
	ld [bc], a                                       ; $55fd: $02
	ld l, d                                          ; $55fe: $6a
	cp a                                             ; $55ff: $bf
	add e                                            ; $5600: $83
	inc h                                            ; $5601: $24
	inc hl                                           ; $5602: $23
	ld e, e                                          ; $5603: $5b
	ld e, b                                          ; $5604: $58
	ld b, b                                          ; $5605: $40
	add l                                            ; $5606: $85
	dec b                                            ; $5607: $05
	jr nc, @-$23                                     ; $5608: $30 $db

	call c, $a7a4                                    ; $560a: $dc $a4 $a7

jr_059_560d:
	cp a                                             ; $560d: $bf
	ld a, e                                          ; $560e: $7b
	ei                                               ; $560f: $fb
	rst GetHLinHL                                          ; $5610: $cf
	xor $6f                                          ; $5611: $ee $6f
	ld l, a                                          ; $5613: $6f
	or c                                             ; $5614: $b1
	sub d                                            ; $5615: $92
	ld [de], a                                       ; $5616: $12
	ld a, [de]                                       ; $5617: $1a
	ld c, b                                          ; $5618: $48
	ld e, c                                          ; $5619: $59
	reti                                             ; $561a: $d9


	sbc c                                            ; $561b: $99
	rst SubAFromDE                                          ; $561c: $df
	ld a, b                                          ; $561d: $78
	db $eb                                           ; $561e: $eb
	sbc l                                            ; $561f: $9d
	and a                                            ; $5620: $a7
	rst AddAOntoHL                                          ; $5621: $ef
	ld a, d                                          ; $5622: $7a
	cp a                                             ; $5623: $bf
	add b                                            ; $5624: $80
	inc de                                           ; $5625: $13
	sub a                                            ; $5626: $97
	xor d                                            ; $5627: $aa
	xor d                                            ; $5628: $aa
	cp d                                             ; $5629: $ba
	xor d                                            ; $562a: $aa
	jp z, $fd55                                      ; $562b: $ca $55 $fd

	db $fd                                           ; $562e: $fd
	rst $38                                          ; $562f: $ff
	rst $38                                          ; $5630: $ff
	xor l                                            ; $5631: $ad
	xor l                                            ; $5632: $ad
	xor a                                            ; $5633: $af
	rst SubAFromBC                                          ; $5634: $e7
	ld h, b                                          ; $5635: $60
	ld a, a                                          ; $5636: $7f
	ld hl, sp-$40                                    ; $5637: $f8 $c0
	jp hl                                            ; $5639: $e9


	db $ed                                           ; $563a: $ed
	db $eb                                           ; $563b: $eb
	ld h, a                                          ; $563c: $67
	ldh [$c0], a                                     ; $563d: $e0 $c0
	rst JumpTable                                          ; $563f: $c7
	rst $38                                          ; $5640: $ff
	ld b, h                                          ; $5641: $44
	sub h                                            ; $5642: $94
	inc [hl]                                         ; $5643: $34
	sub [hl]                                         ; $5644: $96
	db $fc                                           ; $5645: $fc
	nop                                              ; $5646: $00
	rst $38                                          ; $5647: $ff
	and [hl]                                         ; $5648: $a6
	dec sp                                           ; $5649: $3b
	cp h                                             ; $564a: $bc
	db $fc                                           ; $564b: $fc
	rst $38                                          ; $564c: $ff
	cp $77                                           ; $564d: $fe $77
	ld e, c                                          ; $564f: $59
	db $fd                                           ; $5650: $fd
	ld a, l                                          ; $5651: $7d
	dec e                                            ; $5652: $1d
	sbc l                                            ; $5653: $9d
	ld h, c                                          ; $5654: $61
	add a                                            ; $5655: $87
	ld [hl], c                                       ; $5656: $71
	cp a                                             ; $5657: $bf
	sbc [hl]                                         ; $5658: $9e
	rst $38                                          ; $5659: $ff
	ei                                               ; $565a: $fb
	sbc h                                            ; $565b: $9c
	add b                                            ; $565c: $80
	nop                                              ; $565d: $00
	nop                                              ; $565e: $00
	ld [hl], h                                       ; $565f: $74
	ret nz                                           ; $5660: $c0

	ld [hl], h                                       ; $5661: $74
	cp [hl]                                          ; $5662: $be
	ld a, e                                          ; $5663: $7b
	push af                                          ; $5664: $f5
	db $e3                                           ; $5665: $e3
	add b                                            ; $5666: $80
	rrca                                             ; $5667: $0f
	ld de, $3f35                                     ; $5668: $11 $35 $3f
	ld e, [hl]                                       ; $566b: $5e
	ld e, h                                          ; $566c: $5c
	cp h                                             ; $566d: $bc
	cp b                                             ; $566e: $b8
	rrca                                             ; $566f: $0f
	db $10                                           ; $5670: $10
	jr nz, jr_059_5694                               ; $5671: $20 $21

	ld d, d                                          ; $5673: $52
	ld d, l                                          ; $5674: $55
	adc l                                            ; $5675: $8d
	adc e                                            ; $5676: $8b
	ld sp, hl                                        ; $5677: $f9
	call $0f86                                       ; $5678: $cd $86 $0f
	rra                                              ; $567b: $1f
	ld a, $3e                                        ; $567c: $3e $3e
	ld a, a                                          ; $567e: $7f
	pop af                                           ; $567f: $f1
	ld a, c                                          ; $5680: $79
	cp h                                             ; $5681: $bc
	ld a, [hl]                                       ; $5682: $7e
	rst FarCall                                          ; $5683: $f7
	db $e4                                           ; $5684: $e4
	ldh [c], a                                       ; $5685: $e2
	add b                                            ; $5686: $80

jr_059_5687:
	jp nz, $91f9                                     ; $5687: $c2 $f9 $91

	di                                               ; $568a: $f3
	ld b, $73                                        ; $568b: $06 $73
	rst $38                                          ; $568d: $ff
	ld l, a                                          ; $568e: $6f

jr_059_568f:
	or a                                             ; $568f: $b7
	ldh a, [$f0]                                     ; $5690: $f0 $f0
	ldh [rSB], a                                     ; $5692: $e0 $01

jr_059_5694:
	adc a                                            ; $5694: $8f
	cp $1c                                           ; $5695: $fe $1c
	ld [hl], b                                       ; $5697: $70
	rst $38                                          ; $5698: $ff
	ei                                               ; $5699: $fb
	jp hl                                            ; $569a: $e9


	ld hl, sp-$11                                    ; $569b: $f8 $ef
	rst SubAFromBC                                          ; $569d: $e7
	rst JumpTable                                          ; $569e: $c7
	rst JumpTable                                          ; $569f: $c7
	dec e                                            ; $56a0: $1d
	dec sp                                           ; $56a1: $3b
	ld l, c                                          ; $56a2: $69
	ld hl, sp+$3f                                    ; $56a3: $f8 $3f
	inc a                                            ; $56a5: $3c
	rst SubAFromDE                                          ; $56a6: $df
	ld a, h                                          ; $56a7: $7c
	adc a                                            ; $56a8: $8f
	ld l, d                                          ; $56a9: $6a
	ld c, c                                          ; $56aa: $49
	ld c, b                                          ; $56ab: $48
	xor b                                            ; $56ac: $a8
	jr z, jr_059_5687                                ; $56ad: $28 $d8

	add sp, -$0c                                     ; $56af: $e8 $f4
	ld e, d                                          ; $56b1: $5a
	ld a, c                                          ; $56b2: $79
	ld a, b                                          ; $56b3: $78
	cp b                                             ; $56b4: $b8
	jr c, jr_059_568f                                ; $56b5: $38 $d8

	jr z, jr_059_56cd                                ; $56b7: $28 $14

	ldh [$b1], a                                     ; $56b9: $e0 $b1
	sub a                                            ; $56bb: $97
	xor l                                            ; $56bc: $ad
	ld d, l                                          ; $56bd: $55
	xor [hl]                                         ; $56be: $ae
	ld d, h                                          ; $56bf: $54
	xor h                                            ; $56c0: $ac
	ld d, [hl]                                       ; $56c1: $56
	xor e                                            ; $56c2: $ab
	ld d, l                                          ; $56c3: $55
	ld [hl], h                                       ; $56c4: $74
	pop hl                                           ; $56c5: $e1
	ld a, l                                          ; $56c6: $7d
	ld a, d                                          ; $56c7: $7a
	rst $38                                          ; $56c8: $ff
	add h                                            ; $56c9: $84
	ld [hl+], a                                      ; $56ca: $22
	dec hl                                           ; $56cb: $2b
	ld h, e                                          ; $56cc: $63

jr_059_56cd:
	inc bc                                           ; $56cd: $03
	inc c                                            ; $56ce: $0c
	inc b                                            ; $56cf: $04
	ld bc, $dfc0                                     ; $56d0: $01 $c0 $df
	rst SubAFromHL                                          ; $56d3: $d7
	rst $38                                          ; $56d4: $ff
	rst $38                                          ; $56d5: $ff
	rst FarCall                                          ; $56d6: $f7
	ccf                                              ; $56d7: $3f
	jp $2d3c                                         ; $56d8: $c3 $3c $2d


	ld c, l                                          ; $56db: $4d
	ld [hl], c                                       ; $56dc: $71
	halt                                             ; $56dd: $76
	cp d                                             ; $56de: $ba
	sub d                                            ; $56df: $92
	cp a                                             ; $56e0: $bf
	ld d, $b7                                        ; $56e1: $16 $b7
	rst SubAFromHL                                          ; $56e3: $d7
	rst GetHLinHL                                          ; $56e4: $cf
	db $dd                                           ; $56e5: $dd
	rst $38                                          ; $56e6: $ff
	sub h                                            ; $56e7: $94
	ld bc, $f56a                                     ; $56e8: $01 $6a $f5
	ld a, l                                          ; $56eb: $7d
	ld d, a                                          ; $56ec: $57
	xor $b9                                          ; $56ed: $ee $b9
	rst JumpTable                                          ; $56ef: $c7
	ld a, $bf                                        ; $56f0: $3e $bf
	rst SubAFromDE                                          ; $56f2: $df
	ld a, d                                          ; $56f3: $7a
	or c                                             ; $56f4: $b1
	sbc $ff                                          ; $56f5: $de $ff
	ld a, h                                          ; $56f7: $7c
	push af                                          ; $56f8: $f5
	adc c                                            ; $56f9: $89
	ld b, c                                          ; $56fa: $41
	ld b, e                                          ; $56fb: $43
	rst JumpTable                                          ; $56fc: $c7
	rst JumpTable                                          ; $56fd: $c7
	adc a                                            ; $56fe: $8f
	rra                                              ; $56ff: $1f
	rst $38                                          ; $5700: $ff
	rst $38                                          ; $5701: $ff
	cp $fc                                           ; $5702: $fe $fc
	ld hl, sp-$08                                    ; $5704: $f8 $f8
	ldh a, [$e0]                                     ; $5706: $f0 $e0
	ld e, h                                          ; $5708: $5c
	rst FarCall                                          ; $5709: $f7
	rst SubAFromDE                                          ; $570a: $df
	rst $38                                          ; $570b: $ff
	cp $f3                                           ; $570c: $fe $f3
	rst $38                                          ; $570e: $ff
	ei                                               ; $570f: $fb
	ld h, [hl]                                       ; $5710: $66
	rst SubAFromBC                                          ; $5711: $e7
	sub a                                            ; $5712: $97
	cp c                                             ; $5713: $b9
	db $e3                                           ; $5714: $e3
	rra                                              ; $5715: $1f
	ld [$fa26], a                                    ; $5716: $ea $26 $fa
	ld c, h                                          ; $5719: $4c
	inc h                                            ; $571a: $24

jr_059_571b:
	ld [hl], b                                       ; $571b: $70
	add b                                            ; $571c: $80
	sbc h                                            ; $571d: $9c
	ld bc, $0303                                     ; $571e: $01 $03 $03
	sbc $40                                          ; $5721: $de $40
	rst $38                                          ; $5723: $ff
	sbc l                                            ; $5724: $9d
	sbc d                                            ; $5725: $9a
	ld [hl-], a                                      ; $5726: $32
	halt                                             ; $5727: $76
	push bc                                          ; $5728: $c5
	ld a, d                                          ; $5729: $7a
	jp $0c9e                                         ; $572a: $c3 $9e $0c


	ld a, [$c57d]                                    ; $572d: $fa $7d $c5
	ld e, h                                          ; $5730: $5c
	ld d, e                                          ; $5731: $53
	sbc c                                            ; $5732: $99
	inc bc                                           ; $5733: $03
	rlca                                             ; $5734: $07
	dec b                                            ; $5735: $05
	dec c                                            ; $5736: $0d
	add hl, de                                       ; $5737: $19
	dec de                                           ; $5738: $1b
	ld a, e                                          ; $5739: $7b
	ld [hl], d                                       ; $573a: $72
	rst SubAFromDE                                          ; $573b: $df
	inc b                                            ; $573c: $04
	sbc c                                            ; $573d: $99
	ld [$1110], sp                                   ; $573e: $08 $10 $11
	ld hl, sp-$04                                    ; $5741: $f8 $fc
	di                                               ; $5743: $f3
	sbc $e1                                          ; $5744: $de $e1
	add b                                            ; $5746: $80
	jp nz, $0b43                                     ; $5747: $c2 $43 $0b

	rra                                              ; $574a: $1f
	rra                                              ; $574b: $1f
	inc sp                                           ; $574c: $33
	inc sp                                           ; $574d: $33
	ld a, a                                          ; $574e: $7f
	rst $38                                          ; $574f: $ff
	rst SubAFromDE                                          ; $5750: $df
	rst GetHLinHL                                          ; $5751: $cf
	rst JumpTable                                          ; $5752: $c7
	call $bbfd                                       ; $5753: $cd $fd $bb
	ld [$1fee], a                                    ; $5756: $ea $ee $1f
	jp Jump_059_4dc5                                 ; $5759: $c3 $c5 $4d


	dec [hl]                                         ; $575c: $35
	ld bc, $ea0a                                     ; $575d: $01 $0a $ea
	cp $c3                                           ; $5760: $fe $c3
	inc bc                                           ; $5762: $03
	inc bc                                           ; $5763: $03
	add a                                            ; $5764: $87
	rst GetHLinHL                                          ; $5765: $cf
	add h                                            ; $5766: $84
	ld a, [hl]                                       ; $5767: $7e
	db $dd                                           ; $5768: $dd
	sbc c                                            ; $5769: $99
	ret nz                                           ; $576a: $c0

	ld bc, $8503                                     ; $576b: $01 $03 $85
	ld c, c                                          ; $576e: $49
	inc sp                                           ; $576f: $33
	rlca                                             ; $5770: $07
	rrca                                             ; $5771: $0f
	add a                                            ; $5772: $87
	add h                                            ; $5773: $84
	inc c                                            ; $5774: $0c
	rrca                                             ; $5775: $0f
	sub h                                            ; $5776: $94
	ld a, b                                          ; $5777: $78
	jr nc, jr_059_571b                               ; $5778: $30 $a1

	rst $38                                          ; $577a: $ff
	db $fc                                           ; $577b: $fc
	ld hl, sp-$05                                    ; $577c: $f8 $fb
	db $fc                                           ; $577e: $fc
	ld hl, sp+$70                                    ; $577f: $f8 $70
	ldh [$dd], a                                     ; $5781: $e0 $dd
	ldh a, [$dd]                                     ; $5783: $f0 $dd
	ld hl, sp-$21                                    ; $5785: $f8 $df
	db $10                                           ; $5787: $10
	sbc l                                            ; $5788: $9d
	ld [hl], b                                       ; $5789: $70
	db $10                                           ; $578a: $10
	db $dd                                           ; $578b: $dd
	ld [$b1e0], sp                                   ; $578c: $08 $e0 $b1
	sbc l                                            ; $578f: $9d
	xor d                                            ; $5790: $aa
	ld d, l                                          ; $5791: $55

Call_059_5792:
	ld [hl], a                                       ; $5792: $77
	cp $9d                                           ; $5793: $fe $9d
	cp [hl]                                          ; $5795: $be
	ld a, l                                          ; $5796: $7d
	ld sp, hl                                        ; $5797: $f9
	sub [hl]                                         ; $5798: $96
	cp h                                             ; $5799: $bc
	ld d, a                                          ; $579a: $57
	xor d                                            ; $579b: $aa
	ld d, l                                          ; $579c: $55
	xor b                                            ; $579d: $a8
	ld d, b                                          ; $579e: $50
	xor d                                            ; $579f: $aa
	ld d, l                                          ; $57a0: $55
	inc bc                                           ; $57a1: $03
	ld a, [$079c]                                    ; $57a2: $fa $9c $07
	add a                                            ; $57a5: $87
	cp a                                             ; $57a6: $bf
	ld [hl], e                                       ; $57a7: $73
	sbc $9d                                          ; $57a8: $de $9d
	rst $38                                          ; $57aa: $ff
	ld a, a                                          ; $57ab: $7f
	ei                                               ; $57ac: $fb
	sbc e                                            ; $57ad: $9b
	ldh a, [rSB]                                     ; $57ae: $f0 $01
	rrca                                             ; $57b0: $0f
	ldh a, [$73]                                     ; $57b1: $f0 $73
	ldh a, [$9c]                                     ; $57b3: $f0 $9c
	cp $f0                                           ; $57b5: $fe $f0
	rrca                                             ; $57b7: $0f
	db $fd                                           ; $57b8: $fd
	ld a, a                                          ; $57b9: $7f
	dec l                                            ; $57ba: $2d
	sbc h                                            ; $57bb: $9c
	rst $38                                          ; $57bc: $ff
	rlca                                             ; $57bd: $07
	ld hl, sp+$7b                                    ; $57be: $f8 $7b
	ldh a, [$7a]                                     ; $57c0: $f0 $7a
	ret nc                                           ; $57c2: $d0

	sbc l                                            ; $57c3: $9d
	ld hl, sp+$07                                    ; $57c4: $f8 $07
	cp $df                                           ; $57c6: $fe $df
	rst $38                                          ; $57c8: $ff
	sbc d                                            ; $57c9: $9a
	db $f4                                           ; $57ca: $f4
	rst $38                                          ; $57cb: $ff
	inc bc                                           ; $57cc: $03
	db $fc                                           ; $57cd: $fc
	xor d                                            ; $57ce: $aa
	ld a, d                                          ; $57cf: $7a
	ld [hl], b                                       ; $57d0: $70
	rst $38                                          ; $57d1: $ff
	sbc [hl]                                         ; $57d2: $9e
	db $fc                                           ; $57d3: $fc
	ld a, e                                          ; $57d4: $7b
	cp e                                             ; $57d5: $bb
	sub c                                            ; $57d6: $91
	ld hl, sp+$02                                    ; $57d7: $f8 $02
	ret nz                                           ; $57d9: $c0

	ld h, b                                          ; $57da: $60
	ret nz                                           ; $57db: $c0

	nop                                              ; $57dc: $00
	ld [hl+], a                                      ; $57dd: $22
	nop                                              ; $57de: $00
	ld b, $0c                                        ; $57df: $06 $0c
	inc e                                            ; $57e1: $1c
	jr jr_059_5814                                   ; $57e2: $18 $30

	ldh [$7a], a                                     ; $57e4: $e0 $7a
	ldh [$98], a                                     ; $57e6: $e0 $98
	ld [bc], a                                       ; $57e8: $02
	ld b, $0b                                        ; $57e9: $06 $0b
	rrca                                             ; $57eb: $0f
	ld a, [bc]                                       ; $57ec: $0a
	rlca                                             ; $57ed: $07
	rlca                                             ; $57ee: $07
	ld a, e                                          ; $57ef: $7b
	ld hl, sp-$21                                    ; $57f0: $f8 $df
	ld a, [bc]                                       ; $57f2: $0a
	sub h                                            ; $57f3: $94
	rrca                                             ; $57f4: $0f
	rlca                                             ; $57f5: $07
	inc b                                            ; $57f6: $04
	ld d, b                                          ; $57f7: $50
	xor b                                            ; $57f8: $a8
	xor b                                            ; $57f9: $a8
	cp $ff                                           ; $57fa: $fe $ff
	xor a                                            ; $57fc: $af
	ld e, l                                          ; $57fd: $5d
	ldh a, [$7b]                                     ; $57fe: $f0 $7b
	ld hl, sp-$80                                    ; $5800: $f8 $80
	xor [hl]                                         ; $5802: $ae
	xor c                                            ; $5803: $a9
	rst $38                                          ; $5804: $ff
	ldh a, [rP1]                                     ; $5805: $f0 $00
	inc de                                           ; $5807: $13
	rla                                              ; $5808: $17
	dec sp                                           ; $5809: $3b
	ccf                                              ; $580a: $3f
	rst AddAOntoHL                                          ; $580b: $ef
	rst JumpTable                                          ; $580c: $c7
	rst FarCall                                          ; $580d: $f7
	rst $38                                          ; $580e: $ff
	ld de, $2111                                     ; $580f: $11 $11 $21
	add hl, sp                                       ; $5812: $39
	push bc                                          ; $5813: $c5

jr_059_5814:
	inc bc                                           ; $5814: $03
	add e                                            ; $5815: $83
	ld b, c                                          ; $5816: $41
	ld c, e                                          ; $5817: $4b
	ld a, a                                          ; $5818: $7f
	db $fc                                           ; $5819: $fc
	ld hl, sp-$03                                    ; $581a: $f8 $fd
	xor e                                            ; $581c: $ab
	ld a, h                                          ; $581d: $7c
	rrca                                             ; $581e: $0f
	sub $d4                                          ; $581f: $d6 $d4
	add b                                            ; $5821: $80
	ld a, h                                          ; $5822: $7c
	ld b, b                                          ; $5823: $40
	cp $c7                                           ; $5824: $fe $c7
	rst $38                                          ; $5826: $ff
	and a                                            ; $5827: $a7
	jp hl                                            ; $5828: $e9


	ld a, $4f                                        ; $5829: $3e $4f
	ld l, a                                          ; $582b: $6f
	adc a                                            ; $582c: $8f
	cpl                                              ; $582d: $2f
	ei                                               ; $582e: $fb
	sub a                                            ; $582f: $97
	rst FarCall                                          ; $5830: $f7
	rra                                              ; $5831: $1f
	ld sp, $7030                                     ; $5832: $31 $30 $70
	ldh a, [$fc]                                     ; $5835: $f0 $fc
	rst GetHLinHL                                          ; $5837: $cf
	db $fc                                           ; $5838: $fc
	ld a, [de]                                       ; $5839: $1a
	ld hl, sp+$2d                                    ; $583a: $f8 $2d
	add hl, sp                                       ; $583c: $39
	sub e                                            ; $583d: $93
	adc [hl]                                         ; $583e: $8e
	xor d                                            ; $583f: $aa
	ld sp, hl                                        ; $5840: $f9
	adc l                                            ; $5841: $8d
	pop af                                           ; $5842: $f1
	di                                               ; $5843: $f3
	di                                               ; $5844: $f3
	rst SubAFromBC                                          ; $5845: $e7
	ld a, a                                          ; $5846: $7f
	ld a, [hl]                                       ; $5847: $7e
	sbc $49                                          ; $5848: $de $49
	cp d                                             ; $584a: $ba
	ldh a, [c]                                       ; $584b: $f2
	ldh a, [$c0]                                     ; $584c: $f0 $c0
	add b                                            ; $584e: $80
	ld b, b                                          ; $584f: $40
	add b                                            ; $5850: $80
	ret nz                                           ; $5851: $c0

	sub b                                            ; $5852: $90
	and b                                            ; $5853: $a0
	ld a, e                                          ; $5854: $7b
	adc b                                            ; $5855: $88
	ld a, e                                          ; $5856: $7b
	add b                                            ; $5857: $80
	ld a, d                                          ; $5858: $7a
	dec hl                                           ; $5859: $2b
	ld a, c                                          ; $585a: $79
	ld h, h                                          ; $585b: $64
	sbc [hl]                                         ; $585c: $9e
	ldh [$de], a                                     ; $585d: $e0 $de
	ld [$10de], sp                                   ; $585f: $08 $de $10
	rst SubAFromDE                                          ; $5862: $df
	jr nz, @+$01                                     ; $5863: $20 $ff

	sbc [hl]                                         ; $5865: $9e
	ld a, [bc]                                       ; $5866: $0a
	cp $7c                                           ; $5867: $fe $7c
	sub e                                            ; $5869: $93
	ld sp, hl                                        ; $586a: $f9
	ld a, a                                          ; $586b: $7f
	or $9e                                           ; $586c: $f6 $9e
	xor d                                            ; $586e: $aa
	halt                                             ; $586f: $76
	ld a, [$f05e]                                    ; $5870: $fa $5e $f0
	ld a, e                                          ; $5873: $7b
	cp $6f                                           ; $5874: $fe $6f
	db $ec                                           ; $5876: $ec
	ld e, a                                          ; $5877: $5f

jr_059_5878:
	ldh a, [rPCM34]                                  ; $5878: $f0 $77
	cp $23                                           ; $587a: $fe $23
	ldh a, [$72]                                     ; $587c: $f0 $72
	ldh [c], a                                       ; $587e: $e2
	ld l, a                                          ; $587f: $6f
	db $10                                           ; $5880: $10
	cpl                                              ; $5881: $2f
	ldh a, [$9c]                                     ; $5882: $f0 $9c
	cp a                                             ; $5884: $bf
	ld a, h                                          ; $5885: $7c
	and d                                            ; $5886: $a2
	ccf                                              ; $5887: $3f
	ldh [$9e], a                                     ; $5888: $e0 $9e
	ld d, h                                          ; $588a: $54
	inc bc                                           ; $588b: $03
	ret nz                                           ; $588c: $c0

	ld a, [$209c]                                    ; $588d: $fa $9c $20
	ld d, d                                          ; $5890: $52
	xor b                                            ; $5891: $a8
	ld a, e                                          ; $5892: $7b
	jp nc, $6e7e                                     ; $5893: $d2 $7e $6e

	ld [hl], l                                       ; $5896: $75
	and l                                            ; $5897: $a5
	ld a, l                                          ; $5898: $7d
	xor [hl]                                         ; $5899: $ae
	ld a, a                                          ; $589a: $7f
	inc a                                            ; $589b: $3c
	sbc d                                            ; $589c: $9a
	inc c                                            ; $589d: $0c
	add hl, sp                                       ; $589e: $39
	ret c                                            ; $589f: $d8

	sub d                                            ; $58a0: $92
	db $10                                           ; $58a1: $10
	ld a, e                                          ; $58a2: $7b
	db $f4                                           ; $58a3: $f4
	sbc h                                            ; $58a4: $9c
	ld [$e130], sp                                   ; $58a5: $08 $30 $e1
	ld a, c                                          ; $58a8: $79
	ld [de], a                                       ; $58a9: $12
	cp $80                                           ; $58aa: $fe $80
	ld b, b                                          ; $58ac: $40
	inc hl                                           ; $58ad: $23
	ld c, [hl]                                       ; $58ae: $4e
	rra                                              ; $58af: $1f
	inc c                                            ; $58b0: $0c
	dec de                                           ; $58b1: $1b
	db $fd                                           ; $58b2: $fd
	nop                                              ; $58b3: $00
	add b                                            ; $58b4: $80
	jp $138c                                         ; $58b5: $c3 $8c $13


	inc c                                            ; $58b8: $0c
	inc de                                           ; $58b9: $13
	ld c, $bf                                        ; $58ba: $0e $bf
	rst $38                                          ; $58bc: $ff
	sbc a                                            ; $58bd: $9f
	cp a                                             ; $58be: $bf
	rrca                                             ; $58bf: $0f
	sbc a                                            ; $58c0: $9f
	rst SubAFromBC                                          ; $58c1: $e7
	ei                                               ; $58c2: $fb
	ld h, c                                          ; $58c3: $61
	ld sp, hl                                        ; $58c4: $f9
	rlca                                             ; $58c5: $07
	pop bc                                           ; $58c6: $c1
	nop                                              ; $58c7: $00
	ret nz                                           ; $58c8: $c0

	nop                                              ; $58c9: $00
	db $fc                                           ; $58ca: $fc
	rst SubAFromDE                                          ; $58cb: $df
	inc b                                            ; $58cc: $04
	add e                                            ; $58cd: $83
	jr z, jr_059_5878                                ; $58ce: $28 $a8

	add sp, -$08                                     ; $58d0: $e8 $f8
	db $fd                                           ; $58d2: $fd
	rst SubAFromBC                                          ; $58d3: $e7
	xor h                                            ; $58d4: $ac
	xor h                                            ; $58d5: $ac
	cp h                                             ; $58d6: $bc
	db $fd                                           ; $58d7: $fd
	rst $38                                          ; $58d8: $ff
	ld a, a                                          ; $58d9: $7f
	cpl                                              ; $58da: $2f
	ld [hl+], a                                      ; $58db: $22
	ld hl, sp-$41                                    ; $58dc: $f8 $bf
	or l                                             ; $58de: $b5
	dec h                                            ; $58df: $25
	and l                                            ; $58e0: $a5
	cp a                                             ; $58e1: $bf
	ldh [rP1], a                                     ; $58e2: $e0 $00
	ld a, a                                          ; $58e4: $7f
	ld h, a                                          ; $58e5: $67
	ld l, d                                          ; $58e6: $6a
	ld a, [$fffa]                                    ; $58e7: $fa $fa $ff
	ld a, e                                          ; $58ea: $7b
	ld hl, sp-$68                                    ; $58eb: $f8 $98
	add a                                            ; $58ed: $87
	ld a, [hl]                                       ; $58ee: $7e
	ld c, a                                          ; $58ef: $4f
	ld c, a                                          ; $58f0: $4f
	rst GetHLinHL                                          ; $58f1: $cf
	ld a, a                                          ; $58f2: $7f
	inc hl                                           ; $58f3: $23
	sbc $fc                                          ; $58f4: $de $fc
	ld a, c                                          ; $58f6: $79
	adc a                                            ; $58f7: $8f
	sbc [hl]                                         ; $58f8: $9e
	ld a, $dd                                        ; $58f9: $3e $dd
	ld bc, $e1df                                     ; $58fb: $01 $df $e1
	sbc h                                            ; $58fe: $9c
	db $e3                                           ; $58ff: $e3
	or e                                             ; $5900: $b3
	rst JumpTable                                          ; $5901: $c7
	db $fd                                           ; $5902: $fd
	sbc b                                            ; $5903: $98
	ret nz                                           ; $5904: $c0

	jr nz, jr_059_5918                               ; $5905: $20 $11

	ld bc, $c0e0                                     ; $5907: $01 $e0 $c0
	ret nz                                           ; $590a: $c0

	ld [hl], l                                       ; $590b: $75
	rla                                              ; $590c: $17
	ld a, a                                          ; $590d: $7f
	ld a, b                                          ; $590e: $78
	rst SubAFromDE                                          ; $590f: $df
	ld b, b                                          ; $5910: $40
	ld [hl], e                                       ; $5911: $73
	ld hl, sp-$02                                    ; $5912: $f8 $fe
	sbc d                                            ; $5914: $9a
	dec d                                            ; $5915: $15
	nop                                              ; $5916: $00
	nop                                              ; $5917: $00

jr_059_5918:
	ld a, [hl+]                                      ; $5918: $2a
	dec b                                            ; $5919: $05
	rst FarCall                                          ; $591a: $f7
	sbc l                                            ; $591b: $9d
	ld a, [bc]                                       ; $591c: $0a
	ld b, b                                          ; $591d: $40
	ld d, a                                          ; $591e: $57
	ld d, b                                          ; $591f: $50
	ld a, [hl]                                       ; $5920: $7e
	and d                                            ; $5921: $a2
	sbc l                                            ; $5922: $9d
	xor d                                            ; $5923: $aa
	dec d                                            ; $5924: $15
	ld d, e                                          ; $5925: $53
	jr nc, jr_059_599b                               ; $5926: $30 $73

	ldh a, [c]                                       ; $5928: $f2
	ld d, $e0                                        ; $5929: $16 $e0
	ld a, a                                          ; $592b: $7f
	cp $9c                                           ; $592c: $fe $9c
	ld [$ff55], a                                    ; $592e: $ea $55 $ff
	inc de                                           ; $5931: $13
	ldh [$57], a                                     ; $5932: $e0 $57
	ldh a, [$9d]                                     ; $5934: $f0 $9d
	and c                                            ; $5936: $a1
	ld d, [hl]                                       ; $5937: $56
	ld l, e                                          ; $5938: $6b
	ldh a, [$6f]                                     ; $5939: $f0 $6f
	ld [bc], a                                       ; $593b: $02
	ld e, a                                          ; $593c: $5f
	ldh [rBCPS], a                                   ; $593d: $e0 $68
	ld c, a                                          ; $593f: $4f
	ld [hl], a                                       ; $5940: $77
	db $f4                                           ; $5941: $f4
	sbc h                                            ; $5942: $9c
	xor e                                            ; $5943: $ab
	ld d, [hl]                                       ; $5944: $56
	xor h                                            ; $5945: $ac
	ld [hl], d                                       ; $5946: $72
	and b                                            ; $5947: $a0
	ld [hl], h                                       ; $5948: $74
	ld a, l                                          ; $5949: $7d
	sbc h                                            ; $594a: $9c
	and b                                            ; $594b: $a0
	ld b, b                                          ; $594c: $40
	ret nz                                           ; $594d: $c0

	ld [hl], e                                       ; $594e: $73
	and $77                                          ; $594f: $e6 $77
	ld b, b                                          ; $5951: $40
	db $fd                                           ; $5952: $fd
	sub a                                            ; $5953: $97
	rrca                                             ; $5954: $0f
	rra                                              ; $5955: $1f
	rra                                              ; $5956: $1f
	ccf                                              ; $5957: $3f
	ccf                                              ; $5958: $3f
	ld a, a                                          ; $5959: $7f
	ld a, a                                          ; $595a: $7f

jr_059_595b:
	rst $38                                          ; $595b: $ff
	ld h, h                                          ; $595c: $64
	ld d, e                                          ; $595d: $53
	sub e                                            ; $595e: $93
	rst $38                                          ; $595f: $ff
	and $fc                                          ; $5960: $e6 $fc
	ret z                                            ; $5962: $c8

	sbc b                                            ; $5963: $98
	sub b                                            ; $5964: $90
	db $10                                           ; $5965: $10
	ld [hl], b                                       ; $5966: $70
	rlca                                             ; $5967: $07
	inc e                                            ; $5968: $1c
	jr c, @+$7a                                      ; $5969: $38 $78

	sbc $f0                                          ; $596b: $de $f0
	sbc c                                            ; $596d: $99
	sub b                                            ; $596e: $90
	cp $07                                           ; $596f: $fe $07
	ld bc, $0600                                     ; $5971: $01 $00 $06
	sbc $0f                                          ; $5974: $de $0f
	ld a, e                                          ; $5976: $7b
	ld sp, hl                                        ; $5977: $f9
	ld [hl], e                                       ; $5978: $73
	rst SubAFromDE                                          ; $5979: $df
	adc b                                            ; $597a: $88
	db $e3                                           ; $597b: $e3
	ld h, e                                          ; $597c: $63
	xor d                                            ; $597d: $aa
	xor $7f                                          ; $597e: $ee $7f
	cp a                                             ; $5980: $bf
	rst SubAFromDE                                          ; $5981: $df
	rst GetHLinHL                                          ; $5982: $cf
	ld [hl+], a                                      ; $5983: $22
	and d                                            ; $5984: $a2
	ldh [c], a                                       ; $5985: $e2
	ld h, d                                          ; $5986: $62
	ld [hl+], a                                      ; $5987: $22
	inc sp                                           ; $5988: $33
	ld a, [bc]                                       ; $5989: $0a
	rlca                                             ; $598a: $07
	add b                                            ; $598b: $80
	add b                                            ; $598c: $80
	ret nz                                           ; $598d: $c0

	ld h, b                                          ; $598e: $60
	ld [bc], a                                       ; $598f: $02
	add e                                            ; $5990: $83
	pop hl                                           ; $5991: $e1
	ld l, a                                          ; $5992: $6f
	ret nz                                           ; $5993: $c0

	sub h                                            ; $5994: $94
	add b                                            ; $5995: $80
	ld h, b                                          ; $5996: $60
	inc e                                            ; $5997: $1c
	ld hl, $0220                                     ; $5998: $21 $20 $02

jr_059_599b:
	inc bc                                           ; $599b: $03
	ld bc, $ffe3                                     ; $599c: $01 $e3 $ff
	rst $38                                          ; $599f: $ff
	ld l, e                                          ; $59a0: $6b
	ld [hl], c                                       ; $59a1: $71
	sbc d                                            ; $59a2: $9a
	nop                                              ; $59a3: $00
	and $f6                                          ; $59a4: $e6 $f6
	ld a, [hl]                                       ; $59a6: $7e
	cp [hl]                                          ; $59a7: $be
	sbc $fc                                          ; $59a8: $de $fc
	sbc e                                            ; $59aa: $9b
	ldh a, [rSC]                                     ; $59ab: $f0 $02
	add d                                            ; $59ad: $82
	ld b, d                                          ; $59ae: $42
	ld a, e                                          ; $59af: $7b
	add d                                            ; $59b0: $82
	sub a                                            ; $59b1: $97
	inc c                                            ; $59b2: $0c
	ld [hl], b                                       ; $59b3: $70
	ld [bc], a                                       ; $59b4: $02
	nop                                              ; $59b5: $00
	ld a, [hl+]                                      ; $59b6: $2a
	nop                                              ; $59b7: $00

Call_059_59b8:
	xor d                                            ; $59b8: $aa
	inc b                                            ; $59b9: $04
	ld e, e                                          ; $59ba: $5b
	jr nc, jr_059_595b                               ; $59bb: $30 $9e

	dec b                                            ; $59bd: $05
	ld a, c                                          ; $59be: $79
	jp nz, $f00a                                     ; $59bf: $c2 $0a $f0

	inc bc                                           ; $59c2: $03
	ldh a, [$5b]                                     ; $59c3: $f0 $5b
	ldh a, [$9b]                                     ; $59c5: $f0 $9b
	rst $38                                          ; $59c7: $ff
	push de                                          ; $59c8: $d5
	rst $38                                          ; $59c9: $ff
	db $dd                                           ; $59ca: $dd
	db $dd                                           ; $59cb: $dd
	rst $38                                          ; $59cc: $ff
	ld sp, hl                                        ; $59cd: $f9
	sbc l                                            ; $59ce: $9d
	ld a, [$7b55]                                    ; $59cf: $fa $55 $7b
	xor $7f                                          ; $59d2: $ee $7f
	cp $63                                           ; $59d4: $fe $63
	ldh a, [$7f]                                     ; $59d6: $f0 $7f
	sub $9e                                          ; $59d8: $d6 $9e
	xor [hl]                                         ; $59da: $ae
	ld a, d                                          ; $59db: $7a
	and d                                            ; $59dc: $a2
	ld d, [hl]                                       ; $59dd: $56
	and b                                            ; $59de: $a0
	sbc [hl]                                         ; $59df: $9e
	xor e                                            ; $59e0: $ab
	ld [hl], a                                       ; $59e1: $77
	ldh a, [rBCPS]                                   ; $59e2: $f0 $68
	ld [hl-], a                                      ; $59e4: $32
	ld [hl], a                                       ; $59e5: $77
	ldh a, [$99]                                     ; $59e6: $f0 $99
	ld a, [$ea5f]                                    ; $59e8: $fa $5f $ea
	ld a, a                                          ; $59eb: $7f
	db $eb                                           ; $59ec: $eb
	cp $fb                                           ; $59ed: $fe $fb
	sbc d                                            ; $59ef: $9a
	ld bc, $a806                                     ; $59f0: $01 $06 $a8
	ret nc                                           ; $59f3: $d0

	and b                                            ; $59f4: $a0
	ld a, d                                          ; $59f5: $7a
	ld c, $ff                                        ; $59f6: $0e $ff
	ld a, l                                          ; $59f8: $7d
	sub [hl]                                         ; $59f9: $96
	ld l, [hl]                                       ; $59fa: $6e
	adc $7e                                          ; $59fb: $ce $7e
	sbc $9a                                          ; $59fd: $de $9a
	rlca                                             ; $59ff: $07
	rrca                                             ; $5a00: $0f
	rra                                              ; $5a01: $1f
	ld a, $78                                        ; $5a02: $3e $78
	ld a, b                                          ; $5a04: $78
	ld b, [hl]                                       ; $5a05: $46
	ld [hl], a                                       ; $5a06: $77
	ldh [c], a                                       ; $5a07: $e2
	sub l                                            ; $5a08: $95
	jr jr_059_5a6b                                   ; $5a09: $18 $60

	db $fd                                           ; $5a0b: $fd
	ld sp, hl                                        ; $5a0c: $f9
	ei                                               ; $5a0d: $fb
	db $ed                                           ; $5a0e: $ed
	adc c                                            ; $5a0f: $89
	ld de, $7f21                                     ; $5a10: $11 $21 $7f
	ld a, e                                          ; $5a13: $7b
	ld [$787c], a                                    ; $5a14: $ea $7c $78
	ld a, [hl]                                       ; $5a17: $7e
	or l                                             ; $5a18: $b5
	sub [hl]                                         ; $5a19: $96
	ld a, a                                          ; $5a1a: $7f
	ldh a, [$f0]                                     ; $5a1b: $f0 $f0
	ld a, b                                          ; $5a1d: $78
	inc l                                            ; $5a1e: $2c
	dec de                                           ; $5a1f: $1b
	adc l                                            ; $5a20: $8d
	add [hl]                                         ; $5a21: $86
	ld bc, $10de                                     ; $5a22: $01 $de $10
	sub a                                            ; $5a25: $97
	jr jr_059_5a34                                   ; $5a26: $18 $0c

	ld b, $03                                        ; $5a28: $06 $03
	add e                                            ; $5a2a: $83
	ld b, $06                                        ; $5a2b: $06 $06
	inc b                                            ; $5a2d: $04
	ld a, d                                          ; $5a2e: $7a
	add sp, -$63                                     ; $5a2f: $e8 $9d
	ld b, b                                          ; $5a31: $40
	ldh [$6e], a                                     ; $5a32: $e0 $6e

jr_059_5a34:
	ldh a, [$7f]                                     ; $5a34: $f0 $7f
	cp a                                             ; $5a36: $bf
	add b                                            ; $5a37: $80
	rst SubAFromBC                                          ; $5a38: $e7
	and e                                            ; $5a39: $a3
	ld d, c                                          ; $5a3a: $51
	ld h, b                                          ; $5a3b: $60
	jr c, jr_059_5a5a                                ; $5a3c: $38 $1c

	ld c, $07                                        ; $5a3e: $0e $07
	add e                                            ; $5a40: $83
	pop bc                                           ; $5a41: $c1
	ld h, b                                          ; $5a42: $60
	jr nc, jr_059_5a55                               ; $5a43: $30 $10

	ld [$0604], sp                                   ; $5a45: $08 $04 $06
	rst $38                                          ; $5a48: $ff
	ccf                                              ; $5a49: $3f
	adc b                                            ; $5a4a: $88
	ret z                                            ; $5a4b: $c8

	ld l, b                                          ; $5a4c: $68
	jr c, @+$1a                                      ; $5a4d: $38 $18

	ld c, $c3                                        ; $5a4f: $0e $c3
	rst $38                                          ; $5a51: $ff
	rst $38                                          ; $5a52: $ff
	ld a, a                                          ; $5a53: $7f
	ccf                                              ; $5a54: $3f

jr_059_5a55:
	rra                                              ; $5a55: $1f
	rrca                                             ; $5a56: $0f
	sub l                                            ; $5a57: $95
	rlca                                             ; $5a58: $07
	rst $38                                          ; $5a59: $ff

jr_059_5a5a:
	cp $aa                                           ; $5a5a: $fe $aa
	xor d                                            ; $5a5c: $aa
	sub l                                            ; $5a5d: $95
	sub l                                            ; $5a5e: $95
	sub h                                            ; $5a5f: $94
	sub d                                            ; $5a60: $92
	add e                                            ; $5a61: $83
	jp c, $97ff                                      ; $5a62: $da $ff $97

	ld [$6aff], a                                    ; $5a65: $ea $ff $6a
	ld a, a                                          ; $5a68: $7f
	ld a, [hl-]                                      ; $5a69: $3a
	ccf                                              ; $5a6a: $3f

jr_059_5a6b:
	cp d                                             ; $5a6b: $ba
	sbc a                                            ; $5a6c: $9f
	ld a, d                                          ; $5a6d: $7a
	sbc b                                            ; $5a6e: $98
	sbc [hl]                                         ; $5a6f: $9e
	ret nz                                           ; $5a70: $c0

	sbc $e0                                          ; $5a71: $de $e0
	sub a                                            ; $5a73: $97
	ldh a, [$aa]                                     ; $5a74: $f0 $aa
	push de                                          ; $5a76: $d5
	xor d                                            ; $5a77: $aa
	push af                                          ; $5a78: $f5
	xor d                                            ; $5a79: $aa
	rst $38                                          ; $5a7a: $ff
	xor d                                            ; $5a7b: $aa
	ld e, e                                          ; $5a7c: $5b
	jr nc, jr_059_5af2                               ; $5a7d: $30 $73

	cp $9e                                           ; $5a7f: $fe $9e
	push af                                          ; $5a81: $f5
	ld [bc], a                                       ; $5a82: $02
	ldh [$fa], a                                     ; $5a83: $e0 $fa
	sbc e                                            ; $5a85: $9b
	xor e                                            ; $5a86: $ab
	ld d, c                                          ; $5a87: $51
	xor e                                            ; $5a88: $ab
	ld d, h                                          ; $5a89: $54
	ld l, e                                          ; $5a8a: $6b
	ldh a, [$9e]                                     ; $5a8b: $f0 $9e
	dec bc                                           ; $5a8d: $0b
	ld l, a                                          ; $5a8e: $6f
	ldh [$9e], a                                     ; $5a8f: $e0 $9e
	ld a, [hl+]                                      ; $5a91: $2a
	ld l, c                                          ; $5a92: $69
	ret nc                                           ; $5a93: $d0

	ld l, l                                          ; $5a94: $6d
	add sp, -$27                                     ; $5a95: $e8 $d9
	rst $38                                          ; $5a97: $ff
	ld h, d                                          ; $5a98: $62
	or b                                             ; $5a99: $b0
	inc bc                                           ; $5a9a: $03
	ldh a, [$dd]                                     ; $5a9b: $f0 $dd
	rst $38                                          ; $5a9d: $ff
	sbc l                                            ; $5a9e: $9d
	cp $fd                                           ; $5a9f: $fe $fd

jr_059_5aa1:
	ld l, [hl]                                       ; $5aa1: $6e
	pop de                                           ; $5aa2: $d1
	ld a, [hl]                                       ; $5aa3: $7e
	db $e3                                           ; $5aa4: $e3
	add e                                            ; $5aa5: $83
	ld sp, hl                                        ; $5aa6: $f9
	ld hl, sp-$14                                    ; $5aa7: $f8 $ec
	ldh [hDisp1_OBP1], a                                     ; $5aa9: $e0 $94
	jp nz, $d421                                     ; $5aab: $c2 $21 $d4

	add hl, bc                                       ; $5aae: $09
	db $10                                           ; $5aaf: $10
	jr nz, jr_059_5b12                               ; $5ab0: $20 $60

	add b                                            ; $5ab2: $80
	ret nz                                           ; $5ab3: $c0

	ldh [$f0], a                                     ; $5ab4: $e0 $f0
	ld bc, $4783                                     ; $5ab6: $01 $83 $47
	ccf                                              ; $5ab9: $3f
	ld e, a                                          ; $5aba: $5f
	rra                                              ; $5abb: $1f
	cp a                                             ; $5abc: $bf
	rst $38                                          ; $5abd: $ff
	ld bc, $4482                                     ; $5abe: $01 $82 $44
	jr c, jr_059_5aa1                                ; $5ac1: $38 $de

	db $10                                           ; $5ac3: $10
	sbc h                                            ; $5ac4: $9c

jr_059_5ac5:
	jr nz, jr_059_5ac5                               ; $5ac5: $20 $fe

	cp $db                                           ; $5ac7: $fe $db
	rst $38                                          ; $5ac9: $ff
	ld l, c                                          ; $5aca: $69
	ld h, c                                          ; $5acb: $61
	add e                                            ; $5acc: $83
	nop                                              ; $5acd: $00
	rst FarCall                                          ; $5ace: $f7
	xor $d9                                          ; $5acf: $ee $d9
	and [hl]                                         ; $5ad1: $a6
	ld sp, hl                                        ; $5ad2: $f9
	rst SubAFromBC                                          ; $5ad3: $e7
	ld a, a                                          ; $5ad4: $7f
	rst AddAOntoHL                                          ; $5ad5: $ef
	adc h                                            ; $5ad6: $8c
	sbc c                                            ; $5ad7: $99
	or [hl]                                          ; $5ad8: $b6
	ld sp, hl                                        ; $5ad9: $f9
	ld b, a                                          ; $5ada: $47
	sbc a                                            ; $5adb: $9f
	rst $38                                          ; $5adc: $ff
	rra                                              ; $5add: $1f
	jp $a2c3                                         ; $5ade: $c3 $c3 $a2


	db $e3                                           ; $5ae1: $e3
	db $d3                                           ; $5ae2: $d3
	ei                                               ; $5ae3: $fb
	rst AddAOntoHL                                          ; $5ae4: $ef
	rst FarCall                                          ; $5ae5: $f7
	add c                                            ; $5ae6: $81
	add c                                            ; $5ae7: $81
	pop bc                                           ; $5ae8: $c1
	ld a, e                                          ; $5ae9: $7b
	db $10                                           ; $5aea: $10
	sub h                                            ; $5aeb: $94
	ldh a, [$f8]                                     ; $5aec: $f0 $f8
	ldh [rSVBK], a                                   ; $5aee: $e0 $70
	ldh a, [$f8]                                     ; $5af0: $f0 $f8

jr_059_5af2:
	cp b                                             ; $5af2: $b8
	ld a, b                                          ; $5af3: $78
	db $fc                                           ; $5af4: $fc
	cp [hl]                                          ; $5af5: $be
	nop                                              ; $5af6: $00
	sbc $80                                          ; $5af7: $de $80
	rst SubAFromDE                                          ; $5af9: $df
	ret nz                                           ; $5afa: $c0

	sbc d                                            ; $5afb: $9a
	ld b, b                                          ; $5afc: $40
	ld h, b                                          ; $5afd: $60
	rlca                                             ; $5afe: $07
	inc bc                                           ; $5aff: $03
	inc bc                                           ; $5b00: $03
	sbc $01                                          ; $5b01: $de $01
	rst $38                                          ; $5b03: $ff
	sbc [hl]                                         ; $5b04: $9e
	ld [bc], a                                       ; $5b05: $02
	ld [hl], a                                       ; $5b06: $77
	ei                                               ; $5b07: $fb
	cp $9d                                           ; $5b08: $fe $9d
	dec c                                            ; $5b0a: $0d
	sbc h                                            ; $5b0b: $9c
	call c, $89fe                                    ; $5b0c: $dc $fe $89
	rst $38                                          ; $5b0f: $ff
	rlca                                             ; $5b10: $07
	rlca                                             ; $5b11: $07

jr_059_5b12:
	inc bc                                           ; $5b12: $03
	add e                                            ; $5b13: $83
	add e                                            ; $5b14: $83
	ld b, e                                          ; $5b15: $43
	ld b, e                                          ; $5b16: $43
	ld hl, $f6b6                                     ; $5b17: $21 $b6 $f6
	ld l, a                                          ; $5b1a: $6f
	ld e, e                                          ; $5b1b: $5b
	ld a, $24                                        ; $5b1c: $3e $24
	inc d                                            ; $5b1e: $14
	ld a, [de]                                       ; $5b1f: $1a
	db $db                                           ; $5b20: $db
	db $db                                           ; $5b21: $db
	reti                                             ; $5b22: $d9


	db $ed                                           ; $5b23: $ed
	push hl                                          ; $5b24: $e5
	sbc $ff                                          ; $5b25: $de $ff
	sub a                                            ; $5b27: $97
	ld c, a                                          ; $5b28: $4f
	ld b, h                                          ; $5b29: $44
	ld [hl], e                                       ; $5b2a: $73
	dec l                                            ; $5b2b: $2d
	and e                                            ; $5b2c: $a3
	sub b                                            ; $5b2d: $90
	ld d, c                                          ; $5b2e: $51
	jr z, jr_059_5b9c                                ; $5b2f: $28 $6b

	ld e, b                                          ; $5b31: $58
	rst SubAFromDE                                          ; $5b32: $df
	rst $38                                          ; $5b33: $ff
	sbc b                                            ; $5b34: $98
	ld a, e                                          ; $5b35: $7b
	and $3f                                          ; $5b36: $e6 $3f
	rra                                              ; $5b38: $1f
	rst AddAOntoHL                                          ; $5b39: $ef
	rst SubAFromDE                                          ; $5b3a: $df
	ld [hl], a                                       ; $5b3b: $77
	halt                                             ; $5b3c: $76
	or c                                             ; $5b3d: $b1
	ld a, a                                          ; $5b3e: $7f
	and [hl]                                         ; $5b3f: $a6
	sbc e                                            ; $5b40: $9b
	inc a                                            ; $5b41: $3c
	adc h                                            ; $5b42: $8c
	xor d                                            ; $5b43: $aa
	db $fd                                           ; $5b44: $fd
	ld a, e                                          ; $5b45: $7b
	cp $7a                                           ; $5b46: $fe $7a
	sbc d                                            ; $5b48: $9a
	ld c, d                                          ; $5b49: $4a
	ret nc                                           ; $5b4a: $d0

	ld l, a                                          ; $5b4b: $6f
	jr nc, @+$71                                     ; $5b4c: $30 $6f

	ldh a, [$9d]                                     ; $5b4e: $f0 $9d
	ld b, e                                          ; $5b50: $43
	xor a                                            ; $5b51: $af
	ld a, d                                          ; $5b52: $7a
	adc h                                            ; $5b53: $8c
	ld c, e                                          ; $5b54: $4b
	ldh [$9e], a                                     ; $5b55: $e0 $9e
	push de                                          ; $5b57: $d5
	ld c, e                                          ; $5b58: $4b
	ldh a, [$9e]                                     ; $5b59: $f0 $9e
	rst FarCall                                          ; $5b5b: $f7
	ld [bc], a                                       ; $5b5c: $02
	ret nc                                           ; $5b5d: $d0

	ld d, a                                          ; $5b5e: $57
	ldh a, [$7c]                                     ; $5b5f: $f0 $7c
	pop af                                           ; $5b61: $f1
	ld [hl], c                                       ; $5b62: $71
	ret nz                                           ; $5b63: $c0

	add b                                            ; $5b64: $80
	inc bc                                           ; $5b65: $03
	rrca                                             ; $5b66: $0f
	ld d, $27                                        ; $5b67: $16 $27
	add $b8                                          ; $5b69: $c6 $b8
	ret nz                                           ; $5b6b: $c0

	ldh [rAUD4LEN], a                                ; $5b6c: $e0 $20
	db $10                                           ; $5b6e: $10
	dec bc                                           ; $5b6f: $0b
	db $10                                           ; $5b70: $10
	rlca                                             ; $5b71: $07
	add hl, bc                                       ; $5b72: $09
	nop                                              ; $5b73: $00
	ld sp, hl                                        ; $5b74: $f9
	sub b                                            ; $5b75: $90
	ld c, d                                          ; $5b76: $4a
	and e                                            ; $5b77: $a3
	ld c, l                                          ; $5b78: $4d
	dec hl                                           ; $5b79: $2b
	cpl                                              ; $5b7a: $2f
	ccf                                              ; $5b7b: $3f
	cpl                                              ; $5b7c: $2f
	rrca                                             ; $5b7d: $0f
	rla                                              ; $5b7e: $17
	cpl                                              ; $5b7f: $2f
	ccf                                              ; $5b80: $3f
	ld hl, sp-$07                                    ; $5b81: $f8 $f9
	cp $9a                                           ; $5b83: $fe $9a
	inc a                                            ; $5b85: $3c
	call c, $38dc                                    ; $5b86: $dc $dc $38
	ret nc                                           ; $5b89: $d0

	reti                                             ; $5b8a: $d9


	rst $38                                          ; $5b8b: $ff
	sbc [hl]                                         ; $5b8c: $9e
	ret nz                                           ; $5b8d: $c0

	ld e, e                                          ; $5b8e: $5b
	ret nz                                           ; $5b8f: $c0

	sbc e                                            ; $5b90: $9b
	db $fd                                           ; $5b91: $fd
	rst FarCall                                          ; $5b92: $f7
	rst $38                                          ; $5b93: $ff
	rst SubAFromDE                                          ; $5b94: $df
	ld l, a                                          ; $5b95: $6f
	ret nz                                           ; $5b96: $c0

	ld a, l                                          ; $5b97: $7d
	adc a                                            ; $5b98: $8f
	rst SubAFromDE                                          ; $5b99: $df
	ei                                               ; $5b9a: $fb
	sbc l                                            ; $5b9b: $9d

jr_059_5b9c:
	rst SubAFromDE                                          ; $5b9c: $df
	ld a, a                                          ; $5b9d: $7f
	db $dd                                           ; $5b9e: $dd
	rst $38                                          ; $5b9f: $ff
	rst SubAFromDE                                          ; $5ba0: $df
	rlca                                             ; $5ba1: $07
	sbc [hl]                                         ; $5ba2: $9e
	ccf                                              ; $5ba3: $3f
	jp c, Jump_059_6eff                              ; $5ba4: $da $ff $6e

	sbc a                                            ; $5ba7: $9f
	sbc l                                            ; $5ba8: $9d
	ld hl, sp-$04                                    ; $5ba9: $f8 $fc
	db $db                                           ; $5bab: $db
	rst $38                                          ; $5bac: $ff
	sbc e                                            ; $5bad: $9b
	cp [hl]                                          ; $5bae: $be
	cpl                                              ; $5baf: $2f
	rra                                              ; $5bb0: $1f
	rst SubAFromHL                                          ; $5bb1: $d7
	ld a, e                                          ; $5bb2: $7b
	adc $97                                          ; $5bb3: $ce $97
	cp $60                                           ; $5bb5: $fe $60
	ldh a, [$f0]                                     ; $5bb7: $f0 $f0
	ld hl, sp-$08                                    ; $5bb9: $f8 $f8
	db $fc                                           ; $5bbb: $fc
	cp $77                                           ; $5bbc: $fe $77
	ld a, b                                          ; $5bbe: $78
	ld a, d                                          ; $5bbf: $7a
	or a                                             ; $5bc0: $b7
	rst SubAFromDE                                          ; $5bc1: $df
	ldh [$f9], a                                     ; $5bc2: $e0 $f9
	sub d                                            ; $5bc4: $92
	rst AddAOntoHL                                          ; $5bc5: $ef
	ld e, a                                          ; $5bc6: $5f
	ld a, a                                          ; $5bc7: $7f
	ld [hl], a                                       ; $5bc8: $77
	ld l, a                                          ; $5bc9: $6f
	jr c, jr_059_5c09                                ; $5bca: $38 $3d

	ccf                                              ; $5bcc: $3f
	ld sp, $1131                                     ; $5bcd: $31 $31 $11
	add hl, de                                       ; $5bd0: $19
	add hl, de                                       ; $5bd1: $19
	sbc $0f                                          ; $5bd2: $de $0f
	sub a                                            ; $5bd4: $97
	rla                                              ; $5bd5: $17
	ld d, c                                          ; $5bd6: $51
	jr nc, jr_059_5bf1                               ; $5bd7: $30 $18

	add a                                            ; $5bd9: $87
	add e                                            ; $5bda: $83
	rst JumpTable                                          ; $5bdb: $c7
	db $fc                                           ; $5bdc: $fc
	ld l, e                                          ; $5bdd: $6b
	cp c                                             ; $5bde: $b9
	ld a, e                                          ; $5bdf: $7b
	or c                                             ; $5be0: $b1
	sbc e                                            ; $5be1: $9b
	di                                               ; $5be2: $f3
	sbc $fb                                          ; $5be3: $de $fb
	rst AddAOntoHL                                          ; $5be5: $ef
	ld a, e                                          ; $5be6: $7b
	and h                                            ; $5be7: $a4
	sub [hl]                                         ; $5be8: $96
	ld bc, $3f0f                                     ; $5be9: $01 $0f $3f
	db $fc                                           ; $5bec: $fc
	ldh a, [$c0]                                     ; $5bed: $f0 $c0
	nop                                              ; $5bef: $00
	rst $38                                          ; $5bf0: $ff

jr_059_5bf1:
	rst AddAOntoHL                                          ; $5bf1: $ef
	db $db                                           ; $5bf2: $db
	rst $38                                          ; $5bf3: $ff
	sbc l                                            ; $5bf4: $9d
	ld hl, sp-$10                                    ; $5bf5: $f8 $f0
	ld l, [hl]                                       ; $5bf7: $6e
	ld a, $9e                                        ; $5bf8: $3e $9e
	ei                                               ; $5bfa: $fb
	ld a, e                                          ; $5bfb: $7b
	rst SubAFromHL                                          ; $5bfc: $d7
	ld a, a                                          ; $5bfd: $7f
	db $fc                                           ; $5bfe: $fc
	ld e, b                                          ; $5bff: $58
	and b                                            ; $5c00: $a0
	ld a, c                                          ; $5c01: $79
	ld h, h                                          ; $5c02: $64
	ld a, [hl]                                       ; $5c03: $7e
	or d                                             ; $5c04: $b2
	ld e, e                                          ; $5c05: $5b
	ldh a, [$9e]                                     ; $5c06: $f0 $9e
	rst FarCall                                          ; $5c08: $f7

jr_059_5c09:
	ld [hl], a                                       ; $5c09: $77
	xor $9e                                          ; $5c0a: $ee $9e
	xor e                                            ; $5c0c: $ab
	ld e, a                                          ; $5c0d: $5f
	ldh a, [$71]                                     ; $5c0e: $f0 $71
	ld b, d                                          ; $5c10: $42
	sbc [hl]                                         ; $5c11: $9e
	ld a, [$d053]                                    ; $5c12: $fa $53 $d0
	ld d, l                                          ; $5c15: $55
	jr nc, jr_059_5c5e                               ; $5c16: $30 $46

	nop                                              ; $5c18: $00
	call c, $de22                                    ; $5c19: $dc $22 $de
	ld d, l                                          ; $5c1c: $55
	jp c, $9e22                                      ; $5c1d: $da $22 $9e

	dec h                                            ; $5c20: $25
	dec sp                                           ; $5c21: $3b
	or $9c                                           ; $5c22: $f6 $9c
	ld b, h                                          ; $5c24: $44
	ld d, h                                          ; $5c25: $54
	ld d, d                                          ; $5c26: $52
	db $db                                           ; $5c27: $db
	ld [hl+], a                                      ; $5c28: $22
	sbc e                                            ; $5c29: $9b
	inc h                                            ; $5c2a: $24
	ld [hl], a                                       ; $5c2b: $77
	ld [hl], a                                       ; $5c2c: $77
	ld b, d                                          ; $5c2d: $42
	ld l, a                                          ; $5c2e: $6f
	db $e4                                           ; $5c2f: $e4
	sbc h                                            ; $5c30: $9c
	ld d, h                                          ; $5c31: $54
	ld h, [hl]                                       ; $5c32: $66
	ld h, a                                          ; $5c33: $67
	ld l, a                                          ; $5c34: $6f
	or $9c                                           ; $5c35: $f6 $9c
	ld h, l                                          ; $5c37: $65
	ld d, l                                          ; $5c38: $55
	ld b, [hl]                                       ; $5c39: $46
	ld l, a                                          ; $5c3a: $6f
	db $ec                                           ; $5c3b: $ec
	sbc d                                            ; $5c3c: $9a
	ld h, $65                                        ; $5c3d: $26 $65
	ld d, l                                          ; $5c3f: $55
	ld d, a                                          ; $5c40: $57
	ld [hl], h                                       ; $5c41: $74
	call c, $9a22                                    ; $5c42: $dc $22 $9a
	ld h, [hl]                                       ; $5c45: $66
	ld b, h                                          ; $5c46: $44
	ld d, l                                          ; $5c47: $55
	ld d, h                                          ; $5c48: $54
	halt                                             ; $5c49: $76
	db $dd                                           ; $5c4a: $dd
	ld [hl+], a                                      ; $5c4b: $22
	sbc b                                            ; $5c4c: $98
	inc hl                                           ; $5c4d: $23
	ld [hl], $66                                     ; $5c4e: $36 $66
	ld d, l                                          ; $5c50: $55
	ld d, h                                          ; $5c51: $54
	ld h, [hl]                                       ; $5c52: $66
	ld h, d                                          ; $5c53: $62
	ld [hl], a                                       ; $5c54: $77
	db $ed                                           ; $5c55: $ed
	sbc e                                            ; $5c56: $9b
	inc sp                                           ; $5c57: $33
	ld h, [hl]                                       ; $5c58: $66
	ld d, l                                          ; $5c59: $55
	ld d, l                                          ; $5c5a: $55
	ld [hl], a                                       ; $5c5b: $77
	or $b8                                           ; $5c5c: $f6 $b8

jr_059_5c5e:
	ld a, [bc]                                       ; $5c5e: $0a
	ld sp, hl                                        ; $5c5f: $f9
	sub a                                            ; $5c60: $97
	add b                                            ; $5c61: $80
	nop                                              ; $5c62: $00
	ldh [c], a                                       ; $5c63: $e2
	nop                                              ; $5c64: $00
	rst $38                                          ; $5c65: $ff
	nop                                              ; $5c66: $00
	ld a, b                                          ; $5c67: $78
	add a                                            ; $5c68: $87
	ld sp, hl                                        ; $5c69: $f9
	sbc h                                            ; $5c6a: $9c
	ld d, l                                          ; $5c6b: $55
	nop                                              ; $5c6c: $00
	xor [hl]                                         ; $5c6d: $ae
	ld a, e                                          ; $5c6e: $7b
	ldh a, [$7f]                                     ; $5c6f: $f0 $7f
	cp $6f                                           ; $5c71: $fe $6f
	db $f4                                           ; $5c73: $f4

Call_059_5c74:
	sbc h                                            ; $5c74: $9c
	ld [$5f00], a                                    ; $5c75: $ea $00 $5f
	ld a, e                                          ; $5c78: $7b
	db $f4                                           ; $5c79: $f4
	sbc e                                            ; $5c7a: $9b
	cp $01                                           ; $5c7b: $fe $01
	xor $01                                          ; $5c7d: $ee $01
	db $fd                                           ; $5c7f: $fd
	add [hl]                                         ; $5c80: $86
	ld e, h                                          ; $5c81: $5c
	nop                                              ; $5c82: $00
	or a                                             ; $5c83: $b7
	nop                                              ; $5c84: $00
	dec d                                            ; $5c85: $15
	ret nz                                           ; $5c86: $c0

	ld bc, $19c0                                     ; $5c87: $01 $c0 $19
	call nz, $c419                                   ; $5c8a: $c4 $19 $c4
	cp $01                                           ; $5c8d: $fe $01
	rra                                              ; $5c8f: $1f
	nop                                              ; $5c90: $00
	dec bc                                           ; $5c91: $0b
	nop                                              ; $5c92: $00
	dec b                                            ; $5c93: $05
	nop                                              ; $5c94: $00
	ld a, [$c000]                                    ; $5c95: $fa $00 $c0
	nop                                              ; $5c98: $00
	ld hl, sp+$77                                    ; $5c99: $f8 $77
	ret nc                                           ; $5c9b: $d0

	ld a, e                                          ; $5c9c: $7b
	res 2, [hl]                                      ; $5c9d: $cb $96
	ld hl, sp+$07                                    ; $5c9f: $f8 $07
	ld a, a                                          ; $5ca1: $7f
	nop                                              ; $5ca2: $00
	xor a                                            ; $5ca3: $af
	nop                                              ; $5ca4: $00
	rla                                              ; $5ca5: $17
	nop                                              ; $5ca6: $00
	cp a                                             ; $5ca7: $bf
	ld l, e                                          ; $5ca8: $6b
	ldh a, [$99]                                     ; $5ca9: $f0 $99
	ld bc, $07fe                                     ; $5cab: $01 $fe $07
	ld hl, sp-$61                                    ; $5cae: $f8 $9f
	ld h, b                                          ; $5cb0: $60
	ld [hl], a                                       ; $5cb1: $77
	or d                                             ; $5cb2: $b2
	ld a, a                                          ; $5cb3: $7f
	cp $7f                                           ; $5cb4: $fe $7f
	or $9a                                           ; $5cb6: $f6 $9a
	inc e                                            ; $5cb8: $1c
	ldh [hDisp1_SCY], a                                     ; $5cb9: $e0 $90
	ld h, b                                          ; $5cbb: $60
	ldh a, [$fe]                                     ; $5cbc: $f0 $fe
	ld a, a                                          ; $5cbe: $7f
	ret nc                                           ; $5cbf: $d0

	ld a, a                                          ; $5cc0: $7f
	ld a, [$f07f]                                    ; $5cc1: $fa $7f $f0
	rst SubAFromDE                                          ; $5cc4: $df
	ld bc, $07df                                     ; $5cc5: $01 $df $07
	add b                                            ; $5cc8: $80
	dec c                                            ; $5cc9: $0d
	rrca                                             ; $5cca: $0f
	dec d                                            ; $5ccb: $15
	rra                                              ; $5ccc: $1f
	ccf                                              ; $5ccd: $3f
	ccf                                              ; $5cce: $3f
	ld d, [hl]                                       ; $5ccf: $56
	ld a, a                                          ; $5cd0: $7f
	ld e, l                                          ; $5cd1: $5d
	ld [hl], a                                       ; $5cd2: $77
	rst SubAFromHL                                          ; $5cd3: $d7
	rst $38                                          ; $5cd4: $ff
	or h                                             ; $5cd5: $b4
	rst SubAFromDE                                          ; $5cd6: $df
	ld l, [hl]                                       ; $5cd7: $6e
	or l                                             ; $5cd8: $b5
	push de                                          ; $5cd9: $d5
	inc h                                            ; $5cda: $24
	sub e                                            ; $5cdb: $93
	ld h, [hl]                                       ; $5cdc: $66
	di                                               ; $5cdd: $f3
	rst SubAFromBC                                          ; $5cde: $e7
	sbc e                                            ; $5cdf: $9b
	ld d, $fa                                        ; $5ce0: $16 $fa
	adc $b7                                          ; $5ce2: $ce $b7
	ld a, $4c                                        ; $5ce4: $3e $4c
	db $fc                                           ; $5ce6: $fc
	and [hl]                                         ; $5ce7: $a6
	add [hl]                                         ; $5ce8: $86
	ld a, [hl]                                       ; $5ce9: $7e
	dec [hl]                                         ; $5cea: $35
	ld l, a                                          ; $5ceb: $6f
	ld e, b                                          ; $5cec: $58
	daa                                              ; $5ced: $27
	ld h, d                                          ; $5cee: $62
	dec b                                            ; $5cef: $05
	db $d3                                           ; $5cf0: $d3
	and h                                            ; $5cf1: $a4
	jp nc, Jump_059_7a65                             ; $5cf2: $d2 $65 $7a

	db $fd                                           ; $5cf5: $fd
	ldh [$bf], a                                     ; $5cf6: $e0 $bf
	and b                                            ; $5cf8: $a0
	cp a                                             ; $5cf9: $bf
	or b                                             ; $5cfa: $b0
	rra                                              ; $5cfb: $1f
	ret nc                                           ; $5cfc: $d0

	sbc a                                            ; $5cfd: $9f
	ret nc                                           ; $5cfe: $d0

	ld e, a                                          ; $5cff: $5f
	ld hl, sp+$4f                                    ; $5d00: $f8 $4f
	ld a, e                                          ; $5d02: $7b
	cp $7f                                           ; $5d03: $fe $7f
	sbc c                                            ; $5d05: $99
	sbc c                                            ; $5d06: $99
	rst $38                                          ; $5d07: $ff
	inc b                                            ; $5d08: $04
	ld hl, sp+$00                                    ; $5d09: $f8 $00
	db $fc                                           ; $5d0b: $fc
	inc b                                            ; $5d0c: $04
	ld a, e                                          ; $5d0d: $7b
	cp $99                                           ; $5d0e: $fe $99
	db $10                                           ; $5d10: $10
	ldh a, [$32]                                     ; $5d11: $f0 $32
	pop af                                           ; $5d13: $f1
	ld [hl-], a                                      ; $5d14: $32
	pop af                                           ; $5d15: $f1
	ld [hl], e                                       ; $5d16: $73
	sbc e                                            ; $5d17: $9b
	ld a, a                                          ; $5d18: $7f
	ld [$af96], a                                    ; $5d19: $ea $96 $af
	and b                                            ; $5d1c: $a0
	rrca                                             ; $5d1d: $0f
	nop                                              ; $5d1e: $00
	rlca                                             ; $5d1f: $07
	and b                                            ; $5d20: $a0
	ld d, a                                          ; $5d21: $57
	and b                                            ; $5d22: $a0
	ld d, a                                          ; $5d23: $57
	ld [hl], e                                       ; $5d24: $73
	ldh a, [$7b]                                     ; $5d25: $f0 $7b
	ld a, [hl]                                       ; $5d27: $7e
	sbc e                                            ; $5d28: $9b
	jr nc, @-$32                                     ; $5d29: $30 $cc

	ld [$77f7], sp                                   ; $5d2b: $08 $f7 $77
	or $92                                           ; $5d2e: $f6 $92
	pop bc                                           ; $5d30: $c1
	nop                                              ; $5d31: $00
	ld a, $c1                                        ; $5d32: $3e $c1
	ld bc, $87fe                                     ; $5d34: $01 $fe $87
	ld a, b                                          ; $5d37: $78
	cp [hl]                                          ; $5d38: $be
	nop                                              ; $5d39: $00
	ld e, d                                          ; $5d3a: $5a
	jr nz, jr_059_5d4c                               ; $5d3b: $20 $0f

	ld a, e                                          ; $5d3d: $7b
	ld a, a                                          ; $5d3e: $7f
	sub c                                            ; $5d3f: $91
	call z, $1030                                    ; $5d40: $cc $30 $10
	ldh [$b8], a                                     ; $5d43: $e0 $b8
	ld b, b                                          ; $5d45: $40
	inc b                                            ; $5d46: $04
	nop                                              ; $5d47: $00
	ld [bc], a                                       ; $5d48: $02
	nop                                              ; $5d49: $00
	sbc c                                            ; $5d4a: $99
	nop                                              ; $5d4b: $00

jr_059_5d4c:
	ld h, h                                          ; $5d4c: $64
	sbc e                                            ; $5d4d: $9b
	ld [hl], e                                       ; $5d4e: $73
	ld l, a                                          ; $5d4f: $6f
	sub b                                            ; $5d50: $90
	ld b, $07                                        ; $5d51: $06 $07
	ld [$0817], sp                                   ; $5d53: $08 $17 $08
	ld [hl-], a                                      ; $5d56: $32
	dec c                                            ; $5d57: $0d
	push bc                                          ; $5d58: $c5
	ld a, [hl-]                                      ; $5d59: $3a
	sub d                                            ; $5d5a: $92
	ld a, l                                          ; $5d5b: $7d
	cp d                                             ; $5d5c: $ba
	ld a, a                                          ; $5d5d: $7f
	ld a, a                                          ; $5d5e: $7f
	add b                                            ; $5d5f: $80
	ld l, a                                          ; $5d60: $6f
	ld c, b                                          ; $5d61: $48
	add b                                            ; $5d62: $80
	cp a                                             ; $5d63: $bf
	ld b, b                                          ; $5d64: $40
	ld c, a                                          ; $5d65: $4f
	or b                                             ; $5d66: $b0
	dec hl                                           ; $5d67: $2b
	db $fc                                           ; $5d68: $fc
	ld d, e                                          ; $5d69: $53
	db $fc                                           ; $5d6a: $fc
	nop                                              ; $5d6b: $00
	rst $38                                          ; $5d6c: $ff
	add b                                            ; $5d6d: $80
	ld a, a                                          ; $5d6e: $7f
	add b                                            ; $5d6f: $80
	ld a, a                                          ; $5d70: $7f
	ldh a, [rIF]                                     ; $5d71: $f0 $0f
	db $fc                                           ; $5d73: $fc
	inc bc                                           ; $5d74: $03
	ld a, [hl]                                       ; $5d75: $7e
	add c                                            ; $5d76: $81
	daa                                              ; $5d77: $27
	ret c                                            ; $5d78: $d8

	add c                                            ; $5d79: $81
	ld a, [hl]                                       ; $5d7a: $7e
	ld b, a                                          ; $5d7b: $47
	cp b                                             ; $5d7c: $b8
	rrca                                             ; $5d7d: $0f
	ldh a, [$27]                                     ; $5d7e: $f0 $27
	ret c                                            ; $5d80: $d8

	or e                                             ; $5d81: $b3
	add d                                            ; $5d82: $82
	ld c, h                                          ; $5d83: $4c
	rst SubAFromHL                                          ; $5d84: $d7
	ld l, b                                          ; $5d85: $68
	xor a                                            ; $5d86: $af
	ld [hl], b                                       ; $5d87: $70
	rst $38                                          ; $5d88: $ff
	nop                                              ; $5d89: $00
	rrca                                             ; $5d8a: $0f
	ldh a, [rSC]                                     ; $5d8b: $f0 $02
	ldh [hDisp0_LCDC], a                                     ; $5d8d: $e0 $82
	ld h, b                                          ; $5d8f: $60
	add $38                                          ; $5d90: $c6 $38
	ldh [c], a                                       ; $5d92: $e2
	inc e                                            ; $5d93: $1c
	ldh [rAUD3HIGH], a                               ; $5d94: $e0 $1e
	ldh [$1f], a                                     ; $5d96: $e0 $1f
	adc b                                            ; $5d98: $88
	ld [hl], a                                       ; $5d99: $77
	rst GetHLinHL                                          ; $5d9a: $cf
	jr nc, jr_059_5da3                               ; $5d9b: $30 $06

	ld bc, $01f6                                     ; $5d9d: $01 $f6 $01
	ld l, a                                          ; $5da0: $6f
	db $fc                                           ; $5da1: $fc
	sub l                                            ; $5da2: $95

jr_059_5da3:
	halt                                             ; $5da3: $76
	add c                                            ; $5da4: $81
	ld b, $81                                        ; $5da5: $06 $81
	ld b, $e1                                        ; $5da7: $06 $e1
	ld bc, $19dc                                     ; $5da9: $01 $dc $19
	call nz, $fc57                                   ; $5dac: $c4 $57 $fc
	sub d                                            ; $5daf: $92
	ei                                               ; $5db0: $fb
	nop                                              ; $5db1: $00
	pop hl                                           ; $5db2: $e1
	nop                                              ; $5db3: $00
	adc $00                                          ; $5db4: $ce $00
	and b                                            ; $5db6: $a0
	rrca                                             ; $5db7: $0f
	and a                                            ; $5db8: $a7
	ld [$08b7], sp                                   ; $5db9: $08 $b7 $08
	or c                                             ; $5dbc: $b1
	ld a, e                                          ; $5dbd: $7b
	cp $6f                                           ; $5dbe: $fe $6f
	sub d                                            ; $5dc0: $92
	ld a, a                                          ; $5dc1: $7f
	cp $98                                           ; $5dc2: $fe $98
	ld d, l                                          ; $5dc4: $55
	add b                                            ; $5dc5: $80
	ld a, [hl+]                                      ; $5dc6: $2a
	add b                                            ; $5dc7: $80
	ld d, b                                          ; $5dc8: $50
	add b                                            ; $5dc9: $80
	nop                                              ; $5dca: $00
	ld l, e                                          ; $5dcb: $6b
	add d                                            ; $5dcc: $82
	ld a, e                                          ; $5dcd: $7b
	ldh a, [$9d]                                     ; $5dce: $f0 $9d
	nop                                              ; $5dd0: $00
	xor b                                            ; $5dd1: $a8
	db $fc                                           ; $5dd2: $fc
	halt                                             ; $5dd3: $76
	ld a, d                                          ; $5dd4: $7a
	sbc b                                            ; $5dd5: $98
	db $fc                                           ; $5dd6: $fc
	ld bc, $01eb                                     ; $5dd7: $01 $eb $01
	ld d, l                                          ; $5dda: $55
	ld bc, $de0b                                     ; $5ddb: $01 $0b $de

jr_059_5dde:
	ld bc, $80ff                                     ; $5dde: $01 $ff $80
	rst AddAOntoHL                                          ; $5de1: $ef
	db $fc                                           ; $5de2: $fc
	or b                                             ; $5de3: $b0
	rst $38                                          ; $5de4: $ff
	rst GetHLinHL                                          ; $5de5: $cf
	rst $38                                          ; $5de6: $ff
	ld a, d                                          ; $5de7: $7a
	rst $38                                          ; $5de8: $ff
	sub a                                            ; $5de9: $97
	rst $38                                          ; $5dea: $ff
	ld d, a                                          ; $5deb: $57
	db $fd                                           ; $5dec: $fd
	cp a                                             ; $5ded: $bf
	ld a, a                                          ; $5dee: $7f
	cp $a9                                           ; $5def: $fe $a9
	ld a, [de]                                       ; $5df1: $1a
	rrca                                             ; $5df2: $0f
	db $fd                                           ; $5df3: $fd
	rst $38                                          ; $5df4: $ff
	ld h, d                                          ; $5df5: $62
	rst $38                                          ; $5df6: $ff
	rst GetHLinHL                                          ; $5df7: $cf
	db $fd                                           ; $5df8: $fd
	pop de                                           ; $5df9: $d1
	ld [hl], b                                       ; $5dfa: $70
	pop hl                                           ; $5dfb: $e1
	jr nz, jr_059_5dde                               ; $5dfc: $20 $e0

	and b                                            ; $5dfe: $a0
	ld b, b                                          ; $5dff: $40
	adc e                                            ; $5e00: $8b
	add c                                            ; $5e01: $81
	and [hl]                                         ; $5e02: $a6
	rst GetHLinHL                                          ; $5e03: $cf
	ret z                                            ; $5e04: $c8

	rst $38                                          ; $5e05: $ff
	db $fc                                           ; $5e06: $fc
	ld [hl], a                                       ; $5e07: $77
	ld l, d                                          ; $5e08: $6a
	cp a                                             ; $5e09: $bf
	xor a                                            ; $5e0a: $af
	ei                                               ; $5e0b: $fb
	rst SubAFromHL                                          ; $5e0c: $d7
	ld a, l                                          ; $5e0d: $7d
	rst FarCall                                          ; $5e0e: $f7
	ld e, l                                          ; $5e0f: $5d
	db $ed                                           ; $5e10: $ed
	rst FarCall                                          ; $5e11: $f7
	xor b                                            ; $5e12: $a8
	ld hl, sp-$52                                    ; $5e13: $f8 $ae
	ld a, e                                          ; $5e15: $7b
	cp $95                                           ; $5e16: $fe $95
	or [hl]                                          ; $5e18: $b6
	db $fc                                           ; $5e19: $fc
	ld d, [hl]                                       ; $5e1a: $56
	db $fc                                           ; $5e1b: $fc
	ld e, d                                          ; $5e1c: $5a
	cp $56                                           ; $5e1d: $fe $56
	cp $57                                           ; $5e1f: $fe $57
	db $fd                                           ; $5e21: $fd
	halt                                             ; $5e22: $76
	call z, $fe77                                    ; $5e23: $cc $77 $fe
	sbc l                                            ; $5e26: $9d
	or d                                             ; $5e27: $b2
	ld [hl], c                                       ; $5e28: $71
	ld [hl], a                                       ; $5e29: $77
	cp $9d                                           ; $5e2a: $fe $9d
	ld [hl], d                                       ; $5e2c: $72
	ld sp, $cc76                                     ; $5e2d: $31 $76 $cc
	sbc l                                            ; $5e30: $9d
	and b                                            ; $5e31: $a0
	ld d, l                                          ; $5e32: $55
	ld l, a                                          ; $5e33: $6f
	db $fc                                           ; $5e34: $fc
	sbc e                                            ; $5e35: $9b
	and l                                            ; $5e36: $a5
	ld d, d                                          ; $5e37: $52
	and l                                            ; $5e38: $a5
	ld d, d                                          ; $5e39: $52
	ld [hl], e                                       ; $5e3a: $73
	add e                                            ; $5e3b: $83
	sbc h                                            ; $5e3c: $9c
	rst GetHLinHL                                          ; $5e3d: $cf
	nop                                              ; $5e3e: $00
	ld bc, $fe7b                                     ; $5e3f: $01 $7b $fe
	sbc [hl]                                         ; $5e42: $9e
	ld a, l                                          ; $5e43: $7d
	ld a, e                                          ; $5e44: $7b
	ld a, e                                          ; $5e45: $7b
	ld a, a                                          ; $5e46: $7f
	cp $6f                                           ; $5e47: $fe $6f
	ld [hl], e                                       ; $5e49: $73
	ld [hl], a                                       ; $5e4a: $77
	db $fc                                           ; $5e4b: $fc
	sbc [hl]                                         ; $5e4c: $9e
	xor d                                            ; $5e4d: $aa
	ld a, e                                          ; $5e4e: $7b
	db $fc                                           ; $5e4f: $fc
	ld a, a                                          ; $5e50: $7f
	jp hl                                            ; $5e51: $e9


	ld a, a                                          ; $5e52: $7f
	ld [hl], c                                       ; $5e53: $71
	add b                                            ; $5e54: $80
	cp $03                                           ; $5e55: $fe $03
	ld d, h                                          ; $5e57: $54
	nop                                              ; $5e58: $00
	rst $38                                          ; $5e59: $ff
	inc bc                                           ; $5e5a: $03
	ld d, a                                          ; $5e5b: $57
	dec b                                            ; $5e5c: $05
	xor e                                            ; $5e5d: $ab
	rrca                                             ; $5e5e: $0f
	ld d, e                                          ; $5e5f: $53
	rla                                              ; $5e60: $17
	dec hl                                           ; $5e61: $2b
	or l                                             ; $5e62: $b5
	ld a, a                                          ; $5e63: $7f
	ld a, [$de7f]                                    ; $5e64: $fa $7f $de
	ccf                                              ; $5e67: $3f
	cpl                                              ; $5e68: $2f
	rst SubAFromDE                                          ; $5e69: $df
	inc a                                            ; $5e6a: $3c
	jp $ff00                                         ; $5e6b: $c3 $00 $ff


	ret nz                                           ; $5e6e: $c0

	rst $38                                          ; $5e6f: $ff
	sbc b                                            ; $5e70: $98
	rst $38                                          ; $5e71: $ff
	dec l                                            ; $5e72: $2d
	cp $86                                           ; $5e73: $fe $86
	ld e, c                                          ; $5e75: $59
	cp $30                                           ; $5e76: $fe $30
	rst $38                                          ; $5e78: $ff
	ld a, b                                          ; $5e79: $78
	rst $38                                          ; $5e7a: $ff
	dec e                                            ; $5e7b: $1d
	rst $38                                          ; $5e7c: $ff
	ld a, [bc]                                       ; $5e7d: $0a
	rst $38                                          ; $5e7e: $ff
	add hl, sp                                       ; $5e7f: $39
	rst $38                                          ; $5e80: $ff
	ld a, a                                          ; $5e81: $7f
	rst $38                                          ; $5e82: $ff
	ld h, b                                          ; $5e83: $60
	cp a                                             ; $5e84: $bf
	sub b                                            ; $5e85: $90
	ld a, a                                          ; $5e86: $7f
	jr nz, @+$01                                     ; $5e87: $20 $ff

	ld [hl], b                                       ; $5e89: $70
	rst $38                                          ; $5e8a: $ff
	ldh [rIE], a                                     ; $5e8b: $e0 $ff
	pop af                                           ; $5e8d: $f1
	ld [hl], e                                       ; $5e8e: $73
	cp $80                                           ; $5e8f: $fe $80
	and a                                            ; $5e91: $a7
	ld hl, sp+$53                                    ; $5e92: $f8 $53
	db $fc                                           ; $5e94: $fc
	cp a                                             ; $5e95: $bf
	ldh a, [$7f]                                     ; $5e96: $f0 $7f
	ldh [$df], a                                     ; $5e98: $e0 $df
	ldh [$1f], a                                     ; $5e9a: $e0 $1f
	ldh [$de], a                                     ; $5e9c: $e0 $de
	ld h, c                                          ; $5e9e: $61
	db $ed                                           ; $5e9f: $ed
	inc sp                                           ; $5ea0: $33
	rst JumpTable                                          ; $5ea1: $c7
	jr c, jr_059_5ed8                                ; $5ea2: $38 $34

	bit 7, h                                         ; $5ea4: $cb $7c
	add e                                            ; $5ea6: $83
	cp [hl]                                          ; $5ea7: $be
	ld b, c                                          ; $5ea8: $41
	cp $01                                           ; $5ea9: $fe $01
	sbc a                                            ; $5eab: $9f
	ld h, b                                          ; $5eac: $60
	rst JumpTable                                          ; $5ead: $c7
	jr c, jr_059_5f17                                ; $5eae: $38 $67

	add b                                            ; $5eb0: $80
	sbc b                                            ; $5eb1: $98
	swap h                                           ; $5eb2: $cb $34
	push bc                                          ; $5eb4: $c5
	ld a, [hl-]                                      ; $5eb5: $3a
	adc e                                            ; $5eb6: $8b
	ld [hl], h                                       ; $5eb7: $74
	rlca                                             ; $5eb8: $07
	ld hl, sp+$27                                    ; $5eb9: $f8 $27
	ld hl, sp+$51                                    ; $5ebb: $f8 $51
	cp $38                                           ; $5ebd: $fe $38
	rst $38                                          ; $5ebf: $ff
	sbc e                                            ; $5ec0: $9b
	ld a, h                                          ; $5ec1: $7c
	cp a                                             ; $5ec2: $bf
	nop                                              ; $5ec3: $00
	reti                                             ; $5ec4: $d9


	ld b, $f1                                        ; $5ec5: $06 $f1
	ld c, $f7                                        ; $5ec7: $0e $f7
	inc c                                            ; $5ec9: $0c
	di                                               ; $5eca: $f3
	inc c                                            ; $5ecb: $0c
	ret                                              ; $5ecc: $c9


	ld [hl], $01                                     ; $5ecd: $36 $01
	cp $80                                           ; $5ecf: $fe $80
	jp nz, $f13f                                     ; $5ed1: $c2 $3f $f1

	nop                                              ; $5ed4: $00
	di                                               ; $5ed5: $f3
	nop                                              ; $5ed6: $00
	di                                               ; $5ed7: $f3

jr_059_5ed8:
	inc b                                            ; $5ed8: $04
	pop af                                           ; $5ed9: $f1
	ld b, $d8                                        ; $5eda: $06 $d8
	daa                                              ; $5edc: $27
	sbc a                                            ; $5edd: $9f
	ld h, b                                          ; $5ede: $60
	dec a                                            ; $5edf: $3d
	jp nz, $c33c                                     ; $5ee0: $c2 $3c $c3

	ld bc, $e380                                     ; $5ee3: $01 $80 $e3
	nop                                              ; $5ee6: $00
	ldh [c], a                                       ; $5ee7: $e2
	ld bc, $c334                                     ; $5ee8: $01 $34 $c3
	ld a, c                                          ; $5eeb: $79
	add [hl]                                         ; $5eec: $86
	ld hl, sp+$07                                    ; $5eed: $f8 $07
	sbc l                                            ; $5eef: $9d
	sbc e                                            ; $5ef0: $9b
	ld h, d                                          ; $5ef1: $62
	ld e, b                                          ; $5ef2: $58
	rst SubAFromBC                                          ; $5ef3: $e7
	or b                                             ; $5ef4: $b0
	ld a, c                                          ; $5ef5: $79
	ld l, d                                          ; $5ef6: $6a
	sub e                                            ; $5ef7: $93
	ld a, [hl]                                       ; $5ef8: $7e
	add b                                            ; $5ef9: $80
	cp [hl]                                          ; $5efa: $be
	ld b, b                                          ; $5efb: $40
	ld a, h                                          ; $5efc: $7c
	add b                                            ; $5efd: $80
	ld hl, sp+$00                                    ; $5efe: $f8 $00
	ld a, c                                          ; $5f00: $79
	add [hl]                                         ; $5f01: $86

jr_059_5f02:
	db $fc                                           ; $5f02: $fc
	inc bc                                           ; $5f03: $03
	ld sp, hl                                        ; $5f04: $f9
	sbc h                                            ; $5f05: $9c
	ld l, h                                          ; $5f06: $6c
	nop                                              ; $5f07: $00
	cp $7b                                           ; $5f08: $fe $7b
	cp $80                                           ; $5f0a: $fe $80
	rst SubAFromHL                                          ; $5f0c: $d7
	jr z, @-$3f                                      ; $5f0d: $28 $bf

	ldh [$5b], a                                     ; $5f0f: $e0 $5b
	ld h, a                                          ; $5f11: $67
	or [hl]                                          ; $5f12: $b6
	xor $fe                                          ; $5f13: $ee $fe
	cp a                                             ; $5f15: $bf
	rst $38                                          ; $5f16: $ff

jr_059_5f17:
	xor e                                            ; $5f17: $ab
	cp c                                             ; $5f18: $b9
	ldh [c], a                                       ; $5f19: $e2
	ld l, h                                          ; $5f1a: $6c
	ld [hl], e                                       ; $5f1b: $73
	inc a                                            ; $5f1c: $3c
	jr nc, jr_059_5f02                               ; $5f1d: $30 $e3

	nop                                              ; $5f1f: $00
	ld h, e                                          ; $5f20: $63
	add b                                            ; $5f21: $80
	pop bc                                           ; $5f22: $c1
	ret nz                                           ; $5f23: $c0

	add b                                            ; $5f24: $80
	pop bc                                           ; $5f25: $c1
	add c                                            ; $5f26: $81
	add c                                            ; $5f27: $81
	add b                                            ; $5f28: $80
	add b                                            ; $5f29: $80
	nop                                              ; $5f2a: $00
	add b                                            ; $5f2b: $80
	nop                                              ; $5f2c: $00
	jr nz, jr_059_5f3f                               ; $5f2d: $20 $10

	rst SubAFromDE                                          ; $5f2f: $df
	dec sp                                           ; $5f30: $3b
	ei                                               ; $5f31: $fb
	rlca                                             ; $5f32: $07
	ld l, a                                          ; $5f33: $6f
	pop af                                           ; $5f34: $f1
	or l                                             ; $5f35: $b5
	cp e                                             ; $5f36: $bb
	db $fd                                           ; $5f37: $fd
	rst $38                                          ; $5f38: $ff
	db $db                                           ; $5f39: $db
	or $a7                                           ; $5f3a: $f6 $a7
	jp nc, Jump_059_66c3                             ; $5f3c: $d2 $c3 $66

jr_059_5f3f:
	xor d                                            ; $5f3f: $aa
	or $aa                                           ; $5f40: $f6 $aa
	or $75                                           ; $5f42: $f6 $75
	db $e3                                           ; $5f44: $e3
	ld [hl], a                                       ; $5f45: $77
	pop hl                                           ; $5f46: $e1
	db $e3                                           ; $5f47: $e3
	pop de                                           ; $5f48: $d1
	db $eb                                           ; $5f49: $eb
	pop de                                           ; $5f4a: $d1
	sbc b                                            ; $5f4b: $98
	xor e                                            ; $5f4c: $ab
	push af                                          ; $5f4d: $f5
	xor c                                            ; $5f4e: $a9
	rst FarCall                                          ; $5f4f: $f7
	ld [hl], d                                       ; $5f50: $72
	ld sp, $7b32                                     ; $5f51: $31 $32 $7b
	cp $8f                                           ; $5f54: $fe $8f
	or d                                             ; $5f56: $b2
	ld sp, $10f3                                     ; $5f57: $31 $f3 $10
	ld sp, hl                                        ; $5f5a: $f9
	ld b, $f7                                        ; $5f5b: $06 $f7
	ld [$18e7], sp                                   ; $5f5d: $08 $e7 $18
	and a                                            ; $5f60: $a7
	ld d, b                                          ; $5f61: $50
	and a                                            ; $5f62: $a7
	ld d, b                                          ; $5f63: $50
	and [hl]                                         ; $5f64: $a6
	ld d, b                                          ; $5f65: $50
	ld [hl], a                                       ; $5f66: $77
	and h                                            ; $5f67: $a4
	ld a, [hl]                                       ; $5f68: $7e
	db $dd                                           ; $5f69: $dd
	sbc e                                            ; $5f6a: $9b
	db $fd                                           ; $5f6b: $fd
	ld [bc], a                                       ; $5f6c: $02
	ld a, [$7a05]                                    ; $5f6d: $fa $05 $7a
	call c, Call_059_5792                            ; $5f70: $dc $92 $57
	ld bc, $0b56                                     ; $5f73: $01 $56 $0b
	ld d, h                                          ; $5f76: $54
	ld bc, $c04e                                     ; $5f77: $01 $4e $c0
	rra                                              ; $5f7a: $1f
	ld c, l                                          ; $5f7b: $4d
	or d                                             ; $5f7c: $b2
	scf                                              ; $5f7d: $37
	ret z                                            ; $5f7e: $c8

	halt                                             ; $5f7f: $76
	call z, Call_059_709e                            ; $5f80: $cc $9e $70
	ld a, e                                          ; $5f83: $7b
	ld l, h                                          ; $5f84: $6c
	sbc l                                            ; $5f85: $9d
	cp c                                             ; $5f86: $b9
	ld b, b                                          ; $5f87: $40
	ld l, l                                          ; $5f88: $6d
	and [hl]                                         ; $5f89: $a6
	adc h                                            ; $5f8a: $8c
	ld hl, $135f                                     ; $5f8b: $21 $5f $13
	rrca                                             ; $5f8e: $0f
	dec d                                            ; $5f8f: $15
	rrca                                             ; $5f90: $0f
	dec bc                                           ; $5f91: $0b
	rra                                              ; $5f92: $1f
	add [hl]                                         ; $5f93: $86
	rra                                              ; $5f94: $1f
	and d                                            ; $5f95: $a2
	rrca                                             ; $5f96: $0f
	ld l, c                                          ; $5f97: $69
	inc bc                                           ; $5f98: $03
	pop de                                           ; $5f99: $d1
	nop                                              ; $5f9a: $00
	ld l, a                                          ; $5f9b: $6f
	sbc a                                            ; $5f9c: $9f
	adc a                                            ; $5f9d: $8f
	sbc $ff                                          ; $5f9e: $de $ff
	sub h                                            ; $5fa0: $94
	ld a, a                                          ; $5fa1: $7f
	cp a                                             ; $5fa2: $bf
	sbc a                                            ; $5fa3: $9f
	ld a, a                                          ; $5fa4: $7f
	rst $38                                          ; $5fa5: $ff
	rst $38                                          ; $5fa6: $ff
	or a                                             ; $5fa7: $b7
	rst $38                                          ; $5fa8: $ff
	ld l, e                                          ; $5fa9: $6b
	scf                                              ; $5faa: $37
	ccf                                              ; $5fab: $3f
	sbc $ff                                          ; $5fac: $de $ff
	sbc h                                            ; $5fae: $9c
	ld sp, hl                                        ; $5faf: $f9
	rst $38                                          ; $5fb0: $ff
	cp $de                                           ; $5fb1: $fe $de
	rst $38                                          ; $5fb3: $ff
	ld [hl], a                                       ; $5fb4: $77
	db $fc                                           ; $5fb5: $fc
	rst SubAFromDE                                          ; $5fb6: $df
	rst $38                                          ; $5fb7: $ff
	sbc [hl]                                         ; $5fb8: $9e
	ei                                               ; $5fb9: $fb
	call c, $80ff                                    ; $5fba: $dc $ff $80
	ld c, $ff                                        ; $5fbd: $0e $ff
	ret nz                                           ; $5fbf: $c0

	ccf                                              ; $5fc0: $3f
	or e                                             ; $5fc1: $b3
	call $fb5f                                       ; $5fc2: $cd $5f $fb
	cp $fe                                           ; $5fc5: $fe $fe
	push de                                          ; $5fc7: $d5
	ccf                                              ; $5fc8: $3f
	ld [$dd3f], a                                    ; $5fc9: $ea $3f $dd
	ld a, $bf                                        ; $5fcc: $3e $bf
	ld a, b                                          ; $5fce: $78
	ld a, a                                          ; $5fcf: $7f
	ld hl, sp-$11                                    ; $5fd0: $f8 $ef
	ld hl, sp-$52                                    ; $5fd2: $f8 $ae
	db $fd                                           ; $5fd4: $fd
	xor a                                            ; $5fd5: $af
	rst $38                                          ; $5fd6: $ff
	cp a                                             ; $5fd7: $bf
	ret nz                                           ; $5fd8: $c0

	cp a                                             ; $5fd9: $bf
	ret nz                                           ; $5fda: $c0

jr_059_5fdb:
	sbc a                                            ; $5fdb: $9f
	adc a                                            ; $5fdc: $8f
	ld h, b                                          ; $5fdd: $60
	swap h                                           ; $5fde: $cb $34
	ld c, d                                          ; $5fe0: $4a
	push af                                          ; $5fe1: $f5
	xor b                                            ; $5fe2: $a8
	rst $38                                          ; $5fe3: $ff
	call c, Call_059_7eff                            ; $5fe4: $dc $ff $7e
	rst $38                                          ; $5fe7: $ff
	or a                                             ; $5fe8: $b7
	ld c, h                                          ; $5fe9: $4c
	db $fc                                           ; $5fea: $fc
	rlca                                             ; $5feb: $07
	ld hl, sp+$7b                                    ; $5fec: $f8 $7b
	cp $80                                           ; $5fee: $fe $80
	cp $0f                                           ; $5ff0: $fe $0f
	ld l, d                                          ; $5ff2: $6a
	sbc a                                            ; $5ff3: $9f
	ld [$6f1f], a                                    ; $5ff4: $ea $1f $6f
	sbc a                                            ; $5ff7: $9f
	add $3f                                          ; $5ff8: $c6 $3f
	ld h, a                                          ; $5ffa: $67
	sbc a                                            ; $5ffb: $9f
	inc sp                                           ; $5ffc: $33
	rst GetHLinHL                                          ; $5ffd: $cf
	ld h, l                                          ; $5ffe: $65
	rst SubAFromDE                                          ; $5fff: $df
	and l                                            ; $6000: $a5
	rst SubAFromDE                                          ; $6001: $df
	ld l, l                                          ; $6002: $6d
	sbc a                                            ; $6003: $9f
	rra                                              ; $6004: $1f
	rst $38                                          ; $6005: $ff
	ldh a, [rIE]                                     ; $6006: $f0 $ff
	jr c, @-$37                                      ; $6008: $38 $c7

	jr nc, jr_059_5fdb                               ; $600a: $30 $cf

	ld b, l                                          ; $600c: $45
	cp $d6                                           ; $600d: $fe $d6
	ld a, e                                          ; $600f: $7b
	sub $9e                                          ; $6010: $d6 $9e
	ld e, a                                          ; $6012: $5f
	sbc $ff                                          ; $6013: $de $ff
	ld a, [hl]                                       ; $6015: $7e
	xor [hl]                                         ; $6016: $ae
	ld a, a                                          ; $6017: $7f
	db $f4                                           ; $6018: $f4
	sub d                                            ; $6019: $92
	or e                                             ; $601a: $b3
	ld a, h                                          ; $601b: $7c
	sub h                                            ; $601c: $94
	ld a, a                                          ; $601d: $7f
	ld b, l                                          ; $601e: $45
	rst $38                                          ; $601f: $ff
	ret                                              ; $6020: $c9


	rst $38                                          ; $6021: $ff
	rst AddAOntoHL                                          ; $6022: $ef
	rst $38                                          ; $6023: $ff
	db $fc                                           ; $6024: $fc
	rst $38                                          ; $6025: $ff
	cp $78                                           ; $6026: $fe $78
	db $ec                                           ; $6028: $ec
	ld a, a                                          ; $6029: $7f
	jr z, @+$80                                      ; $602a: $28 $7e

	sub b                                            ; $602c: $90
	sbc h                                            ; $602d: $9c
	ld d, b                                          ; $602e: $50
	rst $38                                          ; $602f: $ff
	ld l, e                                          ; $6030: $6b
	sbc $ff                                          ; $6031: $de $ff
	sub d                                            ; $6033: $92
	ccf                                              ; $6034: $3f
	ret nz                                           ; $6035: $c0

	nop                                              ; $6036: $00
	nop                                              ; $6037: $00
	ld b, l                                          ; $6038: $45
	cp d                                             ; $6039: $ba
	dec e                                            ; $603a: $1d
	ldh [c], a                                       ; $603b: $e2
	ccf                                              ; $603c: $3f
	ret nz                                           ; $603d: $c0

	sbc [hl]                                         ; $603e: $9e
	pop hl                                           ; $603f: $e1
	ret nz                                           ; $6040: $c0

	ld [hl], a                                       ; $6041: $77
	ld l, [hl]                                       ; $6042: $6e
	ld a, c                                          ; $6043: $79
	add b                                            ; $6044: $80
	adc c                                            ; $6045: $89
	inc e                                            ; $6046: $1c
	db $10                                           ; $6047: $10
	ld e, $78                                        ; $6048: $1e $78
	ld a, $f8                                        ; $604a: $3e $f8
	scf                                              ; $604c: $37
	db $fc                                           ; $604d: $fc
	dec hl                                           ; $604e: $2b
	cp $29                                           ; $604f: $fe $29
	rst $38                                          ; $6051: $ff
	dec b                                            ; $6052: $05
	db $fd                                           ; $6053: $fd
	ld bc, $3801                                     ; $6054: $01 $01 $38
	stop                                             ; $6057: $10 $00
	nop                                              ; $6059: $00
	db $10                                           ; $605a: $10
	jr z, @+$7d                                      ; $605b: $28 $7b

	ei                                               ; $605d: $fb
	ld a, l                                          ; $605e: $7d
	and $84                                          ; $605f: $e6 $84
	add b                                            ; $6061: $80
	and l                                            ; $6062: $a5
	jp $ff7f                                         ; $6063: $c3 $7f $ff


	rrca                                             ; $6066: $0f
	dec b                                            ; $6067: $05
	rlca                                             ; $6068: $07
	rrca                                             ; $6069: $0f
	dec e                                            ; $606a: $1d
	rrca                                             ; $606b: $0f
	scf                                              ; $606c: $37
	dec e                                            ; $606d: $1d
	ld [hl], h                                       ; $606e: $74

jr_059_606f:
	dec a                                            ; $606f: $3d
	ld d, [hl]                                       ; $6070: $56

jr_059_6071:
	push af                                          ; $6071: $f5
	jp nc, Jump_059_52d3                             ; $6072: $d2 $d3 $52

	ld d, e                                          ; $6075: $53
	ld d, e                                          ; $6076: $53
	rst $38                                          ; $6077: $ff
	ld d, e                                          ; $6078: $53
	rst $38                                          ; $6079: $ff
	ld h, a                                          ; $607a: $67

Call_059_607b:
	db $fd                                           ; $607b: $fd
	ld [hl], a                                       ; $607c: $77
	cp $8c                                           ; $607d: $fe $8c
	xor a                                            ; $607f: $af
	cp c                                             ; $6080: $b9
	xor b                                            ; $6081: $a8
	cp b                                             ; $6082: $b8
	xor b                                            ; $6083: $a8
	or b                                             ; $6084: $b0
	ld l, a                                          ; $6085: $6f
	sub b                                            ; $6086: $90
	rst SubAFromBC                                          ; $6087: $e7
	jr jr_059_6071                                   ; $6088: $18 $e7

	jr jr_059_606f                                   ; $608a: $18 $e3

	inc e                                            ; $608c: $1c
	ld b, e                                          ; $608d: $43
	cp h                                             ; $608e: $bc
	nop                                              ; $608f: $00
	rst $38                                          ; $6090: $ff
	rlca                                             ; $6091: $07
	cp $76                                           ; $6092: $fe $76
	call z, $b499                                    ; $6094: $cc $99 $b4
	ld c, e                                          ; $6097: $4b
	pop bc                                           ; $6098: $c1
	ld a, $c0                                        ; $6099: $3e $c0
	ccf                                              ; $609b: $3f
	ld a, c                                          ; $609c: $79
	ret nz                                           ; $609d: $c0

	cp $95                                           ; $609e: $fe $95
	ld a, e                                          ; $60a0: $7b
	add h                                            ; $60a1: $84
	db $fd                                           ; $60a2: $fd
	ld [bc], a                                       ; $60a3: $02
	db $fd                                           ; $60a4: $fd
	ld [bc], a                                       ; $60a5: $02
	cp a                                             ; $60a6: $bf
	ld b, b                                          ; $60a7: $40
	inc [hl]                                         ; $60a8: $34
	bit 7, d                                         ; $60a9: $cb $7a
	db $d3                                           ; $60ab: $d3
	cp $8c                                           ; $60ac: $fe $8c
	rst AddAOntoHL                                          ; $60ae: $ef
	db $10                                           ; $60af: $10
	db $dd                                           ; $60b0: $dd
	jr nz, jr_059_60e1                               ; $60b1: $20 $2e

	ret nc                                           ; $60b3: $d0

	sbc l                                            ; $60b4: $9d
	ld h, d                                          ; $60b5: $62
	ret z                                            ; $60b6: $c8

	scf                                              ; $60b7: $37
	nop                                              ; $60b8: $00
	rst $38                                          ; $60b9: $ff
	dec de                                           ; $60ba: $1b
	inc b                                            ; $60bb: $04
	jr jr_059_60c5                                   ; $60bc: $18 $07

	ld [$f000], a                                    ; $60be: $ea $00 $f0
	ld a, c                                          ; $60c1: $79
	ld [hl], a                                       ; $60c2: $77
	sbc [hl]                                         ; $60c3: $9e
	ld d, b                                          ; $60c4: $50

jr_059_60c5:
	ld a, e                                          ; $60c5: $7b
	db $fc                                           ; $60c6: $fc
	ld a, l                                          ; $60c7: $7d
	ret nz                                           ; $60c8: $c0

	ld a, a                                          ; $60c9: $7f
	ld d, d                                          ; $60ca: $52
	rst SubAFromDE                                          ; $60cb: $df
	ld a, b                                          ; $60cc: $78
	sbc d                                            ; $60cd: $9a
	sub a                                            ; $60ce: $97
	ccf                                              ; $60cf: $3f
	ld a, [bc]                                       ; $60d0: $0a
	rra                                              ; $60d1: $1f
	and e                                            ; $60d2: $a3
	ld a, b                                          ; $60d3: $78
	push hl                                          ; $60d4: $e5
	add b                                            ; $60d5: $80
	and e                                            ; $60d6: $a3
	ld bc, $03fc                                     ; $60d7: $01 $fc $03
	inc b                                            ; $60da: $04
	inc bc                                           ; $60db: $03
	db $10                                           ; $60dc: $10
	rrca                                             ; $60dd: $0f
	ei                                               ; $60de: $fb
	rst $38                                          ; $60df: $ff
	cp [hl]                                          ; $60e0: $be

jr_059_60e1:
	ld a, e                                          ; $60e1: $7b
	dec hl                                           ; $60e2: $2b
	ld a, [hl-]                                      ; $60e3: $3a
	ld b, e                                          ; $60e4: $43
	ld d, [hl]                                       ; $60e5: $56
	and a                                            ; $60e6: $a7
	sub h                                            ; $60e7: $94
	add [hl]                                         ; $60e8: $86
	rst FarCall                                          ; $60e9: $f7
	ld c, $f7                                        ; $60ea: $0e $f7
	ld e, h                                          ; $60ec: $5c
	rst $38                                          ; $60ed: $ff
	or $fe                                           ; $60ee: $f6 $fe
	ret nz                                           ; $60f0: $c0

	add h                                            ; $60f1: $84
	nop                                              ; $60f2: $00
	inc b                                            ; $60f3: $04
	ld a, $93                                        ; $60f4: $3e $93
	ld a, [hl]                                       ; $60f6: $7e
	ld sp, $58ff                                     ; $60f7: $31 $ff $58
	rst $38                                          ; $60fa: $ff
	cpl                                              ; $60fb: $2f
	rst $38                                          ; $60fc: $ff
	ld e, [hl]                                       ; $60fd: $5e
	rst $38                                          ; $60fe: $ff
	rra                                              ; $60ff: $1f
	ldh [$f9], a                                     ; $6100: $e0 $f9
	ld a, e                                          ; $6102: $7b
	cp [hl]                                          ; $6103: $be
	ld a, a                                          ; $6104: $7f
	sub [hl]                                         ; $6105: $96
	sbc [hl]                                         ; $6106: $9e
	ld b, b                                          ; $6107: $40
	db $fc                                           ; $6108: $fc
	sbc b                                            ; $6109: $98
	ld e, $01                                        ; $610a: $1e $01
	rst $38                                          ; $610c: $ff
	di                                               ; $610d: $f3
	ld sp, hl                                        ; $610e: $f9
	ld h, c                                          ; $610f: $61
	ld h, b                                          ; $6110: $60
	cp $df                                           ; $6111: $fe $df
	inc bc                                           ; $6113: $03
	sub l                                            ; $6114: $95
	rrca                                             ; $6115: $0f
	inc bc                                           ; $6116: $03
	cp $04                                           ; $6117: $fe $04
	ld b, $fc                                        ; $6119: $06 $fc
	inc bc                                           ; $611b: $03
	db $fc                                           ; $611c: $fc
	ret nc                                           ; $611d: $d0

	ret nc                                           ; $611e: $d0

	sbc $38                                          ; $611f: $de $38
	sub l                                            ; $6121: $95
	jr jr_059_6134                                   ; $6122: $18 $10

	rla                                              ; $6124: $17
	and $24                                          ; $6125: $e6 $24

jr_059_6127:
	rst FarCall                                          ; $6127: $f7
	and l                                            ; $6128: $a5
	rst FarCall                                          ; $6129: $f7
	and a                                            ; $612a: $a7
	pop af                                           ; $612b: $f1
	db $fc                                           ; $612c: $fc
	ld a, a                                          ; $612d: $7f
	ld d, [hl]                                       ; $612e: $56
	ld a, [hl]                                       ; $612f: $7e
	ret z                                            ; $6130: $c8

	sbc b                                            ; $6131: $98
	nop                                              ; $6132: $00
	ccf                                              ; $6133: $3f

jr_059_6134:
	nop                                              ; $6134: $00
	rst SubAFromDE                                          ; $6135: $df
	dec d                                            ; $6136: $15
	xor d                                            ; $6137: $aa
	ld a, [$1677]                                    ; $6138: $fa $77 $16
	ld a, b                                          ; $613b: $78
	ld l, h                                          ; $613c: $6c
	ld [hl], h                                       ; $613d: $74
	add sp, -$64                                     ; $613e: $e8 $9c
	ld a, [hl+]                                      ; $6140: $2a
	push de                                          ; $6141: $d5
	ld a, a                                          ; $6142: $7f

Jump_059_6143:
	ld a, c                                          ; $6143: $79
	call z, Call_059_5c74                            ; $6144: $cc $74 $5c
	ld [hl], a                                       ; $6147: $77
	ldh a, [c]                                       ; $6148: $f2
	sbc e                                            ; $6149: $9b
	dec d                                            ; $614a: $15
	ld [$40bf], a                                    ; $614b: $ea $bf $40
	ld [hl], a                                       ; $614e: $77
	ld c, l                                          ; $614f: $4d
	ld l, a                                          ; $6150: $6f
	ldh a, [c]                                       ; $6151: $f2
	ld a, a                                          ; $6152: $7f
	cp $9d                                           ; $6153: $fe $9d
	ld d, l                                          ; $6155: $55
	xor d                                            ; $6156: $aa
	ld [hl], a                                       ; $6157: $77
	ld sp, hl                                        ; $6158: $f9
	rst $38                                          ; $6159: $ff
	ld a, a                                          ; $615a: $7f
	call nc, $0787                                   ; $615b: $d4 $87 $07
	rst $38                                          ; $615e: $ff
	ld e, $f9                                        ; $615f: $1e $f9
	ld l, $e0                                        ; $6161: $2e $e0
	ld c, [hl]                                       ; $6163: $4e
	ret nz                                           ; $6164: $c0

	and $80                                          ; $6165: $e6 $80
	and [hl]                                         ; $6167: $a6
	add b                                            ; $6168: $80
	inc bc                                           ; $6169: $03
	inc bc                                           ; $616a: $03
	ccf                                              ; $616b: $3f
	cp $c3                                           ; $616c: $fe $c3
	or $01                                           ; $616e: $f6 $01
	xor c                                            ; $6170: $a9
	nop                                              ; $6171: $00
	stop                                             ; $6172: $10 $00
	jr nz, @-$01                                     ; $6174: $20 $fd

	sub e                                            ; $6176: $93
	dec b                                            ; $6177: $05

jr_059_6178:
	di                                               ; $6178: $f3
	jp $c101                                         ; $6179: $c3 $01 $c1


	ld bc, $00c1                                     ; $617c: $01 $c1 $00
	rst SubAFromBC                                          ; $617f: $e7
	jp $3c3c                                         ; $6180: $c3 $3c $3c


	db $fd                                           ; $6183: $fd
	rst SubAFromDE                                          ; $6184: $df
	add c                                            ; $6185: $81
	rst SubAFromDE                                          ; $6186: $df
	rst $38                                          ; $6187: $ff
	sbc c                                            ; $6188: $99
	ret nz                                           ; $6189: $c0

	ld a, a                                          ; $618a: $7f
	add b                                            ; $618b: $80
	ldh a, [rP1]                                     ; $618c: $f0 $00
	ldh [$7b], a                                     ; $618e: $e0 $7b
	ldh [$78], a                                     ; $6190: $e0 $78
	ld a, d                                          ; $6192: $7a
	rst SubAFromDE                                          ; $6193: $df
	jr nc, jr_059_6127                               ; $6194: $30 $91

	rst $38                                          ; $6196: $ff
	jr nz, jr_059_6178                               ; $6197: $20 $df

	ldh [$3f], a                                     ; $6199: $e0 $3f
	jr nz, jr_059_61bc                               ; $619b: $20 $1f

	db $10                                           ; $619d: $10
	rrca                                             ; $619e: $0f
	ld [$084f], sp                                   ; $619f: $08 $4f $08
	ld b, a                                          ; $61a2: $47
	inc c                                            ; $61a3: $0c
	ld [hl], e                                       ; $61a4: $73
	and l                                            ; $61a5: $a5
	ld h, e                                          ; $61a6: $63
	cp $9d                                           ; $61a7: $fe $9d
	push hl                                          ; $61a9: $e5
	ld a, [de]                                       ; $61aa: $1a
	ld d, a                                          ; $61ab: $57
	ldh a, [c]                                       ; $61ac: $f2
	sbc e                                            ; $61ad: $9b
	add sp, $17                                      ; $61ae: $e8 $17
	add b                                            ; $61b0: $80
	ld a, a                                          ; $61b1: $7f
	ld h, a                                          ; $61b2: $67
	db $f4                                           ; $61b3: $f4
	ld a, a                                          ; $61b4: $7f
	adc d                                            ; $61b5: $8a
	ld a, a                                          ; $61b6: $7f
	ld c, [hl]                                       ; $61b7: $4e
	ld a, h                                          ; $61b8: $7c
	sbc l                                            ; $61b9: $9d
	ld a, a                                          ; $61ba: $7f
	rst FarCall                                          ; $61bb: $f7

jr_059_61bc:
	add b                                            ; $61bc: $80
	ld [$f215], a                                    ; $61bd: $ea $15 $f2
	dec c                                            ; $61c0: $0d
	and b                                            ; $61c1: $a0
	ld d, c                                          ; $61c2: $51
	ld c, b                                          ; $61c3: $48
	or b                                             ; $61c4: $b0
	inc b                                            ; $61c5: $04
	ld hl, sp+$15                                    ; $61c6: $f8 $15
	ld [$fa05], a                                    ; $61c8: $ea $05 $fa
	dec hl                                           ; $61cb: $2b
	call nc, $cfcf                                   ; $61cc: $d4 $cf $cf
	ld a, e                                          ; $61cf: $7b
	ld a, c                                          ; $61d0: $79
	ld e, a                                          ; $61d1: $5f
	ld c, a                                          ; $61d2: $4f
	ld c, a                                          ; $61d3: $4f
	ld c, c                                          ; $61d4: $49
	add hl, bc                                       ; $61d5: $09
	add hl, bc                                       ; $61d6: $09
	ld bc, $6081                                     ; $61d7: $01 $81 $60
	sub b                                            ; $61da: $90
	ld l, h                                          ; $61db: $6c
	sbc b                                            ; $61dc: $98
	sub d                                            ; $61dd: $92
	nop                                              ; $61de: $00
	rra                                              ; $61df: $1f
	ld sp, hl                                        ; $61e0: $f9
	rst $38                                          ; $61e1: $ff
	rst $38                                          ; $61e2: $ff
	rlca                                             ; $61e3: $07
	ld a, d                                          ; $61e4: $7a
	inc d                                            ; $61e5: $14
	call c, Call_059_7f11                            ; $61e6: $dc $11 $7f
	sub b                                            ; $61e9: $90
	sbc [hl]                                         ; $61ea: $9e
	cp b                                             ; $61eb: $b8
	ld a, b                                          ; $61ec: $78
	ld c, h                                          ; $61ed: $4c
	ld a, l                                          ; $61ee: $7d
	ld hl, sp-$62                                    ; $61ef: $f8 $9e
	rrca                                             ; $61f1: $0f
	ld a, b                                          ; $61f2: $78
	ld d, b                                          ; $61f3: $50
	ld a, l                                          ; $61f4: $7d
	ld l, [hl]                                       ; $61f5: $6e
	sbc b                                            ; $61f6: $98
	db $10                                           ; $61f7: $10
	rra                                              ; $61f8: $1f
	db $10                                           ; $61f9: $10
	db $10                                           ; $61fa: $10
	inc c                                            ; $61fb: $0c
	rst $38                                          ; $61fc: $ff

jr_059_61fd:
	ld a, d                                          ; $61fd: $7a
	ld a, b                                          ; $61fe: $78
	inc [hl]                                         ; $61ff: $34
	ld [hl], l                                       ; $6200: $75
	ld [hl], h                                       ; $6201: $74
	ld a, l                                          ; $6202: $7d
	ld b, c                                          ; $6203: $41
	rst SubAFromDE                                          ; $6204: $df
	rst $38                                          ; $6205: $ff
	rst SubAFromDE                                          ; $6206: $df
	add h                                            ; $6207: $84
	halt                                             ; $6208: $76
	ld e, b                                          ; $6209: $58
	ld [hl], a                                       ; $620a: $77
	cp $7d                                           ; $620b: $fe $7d
	sbc l                                            ; $620d: $9d
	ld [hl], a                                       ; $620e: $77
	db $fc                                           ; $620f: $fc
	ld a, h                                          ; $6210: $7c
	ld b, [hl]                                       ; $6211: $46
	add b                                            ; $6212: $80
	rra                                              ; $6213: $1f
	ld hl, sp+$2f                                    ; $6214: $f8 $2f
	add sp, $6f                                      ; $6216: $e8 $6f
	rst AddAOntoHL                                          ; $6218: $ef
	ld a, b                                          ; $6219: $78
	add sp, $6e                                      ; $621a: $e8 $6e
	cp $3e                                           ; $621c: $fe $3e
	rst $38                                          ; $621e: $ff
	rra                                              ; $621f: $1f
	rst $38                                          ; $6220: $ff
	nop                                              ; $6221: $00
	rst GetHLinHL                                          ; $6222: $cf
	cp $fc                                           ; $6223: $fe $fc
	pop af                                           ; $6225: $f1
	ldh [$c6], a                                     ; $6226: $e0 $c6
	add e                                            ; $6228: $83
	inc e                                            ; $6229: $1c
	rrca                                             ; $622a: $0f
	ld [hl], b                                       ; $622b: $70
	ccf                                              ; $622c: $3f
	ret nz                                           ; $622d: $c0

	di                                               ; $622e: $f3
	nop                                              ; $622f: $00
	rst GetHLinHL                                          ; $6230: $cf
	nop                                              ; $6231: $00
	sbc l                                            ; $6232: $9d
	ccf                                              ; $6233: $3f
	rra                                              ; $6234: $1f
	ld a, b                                          ; $6235: $78
	ld e, d                                          ; $6236: $5a
	sbc c                                            ; $6237: $99
	ld l, d                                          ; $6238: $6a
	sub l                                            ; $6239: $95
	ld d, l                                          ; $623a: $55
	xor d                                            ; $623b: $aa
	add b                                            ; $623c: $80
	ld a, a                                          ; $623d: $7f
	ld l, a                                          ; $623e: $6f
	ret z                                            ; $623f: $c8

	ld l, a                                          ; $6240: $6f
	ld h, d                                          ; $6241: $62
	sbc c                                            ; $6242: $99
	ld e, a                                          ; $6243: $5f
	and b                                            ; $6244: $a0
	ccf                                              ; $6245: $3f
	ret nz                                           ; $6246: $c0

	rst SubAFromHL                                          ; $6247: $d7
	jr z, jr_059_62b0                                ; $6248: $28 $66

	call c, $fe67                                    ; $624a: $dc $67 $fe
	ld a, l                                          ; $624d: $7d
	or $7b                                           ; $624e: $f6 $7b
	ld a, [$6e7e]                                    ; $6250: $fa $7e $6e
	ld a, l                                          ; $6253: $7d
	ld l, e                                          ; $6254: $6b
	ld a, [hl]                                       ; $6255: $7e
	halt                                             ; $6256: $76
	sbc [hl]                                         ; $6257: $9e
	ld [bc], a                                       ; $6258: $02
	ld a, e                                          ; $6259: $7b
	cp $8b                                           ; $625a: $fe $8b
	inc b                                            ; $625c: $04
	and h                                            ; $625d: $a4
	ld e, h                                          ; $625e: $5c
	ld d, h                                          ; $625f: $54

jr_059_6260:
	xor h                                            ; $6260: $ac
	inc l                                            ; $6261: $2c
	nop                                              ; $6262: $00
	inc a                                            ; $6263: $3c
	nop                                              ; $6264: $00
	inc l                                            ; $6265: $2c
	db $10                                           ; $6266: $10
	cp c                                             ; $6267: $b9
	db $10                                           ; $6268: $10
	sub b                                            ; $6269: $90
	jr nc, jr_059_61fd                               ; $626a: $30 $91

	jr nc, jr_059_6260                               ; $626c: $30 $f2

	jr nz, @-$1d                                     ; $626e: $20 $e1

	ld a, d                                          ; $6270: $7a
	call z, $467e                                    ; $6271: $cc $7e $46
	add a                                            ; $6274: $87
	add e                                            ; $6275: $83
	inc bc                                           ; $6276: $03
	rra                                              ; $6277: $1f
	ld e, $9f                                        ; $6278: $1e $9f
	db $10                                           ; $627a: $10
	rra                                              ; $627b: $1f
	jr @+$41                                         ; $627c: $18 $3f

	jr nz, jr_059_62ff                               ; $627e: $20 $7f

	ld b, b                                          ; $6280: $40
	rlca                                             ; $6281: $07
	rlca                                             ; $6282: $07
	ld c, $0a                                        ; $6283: $0e $0a
	ld e, a                                          ; $6285: $5f
	ld d, e                                          ; $6286: $53
	rst $38                                          ; $6287: $ff
	and b                                            ; $6288: $a0
	rst $38                                          ; $6289: $ff
	ld b, c                                          ; $628a: $41
	rst $38                                          ; $628b: $ff
	inc bc                                           ; $628c: $03
	ld a, e                                          ; $628d: $7b
	jp nz, Jump_059_419e                             ; $628e: $c2 $9e $41

	halt                                             ; $6291: $76
	call z, $e0df                                    ; $6292: $cc $df $e0
	add b                                            ; $6295: $80
	ret nz                                           ; $6296: $c0

	ld b, b                                          ; $6297: $40
	add h                                            ; $6298: $84
	add b                                            ; $6299: $80
	inc b                                            ; $629a: $04
	nop                                              ; $629b: $00
	add $c0                                          ; $629c: $c6 $c0
	add [hl]                                         ; $629e: $86
	add b                                            ; $629f: $80
	rrca                                             ; $62a0: $0f
	ld b, h                                          ; $62a1: $44
	sbc [hl]                                         ; $62a2: $9e
	ld b, l                                          ; $62a3: $45
	sbc e                                            ; $62a4: $9b
	add $b4                                          ; $62a5: $c6 $b4
	jp Jump_059_4277                                 ; $62a7: $c3 $77 $42


	halt                                             ; $62aa: $76
	ld b, e                                          ; $62ab: $43
	ld [hl], e                                       ; $62ac: $73
	ld b, d                                          ; $62ad: $42
	ld [hl], c                                       ; $62ae: $71
	ld b, e                                          ; $62af: $43

jr_059_62b0:
	adc d                                            ; $62b0: $8a
	ld [hl], l                                       ; $62b1: $75
	nop                                              ; $62b2: $00
	rst $38                                          ; $62b3: $ff
	add b                                            ; $62b4: $80
	sbc h                                            ; $62b5: $9c
	ld a, a                                          ; $62b6: $7f
	rra                                              ; $62b7: $1f
	ldh [rPCM34], a                                  ; $62b8: $e0 $77
	adc a                                            ; $62ba: $8f
	halt                                             ; $62bb: $76
	ldh [$9d], a                                     ; $62bc: $e0 $9d
	rrca                                             ; $62be: $0f
	ldh a, [$6f]                                     ; $62bf: $f0 $6f
	add e                                            ; $62c1: $83
	ld a, l                                          ; $62c2: $7d
	ld l, e                                          ; $62c3: $6b
	ld l, a                                          ; $62c4: $6f
	ld hl, sp+$67                                    ; $62c5: $f8 $67
	jr nz, jr_059_6330                               ; $62c7: $20 $67

	cp $80                                           ; $62c9: $fe $80
	ld [$62d7], sp                                   ; $62cb: $08 $d7 $62
	add l                                            ; $62ce: $85
	ld e, b                                          ; $62cf: $58
	and c                                            ; $62d0: $a1
	ld l, $d0                                        ; $62d1: $2e $d0
	rla                                              ; $62d3: $17
	add sp, $2a                                      ; $62d4: $e8 $2a
	push de                                          ; $62d6: $d5
	dec d                                            ; $62d7: $15
	ld [$f50a], a                                    ; $62d8: $ea $0a $f5
	dec l                                            ; $62db: $2d
	jp nc, $3ac5                                     ; $62dc: $d2 $c5 $3a

	ret c                                            ; $62df: $d8

	daa                                              ; $62e0: $27
	ld e, e                                          ; $62e1: $5b
	inc h                                            ; $62e2: $24
	adc e                                            ; $62e3: $8b
	inc b                                            ; $62e4: $04
	di                                               ; $62e5: $f3
	nop                                              ; $62e6: $00
	ld e, h                                          ; $62e7: $5c
	and b                                            ; $62e8: $a0
	xor d                                            ; $62e9: $aa
	adc [hl]                                         ; $62ea: $8e
	ld d, l                                          ; $62eb: $55
	add b                                            ; $62ec: $80
	ld b, b                                          ; $62ed: $40
	or h                                             ; $62ee: $b4
	ld c, b                                          ; $62ef: $48
	or [hl]                                          ; $62f0: $b6
	ld c, c                                          ; $62f1: $49
	ld d, $e9                                        ; $62f2: $16 $e9
	ld h, d                                          ; $62f4: $62
	sbc l                                            ; $62f5: $9d
	ld l, h                                          ; $62f6: $6c
	sub e                                            ; $62f7: $93
	ld l, l                                          ; $62f8: $6d
	ld [de], a                                       ; $62f9: $12
	adc l                                            ; $62fa: $8d
	ld [bc], a                                       ; $62fb: $02
	ld a, d                                          ; $62fc: $7a
	jr z, jr_059_637c                                ; $62fd: $28 $7d

jr_059_62ff:
	and d                                            ; $62ff: $a2
	sub d                                            ; $6300: $92
	jr nz, @-$23                                     ; $6301: $20 $db

	inc h                                            ; $6303: $24
	db $db                                           ; $6304: $db
	inc h                                            ; $6305: $24
	dec de                                           ; $6306: $1b
	db $e4                                           ; $6307: $e4
	and c                                            ; $6308: $a1
	ld e, [hl]                                       ; $6309: $5e
	or [hl]                                          ; $630a: $b6
	ld c, c                                          ; $630b: $49
	nop                                              ; $630c: $00
	add h                                            ; $630d: $84
	ld a, e                                          ; $630e: $7b
	cp $fe                                           ; $630f: $fe $fe
	sbc l                                            ; $6311: $9d
	cp e                                             ; $6312: $bb
	ld b, h                                          ; $6313: $44
	ld [hl], a                                       ; $6314: $77
	cp $7f                                           ; $6315: $fe $7f
	db $ec                                           ; $6317: $ec
	ld a, a                                          ; $6318: $7f
	and b                                            ; $6319: $a0
	ld a, l                                          ; $631a: $7d
	sbc [hl]                                         ; $631b: $9e
	sbc c                                            ; $631c: $99
	inc e                                            ; $631d: $1c
	db $e3                                           ; $631e: $e3
	inc bc                                           ; $631f: $03
	db $fc                                           ; $6320: $fc
	ld c, $f1                                        ; $6321: $0e $f1
	ld l, [hl]                                       ; $6323: $6e
	ld h, b                                          ; $6324: $60
	sbc c                                            ; $6325: $99
	add sp, $10                                      ; $6326: $e8 $10
	inc h                                            ; $6328: $24
	jp $9f60                                         ; $6329: $c3 $60 $9f


	ld h, [hl]                                       ; $632c: $66
	ldh [c], a                                       ; $632d: $e2
	ld [hl], a                                       ; $632e: $77
	ld h, h                                          ; $632f: $64

jr_059_6330:
	ld c, a                                          ; $6330: $4f
	add b                                            ; $6331: $80
	ld a, h                                          ; $6332: $7c
	di                                               ; $6333: $f3
	ld a, [hl]                                       ; $6334: $7e
	ld c, d                                          ; $6335: $4a
	ld d, a                                          ; $6336: $57
	ldh a, [$7d]                                     ; $6337: $f0 $7d
	sbc h                                            ; $6339: $9c
	ld a, [hl]                                       ; $633a: $7e
	call nz, $af9b                                   ; $633b: $c4 $9b $af
	ld d, b                                          ; $633e: $50
	ld [bc], a                                       ; $633f: $02
	db $fd                                           ; $6340: $fd
	ld h, a                                          ; $6341: $67
	ldh a, [$7e]                                     ; $6342: $f0 $7e
	jr @+$81                                         ; $6344: $18 $7f

	ei                                               ; $6346: $fb
	sbc e                                            ; $6347: $9b
	push af                                          ; $6348: $f5
	ld a, [bc]                                       ; $6349: $0a
	xor d                                            ; $634a: $aa
	ld d, l                                          ; $634b: $55
	ld h, a                                          ; $634c: $67
	ldh a, [$80]                                     ; $634d: $f0 $80
	xor b                                            ; $634f: $a8
	ld e, h                                          ; $6350: $5c
	db $fc                                           ; $6351: $fc
	ld [$f80e], sp                                   ; $6352: $08 $0e $f8
	ld a, $d0                                        ; $6355: $3e $d0
	ld e, $f0                                        ; $6357: $1e $f0
	ld a, $e0                                        ; $6359: $3e $e0
	ld l, $e0                                        ; $635b: $2e $e0
	ld h, d                                          ; $635d: $62
	ret nz                                           ; $635e: $c0

	and d                                            ; $635f: $a2
	ld h, b                                          ; $6360: $60
	jr nz, jr_059_63c3                               ; $6361: $20 $60

	ld [hl], d                                       ; $6363: $72
	ld b, b                                          ; $6364: $40
	ld [hl], d                                       ; $6365: $72
	ld b, b                                          ; $6366: $40
	ld d, [hl]                                       ; $6367: $56
	ld h, b                                          ; $6368: $60
	ld e, [hl]                                       ; $6369: $5e
	ld h, b                                          ; $636a: $60
	ld l, [hl]                                       ; $636b: $6e
	jr nc, jr_059_639a                               ; $636c: $30 $2c

	sub a                                            ; $636e: $97
	ld [hl], b                                       ; $636f: $70
	rst $38                                          ; $6370: $ff
	db $fc                                           ; $6371: $fc
	ld b, a                                          ; $6372: $47
	ld a, l                                          ; $6373: $7d
	add d                                            ; $6374: $82
	rst $38                                          ; $6375: $ff
	adc b                                            ; $6376: $88
	ld a, e                                          ; $6377: $7b
	cp $7d                                           ; $6378: $fe $7d
	sbc d                                            ; $637a: $9a
	ld a, a                                          ; $637b: $7f

jr_059_637c:
	cp $96                                           ; $637c: $fe $96
	add sp, $3f                                      ; $637e: $e8 $3f
	cp [hl]                                          ; $6380: $be
	rst SubAFromBC                                          ; $6381: $e7
	inc e                                            ; $6382: $1c
	rst FarCall                                          ; $6383: $f7
	dec c                                            ; $6384: $0d
	rst $38                                          ; $6385: $ff
	dec b                                            ; $6386: $05
	ld a, d                                          ; $6387: $7a
	ld [hl+], a                                      ; $6388: $22
	sbc h                                            ; $6389: $9c
	sub b                                            ; $638a: $90
	rst $38                                          ; $638b: $ff
	ld de, $c07b                                     ; $638c: $11 $7b $c0
	sbc b                                            ; $638f: $98
	ld b, e                                          ; $6390: $43
	ret nz                                           ; $6391: $c0

	inc hl                                           ; $6392: $23
	ldh [rAUD4GO], a                                 ; $6393: $e0 $23
	ldh [rAUD4ENV], a                                ; $6395: $e0 $21
	ld a, e                                          ; $6397: $7b
	cp $9c                                           ; $6398: $fe $9c

jr_059_639a:
	ld b, c                                          ; $639a: $41
	ret nz                                           ; $639b: $c0

	ld b, b                                          ; $639c: $40
	ld a, e                                          ; $639d: $7b
	cp $8f                                           ; $639e: $fe $8f
	ld a, c                                          ; $63a0: $79
	ld b, e                                          ; $63a1: $43
	db $fd                                           ; $63a2: $fd
	ld b, e                                          ; $63a3: $43
	rst $38                                          ; $63a4: $ff
	ld b, c                                          ; $63a5: $41
	rst AddAOntoHL                                          ; $63a6: $ef
	ld b, c                                          ; $63a7: $41
	xor $41                                          ; $63a8: $ee $41
	rst AddAOntoHL                                          ; $63aa: $ef
	ld b, b                                          ; $63ab: $40
	and a                                            ; $63ac: $a7
	ret nz                                           ; $63ad: $c0

	add e                                            ; $63ae: $83
	ret nz                                           ; $63af: $c0

	ld [hl], a                                       ; $63b0: $77
	sbc h                                            ; $63b1: $9c
	sbc l                                            ; $63b2: $9d
	pop af                                           ; $63b3: $f1
	ld c, $7b                                        ; $63b4: $0e $7b
	ld e, b                                          ; $63b6: $58
	ld [hl], e                                       ; $63b7: $73
	cp $79                                           ; $63b8: $fe $79
	rrca                                             ; $63ba: $0f
	ld a, e                                          ; $63bb: $7b
	cp $7d                                           ; $63bc: $fe $7d
	ld b, l                                          ; $63be: $45
	ld a, a                                          ; $63bf: $7f
	db $fc                                           ; $63c0: $fc
	sbc c                                            ; $63c1: $99
	inc a                                            ; $63c2: $3c

jr_059_63c3:
	jp $ff00                                         ; $63c3: $c3 $00 $ff


	ld b, $f9                                        ; $63c6: $06 $f9
	ld a, $bc                                        ; $63c8: $3e $bc
	ld a, a                                          ; $63ca: $7f
	ld b, d                                          ; $63cb: $42
	ld a, a                                          ; $63cc: $7f
	ld d, h                                          ; $63cd: $54
	ld a, [hl]                                       ; $63ce: $7e
	cpl                                              ; $63cf: $2f
	ld e, a                                          ; $63d0: $5f
	ldh a, [$7e]                                     ; $63d1: $f0 $7e
	ld c, $7f                                        ; $63d3: $0e $7f
	ld d, h                                          ; $63d5: $54
	ld a, a                                          ; $63d6: $7f
	db $fc                                           ; $63d7: $fc
	halt                                             ; $63d8: $76
	or h                                             ; $63d9: $b4
	ld l, a                                          ; $63da: $6f
	ldh a, [$9b]                                     ; $63db: $f0 $9b
	ld d, c                                          ; $63dd: $51
	and b                                            ; $63de: $a0
	xor [hl]                                         ; $63df: $ae
	ld d, b                                          ; $63e0: $50
	ld l, a                                          ; $63e1: $6f
	db $ec                                           ; $63e2: $ec
	ld a, a                                          ; $63e3: $7f
	db $fc                                           ; $63e4: $fc
	ld [hl], a                                       ; $63e5: $77
	db $ec                                           ; $63e6: $ec
	sub l                                            ; $63e7: $95
	or a                                             ; $63e8: $b7
	ld c, b                                          ; $63e9: $48
	scf                                              ; $63ea: $37
	ld [$00c7], sp                                   ; $63eb: $08 $c7 $00
	cp b                                             ; $63ee: $b8
	ld b, b                                          ; $63ef: $40
	ld d, a                                          ; $63f0: $57

jr_059_63f1:
	xor b                                            ; $63f1: $a8
	ld [hl], a                                       ; $63f2: $77
	db $ec                                           ; $63f3: $ec
	ld a, [hl]                                       ; $63f4: $7e
	sub b                                            ; $63f5: $90
	ld a, [hl]                                       ; $63f6: $7e
	db $e4                                           ; $63f7: $e4
	sbc l                                            ; $63f8: $9d
	ld [hl], a                                       ; $63f9: $77
	adc b                                            ; $63fa: $88
	ld [hl], a                                       ; $63fb: $77
	cp $7c                                           ; $63fc: $fe $7c
	ld a, [hl]                                       ; $63fe: $7e
	sbc [hl]                                         ; $63ff: $9e
	or b                                             ; $6400: $b0
	ld [hl], e                                       ; $6401: $73

jr_059_6402:
	db $ec                                           ; $6402: $ec
	ld c, [hl]                                       ; $6403: $4e
	ldh [c], a                                       ; $6404: $e2
	ld d, a                                          ; $6405: $57
	cp $5e                                           ; $6406: $fe $5e
	ret c                                            ; $6408: $d8

	ld l, a                                          ; $6409: $6f
	ld a, b                                          ; $640a: $78
	sbc l                                            ; $640b: $9d
	ld e, [hl]                                       ; $640c: $5e
	and c                                            ; $640d: $a1
	ld h, a                                          ; $640e: $67
	add sp, -$63                                     ; $640f: $e8 $9d
	cpl                                              ; $6411: $2f
	ret nc                                           ; $6412: $d0

	halt                                             ; $6413: $76
	cp b                                             ; $6414: $b8
	sbc l                                            ; $6415: $9d
	rst FarCall                                          ; $6416: $f7
	ld [$f277], sp                                   ; $6417: $08 $77 $f2
	add b                                            ; $641a: $80
	sbc a                                            ; $641b: $9f
	ld h, b                                          ; $641c: $60
	rst $38                                          ; $641d: $ff
	nop                                              ; $641e: $00
	reti                                             ; $641f: $d9


	ld h, $06                                        ; $6420: $26 $06
	ld sp, hl                                        ; $6422: $f9
	pop hl                                           ; $6423: $e1
	ld e, $84                                        ; $6424: $1e $84
	ld a, b                                          ; $6426: $78
	ld [$22f0], sp                                   ; $6427: $08 $f0 $22
	pop bc                                           ; $642a: $c1
	ldh a, [rIF]                                     ; $642b: $f0 $0f
	rst AddAOntoHL                                          ; $642d: $ef

jr_059_642e:
	db $10                                           ; $642e: $10
	jr nz, jr_059_63f1                               ; $642f: $20 $c0

	ld b, c                                          ; $6431: $41
	add b                                            ; $6432: $80
	db $10                                           ; $6433: $10
	rrca                                             ; $6434: $0f
	rra                                              ; $6435: $1f
	ccf                                              ; $6436: $3f
	rst $38                                          ; $6437: $ff
	ld a, a                                          ; $6438: $7f
	ldh [hDisp1_WY], a                                     ; $6439: $e0 $95
	rst $38                                          ; $643b: $ff
	jr nc, jr_059_642e                               ; $643c: $30 $f0

	call z, $023c                                    ; $643e: $cc $3c $02
	ld e, $f1                                        ; $6441: $1e $f1
	rrca                                             ; $6443: $0f
	ld bc, $ffdc                                     ; $6444: $01 $dc $ff
	ld a, a                                          ; $6447: $7f
	ld a, [$209d]                                    ; $6448: $fa $9d $20
	ld a, l                                          ; $644b: $7d
	ld a, e                                          ; $644c: $7b
	cp $91                                           ; $644d: $fe $91
	db $fd                                           ; $644f: $fd
	db $10                                           ; $6450: $10
	rst $38                                          ; $6451: $ff
	sub b                                            ; $6452: $90
	cp $f0                                           ; $6453: $fe $f0
	ld a, h                                          ; $6455: $7c
	ldh a, [rAUD2LOW]                                ; $6456: $f0 $18
	ld [hl], b                                       ; $6458: $70
	db $10                                           ; $6459: $10
	add sp, $3f                                      ; $645a: $e8 $3f
	ldh [c], a                                       ; $645c: $e2
	ld a, e                                          ; $645d: $7b
	cp $7d                                           ; $645e: $fe $7d
	ld b, c                                          ; $6460: $41
	ld a, l                                          ; $6461: $7d
	add c                                            ; $6462: $81
	sbc h                                            ; $6463: $9c
	jr c, jr_059_6485                                ; $6464: $38 $1f

	rrca                                             ; $6466: $0f
	ld a, c                                          ; $6467: $79
	jp $209c                                         ; $6468: $c3 $9c $20


	rst $38                                          ; $646b: $ff
	inc b                                            ; $646c: $04
	ld a, c                                          ; $646d: $79
	add l                                            ; $646e: $85
	sub l                                            ; $646f: $95
	ld b, e                                          ; $6470: $43
	cp $0e                                           ; $6471: $fe $0e
	db $fc                                           ; $6473: $fc
	ld a, l                                          ; $6474: $7d
	ldh a, [$fe]                                     ; $6475: $f0 $fe
	add b                                            ; $6477: $80
	rrca                                             ; $6478: $0f
	nop                                              ; $6479: $00
	call c, Call_059_7480                            ; $647a: $dc $80 $74
	jr c, jr_059_6402                                ; $647d: $38 $83

	nop                                              ; $647f: $00

Jump_059_6480:
	ld h, c                                          ; $6480: $61
	nop                                              ; $6481: $00
	or c                                             ; $6482: $b1
	nop                                              ; $6483: $00
	db $fd                                           ; $6484: $fd

jr_059_6485:
	nop                                              ; $6485: $00
	add b                                            ; $6486: $80
	pop bc                                           ; $6487: $c1
	add b                                            ; $6488: $80
	pop bc                                           ; $6489: $c1
	add c                                            ; $648a: $81
	pop bc                                           ; $648b: $c1
	add [hl]                                         ; $648c: $86
	rst GetHLinHL                                          ; $648d: $cf
	sbc b                                            ; $648e: $98
	rst $38                                          ; $648f: $ff
	ei                                               ; $6490: $fb
	rst AddAOntoHL                                          ; $6491: $ef
	ld a, a                                          ; $6492: $7f
	rst GetHLinHL                                          ; $6493: $cf
	ld a, l                                          ; $6494: $7d
	rst GetHLinHL                                          ; $6495: $cf
	ld b, b                                          ; $6496: $40
	rst $38                                          ; $6497: $ff
	ld a, h                                          ; $6498: $7c
	jp Jump_059_7ac1                                 ; $6499: $c3 $c1 $7a


	xor b                                            ; $649c: $a8
	sbc h                                            ; $649d: $9c
	db $fc                                           ; $649e: $fc
	add b                                            ; $649f: $80
	db $fd                                           ; $64a0: $fd
	ld a, b                                          ; $64a1: $78
	xor e                                            ; $64a2: $ab
	sbc [hl]                                         ; $64a3: $9e
	ld d, a                                          ; $64a4: $57
	ld h, [hl]                                       ; $64a5: $66
	inc c                                            ; $64a6: $0c
	ld a, a                                          ; $64a7: $7f
	or b                                             ; $64a8: $b0
	ld a, h                                          ; $64a9: $7c
	ld hl, $079b                                     ; $64aa: $21 $9b $07
	ret nz                                           ; $64ad: $c0

	inc bc                                           ; $64ae: $03
	and c                                            ; $64af: $a1
	ld [hl], d                                       ; $64b0: $72
	and b                                            ; $64b1: $a0
	inc bc                                           ; $64b2: $03
	cp $1b                                           ; $64b3: $fe $1b
	cp $4d                                           ; $64b5: $fe $4d
	jp nc, $9076                                     ; $64b7: $d2 $76 $90

	ld [hl], l                                       ; $64ba: $75
	ld c, $03                                        ; $64bb: $0e $03
	cp $27                                           ; $64bd: $fe $27
	cp $7a                                           ; $64bf: $fe $7a

jr_059_64c1:
	ld b, [hl]                                       ; $64c1: $46
	ld a, [hl]                                       ; $64c2: $7e
	ld b, d                                          ; $64c3: $42
	adc b                                            ; $64c4: $88
	ld [bc], a                                       ; $64c5: $02
	db $fc                                           ; $64c6: $fc
	ld [$10f0], sp                                   ; $64c7: $08 $f0 $10
	ldh [rSC], a                                     ; $64ca: $e0 $02
	pop bc                                           ; $64cc: $c1
	add l                                            ; $64cd: $85
	inc bc                                           ; $64ce: $03
	inc bc                                           ; $64cf: $03
	rrca                                             ; $64d0: $0f
	ld b, l                                          ; $64d1: $45
	add e                                            ; $64d2: $83
	inc bc                                           ; $64d3: $03
	rrca                                             ; $64d4: $0f
	ld l, $1f                                        ; $64d5: $2e $1f
	ld e, h                                          ; $64d7: $5c
	ccf                                              ; $64d8: $3f
	jr nc, @+$01                                     ; $64d9: $30 $ff

	ldh [$7a], a                                     ; $64db: $e0 $7a
	nop                                              ; $64dd: $00
	ld a, a                                          ; $64de: $7f
	ldh [c], a                                       ; $64df: $e2
	sbc e                                            ; $64e0: $9b
	ret nc                                           ; $64e1: $d0

	rst AddAOntoHL                                          ; $64e2: $ef
	ld d, b                                          ; $64e3: $50

Jump_059_64e4:
	xor a                                            ; $64e4: $af
	ld e, a                                          ; $64e5: $5f
	cp $9d                                           ; $64e6: $fe $9d
	jr z, jr_059_64c1                                ; $64e8: $28 $d7

	ld a, b                                          ; $64ea: $78
	ld b, c                                          ; $64eb: $41
	ld a, e                                          ; $64ec: $7b
	cp $74                                           ; $64ed: $fe $74
	ld b, c                                          ; $64ef: $41
	ld a, h                                          ; $64f0: $7c
	ld [hl], c                                       ; $64f1: $71

jr_059_64f2:
	ld a, [hl]                                       ; $64f2: $7e
	and $83                                          ; $64f3: $e6 $83
	ld [$70ff], sp                                   ; $64f5: $08 $ff $70
	inc de                                           ; $64f8: $13
	add hl, sp                                       ; $64f9: $39
	rrca                                             ; $64fa: $0f
	ccf                                              ; $64fb: $3f
	ld c, $7c                                        ; $64fc: $0e $7c
	jr @+$7a                                         ; $64fe: $18 $78

	jr nc, jr_059_64f2                               ; $6500: $30 $f0

	ldh [rSVBK], a                                   ; $6502: $e0 $70
	ret nz                                           ; $6504: $c0

	ldh [$80], a                                     ; $6505: $e0 $80
	nop                                              ; $6507: $00
	cp $f0                                           ; $6508: $fe $f0
	rst $38                                          ; $650a: $ff
	inc a                                            ; $650b: $3c
	ld c, $06                                        ; $650c: $0e $06
	inc bc                                           ; $650e: $03
	inc bc                                           ; $650f: $03
	ld bc, $5778                                     ; $6510: $01 $78 $57
	ei                                               ; $6513: $fb
	sub a                                            ; $6514: $97
	adc h                                            ; $6515: $8c
	nop                                              ; $6516: $00
	ld sp, $cf07                                     ; $6517: $31 $07 $cf
	ld [$b09f], sp                                   ; $651a: $08 $9f $b0
	sbc $ff                                          ; $651d: $de $ff
	adc b                                            ; $651f: $88
	ret nz                                           ; $6520: $c0

	ld b, d                                          ; $6521: $42
	nop                                              ; $6522: $00
	ccf                                              ; $6523: $3f
	nop                                              ; $6524: $00
	inc bc                                           ; $6525: $03
	rst $38                                          ; $6526: $ff
	rst $38                                          ; $6527: $ff
	inc bc                                           ; $6528: $03
	ld b, $07                                        ; $6529: $06 $07
	xor h                                            ; $652b: $ac
	ld c, $f8                                        ; $652c: $0e $f8
	sbc [hl]                                         ; $652e: $9e
	ldh a, [$be]                                     ; $652f: $f0 $be
	ldh a, [$7e]                                     ; $6531: $f0 $7e
	rst $38                                          ; $6533: $ff
	rst $38                                          ; $6534: $ff
	jp $f6c1                                         ; $6535: $c3 $c1 $f6


	sbc [hl]                                         ; $6538: $9e
	xor d                                            ; $6539: $aa
	ld a, d                                          ; $653a: $7a
	call z, $fc7b                                    ; $653b: $cc $7b $fc
	adc e                                            ; $653e: $8b
	ld a, a                                          ; $653f: $7f
	ld l, d                                          ; $6540: $6a
	ccf                                              ; $6541: $3f
	dec [hl]                                         ; $6542: $35
	ccf                                              ; $6543: $3f
	ld a, $1f                                        ; $6544: $3e $1f
	dec [hl]                                         ; $6546: $35
	rra                                              ; $6547: $1f
	ldh a, [$e0]                                     ; $6548: $f0 $e0
	ld a, h                                          ; $654a: $7c
	ldh a, [$aa]                                     ; $654b: $f0 $aa
	db $fc                                           ; $654d: $fc
	ld d, l                                          ; $654e: $55
	cp $aa                                           ; $654f: $fe $aa
	rst $38                                          ; $6551: $ff
	ld d, l                                          ; $6552: $55
	ld a, e                                          ; $6553: $7b
	add sp, $7f                                      ; $6554: $e8 $7f
	db $fc                                           ; $6556: $fc
	halt                                             ; $6557: $76
	or h                                             ; $6558: $b4
	sub e                                            ; $6559: $93
	nop                                              ; $655a: $00
	rra                                              ; $655b: $1f
	nop                                              ; $655c: $00
	rrca                                             ; $655d: $0f
	add b                                            ; $655e: $80
	rlca                                             ; $655f: $07
	ld b, b                                          ; $6560: $40
	add e                                            ; $6561: $83
	and b                                            ; $6562: $a0
	pop bc                                           ; $6563: $c1
	ld d, b                                          ; $6564: $50
	ldh [$03], a                                     ; $6565: $e0 $03
	ld e, $03                                        ; $6567: $1e $03
	cp $03                                           ; $6569: $fe $03
	cp $62                                           ; $656b: $fe $62
	call nc, $049b                                   ; $656d: $d4 $9b $04
	ld hl, sp+$08                                    ; $6570: $f8 $08
	ldh a, [rPCM34]                                  ; $6572: $f0 $77
	db $fc                                           ; $6574: $fc
	sub e                                            ; $6575: $93
	nop                                              ; $6576: $00
	ldh [rSTAT], a                                   ; $6577: $e0 $41

jr_059_6579:
	add b                                            ; $6579: $80
	inc b                                            ; $657a: $04

jr_059_657b:
	inc bc                                           ; $657b: $03
	dec bc                                           ; $657c: $0b
	rlca                                             ; $657d: $07
	rla                                              ; $657e: $17
	rrca                                             ; $657f: $0f
	ld e, $3f                                        ; $6580: $1e $3f
	halt                                             ; $6582: $76
	call nc, $b898                                   ; $6583: $d4 $98 $b8
	ld a, a                                          ; $6586: $7f
	ld [hl], b                                       ; $6587: $70
	rst $38                                          ; $6588: $ff
	pop bc                                           ; $6589: $c1
	cp $82                                           ; $658a: $fe $82
	ld a, b                                          ; $658c: $78
	ld [hl], $9d                                     ; $658d: $36 $9d
	ld a, [bc]                                       ; $658f: $0a
	db $f4                                           ; $6590: $f4
	ld [hl], a                                       ; $6591: $77
	sub $89                                          ; $6592: $d6 $89
	rlca                                             ; $6594: $07
	ld hl, sp-$71                                    ; $6595: $f8 $8f
	ld [hl], b                                       ; $6597: $70
	ld b, c                                          ; $6598: $41
	cp [hl]                                          ; $6599: $be
	add b                                            ; $659a: $80
	ccf                                              ; $659b: $3f
	nop                                              ; $659c: $00
	ld bc, $57a9                                     ; $659d: $01 $a9 $57
	jr z, jr_059_6579                                ; $65a0: $28 $d7

	jr z, jr_059_657b                                ; $65a2: $28 $d7

	xor b                                            ; $65a4: $a8
	ld d, a                                          ; $65a5: $57
	and h                                            ; $65a6: $a4
	ld e, e                                          ; $65a7: $5b
	push de                                          ; $65a8: $d5
	ld a, [hl+]                                      ; $65a9: $2a
	ld [hl], l                                       ; $65aa: $75
	adc [hl]                                         ; $65ab: $8e
	adc c                                            ; $65ac: $89
	ld a, a                                          ; $65ad: $7f
	rst $38                                          ; $65ae: $ff
	db $10                                           ; $65af: $10
	rst $38                                          ; $65b0: $ff
	ld hl, $71ff                                     ; $65b1: $21 $ff $71
	rst $38                                          ; $65b4: $ff
	adc a                                            ; $65b5: $8f
	cp $87                                           ; $65b6: $fe $87
	db $fc                                           ; $65b8: $fc
	rrca                                             ; $65b9: $0f
	ld hl, sp+$1f                                    ; $65ba: $f8 $1f
	ldh a, [$7f]                                     ; $65bc: $f0 $7f
	ldh [$e0], a                                     ; $65be: $e0 $e0
	add b                                            ; $65c0: $80
	ldh [rP1], a                                     ; $65c1: $e0 $00
	ld a, e                                          ; $65c3: $7b
	xor a                                            ; $65c4: $af
	sbc e                                            ; $65c5: $9b
	nop                                              ; $65c6: $00
	ret nz                                           ; $65c7: $c0

	nop                                              ; $65c8: $00
	add b                                            ; $65c9: $80
	ld a, e                                          ; $65ca: $7b
	cp $fb                                           ; $65cb: $fe $fb
	ld a, [hl]                                       ; $65cd: $7e
	ret z                                            ; $65ce: $c8

	ld a, h                                          ; $65cf: $7c
	ldh a, [c]                                       ; $65d0: $f2
	ld a, l                                          ; $65d1: $7d
	sub [hl]                                         ; $65d2: $96
	ld a, a                                          ; $65d3: $7f
	cp $7f                                           ; $65d4: $fe $7f
	add hl, de                                       ; $65d6: $19
	ld a, a                                          ; $65d7: $7f
	cp $8f                                           ; $65d8: $fe $8f
	ret nz                                           ; $65da: $c0

	ld h, l                                          ; $65db: $65
	ldh [$7b], a                                     ; $65dc: $e0 $7b
	pop hl                                           ; $65de: $e1
	ld [hl], l                                       ; $65df: $75
	pop de                                           ; $65e0: $d1
	ld a, e                                          ; $65e1: $7b
	db $d3                                           ; $65e2: $d3
	ld a, a                                          ; $65e3: $7f
	bit 3, a                                         ; $65e4: $cb $5f
	adc a                                            ; $65e6: $8f
	sbc [hl]                                         ; $65e7: $9e
	add a                                            ; $65e8: $87
	cp h                                             ; $65e9: $bc
	ld a, d                                          ; $65ea: $7a
	ld l, c                                          ; $65eb: $69
	sbc [hl]                                         ; $65ec: $9e
	ret nz                                           ; $65ed: $c0

	ld a, e                                          ; $65ee: $7b
	cp $76                                           ; $65ef: $fe $76
	ld h, l                                          ; $65f1: $65
	sbc d                                            ; $65f2: $9a
	nop                                              ; $65f3: $00
	db $e3                                           ; $65f4: $e3

jr_059_65f5:
	inc e                                            ; $65f5: $1c
	srl h                                            ; $65f6: $cb $3c
	db $fd                                           ; $65f8: $fd
	ld a, a                                          ; $65f9: $7f
	ret z                                            ; $65fa: $c8

	adc b                                            ; $65fb: $88
	ld b, b                                          ; $65fc: $40
	add b                                            ; $65fd: $80
	and b                                            ; $65fe: $a0
	ld b, b                                          ; $65ff: $40
	add b                                            ; $6600: $80
	ld h, b                                          ; $6601: $60
	ret nc                                           ; $6602: $d0

	jr nz, jr_059_65f5                               ; $6603: $20 $f0

	nop                                              ; $6605: $00
	ld a, $1f                                        ; $6606: $3e $1f
	dec a                                            ; $6608: $3d
	rrca                                             ; $6609: $0f
	ld a, [hl-]                                      ; $660a: $3a
	rrca                                             ; $660b: $0f
	dec l                                            ; $660c: $2d
	rlca                                             ; $660d: $07
	ld b, $07                                        ; $660e: $06 $07
	rlca                                             ; $6610: $07
	inc bc                                           ; $6611: $03
	ld [bc], a                                       ; $6612: $02
	ld a, d                                          ; $6613: $7a
	ld a, d                                          ; $6614: $7a
	halt                                             ; $6615: $76
	call z, $a298                                    ; $6616: $cc $98 $a2
	rst $38                                          ; $6619: $ff
	ld b, l                                          ; $661a: $45
	rst $38                                          ; $661b: $ff
	ld a, [bc]                                       ; $661c: $0a
	rst $38                                          ; $661d: $ff
	ld d, b                                          ; $661e: $50
	ld a, e                                          ; $661f: $7b
	db $fc                                           ; $6620: $fc
	ld a, h                                          ; $6621: $7c
	ld b, [hl]                                       ; $6622: $46
	sub [hl]                                         ; $6623: $96
	xor b                                            ; $6624: $a8
	ldh a, [rHDMA4]                                  ; $6625: $f0 $54
	ld hl, sp-$76                                    ; $6627: $f8 $8a
	db $fc                                           ; $6629: $fc
	dec b                                            ; $662a: $05
	cp $02                                           ; $662b: $fe $02
	ld a, d                                          ; $662d: $7a

jr_059_662e:
	ld a, [hl-]                                      ; $662e: $3a
	ld [hl], e                                       ; $662f: $73
	cp e                                             ; $6630: $bb
	ld [bc], a                                       ; $6631: $02
	or b                                             ; $6632: $b0
	inc bc                                           ; $6633: $03
	cp $3b                                           ; $6634: $fe $3b
	cp $7d                                           ; $6636: $fe $7d
	xor h                                            ; $6638: $ac
	sub a                                            ; $6639: $97
	nop                                              ; $663a: $00
	db $fc                                           ; $663b: $fc
	nop                                              ; $663c: $00
	ld hl, sp+$10                                    ; $663d: $f8 $10
	ldh [rAUD4LEN], a                                ; $663f: $e0 $20
	ret nz                                           ; $6641: $c0

	ld [hl], a                                       ; $6642: $77
	dec h                                            ; $6643: $25
	sbc h                                            ; $6644: $9c
	add b                                            ; $6645: $80
	ld bc, $7205                                     ; $6646: $01 $05 $72
	jp nc, $2f80                                     ; $6649: $d2 $80 $2f

	rra                                              ; $664c: $1f
	ld e, [hl]                                       ; $664d: $5e
	ccf                                              ; $664e: $3f
	inc a                                            ; $664f: $3c
	ld a, a                                          ; $6650: $7f
	ld a, b                                          ; $6651: $78
	rst $38                                          ; $6652: $ff
	pop af                                           ; $6653: $f1
	cp $e2                                           ; $6654: $fe $e2
	db $fd                                           ; $6656: $fd
	push bc                                          ; $6657: $c5
	ld a, [$f58a]                                    ; $6658: $fa $8a $f5
	dec d                                            ; $665b: $15
	ld [$d42a], a                                    ; $665c: $ea $2a $d4
	ld d, l                                          ; $665f: $55
	xor b                                            ; $6660: $a8
	xor d                                            ; $6661: $aa
	ld d, c                                          ; $6662: $51
	ld d, l                                          ; $6663: $55
	and d                                            ; $6664: $a2
	xor e                                            ; $6665: $ab
	ld b, h                                          ; $6666: $44
	ld d, a                                          ; $6667: $57
	adc b                                            ; $6668: $88
	xor a                                            ; $6669: $af
	adc c                                            ; $666a: $89
	db $10                                           ; $666b: $10
	ld e, a                                          ; $666c: $5f
	jr nz, jr_059_662e                               ; $666d: $20 $bf

	ld b, b                                          ; $666f: $40
	ld d, h                                          ; $6670: $54
	xor e                                            ; $6671: $ab
	cp [hl]                                          ; $6672: $be
	ld b, c                                          ; $6673: $41
	cp $01                                           ; $6674: $fe $01
	db $fd                                           ; $6676: $fd
	inc bc                                           ; $6677: $03
	db $fc                                           ; $6678: $fc
	inc bc                                           ; $6679: $03
	ld sp, hl                                        ; $667a: $f9
	rlca                                             ; $667b: $07
	ld a, [$f507]                                    ; $667c: $fa $07 $f5

Call_059_667f:
	rrca                                             ; $667f: $0f
	cp a                                             ; $6680: $bf
	ld a, d                                          ; $6681: $7a
	call z, $fc7b                                    ; $6682: $cc $7b $fc
	ld a, h                                          ; $6685: $7c
	or h                                             ; $6686: $b4
	sub a                                            ; $6687: $97
	db $fc                                           ; $6688: $fc
	ld a, a                                          ; $6689: $7f
	db $fc                                           ; $668a: $fc
	rst $38                                          ; $668b: $ff
	ld hl, sp-$01                                    ; $668c: $f8 $ff
	ldh a, [$fe]                                     ; $668e: $f0 $fe
	ld a, b                                          ; $6690: $78
	and [hl]                                         ; $6691: $a6
	sbc [hl]                                         ; $6692: $9e
	ld hl, sp+$72                                    ; $6693: $f8 $72
	adc $6e                                          ; $6695: $ce $6e
	call z, Call_059_7ff1                            ; $6697: $cc $f1 $7f
	dec [hl]                                         ; $669a: $35
	add b                                            ; $669b: $80
	jr c, @+$09                                      ; $669c: $38 $07

	jr c, jr_059_66af                                ; $669e: $38 $0f

	jr nc, jr_059_66c1                               ; $66a0: $30 $1f

	jr nc, jr_059_66c3                               ; $66a2: $30 $1f

	ld hl, $613f                                     ; $66a4: $21 $3f $61
	ccf                                              ; $66a7: $3f
	ld b, e                                          ; $66a8: $43
	ld a, a                                          ; $66a9: $7f
	add a                                            ; $66aa: $87
	cp h                                             ; $66ab: $bc
	adc a                                            ; $66ac: $8f
	cp b                                             ; $66ad: $b8
	adc a                                            ; $66ae: $8f

jr_059_66af:
	ld hl, sp-$61                                    ; $66af: $f8 $9f
	ldh a, [$9f]                                     ; $66b1: $f0 $9f
	ldh a, [$3f]                                     ; $66b3: $f0 $3f
	ldh [$3f], a                                     ; $66b5: $e0 $3f
	ldh [$7f], a                                     ; $66b7: $e0 $7f
	ret nz                                           ; $66b9: $c0

	push bc                                          ; $66ba: $c5
	adc l                                            ; $66bb: $8d
	ld a, $c5                                        ; $66bc: $3e $c5
	ld a, $85                                        ; $66be: $3e $85
	ld a, [hl]                                       ; $66c0: $7e

jr_059_66c1:
	add e                                            ; $66c1: $83
	ld a, [hl]                                       ; $66c2: $7e

Jump_059_66c3:
jr_059_66c3:
	add d                                            ; $66c3: $82
	ld a, a                                          ; $66c4: $7f
	jp nz, $f33f                                     ; $66c5: $c2 $3f $f3

	rrca                                             ; $66c8: $0f
	ld sp, hl                                        ; $66c9: $f9
	rlca                                             ; $66ca: $07
	ldh a, [rP1]                                     ; $66cb: $f0 $00
	ld hl, sp+$73                                    ; $66cd: $f8 $73
	cp $7f                                           ; $66cf: $fe $7f
	ld d, c                                          ; $66d1: $51
	ld a, a                                          ; $66d2: $7f
	cp $7f                                           ; $66d3: $fe $7f
	ld c, e                                          ; $66d5: $4b
	ld a, a                                          ; $66d6: $7f
	cp $79                                           ; $66d7: $fe $79
	ld c, c                                          ; $66d9: $49
	db $f4                                           ; $66da: $f4
	adc a                                            ; $66db: $8f
	ldh [c], a                                       ; $66dc: $e2
	sbc a                                            ; $66dd: $9f
	ldh a, [hDisp1_LCDC]                                     ; $66de: $f0 $8f
	ld a, [$7c87]                                    ; $66e0: $fa $87 $7c
	ld b, e                                          ; $66e3: $43
	ld a, [hl]                                       ; $66e4: $7e
	ld b, c                                          ; $66e5: $41
	ld a, $21                                        ; $66e6: $3e $21
	ccf                                              ; $66e8: $3f
	jr nz, jr_059_672a                               ; $66e9: $20 $3f

	jr nz, jr_059_6763                               ; $66eb: $20 $76

jr_059_66ed:
	call z, $a09e                                    ; $66ed: $cc $9e $a0
	ld a, e                                          ; $66f0: $7b
	db $fc                                           ; $66f1: $fc
	sbc [hl]                                         ; $66f2: $9e
	xor b                                            ; $66f3: $a8
	ld a, e                                          ; $66f4: $7b
	db $fc                                           ; $66f5: $fc
	sbc [hl]                                         ; $66f6: $9e
	ld a, [hl+]                                      ; $66f7: $2a
	ld a, c                                          ; $66f8: $79
	ld [hl], d                                       ; $66f9: $72
	sub [hl]                                         ; $66fa: $96
	jr z, jr_059_66ed                                ; $66fb: $28 $f0

	inc d                                            ; $66fd: $14
	ld hl, sp+$0a                                    ; $66fe: $f8 $0a
	db $fc                                           ; $6700: $fc
	ld b, $fc                                        ; $6701: $06 $fc
	inc bc                                           ; $6703: $03
	ld [hl], d                                       ; $6704: $72
	xor [hl]                                         ; $6705: $ae
	ld e, [hl]                                       ; $6706: $5e
	or b                                             ; $6707: $b0
	ld a, [hl]                                       ; $6708: $7e
	dec a                                            ; $6709: $3d
	sbc c                                            ; $670a: $99
	add b                                            ; $670b: $80
	inc bc                                           ; $670c: $03
	ld b, d                                          ; $670d: $42
	add c                                            ; $670e: $81
	and c                                            ; $670f: $a1
	ret nz                                           ; $6710: $c0

	ld [bc], a                                       ; $6711: $02
	call nc, $fe4b                                   ; $6712: $d4 $4b $fe
	ld c, h                                          ; $6715: $4c
	nop                                              ; $6716: $00
	db $dd                                           ; $6717: $dd
	ld h, [hl]                                       ; $6718: $66
	sbc b                                            ; $6719: $98
	ld d, l                                          ; $671a: $55
	ld d, a                                          ; $671b: $57
	ld h, $66                                        ; $671c: $26 $66
	ld h, d                                          ; $671e: $62
	ld [hl+], a                                      ; $671f: $22
	ld [hl+], a                                      ; $6720: $22
	ld [hl], a                                       ; $6721: $77
	or $9c                                           ; $6722: $f6 $9c
	ld d, h                                          ; $6724: $54
	ld h, $66                                        ; $6725: $26 $66
	db $db                                           ; $6727: $db
	ld [hl+], a                                      ; $6728: $22
	rst SubAFromDE                                          ; $6729: $df

jr_059_672a:
	ld d, l                                          ; $672a: $55
	reti                                             ; $672b: $d9


	ld [hl+], a                                      ; $672c: $22
	sbc l                                            ; $672d: $9d
	ld [hl], l                                       ; $672e: $75
	ld d, h                                          ; $672f: $54
	db $dd                                           ; $6730: $dd
	ld [hl+], a                                      ; $6731: $22
	sbc b                                            ; $6732: $98
	ld h, d                                          ; $6733: $62
	ld h, $66                                        ; $6734: $26 $66
	ld h, [hl]                                       ; $6736: $66
	ld [hl], l                                       ; $6737: $75
	halt                                             ; $6738: $76
	ld h, [hl]                                       ; $6739: $66
	ld a, e                                          ; $673a: $7b
	ldh [c], a                                       ; $673b: $e2
	ld [hl], a                                       ; $673c: $77
	or $9e                                           ; $673d: $f6 $9e
	inc sp                                           ; $673f: $33
	ret c                                            ; $6740: $d8

	ld h, [hl]                                       ; $6741: $66
	sbc l                                            ; $6742: $9d
	inc sp                                           ; $6743: $33
	ld [hl], $da                                     ; $6744: $36 $da
	ld h, [hl]                                       ; $6746: $66
	sbc h                                            ; $6747: $9c
	ld h, a                                          ; $6748: $67
	inc sp                                           ; $6749: $33
	ld h, a                                          ; $674a: $67
	ld h, a                                          ; $674b: $67
	or $df                                           ; $674c: $f6 $df
	ld [hl], a                                       ; $674e: $77
	ld a, e                                          ; $674f: $7b
	rst SubAFromHL                                          ; $6750: $d7
	db $dd                                           ; $6751: $dd
	ld h, [hl]                                       ; $6752: $66
	sbc h                                            ; $6753: $9c
	ld [hl], l                                       ; $6754: $75
	ld d, a                                          ; $6755: $57
	ld d, l                                          ; $6756: $55
	ld l, a                                          ; $6757: $6f
	or $9a                                           ; $6758: $f6 $9a
	ld h, a                                          ; $675a: $67
	ld d, l                                          ; $675b: $55
	ld d, a                                          ; $675c: $57
	ld d, l                                          ; $675d: $55
	ld d, [hl]                                       ; $675e: $56
	sbc $66                                          ; $675f: $de $66
	ld h, a                                          ; $6761: $67
	adc e                                            ; $6762: $8b

jr_059_6763:
	add b                                            ; $6763: $80
	ld b, $08                                        ; $6764: $06 $08
	or a                                             ; $6766: $b7
	db $db                                           ; $6767: $db
	and a                                            ; $6768: $a7
	rst GetHLinHL                                          ; $6769: $cf
	ld e, a                                          ; $676a: $5f
	ld l, [hl]                                       ; $676b: $6e
	ld bc, $0f07                                     ; $676c: $01 $07 $0f
	ld a, $7c                                        ; $676f: $3e $7c
	ld a, b                                          ; $6771: $78
	ldh a, [$f1]                                     ; $6772: $f0 $f1
	ld a, a                                          ; $6774: $7f
	db $fc                                           ; $6775: $fc
	ld sp, hl                                        ; $6776: $f9
	db $e3                                           ; $6777: $e3
	rst GetHLinHL                                          ; $6778: $cf
	sbc a                                            ; $6779: $9f
	dec [hl]                                         ; $677a: $35
	ld a, l                                          ; $677b: $7d
	ret nz                                           ; $677c: $c0

	add e                                            ; $677d: $83
	rlca                                             ; $677e: $07
	rra                                              ; $677f: $1f
	ccf                                              ; $6780: $3f
	ld a, l                                          ; $6781: $7d
	db $fd                                           ; $6782: $fd
	add b                                            ; $6783: $80
	db $e4                                           ; $6784: $e4
	ld e, $77                                        ; $6785: $1e $77
	push af                                          ; $6787: $f5
	dec h                                            ; $6788: $25
	ld c, e                                          ; $6789: $4b
	ld d, d                                          ; $678a: $52
	ld d, d                                          ; $678b: $52
	ld l, d                                          ; $678c: $6a
	rst $38                                          ; $678d: $ff
	ld hl, sp-$38                                    ; $678e: $f8 $c8
	ret                                              ; $6790: $c9


	and l                                            ; $6791: $a5
	and a                                            ; $6792: $a7
	and a                                            ; $6793: $a7
	sub a                                            ; $6794: $97
	ld sp, $8050                                     ; $6795: $31 $50 $80
	ld b, b                                          ; $6798: $40
	ld h, a                                          ; $6799: $67
	ld l, l                                          ; $679a: $6d
	ld a, b                                          ; $679b: $78
	ld d, h                                          ; $679c: $54
	cp $e0                                           ; $679d: $fe $e0
	ret nz                                           ; $679f: $c0

	add c                                            ; $67a0: $81
	add e                                            ; $67a1: $83
	add [hl]                                         ; $67a2: $86
	add c                                            ; $67a3: $81
	adc a                                            ; $67a4: $8f
	cp e                                             ; $67a5: $bb
	dec c                                            ; $67a6: $0d
	ld a, c                                          ; $67a7: $79
	call z, $a4a4                                    ; $67a8: $cc $a4 $a4
	sub d                                            ; $67ab: $92
	jp nc, $1ed7                                     ; $67ac: $d2 $d7 $1e

	ld [hl], $63                                     ; $67af: $36 $63
	jp Jump_059_6143                                 ; $67b1: $c3 $43 $61


	ld hl, $252f                                     ; $67b4: $21 $2f $25
	sub [hl]                                         ; $67b7: $96
	and l                                            ; $67b8: $a5
	jp z, Jump_059_5252                              ; $67b9: $ca $52 $52

	ld [hl], d                                       ; $67bc: $72
	cp d                                             ; $67bd: $ba
	ld e, $0b                                        ; $67be: $1e $0b
	dec bc                                           ; $67c0: $0b
	dec b                                            ; $67c1: $05
	sbc $85                                          ; $67c2: $de $85
	adc c                                            ; $67c4: $89
	push bc                                          ; $67c5: $c5
	push de                                          ; $67c6: $d5
	ld [$ba7f], a                                    ; $67c7: $ea $7f $ba
	ld d, h                                          ; $67ca: $54
	db $ec                                           ; $67cb: $ec
	ret nc                                           ; $67cc: $d0

	add sp, $3f                                      ; $67cd: $e8 $3f
	rra                                              ; $67cf: $1f
	add [hl]                                         ; $67d0: $86
	call nz, Call_059_70e8                           ; $67d1: $c4 $e8 $70
	ld h, b                                          ; $67d4: $60
	ld b, b                                          ; $67d5: $40
	ld d, a                                          ; $67d6: $57
	xor e                                            ; $67d7: $ab
	and l                                            ; $67d8: $a5
	add $07                                          ; $67d9: $c6 $07
	cp $9a                                           ; $67db: $fe $9a
	rst SubAFromHL                                          ; $67dd: $d7
	db $eb                                           ; $67de: $eb
	push af                                          ; $67df: $f5
	ld a, [bc]                                       ; $67e0: $0a
	ld bc, $94fe                                     ; $67e1: $01 $fe $94
	ld a, [$fefd]                                    ; $67e4: $fa $fd $fe
	rst $38                                          ; $67e7: $ff
	ld a, a                                          ; $67e8: $7f
	cp a                                             ; $67e9: $bf
	ld e, a                                          ; $67ea: $5f
	cpl                                              ; $67eb: $2f
	db $fc                                           ; $67ec: $fc
	cp $ff                                           ; $67ed: $fe $ff
	ld [hl], e                                       ; $67ef: $73
	ld hl, sp-$79                                    ; $67f0: $f8 $87
	inc b                                            ; $67f2: $04
	ld a, [bc]                                       ; $67f3: $0a
	add l                                            ; $67f4: $85
	ld b, d                                          ; $67f5: $42
	add c                                            ; $67f6: $81
	ldh [$d0], a                                     ; $67f7: $e0 $d0
	add sp, $0c                                      ; $67f9: $e8 $0c
	ld b, $03                                        ; $67fb: $06 $03
	add c                                            ; $67fd: $81
	ret nz                                           ; $67fe: $c0

	ret nz                                           ; $67ff: $c0

	ldh [$f0], a                                     ; $6800: $e0 $f0
	nop                                              ; $6802: $00
	rlca                                             ; $6803: $07
	nop                                              ; $6804: $00
	add b                                            ; $6805: $80
	ld b, b                                          ; $6806: $40
	and b                                            ; $6807: $a0
	ld d, b                                          ; $6808: $50

jr_059_6809:
	jr z, jr_059_6809                                ; $6809: $28 $fe

	sub a                                            ; $680b: $97
	add b                                            ; $680c: $80
	ret nz                                           ; $680d: $c0

	ld h, b                                          ; $680e: $60
	jr nc, jr_059_6829                               ; $680f: $30 $18

	nop                                              ; $6811: $00
	ldh a, [$7f]                                     ; $6812: $f0 $7f
	ldh a, [c]                                       ; $6814: $f2
	sbc [hl]                                         ; $6815: $9e
	cp $fe                                           ; $6816: $fe $fe
	sbc l                                            ; $6818: $9d
	inc bc                                           ; $6819: $03
	rrca                                             ; $681a: $0f
	ei                                               ; $681b: $fb
	sbc d                                            ; $681c: $9a
	inc bc                                           ; $681d: $03
	inc c                                            ; $681e: $0c
	nop                                              ; $681f: $00
	ld e, e                                          ; $6820: $5b
	and b                                            ; $6821: $a0
	ld [hl], a                                       ; $6822: $77
	push de                                          ; $6823: $d5
	ld a, a                                          ; $6824: $7f
	ret z                                            ; $6825: $c8

	db $fc                                           ; $6826: $fc
	sbc e                                            ; $6827: $9b
	add b                                            ; $6828: $80

jr_059_6829:
	ld [hl], b                                       ; $6829: $70
	nop                                              ; $682a: $00
	cp c                                             ; $682b: $b9
	ldh a, [c]                                       ; $682c: $f2
	ld [hl], a                                       ; $682d: $77
	or [hl]                                          ; $682e: $b6
	rst AddAOntoHL                                          ; $682f: $ef
	sbc [hl]                                         ; $6830: $9e
	inc b                                            ; $6831: $04
	ld a, [$039e]                                    ; $6832: $fa $9e $03
	ld a, [$809e]                                    ; $6835: $fa $9e $80
	ldh [$d9], a                                     ; $6838: $e0 $d9
	add b                                            ; $683a: $80
	ld a, h                                          ; $683b: $7c
	ld e, c                                          ; $683c: $59
	reti                                             ; $683d: $d9


	or d                                             ; $683e: $b2
	or e                                             ; $683f: $b3
	and h                                            ; $6840: $a4
	push hl                                          ; $6841: $e5
	and $e3                                          ; $6842: $e6 $e3
	rst SubAFromBC                                          ; $6844: $e7
	rst SubAFromBC                                          ; $6845: $e7
	rst GetHLinHL                                          ; $6846: $cf
	adc $de                                          ; $6847: $ce $de
	sbc a                                            ; $6849: $9f
	sbc a                                            ; $684a: $9f
	ret nc                                           ; $684b: $d0

	sub h                                            ; $684c: $94
	ret z                                            ; $684d: $c8

	and $3f                                          ; $684e: $e6 $3f
	ld l, e                                          ; $6850: $6b
	or b                                             ; $6851: $b0
	inc bc                                           ; $6852: $03
	and $e2                                          ; $6853: $e6 $e2
	or e                                             ; $6855: $b3
	sbc c                                            ; $6856: $99
	rst SubAFromDE                                          ; $6857: $df
	pop af                                           ; $6858: $f1
	ret nz                                           ; $6859: $c0

	add l                                            ; $685a: $85
	db $fc                                           ; $685b: $fc
	inc l                                            ; $685c: $2c
	and h                                            ; $685d: $a4
	inc [hl]                                         ; $685e: $34
	ld e, c                                          ; $685f: $59
	ld e, c                                          ; $6860: $59
	xor e                                            ; $6861: $ab
	or $dd                                           ; $6862: $f6 $dd
	rst SubAFromHL                                          ; $6864: $d7
	ld e, a                                          ; $6865: $5f
	ld c, a                                          ; $6866: $4f
	cpl                                              ; $6867: $2f
	xor a                                            ; $6868: $af
	rst SubAFromDE                                          ; $6869: $df
	ld a, a                                          ; $686a: $7f
	ccf                                              ; $686b: $3f
	inc l                                            ; $686c: $2c
	ld e, a                                          ; $686d: $5f
	ldh [$3c], a                                     ; $686e: $e0 $3c
	jp Jump_059_7f0e                                 ; $6870: $c3 $0e $7f


	ret nz                                           ; $6873: $c0

	di                                               ; $6874: $f3
	db $dd                                           ; $6875: $dd
	rst $38                                          ; $6876: $ff
	add b                                            ; $6877: $80
	pop af                                           ; $6878: $f1
	rst $38                                          ; $6879: $ff
	add b                                            ; $687a: $80
	ei                                               ; $687b: $fb

jr_059_687c:
	rst SubAFromBC                                          ; $687c: $e7
	rra                                              ; $687d: $1f
	ld sp, $fbff                                     ; $687e: $31 $ff $fb
	inc e                                            ; $6881: $1c
	xor $7c                                          ; $6882: $ee $7c
	ld hl, sp-$01                                    ; $6884: $f8 $ff
	pop bc                                           ; $6886: $c1
	db $fc                                           ; $6887: $fc
	db $e3                                           ; $6888: $e3
	ldh a, [$f8]                                     ; $6889: $f0 $f8
	rst $38                                          ; $688b: $ff
	rst $38                                          ; $688c: $ff
	db $dd                                           ; $688d: $dd
	rst $38                                          ; $688e: $ff
	and c                                            ; $688f: $a1
	ld hl, sp+$00                                    ; $6890: $f8 $00
	nop                                              ; $6892: $00
	ld a, a                                          ; $6893: $7f
	jr jr_059_687c                                   ; $6894: $18 $e6

	rst $38                                          ; $6896: $ff
	sbc [hl]                                         ; $6897: $9e
	ld h, b                                          ; $6898: $60
	ld a, e                                          ; $6899: $7b
	ld hl, sp-$21                                    ; $689a: $f8 $df
	xor b                                            ; $689c: $a8
	sub c                                            ; $689d: $91
	call z, $ecd4                                    ; $689e: $cc $d4 $ec
	ld l, [hl]                                       ; $68a1: $6e
	daa                                              ; $68a2: $27
	ld b, $40                                        ; $68a3: $06 $40
	ret nz                                           ; $68a5: $c0

	ld h, b                                          ; $68a6: $60
	ld h, b                                          ; $68a7: $60
	or b                                             ; $68a8: $b0
	ld [hl], b                                       ; $68a9: $70
	jr c, jr_059_68b4                                ; $68aa: $38 $08

	pop af                                           ; $68ac: $f1
	sub d                                            ; $68ad: $92
	scf                                              ; $68ae: $37
	dec de                                           ; $68af: $1b
	dec c                                            ; $68b0: $0d
	ld b, $07                                        ; $68b1: $06 $07
	dec b                                            ; $68b3: $05

jr_059_68b4:
	nop                                              ; $68b4: $00
	ld [bc], a                                       ; $68b5: $02
	rla                                              ; $68b6: $17
	dec bc                                           ; $68b7: $0b
	dec b                                            ; $68b8: $05
	ld [bc], a                                       ; $68b9: $02
	ld bc, $af7a                                     ; $68ba: $01 $7a $af
	sbc [hl]                                         ; $68bd: $9e
	db $f4                                           ; $68be: $f4
	ld a, d                                          ; $68bf: $7a
	xor a                                            ; $68c0: $af
	rst SubAFromDE                                          ; $68c1: $df
	ld a, a                                          ; $68c2: $7f
	ld a, [hl]                                       ; $68c3: $7e
	or a                                             ; $68c4: $b7
	sbc [hl]                                         ; $68c5: $9e
	ld hl, sp+$7a                                    ; $68c6: $f8 $7a
	xor a                                            ; $68c8: $af
	ld [hl], a                                       ; $68c9: $77
	ld hl, sp-$6c                                    ; $68ca: $f8 $94
	jr jr_059_68da                                   ; $68cc: $18 $0c

	ld b, $81                                        ; $68ce: $06 $81
	ld b, d                                          ; $68d0: $42
	and c                                            ; $68d1: $a1
	ret nc                                           ; $68d2: $d0

	ldh [$08], a                                     ; $68d3: $e0 $08
	inc b                                            ; $68d5: $04
	ld [bc], a                                       ; $68d6: $02
	ld a, d                                          ; $68d7: $7a
	xor a                                            ; $68d8: $af
	ld a, d                                          ; $68d9: $7a

jr_059_68da:
	or b                                             ; $68da: $b0
	rst $38                                          ; $68db: $ff
	sbc d                                            ; $68dc: $9a
	rrca                                             ; $68dd: $0f
	sbc a                                            ; $68de: $9f
	ld e, e                                          ; $68df: $5b
	cp b                                             ; $68e0: $b8
	ld e, l                                          ; $68e1: $5d
	ld [hl], a                                       ; $68e2: $77
	ld hl, sp-$77                                    ; $68e3: $f8 $89
	sub b                                            ; $68e5: $90
	ret nc                                           ; $68e6: $d0

	ld [hl], b                                       ; $68e7: $70
	jr c, jr_059_6902                                ; $68e8: $38 $18

	ld sp, $6d26                                     ; $68ea: $31 $26 $6d
	db $f4                                           ; $68ed: $f4
	db $fd                                           ; $68ee: $fd
	ld h, h                                          ; $68ef: $64
	add hl, de                                       ; $68f0: $19
	db $10                                           ; $68f1: $10
	jr nz, @+$23                                     ; $68f2: $20 $21

	ld b, h                                          ; $68f4: $44
	call z, $003c                                    ; $68f5: $cc $3c $00
	nop                                              ; $68f8: $00
	sbc $01                                          ; $68f9: $de $01
	ld a, d                                          ; $68fb: $7a
	sub c                                            ; $68fc: $91
	sbc d                                            ; $68fd: $9a

Jump_059_68fe:
	ld d, e                                          ; $68fe: $53
	cp l                                             ; $68ff: $bd
	ldh [$0e], a                                     ; $6900: $e0 $0e

jr_059_6902:
	add c                                            ; $6902: $81
	ld h, [hl]                                       ; $6903: $66
	or $99                                           ; $6904: $f6 $99
	ld h, b                                          ; $6906: $60
	db $10                                           ; $6907: $10
	inc c                                            ; $6908: $0c
	or $2b                                           ; $6909: $f6 $2b
	ld [bc], a                                       ; $690b: $02
	ld [hl], e                                       ; $690c: $73
	ld hl, sp-$05                                    ; $690d: $f8 $fb
	adc l                                            ; $690f: $8d
	add hl, bc                                       ; $6910: $09
	db $10                                           ; $6911: $10
	db $10                                           ; $6912: $10
	ld [$00c2], sp                                   ; $6913: $08 $c2 $00
	nop                                              ; $6916: $00
	ld bc, $0f06                                     ; $6917: $01 $06 $0f
	rrca                                             ; $691a: $0f
	rlca                                             ; $691b: $07
	ld bc, $0812                                     ; $691c: $01 $12 $08
	jr nz, jr_059_6921                               ; $691f: $20 $00

jr_059_6921:
	ld b, b                                          ; $6921: $40
	cp $9a                                           ; $6922: $fe $9a
	inc c                                            ; $6924: $0c
	ldh a, [$c0]                                     ; $6925: $f0 $c0
	ret nz                                           ; $6927: $c0

	add b                                            ; $6928: $80
	ld l, a                                          ; $6929: $6f
	and b                                            ; $692a: $a0
	ld [hl], e                                       ; $692b: $73
	ld l, c                                          ; $692c: $69
	db $f4                                           ; $692d: $f4
	sbc [hl]                                         ; $692e: $9e
	rlca                                             ; $692f: $07
	ld h, a                                          ; $6930: $67
	jp hl                                            ; $6931: $e9


	ld h, d                                          ; $6932: $62
	and d                                            ; $6933: $a2
	halt                                             ; $6934: $76
	dec b                                            ; $6935: $05
	db $fc                                           ; $6936: $fc
	add b                                            ; $6937: $80
	ld l, a                                          ; $6938: $6f
	ld l, e                                          ; $6939: $6b
	dec hl                                           ; $693a: $2b
	xor b                                            ; $693b: $a8
	xor e                                            ; $693c: $ab
	xor [hl]                                         ; $693d: $ae
	xor d                                            ; $693e: $aa
	xor h                                            ; $693f: $ac
	sbc a                                            ; $6940: $9f
	sbc l                                            ; $6941: $9d
	db $dd                                           ; $6942: $dd
	ld e, a                                          ; $6943: $5f
	ld e, a                                          ; $6944: $5f

Jump_059_6945:
	ld e, h                                          ; $6945: $5c
	ld e, h                                          ; $6946: $5c
	ld e, b                                          ; $6947: $58
	db $fc                                           ; $6948: $fc
	ld h, a                                          ; $6949: $67
	inc e                                            ; $694a: $1c
	db $ed                                           ; $694b: $ed
	sub a                                            ; $694c: $97
	ld a, [hl+]                                      ; $694d: $2a
	ld d, d                                          ; $694e: $52
	and l                                            ; $694f: $a5
	rst $38                                          ; $6950: $ff
	sbc a                                            ; $6951: $9f
	rst $38                                          ; $6952: $ff
	di                                               ; $6953: $f3
	rrca                                             ; $6954: $0f
	rra                                              ; $6955: $1f
	ccf                                              ; $6956: $3f
	adc d                                            ; $6957: $8a
	ld a, a                                          ; $6958: $7f
	ld b, $f5                                        ; $6959: $06 $f5
	ld a, [hl]                                       ; $695b: $7e
	and h                                            ; $695c: $a4
	ld c, b                                          ; $695d: $48
	sbc b                                            ; $695e: $98
	ret nc                                           ; $695f: $d0

	ret nc                                           ; $6960: $d0

	rst $38                                          ; $6961: $ff
	cp $fc                                           ; $6962: $fe $fc
	db $fc                                           ; $6964: $fc
	ld hl, sp-$30                                    ; $6965: $f8 $d0
	sub b                                            ; $6967: $90
	sub b                                            ; $6968: $90
	ld hl, sp-$04                                    ; $6969: $f8 $fc
	ld b, $03                                        ; $696b: $06 $03
	ld h, e                                          ; $696d: $63
	jp $9dfe                                         ; $696e: $c3 $fe $9d


	rra                                              ; $6971: $1f
	ld b, $7b                                        ; $6972: $06 $7b
	halt                                             ; $6974: $76
	sbc e                                            ; $6975: $9b
	inc bc                                           ; $6976: $03
	ld [bc], a                                       ; $6977: $02
	dec b                                            ; $6978: $05
	inc a                                            ; $6979: $3c
	ld a, e                                          ; $697a: $7b
	ld hl, sp+$77                                    ; $697b: $f8 $77
	or $75                                           ; $697d: $f6 $75
	rst AddAOntoHL                                          ; $697f: $ef
	sbc h                                            ; $6980: $9c
	sbc [hl]                                         ; $6981: $9e
	ld l, h                                          ; $6982: $6c
	cp e                                             ; $6983: $bb
	ld [hl], a                                       ; $6984: $77
	add b                                            ; $6985: $80
	add d                                            ; $6986: $82
	rlca                                             ; $6987: $07
	ld a, b                                          ; $6988: $78
	di                                               ; $6989: $f3
	push bc                                          ; $698a: $c5
	rlc d                                            ; $698b: $cb $02
	nop                                              ; $698d: $00
	ld de, $3088                                     ; $698e: $11 $88 $30
	ld [hl], b                                       ; $6991: $70
	ldh a, [$d8]                                     ; $6992: $f0 $d8
	inc b                                            ; $6994: $04
	ld [bc], a                                       ; $6995: $02
	ld [bc], a                                       ; $6996: $02
	ld de, $f058                                     ; $6997: $11 $58 $f0
	ldh [$c0], a                                     ; $699a: $e0 $c0
	add b                                            ; $699c: $80
	add b                                            ; $699d: $80
	ret nz                                           ; $699e: $c0

	inc hl                                           ; $699f: $23
	ld [hl], c                                       ; $69a0: $71
	or b                                             ; $69a1: $b0
	ld e, h                                          ; $69a2: $5c
	inc h                                            ; $69a3: $24
	ld [hl], a                                       ; $69a4: $77
	ld a, d                                          ; $69a5: $7a
	ld a, a                                          ; $69a6: $7f
	ld d, $9d                                        ; $69a7: $16 $9d
	jr nz, jr_059_69bb                               ; $69a9: $20 $10

	ld a, e                                          ; $69ab: $7b
	call z, $829b                                    ; $69ac: $cc $9b $82
	nop                                              ; $69af: $00
	pop bc                                           ; $69b0: $c1
	inc h                                            ; $69b1: $24
	ld [hl], l                                       ; $69b2: $75
	ld [hl], h                                       ; $69b3: $74
	ld a, e                                          ; $69b4: $7b
	db $fd                                           ; $69b5: $fd
	adc h                                            ; $69b6: $8c
	inc bc                                           ; $69b7: $03
	ld de, $d7ef                                     ; $69b8: $11 $ef $d7

jr_059_69bb:
	dec hl                                           ; $69bb: $2b
	push de                                          ; $69bc: $d5
	ld l, d                                          ; $69bd: $6a
	ld a, l                                          ; $69be: $7d
	db $fc                                           ; $69bf: $fc
	ld a, d                                          ; $69c0: $7a
	cpl                                              ; $69c1: $2f
	rla                                              ; $69c2: $17
	adc e                                            ; $69c3: $8b
	dec b                                            ; $69c4: $05
	add d                                            ; $69c5: $82
	add e                                            ; $69c6: $83
	ld bc, $f881                                     ; $69c7: $01 $81 $f8
	ld [hl], d                                       ; $69ca: $72
	xor a                                            ; $69cb: $af
	rst SubAFromDE                                          ; $69cc: $df
	cp a                                             ; $69cd: $bf
	ld a, [hl]                                       ; $69ce: $7e
	ld h, [hl]                                       ; $69cf: $66
	halt                                             ; $69d0: $76
	xor a                                            ; $69d1: $af
	rst SubAFromDE                                          ; $69d2: $df
	cp a                                             ; $69d3: $bf
	sub l                                            ; $69d4: $95
	dec hl                                           ; $69d5: $2b
	inc d                                            ; $69d6: $14
	dec bc                                           ; $69d7: $0b
	dec b                                            ; $69d8: $05
	add d                                            ; $69d9: $82
	ld b, c                                          ; $69da: $41
	and b                                            ; $69db: $a0
	ret nc                                           ; $69dc: $d0

	inc e                                            ; $69dd: $1c
	ld c, $7b                                        ; $69de: $0e $7b
	ld a, b                                          ; $69e0: $78
	ld a, e                                          ; $69e1: $7b
	rrca                                             ; $69e2: $0f
	sub a                                            ; $69e3: $97
	rlca                                             ; $69e4: $07
	ld b, $88                                        ; $69e5: $06 $88
	ld a, [de]                                       ; $69e7: $1a
	ret nc                                           ; $69e8: $d0

	ld d, b                                          ; $69e9: $50
	or h                                             ; $69ea: $b4
	call c, $b073                                    ; $69eb: $dc $73 $b0
	ld a, c                                          ; $69ee: $79

Call_059_69ef:
	ld e, a                                          ; $69ef: $5f

jr_059_69f0:
	ld l, l                                          ; $69f0: $6d
	or d                                             ; $69f1: $b2
	sbc [hl]                                         ; $69f2: $9e
	dec bc                                           ; $69f3: $0b
	ld l, a                                          ; $69f4: $6f
	nop                                              ; $69f5: $00
	sbc l                                            ; $69f6: $9d
	inc bc                                           ; $69f7: $03
	inc b                                            ; $69f8: $04
	ld l, [hl]                                       ; $69f9: $6e
	ld d, b                                          ; $69fa: $50
	sbc l                                            ; $69fb: $9d
	ld c, h                                          ; $69fc: $4c
	and e                                            ; $69fd: $a3
	ld [hl], a                                       ; $69fe: $77
	ldh [$7b], a                                     ; $69ff: $e0 $7b
	sbc $99                                          ; $6a01: $de $99
	ld e, h                                          ; $6a03: $5c
	inc hl                                           ; $6a04: $23
	jr nz, @+$1c                                     ; $6a05: $20 $1a

	ld b, $02                                        ; $6a07: $06 $02
	ld [hl], e                                       ; $6a09: $73
	push hl                                          ; $6a0a: $e5
	sbc $01                                          ; $6a0b: $de $01
	db $fd                                           ; $6a0d: $fd
	sub c                                            ; $6a0e: $91
	ld b, $01                                        ; $6a0f: $06 $01
	rrca                                             ; $6a11: $0f
	nop                                              ; $6a12: $00
	jr jr_059_6a45                                   ; $6a13: $18 $30

	jr z, @+$1a                                      ; $6a15: $28 $18

	ld sp, hl                                        ; $6a17: $f9
	cp $f0                                           ; $6a18: $fe $f0
	rst $38                                          ; $6a1a: $ff
	ldh [rP1], a                                     ; $6a1b: $e0 $00
	ld a, e                                          ; $6a1d: $7b
	ld [hl], c                                       ; $6a1e: $71
	sbc h                                            ; $6a1f: $9c
	ldh [hDisp1_LCDC], a                                     ; $6a20: $e0 $8f
	ldh [$fd], a                                     ; $6a22: $e0 $fd
	ld a, [hl]                                       ; $6a24: $7e
	adc $9e                                          ; $6a25: $ce $9e
	ld h, b                                          ; $6a27: $60
	ld a, [$ff9e]                                    ; $6a28: $fa $9e $ff
	ld a, c                                          ; $6a2b: $79
	ld a, [hl+]                                      ; $6a2c: $2a
	sbc l                                            ; $6a2d: $9d
	jr nc, jr_059_69f0                               ; $6a2e: $30 $c0

	ld sp, hl                                        ; $6a30: $f9
	sub a                                            ; $6a31: $97
	rrca                                             ; $6a32: $0f
	ccf                                              ; $6a33: $3f
	ldh a, [$c1]                                     ; $6a34: $f0 $c1
	nop                                              ; $6a36: $00
	dec b                                            ; $6a37: $05
	nop                                              ; $6a38: $00
	dec d                                            ; $6a39: $15
	ld sp, hl                                        ; $6a3a: $f9
	add h                                            ; $6a3b: $84
	adc h                                            ; $6a3c: $8c
	sub h                                            ; $6a3d: $94
	rst FarCall                                          ; $6a3e: $f7
	db $eb                                           ; $6a3f: $eb
	cp $d6                                           ; $6a40: $fe $d6
	call Call_059_7894                               ; $6a42: $cd $94 $78

jr_059_6a45:
	ld a, c                                          ; $6a45: $79
	add hl, de                                       ; $6a46: $19
	scf                                              ; $6a47: $37
	daa                                              ; $6a48: $27
	ld l, a                                          ; $6a49: $6f
	ld a, [hl]                                       ; $6a4a: $7e
	cp $7b                                           ; $6a4b: $fe $7b
	swap e                                           ; $6a4d: $cb $33
	sub e                                            ; $6a4f: $93
	ld [hl], e                                       ; $6a50: $73
	ld a, c                                          ; $6a51: $79
	add hl, sp                                       ; $6a52: $39
	ld [hl], c                                       ; $6a53: $71
	call $9999                                       ; $6a54: $cd $99 $99
	sbc $31                                          ; $6a57: $de $31
	sub d                                            ; $6a59: $92
	ld [hl], c                                       ; $6a5a: $71
	ld a, c                                          ; $6a5b: $79
	or b                                             ; $6a5c: $b0
	or b                                             ; $6a5d: $b0
	ld e, b                                          ; $6a5e: $58
	ret z                                            ; $6a5f: $c8

	ld l, b                                          ; $6a60: $68
	call c, $6e7e                                    ; $6a61: $dc $7e $6e
	ret nc                                           ; $6a64: $d0

	ret nc                                           ; $6a65: $d0

	ldh a, [$de]                                     ; $6a66: $f0 $de
	ld a, b                                          ; $6a68: $78
	sbc l                                            ; $6a69: $9d
	call z, $f1c6                                    ; $6a6a: $cc $c6 $f1
	ld a, [hl]                                       ; $6a6d: $7e
	ret                                              ; $6a6e: $c9


	sbc [hl]                                         ; $6a6f: $9e
	inc b                                            ; $6a70: $04
	ld [hl], d                                       ; $6a71: $72
	or b                                             ; $6a72: $b0
	rst SubAFromDE                                          ; $6a73: $df
	rlca                                             ; $6a74: $07
	ld l, l                                          ; $6a75: $6d
	dec b                                            ; $6a76: $05
	sub d                                            ; $6a77: $92
	ld l, $75                                        ; $6a78: $2e $75
	cp $ea                                           ; $6a7a: $fe $ea
	db $fc                                           ; $6a7c: $fc
	ld a, h                                          ; $6a7d: $7c
	dec bc                                           ; $6a7e: $0b
	ld b, $d6                                        ; $6a7f: $06 $d6
	adc l                                            ; $6a81: $8d
	ld c, $1a                                        ; $6a82: $0e $1a
	inc e                                            ; $6a84: $1c
	ld a, e                                          ; $6a85: $7b
	ld b, d                                          ; $6a86: $42
	sbc l                                            ; $6a87: $9d
	adc b                                            ; $6a88: $88
	db $10                                           ; $6a89: $10
	ld [hl], d                                       ; $6a8a: $72
	ld hl, $ef60                                     ; $6a8b: $21 $60 $ef
	sbc l                                            ; $6a8e: $9d
	ld [bc], a                                       ; $6a8f: $02
	add hl, bc                                       ; $6a90: $09
	ld a, c                                          ; $6a91: $79
	sbc b                                            ; $6a92: $98
	cp $9d                                           ; $6a93: $fe $9d
	jr jr_059_6a9b                                   ; $6a95: $18 $04

	ld [hl], e                                       ; $6a97: $73
	ld sp, hl                                        ; $6a98: $f9
	rst $38                                          ; $6a99: $ff
	sbc b                                            ; $6a9a: $98

jr_059_6a9b:
	add e                                            ; $6a9b: $83
	db $e4                                           ; $6a9c: $e4
	db $fd                                           ; $6a9d: $fd
	ccf                                              ; $6a9e: $3f
	ld c, c                                          ; $6a9f: $49
	ld [hl-], a                                      ; $6aa0: $32
	ld [hl-], a                                      ; $6aa1: $32
	ld [hl], h                                       ; $6aa2: $74
	inc l                                            ; $6aa3: $2c
	add b                                            ; $6aa4: $80
	ret nz                                           ; $6aa5: $c0

	jr nc, jr_059_6ad4                               ; $6aa6: $30 $2c

	daa                                              ; $6aa8: $27
	sbc $00                                          ; $6aa9: $de $00
	ld c, b                                          ; $6aab: $48
	rst SubAFromHL                                          ; $6aac: $d7
	xor a                                            ; $6aad: $af
	rla                                              ; $6aae: $17
	ld b, $13                                        ; $6aaf: $06 $13
	ld bc, $0703                                     ; $6ab1: $01 $03 $07
	rrca                                             ; $6ab4: $0f
	db $10                                           ; $6ab5: $10
	jr nz, jr_059_6b19                               ; $6ab6: $20 $61

	ldh [$5f], a                                     ; $6ab8: $e0 $5f
	cpl                                              ; $6aba: $2f
	rla                                              ; $6abb: $17
	dec bc                                           ; $6abc: $0b
	push bc                                          ; $6abd: $c5
	ldh a, [c]                                       ; $6abe: $f2
	ld sp, hl                                        ; $6abf: $f9
	ld a, a                                          ; $6ac0: $7f
	rst SubAFromDE                                          ; $6ac1: $df
	rst AddAOntoHL                                          ; $6ac2: $ef
	rst FarCall                                          ; $6ac3: $f7
	sub [hl]                                         ; $6ac4: $96
	ei                                               ; $6ac5: $fb
	db $fd                                           ; $6ac6: $fd
	ld a, $0f                                        ; $6ac7: $3e $0f
	add a                                            ; $6ac9: $87
	add sp, -$0c                                     ; $6aca: $e8 $f4
	ld hl, sp-$02                                    ; $6acc: $f8 $fe
	halt                                             ; $6ace: $76
	xor a                                            ; $6acf: $af
	ld a, d                                          ; $6ad0: $7a
	or b                                             ; $6ad1: $b0
	ld [hl], d                                       ; $6ad2: $72
	xor a                                            ; $6ad3: $af

jr_059_6ad4:
	sbc [hl]                                         ; $6ad4: $9e
	ld l, [hl]                                       ; $6ad5: $6e
	ld a, c                                          ; $6ad6: $79
	ccf                                              ; $6ad7: $3f
	sbc e                                            ; $6ad8: $9b
	dec b                                            ; $6ad9: $05
	add c                                            ; $6ada: $81
	ld b, c                                          ; $6adb: $41
	and e                                            ; $6adc: $a3
	ld a, c                                          ; $6add: $79
	ld e, b                                          ; $6ade: $58
	sbc $03                                          ; $6adf: $de $03
	sub l                                            ; $6ae1: $95
	add e                                            ; $6ae2: $83
	jp $c060                                         ; $6ae3: $c3 $60 $c0


	add b                                            ; $6ae6: $80
	db $10                                           ; $6ae7: $10
	inc l                                            ; $6ae8: $2c
	ld e, a                                          ; $6ae9: $5f
	cp a                                             ; $6aea: $bf
	ccf                                              ; $6aeb: $3f
	ld a, d                                          ; $6aec: $7a
	dec b                                            ; $6aed: $05
	ld a, l                                          ; $6aee: $7d
	rst $38                                          ; $6aef: $ff
	ld a, [hl]                                       ; $6af0: $7e
	ld d, c                                          ; $6af1: $51
	add b                                            ; $6af2: $80
	ret nz                                           ; $6af3: $c0

	dec a                                            ; $6af4: $3d
	ccf                                              ; $6af5: $3f
	rra                                              ; $6af6: $1f
	rra                                              ; $6af7: $1f
	rrca                                             ; $6af8: $0f
	ei                                               ; $6af9: $fb
	ld sp, hl                                        ; $6afa: $f9
	db $f4                                           ; $6afb: $f4
	jp nz, $e0c0                                     ; $6afc: $c2 $c0 $e0

	ldh [$f0], a                                     ; $6aff: $e0 $f0
	inc b                                            ; $6b01: $04
	ld b, $03                                        ; $6b02: $06 $03
	jr nz, @-$6e                                     ; $6b04: $20 $90

	call nz, $f9e2                                   ; $6b06: $c4 $e2 $f9
	ld hl, sp-$02                                    ; $6b09: $f8 $fe
	ld a, [$60c0]                                    ; $6b0b: $fa $c0 $60
	jr c, jr_059_6b2c                                ; $6b0e: $38 $1c

	ld b, $07                                        ; $6b10: $06 $07
	sub [hl]                                         ; $6b12: $96
	ld bc, $1005                                     ; $6b13: $01 $05 $10
	db $10                                           ; $6b16: $10
	jr @+$0a                                         ; $6b17: $18 $08

jr_059_6b19:
	dec bc                                           ; $6b19: $0b
	ld [$6018], sp                                   ; $6b1a: $08 $18 $60
	add sp, $72                                      ; $6b1d: $e8 $72
	call nc, Call_059_667f                           ; $6b1f: $d4 $7f $66
	ld a, [hl]                                       ; $6b22: $7e
	sbc $f9                                          ; $6b23: $de $f9
	sbc b                                            ; $6b25: $98
	ld bc, $550a                                     ; $6b26: $01 $0a $55
	ld [bc], a                                       ; $6b29: $02
	ld d, l                                          ; $6b2a: $55
	ld a, [hl+]                                      ; $6b2b: $2a

jr_059_6b2c:
	ld d, c                                          ; $6b2c: $51
	ld sp, hl                                        ; $6b2d: $f9
	ld a, a                                          ; $6b2e: $7f
	db $f4                                           ; $6b2f: $f4
	sbc [hl]                                         ; $6b30: $9e
	xor d                                            ; $6b31: $aa
	ld [hl], e                                       ; $6b32: $73
	cp $f9                                           ; $6b33: $fe $f9
	sub a                                            ; $6b35: $97
	or h                                             ; $6b36: $b4
	xor d                                            ; $6b37: $aa
	ld [$a8ea], a                                    ; $6b38: $ea $ea $a8
	sbc c                                            ; $6b3b: $99
	sbc l                                            ; $6b3c: $9d
	ld b, l                                          ; $6b3d: $45
	ld a, c                                          ; $6b3e: $79
	and c                                            ; $6b3f: $a1
	ld a, a                                          ; $6b40: $7f
	ld [hl], b                                       ; $6b41: $70
	rst SubAFromDE                                          ; $6b42: $df
	cp $8a                                           ; $6b43: $fe $8a
	ld a, [hl]                                       ; $6b45: $7e
	push af                                          ; $6b46: $f5
	ld d, l                                          ; $6b47: $55
	sbc a                                            ; $6b48: $9f
	sbc d                                            ; $6b49: $9a
	jp c, $d5b5                                      ; $6b4a: $da $b5 $d5

	or [hl]                                          ; $6b4d: $b6

jr_059_6b4e:
	ld a, c                                          ; $6b4e: $79
	ld sp, hl                                        ; $6b4f: $f9
	ld sp, hl                                        ; $6b50: $f9
	db $fd                                           ; $6b51: $fd
	db $fd                                           ; $6b52: $fd
	cp $fe                                           ; $6b53: $fe $fe
	ei                                               ; $6b55: $fb
	or a                                             ; $6b56: $b7
	cp h                                             ; $6b57: $bc
	ld e, e                                          ; $6b58: $5b
	cp h                                             ; $6b59: $bc
	ld a, e                                          ; $6b5a: $7b
	ld e, b                                          ; $6b5b: $58
	add [hl]                                         ; $6b5c: $86
	rst $38                                          ; $6b5d: $ff
	db $e3                                           ; $6b5e: $e3
	ldh [$f0], a                                     ; $6b5f: $e0 $f0
	ldh a, [$98]                                     ; $6b61: $f0 $98
	adc h                                            ; $6b63: $8c
	ret nz                                           ; $6b64: $c0

	ld b, b                                          ; $6b65: $40
	ret nz                                           ; $6b66: $c0

	nop                                              ; $6b67: $00
	ld b, $33                                        ; $6b68: $06 $33
	inc de                                           ; $6b6a: $13
	ld d, e                                          ; $6b6b: $53
	rst SubAFromHL                                          ; $6b6c: $d7
	xor [hl]                                         ; $6b6d: $ae
	add b                                            ; $6b6e: $80
	nop                                              ; $6b6f: $00
	jr jr_059_6b8e                                   ; $6b70: $18 $1c

	inc a                                            ; $6b72: $3c
	inc a                                            ; $6b73: $3c
	jr c, jr_059_6be7                                ; $6b74: $38 $71

	ld a, e                                          ; $6b76: $7b
	sbc a                                            ; $6b77: $9f
	ld a, a                                          ; $6b78: $7f
	ld c, e                                          ; $6b79: $4b
	sbc h                                            ; $6b7a: $9c
	rst SubAFromBC                                          ; $6b7b: $e7
	and $e6                                          ; $6b7c: $e6 $e6
	ld l, e                                          ; $6b7e: $6b
	sub e                                            ; $6b7f: $93
	sbc e                                            ; $6b80: $9b
	ld bc, $781c                                     ; $6b81: $01 $1c $78
	ldh a, [$7b]                                     ; $6b84: $f0 $7b
	add b                                            ; $6b86: $80
	sbc l                                            ; $6b87: $9d
	add e                                            ; $6b88: $83
	jp nc, $f06b                                     ; $6b89: $d2 $6b $f0

	sbc [hl]                                         ; $6b8c: $9e
	and d                                            ; $6b8d: $a2

jr_059_6b8e:
	db $fd                                           ; $6b8e: $fd
	sbc h                                            ; $6b8f: $9c
	ld a, h                                          ; $6b90: $7c
	and $c1                                          ; $6b91: $e6 $c1
	ld [hl], d                                       ; $6b93: $72
	pop bc                                           ; $6b94: $c1
	sbc [hl]                                         ; $6b95: $9e
	jr c, jr_059_6c13                                ; $6b96: $38 $7b

	cp b                                             ; $6b98: $b8
	ld l, b                                          ; $6b99: $68
	rst $38                                          ; $6b9a: $ff
	ld [hl], d                                       ; $6b9b: $72
	xor h                                            ; $6b9c: $ac
	ld a, e                                          ; $6b9d: $7b
	ld hl, sp-$6e                                    ; $6b9e: $f8 $92
	ret nz                                           ; $6ba0: $c0

	dec [hl]                                         ; $6ba1: $35
	ld a, [hl-]                                      ; $6ba2: $3a
	ld sp, $3135                                     ; $6ba3: $31 $35 $31
	dec sp                                           ; $6ba6: $3b
	dec a                                            ; $6ba7: $3d
	dec sp                                           ; $6ba8: $3b
	inc de                                           ; $6ba9: $13

jr_059_6baa:
	ld de, $1a18                                     ; $6baa: $11 $18 $1a
	sbc $1e                                          ; $6bad: $de $1e
	sub l                                            ; $6baf: $95
	inc e                                            ; $6bb0: $1c
	add e                                            ; $6bb1: $83
	sbc e                                            ; $6bb2: $9b
	ld d, c                                          ; $6bb3: $51
	ld d, c                                          ; $6bb4: $51
	ld sp, $1030                                     ; $6bb5: $31 $30 $10
	jr jr_059_6baa                                   ; $6bb8: $18 $f0

	halt                                             ; $6bba: $76
	rst SubAFromDE                                          ; $6bbb: $df
	rst SubAFromDE                                          ; $6bbc: $df
	db $fc                                           ; $6bbd: $fc
	add [hl]                                         ; $6bbe: $86
	db $f4                                           ; $6bbf: $f4
	jr c, jr_059_6b4e                                ; $6bc0: $38 $8c

	call nz, $e0e0                                   ; $6bc2: $c4 $e0 $e0
	or b                                             ; $6bc5: $b0
	sbc b                                            ; $6bc6: $98
	ret z                                            ; $6bc7: $c8

	rst JumpTable                                          ; $6bc8: $c7
	ld [hl], e                                       ; $6bc9: $73
	dec sp                                           ; $6bca: $3b
	rra                                              ; $6bcb: $1f
	rra                                              ; $6bcc: $1f
	ld c, a                                          ; $6bcd: $4f
	ld h, a                                          ; $6bce: $67
	scf                                              ; $6bcf: $37
	rst $38                                          ; $6bd0: $ff
	ld a, a                                          ; $6bd1: $7f
	ccf                                              ; $6bd2: $3f
	rra                                              ; $6bd3: $1f
	rrca                                             ; $6bd4: $0f
	rlca                                             ; $6bd5: $07
	inc bc                                           ; $6bd6: $03
	ld [bc], a                                       ; $6bd7: $02
	ld [hl], d                                       ; $6bd8: $72
	or b                                             ; $6bd9: $b0
	ld a, a                                          ; $6bda: $7f
	ld h, a                                          ; $6bdb: $67
	ld a, b                                          ; $6bdc: $78
	jp hl                                            ; $6bdd: $e9


	ld a, [hl]                                       ; $6bde: $7e
	or c                                             ; $6bdf: $b1
	ld a, [hl]                                       ; $6be0: $7e
	reti                                             ; $6be1: $d9


	sbc d                                            ; $6be2: $9a
	ld b, d                                          ; $6be3: $42
	inc e                                            ; $6be4: $1c
	rst SubAFromBC                                          ; $6be5: $e7
	rst FarCall                                          ; $6be6: $f7

jr_059_6be7:
	rst $38                                          ; $6be7: $ff
	ld a, e                                          ; $6be8: $7b
	ldh a, [c]                                       ; $6be9: $f2
	sub h                                            ; $6bea: $94
	cp a                                             ; $6beb: $bf
	rst $38                                          ; $6bec: $ff
	ld [hl], a                                       ; $6bed: $77
	ld h, a                                          ; $6bee: $67
	jp $0cf1                                         ; $6bef: $c3 $f1 $0c


	ld bc, $7f00                                     ; $6bf2: $01 $00 $7f
	add b                                            ; $6bf5: $80
	ld a, e                                          ; $6bf6: $7b
	adc [hl]                                         ; $6bf7: $8e
	sub e                                            ; $6bf8: $93
	ldh a, [$fe]                                     ; $6bf9: $f0 $fe
	rst $38                                          ; $6bfb: $ff
	add b                                            ; $6bfc: $80
	ldh a, [c]                                       ; $6bfd: $f2
	ld a, [$f3fb]                                    ; $6bfe: $fa $fb $f3
	rst JumpTable                                          ; $6c01: $c7
	rst $38                                          ; $6c02: $ff
	ld sp, hl                                        ; $6c03: $f9
	db $fc                                           ; $6c04: $fc
	ld l, c                                          ; $6c05: $69
	sub d                                            ; $6c06: $92

jr_059_6c07:
	add b                                            ; $6c07: $80
	inc bc                                           ; $6c08: $03
	ld a, b                                          ; $6c09: $78
	add hl, sp                                       ; $6c0a: $39
	jr jr_059_6c15                                   ; $6c0b: $18 $08

	adc h                                            ; $6c0d: $8c
	add [hl]                                         ; $6c0e: $86
	add e                                            ; $6c0f: $83
	ld bc, $c687                                     ; $6c10: $01 $87 $c6

jr_059_6c13:
	rst SubAFromBC                                          ; $6c13: $e7
	rst FarCall                                          ; $6c14: $f7

jr_059_6c15:
	ld [hl], e                                       ; $6c15: $73
	ld a, c                                          ; $6c16: $79
	ld a, h                                          ; $6c17: $7c
	cp $40                                           ; $6c18: $fe $40
	nop                                              ; $6c1a: $00
	and b                                            ; $6c1b: $a0
	and b                                            ; $6c1c: $a0
	ccf                                              ; $6c1d: $3f
	ld l, a                                          ; $6c1e: $6f
	ld l, $9c                                        ; $6c1f: $2e $9c
	adc b                                            ; $6c21: $88
	ret nc                                           ; $6c22: $d0

	ld h, b                                          ; $6c23: $60
	ld h, b                                          ; $6c24: $60
	rst $38                                          ; $6c25: $ff
	or b                                             ; $6c26: $b0
	sub l                                            ; $6c27: $95
	pop af                                           ; $6c28: $f1
	ld [hl], e                                       ; $6c29: $73
	nop                                              ; $6c2a: $00
	rst $38                                          ; $6c2b: $ff
	ld bc, $c000                                     ; $6c2c: $01 $00 $c0
	ld a, b                                          ; $6c2f: $78
	and c                                            ; $6c30: $a1
	ret nc                                           ; $6c31: $d0

	ld l, a                                          ; $6c32: $6f
	ld e, d                                          ; $6c33: $5a
	sbc h                                            ; $6c34: $9c
	jr nz, jr_059_6c07                               ; $6c35: $20 $d0

	ld [bc], a                                       ; $6c37: $02
	ld a, c                                          ; $6c38: $79
	add b                                            ; $6c39: $80
	ld a, d                                          ; $6c3a: $7a
	ld h, $9e                                        ; $6c3b: $26 $9e
	inc e                                            ; $6c3d: $1c
	ld sp, hl                                        ; $6c3e: $f9
	sbc [hl]                                         ; $6c3f: $9e
	ld [hl+], a                                      ; $6c40: $22
	ld [hl], e                                       ; $6c41: $73
	ldh a, [$f7]                                     ; $6c42: $f0 $f7
	sbc h                                            ; $6c44: $9c
	ld b, l                                          ; $6c45: $45
	dec h                                            ; $6c46: $25
	inc e                                            ; $6c47: $1c
	sbc $14                                          ; $6c48: $de $14
	rst SubAFromDE                                          ; $6c4a: $df
	ld a, [hl+]                                      ; $6c4b: $2a
	sbc l                                            ; $6c4c: $9d
	ld a, [hl]                                       ; $6c4d: $7e
	ld a, $dd                                        ; $6c4e: $3e $dd
	rra                                              ; $6c50: $1f
	rst SubAFromDE                                          ; $6c51: $df
	ccf                                              ; $6c52: $3f
	sub e                                            ; $6c53: $93
	sub $bd                                          ; $6c54: $d6 $bd
	set 4, [hl]                                      ; $6c56: $cb $e6
	cp h                                             ; $6c58: $bc
	xor [hl]                                         ; $6c59: $ae
	and a                                            ; $6c5a: $a7
	and l                                            ; $6c5b: $a5
	ei                                               ; $6c5c: $fb
	ei                                               ; $6c5d: $fb
	db $fd                                           ; $6c5e: $fd
	db $fd                                           ; $6c5f: $fd
	call c, $97ff                                    ; $6c60: $dc $ff $97
	ccf                                              ; $6c63: $3f
	cp a                                             ; $6c64: $bf
	rst $38                                          ; $6c65: $ff
	or a                                             ; $6c66: $b7
	ld a, e                                          ; $6c67: $7b
	ccf                                              ; $6c68: $3f
	sub a                                            ; $6c69: $97
	ld b, b                                          ; $6c6a: $40
	ld a, d                                          ; $6c6b: $7a
	ld b, c                                          ; $6c6c: $41
	add d                                            ; $6c6d: $82
	ld hl, sp-$24                                    ; $6c6e: $f8 $dc
	db $ec                                           ; $6c70: $ec
	cp $ad                                           ; $6c71: $fe $ad
	cp e                                             ; $6c73: $bb
	or a                                             ; $6c74: $b7
	or [hl]                                          ; $6c75: $b6
	db $fd                                           ; $6c76: $fd
	rst SubAFromDE                                          ; $6c77: $df
	rst SubAFromDE                                          ; $6c78: $df
	db $fc                                           ; $6c79: $fc
	ld [hl], d                                       ; $6c7a: $72
	ld h, l                                          ; $6c7b: $65
	ld l, e                                          ; $6c7c: $6b
	ld l, d                                          ; $6c7d: $6a
	dec h                                            ; $6c7e: $25
	daa                                              ; $6c7f: $27
	ld l, $06                                        ; $6c80: $2e $06
	rst FarCall                                          ; $6c82: $f7
	ld a, a                                          ; $6c83: $7f
	db $ed                                           ; $6c84: $ed
	ret z                                            ; $6c85: $c8

	sub b                                            ; $6c86: $90
	nop                                              ; $6c87: $00
	ld b, b                                          ; $6c88: $40
	add b                                            ; $6c89: $80
	ldh a, [$7a]                                     ; $6c8a: $f0 $7a
	rlca                                             ; $6c8c: $07
	db $fd                                           ; $6c8d: $fd
	sub h                                            ; $6c8e: $94
	sub l                                            ; $6c8f: $95
	xor $ce                                          ; $6c90: $ee $ce
	inc e                                            ; $6c92: $1c
	inc e                                            ; $6c93: $1c
	ld e, $0e                                        ; $6c94: $1e $0e
	rrca                                             ; $6c96: $0f
	db $e4                                           ; $6c97: $e4
	ld l, c                                          ; $6c98: $69
	dec bc                                           ; $6c99: $0b
	db $dd                                           ; $6c9a: $dd
	rrca                                             ; $6c9b: $0f
	ld a, l                                          ; $6c9c: $7d
	cp e                                             ; $6c9d: $bb
	ld a, c                                          ; $6c9e: $79
	rst FarCall                                          ; $6c9f: $f7
	sbc $7f                                          ; $6ca0: $de $7f
	ld a, l                                          ; $6ca2: $7d
	ld a, [bc]                                       ; $6ca3: $0a
	ld [hl], h                                       ; $6ca4: $74
	ld b, l                                          ; $6ca5: $45
	ld a, b                                          ; $6ca6: $78
	sbc [hl]                                         ; $6ca7: $9e
	ld a, [hl]                                       ; $6ca8: $7e
	nop                                              ; $6ca9: $00
	sub h                                            ; $6caa: $94
	ret c                                            ; $6cab: $d8

	add sp, -$14                                     ; $6cac: $e8 $ec
	db $f4                                           ; $6cae: $f4
	or $f6                                           ; $6caf: $f6 $f6
	ldh [rSVBK], a                                   ; $6cb1: $e0 $70
	jr nc, jr_059_6ccd                               ; $6cb3: $30 $18

	jr @-$20                                         ; $6cb5: $18 $de

	inc c                                            ; $6cb7: $0c
	add b                                            ; $6cb8: $80
	inc sp                                           ; $6cb9: $33
	rla                                              ; $6cba: $17
	ld hl, $576a                                     ; $6cbb: $21 $6a $57
	rst SubAFromHL                                          ; $6cbe: $d7
	adc e                                            ; $6cbf: $8b
	xor c                                            ; $6cc0: $a9
	inc e                                            ; $6cc1: $1c

jr_059_6cc2:
	jr c, jr_059_6cff                                ; $6cc2: $38 $3b

	inc sp                                           ; $6cc4: $33
	ld h, d                                          ; $6cc5: $62
	ld h, d                                          ; $6cc6: $62
	and $c7                                          ; $6cc7: $e6 $c7
	jr jr_059_6cc2                                   ; $6cc9: $18 $f7

	ld a, e                                          ; $6ccb: $7b

jr_059_6ccc:
	dec c                                            ; $6ccc: $0d

jr_059_6ccd:
	ld [hl], a                                       ; $6ccd: $77
	ld d, $7b                                        ; $6cce: $16 $7b
	ld e, c                                          ; $6cd0: $59
	db $f4                                           ; $6cd1: $f4
	ld hl, sp-$74                                    ; $6cd2: $f8 $8c
	halt                                             ; $6cd4: $76
	adc d                                            ; $6cd5: $8a
	adc e                                            ; $6cd6: $8b
	add l                                            ; $6cd7: $85
	add b                                            ; $6cd8: $80
	cp a                                             ; $6cd9: $bf
	rst SubAFromDE                                          ; $6cda: $df
	db $ec                                           ; $6cdb: $ec
	cp a                                             ; $6cdc: $bf
	ld hl, sp-$04                                    ; $6cdd: $f8 $fc
	scf                                              ; $6cdf: $37
	adc c                                            ; $6ce0: $89
	rrca                                             ; $6ce1: $0f
	ccf                                              ; $6ce2: $3f
	ld [hl], e                                       ; $6ce3: $73
	rst JumpTable                                          ; $6ce4: $c7
	ld c, a                                          ; $6ce5: $4f
	daa                                              ; $6ce6: $27
	dec de                                           ; $6ce7: $1b
	rrca                                             ; $6ce8: $0f
	add [hl]                                         ; $6ce9: $86
	cp $07                                           ; $6cea: $fe $07
	ei                                               ; $6cec: $fb
	ld h, $d8                                        ; $6ced: $26 $d8
	ld a, a                                          ; $6cef: $7f
	ld a, a                                          ; $6cf0: $7f
	jr nc, @+$01                                     ; $6cf1: $30 $ff

	rst $38                                          ; $6cf3: $ff
	db $fc                                           ; $6cf4: $fc
	ld sp, hl                                        ; $6cf5: $f9
	rst SubAFromBC                                          ; $6cf6: $e7
	add b                                            ; $6cf7: $80
	sub c                                            ; $6cf8: $91
	add b                                            ; $6cf9: $80
	rst GetHLinHL                                          ; $6cfa: $cf
	rst SubAFromBC                                          ; $6cfb: $e7
	ld a, c                                          ; $6cfc: $79
	add c                                            ; $6cfd: $81
	inc c                                            ; $6cfe: $0c

jr_059_6cff:
	ld a, a                                          ; $6cff: $7f
	rst $38                                          ; $6d00: $ff
	rst $38                                          ; $6d01: $ff
	nop                                              ; $6d02: $00
	ld hl, sp-$7a                                    ; $6d03: $f8 $86
	ld a, [hl]                                       ; $6d05: $7e
	ldh a, [$7b]                                     ; $6d06: $f0 $7b
	ld a, a                                          ; $6d08: $7f
	db $dd                                           ; $6d09: $dd
	rst $38                                          ; $6d0a: $ff
	sbc e                                            ; $6d0b: $9b
	nop                                              ; $6d0c: $00
	db $fc                                           ; $6d0d: $fc
	rst $38                                          ; $6d0e: $ff
	ld sp, hl                                        ; $6d0f: $f9
	ld h, h                                          ; $6d10: $64
	ldh [c], a                                       ; $6d11: $e2
	ld a, a                                          ; $6d12: $7f
	or $7d                                           ; $6d13: $f6 $7d
	ld d, h                                          ; $6d15: $54
	sbc d                                            ; $6d16: $9a
	add a                                            ; $6d17: $87
	daa                                              ; $6d18: $27
	and e                                            ; $6d19: $a3
	add e                                            ; $6d1a: $83
	ld l, a                                          ; $6d1b: $6f
	ld a, d                                          ; $6d1c: $7a
	ldh a, [c]                                       ; $6d1d: $f2
	sub l                                            ; $6d1e: $95
	ld a, b                                          ; $6d1f: $78
	jr jr_059_6d3e                                   ; $6d20: $18 $1c

	inc c                                            ; $6d22: $0c
	add b                                            ; $6d23: $80
	nop                                              ; $6d24: $00
	ld b, b                                          ; $6d25: $40
	add d                                            ; $6d26: $82
	pop af                                           ; $6d27: $f1
	ld hl, sp+$79                                    ; $6d28: $f8 $79
	ld b, [hl]                                       ; $6d2a: $46
	ld a, a                                          ; $6d2b: $7f
	jr z, jr_059_6ccc                                ; $6d2c: $28 $9e

	rrca                                             ; $6d2e: $0f
	ld a, b                                          ; $6d2f: $78
	dec a                                            ; $6d30: $3d
	rst $38                                          ; $6d31: $ff
	add b                                            ; $6d32: $80
	sbc c                                            ; $6d33: $99
	jp nc, $7472                                     ; $6d34: $d2 $72 $74

	xor l                                            ; $6d37: $ad
	xor d                                            ; $6d38: $aa
	ld c, b                                          ; $6d39: $48
	jr z, jr_059_6db3                                ; $6d3a: $28 $77

	ccf                                              ; $6d3c: $3f
	sbc a                                            ; $6d3d: $9f

jr_059_6d3e:
	sbc a                                            ; $6d3e: $9f
	sbc $dd                                          ; $6d3f: $de $dd
	rst $38                                          ; $6d41: $ff
	ld a, a                                          ; $6d42: $7f
	db $fc                                           ; $6d43: $fc
	jp SetWramBankToHighByteInStackAfterReturn                                         ; $6d44: $c3 $7f $07


	add b                                            ; $6d47: $80
	jr jr_059_6d71                                   ; $6d48: $18 $27

	rst GetHLinHL                                          ; $6d4a: $cf
	db $fc                                           ; $6d4b: $fc
	ccf                                              ; $6d4c: $3f
	add b                                            ; $6d4d: $80
	ld hl, sp+$7f                                    ; $6d4e: $f8 $7f
	rst $38                                          ; $6d50: $ff
	ld hl, sp+$7c                                    ; $6d51: $f8 $7c
	add hl, sp                                       ; $6d53: $39
	ld a, a                                          ; $6d54: $7f
	ld c, [hl]                                       ; $6d55: $4e
	rst SubAFromDE                                          ; $6d56: $df
	db $10                                           ; $6d57: $10
	rst SubAFromDE                                          ; $6d58: $df
	ld hl, sp-$64                                    ; $6d59: $f8 $9c
	db $f4                                           ; $6d5b: $f4
	nop                                              ; $6d5c: $00
	ret nz                                           ; $6d5d: $c0

	ld a, c                                          ; $6d5e: $79
	cp a                                             ; $6d5f: $bf
	sbc d                                            ; $6d60: $9a
	ld hl, sp+$08                                    ; $6d61: $f8 $08
	inc c                                            ; $6d63: $0c
	ret nz                                           ; $6d64: $c0

	inc c                                            ; $6d65: $0c
	di                                               ; $6d66: $f3
	add b                                            ; $6d67: $80
	ld d, d                                          ; $6d68: $52
	ld d, e                                          ; $6d69: $53
	cp e                                             ; $6d6a: $bb
	ld e, d                                          ; $6d6b: $5a
	sbc d                                            ; $6d6c: $9a
	sbc d                                            ; $6d6d: $9a
	sbc e                                            ; $6d6e: $9b
	rla                                              ; $6d6f: $17
	ld a, a                                          ; $6d70: $7f

jr_059_6d71:
	ld a, a                                          ; $6d71: $7f
	rst FarCall                                          ; $6d72: $f7
	rst SubAFromHL                                          ; $6d73: $d7
	sub a                                            ; $6d74: $97
	sub a                                            ; $6d75: $97
	sub [hl]                                         ; $6d76: $96
	ld a, [de]                                       ; $6d77: $1a
	or l                                             ; $6d78: $b5
	or h                                             ; $6d79: $b4
	or [hl]                                          ; $6d7a: $b6
	cp [hl]                                          ; $6d7b: $be
	xor [hl]                                         ; $6d7c: $ae
	ld l, a                                          ; $6d7d: $6f
	dec l                                            ; $6d7e: $2d
	ld [hl], l                                       ; $6d7f: $75
	rst AddAOntoHL                                          ; $6d80: $ef
	rst AddAOntoHL                                          ; $6d81: $ef
	db $ed                                           ; $6d82: $ed
	push hl                                          ; $6d83: $e5
	push af                                          ; $6d84: $f5
	db $f4                                           ; $6d85: $f4
	or $9b                                           ; $6d86: $f6 $9b
	cp [hl]                                          ; $6d88: $be
	cp $bb                                           ; $6d89: $fe $bb
	add e                                            ; $6d8b: $83
	ld a, e                                          ; $6d8c: $7b
	ld a, [bc]                                       ; $6d8d: $0a
	sbc d                                            ; $6d8e: $9a
	and b                                            ; $6d8f: $a0
	ret nc                                           ; $6d90: $d0

	rst $38                                          ; $6d91: $ff
	sbc l                                            ; $6d92: $9d
	add d                                            ; $6d93: $82
	ld [hl], e                                       ; $6d94: $73
	nop                                              ; $6d95: $00
	adc a                                            ; $6d96: $8f
	ld a, [$6fbf]                                    ; $6d97: $fa $bf $6f
	ld e, e                                          ; $6d9a: $5b
	dec d                                            ; $6d9b: $15
	ld [bc], a                                       ; $6d9c: $02
	ld hl, $1c18                                     ; $6d9d: $21 $18 $1c
	ret nz                                           ; $6da0: $c0

	ldh a, [$3c]                                     ; $6da1: $f0 $3c
	ld c, $07                                        ; $6da3: $0e $07
	inc bc                                           ; $6da5: $03
	ld bc, $4c7b                                     ; $6da6: $01 $7b $4c
	ld a, a                                          ; $6da9: $7f
	and a                                            ; $6daa: $a7
	sbc h                                            ; $6dab: $9c
	db $fc                                           ; $6dac: $fc
	ld a, a                                          ; $6dad: $7f
	cp a                                             ; $6dae: $bf
	ld h, l                                          ; $6daf: $65
	or b                                             ; $6db0: $b0
	ld l, h                                          ; $6db1: $6c
	add hl, sp                                       ; $6db2: $39

jr_059_6db3:
	sbc l                                            ; $6db3: $9d
	add b                                            ; $6db4: $80
	ldh [rSVBK], a                                   ; $6db5: $e0 $70
	dec hl                                           ; $6db7: $2b
	cp $7e                                           ; $6db8: $fe $7e
	add d                                            ; $6dba: $82
	sub h                                            ; $6dbb: $94
	cp $3f                                           ; $6dbc: $fe $3f
	ld c, $03                                        ; $6dbe: $0e $03
	nop                                              ; $6dc0: $00
	ld a, a                                          ; $6dc1: $7f
	ret nz                                           ; $6dc2: $c0

	ret nz                                           ; $6dc3: $c0

	ld h, b                                          ; $6dc4: $60
	jr jr_059_6dce                                   ; $6dc5: $18 $07

	ld a, c                                          ; $6dc7: $79
	add sp, $7d                                      ; $6dc8: $e8 $7d
	ld e, $8a                                        ; $6dca: $1e $8a
	inc [hl]                                         ; $6dcc: $34
	ld a, l                                          ; $6dcd: $7d

jr_059_6dce:
	reti                                             ; $6dce: $d9


	di                                               ; $6dcf: $f3
	ld b, $17                                        ; $6dd0: $06 $17
	inc b                                            ; $6dd2: $04
	inc b                                            ; $6dd3: $04
	inc c                                            ; $6dd4: $0c
	ld [$e131], sp                                   ; $6dd5: $08 $31 $e1
	inc bc                                           ; $6dd8: $03
	rrca                                             ; $6dd9: $0f
	xor c                                            ; $6dda: $a9
	xor c                                            ; $6ddb: $a9
	add c                                            ; $6ddc: $81
	pop bc                                           ; $6ddd: $c1
	ld d, e                                          ; $6dde: $53
	dec h                                            ; $6ddf: $25
	ld a, e                                          ; $6de0: $7b
	sbc $c7                                          ; $6de1: $de $c7
	sbc $ef                                          ; $6de3: $de $ef
	ld a, l                                          ; $6de5: $7d
	or e                                             ; $6de6: $b3
	adc l                                            ; $6de7: $8d
	rst JumpTable                                          ; $6de8: $c7
	and l                                            ; $6de9: $a5
	or [hl]                                          ; $6dea: $b6
	cp a                                             ; $6deb: $bf
	cp b                                             ; $6dec: $b8
	rst FarCall                                          ; $6ded: $f7
	sbc $78                                          ; $6dee: $de $78
	sbc b                                            ; $6df0: $98
	ld l, [hl]                                       ; $6df1: $6e
	ld l, l                                          ; $6df2: $6d
	ld a, b                                          ; $6df3: $78
	ld b, b                                          ; $6df4: $40
	pop hl                                           ; $6df5: $e1
	ld a, $fe                                        ; $6df6: $3e $fe
	cp $df                                           ; $6df8: $fe $df
	ld a, b                                          ; $6dfa: $78
	ld e, h                                          ; $6dfb: $5c
	halt                                             ; $6dfc: $76
	ld c, $9b                                        ; $6dfd: $0e $9b
	add d                                            ; $6dff: $82
	ld b, d                                          ; $6e00: $42
	and d                                            ; $6e01: $a2
	ld d, d                                          ; $6e02: $52
	ld l, [hl]                                       ; $6e03: $6e
	ld b, $96                                        ; $6e04: $06 $96
	rrca                                             ; $6e06: $0f
	nop                                              ; $6e07: $00
	ldh [rAUD2LOW], a                                ; $6e08: $e0 $18
	ld b, $01                                        ; $6e0a: $06 $01
	rst $38                                          ; $6e0c: $ff
	rst $38                                          ; $6e0d: $ff
	ldh a, [$72]                                     ; $6e0e: $f0 $72
	db $fc                                           ; $6e10: $fc
	ld a, d                                          ; $6e11: $7a
	call $9677                                       ; $6e12: $cd $77 $96
	sbc [hl]                                         ; $6e15: $9e
	ret nz                                           ; $6e16: $c0

	ld a, d                                          ; $6e17: $7a
	ret                                              ; $6e18: $c9


	ld a, d                                          ; $6e19: $7a
	db $eb                                           ; $6e1a: $eb
	ld a, e                                          ; $6e1b: $7b
	ld a, [$847b]                                    ; $6e1c: $fa $7b $84
	rst $38                                          ; $6e1f: $ff
	sub b                                            ; $6e20: $90
	ld b, b                                          ; $6e21: $40
	ld h, b                                          ; $6e22: $60
	rst $38                                          ; $6e23: $ff
	rst $38                                          ; $6e24: $ff
	ld a, a                                          ; $6e25: $7f
	rrca                                             ; $6e26: $0f
	rlca                                             ; $6e27: $07
	add e                                            ; $6e28: $83
	add c                                            ; $6e29: $81
	add c                                            ; $6e2a: $81
	ld h, a                                          ; $6e2b: $67
	ld [hl], e                                       ; $6e2c: $73
	ld [hl], c                                       ; $6e2d: $71
	jr c, jr_059_6e6e                                ; $6e2e: $38 $3e

	ld a, c                                          ; $6e30: $79
	ld c, l                                          ; $6e31: $4d
	ld [hl], a                                       ; $6e32: $77
	ld b, h                                          ; $6e33: $44
	rst SubAFromDE                                          ; $6e34: $df
	ret nz                                           ; $6e35: $c0

	ld a, a                                          ; $6e36: $7f
	ld d, l                                          ; $6e37: $55
	sbc $ff                                          ; $6e38: $de $ff
	sbc d                                            ; $6e3a: $9a
	sbc a                                            ; $6e3b: $9f
	ld b, a                                          ; $6e3c: $47
	jr nz, @-$7e                                     ; $6e3d: $20 $80

	call nc, Call_059_7cfe                           ; $6e3f: $d4 $fe $7c
	ld a, $78                                        ; $6e42: $3e $78
	dec h                                            ; $6e44: $25
	ld a, [hl]                                       ; $6e45: $7e
	ret nz                                           ; $6e46: $c0

	sbc l                                            ; $6e47: $9d
	db $fc                                           ; $6e48: $fc
	sbc b                                            ; $6e49: $98
	sbc $08                                          ; $6e4a: $de $08
	sbc [hl]                                         ; $6e4c: $9e
	dec b                                            ; $6e4d: $05
	ld a, c                                          ; $6e4e: $79
	add hl, hl                                       ; $6e4f: $29
	ld a, d                                          ; $6e50: $7a
	ld a, c                                          ; $6e51: $79
	rst SubAFromDE                                          ; $6e52: $df
	rst $38                                          ; $6e53: $ff
	ld a, [hl]                                       ; $6e54: $7e
	db $10                                           ; $6e55: $10
	sub l                                            ; $6e56: $95
	jr nz, jr_059_6e59                               ; $6e57: $20 $00

jr_059_6e59:
	jr jr_059_6e7f                                   ; $6e59: $18 $24

	adc $1e                                          ; $6e5b: $ce $1e
	ldh a, [$e0]                                     ; $6e5d: $f0 $e0
	rst SubAFromDE                                          ; $6e5f: $df
	rst $38                                          ; $6e60: $ff
	ld a, d                                          ; $6e61: $7a
	pop bc                                           ; $6e62: $c1
	sub b                                            ; $6e63: $90
	ldh [$9c], a                                     ; $6e64: $e0 $9c
	call nz, $32e4                                   ; $6e66: $c4 $e4 $32
	ld a, [bc]                                       ; $6e69: $0a
	ld e, $1d                                        ; $6e6a: $1e $1d
	rra                                              ; $6e6c: $1f
	ld h, h                                          ; $6e6d: $64

jr_059_6e6e:
	inc a                                            ; $6e6e: $3c
	inc e                                            ; $6e6f: $1c
	adc $f6                                          ; $6e70: $ce $f6
	ld [bc], a                                       ; $6e72: $02
	ld l, a                                          ; $6e73: $6f
	ld a, [hl+]                                      ; $6e74: $2a
	sbc e                                            ; $6e75: $9b
	add b                                            ; $6e76: $80
	jr c, jr_059_6e87                                ; $6e77: $38 $0e

	add a                                            ; $6e79: $87
	ld sp, hl                                        ; $6e7a: $f9
	add b                                            ; $6e7b: $80
	rla                                              ; $6e7c: $17
	ld c, $0e                                        ; $6e7d: $0e $0e

jr_059_6e7f:
	dec bc                                           ; $6e7f: $0b
	dec bc                                           ; $6e80: $0b
	add hl, bc                                       ; $6e81: $09
	dec b                                            ; $6e82: $05
	dec b                                            ; $6e83: $05
	ld a, [de]                                       ; $6e84: $1a
	ld a, [bc]                                       ; $6e85: $0a
	ld a, [bc]                                       ; $6e86: $0a

jr_059_6e87:
	ld c, $0e                                        ; $6e87: $0e $0e
	rrca                                             ; $6e89: $0f
	rlca                                             ; $6e8a: $07
	rlca                                             ; $6e8b: $07
	inc sp                                           ; $6e8c: $33
	or e                                             ; $6e8d: $b3
	xor d                                            ; $6e8e: $aa
	ld l, d                                          ; $6e8f: $6a
	ld h, l                                          ; $6e90: $65
	ld h, l                                          ; $6e91: $65
	ld h, d                                          ; $6e92: $62
	ld [hl-], a                                      ; $6e93: $32
	cp [hl]                                          ; $6e94: $be
	ld a, $2f                                        ; $6e95: $3e $2f
	xor a                                            ; $6e97: $af
	and a                                            ; $6e98: $a7
	and a                                            ; $6e99: $a7
	and e                                            ; $6e9a: $a3
	sub [hl]                                         ; $6e9b: $96
	db $d3                                           ; $6e9c: $d3
	ret nc                                           ; $6e9d: $d0

	call z, $a3a4                                    ; $6e9e: $cc $a4 $a3
	and b                                            ; $6ea1: $a0
	ld d, b                                          ; $6ea2: $50
	db $ec                                           ; $6ea3: $ec
	rst SubAFromDE                                          ; $6ea4: $df
	ld a, e                                          ; $6ea5: $7b
	add h                                            ; $6ea6: $84
	ld a, c                                          ; $6ea7: $79
	ld a, [hl]                                       ; $6ea8: $7e
	sub l                                            ; $6ea9: $95
	db $fc                                           ; $6eaa: $fc
	rst SubAFromDE                                          ; $6eab: $df
	inc de                                           ; $6eac: $13
	add hl, bc                                       ; $6ead: $09
	ld [bc], a                                       ; $6eae: $02
	add c                                            ; $6eaf: $81
	ret nz                                           ; $6eb0: $c0

	jr nc, jr_059_6f21                               ; $6eb1: $30 $6e

	add e                                            ; $6eb3: $83
	ld h, h                                          ; $6eb4: $64
	ld d, b                                          ; $6eb5: $50
	add b                                            ; $6eb6: $80
	ld a, a                                          ; $6eb7: $7f
	sbc a                                            ; $6eb8: $9f
	ld h, a                                          ; $6eb9: $67
	sbc a                                            ; $6eba: $9f

jr_059_6ebb:
	ld d, [hl]                                       ; $6ebb: $56
	push de                                          ; $6ebc: $d5
	res 2, [hl]                                      ; $6ebd: $cb $96
	ldh [$79], a                                     ; $6ebf: $e0 $79
	ld e, $08                                        ; $6ec1: $1e $08
	add hl, sp                                       ; $6ec3: $39
	ld h, e                                          ; $6ec4: $63
	add [hl]                                         ; $6ec5: $86
	inc c                                            ; $6ec6: $0c
	rst $38                                          ; $6ec7: $ff
	ei                                               ; $6ec8: $fb
	and [hl]                                         ; $6ec9: $a6
	ld l, h                                          ; $6eca: $6c
	sbc c                                            ; $6ecb: $99
	ld sp, $4f2f                                     ; $6ecc: $31 $2f $4f
	ld a, a                                          ; $6ecf: $7f
	sbc h                                            ; $6ed0: $9c
	ld [hl], b                                       ; $6ed1: $70
	ret nz                                           ; $6ed2: $c0

	add b                                            ; $6ed3: $80
	inc bc                                           ; $6ed4: $03
	ld b, $7f                                        ; $6ed5: $06 $7f
	ld c, b                                          ; $6ed7: $48
	add b                                            ; $6ed8: $80
	ld bc, $6c1e                                     ; $6ed9: $01 $1e $6c
	rst $38                                          ; $6edc: $ff
	rst FarCall                                          ; $6edd: $f7
	rst $38                                          ; $6ede: $ff
	db $fd                                           ; $6edf: $fd
	add b                                            ; $6ee0: $80
	ld bc, $7f1f                                     ; $6ee1: $01 $1f $7f
	or e                                             ; $6ee4: $b3
	jr nz, jr_059_6f0e                               ; $6ee5: $20 $27

	ld a, [$98fb]                                    ; $6ee7: $fa $fb $98
	ccf                                              ; $6eea: $3f
	ld [hl], a                                       ; $6eeb: $77
	dec a                                            ; $6eec: $3d
	cp $f6                                           ; $6eed: $fe $f6
	dec bc                                           ; $6eef: $0b
	db $fd                                           ; $6ef0: $fd
	ldh a, [$c8]                                     ; $6ef1: $f0 $c8
	adc a                                            ; $6ef3: $8f
	cp $e0                                           ; $6ef4: $fe $e0
	jr c, @+$1e                                      ; $6ef6: $38 $1c

	adc b                                            ; $6ef8: $88
	jp $fffe                                         ; $6ef9: $c3 $fe $ff


	rst SubAFromDE                                          ; $6efc: $df
	rra                                              ; $6efd: $1f
	rra                                              ; $6efe: $1f

Jump_059_6eff:
	ld a, c                                          ; $6eff: $79
	cp $01                                           ; $6f00: $fe $01
	db $e3                                           ; $6f02: $e3
	dec a                                            ; $6f03: $3d
	rrc e                                            ; $6f04: $cb $0b
	dec d                                            ; $6f06: $15
	add hl, hl                                       ; $6f07: $29
	ld d, e                                          ; $6f08: $53
	ld d, b                                          ; $6f09: $50
	and b                                            ; $6f0a: $a0
	ld b, b                                          ; $6f0b: $40
	ld b, b                                          ; $6f0c: $40
	ret nz                                           ; $6f0d: $c0

jr_059_6f0e:
	ret nz                                           ; $6f0e: $c0

	ld b, b                                          ; $6f0f: $40
	ld a, d                                          ; $6f10: $7a
	ldh a, [$7a]                                     ; $6f11: $f0 $7a
	cp $75                                           ; $6f13: $fe $75
	and a                                            ; $6f15: $a7
	sbc l                                            ; $6f16: $9d
	ldh [$f8], a                                     ; $6f17: $e0 $f8
	ld [hl], a                                       ; $6f19: $77
	rst FarCall                                          ; $6f1a: $f7
	sbc [hl]                                         ; $6f1b: $9e
	ld a, a                                          ; $6f1c: $7f
	ld l, [hl]                                       ; $6f1d: $6e
	ld h, c                                          ; $6f1e: $61
	ld [hl], h                                       ; $6f1f: $74
	ld l, d                                          ; $6f20: $6a

jr_059_6f21:
	ld a, d                                          ; $6f21: $7a
	db $d3                                           ; $6f22: $d3
	ld a, b                                          ; $6f23: $78
	ld h, a                                          ; $6f24: $67
	ld l, d                                          ; $6f25: $6a
	ld h, c                                          ; $6f26: $61
	sub h                                            ; $6f27: $94
	nop                                              ; $6f28: $00
	jr nz, jr_059_6ebb                               ; $6f29: $20 $90

	ld l, b                                          ; $6f2b: $68
	ld [hl], $19                                     ; $6f2c: $36 $19
	inc c                                            ; $6f2e: $0c
	rlca                                             ; $6f2f: $07
	add e                                            ; $6f30: $83
	rst $38                                          ; $6f31: $ff
	ld a, a                                          ; $6f32: $7f
	ld [hl], h                                       ; $6f33: $74
	add hl, hl                                       ; $6f34: $29
	rst $38                                          ; $6f35: $ff
	sub a                                            ; $6f36: $97
	jr nc, jr_059_6f71                               ; $6f37: $30 $38

	inc a                                            ; $6f39: $3c
	ld e, $0f                                        ; $6f3a: $1e $0f
	adc a                                            ; $6f3c: $8f
	ld h, a                                          ; $6f3d: $67
	and a                                            ; $6f3e: $a7
	ld [hl], d                                       ; $6f3f: $72
	db $d3                                           ; $6f40: $d3
	ld a, l                                          ; $6f41: $7d
	rst GetHLinHL                                          ; $6f42: $cf
	add [hl]                                         ; $6f43: $86
	ld a, b                                          ; $6f44: $78
	add a                                            ; $6f45: $87
	ld b, e                                          ; $6f46: $43
	jr nz, @+$12                                     ; $6f47: $20 $10

	ld [$8204], sp                                   ; $6f49: $08 $04 $82
	add e                                            ; $6f4c: $83
	ld a, b                                          ; $6f4d: $78
	cp h                                             ; $6f4e: $bc
	ld e, a                                          ; $6f4f: $5f
	ld l, a                                          ; $6f50: $6f
	scf                                              ; $6f51: $37
	dec sp                                           ; $6f52: $3b
	dec e                                            ; $6f53: $1d
	inc e                                            ; $6f54: $1c
	jp nz, $e4e9                                     ; $6f55: $c2 $e9 $e4

	ld [hl], $12                                     ; $6f58: $36 $12
	dec bc                                           ; $6f5a: $0b
	rlca                                             ; $6f5b: $07
	add e                                            ; $6f5c: $83
	ld a, e                                          ; $6f5d: $7b
	db $d3                                           ; $6f5e: $d3
	sub d                                            ; $6f5f: $92
	pop bc                                           ; $6f60: $c1
	pop hl                                           ; $6f61: $e1
	ldh a, [$f8]                                     ; $6f62: $f0 $f8
	ld a, h                                          ; $6f64: $7c
	ld b, $04                                        ; $6f65: $06 $04
	call nz, $1a29                                   ; $6f67: $c4 $29 $1a
	ld a, [bc]                                       ; $6f6a: $0a
	inc h                                            ; $6f6b: $24
	or h                                             ; $6f6c: $b4
	db $db                                           ; $6f6d: $db
	rst $38                                          ; $6f6e: $ff
	sbc l                                            ; $6f6f: $9d
	rst SubAFromDE                                          ; $6f70: $df

jr_059_6f71:
	ld c, a                                          ; $6f71: $4f
	ld a, b                                          ; $6f72: $78
	jp nc, $927a                                     ; $6f73: $d2 $7a $92

	sbc [hl]                                         ; $6f76: $9e
	jr jr_059_6ff1                                   ; $6f77: $18 $78

	or d                                             ; $6f79: $b2
	ld a, [hl]                                       ; $6f7a: $7e
	sub b                                            ; $6f7b: $90
	ld a, a                                          ; $6f7c: $7f
	cp a                                             ; $6f7d: $bf
	add l                                            ; $6f7e: $85
	rst SubAFromBC                                          ; $6f7f: $e7
	sbc a                                            ; $6f80: $9f
	ld e, $1e                                        ; $6f81: $1e $1e
	adc h                                            ; $6f83: $8c
	jp z, $e2c2                                      ; $6f84: $ca $c2 $e2

	ldh [rSVBK], a                                   ; $6f87: $e0 $70
	ld bc, $0301                                     ; $6f89: $01 $01 $03
	dec b                                            ; $6f8c: $05
	dec c                                            ; $6f8d: $0d
	dec c                                            ; $6f8e: $0d
	rrca                                             ; $6f8f: $0f
	adc a                                            ; $6f90: $8f
	add c                                            ; $6f91: $81
	ret nz                                           ; $6f92: $c0

	ldh a, [$fc]                                     ; $6f93: $f0 $fc
	cp [hl]                                          ; $6f95: $be
	rst FarCall                                          ; $6f96: $f7
	db $eb                                           ; $6f97: $eb
	push de                                          ; $6f98: $d5
	reti                                             ; $6f99: $d9


	add b                                            ; $6f9a: $80
	sbc b                                            ; $6f9b: $98
	ld b, $02                                        ; $6f9c: $06 $02
	inc bc                                           ; $6f9e: $03
	inc bc                                           ; $6f9f: $03
	rlca                                             ; $6fa0: $07
	dec b                                            ; $6fa1: $05
	dec b                                            ; $6fa2: $05
	ld a, c                                          ; $6fa3: $79

jr_059_6fa4:
	or l                                             ; $6fa4: $b5
	sbc $03                                          ; $6fa5: $de $03
	rst SubAFromDE                                          ; $6fa7: $df
	rlca                                             ; $6fa8: $07
	sub l                                            ; $6fa9: $95
	ld b, $b1                                        ; $6faa: $06 $b1
	sub b                                            ; $6fac: $90
	ld d, b                                          ; $6fad: $50
	ld e, b                                          ; $6fae: $58
	xor b                                            ; $6faf: $a8
	ld l, h                                          ; $6fb0: $6c
	inc [hl]                                         ; $6fb1: $34
	ld c, $d1                                        ; $6fb2: $0e $d1
	ld a, e                                          ; $6fb4: $7b
	add e                                            ; $6fb5: $83
	ld a, a                                          ; $6fb6: $7f
	and d                                            ; $6fb7: $a2

Jump_059_6fb8:
	sub c                                            ; $6fb8: $91
	inc e                                            ; $6fb9: $1c
	ld c, $61                                        ; $6fba: $0e $61
	and d                                            ; $6fbc: $a2
	ld d, h                                          ; $6fbd: $54
	inc a                                            ; $6fbe: $3c
	inc c                                            ; $6fbf: $0c
	db $10                                           ; $6fc0: $10
	db $10                                           ; $6fc1: $10
	jr nz, jr_059_6fa4                               ; $6fc2: $20 $e0

	ldh [rSVBK], a                                   ; $6fc4: $e0 $70
	jr c, @-$01                                      ; $6fc6: $38 $fd

	ld a, a                                          ; $6fc8: $7f
	cp d                                             ; $6fc9: $ba
	sbc [hl]                                         ; $6fca: $9e
	dec d                                            ; $6fcb: $15
	sbc $0f                                          ; $6fcc: $de $0f
	adc b                                            ; $6fce: $88
	rra                                              ; $6fcf: $1f
	ld d, $06                                        ; $6fd0: $16 $06
	rrca                                             ; $6fd2: $0f
	rrca                                             ; $6fd3: $0f
	dec d                                            ; $6fd4: $15
	dec d                                            ; $6fd5: $15
	dec [hl]                                         ; $6fd6: $35
	dec h                                            ; $6fd7: $25
	dec l                                            ; $6fd8: $2d
	ld l, e                                          ; $6fd9: $6b
	xor a                                            ; $6fda: $af
	rst SubAFromHL                                          ; $6fdb: $d7
	or e                                             ; $6fdc: $b3
	ld hl, $4061                                     ; $6fdd: $21 $61 $40
	add b                                            ; $6fe0: $80
	inc e                                            ; $6fe1: $1c
	jr jr_059_701c                                   ; $6fe2: $18 $38

	ld a, h                                          ; $6fe4: $7c
	cp $79                                           ; $6fe5: $fe $79
	cp $80                                           ; $6fe7: $fe $80
	add hl, de                                       ; $6fe9: $19
	scf                                              ; $6fea: $37
	dec sp                                           ; $6feb: $3b
	ld h, a                                          ; $6fec: $67
	ld d, l                                          ; $6fed: $55
	sbc l                                            ; $6fee: $9d

Call_059_6fef:
	sbc d                                            ; $6fef: $9a
	sub a                                            ; $6ff0: $97

jr_059_6ff1:
	rra                                              ; $6ff1: $1f
	ccf                                              ; $6ff2: $3f
	dec a                                            ; $6ff3: $3d
	ld a, c                                          ; $6ff4: $79
	ld a, e                                          ; $6ff5: $7b
	rst AddAOntoHL                                          ; $6ff6: $ef
	rst SubAFromBC                                          ; $6ff7: $e7
	rst AddAOntoHL                                          ; $6ff8: $ef
	db $ed                                           ; $6ff9: $ed
	xor c                                            ; $6ffa: $a9
	db $db                                           ; $6ffb: $db
	ld d, e                                          ; $6ffc: $53
	ld l, e                                          ; $6ffd: $6b
	ld a, d                                          ; $6ffe: $7a
	rrca                                             ; $6fff: $0f
	cp $72                                           ; $7000: $fe $72
	halt                                             ; $7002: $76
	inc [hl]                                         ; $7003: $34
	cp h                                             ; $7004: $bc
	sbc h                                            ; $7005: $9c
	adc l                                            ; $7006: $8d
	rst $38                                          ; $7007: $ff
	add b                                            ; $7008: $80
	ei                                               ; $7009: $fb
	sub a                                            ; $700a: $97
	set 1, a                                         ; $700b: $cb $cf
	rst $38                                          ; $700d: $ff
	cp a                                             ; $700e: $bf
	rst $38                                          ; $700f: $ff
	ld c, e                                          ; $7010: $4b
	ei                                               ; $7011: $fb
	inc c                                            ; $7012: $0c
	rlca                                             ; $7013: $07
	inc bc                                           ; $7014: $03
	rrca                                             ; $7015: $0f
	ld a, a                                          ; $7016: $7f
	ldh [c], a                                       ; $7017: $e2
	add [hl]                                         ; $7018: $86
	ld b, $df                                        ; $7019: $06 $df
	and e                                            ; $701b: $a3

jr_059_701c:
	rst AddAOntoHL                                          ; $701c: $ef
	ld a, a                                          ; $701d: $7f
	cp $f7                                           ; $701e: $fe $f7
	rst GetHLinHL                                          ; $7020: $cf
	adc [hl]                                         ; $7021: $8e
	or $fe                                           ; $7022: $f6 $fe
	cp [hl]                                          ; $7024: $be
	or d                                             ; $7025: $b2
	ld c, e                                          ; $7026: $4b
	or l                                             ; $7027: $b5
	sub l                                            ; $7028: $95
	push bc                                          ; $7029: $c5
	adc e                                            ; $702a: $8b
	ret nz                                           ; $702b: $c0

	ldh [$a0], a                                     ; $702c: $e0 $a0
	sub b                                            ; $702e: $90
	sub b                                            ; $702f: $90
	ld [$0408], sp                                   ; $7030: $08 $08 $04
	reti                                             ; $7033: $d9


	rst $38                                          ; $7034: $ff
	sbc $3f                                          ; $7035: $de $3f
	call c, Call_059_761f                            ; $7037: $dc $1f $76
	ldh a, [$dd]                                     ; $703a: $f0 $dd
	ldh [$db], a                                     ; $703c: $e0 $db
	rst $38                                          ; $703e: $ff
	sbc l                                            ; $703f: $9d
	di                                               ; $7040: $f3
	pop af                                           ; $7041: $f1
	ei                                               ; $7042: $fb
	sbc h                                            ; $7043: $9c
	inc c                                            ; $7044: $0c
	ld c, $f1                                        ; $7045: $0e $f1
	jp c, $f9ff                                      ; $7047: $da $ff $f9

	rst SubAFromDE                                          ; $704a: $df
	db $d3                                           ; $704b: $d3
	rst SubAFromDE                                          ; $704c: $df
	jp hl                                            ; $704d: $e9


	sbc $f4                                          ; $704e: $de $f4
	sbc d                                            ; $7050: $9a
	push af                                          ; $7051: $f5
	inc a                                            ; $7052: $3c
	inc a                                            ; $7053: $3c
	ld e, $1e                                        ; $7054: $1e $1e
	sbc $0f                                          ; $7056: $de $0f
	sub l                                            ; $7058: $95
	ld c, $c3                                        ; $7059: $0e $c3
	pop hl                                           ; $705b: $e1
	pop hl                                           ; $705c: $e1
	ldh [$e0], a                                     ; $705d: $e0 $e0
	ld h, b                                          ; $705f: $60
	ld [hl], b                                       ; $7060: $70
	jr nc, jr_059_706f                               ; $7061: $30 $0c

	ld a, c                                          ; $7063: $79
	ldh [c], a                                       ; $7064: $e2
	ld a, a                                          ; $7065: $7f
	ld [bc], a                                       ; $7066: $02
	sbc e                                            ; $7067: $9b
	adc a                                            ; $7068: $8f
	rst GetHLinHL                                          ; $7069: $cf
	jp Jump_059_78e1                                 ; $706a: $c3 $e1 $78


	ld b, c                                          ; $706d: $41
	sbc d                                            ; $706e: $9a

jr_059_706f:
	ld a, [hl]                                       ; $706f: $7e
	ld a, a                                          ; $7070: $7f
	ccf                                              ; $7071: $3f
	inc a                                            ; $7072: $3c
	ld e, $7b                                        ; $7073: $1e $7b
	dec c                                            ; $7075: $0d
	adc e                                            ; $7076: $8b
	add c                                            ; $7077: $81
	add b                                            ; $7078: $80
	ret nz                                           ; $7079: $c0

	sub l                                            ; $707a: $95
	call c, $eccf                                    ; $707b: $dc $cf $ec
	ld h, h                                          ; $707e: $64
	ld [hl], h                                       ; $707f: $74
	inc [hl]                                         ; $7080: $34

jr_059_7081:
	inc [hl]                                         ; $7081: $34
	ld l, [hl]                                       ; $7082: $6e
	daa                                              ; $7083: $27
	scf                                              ; $7084: $37
	rla                                              ; $7085: $17
	sbc a                                            ; $7086: $9f
	adc a                                            ; $7087: $8f
	rst GetHLinHL                                          ; $7088: $cf
	rst GetHLinHL                                          ; $7089: $cf
	add b                                            ; $708a: $80
	ld a, c                                          ; $708b: $79
	add hl, sp                                       ; $708c: $39
	rst SubAFromDE                                          ; $708d: $df
	ld a, [hl]                                       ; $708e: $7e
	sbc l                                            ; $708f: $9d
	ld a, $1e                                        ; $7090: $3e $1e
	ld a, d                                          ; $7092: $7a
	ld b, l                                          ; $7093: $45
	ld a, h                                          ; $7094: $7c
	and h                                            ; $7095: $a4
	ld a, d                                          ; $7096: $7a
	cp l                                             ; $7097: $bd
	add a                                            ; $7098: $87
	jr nc, jr_059_70b4                               ; $7099: $30 $19

	add hl, bc                                       ; $709b: $09
	dec b                                            ; $709c: $05
	pop hl                                           ; $709d: $e1

Call_059_709e:
	add hl, sp                                       ; $709e: $39
	jr jr_059_70bd                                   ; $709f: $18 $1c

	rst GetHLinHL                                          ; $70a1: $cf
	rst SubAFromBC                                          ; $70a2: $e7
	rst FarCall                                          ; $70a3: $f7
	ei                                               ; $70a4: $fb
	rst $38                                          ; $70a5: $ff
	rra                                              ; $70a6: $1f
	rlca                                             ; $70a7: $07
	inc bc                                           ; $70a8: $03
	ld [$aad5], a                                    ; $70a9: $ea $d5 $aa
	ld d, l                                          ; $70ac: $55
	xor d                                            ; $70ad: $aa
	push de                                          ; $70ae: $d5
	cp d                                             ; $70af: $ba
	push de                                          ; $70b0: $d5
	ld [hl], d                                       ; $70b1: $72
	scf                                              ; $70b2: $37
	ld a, d                                          ; $70b3: $7a

jr_059_70b4:
	cpl                                              ; $70b4: $2f
	sbc h                                            ; $70b5: $9c
	ld a, [de]                                       ; $70b6: $1a
	inc [hl]                                         ; $70b7: $34
	ld a, b                                          ; $70b8: $78
	ld a, c                                          ; $70b9: $79
	db $10                                           ; $70ba: $10
	rst $38                                          ; $70bb: $ff
	sbc e                                            ; $70bc: $9b

jr_059_70bd:
	ld c, $1c                                        ; $70bd: $0e $1c
	jr c, jr_059_7081                                ; $70bf: $38 $c0

	db $fd                                           ; $70c1: $fd
	sbc [hl]                                         ; $70c2: $9e
	ld [bc], a                                       ; $70c3: $02
	ld l, d                                          ; $70c4: $6a
	daa                                              ; $70c5: $27
	ld h, a                                          ; $70c6: $67
	ld hl, sp+$7e                                    ; $70c7: $f8 $7e
	rra                                              ; $70c9: $1f
	add b                                            ; $70ca: $80
	add b                                            ; $70cb: $80

Call_059_70cc:
	jr nc, jr_059_70de                               ; $70cc: $30 $10

	db $10                                           ; $70ce: $10
	jr z, jr_059_7113                                ; $70cf: $28 $42

	ld b, b                                          ; $70d1: $40
	ld b, b                                          ; $70d2: $40
	and b                                            ; $70d3: $a0
	ld b, b                                          ; $70d4: $40
	jr nz, jr_059_70f7                               ; $70d5: $20 $20

	ld b, b                                          ; $70d7: $40
	ld h, b                                          ; $70d8: $60
	ld d, d                                          ; $70d9: $52
	ld d, a                                          ; $70da: $57
	ld d, a                                          ; $70db: $57
	ld b, l                                          ; $70dc: $45
	ld b, l                                          ; $70dd: $45

jr_059_70de:
	rrca                                             ; $70de: $0f
	ld l, $0e                                        ; $70df: $2e $0e

jr_059_70e1:
	cpl                                              ; $70e1: $2f
	dec hl                                           ; $70e2: $2b
	dec hl                                           ; $70e3: $2b
	dec sp                                           ; $70e4: $3b
	dec sp                                           ; $70e5: $3b
	inc sp                                           ; $70e6: $33
	inc de                                           ; $70e7: $13

Call_059_70e8:
	inc sp                                           ; $70e8: $33
	add c                                            ; $70e9: $81
	sbc [hl]                                         ; $70ea: $9e
	add c                                            ; $70eb: $81
	db $dd                                           ; $70ec: $dd
	ld bc, $03df                                     ; $70ed: $01 $df $03
	reti                                             ; $70f0: $d9


jr_059_70f1:
	rst $38                                          ; $70f1: $ff
	sub a                                            ; $70f2: $97
	ld a, [de]                                       ; $70f3: $1a
	inc hl                                           ; $70f4: $23
	ld c, a                                          ; $70f5: $4f
	sbc [hl]                                         ; $70f6: $9e

jr_059_70f7:
	ld e, $9e                                        ; $70f7: $1e $9e
	ld c, [hl]                                       ; $70f9: $4e
	ld h, $7b                                        ; $70fa: $26 $7b
	inc e                                            ; $70fc: $1c
	sbc $e3                                          ; $70fd: $de $e3
	adc l                                            ; $70ff: $8d
	di                                               ; $7100: $f3
	ei                                               ; $7101: $fb
	rst SubAFromBC                                          ; $7102: $e7
	xor $6f                                          ; $7103: $ee $6f
	rst AddAOntoHL                                          ; $7105: $ef
	xor a                                            ; $7106: $af
	rst GetHLinHL                                          ; $7107: $cf
	xor a                                            ; $7108: $af
	rst AddAOntoHL                                          ; $7109: $ef
	add hl, de                                       ; $710a: $19
	ld de, $9090                                     ; $710b: $11 $90 $90
	ret nc                                           ; $710e: $d0

	ld [hl], b                                       ; $710f: $70
	ld [hl], b                                       ; $7110: $70
	jr nc, jr_059_70f1                               ; $7111: $30 $de

jr_059_7113:
	rst $38                                          ; $7113: $ff
	add b                                            ; $7114: $80
	db $fc                                           ; $7115: $fc
	ld a, b                                          ; $7116: $78
	db $f4                                           ; $7117: $f4
	di                                               ; $7118: $f3
	or b                                             ; $7119: $b0
	dec b                                            ; $711a: $05
	adc d                                            ; $711b: $8a
	sub l                                            ; $711c: $95
	xor b                                            ; $711d: $a8
	add sp, -$28                                     ; $711e: $e8 $d8
	call c, $1aff                                    ; $7120: $dc $ff $1a
	sbc h                                            ; $7123: $9c
	db $f4                                           ; $7124: $f4
	db $f4                                           ; $7125: $f4
	ld a, b                                          ; $7126: $78
	jr c, jr_059_70e1                                ; $7127: $38 $b8

	ld a, b                                          ; $7129: $78
	rrca                                             ; $712a: $0f
	sub a                                            ; $712b: $97
	ld e, a                                          ; $712c: $5f
	cp a                                             ; $712d: $bf
	ld l, a                                          ; $712e: $6f
	cpl                                              ; $712f: $2f
	cpl                                              ; $7130: $2f
	rst AddAOntoHL                                          ; $7131: $ef
	ld h, h                                          ; $7132: $64
	ld [hl], d                                       ; $7133: $72
	sub b                                            ; $7134: $90
	ld a, [hl-]                                      ; $7135: $3a
	add hl, sp                                       ; $7136: $39
	dec a                                            ; $7137: $3d
	ld a, $3e                                        ; $7138: $3e $3e
	rst $38                                          ; $713a: $ff
	sbc a                                            ; $713b: $9f
	adc a                                            ; $713c: $8f
	rst JumpTable                                          ; $713d: $c7
	rst JumpTable                                          ; $713e: $c7
	jp $c1c1                                         ; $713f: $c3 $c1 $c1


	nop                                              ; $7142: $00
	rra                                              ; $7143: $1f
	db $dd                                           ; $7144: $dd
	rrca                                             ; $7145: $0f
	sbc h                                            ; $7146: $9c
	adc [hl]                                         ; $7147: $8e
	ld c, [hl]                                       ; $7148: $4e
	inc c                                            ; $7149: $0c
	ld a, c                                          ; $714a: $79
	or e                                             ; $714b: $b3
	rst SubAFromDE                                          ; $714c: $df
	ldh a, [$df]                                     ; $714d: $f0 $df
	pop af                                           ; $714f: $f1
	sbc [hl]                                         ; $7150: $9e
	di                                               ; $7151: $f3
	ld a, d                                          ; $7152: $7a
	ld a, [hl+]                                      ; $7153: $2a
	ld a, [hl]                                       ; $7154: $7e
	dec hl                                           ; $7155: $2b
	rst SubAFromDE                                          ; $7156: $df
	rlca                                             ; $7157: $07
	ld a, [hl]                                       ; $7158: $7e
	add e                                            ; $7159: $83
	rst SubAFromDE                                          ; $715a: $df
	rlca                                             ; $715b: $07
	sbc c                                            ; $715c: $99
	db $e3                                           ; $715d: $e3
	pop af                                           ; $715e: $f1
	ld hl, sp-$08                                    ; $715f: $f8 $f8
	db $fc                                           ; $7161: $fc
	ld a, a                                          ; $7162: $7f
	ld a, b                                          ; $7163: $78
	inc a                                            ; $7164: $3c
	ld a, e                                          ; $7165: $7b
	ld d, l                                          ; $7166: $55
	ld a, e                                          ; $7167: $7b
	dec d                                            ; $7168: $15
	ld a, l                                          ; $7169: $7d
	add sp, $7a                                      ; $716a: $e8 $7a
	ld b, c                                          ; $716c: $41
	sbc [hl]                                         ; $716d: $9e
	ld a, a                                          ; $716e: $7f
	call c, $9cf2                                    ; $716f: $dc $f2 $9c
	ld [hl], d                                       ; $7172: $72
	ld [hl-], a                                      ; $7173: $32
	add hl, de                                       ; $7174: $19
	call c, Call_059_7e0f                            ; $7175: $dc $0f $7e
	ldh a, [$9e]                                     ; $7178: $f0 $9e
	rst SubAFromBC                                          ; $717a: $e7
	ld a, e                                          ; $717b: $7b
	ld b, e                                          ; $717c: $43
	sub b                                            ; $717d: $90
	ld d, c                                          ; $717e: $51
	ld b, e                                          ; $717f: $43
	ld b, a                                          ; $7180: $47
	ld h, a                                          ; $7181: $67
	ld l, a                                          ; $7182: $6f
	rst GetHLinHL                                          ; $7183: $cf

Call_059_7184:
	rst AddAOntoHL                                          ; $7184: $ef
	rst AddAOntoHL                                          ; $7185: $ef
	xor [hl]                                         ; $7186: $ae
	cp h                                             ; $7187: $bc
	cp b                                             ; $7188: $b8
	sbc b                                            ; $7189: $98
	sub b                                            ; $718a: $90
	rra                                              ; $718b: $1f
	rra                                              ; $718c: $1f
	db $dd                                           ; $718d: $dd
	rst $38                                          ; $718e: $ff
	sbc h                                            ; $718f: $9c
	cp $f0                                           ; $7190: $fe $f0
	ldh [$73], a                                     ; $7192: $e0 $73
	ld a, [bc]                                       ; $7194: $0a
	sub h                                            ; $7195: $94
	ld bc, $380f                                     ; $7196: $01 $0f $38
	add sp, -$18                                     ; $7199: $e8 $e8
	ldh a, [$df]                                     ; $719b: $f0 $df
	and b                                            ; $719d: $a0
	ld b, b                                          ; $719e: $40
	add c                                            ; $719f: $81
	rst GetHLinHL                                          ; $71a0: $cf
	sbc $1f                                          ; $71a1: $de $1f
	ld a, l                                          ; $71a3: $7d
	add h                                            ; $71a4: $84
	ld a, a                                          ; $71a5: $7f
	rst SubAFromBC                                          ; $71a6: $e7
	sub h                                            ; $71a7: $94
	inc e                                            ; $71a8: $1c
	inc c                                            ; $71a9: $0c
	inc b                                            ; $71aa: $04
	ld bc, $10e1                                     ; $71ab: $01 $e1 $10
	db $fc                                           ; $71ae: $fc
	rst $38                                          ; $71af: $ff
	ldh [$f0], a                                     ; $71b0: $e0 $f0
	ld hl, sp+$7b                                    ; $71b2: $f8 $7b
	or b                                             ; $71b4: $b0
	ld a, a                                          ; $71b5: $7f
	and h                                            ; $71b6: $a4
	ld [hl], a                                       ; $71b7: $77
	db $ec                                           ; $71b8: $ec
	rst SubAFromDE                                          ; $71b9: $df
	cp $71                                           ; $71ba: $fe $71
	nop                                              ; $71bc: $00
	sbc $01                                          ; $71bd: $de $01
	rst SubAFromDE                                          ; $71bf: $df
	add b                                            ; $71c0: $80
	ld a, [hl]                                       ; $71c1: $7e
	call nz, $fe7f                                   ; $71c2: $c4 $7f $fe
	sbc e                                            ; $71c5: $9b
	xor e                                            ; $71c6: $ab
	rst SubAFromDE                                          ; $71c7: $df
	xor a                                            ; $71c8: $af
	rst SubAFromHL                                          ; $71c9: $d7
	reti                                             ; $71ca: $d9


	add b                                            ; $71cb: $80
	pop af                                           ; $71cc: $f1
	ld a, c                                          ; $71cd: $79
	ld e, c                                          ; $71ce: $59
	sbc d                                            ; $71cf: $9a
	dec bc                                           ; $71d0: $0b
	rla                                              ; $71d1: $17
	cpl                                              ; $71d2: $2f
	ld e, a                                          ; $71d3: $5f
	cp [hl]                                          ; $71d4: $be
	ld a, e                                          ; $71d5: $7b

jr_059_71d6:
	rst FarCall                                          ; $71d6: $f7
	add b                                            ; $71d7: $80
	rlca                                             ; $71d8: $07
	rrca                                             ; $71d9: $0f
	ld e, $3c                                        ; $71da: $1e $3c
	ld a, b                                          ; $71dc: $78
	ret z                                            ; $71dd: $c8

	or l                                             ; $71de: $b5
	jp z, Jump_059_7ebd                              ; $71df: $ca $bd $7e

	or a                                             ; $71e2: $b7
	ccf                                              ; $71e3: $3f
	rla                                              ; $71e4: $17
	ldh [$c0], a                                     ; $71e5: $e0 $c0
	ldh [$c0], a                                     ; $71e7: $e0 $c0
	add b                                            ; $71e9: $80
	ld b, b                                          ; $71ea: $40
	ld b, b                                          ; $71eb: $40
	jr nz, @-$54                                     ; $71ec: $20 $aa

	ld c, d                                          ; $71ee: $4a
	add d                                            ; $71ef: $82
	ld d, d                                          ; $71f0: $52
	xor d                                            ; $71f1: $aa
	ld c, d                                          ; $71f2: $4a
	jp hl                                            ; $71f3: $e9


	db $fd                                           ; $71f4: $fd
	rla                                              ; $71f5: $17
	rla                                              ; $71f6: $17
	ld a, b                                          ; $71f7: $78
	ret nc                                           ; $71f8: $d0

	ld a, e                                          ; $71f9: $7b
	jr c, jr_059_71d6                                ; $71fa: $38 $da

	inc bc                                           ; $71fc: $03
	sbc [hl]                                         ; $71fd: $9e
	ld bc, $ffd9                                     ; $71fe: $01 $d9 $ff
	sub a                                            ; $7201: $97
	ld [de], a                                       ; $7202: $12
	ld a, [bc]                                       ; $7203: $0a
	rlca                                             ; $7204: $07
	ld a, [de]                                       ; $7205: $1a
	ld h, d                                          ; $7206: $62
	add d                                            ; $7207: $82
	rst $38                                          ; $7208: $ff
	ld [bc], a                                       ; $7209: $02
	reti                                             ; $720a: $d9


	rst $38                                          ; $720b: $ff
	sub l                                            ; $720c: $95
	rst SubAFromDE                                          ; $720d: $df
	ld d, a                                          ; $720e: $57
	rst $38                                          ; $720f: $ff
	dec bc                                           ; $7210: $0b
	dec bc                                           ; $7211: $0b
	rlca                                             ; $7212: $07
	add l                                            ; $7213: $85
	ld h, d                                          ; $7214: $62
	ld sp, $ddba                                     ; $7215: $31 $ba $dd
	db $fc                                           ; $7218: $fc
	ld a, a                                          ; $7219: $7f
	ld l, [hl]                                       ; $721a: $6e
	rst SubAFromDE                                          ; $721b: $df
	ldh [$99], a                                     ; $721c: $e0 $99
	pop hl                                           ; $721e: $e1
	and e                                            ; $721f: $a3
	and a                                            ; $7220: $a7
	xor [hl]                                         ; $7221: $ae
	rst SubAFromDE                                          ; $7222: $df
	rst SubAFromHL                                          ; $7223: $d7
	sbc $bf                                          ; $7224: $de $bf
	sub b                                            ; $7226: $90
	cp $fd                                           ; $7227: $fe $fd
	ei                                               ; $7229: $fb
	rst FarCall                                          ; $722a: $f7
	ld hl, sp+$78                                    ; $722b: $f8 $78
	ld hl, sp-$18                                    ; $722d: $f8 $e8
	xor b                                            ; $722f: $a8
	jr z, jr_059_7246                                ; $7230: $28 $14

	db $f4                                           ; $7232: $f4
	ld a, [$afef]                                    ; $7233: $fa $ef $af
	ld a, d                                          ; $7236: $7a
	ld c, $df                                        ; $7237: $0e $df
	rst $38                                          ; $7239: $ff
	sbc [hl]                                         ; $723a: $9e
	rrca                                             ; $723b: $0f
	sbc $ff                                          ; $723c: $de $ff
	sbc [hl]                                         ; $723e: $9e
	ldh a, [rOCPD]                                   ; $723f: $f0 $6b
	ld l, e                                          ; $7241: $6b
	ld a, l                                          ; $7242: $7d
	ld h, b                                          ; $7243: $60
	sbc $ff                                          ; $7244: $de $ff

jr_059_7246:
	sbc d                                            ; $7246: $9a
	adc b                                            ; $7247: $88
	ret z                                            ; $7248: $c8

	add sp, -$17                                     ; $7249: $e8 $e9
	add hl, sp                                       ; $724b: $39
	ld a, d                                          ; $724c: $7a
	rst SubAFromDE                                          ; $724d: $df
	sbc d                                            ; $724e: $9a
	ld [hl], a                                       ; $724f: $77
	scf                                              ; $7250: $37
	rla                                              ; $7251: $17
	ld d, $c6                                        ; $7252: $16 $c6
	ld a, d                                          ; $7254: $7a
	rst SubAFromDE                                          ; $7255: $df
	ld a, c                                          ; $7256: $79
	call Call_059_7779                               ; $7257: $cd $79 $77
	rst $38                                          ; $725a: $ff
	ld a, c                                          ; $725b: $79
	cp l                                             ; $725c: $bd
	ld a, c                                          ; $725d: $79
	ld h, a                                          ; $725e: $67
	rst SubAFromDE                                          ; $725f: $df
	rst $38                                          ; $7260: $ff
	ld a, c                                          ; $7261: $79
	sbc $8d                                          ; $7262: $de $8d
	jr c, @+$1a                                      ; $7264: $38 $18

	inc b                                            ; $7266: $04
	ld [bc], a                                       ; $7267: $02
	ld bc, $1f3f                                     ; $7268: $01 $3f $1f
	rst GetHLinHL                                          ; $726b: $cf
	rst JumpTable                                          ; $726c: $c7
	rst SubAFromBC                                          ; $726d: $e7
	ei                                               ; $726e: $fb
	db $fd                                           ; $726f: $fd
	cp $09                                           ; $7270: $fe $09
	dec b                                            ; $7272: $05
	dec b                                            ; $7273: $05
	ld [bc], a                                       ; $7274: $02
	nop                                              ; $7275: $00
	ld a, e                                          ; $7276: $7b
	ret nc                                           ; $7277: $d0

	ld a, l                                          ; $7278: $7d
	jp nc, $f37f                                     ; $7279: $d2 $7f $f3

	ld a, a                                          ; $727c: $7f
	ld b, $7a                                        ; $727d: $06 $7a
	xor a                                            ; $727f: $af
	adc h                                            ; $7280: $8c
	ccf                                              ; $7281: $3f
	ld a, $2e                                        ; $7282: $3e $2e
	ld c, h                                          ; $7284: $4c
	ld e, b                                          ; $7285: $58
	sbc b                                            ; $7286: $98
	db $10                                           ; $7287: $10
	add b                                            ; $7288: $80
	ret nz                                           ; $7289: $c0

	pop bc                                           ; $728a: $c1
	pop de                                           ; $728b: $d1
	or e                                             ; $728c: $b3
	and a                                            ; $728d: $a7
	ld h, [hl]                                       ; $728e: $66
	db $ec                                           ; $728f: $ec
	add e                                            ; $7290: $83
	inc b                                            ; $7291: $04
	ld [$fd10], sp                                   ; $7292: $08 $10 $fd
	ld [hl], a                                       ; $7295: $77
	and h                                            ; $7296: $a4
	sbc [hl]                                         ; $7297: $9e
	push bc                                          ; $7298: $c5
	ld [hl], d                                       ; $7299: $72
	db $eb                                           ; $729a: $eb
	rst SubAFromDE                                          ; $729b: $df
	inc bc                                           ; $729c: $03
	db $fd                                           ; $729d: $fd
	rst SubAFromDE                                          ; $729e: $df
	cp $df                                           ; $729f: $fe $df
	db $fc                                           ; $72a1: $fc
	sbc e                                            ; $72a2: $9b
	rra                                              ; $72a3: $1f
	ld [bc], a                                       ; $72a4: $02
	nop                                              ; $72a5: $00
	nop                                              ; $72a6: $00
	ld l, l                                          ; $72a7: $6d
	dec bc                                           ; $72a8: $0b
	ld a, a                                          ; $72a9: $7f
	dec h                                            ; $72aa: $25
	db $fc                                           ; $72ab: $fc
	sub b                                            ; $72ac: $90
	ret nz                                           ; $72ad: $c0

	jr nc, jr_059_72b8                               ; $72ae: $30 $08

	cp a                                             ; $72b0: $bf
	ld a, a                                          ; $72b1: $7f
	sbc a                                            ; $72b2: $9f
	rst SubAFromDE                                          ; $72b3: $df
	cp $fe                                           ; $72b4: $fe $fe
	db $fd                                           ; $72b6: $fd
	ld sp, hl                                        ; $72b7: $f9

jr_059_72b8:
	ret nz                                           ; $72b8: $c0

	ret nz                                           ; $72b9: $c0

	ld h, b                                          ; $72ba: $60
	jr nz, jr_059_7338                               ; $72bb: $20 $7b

	call nc, $079e                                   ; $72bd: $d4 $9e $07
	halt                                             ; $72c0: $76
	ret nz                                           ; $72c1: $c0

	ld a, e                                          ; $72c2: $7b
	cp $9e                                           ; $72c3: $fe $9e
	ld d, l                                          ; $72c5: $55
	ld h, [hl]                                       ; $72c6: $66
	jp nz, $0043                                     ; $72c7: $c2 $43 $00

	sbc e                                            ; $72ca: $9b
	ld h, [hl]                                       ; $72cb: $66
	ld d, l                                          ; $72cc: $55
	ld d, l                                          ; $72cd: $55
	ld h, [hl]                                       ; $72ce: $66
	db $db                                           ; $72cf: $db
	ld [hl+], a                                      ; $72d0: $22
	sbc [hl]                                         ; $72d1: $9e
	ld h, l                                          ; $72d2: $65
	ld a, e                                          ; $72d3: $7b
	or $9e                                           ; $72d4: $f6 $9e
	ld h, d                                          ; $72d6: $62
	call c, $de22                                    ; $72d7: $dc $22 $de
	ld d, l                                          ; $72da: $55
	sbc e                                            ; $72db: $9b
	ld d, [hl]                                       ; $72dc: $56
	ld h, [hl]                                       ; $72dd: $66
	ld [hl+], a                                      ; $72de: $22
	ld h, $7b                                        ; $72df: $26 $7b
	di                                               ; $72e1: $f3
	ld [hl], e                                       ; $72e2: $73
	or $9d                                           ; $72e3: $f6 $9d
	ld h, d                                          ; $72e5: $62
	ld h, $7b                                        ; $72e6: $26 $7b
	sbc $de                                          ; $72e8: $de $de
	ld d, l                                          ; $72ea: $55
	call c, Call_059_7f66                            ; $72eb: $dc $66 $7f
	db $eb                                           ; $72ee: $eb
	ld h, a                                          ; $72ef: $67
	or $7f                                           ; $72f0: $f6 $7f
	push af                                          ; $72f2: $f5
	ld e, e                                          ; $72f3: $5b
	or $7f                                           ; $72f4: $f6 $7f
	jp c, Jump_059_779d                              ; $72f6: $da $9d $77

	ld b, [hl]                                       ; $72f9: $46
	ld l, e                                          ; $72fa: $6b
	or $9e                                           ; $72fb: $f6 $9e
	ld h, a                                          ; $72fd: $67
	ld l, e                                          ; $72fe: $6b
	or $9b                                           ; $72ff: $f6 $9b
	ld b, d                                          ; $7301: $42
	ld h, [hl]                                       ; $7302: $66
	ld h, a                                          ; $7303: $67
	ld [hl], h                                       ; $7304: $74
	ld l, a                                          ; $7305: $6f
	or $9e                                           ; $7306: $f6 $9e
	ld [hl+], a                                      ; $7308: $22
	ld h, e                                          ; $7309: $63
	or $b1                                           ; $730a: $f6 $b1
	adc e                                            ; $730c: $8b
	add e                                            ; $730d: $83
	nop                                              ; $730e: $00
	rrca                                             ; $730f: $0f
	ld a, [$0850]                                    ; $7310: $fa $50 $08
	jr jr_059_7325                                   ; $7313: $18 $10

	jr nc, @+$01                                     ; $7315: $30 $ff

	rst $38                                          ; $7317: $ff
	db $fc                                           ; $7318: $fc
	adc b                                            ; $7319: $88
	db $10                                           ; $731a: $10
	db $10                                           ; $731b: $10
	jr nc, @+$22                                     ; $731c: $30 $20

	rlca                                             ; $731e: $07
	ld hl, sp+$01                                    ; $731f: $f8 $01
	nop                                              ; $7321: $00
	ld bc, $0102                                     ; $7322: $01 $02 $01

jr_059_7325:
	ld [bc], a                                       ; $7325: $02
	rst $38                                          ; $7326: $ff
	rst $38                                          ; $7327: $ff
	ld bc, $dd01                                     ; $7328: $01 $01 $dd
	inc bc                                           ; $732b: $03
	sub h                                            ; $732c: $94
	db $fd                                           ; $732d: $fd
	xor c                                            ; $732e: $a9
	ld l, b                                          ; $732f: $68
	ret nc                                           ; $7330: $d0

	ld d, b                                          ; $7331: $50
	sub b                                            ; $7332: $90
	sub b                                            ; $7333: $90
	cp b                                             ; $7334: $b8
	db $fc                                           ; $7335: $fc
	ld hl, sp-$08                                    ; $7336: $f8 $f8

jr_059_7338:
	db $dd                                           ; $7338: $dd
	ldh a, [$80]                                     ; $7339: $f0 $80
	ret z                                            ; $733b: $c8

	ld bc, $e080                                     ; $733c: $01 $80 $e0
	ldh a, [$f8]                                     ; $733f: $f0 $f8
	cp $7f                                           ; $7341: $fe $7f
	ld a, a                                          ; $7343: $7f
	ld bc, $4080                                     ; $7344: $01 $80 $40
	ld h, b                                          ; $7347: $60
	jr nc, jr_059_7386                               ; $7348: $30 $3c

	rra                                              ; $734a: $1f
	rrca                                             ; $734b: $0f
	rst JumpTable                                          ; $734c: $c7
	ld c, $8c                                        ; $734d: $0e $8c
	jr @+$36                                         ; $734f: $18 $34

	and $c5                                          ; $7351: $e6 $c5
	adc d                                            ; $7353: $8a

jr_059_7354:
	add c                                            ; $7354: $81
	inc bc                                           ; $7355: $03
	rlca                                             ; $7356: $07
	rrca                                             ; $7357: $0f
	rra                                              ; $7358: $1f
	ld a, a                                          ; $7359: $7f
	rst SubAFromDE                                          ; $735a: $df
	rst $38                                          ; $735b: $ff
	add b                                            ; $735c: $80
	rra                                              ; $735d: $1f
	ccf                                              ; $735e: $3f
	ccf                                              ; $735f: $3f
	ld [hl], e                                       ; $7360: $73
	ld a, h                                          ; $7361: $7c
	cp $ff                                           ; $7362: $fe $ff
	ldh a, [$e0]                                     ; $7364: $f0 $e0
	ret nz                                           ; $7366: $c0

	ret nz                                           ; $7367: $c0

	adc h                                            ; $7368: $8c
	add e                                            ; $7369: $83
	ld bc, $cf00                                     ; $736a: $01 $00 $cf
	pop af                                           ; $736d: $f1
	ldh [$e8], a                                     ; $736e: $e0 $e8
	ldh [c], a                                       ; $7370: $e2
	pop bc                                           ; $7371: $c1
	nop                                              ; $7372: $00
	ld bc, $0e05                                     ; $7373: $01 $05 $0e
	rra                                              ; $7376: $1f
	rla                                              ; $7377: $17
	ld de, $e020                                     ; $7378: $11 $20 $e0
	ldh [$8e], a                                     ; $737b: $e0 $8e
	ldh [c], a                                       ; $737d: $e2
	ld a, [hl]                                       ; $737e: $7e
	db $fd                                           ; $737f: $fd
	db $fc                                           ; $7380: $fc
	ld a, [$7478]                                    ; $7381: $fa $78 $74
	jr nc, jr_059_7354                               ; $7384: $30 $ce

jr_059_7386:
	add c                                            ; $7386: $81
	ld [bc], a                                       ; $7387: $02
	ld [bc], a                                       ; $7388: $02
	inc b                                            ; $7389: $04
	add h                                            ; $738a: $84
	adc b                                            ; $738b: $88
	ret z                                            ; $738c: $c8

	jr nc, jr_059_73fe                               ; $738d: $30 $6f

	sbc d                                            ; $738f: $9a
	rst SubAFromDE                                          ; $7390: $df
	rlca                                             ; $7391: $07
	sbc l                                            ; $7392: $9d
	ld [bc], a                                       ; $7393: $02
	ld b, $de                                        ; $7394: $06 $de
	inc b                                            ; $7396: $04
	sbc d                                            ; $7397: $9a
	inc c                                            ; $7398: $0c
	ld [$ff08], sp                                   ; $7399: $08 $08 $ff
	rst $38                                          ; $739c: $ff
	call c, $9cdf                                    ; $739d: $dc $df $9c
	cp a                                             ; $73a0: $bf
	nop                                              ; $73a1: $00
	nop                                              ; $73a2: $00
	call c, $9b20                                    ; $73a3: $dc $20 $9b

jr_059_73a6:
	ld b, b                                          ; $73a6: $40
	inc c                                            ; $73a7: $0c
	add a                                            ; $73a8: $87
	add c                                            ; $73a9: $81
	call c, $9bc0                                    ; $73aa: $dc $c0 $9b
	db $e3                                           ; $73ad: $e3
	ld [hl], b                                       ; $73ae: $70
	ld a, b                                          ; $73af: $78
	ld a, $dd                                        ; $73b0: $3e $dd
	ccf                                              ; $73b2: $3f
	rst $38                                          ; $73b3: $ff
	sbc l                                            ; $73b4: $9d
	add b                                            ; $73b5: $80
	ret nz                                           ; $73b6: $c0

	sbc $40                                          ; $73b7: $de $40
	sub [hl]                                         ; $73b9: $96
	add e                                            ; $73ba: $83
	rst $38                                          ; $73bb: $ff
	rst $38                                          ; $73bc: $ff
	ld a, a                                          ; $73bd: $7f
	ccf                                              ; $73be: $3f
	ccf                                              ; $73bf: $3f
	cp a                                             ; $73c0: $bf
	cp h                                             ; $73c1: $bc
	ld a, b                                          ; $73c2: $78
	db $fd                                           ; $73c3: $fd
	ld a, a                                          ; $73c4: $7f
	ld d, d                                          ; $73c5: $52
	sbc l                                            ; $73c6: $9d
	inc b                                            ; $73c7: $04
	jr c, jr_059_73a6                                ; $73c8: $38 $dc

	rst $38                                          ; $73ca: $ff
	sub a                                            ; $73cb: $97
	cp $fc                                           ; $73cc: $fe $fc
	jr c, jr_059_740e                                ; $73ce: $38 $3e

	ld a, b                                          ; $73d0: $78
	ld [hl], b                                       ; $73d1: $70
	ret nz                                           ; $73d2: $c0

	add b                                            ; $73d3: $80
	ld a, e                                          ; $73d4: $7b
	db $ed                                           ; $73d5: $ed
	ld a, e                                          ; $73d6: $7b
	add b                                            ; $73d7: $80
	ld a, e                                          ; $73d8: $7b
	ld sp, hl                                        ; $73d9: $f9
	rst $38                                          ; $73da: $ff
	add b                                            ; $73db: $80
	db $e3                                           ; $73dc: $e3
	ldh [$71], a                                     ; $73dd: $e0 $71
	add hl, sp                                       ; $73df: $39
	ld a, [hl-]                                      ; $73e0: $3a
	ld a, e                                          ; $73e1: $7b
	ld [$7fd7], a                                    ; $73e2: $ea $d7 $7f
	cp a                                             ; $73e5: $bf
	ld e, a                                          ; $73e6: $5f
	cpl                                              ; $73e7: $2f
	rrca                                             ; $73e8: $0f
	cpl                                              ; $73e9: $2f
	ccf                                              ; $73ea: $3f
	ld a, a                                          ; $73eb: $7f
	ld [hl-], a                                      ; $73ec: $32
	di                                               ; $73ed: $f3
	sbc a                                            ; $73ee: $9f
	ld h, [hl]                                       ; $73ef: $66
	sbc e                                            ; $73f0: $9b
	ld a, [hl]                                       ; $73f1: $7e
	db $fc                                           ; $73f2: $fc
	db $f4                                           ; $73f3: $f4
	pop bc                                           ; $73f4: $c1
	db $fc                                           ; $73f5: $fc
	rst $38                                          ; $73f6: $ff
	db $fc                                           ; $73f7: $fc
	rst $38                                          ; $73f8: $ff
	db $ec                                           ; $73f9: $ec
	adc b                                            ; $73fa: $88
	add b                                            ; $73fb: $80
	jr c, @+$64                                      ; $73fc: $38 $62

jr_059_73fe:
	ei                                               ; $73fe: $fb
	inc b                                            ; $73ff: $04
	rst $38                                          ; $7400: $ff
	db $ec                                           ; $7401: $ec
	ld a, a                                          ; $7402: $7f
	ld sp, hl                                        ; $7403: $f9
	or b                                             ; $7404: $b0
	rst $38                                          ; $7405: $ff
	cp $ff                                           ; $7406: $fe $ff
	ld a, a                                          ; $7408: $7f
	rst $38                                          ; $7409: $ff
	ld d, e                                          ; $740a: $53
	and b                                            ; $740b: $a0
	ldh [$c9], a                                     ; $740c: $e0 $c9

jr_059_740e:
	sub e                                            ; $740e: $93
	rst $38                                          ; $740f: $ff
	halt                                             ; $7410: $76
	rst JumpTable                                          ; $7411: $c7
	db $fc                                           ; $7412: $fc
	or e                                             ; $7413: $b3
	call c, $ec76                                    ; $7414: $dc $76 $ec
	ld hl, sp-$71                                    ; $7417: $f8 $8f
	inc bc                                           ; $7419: $03
	rst $38                                          ; $741a: $ff
	add l                                            ; $741b: $85
	rst $38                                          ; $741c: $ff
	cp e                                             ; $741d: $bb
	ret nc                                           ; $741e: $d0

	adc b                                            ; $741f: $88

jr_059_7420:
	ld e, $67                                        ; $7420: $1e $67
	rst JumpTable                                          ; $7422: $c7
	adc e                                            ; $7423: $8b
	ld e, a                                          ; $7424: $5f
	or $30                                           ; $7425: $f6 $30
	ld a, b                                          ; $7427: $78
	xor $9d                                          ; $7428: $ee $9d
	inc a                                            ; $742a: $3c
	or $e7                                           ; $742b: $f6 $e7
	rst GetHLinHL                                          ; $742d: $cf
	cp a                                             ; $742e: $bf
	ld e, a                                          ; $742f: $5f
	cp a                                             ; $7430: $bf
	ld a, a                                          ; $7431: $7f
	cp a                                             ; $7432: $bf
	rst AddAOntoHL                                          ; $7433: $ef
	rst GetHLinHL                                          ; $7434: $cf
	rst GetHLinHL                                          ; $7435: $cf
	db $dd                                           ; $7436: $dd
	ld [$ea7e], sp                                   ; $7437: $08 $7e $ea
	sbc c                                            ; $743a: $99
	ld a, b                                          ; $743b: $78
	ld hl, sp+$70                                    ; $743c: $f8 $70
	jr nc, jr_059_7420                               ; $743e: $30 $e0

	ld h, b                                          ; $7440: $60
	ld a, e                                          ; $7441: $7b
	sub l                                            ; $7442: $95
	sbc e                                            ; $7443: $9b
	add b                                            ; $7444: $80
	jr nz, jr_059_74a7                               ; $7445: $20 $60

	ld b, b                                          ; $7447: $40
	ld a, e                                          ; $7448: $7b
	ld a, [$9eff]                                    ; $7449: $fa $ff $9e
	dec b                                            ; $744c: $05
	ld a, d                                          ; $744d: $7a
	call nz, $fe77                                   ; $744e: $c4 $77 $fe
	ld a, e                                          ; $7451: $7b
	dec l                                            ; $7452: $2d
	call c, $8307                                    ; $7453: $dc $07 $83
	xor h                                            ; $7456: $ac
	cp h                                             ; $7457: $bc
	cp a                                             ; $7458: $bf
	cp e                                             ; $7459: $bb
	db $eb                                           ; $745a: $eb
	db $d3                                           ; $745b: $d3
	sub a                                            ; $745c: $97
	or e                                             ; $745d: $b3
	ret z                                            ; $745e: $c8

	call nz, $decf                                   ; $745f: $c4 $cf $de
	cp [hl]                                          ; $7462: $be
	ldh a, [c]                                       ; $7463: $f2
	ldh a, [c]                                       ; $7464: $f2
	xor $37                                          ; $7465: $ee $37
	ld a, h                                          ; $7467: $7c
	db $e3                                           ; $7468: $e3
	ld e, $fd                                        ; $7469: $1e $fd
	ld a, [$eaf5]                                    ; $746b: $fa $f5 $ea
	ld c, $38                                        ; $746e: $0e $38
	ret nz                                           ; $7470: $c0

	ld bc, $cd76                                     ; $7471: $01 $76 $cd
	sub h                                            ; $7474: $94
	ld [hl], l                                       ; $7475: $75
	ld [$aad5], a                                    ; $7476: $ea $d5 $aa
	ld d, h                                          ; $7479: $54
	xor b                                            ; $747a: $a8
	ld e, h                                          ; $747b: $5c
	cp b                                             ; $747c: $b8
	rra                                              ; $747d: $1f
	ccf                                              ; $747e: $3f
	ld a, a                                          ; $747f: $7f

Call_059_7480:
	ld a, e                                          ; $7480: $7b
	ld b, c                                          ; $7481: $41
	ld a, [hl]                                       ; $7482: $7e
	ret                                              ; $7483: $c9


	sub h                                            ; $7484: $94
	ld [hl], c                                       ; $7485: $71
	cp a                                             ; $7486: $bf
	ld a, a                                          ; $7487: $7f
	db $fc                                           ; $7488: $fc
	ld h, b                                          ; $7489: $60
	nop                                              ; $748a: $00
	ld bc, $fe43                                     ; $748b: $01 $43 $fe
	call z, $7383                                    ; $748e: $cc $83 $73
	dec h                                            ; $7491: $25
	add b                                            ; $7492: $80
	db $eb                                           ; $7493: $eb
	rst FarCall                                          ; $7494: $f7
	or $b1                                           ; $7495: $f6 $b1
	ld d, e                                          ; $7497: $53
	db $e3                                           ; $7498: $e3
	ei                                               ; $7499: $fb
	rra                                              ; $749a: $1f
	inc d                                            ; $749b: $14
	ld [$ce09], sp                                   ; $749c: $08 $09 $ce
	ld l, h                                          ; $749f: $6c
	ld a, h                                          ; $74a0: $7c
	sbc h                                            ; $74a1: $9c
	inc c                                            ; $74a2: $0c
	add a                                            ; $74a3: $87
	ld h, b                                          ; $74a4: $60
	ld hl, sp-$02                                    ; $74a5: $f8 $fe

jr_059_74a7:
	rst $38                                          ; $74a7: $ff
	rst $38                                          ; $74a8: $ff
	ld a, e                                          ; $74a9: $7b
	ld a, e                                          ; $74aa: $7b
	ld a, b                                          ; $74ab: $78
	sbc h                                            ; $74ac: $9c
	ld b, $01                                        ; $74ad: $06 $01
	nop                                              ; $74af: $00
	nop                                              ; $74b0: $00
	add h                                            ; $74b1: $84
	sub [hl]                                         ; $74b2: $96
	add h                                            ; $74b3: $84
	add a                                            ; $74b4: $87
	rrca                                             ; $74b5: $0f
	rrca                                             ; $74b6: $0f
	ld e, $39                                        ; $74b7: $1e $39
	nop                                              ; $74b9: $00
	sub b                                            ; $74ba: $90
	and h                                            ; $74bb: $a4
	ld a, d                                          ; $74bc: $7a
	dec a                                            ; $74bd: $3d
	add b                                            ; $74be: $80
	ld h, c                                          ; $74bf: $61
	add $f9                                          ; $74c0: $c6 $f9
	ld h, b                                          ; $74c2: $60
	ld b, e                                          ; $74c3: $43
	cp a                                             ; $74c4: $bf
	cp [hl]                                          ; $74c5: $be
	ld a, b                                          ; $74c6: $78
	ld h, [hl]                                       ; $74c7: $66
	sbc [hl]                                         ; $74c8: $9e
	ld l, [hl]                                       ; $74c9: $6e
	ld c, $0e                                        ; $74ca: $0e $0e
	ld b, b                                          ; $74cc: $40
	ld b, c                                          ; $74cd: $41
	add a                                            ; $74ce: $87
	sbc c                                            ; $74cf: $99
	ld h, c                                          ; $74d0: $61
	sub c                                            ; $74d1: $91
	pop af                                           ; $74d2: $f1
	ld sp, $01c1                                     ; $74d3: $31 $c1 $01
	ldh [c], a                                       ; $74d6: $e2
	ldh [c], a                                       ; $74d7: $e2
	db $e4                                           ; $74d8: $e4
	ret z                                            ; $74d9: $c8

	ret z                                            ; $74da: $c8

	pop de                                           ; $74db: $d1
	ld a, $fe                                        ; $74dc: $3e $fe
	rst SubAFromDE                                          ; $74de: $df
	dec e                                            ; $74df: $1d
	sbc d                                            ; $74e0: $9a
	dec de                                           ; $74e1: $1b
	scf                                              ; $74e2: $37
	scf                                              ; $74e3: $37
	cpl                                              ; $74e4: $2f
	rlca                                             ; $74e5: $07
	ld a, e                                          ; $74e6: $7b
	adc h                                            ; $74e7: $8c
	add b                                            ; $74e8: $80
	rra                                              ; $74e9: $1f
	ld [hl], b                                       ; $74ea: $70
	and b                                            ; $74eb: $a0
	add b                                            ; $74ec: $80
	ldh a, [$f0]                                     ; $74ed: $f0 $f0
	pop hl                                           ; $74ef: $e1
	rst AddAOntoHL                                          ; $74f0: $ef
	ret nc                                           ; $74f1: $d0

	ldh [$c0], a                                     ; $74f2: $e0 $c0
	nop                                              ; $74f4: $00
	ld hl, sp-$34                                    ; $74f5: $f8 $cc

Call_059_74f7:
	add [hl]                                         ; $74f7: $86
	rlca                                             ; $74f8: $07
	db $eb                                           ; $74f9: $eb
	ld [hl], l                                       ; $74fa: $75
	dec sp                                           ; $74fb: $3b
	cpl                                              ; $74fc: $2f
	ld c, b                                          ; $74fd: $48
	add h                                            ; $74fe: $84
	ld [bc], a                                       ; $74ff: $02
	ld bc, $22c0                                     ; $7500: $01 $c0 $22
	inc d                                            ; $7503: $14
	jr jr_059_750d                                   ; $7504: $18 $07

	ld a, a                                          ; $7506: $7f
	db $fc                                           ; $7507: $fc
	add b                                            ; $7508: $80
	pop hl                                           ; $7509: $e1
	add a                                            ; $750a: $87
	adc a                                            ; $750b: $8f
	rst $38                                          ; $750c: $ff

jr_059_750d:
	rst $38                                          ; $750d: $ff
	nop                                              ; $750e: $00
	inc bc                                           ; $750f: $03
	rra                                              ; $7510: $1f
	ld a, a                                          ; $7511: $7f
	and $f8                                          ; $7512: $e6 $f8
	db $fc                                           ; $7514: $fc
	jp nc, $0fe7                                     ; $7515: $d2 $e7 $0f

	rrca                                             ; $7518: $0f
	rst AddAOntoHL                                          ; $7519: $ef
	cp $fa                                           ; $751a: $fe $fa
	cp $fe                                           ; $751c: $fe $fe
	db $fd                                           ; $751e: $fd
	ld sp, hl                                        ; $751f: $f9
	ld a, [$1afa]                                    ; $7520: $fa $fa $1a
	ld a, $4c                                        ; $7523: $3e $4c
	sbc h                                            ; $7525: $9c
	sbc b                                            ; $7526: $98
	ld d, h                                          ; $7527: $54

jr_059_7528:
	add b                                            ; $7528: $80
	jr c, jr_059_7557                                ; $7529: $38 $2c

	ld h, h                                          ; $752b: $64
	ld e, h                                          ; $752c: $5c
	db $ec                                           ; $752d: $ec
	ld a, b                                          ; $752e: $78
	inc c                                            ; $752f: $0c
	ld l, h                                          ; $7530: $6c
	ld a, h                                          ; $7531: $7c
	inc a                                            ; $7532: $3c
	inc h                                            ; $7533: $24
	ld a, h                                          ; $7534: $7c
	ld e, b                                          ; $7535: $58
	jr nc, jr_059_7528                               ; $7536: $30 $f0

	ldh [$60], a                                     ; $7538: $e0 $60
	ld b, c                                          ; $753a: $41
	inc bc                                           ; $753b: $03
	rlca                                             ; $753c: $07
	inc bc                                           ; $753d: $03
	rra                                              ; $753e: $1f
	ret nz                                           ; $753f: $c0

	ld b, b                                          ; $7540: $40
	ld b, c                                          ; $7541: $41
	ld bc, $0003                                     ; $7542: $01 $03 $00
	inc c                                            ; $7545: $0c
	rra                                              ; $7546: $1f
	call nc, $ff85                                   ; $7547: $d4 $85 $ff
	or [hl]                                          ; $754a: $b6
	ld e, l                                          ; $754b: $5d
	push af                                          ; $754c: $f5
	cp l                                             ; $754d: $bd
	dec a                                            ; $754e: $3d
	db $fd                                           ; $754f: $fd
	cp a                                             ; $7550: $bf
	or [hl]                                          ; $7551: $b6
	rst FarCall                                          ; $7552: $f7
	rst FarCall                                          ; $7553: $f7
	sbc a                                            ; $7554: $9f
	rra                                              ; $7555: $1f
	rla                                              ; $7556: $17

jr_059_7557:
	add a                                            ; $7557: $87
	ld l, e                                          ; $7558: $6b
	sub d                                            ; $7559: $92
	ld l, e                                          ; $755a: $6b
	add e                                            ; $755b: $83
	ld d, $2f                                        ; $755c: $16 $2f
	rst SubAFromDE                                          ; $755e: $df
	or e                                             ; $755f: $b3
	cp a                                             ; $7560: $bf
	ld a, a                                          ; $7561: $7f
	cp $7b                                           ; $7562: $fe $7b
	ld c, b                                          ; $7564: $48
	rst SubAFromDE                                          ; $7565: $df
	rst $38                                          ; $7566: $ff
	sbc [hl]                                         ; $7567: $9e
	ld c, a                                          ; $7568: $4f
	db $db                                           ; $7569: $db
	cpl                                              ; $756a: $2f
	sbc [hl]                                         ; $756b: $9e
	ccf                                              ; $756c: $3f
	jp c, $9ef8                                      ; $756d: $da $f8 $9e

	ldh a, [$f1]                                     ; $7570: $f0 $f1
	sub a                                            ; $7572: $97
	ld bc, $090a                                     ; $7573: $01 $0a $09
	ld a, [bc]                                       ; $7576: $0a
	dec e                                            ; $7577: $1d
	ld a, [de]                                       ; $7578: $1a
	dec [hl]                                         ; $7579: $35
	ld [hl-], a                                      ; $757a: $32
	reti                                             ; $757b: $d9


Call_059_757c:
	rlca                                             ; $757c: $07
	sub e                                            ; $757d: $93
	cp e                                             ; $757e: $bb
	ei                                               ; $757f: $fb
	ld c, e                                          ; $7580: $4b
	db $d3                                           ; $7581: $d3
	ld c, a                                          ; $7582: $4f
	cp $55                                           ; $7583: $fe $55
	xor d                                            ; $7585: $aa
	and $c6                                          ; $7586: $e6 $c6
	add $cf                                          ; $7588: $c6 $cf
	db $dd                                           ; $758a: $dd
	rst $38                                          ; $758b: $ff
	ld a, [hl]                                       ; $758c: $7e
	add $90                                          ; $758d: $c6 $90
	push de                                          ; $758f: $d5
	xor c                                            ; $7590: $a9
	ld d, c                                          ; $7591: $51
	and c                                            ; $7592: $a1
	ld b, c                                          ; $7593: $41
	add c                                            ; $7594: $81
	ccf                                              ; $7595: $3f
	ld a, a                                          ; $7596: $7f
	cp $fc                                           ; $7597: $fe $fc
	ld hl, sp-$10                                    ; $7599: $f8 $f0
	ret nz                                           ; $759b: $c0

	add b                                            ; $759c: $80
	ld a, b                                          ; $759d: $78
	ld [hl], c                                       ; $759e: $71
	ld l, c                                          ; $759f: $69
	rst SubAFromDE                                          ; $75a0: $df
	pop af                                           ; $75a1: $f1
	ld a, a                                          ; $75a2: $7f
	ld [hl], $fb                                     ; $75a3: $36 $fb
	sbc h                                            ; $75a5: $9c
	db $e3                                           ; $75a6: $e3
	and $e6                                          ; $75a7: $e6 $e6
	ld a, e                                          ; $75a9: $7b
	add sp, $7f                                      ; $75aa: $e8 $7f
	ld l, d                                          ; $75ac: $6a
	ld a, c                                          ; $75ad: $79
	and c                                            ; $75ae: $a1
	add b                                            ; $75af: $80
	ld [$1010], sp                                   ; $75b0: $08 $10 $10
	jr nz, jr_059_75d5                               ; $75b3: $20 $20

	inc c                                            ; $75b5: $0c
	rlca                                             ; $75b6: $07
	dec b                                            ; $75b7: $05
	rlca                                             ; $75b8: $07
	rlca                                             ; $75b9: $07
	ld [hl+], a                                      ; $75ba: $22
	ld hl, $0733                                     ; $75bb: $21 $33 $07
	inc b                                            ; $75be: $04
	ld b, $02                                        ; $75bf: $06 $02
	ld [bc], a                                       ; $75c1: $02
	inc bc                                           ; $75c2: $03
	inc bc                                           ; $75c3: $03
	ld bc, $1d39                                     ; $75c4: $01 $39 $1d
	call z, $f2e4                                    ; $75c7: $cc $e4 $f2
	cp b                                             ; $75ca: $b8
	xor h                                            ; $75cb: $ac
	xor b                                            ; $75cc: $a8
	add $e2                                          ; $75cd: $c6 $e2
	add b                                            ; $75cf: $80
	inc sp                                           ; $75d0: $33
	dec de                                           ; $75d1: $1b
	dec c                                            ; $75d2: $0d
	ld b, a                                          ; $75d3: $47
	ld d, e                                          ; $75d4: $53

jr_059_75d5:
	ld d, a                                          ; $75d5: $57
	ret nc                                           ; $75d6: $d0

	add sp, -$10                                     ; $75d7: $e8 $f0
	ld hl, sp-$05                                    ; $75d9: $f8 $fb
	ld a, l                                          ; $75db: $7d
	ld a, l                                          ; $75dc: $7d
	ld a, [hl]                                       ; $75dd: $7e
	jr nz, jr_059_75f7                               ; $75de: $20 $17

	ld [$0407], sp                                   ; $75e0: $08 $07 $04
	add d                                            ; $75e3: $82
	add d                                            ; $75e4: $82
	cp a                                             ; $75e5: $bf
	dec c                                            ; $75e6: $0d
	dec e                                            ; $75e7: $1d
	dec e                                            ; $75e8: $1d
	dec sp                                           ; $75e9: $3b
	dec sp                                           ; $75ea: $3b
	push af                                          ; $75eb: $f5
	db $f4                                           ; $75ec: $f4
	jp hl                                            ; $75ed: $e9


	jp nc, $228c                                     ; $75ee: $d2 $8c $22

	ldh [c], a                                       ; $75f1: $e2
	ld b, h                                          ; $75f2: $44
	call nz, $0b0a                                   ; $75f3: $c4 $0a $0b
	rla                                              ; $75f6: $17

jr_059_75f7:
	rst SubAFromHL                                          ; $75f7: $d7
	jp z, $b098                                      ; $75f8: $ca $98 $b0

	ld h, c                                          ; $75fb: $61
	jp $8c86                                         ; $75fc: $c3 $86 $8c


Call_059_75ff:
	ld l, $3c                                        ; $75ff: $2e $3c
	ld [hl], b                                       ; $7601: $70
	ld h, b                                          ; $7602: $60
	ld [hl], d                                       ; $7603: $72
	rra                                              ; $7604: $1f
	sbc h                                            ; $7605: $9c
	nop                                              ; $7606: $00
	ld b, b                                          ; $7607: $40
	add b                                            ; $7608: $80
	halt                                             ; $7609: $76
	ld b, a                                          ; $760a: $47
	ld sp, hl                                        ; $760b: $f9
	add e                                            ; $760c: $83
	scf                                              ; $760d: $37
	ld d, a                                          ; $760e: $57
	ld d, a                                          ; $760f: $57
	db $dd                                           ; $7610: $dd
	call c, $e4d8                                    ; $7611: $dc $d8 $e4
	or d                                             ; $7614: $b2
	dec c                                            ; $7615: $0d
	ld h, $27                                        ; $7616: $26 $27
	ld h, $28                                        ; $7618: $26 $28
	jr nc, jr_059_764c                               ; $761a: $30 $30

	ld h, b                                          ; $761c: $60
	ei                                               ; $761d: $fb
	ei                                               ; $761e: $fb

Call_059_761f:
	rst $38                                          ; $761f: $ff
	rst $38                                          ; $7620: $ff
	db $db                                           ; $7621: $db
	db $db                                           ; $7622: $db
	sbc e                                            ; $7623: $9b
	sbc e                                            ; $7624: $9b
	ld d, d                                          ; $7625: $52
	ld a, [bc]                                       ; $7626: $0a
	adc d                                            ; $7627: $8a
	adc d                                            ; $7628: $8a
	db $dd                                           ; $7629: $dd
	adc c                                            ; $762a: $89
	add b                                            ; $762b: $80
	db $e4                                           ; $762c: $e4
	ret c                                            ; $762d: $d8

	xor h                                            ; $762e: $ac
	call c, $f4d8                                    ; $762f: $dc $d8 $f4
	or $74                                           ; $7632: $f6 $74
	inc a                                            ; $7634: $3c
	ld a, h                                          ; $7635: $7c
	ld hl, sp+$78                                    ; $7636: $f8 $78
	ld a, h                                          ; $7638: $7c
	inc [hl]                                         ; $7639: $34
	inc h                                            ; $763a: $24
	ld h, $20                                        ; $763b: $26 $20
	ld [bc], a                                       ; $763d: $02
	rrca                                             ; $763e: $0f
	inc bc                                           ; $763f: $03
	ld a, [de]                                       ; $7640: $1a
	ld a, h                                          ; $7641: $7c
	ld a, $66                                        ; $7642: $3e $66
	stop                                             ; $7644: $10 $00
	ld [$300c], sp                                   ; $7646: $08 $0c $30
	jr c, jr_059_76c7                                ; $7649: $38 $7c

	add b                                            ; $764b: $80

jr_059_764c:
	ld a, [hl]                                       ; $764c: $7e
	dec l                                            ; $764d: $2d
	ld [hl], $13                                     ; $764e: $36 $13
	ccf                                              ; $7650: $3f
	dec [hl]                                         ; $7651: $35
	add hl, sp                                       ; $7652: $39
	rra                                              ; $7653: $1f
	rrca                                             ; $7654: $0f
	ld e, $1f                                        ; $7655: $1e $1f
	inc sp                                           ; $7657: $33
	ccf                                              ; $7658: $3f
	dec l                                            ; $7659: $2d
	jr jr_059_765c                                   ; $765a: $18 $00

jr_059_765c:
	nop                                              ; $765c: $00
	ld a, l                                          ; $765d: $7d
	ei                                               ; $765e: $fb
	rst $38                                          ; $765f: $ff
	ld a, e                                          ; $7660: $7b
	sub $d8                                          ; $7661: $d6 $d8
	cp a                                             ; $7663: $bf
	ld e, [hl]                                       ; $7664: $5e
	rst JumpTable                                          ; $7665: $c7
	rrca                                             ; $7666: $0f
	rra                                              ; $7667: $1f
	adc a                                            ; $7668: $8f
	cp a                                             ; $7669: $bf
	ccf                                              ; $766a: $3f
	sub l                                            ; $766b: $95

jr_059_766c:
	ld a, a                                          ; $766c: $7f
	rst FarCall                                          ; $766d: $f7

jr_059_766e:
	ld h, a                                          ; $766e: $67
	call $db39                                       ; $766f: $cd $39 $db
	cpl                                              ; $7672: $2f
	db $ed                                           ; $7673: $ed
	dec l                                            ; $7674: $2d
	xor c                                            ; $7675: $a9
	sbc $ff                                          ; $7676: $de $ff
	ld a, [hl]                                       ; $7678: $7e
	ld a, l                                          ; $7679: $7d
	rst SubAFromDE                                          ; $767a: $df
	ei                                               ; $767b: $fb
	sbc h                                            ; $767c: $9c
	ld a, a                                          ; $767d: $7f
	ld e, a                                          ; $767e: $5f
	ld e, a                                          ; $767f: $5f
	db $dd                                           ; $7680: $dd
	ld a, a                                          ; $7681: $7f
	rst SubAFromDE                                          ; $7682: $df
	rst $38                                          ; $7683: $ff
	sbc $f0                                          ; $7684: $de $f0
	ld [hl], l                                       ; $7686: $75
	dec e                                            ; $7687: $1d
	ld a, e                                          ; $7688: $7b
	ld l, a                                          ; $7689: $6f
	rst SubAFromDE                                          ; $768a: $df
	jr jr_059_766c                                   ; $768b: $18 $df

	jr c, jr_059_766e                                ; $768d: $38 $df

	ld a, b                                          ; $768f: $78
	ld sp, hl                                        ; $7690: $f9
	sbc d                                            ; $7691: $9a
	ld [hl], l                                       ; $7692: $75
	ld h, d                                          ; $7693: $62
	ld h, l                                          ; $7694: $65

jr_059_7695:
	ld b, d                                          ; $7695: $42
	dec b                                            ; $7696: $05
	cp $dc                                           ; $7697: $fe $dc
	rlca                                             ; $7699: $07

jr_059_769a:
	cp $7e                                           ; $769a: $fe $7e
	add $96                                          ; $769c: $c6 $96
	ld e, [hl]                                       ; $769e: $5e
	cp [hl]                                          ; $769f: $be
	ld a, $1e                                        ; $76a0: $3e $1e
	ld c, $0e                                        ; $76a2: $0e $0e
	rst $38                                          ; $76a4: $ff
	db $fc                                           ; $76a5: $fc
	ldh a, [$72]                                     ; $76a6: $f0 $72
	db $dd                                           ; $76a8: $dd
	call c, $f601                                    ; $76a9: $dc $01 $f6
	db $dd                                           ; $76ac: $dd
	pop hl                                           ; $76ad: $e1
	rst SubAFromDE                                          ; $76ae: $df
	pop bc                                           ; $76af: $c1
	ld h, e                                          ; $76b0: $63
	db $ed                                           ; $76b1: $ed
	ld a, h                                          ; $76b2: $7c
	ret z                                            ; $76b3: $c8

	ld a, e                                          ; $76b4: $7b
	xor d                                            ; $76b5: $aa
	ld a, e                                          ; $76b6: $7b
	xor c                                            ; $76b7: $a9
	sbc l                                            ; $76b8: $9d
	adc b                                            ; $76b9: $88
	jr nz, jr_059_769a                               ; $76ba: $20 $de

	ld b, b                                          ; $76bc: $40
	sbc $80                                          ; $76bd: $de $80
	sub [hl]                                         ; $76bf: $96
	nop                                              ; $76c0: $00
	inc sp                                           ; $76c1: $33

jr_059_76c2:
	dec sp                                           ; $76c2: $3b
	dec sp                                           ; $76c3: $3b
	ccf                                              ; $76c4: $3f
	dec e                                            ; $76c5: $1d
	dec e                                            ; $76c6: $1d

jr_059_76c7:
	ld e, $de                                        ; $76c7: $1e $de
	db $dd                                           ; $76c9: $dd
	ld bc, $03dd                                     ; $76ca: $01 $dd $03
	ld a, a                                          ; $76cd: $7f
	sbc $99                                          ; $76ce: $de $99
	inc bc                                           ; $76d0: $03
	ld b, $0c                                        ; $76d1: $06 $0c
	jr jr_059_7705                                   ; $76d3: $18 $30

	ld a, b                                          ; $76d5: $78
	ld [hl], h                                       ; $76d6: $74
	sub e                                            ; $76d7: $93
	ld a, [hl]                                       ; $76d8: $7e
	sbc b                                            ; $76d9: $98
	ld a, a                                          ; $76da: $7f
	db $d3                                           ; $76db: $d3
	sbc [hl]                                         ; $76dc: $9e
	pop hl                                           ; $76dd: $e1
	ld [hl], b                                       ; $76de: $70
	sbc d                                            ; $76df: $9a
	rst $38                                          ; $76e0: $ff
	sbc [hl]                                         ; $76e1: $9e
	pop bc                                           ; $76e2: $c1
	ld a, [$8197]                                    ; $76e3: $fa $97 $81
	pop bc                                           ; $76e6: $c1
	ld hl, $0911                                     ; $76e7: $21 $11 $09
	dec b                                            ; $76ea: $05
	inc bc                                           ; $76eb: $03
	inc bc                                           ; $76ec: $03
	ld a, b                                          ; $76ed: $78
	ld h, c                                          ; $76ee: $61
	ld a, a                                          ; $76ef: $7f
	dec hl                                           ; $76f0: $2b
	ld a, l                                          ; $76f1: $7d
	add sp, -$63                                     ; $76f2: $e8 $9d
	ld bc, $73b8                                     ; $76f4: $01 $b8 $73
	ld e, c                                          ; $76f7: $59
	rst FarCall                                          ; $76f8: $f7
	ld a, l                                          ; $76f9: $7d
	jr jr_059_7695                                   ; $76fa: $18 $99

	ld h, a                                          ; $76fc: $67
	rrca                                             ; $76fd: $0f
	rrca                                             ; $76fe: $0f
	ld c, $1d                                        ; $76ff: $0e $1d
	ld a, a                                          ; $7701: $7f
	ld l, a                                          ; $7702: $6f
	sub d                                            ; $7703: $92
	ld a, a                                          ; $7704: $7f

jr_059_7705:
	or h                                             ; $7705: $b4
	sub h                                            ; $7706: $94
	db $d3                                           ; $7707: $d3
	ld [hl], e                                       ; $7708: $73
	sub c                                            ; $7709: $91
	pop de                                           ; $770a: $d1
	add c                                            ; $770b: $81
	add e                                            ; $770c: $83
	add a                                            ; $770d: $87
	rra                                              ; $770e: $1f
	ld h, b                                          ; $770f: $60
	ret nz                                           ; $7710: $c0

	pop bc                                           ; $7711: $c1
	sbc $81                                          ; $7712: $de $81
	sbc l                                            ; $7714: $9d
	inc bc                                           ; $7715: $03
	ld [bc], a                                       ; $7716: $02
	sbc $9b                                          ; $7717: $de $9b
	rst SubAFromDE                                          ; $7719: $df
	xor e                                            ; $771a: $ab
	rst SubAFromDE                                          ; $771b: $df
	dec sp                                           ; $771c: $3b
	sub e                                            ; $771d: $93
	ld a, [hl+]                                      ; $771e: $2a
	add c                                            ; $771f: $81
	adc c                                            ; $7720: $89
	add hl, bc                                       ; $7721: $09
	ld bc, $0201                                     ; $7722: $01 $01 $02
	ld [bc], a                                       ; $7725: $02
	nop                                              ; $7726: $00
	ld [hl], d                                       ; $7727: $72
	ld [hl], d                                       ; $7728: $72
	ld [hl], e                                       ; $7729: $73
	sbc $71                                          ; $772a: $de $71
	sbc e                                            ; $772c: $9b
	ld [hl], a                                       ; $772d: $77
	ld a, c                                          ; $772e: $79
	ld [hl+], a                                      ; $772f: $22
	ld [hl+], a                                      ; $7730: $22
	db $dd                                           ; $7731: $dd
	ld hl, $4780                                     ; $7732: $21 $80 $47
	ld e, c                                          ; $7735: $59
	ld d, [hl]                                       ; $7736: $56
	ld c, h                                          ; $7737: $4c
	jr nz, @-$7d                                     ; $7738: $20 $81

	ldh [$1f], a                                     ; $773a: $e0 $1f
	ld h, $59                                        ; $773c: $26 $59
	ld l, h                                          ; $773e: $6c
	ld a, b                                          ; $773f: $78
	jr nc, jr_059_76c2                               ; $7740: $30 $80

	ld a, a                                          ; $7742: $7f
	ccf                                              ; $7743: $3f
	ld e, $39                                        ; $7744: $1e $39
	rlca                                             ; $7746: $07
	rrca                                             ; $7747: $0f
	ld a, [hl-]                                      ; $7748: $3a
	db $ed                                           ; $7749: $ed
	ei                                               ; $774a: $fb
	rst FarCall                                          ; $774b: $f7
	rst AddAOntoHL                                          ; $774c: $ef
	cp a                                             ; $774d: $bf
	nop                                              ; $774e: $00
	ld bc, $1f07                                     ; $774f: $01 $07 $1f
	rst $38                                          ; $7752: $ff
	sub d                                            ; $7753: $92
	rst $38                                          ; $7754: $ff
	cp a                                             ; $7755: $bf
	ccf                                              ; $7756: $3f
	cp [hl]                                          ; $7757: $be
	ld l, e                                          ; $7758: $6b
	cp e                                             ; $7759: $bb
	rst FarCall                                          ; $775a: $f7
	or l                                             ; $775b: $b5
	ld [hl], a                                       ; $775c: $77
	ld l, [hl]                                       ; $775d: $6e
	ld a, e                                          ; $775e: $7b
	rst SubAFromBC                                          ; $775f: $e7
	sbc $de                                          ; $7760: $de $de
	cp $96                                           ; $7762: $fe $96
	db $fc                                           ; $7764: $fc
	db $fd                                           ; $7765: $fd
	db $fd                                           ; $7766: $fd
	add hl, bc                                       ; $7767: $09
	inc bc                                           ; $7768: $03
	inc bc                                           ; $7769: $03
	ld d, a                                          ; $776a: $57
	ld d, a                                          ; $776b: $57
	sbc a                                            ; $776c: $9f
	ld a, d                                          ; $776d: $7a
	or [hl]                                          ; $776e: $b6
	sbc h                                            ; $776f: $9c
	ld a, [hl]                                       ; $7770: $7e
	cp $fc                                           ; $7771: $fe $fc
	ld [hl], a                                       ; $7773: $77
	ld c, a                                          ; $7774: $4f
	ld a, b                                          ; $7775: $78
	add l                                            ; $7776: $85
	ld a, h                                          ; $7777: $7c
	adc a                                            ; $7778: $8f

Call_059_7779:
	ld a, [hl]                                       ; $7779: $7e
	db $eb                                           ; $777a: $eb
	sbc d                                            ; $777b: $9a
	ld d, l                                          ; $777c: $55
	dec b                                            ; $777d: $05
	ld a, [bc]                                       ; $777e: $0a
	dec d                                            ; $777f: $15
	ld a, [hl+]                                      ; $7780: $2a
	ld a, e                                          ; $7781: $7b
	ld sp, hl                                        ; $7782: $f9
	sbc l                                            ; $7783: $9d
	xor d                                            ; $7784: $aa
	ld [hl], b                                       ; $7785: $70
	ld a, d                                          ; $7786: $7a
	cp b                                             ; $7787: $b8
	sbc $e0                                          ; $7788: $de $e0
	ld h, l                                          ; $778a: $65
	pop bc                                           ; $778b: $c1
	ldh a, [$df]                                     ; $778c: $f0 $df
	ld b, $de                                        ; $778e: $06 $de
	ld [bc], a                                       ; $7790: $02
	sbc [hl]                                         ; $7791: $9e
	ld b, $72                                        ; $7792: $06 $72
	or l                                             ; $7794: $b5
	db $ec                                           ; $7795: $ec
	ld a, l                                          ; $7796: $7d
	push af                                          ; $7797: $f5
	sbc c                                            ; $7798: $99
	dec b                                            ; $7799: $05
	dec bc                                           ; $779a: $0b
	dec bc                                           ; $779b: $0b
	inc bc                                           ; $779c: $03

Jump_059_779d:
	rlca                                             ; $779d: $07
	rlca                                             ; $779e: $07
	ld a, e                                          ; $779f: $7b
	ld d, e                                          ; $77a0: $53
	rst SubAFromDE                                          ; $77a1: $df
	inc b                                            ; $77a2: $04
	sub d                                            ; $77a3: $92
	inc c                                            ; $77a4: $0c
	ld [$9008], sp                                   ; $77a5: $08 $08 $90
	sub c                                            ; $77a8: $91
	or c                                             ; $77a9: $b1
	and c                                            ; $77aa: $a1
	db $e3                                           ; $77ab: $e3
	jp $cfc7                                         ; $77ac: $c3 $c7 $cf


	nop                                              ; $77af: $00
	nop                                              ; $77b0: $00
	sbc $80                                          ; $77b1: $de $80
	ld a, h                                          ; $77b3: $7c
	db $eb                                           ; $77b4: $eb
	sbc [hl]                                         ; $77b5: $9e
	ld b, b                                          ; $77b6: $40
	ld h, [hl]                                       ; $77b7: $66
	ret c                                            ; $77b8: $d8

	ld [hl], a                                       ; $77b9: $77
	ldh [$7d], a                                     ; $77ba: $e0 $7d
	ld l, a                                          ; $77bc: $6f
	ld a, [hl]                                       ; $77bd: $7e
	xor d                                            ; $77be: $aa
	ld h, [hl]                                       ; $77bf: $66
	push af                                          ; $77c0: $f5
	ld h, d                                          ; $77c1: $62
	db $ed                                           ; $77c2: $ed
	sbc l                                            ; $77c3: $9d
	ld e, $70                                        ; $77c4: $1e $70
	ld a, e                                          ; $77c6: $7b
	db $fc                                           ; $77c7: $fc
	ld a, a                                          ; $77c8: $7f
	ld h, c                                          ; $77c9: $61
	ld h, c                                          ; $77ca: $61
	nop                                              ; $77cb: $00
	ld l, [hl]                                       ; $77cc: $6e
	halt                                             ; $77cd: $76
	ld a, l                                          ; $77ce: $7d
	sbc h                                            ; $77cf: $9c
	ld sp, hl                                        ; $77d0: $f9
	adc l                                            ; $77d1: $8d
	add b                                            ; $77d2: $80
	pop bc                                           ; $77d3: $c1
	ld a, [hl]                                       ; $77d4: $7e
	ld h, b                                          ; $77d5: $60
	jr nz, jr_059_7808                               ; $77d6: $20 $30

	stop                                             ; $77d8: $10 $00
	add b                                            ; $77da: $80
	jp $3f7f                                         ; $77db: $c3 $7f $3f


	ccf                                              ; $77de: $3f
	rra                                              ; $77df: $1f
	rra                                              ; $77e0: $1f
	ld a, b                                          ; $77e1: $78
	rrca                                             ; $77e2: $0f

Jump_059_77e3:
	rst $38                                          ; $77e3: $ff
	sbc $01                                          ; $77e4: $de $01
	ld a, a                                          ; $77e6: $7f
	or h                                             ; $77e7: $b4
	rst $38                                          ; $77e8: $ff
	db $dd                                           ; $77e9: $dd
	rst $38                                          ; $77ea: $ff
	ld a, a                                          ; $77eb: $7f
	and h                                            ; $77ec: $a4
	sub h                                            ; $77ed: $94
	rra                                              ; $77ee: $1f
	ld h, [hl]                                       ; $77ef: $66
	add [hl]                                         ; $77f0: $86
	inc c                                            ; $77f1: $0c
	dec c                                            ; $77f2: $0d
	sbc c                                            ; $77f3: $99
	ld [hl-], a                                      ; $77f4: $32
	ld h, [hl]                                       ; $77f5: $66
	ld a, [hl]                                       ; $77f6: $7e
	db $e4                                           ; $77f7: $e4
	add h                                            ; $77f8: $84
	ld a, e                                          ; $77f9: $7b
	add e                                            ; $77fa: $83
	ld a, a                                          ; $77fb: $7f
	and b                                            ; $77fc: $a0
	sub a                                            ; $77fd: $97
	ld l, d                                          ; $77fe: $6a
	ld d, d                                          ; $77ff: $52
	ld d, [hl]                                       ; $7800: $56
	sub h                                            ; $7801: $94
	and h                                            ; $7802: $a4
	ld bc, $0909                                     ; $7803: $01 $09 $09
	ld l, e                                          ; $7806: $6b
	or e                                             ; $7807: $b3

jr_059_7808:
	sub c                                            ; $7808: $91
	inc bc                                           ; $7809: $03
	pop hl                                           ; $780a: $e1
	pop de                                           ; $780b: $d1
	push af                                          ; $780c: $f5
	cp c                                             ; $780d: $b9
	ret                                              ; $780e: $c9


	add e                                            ; $780f: $83
	add a                                            ; $7810: $87
	ld b, $79                                        ; $7811: $06 $79
	ld l, c                                          ; $7813: $69
	ld c, c                                          ; $7814: $49
	push bc                                          ; $7815: $c5
	add l                                            ; $7816: $85
	ld a, e                                          ; $7817: $7b
	inc [hl]                                         ; $7818: $34
	add b                                            ; $7819: $80
	db $e3                                           ; $781a: $e3
	rst SubAFromBC                                          ; $781b: $e7
	and a                                            ; $781c: $a7
	dec l                                            ; $781d: $2d
	add hl, sp                                       ; $781e: $39
	or e                                             ; $781f: $b3
	and [hl]                                         ; $7820: $a6
	ld l, h                                          ; $7821: $6c
	ld [hl+], a                                      ; $7822: $22
	ld h, h                                          ; $7823: $64
	db $ec                                           ; $7824: $ec
	ld hl, sp+$70                                    ; $7825: $f8 $70
	ld hl, $4422                                     ; $7827: $21 $22 $44
	ld d, e                                          ; $782a: $53

jr_059_782b:
	pop de                                           ; $782b: $d1
	and [hl]                                         ; $782c: $a6
	ld c, b                                          ; $782d: $48
	sub b                                            ; $782e: $90
	ld bc, $3702                                     ; $782f: $01 $02 $37
	ld a, a                                          ; $7832: $7f
	or a                                             ; $7833: $b7
	ld h, c                                          ; $7834: $61
	pop bc                                           ; $7835: $c1
	add c                                            ; $7836: $81
	ld bc, $9a02                                     ; $7837: $01 $02 $9a
	rlca                                             ; $783a: $07
	ld sp, hl                                        ; $783b: $f9
	ld a, [$f5fa]                                    ; $783c: $fa $fa $f5
	halt                                             ; $783f: $76
	ld b, h                                          ; $7840: $44
	sub h                                            ; $7841: $94
	rst AddAOntoHL                                          ; $7842: $ef
	rst GetHLinHL                                          ; $7843: $cf
	adc a                                            ; $7844: $8f
	sbc a                                            ; $7845: $9f
	sbc [hl]                                         ; $7846: $9e
	ld b, b                                          ; $7847: $40
	jr nz, jr_059_785a                               ; $7848: $20 $10

	ld b, b                                          ; $784a: $40
	ld c, [hl]                                       ; $784b: $4e
	add c                                            ; $784c: $81
	db $fc                                           ; $784d: $fc
	sbc l                                            ; $784e: $9d
	rst $38                                          ; $784f: $ff
	pop af                                           ; $7850: $f1
	ld [hl], b                                       ; $7851: $70
	ld b, c                                          ; $7852: $41
	sbc c                                            ; $7853: $99
	rst $38                                          ; $7854: $ff
	xor d                                            ; $7855: $aa
	dec d                                            ; $7856: $15
	jp nz, $0738                                     ; $7857: $c2 $38 $07

jr_059_785a:
	ld a, e                                          ; $785a: $7b
	ld h, e                                          ; $785b: $63
	sbc d                                            ; $785c: $9a
	ld d, l                                          ; $785d: $55
	ld [$c73d], a                                    ; $785e: $ea $3d $c7
	ld hl, sp+$7b                                    ; $7861: $f8 $7b
	db $ed                                           ; $7863: $ed

jr_059_7864:
	sbc d                                            ; $7864: $9a
	ret nz                                           ; $7865: $c0

	add $87                                          ; $7866: $c6 $87
	add e                                            ; $7868: $83
	add e                                            ; $7869: $83
	ld d, c                                          ; $786a: $51
	xor [hl]                                         ; $786b: $ae
	ld a, a                                          ; $786c: $7f
	ld d, [hl]                                       ; $786d: $56
	rst SubAFromDE                                          ; $786e: $df
	ret nz                                           ; $786f: $c0

	sbc [hl]                                         ; $7870: $9e
	ldh [$60], a                                     ; $7871: $e0 $60
	jr z, jr_059_78f2                                ; $7873: $28 $7d

	db $fd                                           ; $7875: $fd
	ld a, b                                          ; $7876: $78
	adc e                                            ; $7877: $8b

Call_059_7878:
	sbc e                                            ; $7878: $9b
	ld bc, $7f04                                     ; $7879: $01 $04 $7f
	nop                                              ; $787c: $00
	sbc $04                                          ; $787d: $de $04
	rst SubAFromDE                                          ; $787f: $df
	ld b, $9e                                        ; $7880: $06 $9e
	inc bc                                           ; $7882: $03
	ld [hl], e                                       ; $7883: $73
	jr jr_059_7864                                   ; $7884: $18 $de

	add c                                            ; $7886: $81
	sbc [hl]                                         ; $7887: $9e

Jump_059_7888:
	ld b, b                                          ; $7888: $40
	db $fc                                           ; $7889: $fc
	rst SubAFromDE                                          ; $788a: $df
	jr nz, jr_059_782b                               ; $788b: $20 $9e

	sub c                                            ; $788d: $91
	ld [hl], l                                       ; $788e: $75
	call c, $0d9b                                    ; $788f: $dc $9b $0d
	rra                                              ; $7892: $1f
	ccf                                              ; $7893: $3f

Call_059_7894:
	cp a                                             ; $7894: $bf
	ld h, l                                          ; $7895: $65
	ld h, [hl]                                       ; $7896: $66
	ld [hl], e                                       ; $7897: $73
	dec hl                                           ; $7898: $2b
	ld a, d                                          ; $7899: $7a
	rst GetHLinHL                                          ; $789a: $cf
	sbc [hl]                                         ; $789b: $9e

Call_059_789c:
	add b                                            ; $789c: $80
	ld a, e                                          ; $789d: $7b
	ld [hl], e                                       ; $789e: $73
	ld a, d                                          ; $789f: $7a
	rst GetHLinHL                                          ; $78a0: $cf
	sbc [hl]                                         ; $78a1: $9e
	and b                                            ; $78a2: $a0
	ld h, l                                          ; $78a3: $65
	call nz, $bd59                                   ; $78a4: $c4 $59 $bd
	ld a, c                                          ; $78a7: $79
	ret                                              ; $78a8: $c9


	sbc l                                            ; $78a9: $9d
	rrca                                             ; $78aa: $0f
	ccf                                              ; $78ab: $3f
	ld sp, hl                                        ; $78ac: $f9
	rst SubAFromDE                                          ; $78ad: $df
	ld a, a                                          ; $78ae: $7f
	rst SubAFromDE                                          ; $78af: $df
	ld sp, hl                                        ; $78b0: $f9
	sub e                                            ; $78b1: $93
	di                                               ; $78b2: $f3
	rst SubAFromBC                                          ; $78b3: $e7
	rst $38                                          ; $78b4: $ff
	rst $38                                          ; $78b5: $ff
	nop                                              ; $78b6: $00
	ld b, $0e                                        ; $78b7: $06 $0e
	ld c, $1c                                        ; $78b9: $0e $1c
	jr c, @+$22                                      ; $78bb: $38 $20

	ld h, b                                          ; $78bd: $60
	call c, $de80                                    ; $78be: $dc $80 $de
	ret nz                                           ; $78c1: $c0

	ld sp, hl                                        ; $78c2: $f9
	rst SubAFromDE                                          ; $78c3: $df
	ld [$0c9c], sp                                   ; $78c4: $08 $9c $0c
	inc b                                            ; $78c7: $04
	ld b, $de                                        ; $78c8: $06 $de
	dec b                                            ; $78ca: $05
	rst SubAFromDE                                          ; $78cb: $df
	rrca                                             ; $78cc: $0f
	sbc $07                                          ; $78cd: $de $07

Call_059_78cf:
	sbc [hl]                                         ; $78cf: $9e
	dec b                                            ; $78d0: $05
	sbc $04                                          ; $78d1: $de $04
	sub a                                            ; $78d3: $97
	ld [$0c0f], sp                                   ; $78d4: $08 $0f $0c
	add hl, de                                       ; $78d7: $19
	rra                                              ; $78d8: $1f
	xor l                                            ; $78d9: $ad
	and c                                            ; $78da: $a1
	db $fc                                           ; $78db: $fc
	sbc $f8                                          ; $78dc: $de $f8
	db $dd                                           ; $78de: $dd
	pop af                                           ; $78df: $f1
	sbc l                                            ; $78e0: $9d

Jump_059_78e1:
	ld h, h                                          ; $78e1: $64
	ret z                                            ; $78e2: $c8

	ld l, a                                          ; $78e3: $6f
	sbc [hl]                                         ; $78e4: $9e
	ld [hl], c                                       ; $78e5: $71
	inc de                                           ; $78e6: $13
	cp $94                                           ; $78e7: $fe $94
	ld a, [de]                                       ; $78e9: $1a
	ld d, $34                                        ; $78ea: $16 $34
	inc l                                            ; $78ec: $2c
	ld a, b                                          ; $78ed: $78
	ld a, b                                          ; $78ee: $78
	ldh a, [$f0]                                     ; $78ef: $f0 $f0
	inc bc                                           ; $78f1: $03

jr_059_78f2:
	ld [bc], a                                       ; $78f2: $02
	ld b, $7a                                        ; $78f3: $06 $7a
	ld sp, $189b                                     ; $78f5: $31 $9b $18
	db $10                                           ; $78f8: $10
	ld [bc], a                                       ; $78f9: $02
	ld [bc], a                                       ; $78fa: $02
	sbc $03                                          ; $78fb: $de $03
	ld a, l                                          ; $78fd: $7d
	sbc e                                            ; $78fe: $9b
	sbc [hl]                                         ; $78ff: $9e
	rra                                              ; $7900: $1f
	ld a, e                                          ; $7901: $7b
	ld hl, sp-$21                                    ; $7902: $f8 $df
	ld [bc], a                                       ; $7904: $02
	ld a, a                                          ; $7905: $7f
	xor $93                                          ; $7906: $ee $93
	add hl, sp                                       ; $7908: $39
	ld hl, sp-$10                                    ; $7909: $f8 $f0
	pop hl                                           ; $790b: $e1
	jp $0f87                                         ; $790c: $c3 $87 $0f


	dec de                                           ; $790f: $1b
	scf                                              ; $7910: $37
	adc b                                            ; $7911: $88
	sbc b                                            ; $7912: $98
	jr nc, jr_059_7987                               ; $7913: $30 $72

	inc sp                                           ; $7915: $33
	adc e                                            ; $7916: $8b
	ld a, c                                          ; $7917: $79
	rst SubAFromBC                                          ; $7918: $e7
	db $dd                                           ; $7919: $dd
	di                                               ; $791a: $f3
	xor $fd                                          ; $791b: $ee $fd
	rst FarCall                                          ; $791d: $f7
	xor $18                                          ; $791e: $ee $18
	ld h, $4b                                        ; $7920: $26 $4b
	jr nc, @+$29                                     ; $7922: $30 $27

	ld c, e                                          ; $7924: $4b
	ld [hl], b                                       ; $7925: $70
	ld h, a                                          ; $7926: $67
	call z, $f1e2                                    ; $7927: $cc $e2 $f1
	ld sp, hl                                        ; $792a: $f9
	sbc $fd                                          ; $792b: $de $fd
	sub [hl]                                         ; $792d: $96
	rst $38                                          ; $792e: $ff
	rst GetHLinHL                                          ; $792f: $cf
	inc hl                                           ; $7930: $23
	sub c                                            ; $7931: $91
	add hl, bc                                       ; $7932: $09
	dec b                                            ; $7933: $05
	add l                                            ; $7934: $85
	dec c                                            ; $7935: $0d
	rrca                                             ; $7936: $0f
	ld l, a                                          ; $7937: $6f
	ld d, b                                          ; $7938: $50
	sbc l                                            ; $7939: $9d
	inc b                                            ; $793a: $04
	adc b                                            ; $793b: $88
	ld l, [hl]                                       ; $793c: $6e
	ld d, d                                          ; $793d: $52
	ld a, a                                          ; $793e: $7f
	jp nz, Jump_059_4d77                             ; $793f: $c2 $77 $4d

	ld [hl], d                                       ; $7942: $72
	or b                                             ; $7943: $b0
	rst SubAFromDE                                          ; $7944: $df
	rst $38                                          ; $7945: $ff
	call c, $8e80                                    ; $7946: $dc $80 $8e
	nop                                              ; $7949: $00
	ldh a, [$bc]                                     ; $794a: $f0 $bc
	rst $38                                          ; $794c: $ff
	ld h, a                                          ; $794d: $67
	dec a                                            ; $794e: $3d
	rrca                                             ; $794f: $0f
	ld b, $00                                        ; $7950: $06 $00
	nop                                              ; $7952: $00
	ret nz                                           ; $7953: $c0

	ld a, b                                          ; $7954: $78
	ld a, $13                                        ; $7955: $3e $13
	ld [$7c04], sp                                   ; $7957: $08 $04 $7c
	ld a, d                                          ; $795a: $7a
	add h                                            ; $795b: $84
	sbc e                                            ; $795c: $9b
	adc a                                            ; $795d: $8f
	jp $bdf1                                         ; $795e: $c3 $f1 $bd


	ld l, [hl]                                       ; $7961: $6e
	pop af                                           ; $7962: $f1
	add b                                            ; $7963: $80
	pop bc                                           ; $7964: $c1
	ld [hl], b                                       ; $7965: $70
	add e                                            ; $7966: $83
	daa                                              ; $7967: $27
	ld a, b                                          ; $7968: $78
	pop hl                                           ; $7969: $e1
	add $9c                                          ; $796a: $c6 $9c
	ldh a, [$c7]                                     ; $796c: $f0 $c7
	add b                                            ; $796e: $80
	jr nz, @+$32                                     ; $796f: $20 $30

	ld h, b                                          ; $7971: $60
	add [hl]                                         ; $7972: $86
	jr jr_059_79d5                                   ; $7973: $18 $60

jr_059_7975:
	add e                                            ; $7975: $83
	add b                                            ; $7976: $80
	ret nz                                           ; $7977: $c0

	ld h, b                                          ; $7978: $60
	ldh a, [rSVBK]                                   ; $7979: $f0 $70
	jr c, jr_059_7975                                ; $797b: $38 $f8

	ccf                                              ; $797d: $3f

Call_059_797e:
	reti                                             ; $797e: $d9


	ld l, h                                          ; $797f: $6c
	ld h, $13                                        ; $7980: $26 $13
	dec de                                           ; $7982: $1b
	ld a, e                                          ; $7983: $7b
	dec hl                                           ; $7984: $2b
	sub a                                            ; $7985: $97
	cp a                                             ; $7986: $bf

jr_059_7987:
	sbc a                                            ; $7987: $9f
	rst SubAFromDE                                          ; $7988: $df
	ld e, h                                          ; $7989: $5c
	ld a, b                                          ; $798a: $78
	jr c, @+$28                                      ; $798b: $38 $26

	db $d3                                           ; $798d: $d3
	ld a, d                                          ; $798e: $7a
	sub [hl]                                         ; $798f: $96
	ld a, [hl]                                       ; $7990: $7e
	jp nc, $989c                                     ; $7991: $d2 $9c $98

	db $e4                                           ; $7994: $e4
	jp nz, Jump_059_4374                             ; $7995: $c2 $74 $43

	sbc e                                            ; $7998: $9b
	ld b, b                                          ; $7999: $40
	inc hl                                           ; $799a: $23
	rra                                              ; $799b: $1f
	rrca                                             ; $799c: $0f
	ld a, e                                          ; $799d: $7b
	ld h, h                                          ; $799e: $64
	ld a, a                                          ; $799f: $7f
	ld hl, sp+$7e                                    ; $79a0: $f8 $7e
	ld b, c                                          ; $79a2: $41
	sbc [hl]                                         ; $79a3: $9e
	ld [$e978], sp                                   ; $79a4: $08 $78 $e9
	sbc [hl]                                         ; $79a7: $9e
	ld a, a                                          ; $79a8: $7f
	db $dd                                           ; $79a9: $dd
	rst $38                                          ; $79aa: $ff
	ld h, [hl]                                       ; $79ab: $66
	push bc                                          ; $79ac: $c5
	sbc $ff                                          ; $79ad: $de $ff
	sbc d                                            ; $79af: $9a
	db $fd                                           ; $79b0: $fd
	ld a, [$e4f2]                                    ; $79b1: $fa $f2 $e4
	add [hl]                                         ; $79b4: $86
	ld a, e                                          ; $79b5: $7b
	ld l, e                                          ; $79b6: $6b
	ld a, e                                          ; $79b7: $7b
	ld a, [hl+]                                      ; $79b8: $2a
	ld a, a                                          ; $79b9: $7f
	push hl                                          ; $79ba: $e5
	sbc [hl]                                         ; $79bb: $9e
	cp a                                             ; $79bc: $bf
	sbc $17                                          ; $79bd: $de $17
	sbc d                                            ; $79bf: $9a
	dec sp                                           ; $79c0: $3b
	ld c, e                                          ; $79c1: $4b
	ret                                              ; $79c2: $c9


	adc l                                            ; $79c3: $8d
	ldh [$dd], a                                     ; $79c4: $e0 $dd
	ldh a, [$de]                                     ; $79c6: $f0 $de
	ld hl, sp-$21                                    ; $79c8: $f8 $df
	ldh [$7f], a                                     ; $79ca: $e0 $7f
	ld a, [$fc9c]                                    ; $79cc: $fa $9c $fc
	cp $fe                                           ; $79cf: $fe $fe
	ld h, a                                          ; $79d1: $67
	ret nc                                           ; $79d2: $d0

	sbc [hl]                                         ; $79d3: $9e
	nop                                              ; $79d4: $00

jr_059_79d5:
	db $dd                                           ; $79d5: $dd
	dec c                                            ; $79d6: $0d
	rst SubAFromDE                                          ; $79d7: $df
	dec e                                            ; $79d8: $1d
	sbc l                                            ; $79d9: $9d
	dec a                                            ; $79da: $3d
	ld a, l                                          ; $79db: $7d
	call c, $de04                                    ; $79dc: $dc $04 $de
	ld [$62df], sp                                   ; $79df: $08 $df $62
	rst SubAFromDE                                          ; $79e2: $df
	ld [hl-], a                                      ; $79e3: $32
	sub a                                            ; $79e4: $97
	inc e                                            ; $79e5: $1c
	inc c                                            ; $79e6: $0c
	ld c, $05                                        ; $79e7: $0e $05
	ld a, [hl]                                       ; $79e9: $7e
	ld a, $1e                                        ; $79ea: $3e $1e
	ld e, $76                                        ; $79ec: $1e $76
	and [hl]                                         ; $79ee: $a6
	ld a, d                                          ; $79ef: $7a
	ld e, d                                          ; $79f0: $5a
	ld a, h                                          ; $79f1: $7c
	ld d, a                                          ; $79f2: $57
	sbc [hl]                                         ; $79f3: $9e
	inc de                                           ; $79f4: $13
	ld a, b                                          ; $79f5: $78
	ldh [$78], a                                     ; $79f6: $e0 $78
	inc [hl]                                         ; $79f8: $34
	add b                                            ; $79f9: $80
	ld c, $0d                                        ; $79fa: $0e $0d
	add hl, de                                       ; $79fc: $19
	dec de                                           ; $79fd: $1b
	ldh [$e0], a                                     ; $79fe: $e0 $e0
	pop bc                                           ; $7a00: $c1
	pop bc                                           ; $7a01: $c1
	add d                                            ; $7a02: $82
	inc c                                            ; $7a03: $0c
	inc de                                           ; $7a04: $13
	inc a                                            ; $7a05: $3c
	jr nc, jr_059_7a2f                               ; $7a06: $30 $27

	ld a, a                                          ; $7a08: $7f
	ld [hl], e                                       ; $7a09: $73
	jp nz, $3f9d                                     ; $7a0a: $c2 $9d $3f

	rst $38                                          ; $7a0d: $ff
	ld l, a                                          ; $7a0e: $6f
	adc [hl]                                         ; $7a0f: $8e
	push de                                          ; $7a10: $d5
	reti                                             ; $7a11: $d9


	ld [hl+], a                                      ; $7a12: $22
	call nz, $9048                                   ; $7a13: $c4 $48 $90
	ld l, d                                          ; $7a16: $6a
	call c, $9d78                                    ; $7a17: $dc $78 $9d
	ldh a, [$60]                                     ; $7a1a: $f0 $60
	ld a, e                                          ; $7a1c: $7b
	ld h, e                                          ; $7a1d: $63
	sub a                                            ; $7a1e: $97
	ld h, a                                          ; $7a1f: $67
	rst JumpTable                                          ; $7a20: $c7
	adc a                                            ; $7a21: $8f
	rrca                                             ; $7a22: $0f
	ld c, $1d                                        ; $7a23: $0e $1d
	dec e                                            ; $7a25: $1d
	ld a, [hl-]                                      ; $7a26: $3a
	ld [hl], c                                       ; $7a27: $71
	ld h, e                                          ; $7a28: $63
	rst SubAFromDE                                          ; $7a29: $df
	ld b, $80                                        ; $7a2a: $06 $80
	inc c                                            ; $7a2c: $0c
	ei                                               ; $7a2d: $fb
	sub a                                            ; $7a2e: $97

jr_059_7a2f:
	ei                                               ; $7a2f: $fb
	sbc [hl]                                         ; $7a30: $9e
	cp [hl]                                          ; $7a31: $be
	ret c                                            ; $7a32: $d8

	call Call_059_69ef                               ; $7a33: $cd $ef $69
	sub b                                            ; $7a36: $90
	or $9a                                           ; $7a37: $f6 $9a
	or h                                             ; $7a39: $b4
	ret nc                                           ; $7a3a: $d0

	ret z                                            ; $7a3b: $c8

	db $ec                                           ; $7a3c: $ec
	ld l, b                                          ; $7a3d: $68
	rst FarCall                                          ; $7a3e: $f7
	ret c                                            ; $7a3f: $d8

	sub $e9                                          ; $7a40: $d6 $e9
	and h                                            ; $7a42: $a4
	call nz, $9888                                   ; $7a43: $c4 $88 $98
	rla                                              ; $7a46: $17
	jr c, jr_059_7a7f                                ; $7a47: $38 $36

	add hl, hl                                       ; $7a49: $29
	ld h, h                                          ; $7a4a: $64
	add h                                            ; $7a4b: $84
	ld b, h                                          ; $7a4c: $44
	adc b                                            ; $7a4d: $88
	ret nz                                           ; $7a4e: $c0

	ld b, c                                          ; $7a4f: $41
	ldh [c], a                                       ; $7a50: $e2
	call nz, $f6eb                                   ; $7a51: $c4 $eb $f6
	ld a, l                                          ; $7a54: $7d
	dec sp                                           ; $7a55: $3b
	ldh [rLCDC], a                                   ; $7a56: $e0 $40
	pop bc                                           ; $7a58: $c1
	ld h, e                                          ; $7a59: $63
	db $e4                                           ; $7a5a: $e4
	ld l, b                                          ; $7a5b: $68
	jr nc, jr_059_7a8e                               ; $7a5c: $30 $30

	ld l, b                                          ; $7a5e: $68
	jr nz, jr_059_7aa1                               ; $7a5f: $20 $40

	ld [bc], a                                       ; $7a61: $02
	inc h                                            ; $7a62: $24
	ld b, b                                          ; $7a63: $40
	ld c, d                                          ; $7a64: $4a

Jump_059_7a65:
	db $10                                           ; $7a65: $10
	sub b                                            ; $7a66: $90
	ld a, e                                          ; $7a67: $7b
	jr @-$6d                                         ; $7a68: $18 $91

	add d                                            ; $7a6a: $82
	add [hl]                                         ; $7a6b: $86
	add h                                            ; $7a6c: $84
	adc h                                            ; $7a6d: $8c
	ld h, e                                          ; $7a6e: $63
	ld sp, hl                                        ; $7a6f: $f9
	db $fc                                           ; $7a70: $fc
	rst $38                                          ; $7a71: $ff
	db $fc                                           ; $7a72: $fc
	rst $38                                          ; $7a73: $ff
	rst $38                                          ; $7a74: $ff
	ld sp, $0102                                     ; $7a75: $31 $02 $01
	halt                                             ; $7a78: $76
	rst $38                                          ; $7a79: $ff
	add b                                            ; $7a7a: $80
	ld a, $ff                                        ; $7a7b: $3e $ff
	ld c, a                                          ; $7a7d: $4f
	and e                                            ; $7a7e: $a3

jr_059_7a7f:
	ret nc                                           ; $7a7f: $d0

	ld hl, sp+$1c                                    ; $7a80: $f8 $1c
	ld b, $83                                        ; $7a82: $06 $83
	pop de                                           ; $7a84: $d1
	inc a                                            ; $7a85: $3c
	rra                                              ; $7a86: $1f
	adc a                                            ; $7a87: $8f
	rst FarCall                                          ; $7a88: $f7
	rrca                                             ; $7a89: $0f
	inc bc                                           ; $7a8a: $03
	ld bc, $ff80                                     ; $7a8b: $01 $80 $ff

jr_059_7a8e:
	db $fc                                           ; $7a8e: $fc
	jr nc, jr_059_7ad0                               ; $7a8f: $30 $3f

	rra                                              ; $7a91: $1f
	add hl, bc                                       ; $7a92: $09
	add hl, bc                                       ; $7a93: $09
	adc h                                            ; $7a94: $8c
	adc h                                            ; $7a95: $8c
	ret nc                                           ; $7a96: $d0

	ldh [$e4], a                                     ; $7a97: $e0 $e4
	cp $df                                           ; $7a99: $fe $df
	ld sp, hl                                        ; $7a9b: $f9
	add b                                            ; $7a9c: $80
	db $fc                                           ; $7a9d: $fc
	dec sp                                           ; $7a9e: $3b
	ld a, $6e                                        ; $7a9f: $3e $6e

jr_059_7aa1:
	ld l, e                                          ; $7aa1: $6b
	pop de                                           ; $7aa2: $d1
	ret nc                                           ; $7aa3: $d0

	and e                                            ; $7aa4: $a3
	xor h                                            ; $7aa5: $ac
	ld a, [bc]                                       ; $7aa6: $0a
	inc e                                            ; $7aa7: $1c
	inc l                                            ; $7aa8: $2c
	ld a, [hl+]                                      ; $7aa9: $2a
	ld d, c                                          ; $7aaa: $51
	ld d, b                                          ; $7aab: $50
	and e                                            ; $7aac: $a3
	xor h                                            ; $7aad: $ac
	add sp, $74                                      ; $7aae: $e8 $74
	ld [$c4ed], a                                    ; $7ab0: $ea $ed $c4
	ld b, $ee                                        ; $7ab3: $06 $ee
	ld a, $60                                        ; $7ab5: $3e $60
	jr nc, @+$2a                                     ; $7ab7: $30 $28

	ld b, h                                          ; $7ab9: $44
	call nz, $8a04                                   ; $7aba: $c4 $04 $8a
	call nz, $8738                                   ; $7abd: $c4 $38 $87
	ld h, a                                          ; $7ac0: $67

Jump_059_7ac1:
	inc sp                                           ; $7ac1: $33
	ld a, [hl-]                                      ; $7ac2: $3a
	sbc $fc                                          ; $7ac3: $de $fc
	ld a, h                                          ; $7ac5: $7c
	ei                                               ; $7ac6: $fb
	inc b                                            ; $7ac7: $04
	ld b, $03                                        ; $7ac8: $06 $03
	inc bc                                           ; $7aca: $03
	dec bc                                           ; $7acb: $0b
	add a                                            ; $7acc: $87
	ld d, a                                          ; $7acd: $57
	ld e, h                                          ; $7ace: $5c
	rst $38                                          ; $7acf: $ff

jr_059_7ad0:
	ldh a, [c]                                       ; $7ad0: $f2
	add h                                            ; $7ad1: $84
	ld [hl], e                                       ; $7ad2: $73
	ld b, $9e                                        ; $7ad3: $06 $9e
	rrca                                             ; $7ad5: $0f
	ld [hl], d                                       ; $7ad6: $72
	cp d                                             ; $7ad7: $ba
	rst SubAFromDE                                          ; $7ad8: $df
	rst $38                                          ; $7ad9: $ff
	sub a                                            ; $7ada: $97
	dec c                                            ; $7adb: $0d
	dec bc                                           ; $7adc: $0b
	rla                                              ; $7add: $17
	dec de                                           ; $7ade: $1b
	scf                                              ; $7adf: $37
	ld l, $56                                        ; $7ae0: $2e $56
	ld l, h                                          ; $7ae2: $6c
	halt                                             ; $7ae3: $76
	ld sp, $fe97                                     ; $7ae4: $31 $97 $fe
	db $fd                                           ; $7ae7: $fd
	db $fd                                           ; $7ae8: $fd
	ei                                               ; $7ae9: $fb
	sbc l                                            ; $7aea: $9d
	cpl                                              ; $7aeb: $2f
	ld e, a                                          ; $7aec: $5f
	ld a, a                                          ; $7aed: $7f
	ld [hl], h                                       ; $7aee: $74
	ld h, a                                          ; $7aef: $67
	sbc b                                            ; $7af0: $98
	db $f4                                           ; $7af1: $f4
	db $ec                                           ; $7af2: $ec
	call nc, $c2e2                                   ; $7af3: $d4 $e2 $c2
	ldh [c], a                                       ; $7af6: $e2
	db $e3                                           ; $7af7: $e3
	ret c                                            ; $7af8: $d8

	rst $38                                          ; $7af9: $ff
	ld sp, hl                                        ; $7afa: $f9
	adc l                                            ; $7afb: $8d
	ld sp, hl                                        ; $7afc: $f9
	ei                                               ; $7afd: $fb
	ldh a, [c]                                       ; $7afe: $f2
	or $ec                                           ; $7aff: $f6 $ec
	ret c                                            ; $7b01: $d8

	ret nc                                           ; $7b02: $d0

	add b                                            ; $7b03: $80

jr_059_7b04:
	db $10                                           ; $7b04: $10
	db $10                                           ; $7b05: $10
	jr nz, jr_059_7b28                               ; $7b06: $20 $20

	ld b, b                                          ; $7b08: $40
	ld b, b                                          ; $7b09: $40
	add b                                            ; $7b0a: $80
	rst $38                                          ; $7b0b: $ff
	inc b                                            ; $7b0c: $04
	ld [bc], a                                       ; $7b0d: $02
	ld a, e                                          ; $7b0e: $7b
	ld d, [hl]                                       ; $7b0f: $56
	sbc h                                            ; $7b10: $9c
	nop                                              ; $7b11: $00
	jr @+$22                                         ; $7b12: $18 $20

	ld [hl], a                                       ; $7b14: $77
	ld hl, sp+$7b                                    ; $7b15: $f8 $7b
	ld c, l                                          ; $7b17: $4d
	sbc l                                            ; $7b18: $9d
	ret nz                                           ; $7b19: $c0

	cp $7b                                           ; $7b1a: $fe $7b
	cp c                                             ; $7b1c: $b9
	ld a, a                                          ; $7b1d: $7f
	db $fd                                           ; $7b1e: $fd
	adc c                                            ; $7b1f: $89
	ld e, a                                          ; $7b20: $5f
	ld c, [hl]                                       ; $7b21: $4e
	add $3f                                          ; $7b22: $c6 $3f
	rrca                                             ; $7b24: $0f
	dec bc                                           ; $7b25: $0b
	di                                               ; $7b26: $f3
	and e                                            ; $7b27: $a3

jr_059_7b28:
	ld b, e                                          ; $7b28: $43
	ld b, d                                          ; $7b29: $42
	ld de, $02f2                                     ; $7b2a: $11 $f2 $02
	ld b, $84                                        ; $7b2d: $06 $84
	ld a, l                                          ; $7b2f: $7d
	call $b13d                                       ; $7b30: $cd $3d $b1
	cp $c2                                           ; $7b33: $fe $c2
	add h                                            ; $7b35: $84
	ld a, c                                          ; $7b36: $79
	ld e, h                                          ; $7b37: $5c
	sub [hl]                                         ; $7b38: $96
	ld a, b                                          ; $7b39: $78
	nop                                              ; $7b3a: $00
	nop                                              ; $7b3b: $00
	ld hl, $c542                                     ; $7b3c: $21 $42 $c5
	adc c                                            ; $7b3f: $89
	sub e                                            ; $7b40: $93
	and $76                                          ; $7b41: $e6 $76
	ld b, h                                          ; $7b43: $44
	ld a, a                                          ; $7b44: $7f
	and $90                                          ; $7b45: $e6 $90
	dec c                                            ; $7b47: $0d
	dec de                                           ; $7b48: $1b
	ld a, d                                          ; $7b49: $7a
	or $6a                                           ; $7b4a: $f6 $6a
	ld [$d1ca], a                                    ; $7b4c: $ea $ca $d1
	ld d, c                                          ; $7b4f: $51
	ld d, e                                          ; $7b50: $53
	inc c                                            ; $7b51: $0c
	jr jr_059_7b04                                   ; $7b52: $18 $b0

	jr nc, jr_059_7bc6                               ; $7b54: $30 $70

	sbc $e0                                          ; $7b56: $de $e0

jr_059_7b58:
	sub d                                            ; $7b58: $92
	rst FarCall                                          ; $7b59: $f7
	cp h                                             ; $7b5a: $bc
	xor e                                            ; $7b5b: $ab
	cp e                                             ; $7b5c: $bb
	xor d                                            ; $7b5d: $aa
	sub a                                            ; $7b5e: $97
	adc [hl]                                         ; $7b5f: $8e
	add [hl]                                         ; $7b60: $86
	rst AddAOntoHL                                          ; $7b61: $ef
	db $f4                                           ; $7b62: $f4
	or $e5                                           ; $7b63: $f6 $e5
	push af                                          ; $7b65: $f5
	sbc $fc                                          ; $7b66: $de $fc
	ld a, l                                          ; $7b68: $7d
	ld l, c                                          ; $7b69: $69
	add b                                            ; $7b6a: $80
	and [hl]                                         ; $7b6b: $a6
	call nz, $b088                                   ; $7b6c: $c4 $88 $b0
	ld b, b                                          ; $7b6f: $40
	ld b, a                                          ; $7b70: $47
	adc b                                            ; $7b71: $88
	db $10                                           ; $7b72: $10
	ld h, b                                          ; $7b73: $60
	ld hl, sp+$70                                    ; $7b74: $f8 $70
	nop                                              ; $7b76: $00
	add b                                            ; $7b77: $80
	add b                                            ; $7b78: $80
	ld [hl-], a                                      ; $7b79: $32
	dec [hl]                                         ; $7b7a: $35
	inc e                                            ; $7b7b: $1c

jr_059_7b7c:
	ld a, [de]                                       ; $7b7c: $1a
	ld a, [hl-]                                      ; $7b7d: $3a
	ld [hl], b                                       ; $7b7e: $70
	pop af                                           ; $7b7f: $f1
	or c                                             ; $7b80: $b1
	ld de, $1212                                     ; $7b81: $11 $12 $12
	inc d                                            ; $7b84: $14
	dec d                                            ; $7b85: $15
	rra                                              ; $7b86: $1f
	ld e, $1e                                        ; $7b87: $1e $1e
	add h                                            ; $7b89: $84
	sub h                                            ; $7b8a: $94
	jr z, jr_059_7b95                                ; $7b8b: $28 $08

	sub b                                            ; $7b8d: $90
	jr nz, jr_059_7b58                               ; $7b8e: $20 $c8

	db $10                                           ; $7b90: $10
	ret nz                                           ; $7b91: $c0

	ld e, b                                          ; $7b92: $58
	ld d, b                                          ; $7b93: $50
	ld [hl], b                                       ; $7b94: $70

jr_059_7b95:
	ld h, b                                          ; $7b95: $60
	ld a, b                                          ; $7b96: $78
	db $db                                           ; $7b97: $db
	add [hl]                                         ; $7b98: $86
	jr nz, jr_059_7b7c                               ; $7b99: $20 $e1

	ld h, d                                          ; $7b9b: $62
	or h                                             ; $7b9c: $b4
	ld sp, hl                                        ; $7b9d: $f9
	sbc h                                            ; $7b9e: $9c
	halt                                             ; $7b9f: $76
	sbc e                                            ; $7ba0: $9b
	ld h, l                                          ; $7ba1: $65
	rst $38                                          ; $7ba2: $ff
	rst $38                                          ; $7ba3: $ff
	ld a, a                                          ; $7ba4: $7f
	cpl                                              ; $7ba5: $2f
	rst FarCall                                          ; $7ba6: $f7
	ld a, e                                          ; $7ba7: $7b
	dec e                                            ; $7ba8: $1d
	adc [hl]                                         ; $7ba9: $8e
	ld l, b                                          ; $7baa: $68
	inc [hl]                                         ; $7bab: $34
	jp c, $dc2d                                      ; $7bac: $da $2d $dc

	ld a, $7f                                        ; $7baf: $3e $7f
	rst $38                                          ; $7bb1: $ff
	ld a, b                                          ; $7bb2: $78
	dec a                                            ; $7bb3: $3d
	ld a, l                                          ; $7bb4: $7d
	ld hl, sp-$80                                    ; $7bb5: $f8 $80
	ldh [c], a                                       ; $7bb7: $e2
	pop bc                                           ; $7bb8: $c1
	rst SubAFromBC                                          ; $7bb9: $e7
	rst $38                                          ; $7bba: $ff
	ld a, a                                          ; $7bbb: $7f
	ccf                                              ; $7bbc: $3f
	dec c                                            ; $7bbd: $0d
	adc d                                            ; $7bbe: $8a
	adc b                                            ; $7bbf: $88
	ld b, h                                          ; $7bc0: $44
	add h                                            ; $7bc1: $84
	ld a, [hl]                                       ; $7bc2: $7e
	dec hl                                           ; $7bc3: $2b
	dec d                                            ; $7bc4: $15
	dec e                                            ; $7bc5: $1d

jr_059_7bc6:
	ld a, [bc]                                       ; $7bc6: $0a
	ld [$8404], sp                                   ; $7bc7: $08 $04 $84
	ld sp, hl                                        ; $7bca: $f9
	pop bc                                           ; $7bcb: $c1
	and [hl]                                         ; $7bcc: $a6
	xor a                                            ; $7bcd: $af
	rst $38                                          ; $7bce: $ff
	ldh [rP1], a                                     ; $7bcf: $e0 $00
	nop                                              ; $7bd1: $00
	ld [hl], c                                       ; $7bd2: $71
	pop bc                                           ; $7bd3: $c1
	ld h, $29                                        ; $7bd4: $26 $29
	sbc [hl]                                         ; $7bd6: $9e
	cp a                                             ; $7bd7: $bf
	ld a, e                                          ; $7bd8: $7b
	ld hl, sp-$7d                                    ; $7bd9: $f8 $83
	db $db                                           ; $7bdb: $db
	rst AddAOntoHL                                          ; $7bdc: $ef
	rst AddAOntoHL                                          ; $7bdd: $ef
	db $fd                                           ; $7bde: $fd
	jp $190d                                         ; $7bdf: $c3 $0d $19


	ld a, $90                                        ; $7be2: $3e $90
	ld c, b                                          ; $7be4: $48
	xor b                                            ; $7be5: $a8
	ld a, a                                          ; $7be6: $7f
	jp nz, $190d                                     ; $7be7: $c2 $0d $19

	cpl                                              ; $7bea: $2f
	ei                                               ; $7beb: $fb
	ld e, e                                          ; $7bec: $5b
	adc a                                            ; $7bed: $8f
	rlca                                             ; $7bee: $07
	ld b, $98                                        ; $7bef: $06 $98
	ld h, b                                          ; $7bf1: $60
	nop                                              ; $7bf2: $00
	ld [hl], h                                       ; $7bf3: $74
	db $e4                                           ; $7bf4: $e4
	ldh a, [$f9]                                     ; $7bf5: $f0 $f9
	db $dd                                           ; $7bf7: $dd
	rst $38                                          ; $7bf8: $ff
	sub l                                            ; $7bf9: $95
	add sp, -$30                                     ; $7bfa: $e8 $d0
	ld h, c                                          ; $7bfc: $61
	add c                                            ; $7bfd: $81
	inc bc                                           ; $7bfe: $03
	ld [bc], a                                       ; $7bff: $02
	dec b                                            ; $7c00: $05
	ld c, $1f                                        ; $7c01: $0e $1f
	ccf                                              ; $7c03: $3f
	db $db                                           ; $7c04: $db
	rst $38                                          ; $7c05: $ff
	adc [hl]                                         ; $7c06: $8e
	call c, Call_059_59b8                            ; $7c07: $dc $b8 $59
	xor e                                            ; $7c0a: $ab
	ld [hl], d                                       ; $7c0b: $72
	sub $6e                                          ; $7c0c: $d6 $6e
	db $ec                                           ; $7c0e: $ec
	ei                                               ; $7c0f: $fb
	rst FarCall                                          ; $7c10: $f7
	or $f4                                           ; $7c11: $f6 $f4
	db $ed                                           ; $7c13: $ed
	jp hl                                            ; $7c14: $e9


	pop de                                           ; $7c15: $d1
	db $d3                                           ; $7c16: $d3
	rra                                              ; $7c17: $1f
	ld a, d                                          ; $7c18: $7a
	ret nz                                           ; $7c19: $c0

	ld a, [hl]                                       ; $7c1a: $7e
	jp nz, $3f95                                     ; $7c1b: $c2 $95 $3f

	ld b, a                                          ; $7c1e: $47
	or $e8                                           ; $7c1f: $f6 $e8
	ret nc                                           ; $7c21: $d0

	ldh [$e0], a                                     ; $7c22: $e0 $e0
	pop af                                           ; $7c24: $f1
	ld a, [$dcc4]                                    ; $7c25: $fa $c4 $dc
	rst $38                                          ; $7c28: $ff
	ld a, a                                          ; $7c29: $7f
	xor $9e                                          ; $7c2a: $ee $9e
	cp a                                             ; $7c2c: $bf
	sbc $80                                          ; $7c2d: $de $80
	adc d                                            ; $7c2f: $8a
	ld b, b                                          ; $7c30: $40
	ret nz                                           ; $7c31: $c0

	ret nz                                           ; $7c32: $c0

	ldh [$60], a                                     ; $7c33: $e0 $60
	or b                                             ; $7c35: $b0
	ret c                                            ; $7c36: $d8

	call z, $f3e6                                    ; $7c37: $cc $e6 $f3
	ld sp, hl                                        ; $7c3a: $f9
	db $fc                                           ; $7c3b: $fc
	db $fc                                           ; $7c3c: $fc
	add b                                            ; $7c3d: $80
	ld b, b                                          ; $7c3e: $40
	ld h, b                                          ; $7c3f: $60
	jr nc, jr_059_7c52                               ; $7c40: $30 $10

	ld [$0404], sp                                   ; $7c42: $08 $04 $04
	db $fc                                           ; $7c45: $fc
	sbc h                                            ; $7c46: $9c
	add c                                            ; $7c47: $81
	jp nz, Jump_059_6945                             ; $7c48: $c2 $45 $69

	ld sp, $0280                                     ; $7c4b: $31 $80 $02
	ld l, l                                          ; $7c4e: $6d
	dec h                                            ; $7c4f: $25
	inc sp                                           ; $7c50: $33
	ld d, d                                          ; $7c51: $52

jr_059_7c52:
	xor d                                            ; $7c52: $aa
	ld d, b                                          ; $7c53: $50
	and b                                            ; $7c54: $a0
	ld c, b                                          ; $7c55: $48
	ld [hl+], a                                      ; $7c56: $22
	ld [hl+], a                                      ; $7c57: $22
	inc d                                            ; $7c58: $14
	inc a                                            ; $7c59: $3c
	ld d, h                                          ; $7c5a: $54
	xor h                                            ; $7c5b: $ac
	ld e, h                                          ; $7c5c: $5c
	or h                                             ; $7c5d: $b4
	call c, $088c                                    ; $7c5e: $dc $8c $08
	inc b                                            ; $7c61: $04
	dec b                                            ; $7c62: $05
	inc de                                           ; $7c63: $13
	ld a, [hl+]                                      ; $7c64: $2a
	inc hl                                           ; $7c65: $23
	inc a                                            ; $7c66: $3c
	ccf                                              ; $7c67: $3f
	jr c, @+$3e                                      ; $7c68: $38 $3c

	inc a                                            ; $7c6a: $3c
	cpl                                              ; $7c6b: $2f
	sbc l                                            ; $7c6c: $9d
	dec d                                            ; $7c6d: $15
	jr jr_059_7ceb                                   ; $7c6e: $18 $7b

	or e                                             ; $7c70: $b3
	sbc $ff                                          ; $7c71: $de $ff
	sub l                                            ; $7c73: $95
	db $e3                                           ; $7c74: $e3
	ldh [rAUDENA], a                                 ; $7c75: $e0 $26
	ld a, [$0a0f]                                    ; $7c77: $fa $0f $0a
	db $10                                           ; $7c7a: $10
	db $fc                                           ; $7c7b: $fc
	xor e                                            ; $7c7c: $ab
	or h                                             ; $7c7d: $b4
	halt                                             ; $7c7e: $76
	ld c, c                                          ; $7c7f: $49
	ld a, [hl]                                       ; $7c80: $7e
	xor b                                            ; $7c81: $a8
	ld a, h                                          ; $7c82: $7c
	sub e                                            ; $7c83: $93
	sbc d                                            ; $7c84: $9a
	ld b, c                                          ; $7c85: $41
	ld a, a                                          ; $7c86: $7f
	jp $0743                                         ; $7c87: $c3 $43 $07


	sbc $ff                                          ; $7c8a: $de $ff
	ld a, l                                          ; $7c8c: $7d
	db $dd                                           ; $7c8d: $dd
	ld a, d                                          ; $7c8e: $7a
	ld [hl], c                                       ; $7c8f: $71
	ld a, a                                          ; $7c90: $7f
	cp b                                             ; $7c91: $b8
	sbc [hl]                                         ; $7c92: $9e
	nop                                              ; $7c93: $00
	halt                                             ; $7c94: $76
	ld a, b                                          ; $7c95: $78
	sbc $fe                                          ; $7c96: $de $fe
	sbc d                                            ; $7c98: $9a
	rst $38                                          ; $7c99: $ff
	pop hl                                           ; $7c9a: $e1
	ld hl, sp+$1f                                    ; $7c9b: $f8 $1f
	rlca                                             ; $7c9d: $07
	db $fd                                           ; $7c9e: $fd
	sbc h                                            ; $7c9f: $9c
	ld b, b                                          ; $7ca0: $40
	ldh [$1f], a                                     ; $7ca1: $e0 $1f
	db $fc                                           ; $7ca3: $fc
	adc a                                            ; $7ca4: $8f
	ldh [$ce], a                                     ; $7ca5: $e0 $ce
	sbc b                                            ; $7ca7: $98
	ret nc                                           ; $7ca8: $d0

	ret nc                                           ; $7ca9: $d0

	jp z, $3069                                      ; $7caa: $ca $69 $30

	ccf                                              ; $7cad: $3f
	ld [hl], b                                       ; $7cae: $70
	ldh [rAUD4LEN], a                                ; $7caf: $e0 $20
	jr nz, jr_059_7ce3                               ; $7cb1: $20 $30

	ld [de], a                                       ; $7cb3: $12
	dec bc                                           ; $7cb4: $0b
	db $fd                                           ; $7cb5: $fd
	ld a, [hl]                                       ; $7cb6: $7e
	ld b, [hl]                                       ; $7cb7: $46
	sbc l                                            ; $7cb8: $9d
	inc b                                            ; $7cb9: $04
	add e                                            ; $7cba: $83
	ld a, d                                          ; $7cbb: $7a
	call nz, $01df                                   ; $7cbc: $c4 $df $01
	rst SubAFromDE                                          ; $7cbf: $df
	ld [bc], a                                       ; $7cc0: $02
	sbc e                                            ; $7cc1: $9b
	inc b                                            ; $7cc2: $04
	dec de                                           ; $7cc3: $1b
	inc b                                            ; $7cc4: $04
	inc bc                                           ; $7cc5: $03
	db $fc                                           ; $7cc6: $fc
	sbc l                                            ; $7cc7: $9d
	db $e3                                           ; $7cc8: $e3
	ld hl, sp+$79                                    ; $7cc9: $f8 $79
	ld a, d                                          ; $7ccb: $7a
	sbc $ff                                          ; $7ccc: $de $ff
	sbc b                                            ; $7cce: $98
	sbc b                                            ; $7ccf: $98
	rst GetHLinHL                                          ; $7cd0: $cf
	ccf                                              ; $7cd1: $3f
	rst GetHLinHL                                          ; $7cd2: $cf
	inc sp                                           ; $7cd3: $33
	inc c                                            ; $7cd4: $0c
	ld [bc], a                                       ; $7cd5: $02
	ld a, b                                          ; $7cd6: $78
	sbc b                                            ; $7cd7: $98
	add b                                            ; $7cd8: $80
	jr nc, jr_059_7ce7                               ; $7cd9: $30 $0c

	rst JumpTable                                          ; $7cdb: $c7
	pop af                                           ; $7cdc: $f1
	db $fc                                           ; $7cdd: $fc
	cp $a7                                           ; $7cde: $fe $a7
	rst SubAFromHL                                          ; $7ce0: $d7
	rst GetHLinHL                                          ; $7ce1: $cf
	rst AddAOntoHL                                          ; $7ce2: $ef

jr_059_7ce3:
	rst AddAOntoHL                                          ; $7ce3: $ef
	rst FarCall                                          ; $7ce4: $f7
	ld [hl], $9a                                     ; $7ce5: $36 $9a

jr_059_7ce7:
	add e                                            ; $7ce7: $83
	jp nz, $2041                                     ; $7ce8: $c2 $41 $20

jr_059_7ceb:
	jr nz, @-$2e                                     ; $7ceb: $20 $d0

	ld [hl], b                                       ; $7ced: $70
	jr @-$3e                                         ; $7cee: $18 $c0

	ldh [hDisp1_SCY], a                                     ; $7cf0: $e0 $90
	ld sp, hl                                        ; $7cf2: $f9
	ld c, a                                          ; $7cf3: $4f
	ld a, [hl]                                       ; $7cf4: $7e
	ld [hl+], a                                      ; $7cf5: $22
	inc d                                            ; $7cf6: $14
	ret nz                                           ; $7cf7: $c0

	sub a                                            ; $7cf8: $97
	jr nz, jr_059_7ceb                               ; $7cf9: $20 $f0

	adc b                                            ; $7cfb: $88
	ld sp, hl                                        ; $7cfc: $f9
	ccf                                              ; $7cfd: $3f

Call_059_7cfe:
	inc hl                                           ; $7cfe: $23
	rla                                              ; $7cff: $17
	ld a, b                                          ; $7d00: $78

Call_059_7d01:
jr_059_7d01:
	ld a, c                                          ; $7d01: $79
	jr c, jr_059_7d01                                ; $7d02: $38 $fd

jr_059_7d04:
	sbc [hl]                                         ; $7d04: $9e
	ccf                                              ; $7d05: $3f
	ld l, c                                          ; $7d06: $69
	and b                                            ; $7d07: $a0
	ld sp, hl                                        ; $7d08: $f9
	reti                                             ; $7d09: $d9


	rst $38                                          ; $7d0a: $ff
	ld a, [hl]                                       ; $7d0b: $7e
	ld c, $99                                        ; $7d0c: $0e $99
	dec d                                            ; $7d0e: $15
	dec sp                                           ; $7d0f: $3b
	ld [hl], $6f                                     ; $7d10: $36 $6f
	ld d, l                                          ; $7d12: $55
	xor $dc                                          ; $7d13: $ee $dc
	rst $38                                          ; $7d15: $ff
	ld a, c                                          ; $7d16: $79
	adc [hl]                                         ; $7d17: $8e
	adc e                                            ; $7d18: $8b
	call c, Call_059_50d8                            ; $7d19: $dc $d8 $50
	or b                                             ; $7d1c: $b0
	or b                                             ; $7d1d: $b0
	jr nz, jr_059_7d40                               ; $7d1e: $20 $20

	nop                                              ; $7d20: $00
	and e                                            ; $7d21: $a3
	and a                                            ; $7d22: $a7
	xor a                                            ; $7d23: $af
	ld c, a                                          ; $7d24: $4f
	ld c, a                                          ; $7d25: $4f
	rst SubAFromDE                                          ; $7d26: $df
	rst SubAFromDE                                          ; $7d27: $df
	rst $38                                          ; $7d28: $ff
	cpl                                              ; $7d29: $2f
	rra                                              ; $7d2a: $1f
	rrca                                             ; $7d2b: $0f
	rlca                                             ; $7d2c: $07
	ld a, e                                          ; $7d2d: $7b
	inc a                                            ; $7d2e: $3c
	sbc l                                            ; $7d2f: $9d
	inc bc                                           ; $7d30: $03
	add sp, $74                                      ; $7d31: $e8 $74
	ld c, c                                          ; $7d33: $49
	ld a, e                                          ; $7d34: $7b
	sbc $97                                          ; $7d35: $de $97
	cp a                                             ; $7d37: $bf
	rst SubAFromDE                                          ; $7d38: $df
	rst $38                                          ; $7d39: $ff
	rst AddAOntoHL                                          ; $7d3a: $ef
	rst SubAFromDE                                          ; $7d3b: $df
	rst SubAFromBC                                          ; $7d3c: $e7
	ld b, e                                          ; $7d3d: $43
	xor e                                            ; $7d3e: $ab
	ld a, d                                          ; $7d3f: $7a

jr_059_7d40:
	jp nc, $189a                                     ; $7d40: $d2 $9a $18

	jr c, @-$02                                      ; $7d43: $38 $fc

	cp [hl]                                          ; $7d45: $be
	ld d, l                                          ; $7d46: $55
	ld a, e                                          ; $7d47: $7b
	dec l                                            ; $7d48: $2d
	call c, Call_059_75ff                            ; $7d49: $dc $ff $75
	sub c                                            ; $7d4c: $91
	ld [hl], a                                       ; $7d4d: $77
	ld d, $8a                                        ; $7d4e: $16 $8a
	ld c, d                                          ; $7d50: $4a
	dec [hl]                                         ; $7d51: $35
	xor d                                            ; $7d52: $aa
	sub l                                            ; $7d53: $95
	adc d                                            ; $7d54: $8a
	push de                                          ; $7d55: $d5
	adc d                                            ; $7d56: $8a
	call nc, $0a05                                   ; $7d57: $d4 $05 $0a
	dec d                                            ; $7d5a: $15
	ld a, [bc]                                       ; $7d5b: $0a
	ld d, l                                          ; $7d5c: $55
	adc d                                            ; $7d5d: $8a
	call nc, $9888                                   ; $7d5e: $d4 $88 $98
	jr z, jr_059_7dab                                ; $7d61: $28 $48

	ld [$de88], sp                                   ; $7d63: $08 $88 $de
	jr jr_059_7d04                                   ; $7d66: $18 $9c

	ld h, h                                          ; $7d68: $64
	call nz, Call_059_7184                           ; $7d69: $c4 $84 $71
	rla                                              ; $7d6c: $17
	sbc l                                            ; $7d6d: $9d
	add hl, bc                                       ; $7d6e: $09
	ld [$d9fb], sp                                   ; $7d6f: $08 $fb $d9
	db $10                                           ; $7d72: $10
	rst SubAFromDE                                          ; $7d73: $df
	ldh a, [$df]                                     ; $7d74: $f0 $df
	ld hl, sp-$21                                    ; $7d76: $f8 $df
	db $fc                                           ; $7d78: $fc
	rst SubAFromDE                                          ; $7d79: $df
	cp $94                                           ; $7d7a: $fe $94
	sbc d                                            ; $7d7c: $9a
	ld e, l                                          ; $7d7d: $5d
	ld c, [hl]                                       ; $7d7e: $4e
	ld c, a                                          ; $7d7f: $4f
	ld b, a                                          ; $7d80: $47
	daa                                              ; $7d81: $27
	inc hl                                           ; $7d82: $23
	inc hl                                           ; $7d83: $23
	ld [hl], b                                       ; $7d84: $70
	jr c, jr_059_7d93                                ; $7d85: $38 $0c

	sbc $06                                          ; $7d87: $de $06
	sub l                                            ; $7d89: $95
	ld c, $0a                                        ; $7d8a: $0e $0a
	ccf                                              ; $7d8c: $3f
	rrca                                             ; $7d8d: $0f
	add a                                            ; $7d8e: $87
	ld b, e                                          ; $7d8f: $43
	and e                                            ; $7d90: $a3
	db $d3                                           ; $7d91: $d3
	db $e3                                           ; $7d92: $e3

jr_059_7d93:
	rst SubAFromBC                                          ; $7d93: $e7
	halt                                             ; $7d94: $76
	ld sp, hl                                        ; $7d95: $f9
	sbc e                                            ; $7d96: $9b
	ld c, $11                                        ; $7d97: $0e $11
	jr nz, jr_059_7de7                               ; $7d99: $20 $4c

	ld [hl], a                                       ; $7d9b: $77
	ld h, e                                          ; $7d9c: $63

Call_059_7d9d:
	sbc $ff                                          ; $7d9d: $de $ff
	sub [hl]                                         ; $7d9f: $96
	di                                               ; $7da0: $f3
	nop                                              ; $7da1: $00
	ld b, b                                          ; $7da2: $40
	and b                                            ; $7da3: $a0
	pop de                                           ; $7da4: $d1
	ld [$68a7], a                                    ; $7da5: $ea $a7 $68
	rra                                              ; $7da8: $1f
	ld a, d                                          ; $7da9: $7a
	ld b, c                                          ; $7daa: $41

jr_059_7dab:
	add b                                            ; $7dab: $80
	jr nz, jr_059_7dbe                               ; $7dac: $20 $10

	ret c                                            ; $7dae: $d8

	rst $38                                          ; $7daf: $ff
	rst $38                                          ; $7db0: $ff
	ld d, $7b                                        ; $7db1: $16 $7b
	adc e                                            ; $7db3: $8b
	ld e, b                                          ; $7db4: $58
	and b                                            ; $7db5: $a0
	ld b, b                                          ; $7db6: $40
	ld b, b                                          ; $7db7: $40
	ldh [$09], a                                     ; $7db8: $e0 $09
	inc b                                            ; $7dba: $04
	ld [hl], h                                       ; $7dbb: $74
	daa                                              ; $7dbc: $27
	ld b, h                                          ; $7dbd: $44

jr_059_7dbe:
	adc b                                            ; $7dbe: $88
	sub b                                            ; $7dbf: $90
	sub c                                            ; $7dc0: $91
	ld a, [hl+]                                      ; $7dc1: $2a
	sbc d                                            ; $7dc2: $9a
	and c                                            ; $7dc3: $a1
	inc hl                                           ; $7dc4: $23
	inc b                                            ; $7dc5: $04
	nop                                              ; $7dc6: $00
	rrca                                             ; $7dc7: $0f
	ld [bc], a                                       ; $7dc8: $02
	call nz, $9964                                   ; $7dc9: $c4 $64 $99
	inc e                                            ; $7dcc: $1c
	call z, $9f3b                                    ; $7dcd: $cc $3b $9f
	ld d, c                                          ; $7dd0: $51
	ld e, a                                          ; $7dd1: $5f

jr_059_7dd2:
	ld b, a                                          ; $7dd2: $47
	db $10                                           ; $7dd3: $10
	ld b, a                                          ; $7dd4: $47
	ldh a, [$9c]                                     ; $7dd5: $f0 $9c
	ld h, a                                          ; $7dd7: $67
	add hl, de                                       ; $7dd8: $19
	ld b, $77                                        ; $7dd9: $06 $77
	ld c, c                                          ; $7ddb: $49
	sbc e                                            ; $7ddc: $9b
	nop                                              ; $7ddd: $00
	adc [hl]                                         ; $7dde: $8e
	db $e3                                           ; $7ddf: $e3
	ld hl, sp+$73                                    ; $7de0: $f8 $73
	ld [hl], $92                                     ; $7de2: $36 $92
	inc d                                            ; $7de4: $14
	ret z                                            ; $7de5: $c8

	ld [hl], b                                       ; $7de6: $70

jr_059_7de7:
	sbc b                                            ; $7de7: $98
	ld b, h                                          ; $7de8: $44
	inc sp                                           ; $7de9: $33
	inc c                                            ; $7dea: $0c
	inc bc                                           ; $7deb: $03
	rla                                              ; $7dec: $17
	sbc a                                            ; $7ded: $9f
	rst $38                                          ; $7dee: $ff
	ccf                                              ; $7def: $3f
	adc a                                            ; $7df0: $8f
	ld a, d                                          ; $7df1: $7a
	sbc a                                            ; $7df2: $9f
	ei                                               ; $7df3: $fb
	sbc l                                            ; $7df4: $9d
	ret nz                                           ; $7df5: $c0

	jr nc, jr_059_7dd2                               ; $7df6: $30 $da

	rst $38                                          ; $7df8: $ff
	sbc [hl]                                         ; $7df9: $9e
	ld a, a                                          ; $7dfa: $7f
	ld a, e                                          ; $7dfb: $7b
	ld [hl], c                                       ; $7dfc: $71
	rst SubAFromDE                                          ; $7dfd: $df
	inc bc                                           ; $7dfe: $03
	sbc h                                            ; $7dff: $9c
	ld b, $05                                        ; $7e00: $06 $05
	ld c, $d9                                        ; $7e02: $0e $d9
	rst $38                                          ; $7e04: $ff
	sub [hl]                                         ; $7e05: $96
	jp c, Jump_059_54ac                              ; $7e06: $da $ac $54

	or h                                             ; $7e09: $b4
	ld l, b                                          ; $7e0a: $68
	xor b                                            ; $7e0b: $a8
	ld d, b                                          ; $7e0c: $50
	ret nc                                           ; $7e0d: $d0

	db $fd                                           ; $7e0e: $fd

Call_059_7e0f:
	sbc $fb                                          ; $7e0f: $de $fb
	rst SubAFromDE                                          ; $7e11: $df
	rst FarCall                                          ; $7e12: $f7
	rst SubAFromDE                                          ; $7e13: $df
	rst AddAOntoHL                                          ; $7e14: $ef
	ld b, a                                          ; $7e15: $47
	and b                                            ; $7e16: $a0
	ld [hl], e                                       ; $7e17: $73
	and e                                            ; $7e18: $a3
	ld e, e                                          ; $7e19: $5b
	ldh a, [$79]                                     ; $7e1a: $f0 $79
	add h                                            ; $7e1c: $84
	ld a, d                                          ; $7e1d: $7a
	xor [hl]                                         ; $7e1e: $ae
	ld a, a                                          ; $7e1f: $7f
	ld [$809b], a                                    ; $7e20: $ea $9b $80
	ret nz                                           ; $7e23: $c0

	pop hl                                           ; $7e24: $e1
	ldh a, [c]                                       ; $7e25: $f2
	ld l, [hl]                                       ; $7e26: $6e
	xor a                                            ; $7e27: $af
	add b                                            ; $7e28: $80
	ld e, a                                          ; $7e29: $5f
	and c                                            ; $7e2a: $a1
	ld b, e                                          ; $7e2b: $43
	ld b, h                                          ; $7e2c: $44
	add hl, hl                                       ; $7e2d: $29
	or d                                             ; $7e2e: $b2
	pop bc                                           ; $7e2f: $c1
	pop af                                           ; $7e30: $f1
	xor a                                            ; $7e31: $af
	ld e, a                                          ; $7e32: $5f
	cp a                                             ; $7e33: $bf
	cp a                                             ; $7e34: $bf
	rst SubAFromDE                                          ; $7e35: $df
	rst SubAFromDE                                          ; $7e36: $df
	adc b                                            ; $7e37: $88
	rst SubAFromDE                                          ; $7e38: $df
	sbc a                                            ; $7e39: $9f
	and b                                            ; $7e3a: $a0
	add [hl]                                         ; $7e3b: $86
	rst $38                                          ; $7e3c: $ff
	rlca                                             ; $7e3d: $07
	rrca                                             ; $7e3e: $0f
	ret nc                                           ; $7e3f: $d0

	and b                                            ; $7e40: $a0
	ldh [$c0], a                                     ; $7e41: $e0 $c0
	rst JumpTable                                          ; $7e43: $c7
	rst $38                                          ; $7e44: $ff
	db $fc                                           ; $7e45: $fc
	ld hl, sp+$38                                    ; $7e46: $f8 $38
	sbc b                                            ; $7e48: $98
	ret c                                            ; $7e49: $d8

	ret z                                            ; $7e4a: $c8

	inc hl                                           ; $7e4b: $23
	ld [hl-], a                                      ; $7e4c: $32
	ret c                                            ; $7e4d: $d8

	cp a                                             ; $7e4e: $bf
	xor $dc                                          ; $7e4f: $ee $dc

jr_059_7e51:
	inc b                                            ; $7e51: $04
	sub e                                            ; $7e52: $93
	db $e4                                           ; $7e53: $e4
	ld a, l                                          ; $7e54: $7d
	rra                                              ; $7e55: $1f
	nop                                              ; $7e56: $00
	jr nc, jr_059_7e51                               ; $7e57: $30 $f8

	sbc $07                                          ; $7e59: $de $07
	pop af                                           ; $7e5b: $f1
	adc [hl]                                         ; $7e5c: $8e
	db $e3                                           ; $7e5d: $e3
	db $10                                           ; $7e5e: $10
	db $fd                                           ; $7e5f: $fd
	add e                                            ; $7e60: $83
	ld [hl], b                                       ; $7e61: $70

jr_059_7e62:
	db $fc                                           ; $7e62: $fc
	rra                                              ; $7e63: $1f
	dec a                                            ; $7e64: $3d
	dec sp                                           ; $7e65: $3b
	ld de, $9115                                     ; $7e66: $11 $15 $91
	ld [$9869], a                                    ; $7e69: $ea $69 $98
	inc hl                                           ; $7e6c: $23
	ld de, $1919                                     ; $7e6d: $11 $19 $19
	inc e                                            ; $7e70: $1c
	inc e                                            ; $7e71: $1c
	ld e, $0f                                        ; $7e72: $1e $0f
	inc b                                            ; $7e74: $04
	inc b                                            ; $7e75: $04
	ld [$9111], sp                                   ; $7e76: $08 $11 $91
	and d                                            ; $7e79: $a2
	ldh [c], a                                       ; $7e7a: $e2
	call nz, Call_059_6fef                           ; $7e7b: $c4 $ef $6f
	sub e                                            ; $7e7e: $93
	sub l                                            ; $7e7f: $95
	ld a, a                                          ; $7e80: $7f
	ld e, a                                          ; $7e81: $5f
	add b                                            ; $7e82: $80
	add b                                            ; $7e83: $80
	inc bc                                           ; $7e84: $03
	dec c                                            ; $7e85: $0d
	rla                                              ; $7e86: $17
	ld l, h                                          ; $7e87: $6c
	cp c                                             ; $7e88: $b9
	ldh [rPCM12], a                                  ; $7e89: $e0 $76
	ld hl, $f895                                     ; $7e8b: $21 $95 $f8
	di                                               ; $7e8e: $f3
	rst JumpTable                                          ; $7e8f: $c7
	rrca                                             ; $7e90: $0f
	jr c, jr_059_7e62                                ; $7e91: $38 $cf

	ld h, [hl]                                       ; $7e93: $66
	sbc a                                            ; $7e94: $9f
	ld l, a                                          ; $7e95: $6f
	rst AddAOntoHL                                          ; $7e96: $ef
	ld a, e                                          ; $7e97: $7b
	pop hl                                           ; $7e98: $e1
	sub a                                            ; $7e99: $97
	pop af                                           ; $7e9a: $f1
	sbc a                                            ; $7e9b: $9f
	ld a, b                                          ; $7e9c: $78
	ldh a, [hDisp1_SCY]                                     ; $7e9d: $f0 $90
	db $10                                           ; $7e9f: $10
	ret nz                                           ; $7ea0: $c0

	ld a, a                                          ; $7ea1: $7f
	ld [hl], a                                       ; $7ea2: $77
	and $7f                                          ; $7ea3: $e6 $7f
	push hl                                          ; $7ea5: $e5
	sbc [hl]                                         ; $7ea6: $9e
	push hl                                          ; $7ea7: $e5
	ld l, [hl]                                       ; $7ea8: $6e
	push hl                                          ; $7ea9: $e5
	ld a, [hl]                                       ; $7eaa: $7e
	sub h                                            ; $7eab: $94
	sub b                                            ; $7eac: $90
	cp $1e                                           ; $7ead: $fe $1e
	db $fc                                           ; $7eaf: $fc
	cp h                                             ; $7eb0: $bc
	call c, Call_059_7878                            ; $7eb1: $dc $78 $78
	ld e, l                                          ; $7eb4: $5d

Jump_059_7eb5:
	ld sp, hl                                        ; $7eb5: $f9
	pop af                                           ; $7eb6: $f1
	inc hl                                           ; $7eb7: $23
	ld h, e                                          ; $7eb8: $63
	ld h, e                                          ; $7eb9: $63
	rst JumpTable                                          ; $7eba: $c7
	rst JumpTable                                          ; $7ebb: $c7
	ld l, b                                          ; $7ebc: $68

Jump_059_7ebd:
	nop                                              ; $7ebd: $00
	sbc h                                            ; $7ebe: $9c
	ld [hl+], a                                      ; $7ebf: $22
	ld h, e                                          ; $7ec0: $63
	ld [hl-], a                                      ; $7ec1: $32
	sbc $22                                          ; $7ec2: $de $22
	sbc c                                            ; $7ec4: $99
	inc sp                                           ; $7ec5: $33
	dec [hl]                                         ; $7ec6: $35
	ld d, l                                          ; $7ec7: $55
	ld d, a                                          ; $7ec8: $57
	ld [hl+], a                                      ; $7ec9: $22
	ld h, [hl]                                       ; $7eca: $66
	sbc $22                                          ; $7ecb: $de $22
	sbc l                                            ; $7ecd: $9d
	ld h, $63                                        ; $7ece: $26 $63
	ld [hl], a                                       ; $7ed0: $77
	or $9e                                           ; $7ed1: $f6 $9e
	ld h, d                                          ; $7ed3: $62
	sbc $22                                          ; $7ed4: $de $22
	sbc h                                            ; $7ed6: $9c
	ld h, [hl]                                       ; $7ed7: $66
	ld h, h                                          ; $7ed8: $64
	ld d, l                                          ; $7ed9: $55
	ld a, e                                          ; $7eda: $7b
	or $df                                           ; $7edb: $f6 $df
	ld [hl+], a                                      ; $7edd: $22
	sbc l                                            ; $7ede: $9d
	inc hl                                           ; $7edf: $23
	ld d, e                                          ; $7ee0: $53
	ld [hl], a                                       ; $7ee1: $77
	or $9e                                           ; $7ee2: $f6 $9e
	ld [hl], d                                       ; $7ee4: $72
	sbc $22                                          ; $7ee5: $de $22
	sbc c                                            ; $7ee7: $99
	ld [hl], l                                       ; $7ee8: $75
	ld d, l                                          ; $7ee9: $55
	ld [hl-], a                                      ; $7eea: $32
	inc [hl]                                         ; $7eeb: $34
	ld h, e                                          ; $7eec: $63
	ld b, a                                          ; $7eed: $47
	sbc $22                                          ; $7eee: $de $22
	sbc b                                            ; $7ef0: $98
	daa                                              ; $7ef1: $27
	ld d, l                                          ; $7ef2: $55
	ld d, l                                          ; $7ef3: $55
	ld [hl-], a                                      ; $7ef4: $32
	ld b, e                                          ; $7ef5: $43
	inc [hl]                                         ; $7ef6: $34
	ld d, e                                          ; $7ef7: $53
	ld a, e                                          ; $7ef8: $7b
	ret                                              ; $7ef9: $c9


	adc a                                            ; $7efa: $8f
	dec h                                            ; $7efb: $25
	ld d, e                                          ; $7efc: $53
	dec [hl]                                         ; $7efd: $35
	ld d, e                                          ; $7efe: $53

Call_059_7eff:
	ld b, e                                          ; $7eff: $43
	inc [hl]                                         ; $7f00: $34
	ld d, l                                          ; $7f01: $55
	ld [hl+], a                                      ; $7f02: $22
	ld [hl+], a                                      ; $7f03: $22
	dec [hl]                                         ; $7f04: $35
	ld [hl+], a                                      ; $7f05: $22
	ld [hl-], a                                      ; $7f06: $32
	dec [hl]                                         ; $7f07: $35
	ld b, h                                          ; $7f08: $44
	inc sp                                           ; $7f09: $33
	ld b, h                                          ; $7f0a: $44
	ld [hl], a                                       ; $7f0b: $77
	cp l                                             ; $7f0c: $bd
	rst SubAFromDE                                          ; $7f0d: $df

Jump_059_7f0e:
	ld [hl+], a                                      ; $7f0e: $22
	sbc e                                            ; $7f0f: $9b
	inc [hl]                                         ; $7f10: $34

Call_059_7f11:
	ld b, h                                          ; $7f11: $44
	ld b, h                                          ; $7f12: $44
	inc sp                                           ; $7f13: $33
	db $db                                           ; $7f14: $db
	ld [hl+], a                                      ; $7f15: $22
	sbc h                                            ; $7f16: $9c
	inc [hl]                                         ; $7f17: $34
	ld d, h                                          ; $7f18: $54
	ld b, h                                          ; $7f19: $44
	ld [hl], a                                       ; $7f1a: $77
	and c                                            ; $7f1b: $a1
	ld [hl], a                                       ; $7f1c: $77
	cp c                                             ; $7f1d: $b9
	rst SubAFromDE                                          ; $7f1e: $df
	ld b, h                                          ; $7f1f: $44
	sbc h                                            ; $7f20: $9c
	ld b, e                                          ; $7f21: $43
	ld [hl+], a                                      ; $7f22: $22
	ld [hl+], a                                      ; $7f23: $22
	or h                                             ; $7f24: $b4
	add a                                            ; $7f25: $87
	sub [hl]                                         ; $7f26: $96
	inc b                                            ; $7f27: $04
	nop                                              ; $7f28: $00
	ldh a, [$fe]                                     ; $7f29: $f0 $fe
	rst $38                                          ; $7f2b: $ff
	cp [hl]                                          ; $7f2c: $be
	cp $ff                                           ; $7f2d: $fe $ff
	inc bc                                           ; $7f2f: $03
	cp $8c                                           ; $7f30: $fe $8c
	ld b, $80                                        ; $7f32: $06 $80
	and b                                            ; $7f34: $a0
	ld d, b                                          ; $7f35: $50
	stop                                             ; $7f36: $10 $00
	jr nz, @+$7a                                     ; $7f38: $20 $78

	cp $7f                                           ; $7f3a: $fe $7f
	ld a, a                                          ; $7f3c: $7f
	pop bc                                           ; $7f3d: $c1
	add sp, $00                                      ; $7f3e: $e8 $00
	nop                                              ; $7f40: $00
	ld h, b                                          ; $7f41: $60

jr_059_7f42:
	sub b                                            ; $7f42: $90
	dec l                                            ; $7f43: $2d
	jr nz, jr_059_7f42                               ; $7f44: $20 $fc

	sbc h                                            ; $7f46: $9c
	ld a, $84                                        ; $7f47: $3e $84
	add b                                            ; $7f49: $80
	ei                                               ; $7f4a: $fb
	sbc l                                            ; $7f4b: $9d
	ld a, e                                          ; $7f4c: $7b
	add b                                            ; $7f4d: $80
	ld l, a                                          ; $7f4e: $6f
	rst FarCall                                          ; $7f4f: $f7
	sbc h                                            ; $7f50: $9c
	ld [hl], c                                       ; $7f51: $71
	nop                                              ; $7f52: $00
	db $10                                           ; $7f53: $10
	db $fc                                           ; $7f54: $fc
	sbc l                                            ; $7f55: $9d
	adc $70                                          ; $7f56: $ce $70
	ld [hl], a                                       ; $7f58: $77
	jp z, $0f99                                      ; $7f59: $ca $99 $0f

	ld l, [hl]                                       ; $7f5c: $6e
	db $f4                                           ; $7f5d: $f4
	inc b                                            ; $7f5e: $04
	inc b                                            ; $7f5f: $04
	ld [bc], a                                       ; $7f60: $02
	cp $9b                                           ; $7f61: $fe $9b
	ld bc, $7a0f                                     ; $7f63: $01 $0f $7a

Call_059_7f66:
	inc bc                                           ; $7f66: $03
	reti                                             ; $7f67: $d9


	rst $38                                          ; $7f68: $ff
	sbc $03                                          ; $7f69: $de $03
	rst SubAFromDE                                          ; $7f6b: $df
	add e                                            ; $7f6c: $83
	reti                                             ; $7f6d: $d9


	inc bc                                           ; $7f6e: $03
	sbc b                                            ; $7f6f: $98
	ld bc, $1800                                     ; $7f70: $01 $00 $18
	cp $fd                                           ; $7f73: $fe $fd
	rst $38                                          ; $7f75: $ff
	db $fd                                           ; $7f76: $fd
	sbc $ff                                          ; $7f77: $de $ff
	sub c                                            ; $7f79: $91
	rst FarCall                                          ; $7f7a: $f7
	rst $38                                          ; $7f7b: $ff
	rst $38                                          ; $7f7c: $ff
	cp $fc                                           ; $7f7d: $fe $fc
	rst $38                                          ; $7f7f: $ff
	rst $38                                          ; $7f80: $ff
	ld a, a                                          ; $7f81: $7f
	rra                                              ; $7f82: $1f
	nop                                              ; $7f83: $00
	add b                                            ; $7f84: $80
	ldh [$f0], a                                     ; $7f85: $e0 $f0
	ld hl, sp-$22                                    ; $7f87: $f8 $de
	rst $38                                          ; $7f89: $ff
	ld a, a                                          ; $7f8a: $7f
	res 1, a                                         ; $7f8b: $cb $8f
	cp $00                                           ; $7f8d: $fe $00
	add c                                            ; $7f8f: $81
	ld d, c                                          ; $7f90: $51
	adc l                                            ; $7f91: $8d
	sub $ff                                          ; $7f92: $d6 $ff
	rst $38                                          ; $7f94: $ff
	ld bc, $0000                                     ; $7f95: $01 $00 $00
	add b                                            ; $7f98: $80
	db $d3                                           ; $7f99: $d3
	jp hl                                            ; $7f9a: $e9


	nop                                              ; $7f9b: $00
	ld [bc], a                                       ; $7f9c: $02
	ld a, e                                          ; $7f9d: $7b
	or l                                             ; $7f9e: $b5
	sub d                                            ; $7f9f: $92
	ld [$0f3c], sp                                   ; $7fa0: $08 $3c $0f
	cp $ff                                           ; $7fa3: $fe $ff
	rst $38                                          ; $7fa5: $ff
	cpl                                              ; $7fa6: $2f
	ld e, d                                          ; $7fa7: $5a
	cp l                                             ; $7fa8: $bd
	rst $38                                          ; $7fa9: $ff
	cp a                                             ; $7faa: $bf
	ld b, b                                          ; $7fab: $40
	ret nz                                           ; $7fac: $c0

	ld [hl], a                                       ; $7fad: $77
	cp $9d                                           ; $7fae: $fe $9d
	ret nz                                           ; $7fb0: $c0

	ldh [$da], a                                     ; $7fb1: $e0 $da
	rst $38                                          ; $7fb3: $ff
	sbc e                                            ; $7fb4: $9b
	rst SubAFromDE                                          ; $7fb5: $df
	jr jr_059_7fc4                                   ; $7fb6: $18 $0c

	ld [bc], a                                       ; $7fb8: $02
	ld a, e                                          ; $7fb9: $7b
	rst SubAFromHL                                          ; $7fba: $d7
	rst $38                                          ; $7fbb: $ff
	reti                                             ; $7fbc: $d9


	rst $38                                          ; $7fbd: $ff
	ld a, a                                          ; $7fbe: $7f
	db $e3                                           ; $7fbf: $e3
	sbc c                                            ; $7fc0: $99
	jr nz, jr_059_7fd3                               ; $7fc1: $20 $10

	adc b                                            ; $7fc3: $88

jr_059_7fc4:
	ld b, h                                          ; $7fc4: $44
	ld [hl+], a                                      ; $7fc5: $22
	add hl, de                                       ; $7fc6: $19
	reti                                             ; $7fc7: $d9


	rst $38                                          ; $7fc8: $ff
	db $fc                                           ; $7fc9: $fc
	ld a, a                                          ; $7fca: $7f
	ld h, d                                          ; $7fcb: $62
	sbc [hl]                                         ; $7fcc: $9e
	db $10                                           ; $7fcd: $10
	ld d, e                                          ; $7fce: $53
	ldh a, [$5b]                                     ; $7fcf: $f0 $5b
	ret nc                                           ; $7fd1: $d0

	ld b, a                                          ; $7fd2: $47

jr_059_7fd3:
	ldh a, [$7f]                                     ; $7fd3: $f0 $7f
	ld h, h                                          ; $7fd5: $64
	rst SubAFromDE                                          ; $7fd6: $df
	inc bc                                           ; $7fd7: $03
	rst SubAFromDE                                          ; $7fd8: $df
	ld b, $9d                                        ; $7fd9: $06 $9d
	ld c, $0c                                        ; $7fdb: $0e $0c
	reti                                             ; $7fdd: $d9


	rst $38                                          ; $7fde: $ff
	ld l, e                                          ; $7fdf: $6b
	ld d, $23                                        ; $7fe0: $16 $23
	ret nc                                           ; $7fe2: $d0

	sbc e                                            ; $7fe3: $9b
	ld b, a                                          ; $7fe4: $47
	ld a, e                                          ; $7fe5: $7b
	ld c, a                                          ; $7fe6: $4f
	ld c, e                                          ; $7fe7: $4b
	ld [hl], a                                       ; $7fe8: $77
	cp $9e                                           ; $7fe9: $fe $9e
	rst AddAOntoHL                                          ; $7feb: $ef
	jp c, $d9e7                                      ; $7fec: $da $e7 $d9

	rst $38                                          ; $7fef: $ff
	adc d                                            ; $7ff0: $8a

Call_059_7ff1:
	inc c                                            ; $7ff1: $0c
	inc b                                            ; $7ff2: $04
	and c                                            ; $7ff3: $a1
	jr nc, jr_059_7ffe                               ; $7ff4: $30 $08

	ldh [$c8], a                                     ; $7ff6: $e0 $c8
	db $eb                                           ; $7ff8: $eb
	jp $ffc3                                         ; $7ff9: $c3 $c3 $ff


	cp a                                             ; $7ffc: $bf
	rrca                                             ; $7ffd: $0f

jr_059_7ffe:
	rst SubAFromBC                                          ; $7ffe: $e7
	ld sp, hl                                        ; $7fff: $f9
