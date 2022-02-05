; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $072", ROMX[$4000], BANK[$72]

	ld sp, hl                                        ; $4000: $f9
	sbc e                                            ; $4001: $9b
	rst SubAFromBC                                          ; $4002: $e7
	ld a, h                                          ; $4003: $7c
	sbc a                                            ; $4004: $9f
	ld h, b                                          ; $4005: $60
	rst $38                                          ; $4006: $ff
	add e                                            ; $4007: $83
	db $fc                                           ; $4008: $fc
	inc c                                            ; $4009: $0c
	ldh a, [$3f]                                     ; $400a: $f0 $3f
	ret nz                                           ; $400c: $c0

	cp $01                                           ; $400d: $fe $01
	halt                                             ; $400f: $76
	add $80                                          ; $4010: $c6 $80
	ld c, $f1                                        ; $4012: $0e $f1
	dec a                                            ; $4014: $3d
	jp $0ff1                                         ; $4015: $c3 $f1 $0f


	ld [bc], a                                       ; $4018: $02
	rst $38                                          ; $4019: $ff
	cp $ff                                           ; $401a: $fe $ff
	inc [hl]                                         ; $401c: $34
	rst GetHLinHL                                          ; $401d: $cf
	db $e4                                           ; $401e: $e4
	rra                                              ; $401f: $1f
	add hl, bc                                       ; $4020: $09
	rst $38                                          ; $4021: $ff
	ei                                               ; $4022: $fb
	rst $38                                          ; $4023: $ff
	ld d, $ff                                        ; $4024: $16 $ff
	db $ed                                           ; $4026: $ed
	ccf                                              ; $4027: $3f
	ld [hl], a                                       ; $4028: $77
	cp $0f                                           ; $4029: $fe $0f
	db $fc                                           ; $402b: $fc
	di                                               ; $402c: $f3
	cp $f3                                           ; $402d: $fe $f3
	sbc $fd                                          ; $402f: $de $fd
	adc l                                            ; $4031: $8d
	adc e                                            ; $4032: $8b
	call $ebbb                                       ; $4033: $cd $bb $eb
	sbc l                                            ; $4036: $9d
	ld [hl], a                                       ; $4037: $77
	call $e57f                                       ; $4038: $cd $7f $e5
	sbc l                                            ; $403b: $9d
	rst FarCall                                          ; $403c: $f7
	call $37ff                                       ; $403d: $cd $ff $37
	ld a, $0b                                        ; $4040: $3e $0b
	ld c, $07                                        ; $4042: $0e $07
	ld l, [hl]                                       ; $4044: $6e

jr_072_4045:
	ld [hl], l                                       ; $4045: $75
	ld a, d                                          ; $4046: $7a
	ld a, h                                          ; $4047: $7c
	adc [hl]                                         ; $4048: $8e
	rra                                              ; $4049: $1f
	inc e                                            ; $404a: $1c
	ccf                                              ; $404b: $3f
	ld [hl], $7f                                     ; $404c: $36 $7f
	ld h, c                                          ; $404e: $61
	db $fc                                           ; $404f: $fc
	add b                                            ; $4050: $80
	ld hl, sp-$40                                    ; $4051: $f8 $c0
	jr nc, jr_072_4045                               ; $4053: $30 $f0

	inc c                                            ; $4055: $0c
	db $fc                                           ; $4056: $fc
	ld [bc], a                                       ; $4057: $02
	cp $01                                           ; $4058: $fe $01
	ld e, e                                          ; $405a: $5b
	ld h, h                                          ; $405b: $64
	ld a, a                                          ; $405c: $7f
	ld h, [hl]                                       ; $405d: $66
	ld [hl], a                                       ; $405e: $77
	ld l, b                                          ; $405f: $68
	ld [hl], e                                       ; $4060: $73
	ld [hl], b                                       ; $4061: $70
	ld [de], a                                       ; $4062: $12
	ret nz                                           ; $4063: $c0

	rst SubAFromDE                                          ; $4064: $df
	ld a, a                                          ; $4065: $7f
	add b                                            ; $4066: $80
	or b                                             ; $4067: $b0
	ret nz                                           ; $4068: $c0

	add $01                                          ; $4069: $c6 $01
	pop hl                                           ; $406b: $e1
	ld e, $c8                                        ; $406c: $1e $c8
	ldh a, [rDIV]                                    ; $406e: $f0 $04
	jp $3e01                                         ; $4070: $c3 $01 $3e


	di                                               ; $4073: $f3
	ld a, h                                          ; $4074: $7c
	add a                                            ; $4075: $87
	ld hl, sp+$1e                                    ; $4076: $f8 $1e
	pop af                                           ; $4078: $f1
	db $dd                                           ; $4079: $dd
	inc sp                                           ; $407a: $33
	ld [hl], l                                       ; $407b: $75
	inc hl                                           ; $407c: $23
	ld sp, $c966                                     ; $407d: $31 $66 $c9

jr_072_4080:
	ld h, [hl]                                       ; $4080: $66
	ld h, e                                          ; $4081: $63
	call z, $cc93                                    ; $4082: $cc $93 $cc
	add $9e                                          ; $4085: $c6 $9e
	sbc b                                            ; $4087: $98
	ldh [$c1], a                                     ; $4088: $e0 $c1
	sbc c                                            ; $408a: $99
	ldh [$c0], a                                     ; $408b: $e0 $c0
	jr c, jr_072_40bf                                ; $408d: $38 $30

	ld c, $0c                                        ; $408f: $0e $0c
	ld [hl], l                                       ; $4091: $75
	ld [hl], h                                       ; $4092: $74
	rst SubAFromDE                                          ; $4093: $df
	add b                                            ; $4094: $80
	rst SubAFromDE                                          ; $4095: $df
	ret nz                                           ; $4096: $c0

	rst SubAFromDE                                          ; $4097: $df
	ldh [$9a], a                                     ; $4098: $e0 $9a
	db $10                                           ; $409a: $10
	ldh a, [$08]                                     ; $409b: $f0 $08
	ld hl, sp+$04                                    ; $409d: $f8 $04
	ld a, e                                          ; $409f: $7b
	ld d, d                                          ; $40a0: $52
	halt                                             ; $40a1: $76
	ret nc                                           ; $40a2: $d0

	ld [hl], a                                       ; $40a3: $77
	ld [hl], b                                       ; $40a4: $70
	halt                                             ; $40a5: $76
	ld a, [de]                                       ; $40a6: $1a
	sbc [hl]                                         ; $40a7: $9e
	ld b, b                                          ; $40a8: $40
	ld a, e                                          ; $40a9: $7b
	cp $9e                                           ; $40aa: $fe $9e
	ld a, h                                          ; $40ac: $7c
	ld a, d                                          ; $40ad: $7a
	cp [hl]                                          ; $40ae: $be
	ld a, a                                          ; $40af: $7f
	ldh a, [c]                                       ; $40b0: $f2
	ld b, [hl]                                       ; $40b1: $46
	ret nz                                           ; $40b2: $c0

	rst SubAFromDE                                          ; $40b3: $df
	ldh [$80], a                                     ; $40b4: $e0 $80
	rst SubAFromDE                                          ; $40b6: $df
	ccf                                              ; $40b7: $3f
	inc c                                            ; $40b8: $0c
	ei                                               ; $40b9: $fb
	rst AddAOntoHL                                          ; $40ba: $ef
	ld e, $1b                                        ; $40bb: $1e $1b
	rlca                                             ; $40bd: $07
	nop                                              ; $40be: $00

jr_072_40bf:
	rst $38                                          ; $40bf: $ff
	ld sp, hl                                        ; $40c0: $f9
	ccf                                              ; $40c1: $3f
	sbc $67                                          ; $40c2: $de $67
	cp h                                             ; $40c4: $bc
	rst JumpTable                                          ; $40c5: $c7
	ei                                               ; $40c6: $fb
	adc h                                            ; $40c7: $8c
	rst AddAOntoHL                                          ; $40c8: $ef
	jr jr_072_4080                                   ; $40c9: $18 $b5

	jr @-$42                                         ; $40cb: $18 $bc

	ld de, $318a                                     ; $40cd: $11 $8a $31
	ld c, d                                          ; $40d0: $4a
	ld sp, $6215                                     ; $40d1: $31 $15 $62
	sub h                                            ; $40d4: $94
	sbc [hl]                                         ; $40d5: $9e
	ld h, d                                          ; $40d6: $62
	ldh [$c1], a                                     ; $40d7: $e0 $c1
	sub l                                            ; $40d9: $95
	xor $2e                                          ; $40da: $ee $2e
	ldh [rAUD4LEN], a                                ; $40dc: $e0 $20
	ldh a, [$30]                                     ; $40de: $f0 $30
	db $fc                                           ; $40e0: $fc
	inc l                                            ; $40e1: $2c
	rst $38                                          ; $40e2: $ff
	db $e3                                           ; $40e3: $e3
	ld a, d                                          ; $40e4: $7a
	rst JumpTable                                          ; $40e5: $c7
	ld a, l                                          ; $40e6: $7d
	add sp, -$80                                     ; $40e7: $e8 $80
	rra                                              ; $40e9: $1f
	ccf                                              ; $40ea: $3f
	jr nc, jr_072_412c                               ; $40eb: $30 $3f

	jr nz, @+$81                                     ; $40ed: $20 $7f

	ld d, b                                          ; $40ef: $50
	rst $38                                          ; $40f0: $ff
	adc b                                            ; $40f1: $88
	rst $38                                          ; $40f2: $ff
	ret z                                            ; $40f3: $c8

	cp a                                             ; $40f4: $bf
	or h                                             ; $40f5: $b4
	rst GetHLinHL                                          ; $40f6: $cf
	adc $63                                          ; $40f7: $ce $63
	ldh [c], a                                       ; $40f9: $e2
	inc hl                                           ; $40fa: $23
	db $e3                                           ; $40fb: $e3
	ld de, $09f1                                     ; $40fc: $11 $f1 $09
	ld sp, hl                                        ; $40ff: $f9
	add hl, bc                                       ; $4100: $09
	ld sp, hl                                        ; $4101: $f9
	dec b                                            ; $4102: $05
	db $fd                                           ; $4103: $fd
	push bc                                          ; $4104: $c5
	db $fd                                           ; $4105: $fd
	ccf                                              ; $4106: $3f
	rst $38                                          ; $4107: $ff
	sbc l                                            ; $4108: $9d
	jp $f1fe                                         ; $4109: $c3 $fe $f1


	rst SubAFromDE                                          ; $410c: $df
	add b                                            ; $410d: $80
	add c                                            ; $410e: $81
	ldh [$60], a                                     ; $410f: $e0 $60
	ld a, b                                          ; $4111: $78
	ld hl, sp+$7c                                    ; $4112: $f8 $7c
	adc h                                            ; $4114: $8c
	add d                                            ; $4115: $82
	cp $cf                                           ; $4116: $fe $cf
	rst $38                                          ; $4118: $ff
	or $79                                           ; $4119: $f6 $79
	xor a                                            ; $411b: $af
	ld [hl], b                                       ; $411c: $70
	sbc l                                            ; $411d: $9d
	ld a, [hl]                                       ; $411e: $7e
	inc l                                            ; $411f: $2c
	di                                               ; $4120: $f3
	ld e, b                                          ; $4121: $58
	cp h                                             ; $4122: $bc
	xor [hl]                                         ; $4123: $ae
	inc [hl]                                         ; $4124: $34
	or l                                             ; $4125: $b5
	ld [hl+], a                                      ; $4126: $22
	jr nc, @+$65                                     ; $4127: $30 $63

	ld e, e                                          ; $4129: $5b
	ld l, c                                          ; $412a: $69
	reti                                             ; $412b: $d9


jr_072_412c:
	ld l, c                                          ; $412c: $69
	ldh [$b7], a                                     ; $412d: $e0 $b7
	ld l, [hl]                                       ; $412f: $6e
	ret nz                                           ; $4130: $c0

	ld a, [hl]                                       ; $4131: $7e
	inc d                                            ; $4132: $14
	halt                                             ; $4133: $76
	cp [hl]                                          ; $4134: $be
	sbc h                                            ; $4135: $9c
	ld c, $fe                                        ; $4136: $0e $fe
	dec b                                            ; $4138: $05

jr_072_4139:
	ld a, c                                          ; $4139: $79
	add h                                            ; $413a: $84
	ld [hl], l                                       ; $413b: $75
	adc b                                            ; $413c: $88
	halt                                             ; $413d: $76
	inc e                                            ; $413e: $1c
	sbc [hl]                                         ; $413f: $9e
	add c                                            ; $4140: $81

jr_072_4141:
	ld [hl], d                                       ; $4141: $72
	ld b, $76                                        ; $4142: $06 $76
	cp d                                             ; $4144: $ba
	sbc l                                            ; $4145: $9d
	inc bc                                           ; $4146: $03
	db $fc                                           ; $4147: $fc
	push hl                                          ; $4148: $e5

jr_072_4149:
	rst SubAFromDE                                          ; $4149: $df
	ret nz                                           ; $414a: $c0

	adc l                                            ; $414b: $8d
	and b                                            ; $414c: $a0
	ld h, b                                          ; $414d: $60
	ret nc                                           ; $414e: $d0

	jr nc, jr_072_4141                               ; $414f: $30 $f0

	sub b                                            ; $4151: $90
	ld a, b                                          ; $4152: $78
	ret z                                            ; $4153: $c8

	ret c                                            ; $4154: $d8

	ld l, b                                          ; $4155: $68
	cp b                                             ; $4156: $b8
	ld l, b                                          ; $4157: $68
	ld hl, sp+$28                                    ; $4158: $f8 $28
	db $ec                                           ; $415a: $ec
	inc [hl]                                         ; $415b: $34
	ld e, h                                          ; $415c: $5c
	or h                                             ; $415d: $b4
	ldh [$a7], a                                     ; $415e: $e0 $a7
	db $dd                                           ; $4160: $dd
	add b                                            ; $4161: $80
	sbc b                                            ; $4162: $98
	ld b, b                                          ; $4163: $40
	ret nz                                           ; $4164: $c0

	ld b, b                                          ; $4165: $40
	ret nz                                           ; $4166: $c0

	jr nz, jr_072_4149                               ; $4167: $20 $e0

	jr nz, jr_072_41e5                               ; $4169: $20 $7a

	ld a, [bc]                                       ; $416b: $0a
	ld a, a                                          ; $416c: $7f
	cp $99                                           ; $416d: $fe $99
	jr c, jr_072_4139                                ; $416f: $38 $c8

	ld hl, sp+$08                                    ; $4171: $f8 $08
	call nz, $273c                                   ; $4173: $c4 $3c $27
	nop                                              ; $4176: $00
	rst SubAFromDE                                          ; $4177: $df
	adc b                                            ; $4178: $88
	adc h                                            ; $4179: $8c
	xor d                                            ; $417a: $aa
	sbc c                                            ; $417b: $99
	sbc c                                            ; $417c: $99
	xor d                                            ; $417d: $aa
	xor d                                            ; $417e: $aa
	adc b                                            ; $417f: $88
	ld de, $aa19                                     ; $4180: $11 $19 $aa
	ld [hl+], a                                      ; $4183: $22
	adc b                                            ; $4184: $88
	nop                                              ; $4185: $00
	adc b                                            ; $4186: $88
	and d                                            ; $4187: $a2
	ld [hl+], a                                      ; $4188: $22
	add b                                            ; $4189: $80
	ld [$8099], sp                                   ; $418a: $08 $99 $80
	ld [hl], a                                       ; $418d: $77
	ei                                               ; $418e: $fb
	sub e                                            ; $418f: $93
	db $dd                                           ; $4190: $dd
	inc sp                                           ; $4191: $33
	adc b                                            ; $4192: $88
	ld [$cc99], sp                                   ; $4193: $08 $99 $cc
	db $dd                                           ; $4196: $dd
	call z, $9988                                    ; $4197: $cc $88 $99
	adc b                                            ; $419a: $88
	db $dd                                           ; $419b: $dd
	add $01                                          ; $419c: $c6 $01
	add b                                            ; $419e: $80
	and [hl]                                         ; $419f: $a6
	sbc b                                            ; $41a0: $98
	dec c                                            ; $41a1: $0d
	or b                                             ; $41a2: $b0
	ld l, h                                          ; $41a3: $6c
	or c                                             ; $41a4: $b1
	add hl, sp                                       ; $41a5: $39
	db $e3                                           ; $41a6: $e3
	ld e, d                                          ; $41a7: $5a
	rst SubAFromBC                                          ; $41a8: $e7
	ld d, h                                          ; $41a9: $54
	rst AddAOntoHL                                          ; $41aa: $ef
	adc c                                            ; $41ab: $89
	rst $38                                          ; $41ac: $ff
	sub a                                            ; $41ad: $97
	rst $38                                          ; $41ae: $ff
	ld a, $ff                                        ; $41af: $3e $ff
	rst FarCall                                          ; $41b1: $f7
	ret c                                            ; $41b2: $d8

	rst $38                                          ; $41b3: $ff
	add b                                            ; $41b4: $80
	rst $38                                          ; $41b5: $ff
	nop                                              ; $41b6: $00
	ei                                               ; $41b7: $fb
	rlca                                             ; $41b8: $07
	db $ec                                           ; $41b9: $ec
	inc e                                            ; $41ba: $1c
	reti                                             ; $41bb: $d9


	add hl, sp                                       ; $41bc: $39
	cp $80                                           ; $41bd: $fe $80
	ld a, a                                          ; $41bf: $7f
	xor $2e                                          ; $41c0: $ee $2e
	jp z, $e50a                                      ; $41c2: $ca $0a $e5

	dec c                                            ; $41c5: $0d
	rst FarCall                                          ; $41c6: $f7
	rlca                                             ; $41c7: $07
	rst $38                                          ; $41c8: $ff
	nop                                              ; $41c9: $00
	ld a, [$fd00]                                    ; $41ca: $fa $00 $fd
	nop                                              ; $41cd: $00
	db $fc                                           ; $41ce: $fc
	nop                                              ; $41cf: $00
	cp $80                                           ; $41d0: $fe $80
	cp $c0                                           ; $41d2: $fe $c0
	rst $38                                          ; $41d4: $ff
	ld h, b                                          ; $41d5: $60
	rst $38                                          ; $41d6: $ff
	jr nc, @+$01                                     ; $41d7: $30 $ff

	inc c                                            ; $41d9: $0c
	sbc a                                            ; $41da: $9f
	inc bc                                           ; $41db: $03
	add a                                            ; $41dc: $87
	nop                                              ; $41dd: $00
	add b                                            ; $41de: $80
	pop bc                                           ; $41df: $c1
	nop                                              ; $41e0: $00
	ld a, [hl+]                                      ; $41e1: $2a
	call nz, $cd22                                   ; $41e2: $c4 $22 $cd

jr_072_41e5:
	res 3, l                                         ; $41e5: $cb $9d
	ld e, c                                          ; $41e7: $59
	cp a                                             ; $41e8: $bf
	dec sp                                           ; $41e9: $3b
	xor $77                                          ; $41ea: $ee $77
	db $dd                                           ; $41ec: $dd
	db $fd                                           ; $41ed: $fd
	sbc c                                            ; $41ee: $99
	ld a, [$67b3]                                    ; $41ef: $fa $b3 $67
	add a                                            ; $41f2: $87
	add $00                                          ; $41f3: $c6 $00
	ldh [rP1], a                                     ; $41f5: $e0 $00
	ldh a, [rP1]                                     ; $41f7: $f0 $00
	ld [hl], b                                       ; $41f9: $70
	add b                                            ; $41fa: $80
	or b                                             ; $41fb: $b0
	ret nz                                           ; $41fc: $c0

	ldh a, [$9d]                                     ; $41fd: $f0 $9d
	ret nz                                           ; $41ff: $c0

	and b                                            ; $4200: $a0
	call c, $9680                                    ; $4201: $dc $80 $96
	ld bc, $0380                                     ; $4204: $01 $80 $03
	nop                                              ; $4207: $00
	add e                                            ; $4208: $83
	nop                                              ; $4209: $00
	and c                                            ; $420a: $a1
	nop                                              ; $420b: $00
	ld b, b                                          ; $420c: $40
	or $80                                           ; $420d: $f6 $80
	add b                                            ; $420f: $80
	nop                                              ; $4210: $00
	ret nz                                           ; $4211: $c0

	nop                                              ; $4212: $00
	pop af                                           ; $4213: $f1
	ret nz                                           ; $4214: $c0

	rst $38                                          ; $4215: $ff
	inc sp                                           ; $4216: $33
	ld a, l                                          ; $4217: $7d
	ret z                                            ; $4218: $c8

	xor d                                            ; $4219: $aa
	call c, $d6bc                                    ; $421a: $dc $bc $d6
	rst SubAFromHL                                          ; $421d: $d7
	or [hl]                                          ; $421e: $b6
	or $a3                                           ; $421f: $f6 $a3
	inc hl                                           ; $4221: $23
	pop hl                                           ; $4222: $e1
	ld b, a                                          ; $4223: $47
	ret nz                                           ; $4224: $c0

	rst SubAFromDE                                          ; $4225: $df
	sbc h                                            ; $4226: $9c
	adc [hl]                                         ; $4227: $8e
	rra                                              ; $4228: $1f
	dec sp                                           ; $4229: $3b
	rlca                                             ; $422a: $07
	ld a, $00                                        ; $422b: $3e $00
	ld a, h                                          ; $422d: $7c
	add b                                            ; $422e: $80
	nop                                              ; $422f: $00
	ld l, [hl]                                       ; $4230: $6e
	inc e                                            ; $4231: $1c
	ld d, a                                          ; $4232: $57
	ld [hl], $67                                     ; $4233: $36 $67
	daa                                              ; $4235: $27
	dec sp                                           ; $4236: $3b
	ccf                                              ; $4237: $3f
	ld a, [hl-]                                      ; $4238: $3a
	ld a, [hl-]                                      ; $4239: $3a
	ld a, [hl+]                                      ; $423a: $2a
	ld a, [hl+]                                      ; $423b: $2a
	inc d                                            ; $423c: $14
	inc [hl]                                         ; $423d: $34
	cp [hl]                                          ; $423e: $be
	jr @-$3d                                         ; $423f: $18 $c1

	ret nz                                           ; $4241: $c0

	bit 0, b                                         ; $4242: $cb $40
	sub l                                            ; $4244: $95
	ld bc, $0103                                     ; $4245: $01 $03 $01
	rst $38                                          ; $4248: $ff
	inc bc                                           ; $4249: $03
	ld a, [$f406]                                    ; $424a: $fa $06 $f4
	inc c                                            ; $424d: $0c
	add b                                            ; $424e: $80
	add sp, $18                                      ; $424f: $e8 $18
	ret nc                                           ; $4251: $d0

	jr nc, @-$1e                                     ; $4252: $30 $e0

	ld h, b                                          ; $4254: $60
	ret nz                                           ; $4255: $c0

	ret nz                                           ; $4256: $c0

	nop                                              ; $4257: $00
	nop                                              ; $4258: $00
	call c, $bcb4                                    ; $4259: $dc $b4 $bc
	call nc, $da76                                   ; $425c: $d4 $76 $da
	ld e, [hl]                                       ; $425f: $5e
	ld [$ef39], a                                    ; $4260: $ea $39 $ef
	cpl                                              ; $4263: $2f
	rst FarCall                                          ; $4264: $f7
	sub [hl]                                         ; $4265: $96
	cp $4a                                           ; $4266: $fe $4a
	cp $3f                                           ; $4268: $fe $3f
	rst $38                                          ; $426a: $ff
	or h                                             ; $426b: $b4
	call c, $80b6                                    ; $426c: $dc $b6 $80
	ld e, d                                          ; $426f: $5a
	or $3a                                           ; $4270: $f6 $3a
	db $eb                                           ; $4272: $eb
	dec a                                            ; $4273: $3d
	db $fd                                           ; $4274: $fd
	cpl                                              ; $4275: $2f
	cp e                                             ; $4276: $bb
	db $eb                                           ; $4277: $eb

jr_072_4278:
	db $ed                                           ; $4278: $ed
	ld [hl], l                                       ; $4279: $75
	push de                                          ; $427a: $d5
	ld a, l                                          ; $427b: $7d
	halt                                             ; $427c: $76
	jp c, $defa                                      ; $427d: $da $fa $de

	push de                                          ; $4280: $d5
	rst FarCall                                          ; $4281: $f7
	db $eb                                           ; $4282: $eb
	ei                                               ; $4283: $fb
	jp hl                                            ; $4284: $e9


	ld sp, hl                                        ; $4285: $f9
	ld e, c                                          ; $4286: $59
	reti                                             ; $4287: $d9


	ret c                                            ; $4288: $d8

	ld e, b                                          ; $4289: $58
	ret z                                            ; $428a: $c8

	ld c, b                                          ; $428b: $48
	ret z                                            ; $428c: $c8

	ret z                                            ; $428d: $c8

	rst SubAFromDE                                          ; $428e: $df
	ret nz                                           ; $428f: $c0

	db $dd                                           ; $4290: $dd
	ld b, b                                          ; $4291: $40
	ei                                               ; $4292: $fb
	daa                                              ; $4293: $27
	nop                                              ; $4294: $00
	ld a, a                                          ; $4295: $7f
	cp $97                                           ; $4296: $fe $97
	rst FarCall                                          ; $4298: $f7
	rrca                                             ; $4299: $0f
	reti                                             ; $429a: $d9


jr_072_429b:
	add hl, sp                                       ; $429b: $39
	rst $38                                          ; $429c: $ff
	ld a, a                                          ; $429d: $7f
	xor $2f                                          ; $429e: $ee $2f
	inc bc                                           ; $42a0: $03
	nop                                              ; $42a1: $00
	inc sp                                           ; $42a2: $33
	nop                                              ; $42a3: $00
	ld l, [hl]                                       ; $42a4: $6e
	cp $9d                                           ; $42a5: $fe $9d
	ldh [$c0], a                                     ; $42a7: $e0 $c0
	inc bc                                           ; $42a9: $03
	nop                                              ; $42aa: $00
	dec hl                                           ; $42ab: $2b
	nop                                              ; $42ac: $00
	sub l                                            ; $42ad: $95
	ld a, [hl]                                       ; $42ae: $7e
	nop                                              ; $42af: $00
	ld l, l                                          ; $42b0: $6d
	ld e, $46                                        ; $42b1: $1e $46
	daa                                              ; $42b3: $27
	ccf                                              ; $42b4: $3f

jr_072_42b5:
	ccf                                              ; $42b5: $3f
	ld a, [hl-]                                      ; $42b6: $3a
	ld a, $03                                        ; $42b7: $3e $03
	nop                                              ; $42b9: $00
	rra                                              ; $42ba: $1f
	nop                                              ; $42bb: $00
	sbc h                                            ; $42bc: $9c
	ld l, e                                          ; $42bd: $6b
	db $ed                                           ; $42be: $ed
	ld [hl], l                                       ; $42bf: $75
	rra                                              ; $42c0: $1f
	jr nz, jr_072_433a                               ; $42c1: $20 $77

	cp $99                                           ; $42c3: $fe $99
	rst AddAOntoHL                                          ; $42c5: $ef
	rra                                              ; $42c6: $1f
	cp $7f                                           ; $42c7: $fe $7f
	ld [$032a], a                                    ; $42c9: $ea $2a $03
	jr nz, jr_072_4301                               ; $42cc: $20 $33

jr_072_42ce:
	jr nz, jr_072_4347                               ; $42ce: $20 $77

	cp $9e                                           ; $42d0: $fe $9e
	and b                                            ; $42d2: $a0
	sbc $c0                                          ; $42d3: $de $c0
	inc bc                                           ; $42d5: $03
	jr nz, jr_072_431b                               ; $42d6: $20 $43

	jr nz, jr_072_4278                               ; $42d8: $20 $9e

	ccf                                              ; $42da: $3f
	ld a, e                                          ; $42db: $7b
	ld [hl+], a                                      ; $42dc: $22
	ld a, a                                          ; $42dd: $7f
	ld e, $77                                        ; $42de: $1e $77
	inc e                                            ; $42e0: $1c
	sbc e                                            ; $42e1: $9b
	inc a                                            ; $42e2: $3c
	ld e, $3b                                        ; $42e3: $1e $3b
	ccf                                              ; $42e5: $3f
	inc bc                                           ; $42e6: $03
	jr nz, @+$05                                     ; $42e7: $20 $03

	jr nz, jr_072_4342                               ; $42e9: $20 $57

	jr nz, jr_072_436c                               ; $42eb: $20 $7f

	ldh [$9b], a                                     ; $42ed: $e0 $9b
	db $fc                                           ; $42ef: $fc
	rst SubAFromDE                                          ; $42f0: $df
	rst FarCall                                          ; $42f1: $f7
	cp b                                             ; $42f2: $b8
	ld h, a                                          ; $42f3: $67
	jr nz, @+$71                                     ; $42f4: $20 $6f

	cp $9b                                           ; $42f6: $fe $9b
	push af                                          ; $42f8: $f5
	ld a, b                                          ; $42f9: $78
	rst $38                                          ; $42fa: $ff
	rra                                              ; $42fb: $1f
	inc bc                                           ; $42fc: $03
	jr nz, jr_072_436e                               ; $42fd: $20 $6f

	jr nz, jr_072_429b                               ; $42ff: $20 $9a

jr_072_4301:
	inc sp                                           ; $4301: $33
	rst SubAFromBC                                          ; $4302: $e7
	add a                                            ; $4303: $87
	ld b, [hl]                                       ; $4304: $46
	add b                                            ; $4305: $80
	ld e, a                                          ; $4306: $5f
	jr nz, @+$81                                     ; $4307: $20 $7f

	or $7f                                           ; $4309: $f6 $7f
	jr c, jr_072_438c                                ; $430b: $38 $7f

	cp $9b                                           ; $430d: $fe $9b
	ld b, c                                          ; $430f: $41
	ret nz                                           ; $4310: $c0

	add e                                            ; $4311: $83
	add b                                            ; $4312: $80
	inc bc                                           ; $4313: $03
	jr nz, jr_072_4389                               ; $4314: $20 $73

	jr nz, @-$64                                     ; $4316: $20 $9a

	rst GetHLinHL                                          ; $4318: $cf
	add b                                            ; $4319: $80
	sbc a                                            ; $431a: $9f

jr_072_431b:
	inc e                                            ; $431b: $1c
	ld l, $7b                                        ; $431c: $2e $7b
	ld e, $6f                                        ; $431e: $1e $6f
	jr nz, jr_072_42b5                               ; $4320: $20 $93

	ld a, b                                          ; $4322: $78
	nop                                              ; $4323: $00
	jr c, jr_072_4326                                ; $4324: $38 $00

jr_072_4326:
	inc a                                            ; $4326: $3c
	nop                                              ; $4327: $00
	ld a, $00                                        ; $4328: $3e $00
	ld h, $36                                        ; $432a: $26 $36
	cp [hl]                                          ; $432c: $be

jr_072_432d:
	inc e                                            ; $432d: $1c
	inc bc                                           ; $432e: $03
	jr nz, jr_072_4394                               ; $432f: $20 $63

	jr nz, jr_072_42ce                               ; $4331: $20 $9b

	inc [hl]                                         ; $4333: $34
	call c, $dab6                                    ; $4334: $dc $b6 $da
	ld e, a                                          ; $4337: $5f
	jr nz, jr_072_432d                               ; $4338: $20 $f3

jr_072_433a:
	rst SubAFromDE                                          ; $433a: $df
	inc b                                            ; $433b: $04
	sbc d                                            ; $433c: $9a
	rlca                                             ; $433d: $07
	ld [bc], a                                       ; $433e: $02
	nop                                              ; $433f: $00
	nop                                              ; $4340: $00
	inc bc                                           ; $4341: $03

jr_072_4342:
	and $df                                          ; $4342: $e6 $df
	add b                                            ; $4344: $80
	push hl                                          ; $4345: $e5
	sbc d                                            ; $4346: $9a

jr_072_4347:
	inc c                                            ; $4347: $0c
	ld [$070f], sp                                   ; $4348: $08 $0f $07
	rlca                                             ; $434b: $07
	rla                                              ; $434c: $17
	pop bc                                           ; $434d: $c1
	inc bc                                           ; $434e: $03
	ret nz                                           ; $434f: $c0

	rst SubAFromDE                                          ; $4350: $df
	rrca                                             ; $4351: $0f
	sbc $07                                          ; $4352: $de $07
	ld a, e                                          ; $4354: $7b
	ld a, h                                          ; $4355: $7c
	rra                                              ; $4356: $1f
	ret nz                                           ; $4357: $c0

	rla                                              ; $4358: $17
	cp a                                             ; $4359: $bf
	ld [hl], a                                       ; $435a: $77
	ret nz                                           ; $435b: $c0

	sbc $0f                                          ; $435c: $de $0f
	dec de                                           ; $435e: $1b
	cp [hl]                                          ; $435f: $be
	ld b, a                                          ; $4360: $47
	ret nz                                           ; $4361: $c0

	ret                                              ; $4362: $c9


	ld bc, $a680                                     ; $4363: $01 $80 $a6
	sbc b                                            ; $4366: $98
	dec c                                            ; $4367: $0d
	or b                                             ; $4368: $b0
	ld l, h                                          ; $4369: $6c
	or c                                             ; $436a: $b1
	add hl, sp                                       ; $436b: $39

jr_072_436c:
	db $e3                                           ; $436c: $e3
	ld e, d                                          ; $436d: $5a

jr_072_436e:
	rst SubAFromBC                                          ; $436e: $e7
	ld d, h                                          ; $436f: $54
	rst AddAOntoHL                                          ; $4370: $ef
	adc c                                            ; $4371: $89
	rst $38                                          ; $4372: $ff
	sub a                                            ; $4373: $97
	rst $38                                          ; $4374: $ff
	dec a                                            ; $4375: $3d
	cp $ff                                           ; $4376: $fe $ff
	ret nc                                           ; $4378: $d0

	rst $38                                          ; $4379: $ff
	add b                                            ; $437a: $80
	ld hl, sp+$07                                    ; $437b: $f8 $07
	rst AddAOntoHL                                          ; $437d: $ef
	rra                                              ; $437e: $1f
	reti                                             ; $437f: $d9


	add hl, sp                                       ; $4380: $39
	ldh a, [c]                                       ; $4381: $f2
	ld [hl], e                                       ; $4382: $73
	xor $91                                          ; $4383: $ee $91
	ld a, $ee                                        ; $4385: $3e $ee
	ld l, $ca                                        ; $4387: $2e $ca

jr_072_4389:
	ld a, [bc]                                       ; $4389: $0a
	push hl                                          ; $438a: $e5
	dec c                                            ; $438b: $0d

jr_072_438c:
	rst FarCall                                          ; $438c: $f7
	rlca                                             ; $438d: $07
	rst $38                                          ; $438e: $ff
	nop                                              ; $438f: $00
	ld hl, sp+$00                                    ; $4390: $f8 $00
	db $fc                                           ; $4392: $fc
	ld a, e                                          ; $4393: $7b

jr_072_4394:
	cp $80                                           ; $4394: $fe $80
	cp $80                                           ; $4396: $fe $80
	cp $c0                                           ; $4398: $fe $c0
	rst $38                                          ; $439a: $ff
	ld h, b                                          ; $439b: $60
	rst $38                                          ; $439c: $ff
	jr nc, @+$01                                     ; $439d: $30 $ff

	inc c                                            ; $439f: $0c
	sbc a                                            ; $43a0: $9f
	inc bc                                           ; $43a1: $03
	add a                                            ; $43a2: $87
	nop                                              ; $43a3: $00
	pop bc                                           ; $43a4: $c1
	nop                                              ; $43a5: $00
	ld a, [hl+]                                      ; $43a6: $2a
	call nz, $cd22                                   ; $43a7: $c4 $22 $cd
	res 3, l                                         ; $43aa: $cb $9d
	ld e, c                                          ; $43ac: $59
	cp a                                             ; $43ad: $bf
	dec sp                                           ; $43ae: $3b
	xor $77                                          ; $43af: $ee $77
	db $dd                                           ; $43b1: $dd
	db $fd                                           ; $43b2: $fd
	sbc c                                            ; $43b3: $99
	ld a, d                                          ; $43b4: $7a
	adc a                                            ; $43b5: $8f
	or e                                             ; $43b6: $b3
	rst SubAFromBC                                          ; $43b7: $e7
	rlca                                             ; $43b8: $07
	add $00                                          ; $43b9: $c6 $00
	ldh [rP1], a                                     ; $43bb: $e0 $00
	ldh a, [rP1]                                     ; $43bd: $f0 $00
	ld [hl], b                                       ; $43bf: $70
	add b                                            ; $43c0: $80
	or b                                             ; $43c1: $b0
	ret nz                                           ; $43c2: $c0

	ldh a, [$c0]                                     ; $43c3: $f0 $c0

jr_072_43c5:
	and b                                            ; $43c5: $a0
	call c, $9880                                    ; $43c6: $dc $80 $98
	ld bc, $0380                                     ; $43c9: $01 $80 $03
	nop                                              ; $43cc: $00
	add e                                            ; $43cd: $83
	nop                                              ; $43ce: $00
	ld bc, $80f4                                     ; $43cf: $01 $f4 $80
	add b                                            ; $43d2: $80
	nop                                              ; $43d3: $00
	ret nz                                           ; $43d4: $c0

	nop                                              ; $43d5: $00
	pop af                                           ; $43d6: $f1
	ret nz                                           ; $43d7: $c0

	rst $38                                          ; $43d8: $ff
	inc sp                                           ; $43d9: $33
	ld a, l                                          ; $43da: $7d
	ret z                                            ; $43db: $c8

	xor d                                            ; $43dc: $aa
	call c, $d6bc                                    ; $43dd: $dc $bc $d6
	rst SubAFromHL                                          ; $43e0: $d7
	or [hl]                                          ; $43e1: $b6
	or $a3                                           ; $43e2: $f6 $a3
	inc hl                                           ; $43e4: $23
	pop hl                                           ; $43e5: $e1
	ld e, a                                          ; $43e6: $5f
	adc $d7                                          ; $43e7: $ce $d7
	adc a                                            ; $43e9: $8f
	sbc l                                            ; $43ea: $9d
	inc bc                                           ; $43eb: $03
	ccf                                              ; $43ec: $3f
	nop                                              ; $43ed: $00
	ld a, $00                                        ; $43ee: $3e $00
	ld [hl], b                                       ; $43f0: $70
	add b                                            ; $43f1: $80
	inc c                                            ; $43f2: $0c
	ld l, a                                          ; $43f3: $6f
	ld e, $57                                        ; $43f4: $1e $57
	scf                                              ; $43f6: $37

jr_072_43f7:
	ld h, a                                          ; $43f7: $67
	daa                                              ; $43f8: $27
	ld a, [hl-]                                      ; $43f9: $3a
	ld a, $3a                                        ; $43fa: $3e $3a
	ld a, [hl-]                                      ; $43fc: $3a
	ld a, [hl+]                                      ; $43fd: $2a
	ld a, [hl+]                                      ; $43fe: $2a
	inc d                                            ; $43ff: $14
	inc [hl]                                         ; $4400: $34
	cp [hl]                                          ; $4401: $be
	jr jr_072_43c5                                   ; $4402: $18 $c1

	ret nz                                           ; $4404: $c0

	pop bc                                           ; $4405: $c1
	ld b, b                                          ; $4406: $40
	add c                                            ; $4407: $81
	ld bc, $0103                                     ; $4408: $01 $03 $01
	rst $38                                          ; $440b: $ff
	inc bc                                           ; $440c: $03
	ld a, [$f406]                                    ; $440d: $fa $06 $f4
	inc c                                            ; $4410: $0c
	add b                                            ; $4411: $80
	add sp, $18                                      ; $4412: $e8 $18
	ret nc                                           ; $4414: $d0

	jr nc, jr_072_43f7                               ; $4415: $30 $e0

	ld h, b                                          ; $4417: $60
	ret nz                                           ; $4418: $c0

	ret nz                                           ; $4419: $c0

	nop                                              ; $441a: $00
	nop                                              ; $441b: $00
	call c, $bcb4                                    ; $441c: $dc $b4 $bc
	call nc, $da76                                   ; $441f: $d4 $76 $da
	ld e, [hl]                                       ; $4422: $5e
	ld [$ef39], a                                    ; $4423: $ea $39 $ef
	cpl                                              ; $4426: $2f
	rst FarCall                                          ; $4427: $f7
	sub [hl]                                         ; $4428: $96
	cp $4a                                           ; $4429: $fe $4a
	cp $bf                                           ; $442b: $fe $bf
	rst $38                                          ; $442d: $ff
	or h                                             ; $442e: $b4
	call c, $80b6                                    ; $442f: $dc $b6 $80
	ld e, d                                          ; $4432: $5a
	or $3a                                           ; $4433: $f6 $3a
	db $eb                                           ; $4435: $eb
	dec a                                            ; $4436: $3d
	ld a, l                                          ; $4437: $7d
	xor a                                            ; $4438: $af
	cp e                                             ; $4439: $bb
	db $eb                                           ; $443a: $eb
	db $ed                                           ; $443b: $ed
	ld [hl], l                                       ; $443c: $75
	push de                                          ; $443d: $d5
	ld a, l                                          ; $443e: $7d
	halt                                             ; $443f: $76
	jp c, $defa                                      ; $4440: $da $fa $de

	push de                                          ; $4443: $d5
	rst FarCall                                          ; $4444: $f7
	db $eb                                           ; $4445: $eb
	ei                                               ; $4446: $fb
	jp hl                                            ; $4447: $e9


	ld sp, hl                                        ; $4448: $f9
	ld e, c                                          ; $4449: $59
	reti                                             ; $444a: $d9


	ret c                                            ; $444b: $d8

	ld e, b                                          ; $444c: $58
	ret z                                            ; $444d: $c8

	ld c, b                                          ; $444e: $48
	ret z                                            ; $444f: $c8

	ret z                                            ; $4450: $c8

	rst SubAFromDE                                          ; $4451: $df
	ret nz                                           ; $4452: $c0

	db $dd                                           ; $4453: $dd

jr_072_4454:
	ld b, b                                          ; $4454: $40
	ei                                               ; $4455: $fb
	cpl                                              ; $4456: $2f
	nop                                              ; $4457: $00
	ld a, a                                          ; $4458: $7f
	ld [de], a                                       ; $4459: $12
	sub a                                            ; $445a: $97
	ldh a, [rIF]                                     ; $445b: $f0 $0f
	rst AddAOntoHL                                          ; $445d: $ef
	rra                                              ; $445e: $1f
	di                                               ; $445f: $f3
	inc sp                                           ; $4460: $33
	xor $7f                                          ; $4461: $ee $7f
	inc bc                                           ; $4463: $03
	nop                                              ; $4464: $00
	dec hl                                           ; $4465: $2b
	nop                                              ; $4466: $00
	ld l, [hl]                                       ; $4467: $6e
	cp $9d                                           ; $4468: $fe $9d
	ldh [$c0], a                                     ; $446a: $e0 $c0
	inc bc                                           ; $446c: $03
	nop                                              ; $446d: $00
	inc sp                                           ; $446e: $33
	nop                                              ; $446f: $00
	sub e                                            ; $4470: $93
	ld a, h                                          ; $4471: $7c
	nop                                              ; $4472: $00
	ld [hl], d                                       ; $4473: $72

jr_072_4474:
	inc c                                            ; $4474: $0c
	ld l, l                                          ; $4475: $6d
	ld e, $46                                        ; $4476: $1e $46
	daa                                              ; $4478: $27
	ccf                                              ; $4479: $3f
	ccf                                              ; $447a: $3f
	ld a, [hl-]                                      ; $447b: $3a
	ld a, $03                                        ; $447c: $3e $03
	nop                                              ; $447e: $00
	dec hl                                           ; $447f: $2b
	nop                                              ; $4480: $00
	sbc c                                            ; $4481: $99

jr_072_4482:
	db $fd                                           ; $4482: $fd
	cpl                                              ; $4483: $2f
	cp e                                             ; $4484: $bb
	ld l, e                                          ; $4485: $6b
	db $ed                                           ; $4486: $ed
	ld [hl], l                                       ; $4487: $75
	daa                                              ; $4488: $27
	jr nz, jr_072_44fa                               ; $4489: $20 $6f

	cp $7f                                           ; $448b: $fe $7f
	inc e                                            ; $448d: $1c
	sbc e                                            ; $448e: $9b
	cp $7f                                           ; $448f: $fe $7f
	ld [$032a], a                                    ; $4491: $ea $2a $03
	jr nz, @+$35                                     ; $4494: $20 $33

	jr nz, jr_072_450f                               ; $4496: $20 $77

	cp $9e                                           ; $4498: $fe $9e
	and b                                            ; $449a: $a0
	sbc $c0                                          ; $449b: $de $c0
	inc bc                                           ; $449d: $03
	jr nz, jr_072_44e3                               ; $449e: $20 $43

	jr nz, jr_072_4521                               ; $44a0: $20 $7f

	cp $9e                                           ; $44a2: $fe $9e
	ld a, [hl]                                       ; $44a4: $7e
	ld a, e                                          ; $44a5: $7b
	ld e, $7f                                        ; $44a6: $1e $7f
	cp $7f                                           ; $44a8: $fe $7f
	ld a, [$3c9b]                                    ; $44aa: $fa $9b $3c
	ld e, $3b                                        ; $44ad: $1e $3b
	ccf                                              ; $44af: $3f
	inc bc                                           ; $44b0: $03
	jr nz, @+$05                                     ; $44b1: $20 $03

	jr nz, jr_072_450c                               ; $44b3: $20 $57

	jr nz, jr_072_4454                               ; $44b5: $20 $9d

	inc a                                            ; $44b7: $3c
	rst $38                                          ; $44b8: $ff
	ld d, a                                          ; $44b9: $57
	jr nz, jr_072_452b                               ; $44ba: $20 $6f

	cp $9b                                           ; $44bc: $fe $9b
	push af                                          ; $44be: $f5
	ld a, b                                          ; $44bf: $78
	rst $38                                          ; $44c0: $ff
	rra                                              ; $44c1: $1f
	inc bc                                           ; $44c2: $03
	jr nz, jr_072_4538                               ; $44c3: $20 $73

	jr nz, @-$63                                     ; $44c5: $20 $9b

	ld a, [$67b3]                                    ; $44c7: $fa $b3 $67
	add a                                            ; $44ca: $87
	ld d, a                                          ; $44cb: $57
	jr nz, @+$81                                     ; $44cc: $20 $7f

	or $7f                                           ; $44ce: $f6 $7f
	jr c, jr_072_4551                                ; $44d0: $38 $7f

	cp $9b                                           ; $44d2: $fe $9b
	ld b, c                                          ; $44d4: $41
	ret nz                                           ; $44d5: $c0

	add e                                            ; $44d6: $83
	add b                                            ; $44d7: $80
	inc bc                                           ; $44d8: $03
	jr nz, jr_072_4556                               ; $44d9: $20 $7b

	jr nz, jr_072_4474                               ; $44db: $20 $97

	ld b, a                                          ; $44dd: $47
	ret nz                                           ; $44de: $c0

	rst SubAFromDE                                          ; $44df: $df
	sbc [hl]                                         ; $44e0: $9e
	add a                                            ; $44e1: $87
	rra                                              ; $44e2: $1f

jr_072_44e3:
	ld a, $01                                        ; $44e3: $3e $01
	ld h, a                                          ; $44e5: $67
	jr nz, jr_072_4482                               ; $44e6: $20 $9a

	ld a, b                                          ; $44e8: $78
	nop                                              ; $44e9: $00
	jr c, jr_072_44ec                                ; $44ea: $38 $00

jr_072_44ec:
	inc a                                            ; $44ec: $3c
	ld a, d                                          ; $44ed: $7a
	ld [hl-], a                                      ; $44ee: $32
	sbc e                                            ; $44ef: $9b

jr_072_44f0:
	ld h, $36                                        ; $44f0: $26 $36
	cp [hl]                                          ; $44f2: $be
	inc e                                            ; $44f3: $1c
	inc bc                                           ; $44f4: $03
	jr nz, @+$6d                                     ; $44f5: $20 $6b

	jr nz, @-$60                                     ; $44f7: $20 $9e

	ccf                                              ; $44f9: $3f

jr_072_44fa:
	ld c, e                                          ; $44fa: $4b
	jr nz, jr_072_44f0                               ; $44fb: $20 $f3

	rst SubAFromDE                                          ; $44fd: $df
	ld [$079b], sp                                   ; $44fe: $08 $9b $07
	inc b                                            ; $4501: $04
	nop                                              ; $4502: $00
	inc bc                                           ; $4503: $03
	push hl                                          ; $4504: $e5
	rst SubAFromDE                                          ; $4505: $df
	add b                                            ; $4506: $80
	push hl                                          ; $4507: $e5
	sbc l                                            ; $4508: $9d
	ld [$de0c], sp                                   ; $4509: $08 $0c $de

jr_072_450c:
	rrca                                             ; $450c: $0f
	sbc l                                            ; $450d: $9d
	rlca                                             ; $450e: $07

jr_072_450f:
	ld b, $03                                        ; $450f: $06 $03
	ret nz                                           ; $4511: $c0

	jp hl                                            ; $4512: $e9


	sbc [hl]                                         ; $4513: $9e
	ld a, [bc]                                       ; $4514: $0a
	ld [hl], e                                       ; $4515: $73
	ret nz                                           ; $4516: $c0

	sbc [hl]                                         ; $4517: $9e
	inc bc                                           ; $4518: $03
	dec de                                           ; $4519: $1b
	cp a                                             ; $451a: $bf
	rlca                                             ; $451b: $07
	ret nz                                           ; $451c: $c0

	sub a                                            ; $451d: $97
	rra                                              ; $451e: $1f
	rrca                                             ; $451f: $0f
	rra                                              ; $4520: $1f

jr_072_4521:
	rrca                                             ; $4521: $0f
	ld e, $0f                                        ; $4522: $1e $0f
	ld b, $0e                                        ; $4524: $06 $0e
	daa                                              ; $4526: $27
	cp l                                             ; $4527: $bd
	sbc $80                                          ; $4528: $de $80
	db $f4                                           ; $452a: $f4

jr_072_452b:
	sbc l                                            ; $452b: $9d
	ld bc, $a680                                     ; $452c: $01 $80 $a6
	sbc b                                            ; $452f: $98
	dec c                                            ; $4530: $0d
	or b                                             ; $4531: $b0
	ld l, h                                          ; $4532: $6c
	or c                                             ; $4533: $b1
	add hl, sp                                       ; $4534: $39
	db $e3                                           ; $4535: $e3
	ld e, d                                          ; $4536: $5a
	rst SubAFromBC                                          ; $4537: $e7

jr_072_4538:
	ld d, h                                          ; $4538: $54
	rst AddAOntoHL                                          ; $4539: $ef
	adc c                                            ; $453a: $89
	rst $38                                          ; $453b: $ff
	sub a                                            ; $453c: $97
	rst $38                                          ; $453d: $ff
	inc a                                            ; $453e: $3c
	rst $38                                          ; $453f: $ff
	rst $38                                          ; $4540: $ff
	ret nc                                           ; $4541: $d0

	rst $38                                          ; $4542: $ff
	add b                                            ; $4543: $80
	rst $38                                          ; $4544: $ff
	nop                                              ; $4545: $00
	rst FarCall                                          ; $4546: $f7
	rrca                                             ; $4547: $0f
	reti                                             ; $4548: $d9


	add hl, sp                                       ; $4549: $39
	ldh a, [c]                                       ; $454a: $f2
	ld [hl], e                                       ; $454b: $73
	xor $91                                          ; $454c: $ee $91
	ccf                                              ; $454e: $3f
	xor $2e                                          ; $454f: $ee $2e

jr_072_4551:
	jp z, $e50a                                      ; $4551: $ca $0a $e5

	dec c                                            ; $4554: $0d
	rst FarCall                                          ; $4555: $f7

jr_072_4556:
	rlca                                             ; $4556: $07
	rst $38                                          ; $4557: $ff
	nop                                              ; $4558: $00
	ld hl, sp+$00                                    ; $4559: $f8 $00
	db $fc                                           ; $455b: $fc
	ld a, e                                          ; $455c: $7b
	cp $80                                           ; $455d: $fe $80
	cp $80                                           ; $455f: $fe $80
	cp $c0                                           ; $4561: $fe $c0
	rst $38                                          ; $4563: $ff
	ld h, b                                          ; $4564: $60
	rst $38                                          ; $4565: $ff
	jr nc, @+$01                                     ; $4566: $30 $ff

	inc c                                            ; $4568: $0c
	sbc a                                            ; $4569: $9f
	inc bc                                           ; $456a: $03
	add a                                            ; $456b: $87
	nop                                              ; $456c: $00
	pop bc                                           ; $456d: $c1
	nop                                              ; $456e: $00
	ld a, [hl+]                                      ; $456f: $2a
	call nz, $cd22                                   ; $4570: $c4 $22 $cd
	res 3, l                                         ; $4573: $cb $9d
	ld e, c                                          ; $4575: $59
	cp a                                             ; $4576: $bf
	dec sp                                           ; $4577: $3b
	xor $77                                          ; $4578: $ee $77
	db $dd                                           ; $457a: $dd
	db $fd                                           ; $457b: $fd
	sbc c                                            ; $457c: $99
	ld a, [$b38f]                                    ; $457d: $fa $8f $b3
	ld h, a                                          ; $4580: $67
	add a                                            ; $4581: $87
	add $00                                          ; $4582: $c6 $00
	ldh [rP1], a                                     ; $4584: $e0 $00
	ldh a, [rP1]                                     ; $4586: $f0 $00
	ld [hl], b                                       ; $4588: $70
	add b                                            ; $4589: $80
	or b                                             ; $458a: $b0
	ret nz                                           ; $458b: $c0

	ldh a, [$c0]                                     ; $458c: $f0 $c0

jr_072_458e:
	and b                                            ; $458e: $a0
	call c, $9880                                    ; $458f: $dc $80 $98
	ld bc, $0380                                     ; $4592: $01 $80 $03
	nop                                              ; $4595: $00
	add e                                            ; $4596: $83
	nop                                              ; $4597: $00
	ld bc, $80f4                                     ; $4598: $01 $f4 $80
	add b                                            ; $459b: $80
	nop                                              ; $459c: $00
	ret nz                                           ; $459d: $c0

	nop                                              ; $459e: $00
	pop af                                           ; $459f: $f1
	ret nz                                           ; $45a0: $c0

	rst $38                                          ; $45a1: $ff
	inc sp                                           ; $45a2: $33
	ld a, l                                          ; $45a3: $7d
	ret z                                            ; $45a4: $c8

	xor d                                            ; $45a5: $aa
	call c, $d6bc                                    ; $45a6: $dc $bc $d6
	rst SubAFromHL                                          ; $45a9: $d7
	or [hl]                                          ; $45aa: $b6
	or $a3                                           ; $45ab: $f6 $a3
	inc hl                                           ; $45ad: $23
	pop hl                                           ; $45ae: $e1
	ld b, a                                          ; $45af: $47
	ret nz                                           ; $45b0: $c0

	rst SubAFromDE                                          ; $45b1: $df
	sbc [hl]                                         ; $45b2: $9e
	add a                                            ; $45b3: $87
	rra                                              ; $45b4: $1f
	ld a, $01                                        ; $45b5: $3e $01
	ld a, $00                                        ; $45b7: $3e $00
	ld a, h                                          ; $45b9: $7c
	add b                                            ; $45ba: $80
	nop                                              ; $45bb: $00
	ld l, l                                          ; $45bc: $6d
	ld e, $57                                        ; $45bd: $1e $57
	scf                                              ; $45bf: $37

jr_072_45c0:
	ld h, a                                          ; $45c0: $67
	daa                                              ; $45c1: $27
	ld a, [hl-]                                      ; $45c2: $3a
	ld a, $3a                                        ; $45c3: $3e $3a
	ld a, [hl-]                                      ; $45c5: $3a
	ld a, [hl+]                                      ; $45c6: $2a
	ld a, [hl+]                                      ; $45c7: $2a
	inc d                                            ; $45c8: $14
	inc [hl]                                         ; $45c9: $34
	cp [hl]                                          ; $45ca: $be
	jr jr_072_458e                                   ; $45cb: $18 $c1

	ret nz                                           ; $45cd: $c0

	pop bc                                           ; $45ce: $c1
	ld b, b                                          ; $45cf: $40
	add c                                            ; $45d0: $81
	ld bc, $0103                                     ; $45d1: $01 $03 $01
	rst $38                                          ; $45d4: $ff
	inc bc                                           ; $45d5: $03
	ld a, [$f406]                                    ; $45d6: $fa $06 $f4
	inc c                                            ; $45d9: $0c
	add b                                            ; $45da: $80
	add sp, $18                                      ; $45db: $e8 $18
	ret nc                                           ; $45dd: $d0

	jr nc, jr_072_45c0                               ; $45de: $30 $e0

	ld h, b                                          ; $45e0: $60
	ret nz                                           ; $45e1: $c0

	ret nz                                           ; $45e2: $c0

	nop                                              ; $45e3: $00
	nop                                              ; $45e4: $00
	call c, $bcb4                                    ; $45e5: $dc $b4 $bc
	call nc, $da76                                   ; $45e8: $d4 $76 $da
	ld e, [hl]                                       ; $45eb: $5e
	ld [$ef39], a                                    ; $45ec: $ea $39 $ef
	cpl                                              ; $45ef: $2f
	rst FarCall                                          ; $45f0: $f7
	sub [hl]                                         ; $45f1: $96
	cp $4a                                           ; $45f2: $fe $4a
	cp $3f                                           ; $45f4: $fe $3f
	rst $38                                          ; $45f6: $ff
	or h                                             ; $45f7: $b4
	call c, $80b6                                    ; $45f8: $dc $b6 $80
	ld e, d                                          ; $45fb: $5a
	or $3a                                           ; $45fc: $f6 $3a
	db $eb                                           ; $45fe: $eb

Jump_072_45ff:
	dec a                                            ; $45ff: $3d
	db $fd                                           ; $4600: $fd
	cpl                                              ; $4601: $2f

jr_072_4602:
	cp e                                             ; $4602: $bb
	db $eb                                           ; $4603: $eb
	db $ed                                           ; $4604: $ed
	ld [hl], l                                       ; $4605: $75
	push de                                          ; $4606: $d5
	ld a, l                                          ; $4607: $7d
	halt                                             ; $4608: $76
	jp c, $defa                                      ; $4609: $da $fa $de

	push de                                          ; $460c: $d5
	rst FarCall                                          ; $460d: $f7
	db $eb                                           ; $460e: $eb
	ei                                               ; $460f: $fb
	jp hl                                            ; $4610: $e9


	ld sp, hl                                        ; $4611: $f9
	ld e, c                                          ; $4612: $59
	reti                                             ; $4613: $d9


	ret c                                            ; $4614: $d8

	ld e, b                                          ; $4615: $58
	ret z                                            ; $4616: $c8

	ld c, b                                          ; $4617: $48
	ret z                                            ; $4618: $c8

	ret z                                            ; $4619: $c8

	rst SubAFromDE                                          ; $461a: $df
	ret nz                                           ; $461b: $c0

	db $dd                                           ; $461c: $dd
	ld b, b                                          ; $461d: $40
	ei                                               ; $461e: $fb
	daa                                              ; $461f: $27
	nop                                              ; $4620: $00
	ld a, a                                          ; $4621: $7f
	cp $97                                           ; $4622: $fe $97

jr_072_4624:
	rst AddAOntoHL                                          ; $4624: $ef
	rra                                              ; $4625: $1f
	di                                               ; $4626: $f3
	inc sp                                           ; $4627: $33
	rst AddAOntoHL                                          ; $4628: $ef
	ld a, a                                          ; $4629: $7f
	xor $2f                                          ; $462a: $ee $2f
	inc bc                                           ; $462c: $03
	nop                                              ; $462d: $00
	inc sp                                           ; $462e: $33
	nop                                              ; $462f: $00
	ld l, [hl]                                       ; $4630: $6e
	cp $9d                                           ; $4631: $fe $9d
	ldh [$c0], a                                     ; $4633: $e0 $c0
	inc bc                                           ; $4635: $03
	nop                                              ; $4636: $00
	dec hl                                           ; $4637: $2b
	nop                                              ; $4638: $00
	sbc [hl]                                         ; $4639: $9e
	ld a, [hl]                                       ; $463a: $7e
	ld a, d                                          ; $463b: $7a
	cp $99                                           ; $463c: $fe $99
	ld b, [hl]                                       ; $463e: $46
	daa                                              ; $463f: $27
	ccf                                              ; $4640: $3f
	ccf                                              ; $4641: $3f
	ld a, [hl-]                                      ; $4642: $3a
	ld a, $03                                        ; $4643: $3e $03
	nop                                              ; $4645: $00
	rra                                              ; $4646: $1f
	nop                                              ; $4647: $00
	sbc h                                            ; $4648: $9c
	ld l, e                                          ; $4649: $6b
	db $ed                                           ; $464a: $ed
	ld [hl], l                                       ; $464b: $75
	rra                                              ; $464c: $1f
	jr nz, jr_072_46be                               ; $464d: $20 $6f

	inc e                                            ; $464f: $1c
	sbc e                                            ; $4650: $9b
	cp $7f                                           ; $4651: $fe $7f
	ld [$032a], a                                    ; $4653: $ea $2a $03
	jr nz, jr_072_468b                               ; $4656: $20 $33

	jr nz, jr_072_46d1                               ; $4658: $20 $77

	cp $9e                                           ; $465a: $fe $9e
	and b                                            ; $465c: $a0
	sbc $c0                                          ; $465d: $de $c0
	inc bc                                           ; $465f: $03
	jr nz, @+$45                                     ; $4660: $20 $43

	jr nz, jr_072_4602                               ; $4662: $20 $9e

	ccf                                              ; $4664: $3f
	ld a, e                                          ; $4665: $7b
	ld [hl+], a                                      ; $4666: $22
	ld a, a                                          ; $4667: $7f
	ld e, $77                                        ; $4668: $1e $77
	inc e                                            ; $466a: $1c
	sbc e                                            ; $466b: $9b
	inc a                                            ; $466c: $3c
	ld e, $3b                                        ; $466d: $1e $3b
	ccf                                              ; $466f: $3f
	inc bc                                           ; $4670: $03
	jr nz, @+$05                                     ; $4671: $20 $03

	jr nz, @+$21                                     ; $4673: $20 $1f

	jr nz, jr_072_46e6                               ; $4675: $20 $6f

	cp $9b                                           ; $4677: $fe $9b
	push af                                          ; $4679: $f5
	ld a, b                                          ; $467a: $78
	rst $38                                          ; $467b: $ff
	rra                                              ; $467c: $1f
	inc bc                                           ; $467d: $03
	jr nz, jr_072_46b3                               ; $467e: $20 $33

	jr nz, jr_072_4701                               ; $4680: $20 $7f

	or $7f                                           ; $4682: $f6 $7f
	jr c, jr_072_4705                                ; $4684: $38 $7f

	cp $9b                                           ; $4686: $fe $9b
	ld b, c                                          ; $4688: $41
	ret nz                                           ; $4689: $c0

	add e                                            ; $468a: $83

jr_072_468b:
	add b                                            ; $468b: $80
	inc bc                                           ; $468c: $03
	jr nz, @+$3d                                     ; $468d: $20 $3b

	jr nz, jr_072_4624                               ; $468f: $20 $93

	ld a, b                                          ; $4691: $78
	nop                                              ; $4692: $00
	jr c, jr_072_4695                                ; $4693: $38 $00

jr_072_4695:
	inc a                                            ; $4695: $3c
	nop                                              ; $4696: $00
	ld a, $00                                        ; $4697: $3e $00
	ld h, $36                                        ; $4699: $26 $36
	cp [hl]                                          ; $469b: $be
	inc e                                            ; $469c: $1c
	inc bc                                           ; $469d: $03
	jr nz, @+$2d                                     ; $469e: $20 $2b

	jr nz, jr_072_4695                               ; $46a0: $20 $f3

	rst SubAFromDE                                          ; $46a2: $df
	ld [$079a], sp                                   ; $46a3: $08 $9a $07
	ld b, $00                                        ; $46a6: $06 $00
	nop                                              ; $46a8: $00
	inc bc                                           ; $46a9: $03
	and $df                                          ; $46aa: $e6 $df
	add b                                            ; $46ac: $80
	push hl                                          ; $46ad: $e5
	sbc d                                            ; $46ae: $9a
	inc c                                            ; $46af: $0c
	ld [$070f], sp                                   ; $46b0: $08 $0f $07

jr_072_46b3:
	rlca                                             ; $46b3: $07
	rla                                              ; $46b4: $17
	pop bc                                           ; $46b5: $c1
	inc bc                                           ; $46b6: $03
	ret nz                                           ; $46b7: $c0

	sbc $0f                                          ; $46b8: $de $0f
	rst SubAFromDE                                          ; $46ba: $df
	rlca                                             ; $46bb: $07
	sbc [hl]                                         ; $46bc: $9e
	ld [bc], a                                       ; $46bd: $02

jr_072_46be:
	rla                                              ; $46be: $17
	ret nz                                           ; $46bf: $c0

	rla                                              ; $46c0: $17
	cp a                                             ; $46c1: $bf
	ld [hl], e                                       ; $46c2: $73
	ret nz                                           ; $46c3: $c0

	inc de                                           ; $46c4: $13
	cp [hl]                                          ; $46c5: $be
	ld b, a                                          ; $46c6: $47
	ret nz                                           ; $46c7: $c0

	xor b                                            ; $46c8: $a8
	ld bc, $a680                                     ; $46c9: $01 $80 $a6
	sbc b                                            ; $46cc: $98
	dec c                                            ; $46cd: $0d
	or b                                             ; $46ce: $b0
	ld l, h                                          ; $46cf: $6c
	or c                                             ; $46d0: $b1

jr_072_46d1:
	add hl, sp                                       ; $46d1: $39
	db $e3                                           ; $46d2: $e3
	ld e, d                                          ; $46d3: $5a
	rst SubAFromBC                                          ; $46d4: $e7
	ld d, h                                          ; $46d5: $54
	rst AddAOntoHL                                          ; $46d6: $ef
	adc c                                            ; $46d7: $89
	rst $38                                          ; $46d8: $ff
	sub a                                            ; $46d9: $97
	rst $38                                          ; $46da: $ff
	ld a, $ff                                        ; $46db: $3e $ff
	rst FarCall                                          ; $46dd: $f7
	ret c                                            ; $46de: $d8

	rst $38                                          ; $46df: $ff
	add b                                            ; $46e0: $80
	rst $38                                          ; $46e1: $ff
	nop                                              ; $46e2: $00
	rst FarCall                                          ; $46e3: $f7
	rrca                                             ; $46e4: $0f
	reti                                             ; $46e5: $d9


jr_072_46e6:
	add hl, sp                                       ; $46e6: $39
	ldh a, [c]                                       ; $46e7: $f2
	ld [hl], e                                       ; $46e8: $73
	xor $91                                          ; $46e9: $ee $91
	ccf                                              ; $46eb: $3f
	xor $2e                                          ; $46ec: $ee $2e
	jp z, $e50a                                      ; $46ee: $ca $0a $e5

	dec c                                            ; $46f1: $0d
	rst FarCall                                          ; $46f2: $f7
	rlca                                             ; $46f3: $07
	rst $38                                          ; $46f4: $ff
	nop                                              ; $46f5: $00
	ld hl, sp+$00                                    ; $46f6: $f8 $00
	db $fc                                           ; $46f8: $fc
	ld a, e                                          ; $46f9: $7b
	cp $80                                           ; $46fa: $fe $80
	cp $80                                           ; $46fc: $fe $80
	cp $c0                                           ; $46fe: $fe $c0
	rst $38                                          ; $4700: $ff

jr_072_4701:
	ld h, b                                          ; $4701: $60
	rst $38                                          ; $4702: $ff
	jr nc, @+$01                                     ; $4703: $30 $ff

jr_072_4705:
	inc c                                            ; $4705: $0c
	sbc a                                            ; $4706: $9f
	inc bc                                           ; $4707: $03
	add a                                            ; $4708: $87
	nop                                              ; $4709: $00
	pop bc                                           ; $470a: $c1
	nop                                              ; $470b: $00
	ld a, [hl+]                                      ; $470c: $2a
	call nz, $cd22                                   ; $470d: $c4 $22 $cd
	res 3, l                                         ; $4710: $cb $9d
	ld e, c                                          ; $4712: $59
	cp a                                             ; $4713: $bf
	dec sp                                           ; $4714: $3b
	xor $77                                          ; $4715: $ee $77
	db $dd                                           ; $4717: $dd
	db $fd                                           ; $4718: $fd
	sbc c                                            ; $4719: $99
	ld a, [$b38f]                                    ; $471a: $fa $8f $b3
	ld h, a                                          ; $471d: $67
	add a                                            ; $471e: $87
	add $00                                          ; $471f: $c6 $00
	ldh [rP1], a                                     ; $4721: $e0 $00
	ldh a, [rP1]                                     ; $4723: $f0 $00
	ld [hl], b                                       ; $4725: $70
	add b                                            ; $4726: $80
	or b                                             ; $4727: $b0
	ret nz                                           ; $4728: $c0

	ldh a, [$c0]                                     ; $4729: $f0 $c0

jr_072_472b:
	and b                                            ; $472b: $a0
	call c, $9880                                    ; $472c: $dc $80 $98
	ld bc, $0380                                     ; $472f: $01 $80 $03
	nop                                              ; $4732: $00
	add e                                            ; $4733: $83
	nop                                              ; $4734: $00
	ld bc, $80f4                                     ; $4735: $01 $f4 $80
	add b                                            ; $4738: $80
	nop                                              ; $4739: $00
	ret nz                                           ; $473a: $c0

	nop                                              ; $473b: $00
	pop af                                           ; $473c: $f1
	ret nz                                           ; $473d: $c0

	rst $38                                          ; $473e: $ff
	inc sp                                           ; $473f: $33
	ld a, l                                          ; $4740: $7d
	ret z                                            ; $4741: $c8

	xor d                                            ; $4742: $aa
	call c, $d6bc                                    ; $4743: $dc $bc $d6
	rst SubAFromHL                                          ; $4746: $d7
	or [hl]                                          ; $4747: $b6
	or $a3                                           ; $4748: $f6 $a3
	inc hl                                           ; $474a: $23
	pop hl                                           ; $474b: $e1
	ld b, a                                          ; $474c: $47
	ret nz                                           ; $474d: $c0

	rst SubAFromDE                                          ; $474e: $df
	sbc h                                            ; $474f: $9c
	adc a                                            ; $4750: $8f
	rra                                              ; $4751: $1f
	dec a                                            ; $4752: $3d
	inc bc                                           ; $4753: $03
	ld a, $00                                        ; $4754: $3e $00
	ld a, h                                          ; $4756: $7c
	add b                                            ; $4757: $80
	nop                                              ; $4758: $00
	ld l, l                                          ; $4759: $6d
	ld e, $57                                        ; $475a: $1e $57
	scf                                              ; $475c: $37

jr_072_475d:
	ld h, a                                          ; $475d: $67
	daa                                              ; $475e: $27
	ld a, [hl-]                                      ; $475f: $3a
	ld a, $3a                                        ; $4760: $3e $3a
	ld a, [hl-]                                      ; $4762: $3a
	ld a, [hl+]                                      ; $4763: $2a
	ld a, [hl+]                                      ; $4764: $2a
	inc d                                            ; $4765: $14
	inc [hl]                                         ; $4766: $34
	cp [hl]                                          ; $4767: $be
	jr jr_072_472b                                   ; $4768: $18 $c1

	ret nz                                           ; $476a: $c0

	pop bc                                           ; $476b: $c1
	ld b, b                                          ; $476c: $40
	add c                                            ; $476d: $81
	ld bc, $0103                                     ; $476e: $01 $03 $01
	rst $38                                          ; $4771: $ff
	inc bc                                           ; $4772: $03
	ld a, [$f406]                                    ; $4773: $fa $06 $f4
	inc c                                            ; $4776: $0c
	add b                                            ; $4777: $80
	add sp, $18                                      ; $4778: $e8 $18
	ret nc                                           ; $477a: $d0

	jr nc, jr_072_475d                               ; $477b: $30 $e0

	ld h, b                                          ; $477d: $60
	ret nz                                           ; $477e: $c0

	ret nz                                           ; $477f: $c0

	nop                                              ; $4780: $00
	nop                                              ; $4781: $00
	call c, $bcb4                                    ; $4782: $dc $b4 $bc
	call nc, $da76                                   ; $4785: $d4 $76 $da
	ld e, [hl]                                       ; $4788: $5e
	ld [$ef39], a                                    ; $4789: $ea $39 $ef
	cpl                                              ; $478c: $2f
	rst FarCall                                          ; $478d: $f7
	sub [hl]                                         ; $478e: $96
	cp $4a                                           ; $478f: $fe $4a
	cp $3f                                           ; $4791: $fe $3f
	rst $38                                          ; $4793: $ff
	or h                                             ; $4794: $b4
	call c, $80b6                                    ; $4795: $dc $b6 $80
	ld e, d                                          ; $4798: $5a
	or $3a                                           ; $4799: $f6 $3a
	db $eb                                           ; $479b: $eb
	dec a                                            ; $479c: $3d
	db $fd                                           ; $479d: $fd
	cpl                                              ; $479e: $2f

jr_072_479f:
	cp e                                             ; $479f: $bb
	db $eb                                           ; $47a0: $eb
	db $ed                                           ; $47a1: $ed
	ld [hl], l                                       ; $47a2: $75
	push de                                          ; $47a3: $d5
	ld a, l                                          ; $47a4: $7d
	halt                                             ; $47a5: $76
	jp c, $defa                                      ; $47a6: $da $fa $de

	push de                                          ; $47a9: $d5
	rst FarCall                                          ; $47aa: $f7
	db $eb                                           ; $47ab: $eb
	ei                                               ; $47ac: $fb
	jp hl                                            ; $47ad: $e9


	ld sp, hl                                        ; $47ae: $f9
	ld e, c                                          ; $47af: $59
	reti                                             ; $47b0: $d9


	ret c                                            ; $47b1: $d8

	ld e, b                                          ; $47b2: $58
	ret z                                            ; $47b3: $c8

	ld c, b                                          ; $47b4: $48
	ret z                                            ; $47b5: $c8

	ret z                                            ; $47b6: $c8

	rst SubAFromDE                                          ; $47b7: $df
	ret nz                                           ; $47b8: $c0

	db $dd                                           ; $47b9: $dd
	ld b, b                                          ; $47ba: $40
	ei                                               ; $47bb: $fb
	daa                                              ; $47bc: $27
	nop                                              ; $47bd: $00
	ld a, a                                          ; $47be: $7f
	cp $97                                           ; $47bf: $fe $97
	rst AddAOntoHL                                          ; $47c1: $ef
	rra                                              ; $47c2: $1f
	di                                               ; $47c3: $f3
	inc sp                                           ; $47c4: $33
	rst AddAOntoHL                                          ; $47c5: $ef
	ld a, a                                          ; $47c6: $7f
	xor $2f                                          ; $47c7: $ee $2f

jr_072_47c9:
	inc bc                                           ; $47c9: $03

jr_072_47ca:
	nop                                              ; $47ca: $00
	inc sp                                           ; $47cb: $33
	nop                                              ; $47cc: $00
	ld l, [hl]                                       ; $47cd: $6e
	cp $9d                                           ; $47ce: $fe $9d
	ldh [$c0], a                                     ; $47d0: $e0 $c0
	inc bc                                           ; $47d2: $03
	nop                                              ; $47d3: $00
	dec hl                                           ; $47d4: $2b
	nop                                              ; $47d5: $00
	sbc [hl]                                         ; $47d6: $9e
	ld a, [hl]                                       ; $47d7: $7e
	ld a, d                                          ; $47d8: $7a
	cp $99                                           ; $47d9: $fe $99
	ld b, [hl]                                       ; $47db: $46
	daa                                              ; $47dc: $27
	ccf                                              ; $47dd: $3f
	ccf                                              ; $47de: $3f
	ld a, [hl-]                                      ; $47df: $3a
	ld a, $03                                        ; $47e0: $3e $03
	nop                                              ; $47e2: $00

jr_072_47e3:
	rra                                              ; $47e3: $1f
	nop                                              ; $47e4: $00
	sbc h                                            ; $47e5: $9c
	ld l, e                                          ; $47e6: $6b
	db $ed                                           ; $47e7: $ed
	ld [hl], l                                       ; $47e8: $75
	rra                                              ; $47e9: $1f
	jr nz, jr_072_485b                               ; $47ea: $20 $6f

	inc e                                            ; $47ec: $1c
	sbc e                                            ; $47ed: $9b
	cp $7f                                           ; $47ee: $fe $7f
	ld [$032a], a                                    ; $47f0: $ea $2a $03
	jr nz, jr_072_4828                               ; $47f3: $20 $33

	jr nz, jr_072_486e                               ; $47f5: $20 $77

	cp $9e                                           ; $47f7: $fe $9e
	and b                                            ; $47f9: $a0
	sbc $c0                                          ; $47fa: $de $c0
	inc bc                                           ; $47fc: $03
	jr nz, jr_072_4842                               ; $47fd: $20 $43

Call_072_47ff:
	jr nz, jr_072_479f                               ; $47ff: $20 $9e

	ccf                                              ; $4801: $3f
	ld a, e                                          ; $4802: $7b
	ld [hl+], a                                      ; $4803: $22
	ld a, a                                          ; $4804: $7f
	ld e, $77                                        ; $4805: $1e $77
	inc e                                            ; $4807: $1c
	sbc e                                            ; $4808: $9b
	inc a                                            ; $4809: $3c
	ld e, $3b                                        ; $480a: $1e $3b
	ccf                                              ; $480c: $3f
	inc bc                                           ; $480d: $03
	jr nz, @+$05                                     ; $480e: $20 $03

	jr nz, jr_072_4831                               ; $4810: $20 $1f

	jr nz, @+$71                                     ; $4812: $20 $6f

	cp $9b                                           ; $4814: $fe $9b
	push af                                          ; $4816: $f5
	ld a, b                                          ; $4817: $78
	rst $38                                          ; $4818: $ff
	rra                                              ; $4819: $1f
	inc bc                                           ; $481a: $03
	jr nz, jr_072_4850                               ; $481b: $20 $33

	jr nz, jr_072_489e                               ; $481d: $20 $7f

	or $7f                                           ; $481f: $f6 $7f
	jr c, jr_072_48a2                                ; $4821: $38 $7f

	cp $9b                                           ; $4823: $fe $9b
	ld b, c                                          ; $4825: $41
	ret nz                                           ; $4826: $c0

	add e                                            ; $4827: $83

jr_072_4828:
	add b                                            ; $4828: $80
	inc bc                                           ; $4829: $03
	jr nz, jr_072_489b                               ; $482a: $20 $6f

	jr nz, jr_072_47c9                               ; $482c: $20 $9b

	add b                                            ; $482e: $80
	sbc a                                            ; $482f: $9f
	inc e                                            ; $4830: $1c

jr_072_4831:
	cpl                                              ; $4831: $2f
	ld a, e                                          ; $4832: $7b
	ld e, $6f                                        ; $4833: $1e $6f
	jr nz, jr_072_47ca                               ; $4835: $20 $93

	ld a, b                                          ; $4837: $78
	nop                                              ; $4838: $00
	jr c, jr_072_483b                                ; $4839: $38 $00

jr_072_483b:
	inc a                                            ; $483b: $3c
	nop                                              ; $483c: $00
	ld a, $00                                        ; $483d: $3e $00
	ld h, $36                                        ; $483f: $26 $36
	cp [hl]                                          ; $4841: $be

jr_072_4842:
	inc e                                            ; $4842: $1c
	inc bc                                           ; $4843: $03
	jr nz, jr_072_48a9                               ; $4844: $20 $63

	jr nz, jr_072_47e3                               ; $4846: $20 $9b

	inc [hl]                                         ; $4848: $34
	call c, $dab6                                    ; $4849: $dc $b6 $da
	ld e, a                                          ; $484c: $5f
	jr nz, @-$0d                                     ; $484d: $20 $f1

	sbc h                                            ; $484f: $9c

jr_072_4850:
	rrca                                             ; $4850: $0f
	ld b, $03                                        ; $4851: $06 $03
	ld c, a                                          ; $4853: $4f
	ld [hl], a                                       ; $4854: $77
	ldh [$d2], a                                     ; $4855: $e0 $d2
	sbc e                                            ; $4857: $9b
	rra                                              ; $4858: $1f
	ld c, $0f                                        ; $4859: $0e $0f

jr_072_485b:
	rlca                                             ; $485b: $07
	ldh [$d4], a                                     ; $485c: $e0 $d4
	ld b, a                                          ; $485e: $47
	add b                                            ; $485f: $80
	sbc [hl]                                         ; $4860: $9e
	ld c, $de                                        ; $4861: $0e $de
	rra                                              ; $4863: $1f
	rst SubAFromDE                                          ; $4864: $df
	ld c, $e0                                        ; $4865: $0e $e0
	ret z                                            ; $4867: $c8

	ld [hl], e                                       ; $4868: $73
	ret nz                                           ; $4869: $c0

	sbc l                                            ; $486a: $9d
	ld e, $0c                                        ; $486b: $1e $0c
	inc bc                                           ; $486d: $03

jr_072_486e:
	cp a                                             ; $486e: $bf
	ld sp, hl                                        ; $486f: $f9
	cp a                                             ; $4870: $bf
	ld bc, $a680                                     ; $4871: $01 $80 $a6
	sbc b                                            ; $4874: $98
	dec c                                            ; $4875: $0d
	or b                                             ; $4876: $b0
	ld l, h                                          ; $4877: $6c
	or c                                             ; $4878: $b1
	add hl, sp                                       ; $4879: $39
	db $e3                                           ; $487a: $e3
	ld e, d                                          ; $487b: $5a
	rst SubAFromBC                                          ; $487c: $e7
	ld d, h                                          ; $487d: $54
	rst AddAOntoHL                                          ; $487e: $ef
	adc c                                            ; $487f: $89
	rst $38                                          ; $4880: $ff
	sub a                                            ; $4881: $97
	cp $3f                                           ; $4882: $fe $3f
	ld hl, sp-$01                                    ; $4884: $f8 $ff
	rst JumpTable                                          ; $4886: $c7
	db $fd                                           ; $4887: $fd
	add e                                            ; $4888: $83
	rst $38                                          ; $4889: $ff
	nop                                              ; $488a: $00
	rst FarCall                                          ; $488b: $f7
	rrca                                             ; $488c: $0f
	reti                                             ; $488d: $d9


	add hl, sp                                       ; $488e: $39
	di                                               ; $488f: $f3
	ld [hl], e                                       ; $4890: $73
	xor $91                                          ; $4891: $ee $91
	ccf                                              ; $4893: $3f
	xor $2f                                          ; $4894: $ee $2f
	jp z, $e50a                                      ; $4896: $ca $0a $e5

	dec c                                            ; $4899: $0d
	rst FarCall                                          ; $489a: $f7

jr_072_489b:
	rlca                                             ; $489b: $07
	rst $38                                          ; $489c: $ff
	nop                                              ; $489d: $00

jr_072_489e:
	ld hl, sp+$00                                    ; $489e: $f8 $00
	db $fc                                           ; $48a0: $fc
	ld a, e                                          ; $48a1: $7b

jr_072_48a2:
	cp $80                                           ; $48a2: $fe $80
	cp $80                                           ; $48a4: $fe $80
	cp $c0                                           ; $48a6: $fe $c0
	rst $38                                          ; $48a8: $ff

jr_072_48a9:
	ld h, b                                          ; $48a9: $60
	rst $38                                          ; $48aa: $ff
	jr nc, @+$01                                     ; $48ab: $30 $ff

	inc c                                            ; $48ad: $0c
	sbc a                                            ; $48ae: $9f
	inc bc                                           ; $48af: $03
	add a                                            ; $48b0: $87
	nop                                              ; $48b1: $00
	pop bc                                           ; $48b2: $c1
	nop                                              ; $48b3: $00
	ld a, [hl+]                                      ; $48b4: $2a
	call nz, $cd22                                   ; $48b5: $c4 $22 $cd
	res 3, l                                         ; $48b8: $cb $9d
	ld e, c                                          ; $48ba: $59
	cp a                                             ; $48bb: $bf
	dec sp                                           ; $48bc: $3b
	xor $77                                          ; $48bd: $ee $77
	db $dd                                           ; $48bf: $dd
	db $fd                                           ; $48c0: $fd
	sbc c                                            ; $48c1: $99
	ld a, [$338f]                                    ; $48c2: $fa $8f $33
	rst SubAFromBC                                          ; $48c5: $e7
	rlca                                             ; $48c6: $07
	ld b, [hl]                                       ; $48c7: $46
	add b                                            ; $48c8: $80
	ldh [$c0], a                                     ; $48c9: $e0 $c0
	ldh a, [$e0]                                     ; $48cb: $f0 $e0
	ld [hl], b                                       ; $48cd: $70
	add b                                            ; $48ce: $80
	or b                                             ; $48cf: $b0
	ret nz                                           ; $48d0: $c0

	ldh a, [$c0]                                     ; $48d1: $f0 $c0

jr_072_48d3:
	and b                                            ; $48d3: $a0
	call c, $9880                                    ; $48d4: $dc $80 $98
	ld bc, $0380                                     ; $48d7: $01 $80 $03
	nop                                              ; $48da: $00
	add e                                            ; $48db: $83
	nop                                              ; $48dc: $00
	ld bc, $80f4                                     ; $48dd: $01 $f4 $80
	add b                                            ; $48e0: $80
	nop                                              ; $48e1: $00
	ret nz                                           ; $48e2: $c0

	nop                                              ; $48e3: $00
	pop af                                           ; $48e4: $f1
	ret nz                                           ; $48e5: $c0

	rst $38                                          ; $48e6: $ff
	inc sp                                           ; $48e7: $33
	ld a, l                                          ; $48e8: $7d
	ret z                                            ; $48e9: $c8

	xor d                                            ; $48ea: $aa
	call c, $d6bc                                    ; $48eb: $dc $bc $d6
	rst SubAFromHL                                          ; $48ee: $d7
	or [hl]                                          ; $48ef: $b6
	or $a3                                           ; $48f0: $f6 $a3
	inc hl                                           ; $48f2: $23
	pop hl                                           ; $48f3: $e1
	ld b, a                                          ; $48f4: $47
	ret nz                                           ; $48f5: $c0

	rst SubAFromDE                                          ; $48f6: $df
	add b                                            ; $48f7: $80
	sub a                                            ; $48f8: $97
	rrca                                             ; $48f9: $0f
	dec a                                            ; $48fa: $3d
	ld e, $3e                                        ; $48fb: $1e $3e
	jr c, jr_072_497b                                ; $48fd: $38 $7c

	add b                                            ; $48ff: $80
	nop                                              ; $4900: $00
	ld l, l                                          ; $4901: $6d
	ld e, $57                                        ; $4902: $1e $57
	scf                                              ; $4904: $37

jr_072_4905:
	ld h, a                                          ; $4905: $67
	daa                                              ; $4906: $27
	ld a, [hl-]                                      ; $4907: $3a
	ld a, $3a                                        ; $4908: $3e $3a
	ld a, $2a                                        ; $490a: $3e $2a
	ld a, [hl+]                                      ; $490c: $2a
	inc d                                            ; $490d: $14
	inc [hl]                                         ; $490e: $34
	cp [hl]                                          ; $490f: $be
	jr jr_072_48d3                                   ; $4910: $18 $c1

	ret nz                                           ; $4912: $c0

	pop bc                                           ; $4913: $c1
	ld b, b                                          ; $4914: $40
	add c                                            ; $4915: $81
	ld bc, $0103                                     ; $4916: $01 $03 $01
	rst $38                                          ; $4919: $ff
	inc bc                                           ; $491a: $03
	ld a, [$f406]                                    ; $491b: $fa $06 $f4
	inc c                                            ; $491e: $0c
	add b                                            ; $491f: $80
	add sp, $18                                      ; $4920: $e8 $18
	ret nc                                           ; $4922: $d0

	jr nc, jr_072_4905                               ; $4923: $30 $e0

	ld h, b                                          ; $4925: $60
	ret nz                                           ; $4926: $c0

	ret nz                                           ; $4927: $c0

	nop                                              ; $4928: $00
	nop                                              ; $4929: $00
	call c, $bcb4                                    ; $492a: $dc $b4 $bc
	call nc, $da76                                   ; $492d: $d4 $76 $da
	ld e, [hl]                                       ; $4930: $5e
	ld [$ef39], a                                    ; $4931: $ea $39 $ef
	cpl                                              ; $4934: $2f
	rst FarCall                                          ; $4935: $f7
	sub [hl]                                         ; $4936: $96
	cp $4a                                           ; $4937: $fe $4a
	cp $3f                                           ; $4939: $fe $3f
	rst $38                                          ; $493b: $ff
	inc [hl]                                         ; $493c: $34
	call c, $80b6                                    ; $493d: $dc $b6 $80
	ld e, d                                          ; $4940: $5a

jr_072_4941:
	or $3a                                           ; $4941: $f6 $3a
	db $eb                                           ; $4943: $eb
	dec a                                            ; $4944: $3d
	db $fd                                           ; $4945: $fd
	cpl                                              ; $4946: $2f
	cp e                                             ; $4947: $bb
	db $eb                                           ; $4948: $eb
	db $ed                                           ; $4949: $ed
	ld [hl], l                                       ; $494a: $75
	push de                                          ; $494b: $d5
	ld a, l                                          ; $494c: $7d
	halt                                             ; $494d: $76
	jp c, $defa                                      ; $494e: $da $fa $de

	push de                                          ; $4951: $d5
	rst FarCall                                          ; $4952: $f7
	db $eb                                           ; $4953: $eb
	ei                                               ; $4954: $fb
	jp hl                                            ; $4955: $e9


	ld sp, hl                                        ; $4956: $f9

jr_072_4957:
	ld e, c                                          ; $4957: $59

jr_072_4958:
	reti                                             ; $4958: $d9


	ret c                                            ; $4959: $d8

	ld e, b                                          ; $495a: $58
	ret z                                            ; $495b: $c8

	ld c, b                                          ; $495c: $48
	ret z                                            ; $495d: $c8

	ret z                                            ; $495e: $c8

	rst SubAFromDE                                          ; $495f: $df
	ret nz                                           ; $4960: $c0

	db $dd                                           ; $4961: $dd
	ld b, b                                          ; $4962: $40
	ei                                               ; $4963: $fb
	daa                                              ; $4964: $27
	nop                                              ; $4965: $00
	ld a, a                                          ; $4966: $7f
	cp $99                                           ; $4967: $fe $99
	rst AddAOntoHL                                          ; $4969: $ef
	rra                                              ; $496a: $1f
	di                                               ; $496b: $f3
	inc sp                                           ; $496c: $33

jr_072_496d:
	rst AddAOntoHL                                          ; $496d: $ef
	ld a, a                                          ; $496e: $7f
	inc bc                                           ; $496f: $03
	nop                                              ; $4970: $00
	dec hl                                           ; $4971: $2b
	nop                                              ; $4972: $00
	sbc l                                            ; $4973: $9d
	ldh a, [rP1]                                     ; $4974: $f0 $00
	halt                                             ; $4976: $76
	cp $7f                                           ; $4977: $fe $7f
	or $03                                           ; $4979: $f6 $03

jr_072_497b:
	nop                                              ; $497b: $00
	dec hl                                           ; $497c: $2b
	nop                                              ; $497d: $00
	sbc [hl]                                         ; $497e: $9e
	ld a, [hl]                                       ; $497f: $7e
	ld a, d                                          ; $4980: $7a
	cp $9b                                           ; $4981: $fe $9b
	ld b, [hl]                                       ; $4983: $46
	daa                                              ; $4984: $27
	ccf                                              ; $4985: $3f

jr_072_4986:
	ccf                                              ; $4986: $3f
	inc bc                                           ; $4987: $03
	nop                                              ; $4988: $00
	rla                                              ; $4989: $17
	nop                                              ; $498a: $00
	sbc h                                            ; $498b: $9c
	ld l, e                                          ; $498c: $6b
	db $ed                                           ; $498d: $ed
	ld [hl], l                                       ; $498e: $75
	rra                                              ; $498f: $1f
	jr nz, jr_072_4a01                               ; $4990: $20 $6f

	inc e                                            ; $4992: $1c
	sbc e                                            ; $4993: $9b
	cp $7f                                           ; $4994: $fe $7f
	ld [$032a], a                                    ; $4996: $ea $2a $03
	jr nz, jr_072_49ce                               ; $4999: $20 $33

	jr nz, jr_072_4a14                               ; $499b: $20 $77

	cp $9e                                           ; $499d: $fe $9e
	and b                                            ; $499f: $a0
	sbc $c0                                          ; $49a0: $de $c0
	inc bc                                           ; $49a2: $03
	jr nz, jr_072_49e8                               ; $49a3: $20 $43

	jr nz, jr_072_4941                               ; $49a5: $20 $9a

	ccf                                              ; $49a7: $3f
	jr c, jr_072_4a28                                ; $49a8: $38 $7e

	nop                                              ; $49aa: $00
	ld a, h                                          ; $49ab: $7c
	ld a, e                                          ; $49ac: $7b
	cp $7f                                           ; $49ad: $fe $7f
	ld a, [$3c9b]                                    ; $49af: $fa $9b $3c
	ld e, $3b                                        ; $49b2: $1e $3b
	ccf                                              ; $49b4: $3f
	inc bc                                           ; $49b5: $03
	jr nz, jr_072_49fb                               ; $49b6: $20 $43

	jr nz, jr_072_4957                               ; $49b8: $20 $9d

	ld [hl], $da                                     ; $49ba: $36 $da
	rla                                              ; $49bc: $17
	jr nz, jr_072_4958                               ; $49bd: $20 $99

	pop af                                           ; $49bf: $f1
	adc $ff                                          ; $49c0: $ce $ff
	add a                                            ; $49c2: $87
	db $fd                                           ; $49c3: $fd
	inc bc                                           ; $49c4: $03
	ld h, a                                          ; $49c5: $67
	ld e, $77                                        ; $49c6: $1e $77
	cp $9b                                           ; $49c8: $fe $9b
	push af                                          ; $49ca: $f5
	ld a, b                                          ; $49cb: $78
	rst $38                                          ; $49cc: $ff
	rra                                              ; $49cd: $1f

jr_072_49ce:
	inc bc                                           ; $49ce: $03
	jr nz, jr_072_4a34                               ; $49cf: $20 $63

	jr nz, jr_072_496d                               ; $49d1: $20 $9a

	add $00                                          ; $49d3: $c6 $00
	ld h, b                                          ; $49d5: $60
	add b                                            ; $49d6: $80
	ldh a, [rOCPD]                                   ; $49d7: $f0 $6b
	ld e, $9e                                        ; $49d9: $1e $9e
	ldh [$7b], a                                     ; $49db: $e0 $7b
	jr c, jr_072_4a5e                                ; $49dd: $38 $7f

	cp $9b                                           ; $49df: $fe $9b
	ld b, c                                          ; $49e1: $41
	ret nz                                           ; $49e2: $c0

	add e                                            ; $49e3: $83
	add b                                            ; $49e4: $80
	inc bc                                           ; $49e5: $03
	jr nz, jr_072_4a53                               ; $49e6: $20 $6b

jr_072_49e8:
	jr nz, jr_072_4986                               ; $49e8: $20 $9c

	sbc h                                            ; $49ea: $9c
	inc bc                                           ; $49eb: $03
	scf                                              ; $49ec: $37
	ld a, e                                          ; $49ed: $7b
	ld e, $9e                                        ; $49ee: $1e $9e
	ld a, [hl]                                       ; $49f0: $7e
	ld a, d                                          ; $49f1: $7a
	ld a, $7f                                        ; $49f2: $3e $7f
	cp $93                                           ; $49f4: $fe $93
	ld a, b                                          ; $49f6: $78
	nop                                              ; $49f7: $00

jr_072_49f8:
	jr c, jr_072_49fa                                ; $49f8: $38 $00

jr_072_49fa:
	inc a                                            ; $49fa: $3c

jr_072_49fb:
	nop                                              ; $49fb: $00
	ld a, $00                                        ; $49fc: $3e $00
	ld h, $36                                        ; $49fe: $26 $36

Call_072_4a00:
	cp [hl]                                          ; $4a00: $be

jr_072_4a01:
	inc e                                            ; $4a01: $1c
	inc bc                                           ; $4a02: $03
	jr nz, jr_072_4a30                               ; $4a03: $20 $2b

	jr nz, jr_072_49f8                               ; $4a05: $20 $f1

	sbc e                                            ; $4a07: $9b
	rlca                                             ; $4a08: $07
	inc bc                                           ; $4a09: $03
	rlca                                             ; $4a0a: $07
	inc b                                            ; $4a0b: $04
	push hl                                          ; $4a0c: $e5
	ld a, e                                          ; $4a0d: $7b
	ld d, b                                          ; $4a0e: $50
	ld a, a                                          ; $4a0f: $7f
	db $fd                                           ; $4a10: $fd
	and $7b                                          ; $4a11: $e6 $7b
	ret nz                                           ; $4a13: $c0

jr_072_4a14:
	rst SubAFromDE                                          ; $4a14: $df
	rlca                                             ; $4a15: $07
	ld a, [hl]                                       ; $4a16: $7e
	ld d, c                                          ; $4a17: $51
	inc bc                                           ; $4a18: $03
	ret nz                                           ; $4a19: $c0

	inc de                                           ; $4a1a: $13
	ret nz                                           ; $4a1b: $c0

	rst SubAFromDE                                          ; $4a1c: $df
	rlca                                             ; $4a1d: $07
	sbc [hl]                                         ; $4a1e: $9e
	ld [bc], a                                       ; $4a1f: $02
	inc bc                                           ; $4a20: $03
	ret nz                                           ; $4a21: $c0

	daa                                              ; $4a22: $27
	ret nz                                           ; $4a23: $c0

	sbc [hl]                                         ; $4a24: $9e
	rlca                                             ; $4a25: $07
	db $db                                           ; $4a26: $db
	rrca                                             ; $4a27: $0f

jr_072_4a28:
	sbc l                                            ; $4a28: $9d
	ld c, $06                                        ; $4a29: $0e $06
	rra                                              ; $4a2b: $1f
	ret nz                                           ; $4a2c: $c0

	ld d, a                                          ; $4a2d: $57
	cp a                                             ; $4a2e: $bf
	add a                                            ; $4a2f: $87

jr_072_4a30:
	ld [bc], a                                       ; $4a30: $02
	rst SubAFromDE                                          ; $4a31: $df
	ld b, b                                          ; $4a32: $40
	rst SubAFromDE                                          ; $4a33: $df

jr_072_4a34:
	ld h, b                                          ; $4a34: $60
	add b                                            ; $4a35: $80
	ld e, a                                          ; $4a36: $5f
	ld a, a                                          ; $4a37: $7f
	cpl                                              ; $4a38: $2f
	jr nc, jr_072_4a53                               ; $4a39: $30 $18

	rra                                              ; $4a3b: $1f
	rlca                                             ; $4a3c: $07
	rlca                                             ; $4a3d: $07
	ld bc, $0e01                                     ; $4a3e: $01 $01 $0e
	rrca                                             ; $4a41: $0f
	dec a                                            ; $4a42: $3d
	inc sp                                           ; $4a43: $33
	ld [hl], e                                       ; $4a44: $73
	ld l, a                                          ; $4a45: $6f
	ld c, a                                          ; $4a46: $4f
	ld a, [hl]                                       ; $4a47: $7e
	or [hl]                                          ; $4a48: $b6
	push af                                          ; $4a49: $f5
	call $9acb                                       ; $4a4a: $cd $cb $9a
	sub a                                            ; $4a4d: $97
	or a                                             ; $4a4e: $b7
	xor [hl]                                         ; $4a4f: $ae
	cpl                                              ; $4a50: $2f
	inc a                                            ; $4a51: $3c
	ld d, [hl]                                       ; $4a52: $56

jr_072_4a53:
	ld [hl], l                                       ; $4a53: $75
	ld l, h                                          ; $4a54: $6c
	sub c                                            ; $4a55: $91
	ld l, e                                          ; $4a56: $6b
	call $99cb                                       ; $4a57: $cd $cb $99
	sub a                                            ; $4a5a: $97
	sbc e                                            ; $4a5b: $9b
	sub [hl]                                         ; $4a5c: $96
	inc de                                           ; $4a5d: $13

jr_072_4a5e:
	ld e, $26                                        ; $4a5e: $1e $26
	dec a                                            ; $4a60: $3d
	ld l, $3d                                        ; $4a61: $2e $3d
	dec [hl]                                         ; $4a63: $35
	sbc $37                                          ; $4a64: $de $37
	db $dd                                           ; $4a66: $dd
	dec h                                            ; $4a67: $25

jr_072_4a68:
	rst SubAFromDE                                          ; $4a68: $df
	dec b                                            ; $4a69: $05
	db $db                                           ; $4a6a: $db
	ld bc, $dfeb                                     ; $4a6b: $01 $eb $df
	ld bc, $07df                                     ; $4a6e: $01 $df $07
	adc c                                            ; $4a71: $89
	dec e                                            ; $4a72: $1d
	dec de                                           ; $4a73: $1b
	ld a, [de]                                       ; $4a74: $1a
	rla                                              ; $4a75: $17
	scf                                              ; $4a76: $37
	inc l                                            ; $4a77: $2c
	scf                                              ; $4a78: $37
	inc l                                            ; $4a79: $2c
	ld l, [hl]                                       ; $4a7a: $6e
	ld e, c                                          ; $4a7b: $59
	xor $d9                                          ; $4a7c: $ee $d9
	db $fd                                           ; $4a7e: $fd
	ld d, e                                          ; $4a7f: $53
	db $db                                           ; $4a80: $db
	or a                                             ; $4a81: $b7
	or $af                                           ; $4a82: $f6 $af
	ld a, [$fc6f]                                    ; $4a84: $fa $6f $fc
	rst SubAFromHL                                          ; $4a87: $d7
	ldh [$a3], a                                     ; $4a88: $e0 $a3
	rst SubAFromDE                                          ; $4a8a: $df
	ld bc, $038f                                     ; $4a8b: $01 $8f $03
	ld [bc], a                                       ; $4a8e: $02
	inc bc                                           ; $4a8f: $03
	ld [bc], a                                       ; $4a90: $02
	rlca                                             ; $4a91: $07
	dec b                                            ; $4a92: $05
	rlca                                             ; $4a93: $07
	dec b                                            ; $4a94: $05
	dec c                                            ; $4a95: $0d
	dec bc                                           ; $4a96: $0b
	ld e, $13                                        ; $4a97: $1e $13
	ld a, [hl-]                                      ; $4a99: $3a
	scf                                              ; $4a9a: $37
	ld a, [hl]                                       ; $4a9b: $7e
	ld h, a                                          ; $4a9c: $67
	ld b, a                                          ; $4a9d: $47
	ldh [$7f], a                                     ; $4a9e: $e0 $7f
	ld e, $81                                        ; $4aa0: $1e $81
	scf                                              ; $4aa2: $37
	jr c, jr_072_4a68                                ; $4aa3: $38 $c3

	rst $38                                          ; $4aa5: $ff
	ld a, [hl]                                       ; $4aa6: $7e
	adc a                                            ; $4aa7: $8f
	dec de                                           ; $4aa8: $1b
	db $fc                                           ; $4aa9: $fc
	db $fd                                           ; $4aaa: $fd
	rst $38                                          ; $4aab: $ff
	di                                               ; $4aac: $f3
	ld a, $eb                                        ; $4aad: $3e $eb
	halt                                             ; $4aaf: $76
	rst FarCall                                          ; $4ab0: $f7
	ldh [c], a                                       ; $4ab1: $e2
	or $e0                                           ; $4ab2: $f6 $e0
	or $a0                                           ; $4ab4: $f6 $a0
	or $e0                                           ; $4ab6: $f6 $e0
	ld [hl-], a                                      ; $4ab8: $32
	ldh [$33], a                                     ; $4ab9: $e0 $33
	ldh [c], a                                       ; $4abb: $e2
	inc sp                                           ; $4abc: $33
	ldh [c], a                                       ; $4abd: $e2
	dec sp                                           ; $4abe: $3b
	ldh [c], a                                       ; $4abf: $e2
	ldh [$c1], a                                     ; $4ac0: $e0 $c1
	sbc c                                            ; $4ac2: $99
	ld a, b                                          ; $4ac3: $78
	ld a, a                                          ; $4ac4: $7f
	dec bc                                           ; $4ac5: $0b
	inc c                                            ; $4ac6: $0c
	rlca                                             ; $4ac7: $07
	inc b                                            ; $4ac8: $04
	sbc $07                                          ; $4ac9: $de $07
	add b                                            ; $4acb: $80
	ld b, $0b                                        ; $4acc: $06 $0b
	dec c                                            ; $4ace: $0d
	rrca                                             ; $4acf: $0f
	ld c, $17                                        ; $4ad0: $0e $17
	jr jr_072_4aeb                                   ; $4ad2: $18 $17

	rra                                              ; $4ad4: $1f
	inc e                                            ; $4ad5: $1c
	rra                                              ; $4ad6: $1f
	dec sp                                           ; $4ad7: $3b
	inc a                                            ; $4ad8: $3c
	scf                                              ; $4ad9: $37
	jr c, jr_072_4b4b                                ; $4ada: $38 $6f

	ld [hl], b                                       ; $4adc: $70
	ld e, a                                          ; $4add: $5f
	ld h, b                                          ; $4ade: $60
	rst $38                                          ; $4adf: $ff
	ret nz                                           ; $4ae0: $c0

	cp a                                             ; $4ae1: $bf
	jp nz, $c6bf                                     ; $4ae2: $c2 $bf $c6

	cp l                                             ; $4ae5: $bd
	add $79                                          ; $4ae6: $c6 $79
	adc [hl]                                         ; $4ae8: $8e
	ld a, c                                          ; $4ae9: $79
	sbc [hl]                                         ; $4aea: $9e

jr_072_4aeb:
	sub a                                            ; $4aeb: $97
	pop af                                           ; $4aec: $f1
	ld e, $f1                                        ; $4aed: $1e $f1
	ld a, $e1                                        ; $4aef: $3e $e1
	ld a, $e1                                        ; $4af1: $3e $e1
	ld a, [hl]                                       ; $4af3: $7e
	di                                               ; $4af4: $f3
	rst SubAFromDE                                          ; $4af5: $df
	rst FarCall                                          ; $4af6: $f7
	adc h                                            ; $4af7: $8c
	ld a, c                                          ; $4af8: $79
	cp [hl]                                          ; $4af9: $be
	rst SubAFromBC                                          ; $4afa: $e7
	rst $38                                          ; $4afb: $ff
	cp a                                             ; $4afc: $bf
	ret nz                                           ; $4afd: $c0

	halt                                             ; $4afe: $76
	rst $38                                          ; $4aff: $ff
	reti                                             ; $4b00: $d9


	rst $38                                          ; $4b01: $ff
	ld l, d                                          ; $4b02: $6a
	db $dd                                           ; $4b03: $dd
	ld [hl], a                                       ; $4b04: $77
	call z, $cc37                                    ; $4b05: $cc $37 $cc
	cp a                                             ; $4b08: $bf
	ld b, h                                          ; $4b09: $44
	xor d                                            ; $4b0a: $aa
	ld a, e                                          ; $4b0b: $7b
	cp $95                                           ; $4b0c: $fe $95
	ld a, [hl+]                                      ; $4b0e: $2a
	ld b, h                                          ; $4b0f: $44
	inc b                                            ; $4b10: $04
	ld h, d                                          ; $4b11: $62
	ld d, l                                          ; $4b12: $55
	ld [hl+], a                                      ; $4b13: $22
	ld d, c                                          ; $4b14: $51
	ld [hl+], a                                      ; $4b15: $22
	add d                                            ; $4b16: $82
	ld sp, $c1e0                                     ; $4b17: $31 $e0 $c1
	add a                                            ; $4b1a: $87
	add c                                            ; $4b1b: $81
	nop                                              ; $4b1c: $00
	rlca                                             ; $4b1d: $07
	ld bc, $3e7f                                     ; $4b1e: $01 $7f $3e
	jp $3ec1                                         ; $4b21: $c3 $c1 $3e


	ccf                                              ; $4b24: $3f
	ret nz                                           ; $4b25: $c0

	rst $38                                          ; $4b26: $ff
	ld bc, $feff                                     ; $4b27: $01 $ff $fe
	rst $38                                          ; $4b2a: $ff
	inc bc                                           ; $4b2b: $03
	rst $38                                          ; $4b2c: $ff
	db $fd                                           ; $4b2d: $fd
	inc bc                                           ; $4b2e: $03
	cp $01                                           ; $4b2f: $fe $01
	rst $38                                          ; $4b31: $ff
	nop                                              ; $4b32: $00
	daa                                              ; $4b33: $27
	cp $f3                                           ; $4b34: $fe $f3
	rst SubAFromDE                                          ; $4b36: $df
	ldh a, [$80]                                     ; $4b37: $f0 $80
	rst AddAOntoHL                                          ; $4b39: $ef
	rra                                              ; $4b3a: $1f
	sbc l                                            ; $4b3b: $9d
	db $e3                                           ; $4b3c: $e3
	ld [hl], c                                       ; $4b3d: $71
	ld hl, sp-$70                                    ; $4b3e: $f8 $90
	ld c, $e2                                        ; $4b40: $0e $e2
	add c                                            ; $4b42: $81
	xor c                                            ; $4b43: $a9
	ldh a, [rHDMA4]                                  ; $4b44: $f0 $54
	ld hl, sp+$6e                                    ; $4b46: $f8 $6e
	ret c                                            ; $4b48: $d8

	rst AddAOntoHL                                          ; $4b49: $ef

jr_072_4b4a:
	ld e, [hl]                                       ; $4b4a: $5e

jr_072_4b4b:
	or a                                             ; $4b4b: $b7

jr_072_4b4c:
	ld c, a                                          ; $4b4c: $4f
	sbc l                                            ; $4b4d: $9d
	ld h, [hl]                                       ; $4b4e: $66
	db $db                                           ; $4b4f: $db
	ld h, $56                                        ; $4b50: $26 $56
	inc hl                                           ; $4b52: $23
	ld b, l                                          ; $4b53: $45
	inc sp                                           ; $4b54: $33
	dec h                                            ; $4b55: $25
	inc de                                           ; $4b56: $13
	xor d                                            ; $4b57: $aa
	sbc [hl]                                         ; $4b58: $9e
	ld de, $c1e0                                     ; $4b59: $11 $e0 $c1
	sbc e                                            ; $4b5c: $9b
	cp $02                                           ; $4b5d: $fe $02
	cp $fe                                           ; $4b5f: $fe $fe
	ld a, e                                          ; $4b61: $7b
	ld h, a                                          ; $4b62: $67
	ld [hl], e                                       ; $4b63: $73
	add e                                            ; $4b64: $83
	ld [hl], a                                       ; $4b65: $77
	ld a, [$7f8b]                                    ; $4b66: $fa $8b $7f
	add b                                            ; $4b69: $80
	cp a                                             ; $4b6a: $bf
	jp $e1de                                         ; $4b6b: $c3 $de $e1


	ld l, a                                          ; $4b6e: $6f
	ldh a, [$af]                                     ; $4b6f: $f0 $af
	ld [hl], b                                       ; $4b71: $70
	rst SubAFromHL                                          ; $4b72: $d7
	jr c, jr_072_4b4c                                ; $4b73: $38 $d7

	jr c, jr_072_4b4a                                ; $4b75: $38 $d3

	inc a                                            ; $4b77: $3c
	jp hl                                            ; $4b78: $e9


	ld e, $e8                                        ; $4b79: $1e $e8
	sbc a                                            ; $4b7b: $9f
	ld a, e                                          ; $4b7c: $7b
	cp $97                                           ; $4b7d: $fe $97
	rst SubAFromDE                                          ; $4b7f: $df
	ld [hl], h                                       ; $4b80: $74
	rst GetHLinHL                                          ; $4b81: $cf
	ld [hl], h                                       ; $4b82: $74
	rst AddAOntoHL                                          ; $4b83: $ef
	inc [hl]                                         ; $4b84: $34
	rst AddAOntoHL                                          ; $4b85: $ef
	inc [hl]                                         ; $4b86: $34
	ld b, a                                          ; $4b87: $47
	ld e, a                                          ; $4b88: $5f
	cp $df                                           ; $4b89: $fe $df
	ret nz                                           ; $4b8b: $c0

	adc e                                            ; $4b8c: $8b
	ld h, b                                          ; $4b8d: $60
	ldh [$d8], a                                     ; $4b8e: $e0 $d8
	jr c, jr_072_4bfe                                ; $4b90: $38 $6c

	sbc h                                            ; $4b92: $9c
	cp [hl]                                          ; $4b93: $be
	ld b, [hl]                                       ; $4b94: $46
	rst SubAFromDE                                          ; $4b95: $df
	inc hl                                           ; $4b96: $23
	rst AddAOntoHL                                          ; $4b97: $ef
	ld de, $08ff                                     ; $4b98: $11 $ff $08
	rst $38                                          ; $4b9b: $ff
	inc b                                            ; $4b9c: $04
	rst $38                                          ; $4b9d: $ff
	jp nz, $31ff                                     ; $4b9e: $c2 $ff $31

	ld a, e                                          ; $4ba1: $7b
	ld hl, sp-$6e                                    ; $4ba2: $f8 $92
	add h                                            ; $4ba4: $84
	rst $38                                          ; $4ba5: $ff
	ld h, d                                          ; $4ba6: $62
	rst $38                                          ; $4ba7: $ff
	sbc c                                            ; $4ba8: $99
	rst $38                                          ; $4ba9: $ff
	add [hl]                                         ; $4baa: $86
	rst $38                                          ; $4bab: $ff
	rst $38                                          ; $4bac: $ff
	add b                                            ; $4bad: $80
	rst $38                                          ; $4bae: $ff
	ret nz                                           ; $4baf: $c0

	ld a, a                                          ; $4bb0: $7f
	ld l, a                                          ; $4bb1: $6f
	cp $80                                           ; $4bb2: $fe $80
	ldh [$3f], a                                     ; $4bb4: $e0 $3f
	ld h, b                                          ; $4bb6: $60
	cp a                                             ; $4bb7: $bf
	ld a, a                                          ; $4bb8: $7f
	cp a                                             ; $4bb9: $bf
	or a                                             ; $4bba: $b7
	ret c                                            ; $4bbb: $d8

	jp c, Jump_072_6fed                              ; $4bbc: $da $ed $6f

	rst FarCall                                          ; $4bbf: $f7
	sbc [hl]                                         ; $4bc0: $9e
	rst $38                                          ; $4bc1: $ff
	rst JumpTable                                          ; $4bc2: $c7
	ld hl, sp-$42                                    ; $4bc3: $f8 $be
	pop bc                                           ; $4bc5: $c1
	ld bc, $0fff                                     ; $4bc6: $01 $ff $0f
	cp $f2                                           ; $4bc9: $fe $f2
	db $fd                                           ; $4bcb: $fd
	rst GetHLinHL                                          ; $4bcc: $cf
	ld [hl], c                                       ; $4bcd: $71
	pop bc                                           ; $4bce: $c1
	ld a, a                                          ; $4bcf: $7f
	jp nz, $8d7f                                     ; $4bd0: $c2 $7f $8d

	add c                                            ; $4bd3: $81
	rst $38                                          ; $4bd4: $ff
	add hl, de                                       ; $4bd5: $19
	rst $38                                          ; $4bd6: $ff
	jp hl                                            ; $4bd7: $e9


	rst AddAOntoHL                                          ; $4bd8: $ef
	adc c                                            ; $4bd9: $89
	adc a                                            ; $4bda: $8f
	dec e                                            ; $4bdb: $1d
	rla                                              ; $4bdc: $17
	dec a                                            ; $4bdd: $3d
	daa                                              ; $4bde: $27
	ld a, l                                          ; $4bdf: $7d
	ld b, a                                          ; $4be0: $47
	ld a, l                                          ; $4be1: $7d
	ld b, a                                          ; $4be2: $47
	db $fd                                           ; $4be3: $fd
	add a                                            ; $4be4: $87
	rst $38                                          ; $4be5: $ff
	cp [hl]                                          ; $4be6: $be

jr_072_4be7:
	rst JumpTable                                          ; $4be7: $c7
	add $85                                          ; $4be8: $c6 $85
	add l                                            ; $4bea: $85
	dec b                                            ; $4beb: $05

jr_072_4bec:
	dec b                                            ; $4bec: $05
	add b                                            ; $4bed: $80
	add b                                            ; $4bee: $80
	ld b, b                                          ; $4bef: $40
	ret nz                                           ; $4bf0: $c0

	jr nz, @-$20                                     ; $4bf1: $20 $de

	ldh [hDisp0_OBP1], a                                     ; $4bf3: $e0 $87
	jr nc, jr_072_4be7                               ; $4bf5: $30 $f0

	ret nc                                           ; $4bf7: $d0

	jr nc, @-$06                                     ; $4bf8: $30 $f8

	ld hl, sp+$38                                    ; $4bfa: $f8 $38
	ld hl, sp-$38                                    ; $4bfc: $f8 $c8

jr_072_4bfe:
	jr c, jr_072_4bec                                ; $4bfe: $38 $ec

	inc e                                            ; $4c00: $1c
	db $e4                                           ; $4c01: $e4
	inc e                                            ; $4c02: $1c
	or $0e                                           ; $4c03: $f6 $0e
	ld a, [$fd06]                                    ; $4c05: $fa $06 $fd
	inc bc                                           ; $4c08: $03
	ld a, l                                          ; $4c09: $7d
	add e                                            ; $4c0a: $83
	jr @-$17                                         ; $4c0b: $18 $e7

	ld e, [hl]                                       ; $4c0d: $5e
	cp a                                             ; $4c0e: $bf
	rst SubAFromDE                                          ; $4c0f: $df
	add b                                            ; $4c10: $80
	adc b                                            ; $4c11: $88
	ret nz                                           ; $4c12: $c0

	ld b, b                                          ; $4c13: $40
	ret nz                                           ; $4c14: $c0

	ld b, b                                          ; $4c15: $40
	ldh [rAUD4LEN], a                                ; $4c16: $e0 $20
	ldh [$a0], a                                     ; $4c18: $e0 $a0
	ldh a, [$b0]                                     ; $4c1a: $f0 $b0
	ldh a, [$50]                                     ; $4c1c: $f0 $50
	ld hl, sp+$58                                    ; $4c1e: $f8 $58
	rst $38                                          ; $4c20: $ff
	rst $38                                          ; $4c21: $ff
	rst AddAOntoHL                                          ; $4c22: $ef
	ld hl, sp+$0f                                    ; $4c23: $f8 $0f
	cp $0f                                           ; $4c25: $fe $0f
	ld sp, hl                                        ; $4c27: $f9
	rrca                                             ; $4c28: $0f
	ld [hl], e                                       ; $4c29: $73
	ld a, [$1f86]                                    ; $4c2a: $fa $86 $1f
	ld hl, sp+$6b                                    ; $4c2d: $f8 $6b
	db $fc                                           ; $4c2f: $fc
	ld sp, hl                                        ; $4c30: $f9
	sbc [hl]                                         ; $4c31: $9e
	cp h                                             ; $4c32: $bc
	ld l, a                                          ; $4c33: $6f
	ld [$71df], a                                    ; $4c34: $ea $df $71
	sbc a                                            ; $4c37: $9f
	pop de                                           ; $4c38: $d1
	ccf                                              ; $4c39: $3f
	or b                                             ; $4c3a: $b0
	ld a, a                                          ; $4c3b: $7f
	pop hl                                           ; $4c3c: $e1
	cp $21                                           ; $4c3d: $fe $21
	cp $d1                                           ; $4c3f: $fe $d1
	ld a, [hl]                                       ; $4c41: $7e
	ret c                                            ; $4c42: $d8

	rst $38                                          ; $4c43: $ff
	adc h                                            ; $4c44: $8c
	ld a, e                                          ; $4c45: $7b
	ld c, e                                          ; $4c46: $4b
	sbc d                                            ; $4c47: $9a
	ld b, $ff                                        ; $4c48: $06 $ff
	ld [bc], a                                       ; $4c4a: $02
	rst $38                                          ; $4c4b: $ff
	add e                                            ; $4c4c: $83
	ld a, e                                          ; $4c4d: $7b
	cp $97                                           ; $4c4e: $fe $97
	jp nz, $c27e                                     ; $4c50: $c2 $7e $c2

	ld a, [hl]                                       ; $4c53: $7e
	ldh [c], a                                       ; $4c54: $e2
	ld a, $e4                                        ; $4c55: $3e $e4
	inc a                                            ; $4c57: $3c
	ld [hl], a                                       ; $4c58: $77
	cp $93                                           ; $4c59: $fe $93
	db $ec                                           ; $4c5b: $ec
	inc a                                            ; $4c5c: $3c
	add sp, $38                                      ; $4c5d: $e8 $38
	ld hl, sp+$38                                    ; $4c5f: $f8 $38
	ldh a, [$30]                                     ; $4c61: $f0 $30
	ldh a, [$b0]                                     ; $4c63: $f0 $b0
	ldh [$a0], a                                     ; $4c65: $e0 $a0
	db $dd                                           ; $4c67: $dd
	ret nz                                           ; $4c68: $c0

	rst SubAFromDE                                          ; $4c69: $df
	add b                                            ; $4c6a: $80
	db $ed                                           ; $4c6b: $ed
	db $dd                                           ; $4c6c: $dd
	add b                                            ; $4c6d: $80
	ld a, e                                          ; $4c6e: $7b
	adc e                                            ; $4c6f: $8b
	ld a, e                                          ; $4c70: $7b
	cp $5f                                           ; $4c71: $fe $5f
	ldh [$df], a                                     ; $4c73: $e0 $df
	ld [bc], a                                       ; $4c75: $02
	rst SubAFromDE                                          ; $4c76: $df
	ld b, $df                                        ; $4c77: $06 $df
	ld c, $80                                        ; $4c79: $0e $80

jr_072_4c7b:
	ld a, $3a                                        ; $4c7b: $3e $3a
	db $fc                                           ; $4c7d: $fc
	call nz, $1cec                                   ; $4c7e: $c4 $ec $1c
	jr jr_072_4c7b                                   ; $4c81: $18 $f8

	ldh [$e0], a                                     ; $4c83: $e0 $e0
	or b                                             ; $4c85: $b0
	ld [hl], b                                       ; $4c86: $70
	add sp, $18                                      ; $4c87: $e8 $18
	ld [hl], h                                       ; $4c89: $74
	adc h                                            ; $4c8a: $8c
	jp c, Jump_072_7ae6                              ; $4c8b: $da $e6 $7a

	or $a9                                           ; $4c8e: $f6 $a9
	ld l, a                                          ; $4c90: $6f
	push de                                          ; $4c91: $d5
	scf                                              ; $4c92: $37
	ld l, e                                          ; $4c93: $6b
	sbc e                                            ; $4c94: $9b
	dec [hl]                                         ; $4c95: $35
	call $e59d                                       ; $4c96: $cd $9d $e5
	call z, $f48f                                    ; $4c99: $cc $8f $f4
	and d                                            ; $4c9c: $a2
	cp [hl]                                          ; $4c9d: $be
	ld d, d                                          ; $4c9e: $52
	sbc $ca                                          ; $4c9f: $de $ca
	ld c, [hl]                                       ; $4ca1: $4e
	add $46                                          ; $4ca2: $c6 $46
	and [hl]                                         ; $4ca4: $a6
	ld h, [hl]                                       ; $4ca5: $66
	ld h, d                                          ; $4ca6: $62

jr_072_4ca7:
	and d                                            ; $4ca7: $a2
	ld h, d                                          ; $4ca8: $62
	and d                                            ; $4ca9: $a2
	jr nz, jr_072_4d23                               ; $4caa: $20 $77

	ld c, c                                          ; $4cac: $49
	ld a, e                                          ; $4cad: $7b
	cp $df                                           ; $4cae: $fe $df
	ldh [$db], a                                     ; $4cb0: $e0 $db
	ld h, b                                          ; $4cb2: $60
	db $dd                                           ; $4cb3: $dd
	jr nz, jr_072_4ca7                               ; $4cb4: $20 $f1

	ld [hl+], a                                      ; $4cb6: $22
	nop                                              ; $4cb7: $00
	rst SubAFromDE                                          ; $4cb8: $df
	xor d                                            ; $4cb9: $aa
	rst SubAFromDE                                          ; $4cba: $df
	adc b                                            ; $4cbb: $88
	sbc d                                            ; $4cbc: $9a
	sbc c                                            ; $4cbd: $99
	xor d                                            ; $4cbe: $aa
	call z, Call_072_7f88                            ; $4cbf: $cc $88 $7f
	ld [hl], a                                       ; $4cc2: $77
	ei                                               ; $4cc3: $fb
	sub b                                            ; $4cc4: $90
	ld [$e699], sp                                   ; $4cc5: $08 $99 $e6
	ld b, h                                          ; $4cc8: $44
	add b                                            ; $4cc9: $80
	ld [$ee99], sp                                   ; $4cca: $08 $99 $ee
	ld b, h                                          ; $4ccd: $44
	adc b                                            ; $4cce: $88
	ld de, $bb00                                     ; $4ccf: $11 $00 $bb
	call z, Call_072_7b99                            ; $4cd2: $cc $99 $7b
	db $fc                                           ; $4cd5: $fc
	sbc $88                                          ; $4cd6: $de $88
	and b                                            ; $4cd8: $a0
	ld bc, $fc80                                     ; $4cd9: $01 $80 $fc
	or a                                             ; $4cdc: $b7
	db $fc                                           ; $4cdd: $fc
	rst FarCall                                          ; $4cde: $f7
	cp [hl]                                          ; $4cdf: $be
	ld l, e                                          ; $4ce0: $6b
	ld h, a                                          ; $4ce1: $67
	rst JumpTable                                          ; $4ce2: $c7
	ret nz                                           ; $4ce3: $c0

	ret nz                                           ; $4ce4: $c0

	adc e                                            ; $4ce5: $8b
	rst JumpTable                                          ; $4ce6: $c7
	rst SubAFromDE                                          ; $4ce7: $df
	adc a                                            ; $4ce8: $8f
	ei                                               ; $4ce9: $fb
	sbc h                                            ; $4cea: $9c
	rst SubAFromBC                                          ; $4ceb: $e7
	or b                                             ; $4cec: $b0
	rst JumpTable                                          ; $4ced: $c7
	add b                                            ; $4cee: $80
	add [hl]                                         ; $4cef: $86
	adc a                                            ; $4cf0: $8f
	adc a                                            ; $4cf1: $8f
	sbc a                                            ; $4cf2: $9f
	cp e                                             ; $4cf3: $bb
	cp e                                             ; $4cf4: $bb
	sbc c                                            ; $4cf5: $99
	sbc c                                            ; $4cf6: $99
	sub a                                            ; $4cf7: $97
	sbc a                                            ; $4cf8: $9f
	sub l                                            ; $4cf9: $95
	add b                                            ; $4cfa: $80
	sub a                                            ; $4cfb: $97

Call_072_4cfc:
	adc d                                            ; $4cfc: $8a
	adc d                                            ; $4cfd: $8a
	sbc [hl]                                         ; $4cfe: $9e
	adc [hl]                                         ; $4cff: $8e
	call nc, $ab80                                   ; $4d00: $d4 $80 $ab
	add c                                            ; $4d03: $81
	pop bc                                           ; $4d04: $c1
	add c                                            ; $4d05: $81
	ld b, b                                          ; $4d06: $40
	ld b, b                                          ; $4d07: $40
	ld h, b                                          ; $4d08: $60
	ld b, b                                          ; $4d09: $40
	ld h, b                                          ; $4d0a: $60
	ld h, b                                          ; $4d0b: $60
	xor a                                            ; $4d0c: $af
	or b                                             ; $4d0d: $b0
	cp a                                             ; $4d0e: $bf
	or b                                             ; $4d0f: $b0
	sub a                                            ; $4d10: $97
	sbc b                                            ; $4d11: $98
	dec bc                                           ; $4d12: $0b
	inc c                                            ; $4d13: $0c
	dec c                                            ; $4d14: $0d
	ld c, $06                                        ; $4d15: $0e $06
	rlca                                             ; $4d17: $07
	inc bc                                           ; $4d18: $03
	inc bc                                           ; $4d19: $03
	rst SubAFromDE                                          ; $4d1a: $df
	ld bc, $1b8c                                     ; $4d1b: $01 $8c $1b
	di                                               ; $4d1e: $f3
	dec de                                           ; $4d1f: $1b
	di                                               ; $4d20: $f3
	ld e, $f3                                        ; $4d21: $1e $f3

jr_072_4d23:
	adc [hl]                                         ; $4d23: $8e
	ei                                               ; $4d24: $fb
	rst $38                                          ; $4d25: $ff
	ld a, c                                          ; $4d26: $79
	rra                                              ; $4d27: $1f
	dec b                                            ; $4d28: $05
	inc bc                                           ; $4d29: $03
	ld [bc], a                                       ; $4d2a: $02
	add c                                            ; $4d2b: $81
	ld bc, $0080                                     ; $4d2c: $01 $80 $00
	ret nz                                           ; $4d2f: $c0

	ld a, e                                          ; $4d30: $7b
	cp $98                                           ; $4d31: $fe $98
	ld b, b                                          ; $4d33: $40
	add b                                            ; $4d34: $80
	pop bc                                           ; $4d35: $c1
	add b                                            ; $4d36: $80
	add c                                            ; $4d37: $81
	nop                                              ; $4d38: $00
	ld bc, $fe73                                     ; $4d39: $01 $73 $fe
	rst $38                                          ; $4d3c: $ff
	ld a, a                                          ; $4d3d: $7f
	ldh a, [$9a]                                     ; $4d3e: $f0 $9a
	ldh [$80], a                                     ; $4d40: $e0 $80
	ld [hl], b                                       ; $4d42: $70
	add b                                            ; $4d43: $80
	ldh [$fc], a                                     ; $4d44: $e0 $fc
	sbc [hl]                                         ; $4d46: $9e
	rst $38                                          ; $4d47: $ff
	ld h, e                                          ; $4d48: $63
	cp $80                                           ; $4d49: $fe $80
	db $fc                                           ; $4d4b: $fc
	inc bc                                           ; $4d4c: $03
	ld [hl], c                                       ; $4d4d: $71
	adc a                                            ; $4d4e: $8f
	rst $38                                          ; $4d4f: $ff
	rst $38                                          ; $4d50: $ff
	adc d                                            ; $4d51: $8a
	ld sp, $b049                                     ; $4d52: $31 $49 $b0
	push af                                          ; $4d55: $f5
	sbc b                                            ; $4d56: $98
	or h                                             ; $4d57: $b4
	ret c                                            ; $4d58: $d8

	ld a, d                                          ; $4d59: $7a
	call c, $fecc                                    ; $4d5a: $dc $cc $fe
	db $ed                                           ; $4d5d: $ed
	cp $ae                                           ; $4d5e: $fe $ae
	cp e                                             ; $4d60: $bb
	sbc a                                            ; $4d61: $9f
	sbc e                                            ; $4d62: $9b
	ccf                                              ; $4d63: $3f
	dec c                                            ; $4d64: $0d
	ld a, a                                          ; $4d65: $7f
	inc b                                            ; $4d66: $04
	rst $38                                          ; $4d67: $ff
	nop                                              ; $4d68: $00
	db $db                                           ; $4d69: $db
	add b                                            ; $4d6a: $80
	inc a                                            ; $4d6b: $3c
	rst $38                                          ; $4d6c: $ff
	ld a, [hl]                                       ; $4d6d: $7e
	di                                               ; $4d6e: $f3
	di                                               ; $4d6f: $f3
	ld d, c                                          ; $4d70: $51
	ld [hl], c                                       ; $4d71: $71
	ld e, [hl]                                       ; $4d72: $5e
	ld a, a                                          ; $4d73: $7f
	ld e, [hl]                                       ; $4d74: $5e
	ld e, [hl]                                       ; $4d75: $5e
	ld c, d                                          ; $4d76: $4a
	ld c, [hl]                                       ; $4d77: $4e
	dec h                                            ; $4d78: $25
	inc h                                            ; $4d79: $24
	reti                                             ; $4d7a: $d9


	ld a, $1f                                        ; $4d7b: $3e $1f
	nop                                              ; $4d7d: $00
	xor b                                            ; $4d7e: $a8
	nop                                              ; $4d7f: $00
	ld d, a                                          ; $4d80: $57
	nop                                              ; $4d81: $00
	rlca                                             ; $4d82: $07
	nop                                              ; $4d83: $00
	rrca                                             ; $4d84: $0f
	nop                                              ; $4d85: $00
	rra                                              ; $4d86: $1f
	nop                                              ; $4d87: $00
	ccf                                              ; $4d88: $3f
	nop                                              ; $4d89: $00
	add b                                            ; $4d8a: $80
	rst $38                                          ; $4d8b: $ff
	inc bc                                           ; $4d8c: $03
	rst $38                                          ; $4d8d: $ff
	ld e, $fe                                        ; $4d8e: $1e $fe
	ldh a, [$f0]                                     ; $4d90: $f0 $f0
	nop                                              ; $4d92: $00
	and d                                            ; $4d93: $a2
	add hl, de                                       ; $4d94: $19
	dec h                                            ; $4d95: $25

jr_072_4d96:
	sbc b                                            ; $4d96: $98
	ld d, l                                          ; $4d97: $55
	adc b                                            ; $4d98: $88
	sbc c                                            ; $4d99: $99
	ld c, h                                          ; $4d9a: $4c
	ei                                               ; $4d9b: $fb
	ld c, h                                          ; $4d9c: $4c
	push de                                          ; $4d9d: $d5
	ld l, [hl]                                       ; $4d9e: $6e
	cp l                                             ; $4d9f: $bd
	ld h, [hl]                                       ; $4da0: $66
	xor d                                            ; $4da1: $aa
	ld [hl], a                                       ; $4da2: $77
	ld a, [de]                                       ; $4da3: $1a

jr_072_4da4:
	rst FarCall                                          ; $4da4: $f7
	sub e                                            ; $4da5: $93
	rst $38                                          ; $4da6: $ff
	ret                                              ; $4da7: $c9


	rst $38                                          ; $4da8: $ff
	jp hl                                            ; $4da9: $e9


	add b                                            ; $4daa: $80
	ld a, a                                          ; $4dab: $7f
	push af                                          ; $4dac: $f5
	rra                                              ; $4dad: $1f
	cp $0f                                           ; $4dae: $fe $0f
	ld sp, hl                                        ; $4db0: $f9
	rrca                                             ; $4db1: $0f
	db $fc                                           ; $4db2: $fc
	adc e                                            ; $4db3: $8b
	db $fd                                           ; $4db4: $fd
	set 7, l                                         ; $4db5: $cb $fd
	sub e                                            ; $4db7: $93
	ei                                               ; $4db8: $fb
	ld d, $f3                                        ; $4db9: $16 $f3
	ld d, $f7                                        ; $4dbb: $16 $f7
	rla                                              ; $4dbd: $17
	db $ec                                           ; $4dbe: $ec
	daa                                              ; $4dbf: $27

jr_072_4dc0:
	db $eb                                           ; $4dc0: $eb
	inc l                                            ; $4dc1: $2c
	rst SubAFromDE                                          ; $4dc2: $df
	ld l, e                                          ; $4dc3: $6b
	rst $38                                          ; $4dc4: $ff
	ld e, h                                          ; $4dc5: $5c
	rst $38                                          ; $4dc6: $ff
	db $e3                                           ; $4dc7: $e3
	db $fc                                           ; $4dc8: $fc
	inc e                                            ; $4dc9: $1c
	sub a                                            ; $4dca: $97
	ld hl, sp-$28                                    ; $4dcb: $f8 $d8
	ld hl, sp+$08                                    ; $4dcd: $f8 $08
	ld hl, sp+$08                                    ; $4dcf: $f8 $08
	db $fc                                           ; $4dd1: $fc
	inc b                                            ; $4dd2: $04
	ld a, e                                          ; $4dd3: $7b
	cp $3b                                           ; $4dd4: $fe $3b
	nop                                              ; $4dd6: $00
	sub a                                            ; $4dd7: $97
	adc a                                            ; $4dd8: $8f
	add b                                            ; $4dd9: $80
	sub c                                            ; $4dda: $91
	adc [hl]                                         ; $4ddb: $8e
	xor [hl]                                         ; $4ddc: $ae
	sbc a                                            ; $4ddd: $9f
	cp c                                             ; $4dde: $b9
	cp c                                             ; $4ddf: $b9
	inc bc                                           ; $4de0: $03
	nop                                              ; $4de1: $00
	inc hl                                           ; $4de2: $23
	nop                                              ; $4de3: $00
	ld a, a                                          ; $4de4: $7f
	cp $9c                                           ; $4de5: $fe $9c
	pop bc                                           ; $4de7: $c1
	nop                                              ; $4de8: $00
	add c                                            ; $4de9: $81
	ld [hl], d                                       ; $4dea: $72
	cp $27                                           ; $4deb: $fe $27
	jr nz, jr_072_4e66                               ; $4ded: $20 $77

	cp $99                                           ; $4def: $fe $99
	cp l                                             ; $4df1: $bd
	ld a, [hl]                                       ; $4df2: $7e
	ld [hl], e                                       ; $4df3: $73
	di                                               ; $4df4: $f3
	rst SubAFromDE                                          ; $4df5: $df
	rst $38                                          ; $4df6: $ff
	inc bc                                           ; $4df7: $03
	jr nz, jr_072_4e11                               ; $4df8: $20 $17

	jr nz, jr_072_4d96                               ; $4dfa: $20 $9a

	dec bc                                           ; $4dfc: $0b
	db $fd                                           ; $4dfd: $fd
	adc e                                            ; $4dfe: $8b
	db $fd                                           ; $4dff: $fd
	db $d3                                           ; $4e00: $d3
	inc bc                                           ; $4e01: $03
	jr nz, @+$45                                     ; $4e02: $20 $43

	jr nz, jr_072_4da4                               ; $4e04: $20 $9e

	sbc a                                            ; $4e06: $9f
	ld a, e                                          ; $4e07: $7b
	cp $9b                                           ; $4e08: $fe $9b
	adc [hl]                                         ; $4e0a: $8e
	sbc a                                            ; $4e0b: $9f
	cp a                                             ; $4e0c: $bf
	cp a                                             ; $4e0d: $bf
	inc bc                                           ; $4e0e: $03
	jr nz, jr_072_4e28                               ; $4e0f: $20 $17

jr_072_4e11:
	jr nz, jr_072_4e92                               ; $4e11: $20 $7f

	ld [hl+], a                                      ; $4e13: $22
	sbc [hl]                                         ; $4e14: $9e
	add b                                            ; $4e15: $80
	rrca                                             ; $4e16: $0f
	jr nz, jr_072_4e90                               ; $4e17: $20 $77

	ld e, $df                                        ; $4e19: $1e $df
	rst $38                                          ; $4e1b: $ff
	rst SubAFromDE                                          ; $4e1c: $df
	ld e, a                                          ; $4e1d: $5f
	inc bc                                           ; $4e1e: $03
	jr nz, jr_072_4e3c                               ; $4e1f: $20 $1b

	jr nz, jr_072_4dc0                               ; $4e21: $20 $9d

	ld a, l                                          ; $4e23: $7d
	adc e                                            ; $4e24: $8b
	ld a, d                                          ; $4e25: $7a
	ld b, b                                          ; $4e26: $40
	sbc [hl]                                         ; $4e27: $9e

jr_072_4e28:
	sub $03                                          ; $4e28: $d6 $03
	jr nz, jr_072_4e67                               ; $4e2a: $20 $3b

	jr nz, jr_072_4ea5                               ; $4e2c: $20 $77

	cp $7f                                           ; $4e2e: $fe $7f
	or $9b                                           ; $4e30: $f6 $9b
	cp c                                             ; $4e32: $b9
	or e                                             ; $4e33: $b3
	sbc [hl]                                         ; $4e34: $9e
	sbc [hl]                                         ; $4e35: $9e
	inc bc                                           ; $4e36: $03
	jr nz, jr_072_4e60                               ; $4e37: $20 $27

	jr nz, jr_072_4e45                               ; $4e39: $20 $0a

	ld b, b                                          ; $4e3b: $40

jr_072_4e3c:
	ld h, a                                          ; $4e3c: $67
	cp $7f                                           ; $4e3d: $fe $7f
	ld [hl-], a                                      ; $4e3f: $32
	sbc e                                            ; $4e40: $9b
	ld [hl], l                                       ; $4e41: $75
	ld h, e                                          ; $4e42: $63
	rst $38                                          ; $4e43: $ff
	ccf                                              ; $4e44: $3f

jr_072_4e45:
	inc bc                                           ; $4e45: $03
	jr nz, jr_072_4e76                               ; $4e46: $20 $2e

	ld b, b                                          ; $4e48: $40
	ld a, a                                          ; $4e49: $7f
	cp $9e                                           ; $4e4a: $fe $9e
	inc de                                           ; $4e4c: $13
	ld a, d                                          ; $4e4d: $7a
	ld b, b                                          ; $4e4e: $40
	sbc [hl]                                         ; $4e4f: $9e
	sub [hl]                                         ; $4e50: $96
	daa                                              ; $4e51: $27
	jr nz, @-$0b                                     ; $4e52: $20 $f3

	sbc b                                            ; $4e54: $98
	ret nz                                           ; $4e55: $c0

	add b                                            ; $4e56: $80
	ld [hl], b                                       ; $4e57: $70
	ld [hl], b                                       ; $4e58: $70
	nop                                              ; $4e59: $00
	nop                                              ; $4e5a: $00
	ld h, b                                          ; $4e5b: $60
	ldh [$c8], a                                     ; $4e5c: $e0 $c8
	ld a, a                                          ; $4e5e: $7f
	ret nz                                           ; $4e5f: $c0

jr_072_4e60:
	sbc e                                            ; $4e60: $9b
	ldh a, [rSVBK]                                   ; $4e61: $f0 $70
	ld [hl], b                                       ; $4e63: $70
	ld h, b                                          ; $4e64: $60
	inc bc                                           ; $4e65: $03

jr_072_4e66:
	ret nz                                           ; $4e66: $c0

jr_072_4e67:
	rla                                              ; $4e67: $17
	ret nz                                           ; $4e68: $c0

	rst SubAFromDE                                          ; $4e69: $df
	ldh a, [rPCM34]                                  ; $4e6a: $f0 $77
	ld a, l                                          ; $4e6c: $7d
	ldh [$ca], a                                     ; $4e6d: $e0 $ca
	sbc d                                            ; $4e6f: $9a
	and b                                            ; $4e70: $a0
	ret nz                                           ; $4e71: $c0

	ld hl, sp-$10                                    ; $4e72: $f8 $f0
	ld hl, sp+$03                                    ; $4e74: $f8 $03

jr_072_4e76:
	ld a, [hl]                                       ; $4e76: $7e
	push af                                          ; $4e77: $f5
	and [hl]                                         ; $4e78: $a6
	ld bc, $fc80                                     ; $4e79: $01 $80 $fc
	or a                                             ; $4e7c: $b7
	db $fc                                           ; $4e7d: $fc
	rst FarCall                                          ; $4e7e: $f7
	cp [hl]                                          ; $4e7f: $be
	ld l, e                                          ; $4e80: $6b
	ld h, a                                          ; $4e81: $67
	rst JumpTable                                          ; $4e82: $c7
	ret nz                                           ; $4e83: $c0

	ret nz                                           ; $4e84: $c0

	adc a                                            ; $4e85: $8f
	sbc $dd                                          ; $4e86: $de $dd
	cp [hl]                                          ; $4e88: $be
	rst $38                                          ; $4e89: $ff
	or b                                             ; $4e8a: $b0
	rst SubAFromBC                                          ; $4e8b: $e7
	and b                                            ; $4e8c: $a0
	rst JumpTable                                          ; $4e8d: $c7
	add b                                            ; $4e8e: $80
	add [hl]                                         ; $4e8f: $86

jr_072_4e90:
	adc a                                            ; $4e90: $8f
	adc a                                            ; $4e91: $8f

jr_072_4e92:
	sbc a                                            ; $4e92: $9f
	or e                                             ; $4e93: $b3
	or e                                             ; $4e94: $b3
	sbc c                                            ; $4e95: $99
	sbc c                                            ; $4e96: $99
	sub a                                            ; $4e97: $97
	sbc a                                            ; $4e98: $9f
	sub l                                            ; $4e99: $95
	add b                                            ; $4e9a: $80
	sub a                                            ; $4e9b: $97
	adc d                                            ; $4e9c: $8a
	adc d                                            ; $4e9d: $8a
	sbc [hl]                                         ; $4e9e: $9e
	adc [hl]                                         ; $4e9f: $8e
	add b                                            ; $4ea0: $80
	add b                                            ; $4ea1: $80
	add c                                            ; $4ea2: $81
	add c                                            ; $4ea3: $81
	pop bc                                           ; $4ea4: $c1

jr_072_4ea5:
	add c                                            ; $4ea5: $81
	ld b, b                                          ; $4ea6: $40
	ld b, b                                          ; $4ea7: $40
	ld h, b                                          ; $4ea8: $60
	ld b, b                                          ; $4ea9: $40
	ld h, b                                          ; $4eaa: $60
	ld h, b                                          ; $4eab: $60
	xor a                                            ; $4eac: $af
	or b                                             ; $4ead: $b0
	cp a                                             ; $4eae: $bf
	or b                                             ; $4eaf: $b0
	sub a                                            ; $4eb0: $97
	sbc b                                            ; $4eb1: $98
	dec bc                                           ; $4eb2: $0b
	inc c                                            ; $4eb3: $0c
	dec c                                            ; $4eb4: $0d
	ld c, $06                                        ; $4eb5: $0e $06
	rlca                                             ; $4eb7: $07
	inc bc                                           ; $4eb8: $03
	inc bc                                           ; $4eb9: $03
	rst SubAFromDE                                          ; $4eba: $df
	ld bc, $1b8e                                     ; $4ebb: $01 $8e $1b
	di                                               ; $4ebe: $f3
	dec de                                           ; $4ebf: $1b
	di                                               ; $4ec0: $f3
	ld e, $f3                                        ; $4ec1: $1e $f3
	adc [hl]                                         ; $4ec3: $8e
	ei                                               ; $4ec4: $fb
	rst $38                                          ; $4ec5: $ff
	ld a, c                                          ; $4ec6: $79
	rra                                              ; $4ec7: $1f
	dec b                                            ; $4ec8: $05
	inc bc                                           ; $4ec9: $03
	ld [bc], a                                       ; $4eca: $02
	add c                                            ; $4ecb: $81
	ld bc, $be80                                     ; $4ecc: $01 $80 $be
	ret nz                                           ; $4ecf: $c0

	ret nz                                           ; $4ed0: $c0

	ld b, b                                          ; $4ed1: $40
	sbc e                                            ; $4ed2: $9b
	add b                                            ; $4ed3: $80
	pop bc                                           ; $4ed4: $c1
	add b                                            ; $4ed5: $80
	add c                                            ; $4ed6: $81
	cp e                                             ; $4ed7: $bb
	ld bc, $0101                                     ; $4ed8: $01 $01 $01
	nop                                              ; $4edb: $00
	ret nz                                           ; $4edc: $c0

	ldh [$9b], a                                     ; $4edd: $e0 $9b
	add b                                            ; $4edf: $80
	ld [hl], b                                       ; $4ee0: $70
	add b                                            ; $4ee1: $80
	ldh [$b9], a                                     ; $4ee2: $e0 $b9
	nop                                              ; $4ee4: $00
	nop                                              ; $4ee5: $00
	rst $38                                          ; $4ee6: $ff
	rst $38                                          ; $4ee7: $ff
	rst $38                                          ; $4ee8: $ff
	rst $38                                          ; $4ee9: $ff
	rst $38                                          ; $4eea: $ff
	db $fc                                           ; $4eeb: $fc
	add b                                            ; $4eec: $80
	inc bc                                           ; $4eed: $03
	ld [hl], c                                       ; $4eee: $71
	adc a                                            ; $4eef: $8f
	rst $38                                          ; $4ef0: $ff
	rst $38                                          ; $4ef1: $ff
	adc d                                            ; $4ef2: $8a
	ld sp, $b049                                     ; $4ef3: $31 $49 $b0
	push af                                          ; $4ef6: $f5
	sbc b                                            ; $4ef7: $98
	or h                                             ; $4ef8: $b4
	ret c                                            ; $4ef9: $d8

	ld a, d                                          ; $4efa: $7a
	call c, $fecc                                    ; $4efb: $dc $cc $fe
	db $ed                                           ; $4efe: $ed
	cp $ae                                           ; $4eff: $fe $ae
	cp e                                             ; $4f01: $bb
	sbc a                                            ; $4f02: $9f
	sbc e                                            ; $4f03: $9b
	ccf                                              ; $4f04: $3f
	dec c                                            ; $4f05: $0d
	ld a, a                                          ; $4f06: $7f
	inc b                                            ; $4f07: $04
	rst $38                                          ; $4f08: $ff
	nop                                              ; $4f09: $00
	db $db                                           ; $4f0a: $db
	inc a                                            ; $4f0b: $3c
	adc [hl]                                         ; $4f0c: $8e
	rst $38                                          ; $4f0d: $ff
	ld a, [hl]                                       ; $4f0e: $7e
	db $e3                                           ; $4f0f: $e3
	db $e3                                           ; $4f10: $e3
	ld d, c                                          ; $4f11: $51
	ld [hl], c                                       ; $4f12: $71
	ld e, [hl]                                       ; $4f13: $5e
	ld a, a                                          ; $4f14: $7f
	ld e, [hl]                                       ; $4f15: $5e
	ld e, [hl]                                       ; $4f16: $5e
	ld c, d                                          ; $4f17: $4a
	ld c, [hl]                                       ; $4f18: $4e
	dec h                                            ; $4f19: $25
	inc h                                            ; $4f1a: $24
	reti                                             ; $4f1b: $d9


	ld a, $1f                                        ; $4f1c: $3e $1f
	cp d                                             ; $4f1e: $ba
	nop                                              ; $4f1f: $00
	inc bc                                           ; $4f20: $03
	rlca                                             ; $4f21: $07
	rrca                                             ; $4f22: $0f
	rra                                              ; $4f23: $1f
	ccf                                              ; $4f24: $3f
	rst $38                                          ; $4f25: $ff
	add b                                            ; $4f26: $80
	inc bc                                           ; $4f27: $03
	rst $38                                          ; $4f28: $ff
	ld e, $fe                                        ; $4f29: $1e $fe
	ldh a, [$f0]                                     ; $4f2b: $f0 $f0
	nop                                              ; $4f2d: $00
	and d                                            ; $4f2e: $a2
	add hl, de                                       ; $4f2f: $19
	dec h                                            ; $4f30: $25

jr_072_4f31:
	sbc b                                            ; $4f31: $98
	ld d, l                                          ; $4f32: $55
	adc b                                            ; $4f33: $88
	sbc c                                            ; $4f34: $99
	ld c, h                                          ; $4f35: $4c
	ei                                               ; $4f36: $fb
	ld c, h                                          ; $4f37: $4c
	push de                                          ; $4f38: $d5
	ld l, [hl]                                       ; $4f39: $6e
	cp l                                             ; $4f3a: $bd
	ld h, [hl]                                       ; $4f3b: $66
	xor d                                            ; $4f3c: $aa
	ld [hl], a                                       ; $4f3d: $77
	ld a, [de]                                       ; $4f3e: $1a

jr_072_4f3f:
	rst FarCall                                          ; $4f3f: $f7
	sub e                                            ; $4f40: $93
	rst $38                                          ; $4f41: $ff
	ret                                              ; $4f42: $c9


	rst $38                                          ; $4f43: $ff
	jp hl                                            ; $4f44: $e9


	ld a, a                                          ; $4f45: $7f
	add b                                            ; $4f46: $80
	push af                                          ; $4f47: $f5
	rra                                              ; $4f48: $1f
	cp $0f                                           ; $4f49: $fe $0f
	ld sp, hl                                        ; $4f4b: $f9
	rrca                                             ; $4f4c: $0f
	db $fc                                           ; $4f4d: $fc
	adc e                                            ; $4f4e: $8b
	db $fd                                           ; $4f4f: $fd
	set 7, l                                         ; $4f50: $cb $fd
	sub e                                            ; $4f52: $93
	ei                                               ; $4f53: $fb
	ld d, $f3                                        ; $4f54: $16 $f3
	ld d, $f7                                        ; $4f56: $16 $f7
	rla                                              ; $4f58: $17
	db $ec                                           ; $4f59: $ec
	daa                                              ; $4f5a: $27

jr_072_4f5b:
	db $eb                                           ; $4f5b: $eb
	inc l                                            ; $4f5c: $2c
	rst SubAFromDE                                          ; $4f5d: $df
	ld l, e                                          ; $4f5e: $6b
	rst $38                                          ; $4f5f: $ff
	ld e, h                                          ; $4f60: $5c

jr_072_4f61:
	rst $38                                          ; $4f61: $ff
	db $e3                                           ; $4f62: $e3
	db $fc                                           ; $4f63: $fc
	inc e                                            ; $4f64: $1c
	ld hl, sp-$68                                    ; $4f65: $f8 $98
	ret c                                            ; $4f67: $d8

	ld hl, sp+$08                                    ; $4f68: $f8 $08
	ld hl, sp+$08                                    ; $4f6a: $f8 $08
	db $fc                                           ; $4f6c: $fc
	inc b                                            ; $4f6d: $04
	ld a, e                                          ; $4f6e: $7b
	cp $3b                                           ; $4f6f: $fe $3b
	nop                                              ; $4f71: $00
	sub a                                            ; $4f72: $97
	adc a                                            ; $4f73: $8f
	add b                                            ; $4f74: $80
	sub c                                            ; $4f75: $91
	adc [hl]                                         ; $4f76: $8e
	xor [hl]                                         ; $4f77: $ae
	sbc a                                            ; $4f78: $9f
	cp c                                             ; $4f79: $b9
	cp c                                             ; $4f7a: $b9
	inc bc                                           ; $4f7b: $03
	nop                                              ; $4f7c: $00
	inc hl                                           ; $4f7d: $23
	nop                                              ; $4f7e: $00
	ld a, a                                          ; $4f7f: $7f
	cp $9c                                           ; $4f80: $fe $9c
	pop bc                                           ; $4f82: $c1
	nop                                              ; $4f83: $00
	add c                                            ; $4f84: $81
	ld [hl], d                                       ; $4f85: $72
	cp $27                                           ; $4f86: $fe $27
	jr nz, jr_072_5001                               ; $4f88: $20 $77

	cp $99                                           ; $4f8a: $fe $99
	cp l                                             ; $4f8c: $bd
	ld a, [hl]                                       ; $4f8d: $7e
	ld [hl], e                                       ; $4f8e: $73
	di                                               ; $4f8f: $f3
	rst SubAFromDE                                          ; $4f90: $df
	rst $38                                          ; $4f91: $ff
	inc bc                                           ; $4f92: $03
	jr nz, jr_072_4fac                               ; $4f93: $20 $17

	jr nz, jr_072_4f31                               ; $4f95: $20 $9a

	dec bc                                           ; $4f97: $0b
	db $fd                                           ; $4f98: $fd
	adc e                                            ; $4f99: $8b
	db $fd                                           ; $4f9a: $fd
	db $d3                                           ; $4f9b: $d3
	inc bc                                           ; $4f9c: $03
	jr nz, jr_072_4fe2                               ; $4f9d: $20 $43

	jr nz, jr_072_4f3f                               ; $4f9f: $20 $9e

	sbc a                                            ; $4fa1: $9f
	ld a, e                                          ; $4fa2: $7b
	cp $9b                                           ; $4fa3: $fe $9b
	adc [hl]                                         ; $4fa5: $8e
	sbc a                                            ; $4fa6: $9f
	cp a                                             ; $4fa7: $bf
	cp a                                             ; $4fa8: $bf
	inc bc                                           ; $4fa9: $03
	jr nz, jr_072_4fc3                               ; $4faa: $20 $17

jr_072_4fac:
	jr nz, jr_072_502d                               ; $4fac: $20 $7f

	ld [hl+], a                                      ; $4fae: $22
	sbc [hl]                                         ; $4faf: $9e
	add b                                            ; $4fb0: $80
	rrca                                             ; $4fb1: $0f
	jr nz, jr_072_502b                               ; $4fb2: $20 $77

	ld e, $df                                        ; $4fb4: $1e $df
	rst $38                                          ; $4fb6: $ff
	rst SubAFromDE                                          ; $4fb7: $df
	ld e, a                                          ; $4fb8: $5f
	inc bc                                           ; $4fb9: $03
	jr nz, jr_072_4fd7                               ; $4fba: $20 $1b

	jr nz, jr_072_4f5b                               ; $4fbc: $20 $9d

	ld a, l                                          ; $4fbe: $7d
	adc e                                            ; $4fbf: $8b
	ld a, d                                          ; $4fc0: $7a
	ld b, b                                          ; $4fc1: $40
	sbc [hl]                                         ; $4fc2: $9e

jr_072_4fc3:
	sub $03                                          ; $4fc3: $d6 $03
	jr nz, jr_072_5042                               ; $4fc5: $20 $7b

	jr nz, jr_072_4f61                               ; $4fc7: $20 $98

	sbc a                                            ; $4fc9: $9f
	ret nz                                           ; $4fca: $c0

	rst AddAOntoHL                                          ; $4fcb: $ef
	sbc [hl]                                         ; $4fcc: $9e
	db $dd                                           ; $4fcd: $dd
	cp [hl]                                          ; $4fce: $be
	rst FarCall                                          ; $4fcf: $f7
	ld a, e                                          ; $4fd0: $7b
	ld e, $6f                                        ; $4fd1: $1e $6f
	jr nz, jr_072_504c                               ; $4fd3: $20 $77

	cp $7f                                           ; $4fd5: $fe $7f

jr_072_4fd7:
	or $9b                                           ; $4fd7: $f6 $9b
	cp c                                             ; $4fd9: $b9
	or e                                             ; $4fda: $b3
	sbc [hl]                                         ; $4fdb: $9e
	sbc [hl]                                         ; $4fdc: $9e
	inc bc                                           ; $4fdd: $03
	jr nz, jr_072_5007                               ; $4fde: $20 $27

	jr nz, jr_072_4fec                               ; $4fe0: $20 $0a

jr_072_4fe2:
	ld b, b                                          ; $4fe2: $40
	ld h, a                                          ; $4fe3: $67
	cp $7f                                           ; $4fe4: $fe $7f
	ld [hl-], a                                      ; $4fe6: $32
	sbc e                                            ; $4fe7: $9b
	ld [hl], l                                       ; $4fe8: $75
	ld h, e                                          ; $4fe9: $63
	rst $38                                          ; $4fea: $ff
	ccf                                              ; $4feb: $3f

jr_072_4fec:
	inc bc                                           ; $4fec: $03
	jr nz, jr_072_501d                               ; $4fed: $20 $2e

	ld b, b                                          ; $4fef: $40
	ld a, a                                          ; $4ff0: $7f
	cp $9e                                           ; $4ff1: $fe $9e
	inc de                                           ; $4ff3: $13
	ld a, d                                          ; $4ff4: $7a
	ld b, b                                          ; $4ff5: $40
	sbc [hl]                                         ; $4ff6: $9e
	sub [hl]                                         ; $4ff7: $96
	daa                                              ; $4ff8: $27
	jr nz, @-$0b                                     ; $4ff9: $20 $f3

	rst SubAFromDE                                          ; $4ffb: $df
	add b                                            ; $4ffc: $80
	sbc e                                            ; $4ffd: $9b
	ld hl, sp-$38                                    ; $4ffe: $f8 $c8
	ld [hl], b                                       ; $5000: $70

jr_072_5001:
	ld [hl], b                                       ; $5001: $70
	ldh [$c7], a                                     ; $5002: $e0 $c7
	sbc l                                            ; $5004: $9d
	ret nz                                           ; $5005: $c0

	add b                                            ; $5006: $80

jr_072_5007:
	ld a, e                                          ; $5007: $7b
	and [hl]                                         ; $5008: $a6
	inc bc                                           ; $5009: $03
	cp a                                             ; $500a: $bf
	rst SubAFromBC                                          ; $500b: $e7
	sbc c                                            ; $500c: $99
	and b                                            ; $500d: $a0
	ret nz                                           ; $500e: $c0

	db $fc                                           ; $500f: $fc
	ld hl, sp-$08                                    ; $5010: $f8 $f8
	ld a, b                                          ; $5012: $78
	inc bc                                           ; $5013: $03
	cp [hl]                                          ; $5014: $be
	inc de                                           ; $5015: $13
	ret nz                                           ; $5016: $c0

	ld a, e                                          ; $5017: $7b
	cp $df                                           ; $5018: $fe $df
	ld a, b                                          ; $501a: $78
	inc bc                                           ; $501b: $03
	cp [hl]                                          ; $501c: $be

jr_072_501d:
	ld sp, hl                                        ; $501d: $f9
	and d                                            ; $501e: $a2
	ld bc, $fc80                                     ; $501f: $01 $80 $fc
	or a                                             ; $5022: $b7
	db $fc                                           ; $5023: $fc
	rst FarCall                                          ; $5024: $f7
	cp [hl]                                          ; $5025: $be
	ld l, e                                          ; $5026: $6b
	ld h, a                                          ; $5027: $67
	rst JumpTable                                          ; $5028: $c7
	ret nz                                           ; $5029: $c0

	ret nz                                           ; $502a: $c0

jr_072_502b:
	adc a                                            ; $502b: $8f
	rst GetHLinHL                                          ; $502c: $cf

jr_072_502d:
	call c, $ff9f                                    ; $502d: $dc $9f $ff
	or b                                             ; $5030: $b0
	rst SubAFromBC                                          ; $5031: $e7
	and b                                            ; $5032: $a0
	rst JumpTable                                          ; $5033: $c7
	add b                                            ; $5034: $80
	add [hl]                                         ; $5035: $86
	adc a                                            ; $5036: $8f
	adc a                                            ; $5037: $8f
	sbc a                                            ; $5038: $9f
	cp e                                             ; $5039: $bb
	cp e                                             ; $503a: $bb
	sbc c                                            ; $503b: $99
	sbc c                                            ; $503c: $99
	sub a                                            ; $503d: $97
	sbc a                                            ; $503e: $9f
	sub l                                            ; $503f: $95
	add b                                            ; $5040: $80
	sub a                                            ; $5041: $97

jr_072_5042:
	adc d                                            ; $5042: $8a
	adc d                                            ; $5043: $8a
	sbc [hl]                                         ; $5044: $9e
	adc [hl]                                         ; $5045: $8e
	add b                                            ; $5046: $80
	add b                                            ; $5047: $80
	add c                                            ; $5048: $81
	add c                                            ; $5049: $81
	pop bc                                           ; $504a: $c1
	add c                                            ; $504b: $81

jr_072_504c:
	ld b, b                                          ; $504c: $40
	ld b, b                                          ; $504d: $40
	ld h, b                                          ; $504e: $60
	ld b, b                                          ; $504f: $40
	ld h, b                                          ; $5050: $60
	ld h, b                                          ; $5051: $60
	xor a                                            ; $5052: $af
	or b                                             ; $5053: $b0
	cp a                                             ; $5054: $bf
	or b                                             ; $5055: $b0
	sub a                                            ; $5056: $97
	sbc b                                            ; $5057: $98
	dec bc                                           ; $5058: $0b
	inc c                                            ; $5059: $0c
	dec c                                            ; $505a: $0d
	ld c, $06                                        ; $505b: $0e $06
	rlca                                             ; $505d: $07
	inc bc                                           ; $505e: $03
	inc bc                                           ; $505f: $03
	rst SubAFromDE                                          ; $5060: $df
	ld bc, $1b8c                                     ; $5061: $01 $8c $1b
	di                                               ; $5064: $f3
	dec de                                           ; $5065: $1b
	di                                               ; $5066: $f3
	ld e, $f3                                        ; $5067: $1e $f3
	adc [hl]                                         ; $5069: $8e
	ei                                               ; $506a: $fb
	rst $38                                          ; $506b: $ff
	ld a, c                                          ; $506c: $79
	rra                                              ; $506d: $1f
	dec b                                            ; $506e: $05
	inc bc                                           ; $506f: $03
	ld [bc], a                                       ; $5070: $02
	add c                                            ; $5071: $81
	ld bc, $0080                                     ; $5072: $01 $80 $00
	ret nz                                           ; $5075: $c0

	ld a, e                                          ; $5076: $7b
	cp $98                                           ; $5077: $fe $98
	ld b, b                                          ; $5079: $40
	add b                                            ; $507a: $80
	pop bc                                           ; $507b: $c1
	add b                                            ; $507c: $80
	add c                                            ; $507d: $81
	nop                                              ; $507e: $00
	ld bc, $fe73                                     ; $507f: $01 $73 $fe
	rst $38                                          ; $5082: $ff
	ld a, a                                          ; $5083: $7f
	ldh a, [$9a]                                     ; $5084: $f0 $9a
	ldh [$80], a                                     ; $5086: $e0 $80
	ld [hl], b                                       ; $5088: $70
	add b                                            ; $5089: $80
	ldh [$fc], a                                     ; $508a: $e0 $fc
	sbc [hl]                                         ; $508c: $9e
	rst $38                                          ; $508d: $ff
	ld h, e                                          ; $508e: $63
	cp $80                                           ; $508f: $fe $80
	db $fc                                           ; $5091: $fc
	inc bc                                           ; $5092: $03
	ld [hl], c                                       ; $5093: $71
	adc a                                            ; $5094: $8f
	rst $38                                          ; $5095: $ff
	rst $38                                          ; $5096: $ff
	adc d                                            ; $5097: $8a
	ld sp, $b049                                     ; $5098: $31 $49 $b0
	push af                                          ; $509b: $f5
	sbc b                                            ; $509c: $98
	or h                                             ; $509d: $b4
	ret c                                            ; $509e: $d8

	ld a, d                                          ; $509f: $7a
	call c, $fecc                                    ; $50a0: $dc $cc $fe
	db $ed                                           ; $50a3: $ed
	cp $ae                                           ; $50a4: $fe $ae
	cp e                                             ; $50a6: $bb
	sbc a                                            ; $50a7: $9f
	sbc e                                            ; $50a8: $9b
	ccf                                              ; $50a9: $3f
	dec c                                            ; $50aa: $0d
	ld a, a                                          ; $50ab: $7f
	inc b                                            ; $50ac: $04
	rst $38                                          ; $50ad: $ff
	nop                                              ; $50ae: $00
	db $db                                           ; $50af: $db
	adc l                                            ; $50b0: $8d
	inc a                                            ; $50b1: $3c
	rst $38                                          ; $50b2: $ff
	ld a, [hl]                                       ; $50b3: $7e
	di                                               ; $50b4: $f3
	di                                               ; $50b5: $f3
	ld d, c                                          ; $50b6: $51
	ld [hl], c                                       ; $50b7: $71
	ld e, [hl]                                       ; $50b8: $5e
	ld a, a                                          ; $50b9: $7f
	ld e, [hl]                                       ; $50ba: $5e
	ld e, [hl]                                       ; $50bb: $5e
	ld c, d                                          ; $50bc: $4a
	ld c, [hl]                                       ; $50bd: $4e
	dec h                                            ; $50be: $25
	inc h                                            ; $50bf: $24
	reti                                             ; $50c0: $d9


	ld a, $1f                                        ; $50c1: $3e $1f
	cp $80                                           ; $50c3: $fe $80
	inc bc                                           ; $50c5: $03
	nop                                              ; $50c6: $00
	rlca                                             ; $50c7: $07
	nop                                              ; $50c8: $00
	rrca                                             ; $50c9: $0f
	nop                                              ; $50ca: $00
	rra                                              ; $50cb: $1f
	nop                                              ; $50cc: $00
	ccf                                              ; $50cd: $3f
	nop                                              ; $50ce: $00
	rst $38                                          ; $50cf: $ff
	inc bc                                           ; $50d0: $03
	rst $38                                          ; $50d1: $ff
	ld e, $fe                                        ; $50d2: $1e $fe
	ldh a, [$f0]                                     ; $50d4: $f0 $f0
	nop                                              ; $50d6: $00
	and d                                            ; $50d7: $a2
	add hl, de                                       ; $50d8: $19
	dec h                                            ; $50d9: $25

jr_072_50da:
	sbc b                                            ; $50da: $98
	ld d, l                                          ; $50db: $55
	adc b                                            ; $50dc: $88
	sbc c                                            ; $50dd: $99
	ld c, h                                          ; $50de: $4c
	ei                                               ; $50df: $fb
	ld c, h                                          ; $50e0: $4c
	push de                                          ; $50e1: $d5
	ld l, [hl]                                       ; $50e2: $6e
	cp l                                             ; $50e3: $bd
	add b                                            ; $50e4: $80
	ld h, [hl]                                       ; $50e5: $66
	xor d                                            ; $50e6: $aa
	ld [hl], a                                       ; $50e7: $77

jr_072_50e8:
	ld a, [de]                                       ; $50e8: $1a
	rst FarCall                                          ; $50e9: $f7
	sub e                                            ; $50ea: $93
	rst $38                                          ; $50eb: $ff
	ret                                              ; $50ec: $c9


	rst $38                                          ; $50ed: $ff
	jp hl                                            ; $50ee: $e9


	ld a, a                                          ; $50ef: $7f
	push af                                          ; $50f0: $f5
	rra                                              ; $50f1: $1f
	cp $0f                                           ; $50f2: $fe $0f
	ld sp, hl                                        ; $50f4: $f9
	rrca                                             ; $50f5: $0f
	db $fc                                           ; $50f6: $fc
	adc e                                            ; $50f7: $8b
	db $fd                                           ; $50f8: $fd
	set 7, l                                         ; $50f9: $cb $fd
	sub e                                            ; $50fb: $93
	ei                                               ; $50fc: $fb
	ld d, $f3                                        ; $50fd: $16 $f3
	ld d, $f7                                        ; $50ff: $16 $f7
	rla                                              ; $5101: $17
	db $ec                                           ; $5102: $ec
	daa                                              ; $5103: $27

jr_072_5104:
	adc l                                            ; $5104: $8d
	db $eb                                           ; $5105: $eb
	inc l                                            ; $5106: $2c
	rst SubAFromDE                                          ; $5107: $df
	ld l, e                                          ; $5108: $6b
	rst $38                                          ; $5109: $ff
	ld e, h                                          ; $510a: $5c
	rst $38                                          ; $510b: $ff
	db $e3                                           ; $510c: $e3
	db $fc                                           ; $510d: $fc
	inc e                                            ; $510e: $1c
	ld hl, sp-$28                                    ; $510f: $f8 $d8
	ld hl, sp+$08                                    ; $5111: $f8 $08
	ld hl, sp+$08                                    ; $5113: $f8 $08
	db $fc                                           ; $5115: $fc
	inc b                                            ; $5116: $04
	ld a, e                                          ; $5117: $7b
	cp $3b                                           ; $5118: $fe $3b
	nop                                              ; $511a: $00
	sub a                                            ; $511b: $97
	adc a                                            ; $511c: $8f
	add b                                            ; $511d: $80
	sub c                                            ; $511e: $91
	adc [hl]                                         ; $511f: $8e
	xor [hl]                                         ; $5120: $ae
	sbc a                                            ; $5121: $9f
	cp c                                             ; $5122: $b9
	cp c                                             ; $5123: $b9
	inc bc                                           ; $5124: $03
	nop                                              ; $5125: $00
	inc hl                                           ; $5126: $23
	nop                                              ; $5127: $00
	ld a, a                                          ; $5128: $7f
	cp $9c                                           ; $5129: $fe $9c
	pop bc                                           ; $512b: $c1
	nop                                              ; $512c: $00
	add c                                            ; $512d: $81
	ld [hl], d                                       ; $512e: $72
	cp $27                                           ; $512f: $fe $27
	jr nz, jr_072_51aa                               ; $5131: $20 $77

	cp $99                                           ; $5133: $fe $99
	cp l                                             ; $5135: $bd
	ld a, [hl]                                       ; $5136: $7e
	ld [hl], e                                       ; $5137: $73
	di                                               ; $5138: $f3
	rst SubAFromDE                                          ; $5139: $df
	rst $38                                          ; $513a: $ff
	inc bc                                           ; $513b: $03
	jr nz, jr_072_5155                               ; $513c: $20 $17

	jr nz, jr_072_50da                               ; $513e: $20 $9a

	dec bc                                           ; $5140: $0b
	db $fd                                           ; $5141: $fd
	adc e                                            ; $5142: $8b
	db $fd                                           ; $5143: $fd
	db $d3                                           ; $5144: $d3
	inc bc                                           ; $5145: $03
	jr nz, @+$45                                     ; $5146: $20 $43

	jr nz, jr_072_50e8                               ; $5148: $20 $9e

	sbc a                                            ; $514a: $9f
	ld a, e                                          ; $514b: $7b
	cp $9b                                           ; $514c: $fe $9b
	adc [hl]                                         ; $514e: $8e
	sbc a                                            ; $514f: $9f
	cp a                                             ; $5150: $bf
	cp a                                             ; $5151: $bf
	inc bc                                           ; $5152: $03
	jr nz, jr_072_516c                               ; $5153: $20 $17

jr_072_5155:
	jr nz, jr_072_51d6                               ; $5155: $20 $7f

	ld [hl+], a                                      ; $5157: $22
	sbc [hl]                                         ; $5158: $9e
	add b                                            ; $5159: $80
	rrca                                             ; $515a: $0f
	jr nz, jr_072_51d4                               ; $515b: $20 $77

	ld e, $df                                        ; $515d: $1e $df
	rst $38                                          ; $515f: $ff
	rst SubAFromDE                                          ; $5160: $df
	ld e, a                                          ; $5161: $5f
	inc bc                                           ; $5162: $03
	jr nz, jr_072_5180                               ; $5163: $20 $1b

	jr nz, jr_072_5104                               ; $5165: $20 $9d

	ld a, l                                          ; $5167: $7d
	adc e                                            ; $5168: $8b
	ld a, d                                          ; $5169: $7a
	ld b, b                                          ; $516a: $40
	sbc [hl]                                         ; $516b: $9e

jr_072_516c:
	sub $03                                          ; $516c: $d6 $03
	jr nz, @+$3d                                     ; $516e: $20 $3b

	jr nz, jr_072_51e9                               ; $5170: $20 $77

	cp $7f                                           ; $5172: $fe $7f
	or $9b                                           ; $5174: $f6 $9b
	cp c                                             ; $5176: $b9
	or e                                             ; $5177: $b3
	sbc [hl]                                         ; $5178: $9e
	sbc [hl]                                         ; $5179: $9e
	inc bc                                           ; $517a: $03
	jr nz, jr_072_51a4                               ; $517b: $20 $27

	jr nz, jr_072_5189                               ; $517d: $20 $0a

	ld b, b                                          ; $517f: $40

jr_072_5180:
	ld h, a                                          ; $5180: $67
	cp $7f                                           ; $5181: $fe $7f
	ld [hl-], a                                      ; $5183: $32
	sbc e                                            ; $5184: $9b
	ld [hl], l                                       ; $5185: $75
	ld h, e                                          ; $5186: $63
	rst $38                                          ; $5187: $ff
	ccf                                              ; $5188: $3f

jr_072_5189:
	inc bc                                           ; $5189: $03
	jr nz, jr_072_51ba                               ; $518a: $20 $2e

	ld b, b                                          ; $518c: $40
	ld a, a                                          ; $518d: $7f
	cp $9e                                           ; $518e: $fe $9e
	inc de                                           ; $5190: $13
	ld a, d                                          ; $5191: $7a
	ld b, b                                          ; $5192: $40
	sbc [hl]                                         ; $5193: $9e
	sub [hl]                                         ; $5194: $96
	daa                                              ; $5195: $27
	jr nz, @-$0b                                     ; $5196: $20 $f3

	rst SubAFromDE                                          ; $5198: $df
	add b                                            ; $5199: $80
	rst SubAFromDE                                          ; $519a: $df
	jr c, @+$01                                      ; $519b: $38 $ff

	sbc [hl]                                         ; $519d: $9e
	ld h, b                                          ; $519e: $60
	ldh [$c8], a                                     ; $519f: $e0 $c8
	rst SubAFromDE                                          ; $51a1: $df
	add b                                            ; $51a2: $80
	sbc e                                            ; $51a3: $9b

jr_072_51a4:
	ld hl, sp+$78                                    ; $51a4: $f8 $78
	ld [hl], b                                       ; $51a6: $70
	ld [hl], b                                       ; $51a7: $70
	inc bc                                           ; $51a8: $03
	ret nz                                           ; $51a9: $c0

jr_072_51aa:
	add sp, -$65                                     ; $51aa: $e8 $9b
	and b                                            ; $51ac: $a0
	ret nz                                           ; $51ad: $c0

	ld hl, sp-$08                                    ; $51ae: $f8 $f8
	sbc $78                                          ; $51b0: $de $78
	rst SubAFromDE                                          ; $51b2: $df
	ld [hl], b                                       ; $51b3: $70
	ldh [$ca], a                                     ; $51b4: $e0 $ca
	ld [hl], a                                       ; $51b6: $77
	ret nz                                           ; $51b7: $c0

	ld [hl], a                                       ; $51b8: $77
	cp a                                             ; $51b9: $bf

jr_072_51ba:
	sbc h                                            ; $51ba: $9c
	ld a, b                                          ; $51bb: $78
	jr nc, jr_072_51ee                               ; $51bc: $30 $30

	ldh [$da], a                                     ; $51be: $e0 $da
	or e                                             ; $51c0: $b3
	ld bc, $fc80                                     ; $51c1: $01 $80 $fc
	or a                                             ; $51c4: $b7
	db $fc                                           ; $51c5: $fc
	rst FarCall                                          ; $51c6: $f7
	cp [hl]                                          ; $51c7: $be
	ld l, e                                          ; $51c8: $6b
	ld h, a                                          ; $51c9: $67
	rst JumpTable                                          ; $51ca: $c7
	ret nz                                           ; $51cb: $c0

	ret nz                                           ; $51cc: $c0

	add b                                            ; $51cd: $80
	ret nz                                           ; $51ce: $c0

	sbc $9f                                          ; $51cf: $de $9f
	db $eb                                           ; $51d1: $eb
	or a                                             ; $51d2: $b7
	push hl                                          ; $51d3: $e5

jr_072_51d4:
	add e                                            ; $51d4: $83
	rst JumpTable                                          ; $51d5: $c7

jr_072_51d6:
	add b                                            ; $51d6: $80
	add [hl]                                         ; $51d7: $86
	adc a                                            ; $51d8: $8f
	adc a                                            ; $51d9: $8f
	sbc a                                            ; $51da: $9f
	cp e                                             ; $51db: $bb
	cp e                                             ; $51dc: $bb
	sbc c                                            ; $51dd: $99
	sbc c                                            ; $51de: $99
	sub a                                            ; $51df: $97
	sbc a                                            ; $51e0: $9f
	sub l                                            ; $51e1: $95
	add b                                            ; $51e2: $80
	sub a                                            ; $51e3: $97
	adc d                                            ; $51e4: $8a
	adc d                                            ; $51e5: $8a
	sbc [hl]                                         ; $51e6: $9e
	adc [hl]                                         ; $51e7: $8e
	add b                                            ; $51e8: $80

jr_072_51e9:
	add b                                            ; $51e9: $80
	add c                                            ; $51ea: $81
	add c                                            ; $51eb: $81
	pop bc                                           ; $51ec: $c1
	add c                                            ; $51ed: $81

jr_072_51ee:
	ld b, b                                          ; $51ee: $40
	ld b, b                                          ; $51ef: $40
	ld h, b                                          ; $51f0: $60
	ld b, b                                          ; $51f1: $40
	ld h, b                                          ; $51f2: $60
	ld h, b                                          ; $51f3: $60
	xor a                                            ; $51f4: $af
	or b                                             ; $51f5: $b0
	cp a                                             ; $51f6: $bf
	or b                                             ; $51f7: $b0
	sub a                                            ; $51f8: $97
	sbc b                                            ; $51f9: $98
	dec bc                                           ; $51fa: $0b
	inc c                                            ; $51fb: $0c
	dec c                                            ; $51fc: $0d
	ld c, $06                                        ; $51fd: $0e $06
	rlca                                             ; $51ff: $07
	inc bc                                           ; $5200: $03
	inc bc                                           ; $5201: $03
	rst SubAFromDE                                          ; $5202: $df
	ld bc, $1b82                                     ; $5203: $01 $82 $1b
	di                                               ; $5206: $f3
	dec de                                           ; $5207: $1b
	di                                               ; $5208: $f3
	ld e, $f3                                        ; $5209: $1e $f3
	adc [hl]                                         ; $520b: $8e
	ei                                               ; $520c: $fb
	rst $38                                          ; $520d: $ff
	ld a, c                                          ; $520e: $79
	rra                                              ; $520f: $1f
	dec b                                            ; $5210: $05
	inc bc                                           ; $5211: $03
	ld [bc], a                                       ; $5212: $02
	add c                                            ; $5213: $81
	add c                                            ; $5214: $81
	add b                                            ; $5215: $80
	add b                                            ; $5216: $80
	ret nz                                           ; $5217: $c0

	nop                                              ; $5218: $00
	ret nz                                           ; $5219: $c0

	nop                                              ; $521a: $00
	ld b, b                                          ; $521b: $40
	add b                                            ; $521c: $80
	pop bc                                           ; $521d: $c1
	add b                                            ; $521e: $80
	add c                                            ; $521f: $81
	nop                                              ; $5220: $00
	ld bc, $fe73                                     ; $5221: $01 $73 $fe
	rst $38                                          ; $5224: $ff
	ld a, a                                          ; $5225: $7f
	ldh a, [$9a]                                     ; $5226: $f0 $9a
	ldh [$80], a                                     ; $5228: $e0 $80
	ld [hl], b                                       ; $522a: $70
	add b                                            ; $522b: $80
	ldh [$fc], a                                     ; $522c: $e0 $fc
	sbc [hl]                                         ; $522e: $9e
	rst $38                                          ; $522f: $ff
	ld h, e                                          ; $5230: $63
	cp $80                                           ; $5231: $fe $80
	db $fc                                           ; $5233: $fc
	inc bc                                           ; $5234: $03
	ld [hl], c                                       ; $5235: $71
	adc a                                            ; $5236: $8f
	rst $38                                          ; $5237: $ff
	rst $38                                          ; $5238: $ff
	adc d                                            ; $5239: $8a
	ld sp, $b049                                     ; $523a: $31 $49 $b0
	push af                                          ; $523d: $f5
	sbc b                                            ; $523e: $98
	or h                                             ; $523f: $b4
	ret c                                            ; $5240: $d8

	ld a, d                                          ; $5241: $7a
	call c, $fecc                                    ; $5242: $dc $cc $fe
	db $ed                                           ; $5245: $ed
	cp $ae                                           ; $5246: $fe $ae
	cp e                                             ; $5248: $bb
	sbc a                                            ; $5249: $9f
	sbc e                                            ; $524a: $9b
	ccf                                              ; $524b: $3f
	dec c                                            ; $524c: $0d
	ld a, a                                          ; $524d: $7f
	dec b                                            ; $524e: $05
	rst $38                                          ; $524f: $ff
	nop                                              ; $5250: $00
	db $db                                           ; $5251: $db
	adc l                                            ; $5252: $8d
	inc a                                            ; $5253: $3c
	rst $38                                          ; $5254: $ff
	ld a, [hl]                                       ; $5255: $7e
	di                                               ; $5256: $f3
	di                                               ; $5257: $f3
	ld d, c                                          ; $5258: $51
	ld [hl], c                                       ; $5259: $71
	ld e, [hl]                                       ; $525a: $5e
	ld a, a                                          ; $525b: $7f
	ld e, [hl]                                       ; $525c: $5e
	ld e, [hl]                                       ; $525d: $5e
	ld c, d                                          ; $525e: $4a
	ld c, [hl]                                       ; $525f: $4e
	dec h                                            ; $5260: $25
	inc h                                            ; $5261: $24
	reti                                             ; $5262: $d9


	ld a, $1f                                        ; $5263: $3e $1f
	cp $80                                           ; $5265: $fe $80
	inc bc                                           ; $5267: $03
	nop                                              ; $5268: $00
	rlca                                             ; $5269: $07
	nop                                              ; $526a: $00
	rrca                                             ; $526b: $0f
	nop                                              ; $526c: $00
	rra                                              ; $526d: $1f
	nop                                              ; $526e: $00
	ccf                                              ; $526f: $3f
	nop                                              ; $5270: $00
	rst $38                                          ; $5271: $ff
	inc bc                                           ; $5272: $03
	rst $38                                          ; $5273: $ff
	ld e, $fe                                        ; $5274: $1e $fe
	ldh a, [$f0]                                     ; $5276: $f0 $f0
	nop                                              ; $5278: $00
	and d                                            ; $5279: $a2
	add hl, de                                       ; $527a: $19
	dec h                                            ; $527b: $25

jr_072_527c:
	sbc b                                            ; $527c: $98
	ld d, l                                          ; $527d: $55
	adc b                                            ; $527e: $88
	sbc c                                            ; $527f: $99
	ld c, h                                          ; $5280: $4c
	ei                                               ; $5281: $fb
	ld c, h                                          ; $5282: $4c
	push de                                          ; $5283: $d5
	ld l, [hl]                                       ; $5284: $6e
	cp l                                             ; $5285: $bd
	add b                                            ; $5286: $80
	ld h, [hl]                                       ; $5287: $66
	xor d                                            ; $5288: $aa
	ld [hl], a                                       ; $5289: $77

jr_072_528a:
	ld a, [de]                                       ; $528a: $1a
	rst FarCall                                          ; $528b: $f7
	sub e                                            ; $528c: $93
	rst $38                                          ; $528d: $ff
	ret                                              ; $528e: $c9


	rst $38                                          ; $528f: $ff
	jp hl                                            ; $5290: $e9


	ld a, a                                          ; $5291: $7f
	push af                                          ; $5292: $f5
	rra                                              ; $5293: $1f
	cp $0f                                           ; $5294: $fe $0f
	ld sp, hl                                        ; $5296: $f9
	rrca                                             ; $5297: $0f
	db $fc                                           ; $5298: $fc
	adc e                                            ; $5299: $8b
	db $fd                                           ; $529a: $fd
	set 7, l                                         ; $529b: $cb $fd
	sub e                                            ; $529d: $93
	ei                                               ; $529e: $fb
	ld d, $f3                                        ; $529f: $16 $f3
	ld d, $f7                                        ; $52a1: $16 $f7
	rla                                              ; $52a3: $17
	db $ec                                           ; $52a4: $ec
	daa                                              ; $52a5: $27

jr_072_52a6:
	adc l                                            ; $52a6: $8d
	db $eb                                           ; $52a7: $eb
	inc l                                            ; $52a8: $2c
	rst SubAFromDE                                          ; $52a9: $df
	ld l, e                                          ; $52aa: $6b

jr_072_52ab:
	rst $38                                          ; $52ab: $ff
	ld e, h                                          ; $52ac: $5c
	rst $38                                          ; $52ad: $ff
	db $e3                                           ; $52ae: $e3
	db $fc                                           ; $52af: $fc
	inc e                                            ; $52b0: $1c
	ld hl, sp-$28                                    ; $52b1: $f8 $d8
	ld hl, sp+$08                                    ; $52b3: $f8 $08
	ld hl, sp+$08                                    ; $52b5: $f8 $08
	db $fc                                           ; $52b7: $fc
	inc b                                            ; $52b8: $04
	ld a, e                                          ; $52b9: $7b
	cp $3b                                           ; $52ba: $fe $3b
	nop                                              ; $52bc: $00
	sub a                                            ; $52bd: $97
	adc a                                            ; $52be: $8f
	add b                                            ; $52bf: $80
	sub c                                            ; $52c0: $91
	adc [hl]                                         ; $52c1: $8e
	xor [hl]                                         ; $52c2: $ae
	sbc a                                            ; $52c3: $9f
	cp c                                             ; $52c4: $b9
	cp c                                             ; $52c5: $b9
	inc bc                                           ; $52c6: $03
	nop                                              ; $52c7: $00
	inc hl                                           ; $52c8: $23
	nop                                              ; $52c9: $00
	ld a, a                                          ; $52ca: $7f
	cp $9c                                           ; $52cb: $fe $9c
	pop bc                                           ; $52cd: $c1
	nop                                              ; $52ce: $00
	add c                                            ; $52cf: $81
	ld [hl], d                                       ; $52d0: $72
	cp $27                                           ; $52d1: $fe $27
	jr nz, @+$79                                     ; $52d3: $20 $77

	cp $99                                           ; $52d5: $fe $99
	cp l                                             ; $52d7: $bd
	ld a, [hl]                                       ; $52d8: $7e
	ld [hl], e                                       ; $52d9: $73
	di                                               ; $52da: $f3
	rst SubAFromDE                                          ; $52db: $df
	rst $38                                          ; $52dc: $ff
	inc bc                                           ; $52dd: $03
	jr nz, jr_072_52f7                               ; $52de: $20 $17

	jr nz, jr_072_527c                               ; $52e0: $20 $9a

	dec bc                                           ; $52e2: $0b
	db $fd                                           ; $52e3: $fd
	adc e                                            ; $52e4: $8b

jr_072_52e5:
	db $fd                                           ; $52e5: $fd
	db $d3                                           ; $52e6: $d3
	inc bc                                           ; $52e7: $03
	jr nz, jr_072_532d                               ; $52e8: $20 $43

	jr nz, jr_072_528a                               ; $52ea: $20 $9e

	sbc a                                            ; $52ec: $9f
	ld a, e                                          ; $52ed: $7b
	cp $9b                                           ; $52ee: $fe $9b
	adc [hl]                                         ; $52f0: $8e
	sbc a                                            ; $52f1: $9f
	cp a                                             ; $52f2: $bf
	cp a                                             ; $52f3: $bf
	inc bc                                           ; $52f4: $03
	jr nz, jr_072_530e                               ; $52f5: $20 $17

jr_072_52f7:
	jr nz, jr_072_5378                               ; $52f7: $20 $7f

	ld [hl+], a                                      ; $52f9: $22
	sbc [hl]                                         ; $52fa: $9e
	add b                                            ; $52fb: $80
	rrca                                             ; $52fc: $0f
	jr nz, @+$79                                     ; $52fd: $20 $77

	ld e, $df                                        ; $52ff: $1e $df
	rst $38                                          ; $5301: $ff
	rst SubAFromDE                                          ; $5302: $df
	ld e, a                                          ; $5303: $5f
	inc bc                                           ; $5304: $03
	jr nz, @+$1d                                     ; $5305: $20 $1b

	jr nz, jr_072_52a6                               ; $5307: $20 $9d

	ld a, l                                          ; $5309: $7d
	adc e                                            ; $530a: $8b
	ld a, d                                          ; $530b: $7a
	ld b, b                                          ; $530c: $40
	sbc [hl]                                         ; $530d: $9e

jr_072_530e:
	sub $03                                          ; $530e: $d6 $03
	jr nz, jr_072_5385                               ; $5310: $20 $73

	jr nz, jr_072_52ab                               ; $5312: $20 $97

	rst SubAFromDE                                          ; $5314: $df
	add b                                            ; $5315: $80
	rst SubAFromDE                                          ; $5316: $df
	cp a                                             ; $5317: $bf
	db $eb                                           ; $5318: $eb
	or a                                             ; $5319: $b7
	rst JumpTable                                          ; $531a: $c7
	add c                                            ; $531b: $81
	ld l, a                                          ; $531c: $6f
	jr nz, jr_072_5396                               ; $531d: $20 $77

	cp $7f                                           ; $531f: $fe $7f
	or $9b                                           ; $5321: $f6 $9b
	cp c                                             ; $5323: $b9
	or e                                             ; $5324: $b3
	sbc [hl]                                         ; $5325: $9e
	sbc [hl]                                         ; $5326: $9e
	inc bc                                           ; $5327: $03
	jr nz, jr_072_5389                               ; $5328: $20 $5f

	jr nz, jr_072_53ab                               ; $532a: $20 $7f

	dec l                                            ; $532c: $2d

jr_072_532d:
	ld a, a                                          ; $532d: $7f
	cp c                                             ; $532e: $b9
	ld [hl], e                                       ; $532f: $73
	ld e, $73                                        ; $5330: $1e $73
	jr nz, jr_072_535a                               ; $5332: $20 $26

	ld b, b                                          ; $5334: $40
	sbc [hl]                                         ; $5335: $9e
	rlca                                             ; $5336: $07
	ld e, l                                          ; $5337: $5d
	ld a, [hl-]                                      ; $5338: $3a
	ld [hl], a                                       ; $5339: $77
	cp $7f                                           ; $533a: $fe $7f
	ld [hl-], a                                      ; $533c: $32
	sbc e                                            ; $533d: $9b
	ld [hl], l                                       ; $533e: $75
	ld h, e                                          ; $533f: $63
	rst $38                                          ; $5340: $ff
	ccf                                              ; $5341: $3f

jr_072_5342:
	inc bc                                           ; $5342: $03
	jr nz, jr_072_539c                               ; $5343: $20 $57

	jr nz, jr_072_52e5                               ; $5345: $20 $9e

	rst $38                                          ; $5347: $ff
	ld h, d                                          ; $5348: $62
	ld b, b                                          ; $5349: $40
	ld a, a                                          ; $534a: $7f
	cp $9e                                           ; $534b: $fe $9e
	inc de                                           ; $534d: $13
	ld a, d                                          ; $534e: $7a
	ld b, b                                          ; $534f: $40
	sbc [hl]                                         ; $5350: $9e
	sub [hl]                                         ; $5351: $96
	daa                                              ; $5352: $27
	jr nz, @-$0d                                     ; $5353: $20 $f1

	rst SubAFromDE                                          ; $5355: $df
	ld [hl], b                                       ; $5356: $70
	sbc l                                            ; $5357: $9d
	jr jr_072_5362                                   ; $5358: $18 $08

jr_072_535a:
	ldh [$c5], a                                     ; $535a: $e0 $c5
	rst SubAFromDE                                          ; $535c: $df
	ld [hl], b                                       ; $535d: $70
	sbc l                                            ; $535e: $9d
	ld a, b                                          ; $535f: $78
	jr c, jr_072_5342                                ; $5360: $38 $e0

jr_072_5362:
	call nc, $c047                                   ; $5362: $d4 $47 $c0
	sbc l                                            ; $5365: $9d
	ld h, b                                          ; $5366: $60
	ld a, b                                          ; $5367: $78
	ld a, e                                          ; $5368: $7b
	cp [hl]                                          ; $5369: $be
	inc bc                                           ; $536a: $03
	cp l                                             ; $536b: $bd
	rrca                                             ; $536c: $0f
	ret nz                                           ; $536d: $c0

	rst SubAFromDE                                          ; $536e: $df
	ld a, b                                          ; $536f: $78
	inc bc                                           ; $5370: $03
	cp [hl]                                          ; $5371: $be
	ld sp, hl                                        ; $5372: $f9
	cp d                                             ; $5373: $ba
	ld bc, $fc80                                     ; $5374: $01 $80 $fc
	or a                                             ; $5377: $b7

jr_072_5378:
	db $fc                                           ; $5378: $fc
	rst FarCall                                          ; $5379: $f7
	cp [hl]                                          ; $537a: $be
	ld l, e                                          ; $537b: $6b
	ld h, a                                          ; $537c: $67
	rst JumpTable                                          ; $537d: $c7
	ret nz                                           ; $537e: $c0

	ret nz                                           ; $537f: $c0

	adc [hl]                                         ; $5380: $8e
	ret z                                            ; $5381: $c8

	rst SubAFromHL                                          ; $5382: $d7
	adc [hl]                                         ; $5383: $8e
	ei                                               ; $5384: $fb

jr_072_5385:
	add a                                            ; $5385: $87
	push hl                                          ; $5386: $e5
	add e                                            ; $5387: $83
	rst JumpTable                                          ; $5388: $c7

jr_072_5389:
	add c                                            ; $5389: $81
	add [hl]                                         ; $538a: $86
	adc a                                            ; $538b: $8f
	adc a                                            ; $538c: $8f
	sbc a                                            ; $538d: $9f
	cp e                                             ; $538e: $bb
	cp e                                             ; $538f: $bb
	sbc c                                            ; $5390: $99
	sbc c                                            ; $5391: $99
	sub a                                            ; $5392: $97
	sbc a                                            ; $5393: $9f
	sub l                                            ; $5394: $95
	add b                                            ; $5395: $80

jr_072_5396:
	sub a                                            ; $5396: $97
	adc d                                            ; $5397: $8a
	adc d                                            ; $5398: $8a
	sbc [hl]                                         ; $5399: $9e
	adc [hl]                                         ; $539a: $8e
	add b                                            ; $539b: $80

jr_072_539c:
	add b                                            ; $539c: $80
	add c                                            ; $539d: $81
	add c                                            ; $539e: $81
	pop bc                                           ; $539f: $c1
	add c                                            ; $53a0: $81
	ld b, b                                          ; $53a1: $40
	ld b, b                                          ; $53a2: $40
	ld h, b                                          ; $53a3: $60
	ld b, b                                          ; $53a4: $40
	ld h, b                                          ; $53a5: $60
	ld h, b                                          ; $53a6: $60
	xor a                                            ; $53a7: $af
	or b                                             ; $53a8: $b0
	cp a                                             ; $53a9: $bf
	or b                                             ; $53aa: $b0

jr_072_53ab:
	sub a                                            ; $53ab: $97
	sbc b                                            ; $53ac: $98
	dec bc                                           ; $53ad: $0b
	inc c                                            ; $53ae: $0c
	dec c                                            ; $53af: $0d
	ld c, $06                                        ; $53b0: $0e $06
	rlca                                             ; $53b2: $07
	inc bc                                           ; $53b3: $03
	inc bc                                           ; $53b4: $03
	rst SubAFromDE                                          ; $53b5: $df
	ld bc, $1b82                                     ; $53b6: $01 $82 $1b
	di                                               ; $53b9: $f3
	dec de                                           ; $53ba: $1b
	di                                               ; $53bb: $f3
	ld e, $f3                                        ; $53bc: $1e $f3
	adc [hl]                                         ; $53be: $8e
	ei                                               ; $53bf: $fb
	rst $38                                          ; $53c0: $ff
	ld a, c                                          ; $53c1: $79
	rra                                              ; $53c2: $1f
	dec b                                            ; $53c3: $05
	inc bc                                           ; $53c4: $03
	ld [bc], a                                       ; $53c5: $02
	ld bc, $8001                                     ; $53c6: $01 $01 $80
	add b                                            ; $53c9: $80
	ret nz                                           ; $53ca: $c0

	add b                                            ; $53cb: $80
	ret nz                                           ; $53cc: $c0

	nop                                              ; $53cd: $00
	ld b, b                                          ; $53ce: $40
	add b                                            ; $53cf: $80
	pop bc                                           ; $53d0: $c1
	add b                                            ; $53d1: $80
	add c                                            ; $53d2: $81
	nop                                              ; $53d3: $00
	ld bc, $fe73                                     ; $53d4: $01 $73 $fe
	rst $38                                          ; $53d7: $ff
	ld a, a                                          ; $53d8: $7f
	ldh a, [$9a]                                     ; $53d9: $f0 $9a
	ldh [$80], a                                     ; $53db: $e0 $80
	ld [hl], b                                       ; $53dd: $70
	add b                                            ; $53de: $80
	ldh [$fc], a                                     ; $53df: $e0 $fc
	sbc [hl]                                         ; $53e1: $9e
	rst $38                                          ; $53e2: $ff
	ld h, e                                          ; $53e3: $63
	cp $80                                           ; $53e4: $fe $80
	db $fc                                           ; $53e6: $fc
	inc bc                                           ; $53e7: $03
	ld [hl], c                                       ; $53e8: $71
	adc a                                            ; $53e9: $8f
	rst $38                                          ; $53ea: $ff
	rst $38                                          ; $53eb: $ff
	adc d                                            ; $53ec: $8a
	ld sp, $b049                                     ; $53ed: $31 $49 $b0
	push af                                          ; $53f0: $f5
	sbc b                                            ; $53f1: $98
	or h                                             ; $53f2: $b4
	ret c                                            ; $53f3: $d8

	ld a, d                                          ; $53f4: $7a
	call c, $fecc                                    ; $53f5: $dc $cc $fe
	db $ed                                           ; $53f8: $ed
	cp $ae                                           ; $53f9: $fe $ae
	cp e                                             ; $53fb: $bb
	sbc a                                            ; $53fc: $9f
	sbc e                                            ; $53fd: $9b
	ccf                                              ; $53fe: $3f
	dec a                                            ; $53ff: $3d
	ld e, a                                          ; $5400: $5f
	ccf                                              ; $5401: $3f
	rst $38                                          ; $5402: $ff
	nop                                              ; $5403: $00
	db $db                                           ; $5404: $db
	adc l                                            ; $5405: $8d
	inc a                                            ; $5406: $3c
	rst $38                                          ; $5407: $ff
	ld a, [hl]                                       ; $5408: $7e
	di                                               ; $5409: $f3
	di                                               ; $540a: $f3
	ld d, c                                          ; $540b: $51
	ld [hl], c                                       ; $540c: $71
	ld e, [hl]                                       ; $540d: $5e
	ld a, a                                          ; $540e: $7f
	ld e, [hl]                                       ; $540f: $5e
	ld e, [hl]                                       ; $5410: $5e
	ld c, d                                          ; $5411: $4a
	ld c, [hl]                                       ; $5412: $4e
	dec h                                            ; $5413: $25
	inc h                                            ; $5414: $24
	reti                                             ; $5415: $d9


	ld a, $1f                                        ; $5416: $3e $1f
	cp $80                                           ; $5418: $fe $80
	inc bc                                           ; $541a: $03
	nop                                              ; $541b: $00
	rlca                                             ; $541c: $07
	nop                                              ; $541d: $00
	rrca                                             ; $541e: $0f
	nop                                              ; $541f: $00
	rra                                              ; $5420: $1f
	nop                                              ; $5421: $00
	ccf                                              ; $5422: $3f
	nop                                              ; $5423: $00
	rst $38                                          ; $5424: $ff
	inc bc                                           ; $5425: $03
	rst $38                                          ; $5426: $ff
	ld e, $fe                                        ; $5427: $1e $fe
	ldh a, [$f0]                                     ; $5429: $f0 $f0
	nop                                              ; $542b: $00
	and d                                            ; $542c: $a2
	add hl, de                                       ; $542d: $19
	dec h                                            ; $542e: $25

jr_072_542f:
	sbc b                                            ; $542f: $98
	ld d, l                                          ; $5430: $55
	adc b                                            ; $5431: $88
	sbc c                                            ; $5432: $99
	ld c, h                                          ; $5433: $4c
	ei                                               ; $5434: $fb
	ld c, h                                          ; $5435: $4c
	push de                                          ; $5436: $d5
	ld l, [hl]                                       ; $5437: $6e
	cp l                                             ; $5438: $bd
	add b                                            ; $5439: $80
	ld h, [hl]                                       ; $543a: $66
	xor d                                            ; $543b: $aa
	ld [hl], a                                       ; $543c: $77

jr_072_543d:
	ld a, [de]                                       ; $543d: $1a
	rst FarCall                                          ; $543e: $f7
	sub e                                            ; $543f: $93
	rst $38                                          ; $5440: $ff
	ret                                              ; $5441: $c9


	rst $38                                          ; $5442: $ff
	jp hl                                            ; $5443: $e9


	ld a, a                                          ; $5444: $7f
	push af                                          ; $5445: $f5
	rra                                              ; $5446: $1f
	cp $0f                                           ; $5447: $fe $0f
	ld sp, hl                                        ; $5449: $f9
	rrca                                             ; $544a: $0f
	db $fc                                           ; $544b: $fc
	adc e                                            ; $544c: $8b
	db $fd                                           ; $544d: $fd
	set 7, l                                         ; $544e: $cb $fd
	sub e                                            ; $5450: $93
	ei                                               ; $5451: $fb
	ld d, $f3                                        ; $5452: $16 $f3
	ld d, $f7                                        ; $5454: $16 $f7
	rla                                              ; $5456: $17
	db $ec                                           ; $5457: $ec
	daa                                              ; $5458: $27

jr_072_5459:
	adc l                                            ; $5459: $8d
	db $eb                                           ; $545a: $eb

jr_072_545b:
	inc l                                            ; $545b: $2c
	rst SubAFromDE                                          ; $545c: $df
	ld l, e                                          ; $545d: $6b
	rst $38                                          ; $545e: $ff
	ld e, h                                          ; $545f: $5c
	rst $38                                          ; $5460: $ff
	db $e3                                           ; $5461: $e3
	db $fc                                           ; $5462: $fc
	inc e                                            ; $5463: $1c
	ld hl, sp-$28                                    ; $5464: $f8 $d8
	ld hl, sp+$08                                    ; $5466: $f8 $08
	ld hl, sp+$08                                    ; $5468: $f8 $08
	db $fc                                           ; $546a: $fc
	inc b                                            ; $546b: $04
	ld a, e                                          ; $546c: $7b
	cp $3b                                           ; $546d: $fe $3b
	nop                                              ; $546f: $00
	sub a                                            ; $5470: $97
	adc a                                            ; $5471: $8f
	add b                                            ; $5472: $80
	sub c                                            ; $5473: $91
	adc [hl]                                         ; $5474: $8e
	xor [hl]                                         ; $5475: $ae
	sbc a                                            ; $5476: $9f
	cp c                                             ; $5477: $b9
	cp c                                             ; $5478: $b9
	inc bc                                           ; $5479: $03
	nop                                              ; $547a: $00
	inc hl                                           ; $547b: $23
	nop                                              ; $547c: $00
	ld a, a                                          ; $547d: $7f
	cp $9c                                           ; $547e: $fe $9c
	pop bc                                           ; $5480: $c1
	nop                                              ; $5481: $00
	add c                                            ; $5482: $81
	ld [hl], d                                       ; $5483: $72
	cp $27                                           ; $5484: $fe $27
	jr nz, jr_072_54ff                               ; $5486: $20 $77

	cp $99                                           ; $5488: $fe $99
	cp l                                             ; $548a: $bd
	ld a, [hl]                                       ; $548b: $7e
	ld [hl], e                                       ; $548c: $73
	di                                               ; $548d: $f3
	rst SubAFromDE                                          ; $548e: $df
	rst $38                                          ; $548f: $ff
	inc bc                                           ; $5490: $03
	jr nz, jr_072_54aa                               ; $5491: $20 $17

	jr nz, jr_072_542f                               ; $5493: $20 $9a

	dec bc                                           ; $5495: $0b
	db $fd                                           ; $5496: $fd
	adc e                                            ; $5497: $8b
	db $fd                                           ; $5498: $fd
	db $d3                                           ; $5499: $d3
	inc bc                                           ; $549a: $03
	jr nz, jr_072_54e0                               ; $549b: $20 $43

	jr nz, jr_072_543d                               ; $549d: $20 $9e

	sbc a                                            ; $549f: $9f
	ld a, e                                          ; $54a0: $7b
	cp $9b                                           ; $54a1: $fe $9b
	adc [hl]                                         ; $54a3: $8e
	sbc a                                            ; $54a4: $9f
	cp a                                             ; $54a5: $bf
	cp a                                             ; $54a6: $bf
	inc bc                                           ; $54a7: $03
	jr nz, jr_072_54c1                               ; $54a8: $20 $17

jr_072_54aa:
	jr nz, jr_072_552b                               ; $54aa: $20 $7f

	ld [hl+], a                                      ; $54ac: $22
	sbc [hl]                                         ; $54ad: $9e
	add b                                            ; $54ae: $80
	rrca                                             ; $54af: $0f
	jr nz, jr_072_5529                               ; $54b0: $20 $77

	ld e, $df                                        ; $54b2: $1e $df
	rst $38                                          ; $54b4: $ff
	rst SubAFromDE                                          ; $54b5: $df
	ld e, a                                          ; $54b6: $5f
	inc bc                                           ; $54b7: $03
	jr nz, jr_072_54d5                               ; $54b8: $20 $1b

	jr nz, jr_072_5459                               ; $54ba: $20 $9d

	ld a, l                                          ; $54bc: $7d
	adc e                                            ; $54bd: $8b
	ld a, d                                          ; $54be: $7a
	ld b, b                                          ; $54bf: $40
	sbc [hl]                                         ; $54c0: $9e

jr_072_54c1:
	sub $03                                          ; $54c1: $d6 $03
	jr nz, @+$79                                     ; $54c3: $20 $77

	jr nz, jr_072_545b                               ; $54c5: $20 $94

	ret nz                                           ; $54c7: $c0

	rst SubAFromDE                                          ; $54c8: $df
	adc h                                            ; $54c9: $8c
	rst $38                                          ; $54ca: $ff
	add [hl]                                         ; $54cb: $86
	rst SubAFromBC                                          ; $54cc: $e7
	add e                                            ; $54cd: $83
	push bc                                          ; $54ce: $c5
	add e                                            ; $54cf: $83
	adc a                                            ; $54d0: $8f
	add c                                            ; $54d1: $81
	ld [hl], a                                       ; $54d2: $77
	jr nz, jr_072_554c                               ; $54d3: $20 $77

jr_072_54d5:
	cp $7f                                           ; $54d5: $fe $7f
	ld d, $9b                                        ; $54d7: $16 $9b
	cp c                                             ; $54d9: $b9
	or e                                             ; $54da: $b3
	sbc [hl]                                         ; $54db: $9e
	sbc [hl]                                         ; $54dc: $9e
	inc bc                                           ; $54dd: $03
	jr nz, jr_072_5537                               ; $54de: $20 $57

jr_072_54e0:
	jr nz, jr_072_5561                               ; $54e0: $20 $7f

	inc h                                            ; $54e2: $24
	ld [hl], e                                       ; $54e3: $73
	ld e, $73                                        ; $54e4: $1e $73
	jr nz, jr_072_5516                               ; $54e6: $20 $2e

	ld b, b                                          ; $54e8: $40
	sbc e                                            ; $54e9: $9b
	dec c                                            ; $54ea: $0d
	ld a, a                                          ; $54eb: $7f
	inc a                                            ; $54ec: $3c
	rst SubAFromDE                                          ; $54ed: $df
	ld h, e                                          ; $54ee: $63
	ld e, $77                                        ; $54ef: $1e $77
	cp $7f                                           ; $54f1: $fe $7f
	ld [hl-], a                                      ; $54f3: $32
	sbc e                                            ; $54f4: $9b
	ld [hl], l                                       ; $54f5: $75
	ld h, e                                          ; $54f6: $63
	rst $38                                          ; $54f7: $ff
	ccf                                              ; $54f8: $3f

jr_072_54f9:
	inc bc                                           ; $54f9: $03
	jr nz, jr_072_5553                               ; $54fa: $20 $57

	jr nz, @-$60                                     ; $54fc: $20 $9e

	rst $38                                          ; $54fe: $ff

jr_072_54ff:
	ld h, d                                          ; $54ff: $62
	ld b, b                                          ; $5500: $40
	ld a, a                                          ; $5501: $7f
	cp $9e                                           ; $5502: $fe $9e
	inc de                                           ; $5504: $13
	ld a, d                                          ; $5505: $7a
	ld b, b                                          ; $5506: $40
	sbc [hl]                                         ; $5507: $9e
	sub [hl]                                         ; $5508: $96
	daa                                              ; $5509: $27
	jr nz, @-$0d                                     ; $550a: $20 $f1

	rst SubAFromDE                                          ; $550c: $df
	ld [hl], b                                       ; $550d: $70
	sbc l                                            ; $550e: $9d
	jr jr_072_5519                                   ; $550f: $18 $08

	ldh [$c5], a                                     ; $5511: $e0 $c5
	rst SubAFromDE                                          ; $5513: $df
	ld [hl], b                                       ; $5514: $70
	sbc l                                            ; $5515: $9d

jr_072_5516:
	ld a, b                                          ; $5516: $78
	jr c, jr_072_54f9                                ; $5517: $38 $e0

jr_072_5519:
	call nc, $c047                                   ; $5519: $d4 $47 $c0
	sbc l                                            ; $551c: $9d
	ld h, b                                          ; $551d: $60
	ld a, b                                          ; $551e: $78
	ld a, e                                          ; $551f: $7b
	cp [hl]                                          ; $5520: $be
	sbc l                                            ; $5521: $9d
	jr c, @+$32                                      ; $5522: $38 $30

	ldh [$c9], a                                     ; $5524: $e0 $c9
	ld [hl], e                                       ; $5526: $73
	ret nz                                           ; $5527: $c0

	db $dd                                           ; $5528: $dd

jr_072_5529:
	ld a, b                                          ; $5529: $78
	inc bc                                           ; $552a: $03

jr_072_552b:
	cp [hl]                                          ; $552b: $be
	ei                                               ; $552c: $fb
	call z, $ef02                                    ; $552d: $cc $02 $ef
	rst SubAFromDE                                          ; $5530: $df
	add b                                            ; $5531: $80
	rst SubAFromDE                                          ; $5532: $df
	ret nz                                           ; $5533: $c0

	rst SubAFromDE                                          ; $5534: $df
	ld [hl], b                                       ; $5535: $70
	add b                                            ; $5536: $80

jr_072_5537:
	ld e, [hl]                                       ; $5537: $5e
	ld l, [hl]                                       ; $5538: $6e
	cpl                                              ; $5539: $2f
	ld sp, $1c1b                                     ; $553a: $31 $1b $1c
	inc c                                            ; $553d: $0c
	rrca                                             ; $553e: $0f
	inc bc                                           ; $553f: $03
	inc bc                                           ; $5540: $03
	rlca                                             ; $5541: $07
	ld b, $0f                                        ; $5542: $06 $0f
	inc c                                            ; $5544: $0c
	ld e, $19                                        ; $5545: $1e $19
	dec e                                            ; $5547: $1d
	inc de                                           ; $5548: $13
	dec hl                                           ; $5549: $2b
	scf                                              ; $554a: $37
	ld d, [hl]                                       ; $554b: $56

jr_072_554c:
	ld l, a                                          ; $554c: $6f
	ld e, e                                          ; $554d: $5b
	ld a, d                                          ; $554e: $7a
	or l                                             ; $554f: $b5
	or $e7                                           ; $5550: $f6 $e7
	db $e4                                           ; $5552: $e4

jr_072_5553:
	jp z, $8dcd                                      ; $5553: $ca $cd $8d

jr_072_5556:
	sub d                                            ; $5556: $92
	adc e                                            ; $5557: $8b
	ld d, $1a                                        ; $5558: $16 $1a
	ld [de], a                                       ; $555a: $12
	ld e, $15                                        ; $555b: $1e $15
	dec e                                            ; $555d: $1d
	dec h                                            ; $555e: $25
	dec a                                            ; $555f: $3d
	add hl, hl                                       ; $5560: $29

jr_072_5561:
	add hl, sp                                       ; $5561: $39
	add hl, hl                                       ; $5562: $29
	add hl, sp                                       ; $5563: $39
	db $dd                                           ; $5564: $dd
	ld sp, $21dd                                     ; $5565: $31 $dd $21
	rst SubAFromDE                                          ; $5568: $df
	jr nz, jr_072_5556                               ; $5569: $20 $eb

	rst SubAFromDE                                          ; $556b: $df
	inc bc                                           ; $556c: $03
	adc a                                            ; $556d: $8f
	ld b, $07                                        ; $556e: $06 $07
	inc c                                            ; $5570: $0c
	rrca                                             ; $5571: $0f
	add hl, bc                                       ; $5572: $09
	ld c, $13                                        ; $5573: $0e $13
	inc e                                            ; $5575: $1c
	inc de                                           ; $5576: $13
	inc e                                            ; $5577: $1c
	rla                                              ; $5578: $17
	jr jr_072_55a2                                   ; $5579: $18 $27

	jr c, jr_072_55ac                                ; $557b: $38 $2f

	jr nc, jr_072_55de                               ; $557d: $30 $5f

	cp $e3                                           ; $557f: $fe $e3
	db $dd                                           ; $5581: $dd
	ld bc, $0291                                     ; $5582: $01 $91 $02
	inc bc                                           ; $5585: $03
	ld [bc], a                                       ; $5586: $02
	inc bc                                           ; $5587: $03
	dec b                                            ; $5588: $05
	rlca                                             ; $5589: $07
	ld b, $07                                        ; $558a: $06 $07
	dec b                                            ; $558c: $05
	ld b, $08                                        ; $558d: $06 $08
	rrca                                             ; $558f: $0f
	dec bc                                           ; $5590: $0b
	rrca                                             ; $5591: $0f
	ld [hl], a                                       ; $5592: $77
	cp b                                             ; $5593: $b8
	add b                                            ; $5594: $80
	ld [de], a                                       ; $5595: $12
	dec e                                            ; $5596: $1d
	ld de, $161f                                     ; $5597: $11 $1f $16
	rra                                              ; $559a: $1f
	ld hl, sp-$01                                    ; $559b: $f8 $ff
	or e                                             ; $559d: $b3
	ld a, h                                          ; $559e: $7c
	ret nc                                           ; $559f: $d0

	rst $38                                          ; $55a0: $ff
	ld e, a                                          ; $55a1: $5f

jr_072_55a2:
	cp a                                             ; $55a2: $bf
	sub e                                            ; $55a3: $93
	ld a, h                                          ; $55a4: $7c
	jr c, @+$01                                      ; $55a5: $38 $ff

	rst GetHLinHL                                          ; $55a7: $cf
	rst $38                                          ; $55a8: $ff
	cp c                                             ; $55a9: $b9
	sbc $54                                          ; $55aa: $de $54

jr_072_55ac:
	cp a                                             ; $55ac: $bf
	xor $37                                          ; $55ad: $ee $37
	or l                                             ; $55af: $b5
	ld l, a                                          ; $55b0: $6f
	sub $6f                                          ; $55b1: $d6 $6f
	ld h, l                                          ; $55b3: $65
	add b                                            ; $55b4: $80
	rst SubAFromDE                                          ; $55b5: $df
	xor d                                            ; $55b6: $aa
	db $dd                                           ; $55b7: $dd
	ld [$cc9d], a                                    ; $55b8: $ea $9d $cc
	cp e                                             ; $55bb: $bb
	push de                                          ; $55bc: $d5
	cp e                                             ; $55bd: $bb
	db $dd                                           ; $55be: $dd
	inc sp                                           ; $55bf: $33
	cp c                                             ; $55c0: $b9
	ld [hl], a                                       ; $55c1: $77
	cp e                                             ; $55c2: $bb
	halt                                             ; $55c3: $76
	cp e                                             ; $55c4: $bb
	halt                                             ; $55c5: $76
	ld e, d                                          ; $55c6: $5a
	rst SubAFromHL                                          ; $55c7: $d7
	ld d, e                                          ; $55c8: $53
	rst SubAFromDE                                          ; $55c9: $df
	ld c, e                                          ; $55ca: $4b
	rst GetHLinHL                                          ; $55cb: $cf
	ld c, d                                          ; $55cc: $4a
	adc $87                                          ; $55cd: $ce $87
	add a                                            ; $55cf: $87
	add [hl]                                         ; $55d0: $86
	add [hl]                                         ; $55d1: $86
	add d                                            ; $55d2: $82
	add d                                            ; $55d3: $82
	rst SubAFromDE                                          ; $55d4: $df
	ld [bc], a                                       ; $55d5: $02
	ld e, a                                          ; $55d6: $5f
	ld l, b                                          ; $55d7: $68
	sub b                                            ; $55d8: $90
	ld c, $0f                                        ; $55d9: $0e $0f
	ccf                                              ; $55db: $3f
	dec sp                                           ; $55dc: $3b
	rst JumpTable                                          ; $55dd: $c7

jr_072_55de:
	db $fd                                           ; $55de: $fd
	inc bc                                           ; $55df: $03
	cp $33                                           ; $55e0: $fe $33
	adc $f1                                          ; $55e2: $ce $f1
	rrca                                             ; $55e4: $0f
	ld sp, hl                                        ; $55e5: $f9
	rlca                                             ; $55e6: $07
	ld hl, sp+$7b                                    ; $55e7: $f8 $7b
	cp $9a                                           ; $55e9: $fe $9a
	db $fc                                           ; $55eb: $fc
	inc bc                                           ; $55ec: $03
	db $fc                                           ; $55ed: $fc
	inc bc                                           ; $55ee: $03
	cp $7b                                           ; $55ef: $fe $7b
	cp $7f                                           ; $55f1: $fe $7f
	db $eb                                           ; $55f3: $eb
	ld a, a                                          ; $55f4: $7f
	cp $7f                                           ; $55f5: $fe $7f
	or $7f                                           ; $55f7: $f6 $7f
	ldh a, [$37]                                     ; $55f9: $f0 $37
	ld [hl-], a                                      ; $55fb: $32
	ld a, a                                          ; $55fc: $7f
	jp z, $1980                                      ; $55fd: $ca $80 $19

	ld e, $37                                        ; $5600: $1e $37
	jr c, jr_072_5672                                ; $5602: $38 $6e

	ld [hl], c                                       ; $5604: $71
	reti                                             ; $5605: $d9


	and $a3                                          ; $5606: $e6 $a3
	call c, $f81d                                    ; $5608: $dc $1d $f8
	ld l, a                                          ; $560b: $6f
	ldh a, [$bc]                                     ; $560c: $f0 $bc
	jp $8f73                                         ; $560e: $c3 $73 $8f


	call $373e                                       ; $5611: $cd $3e $37
	ld hl, sp-$22                                    ; $5614: $f8 $de
	pop hl                                           ; $5616: $e1
	ld a, b                                          ; $5617: $78
	add a                                            ; $5618: $87
	db $e3                                           ; $5619: $e3
	rra                                              ; $561a: $1f
	sbc l                                            ; $561b: $9d
	ld a, a                                          ; $561c: $7f
	ld h, c                                          ; $561d: $61
	add b                                            ; $561e: $80
	rst $38                                          ; $561f: $ff
	adc [hl]                                         ; $5620: $8e
	di                                               ; $5621: $f3
	ld a, [hl-]                                      ; $5622: $3a
	rst JumpTable                                          ; $5623: $c7
	db $f4                                           ; $5624: $f4
	rrca                                             ; $5625: $0f
	call z, $393f                                    ; $5626: $cc $3f $39
	rst $38                                          ; $5629: $ff
	jp z, $d5ff                                      ; $562a: $ca $ff $d5

	ccf                                              ; $562d: $3f
	dec sp                                           ; $562e: $3b
	rst $38                                          ; $562f: $ff
	add c                                            ; $5630: $81
	rst $38                                          ; $5631: $ff
	rst $38                                          ; $5632: $ff
	ld a, a                                          ; $5633: $7f
	add hl, bc                                       ; $5634: $09
	rst $38                                          ; $5635: $ff
	inc e                                            ; $5636: $1c
	rst FarCall                                          ; $5637: $f7
	sbc [hl]                                         ; $5638: $9e
	di                                               ; $5639: $f3
	ld a, d                                          ; $563a: $7a
	rst FarCall                                          ; $563b: $f7
	ld a, [de]                                       ; $563c: $1a
	rst FarCall                                          ; $563d: $f7
	add l                                            ; $563e: $85
	adc [hl]                                         ; $563f: $8e
	ei                                               ; $5640: $fb
	adc $fb                                          ; $5641: $ce $fb
	or $ff                                           ; $5643: $f6 $ff
	ld c, d                                          ; $5645: $4a
	rst $38                                          ; $5646: $ff
	and $5f                                          ; $5647: $e6 $5f
	push af                                          ; $5649: $f5
	ld l, l                                          ; $564a: $6d
	and l                                            ; $564b: $a5
	cp l                                             ; $564c: $bd
	and l                                            ; $564d: $a5
	cp l                                             ; $564e: $bd
	xor b                                            ; $564f: $a8
	cp b                                             ; $5650: $b8
	ld c, b                                          ; $5651: $48

Jump_072_5652:
	ld a, b                                          ; $5652: $78
	ld d, b                                          ; $5653: $50
	ld [hl], b                                       ; $5654: $70
	and b                                            ; $5655: $a0
	ldh [$c0], a                                     ; $5656: $e0 $c0
	ret nz                                           ; $5658: $c0

	ld l, a                                          ; $5659: $6f
	inc c                                            ; $565a: $0c
	rst SubAFromDE                                          ; $565b: $df
	inc bc                                           ; $565c: $03
	ld a, a                                          ; $565d: $7f
	ld a, [de]                                       ; $565e: $1a
	add e                                            ; $565f: $83
	jr c, jr_072_56a1                                ; $5660: $38 $3f

	pop af                                           ; $5662: $f1
	sbc $fb                                          ; $5663: $de $fb
	ld c, h                                          ; $5665: $4c
	ei                                               ; $5666: $fb
	inc l                                            ; $5667: $2c
	daa                                              ; $5668: $27
	and h                                            ; $5669: $a4
	rla                                              ; $566a: $17
	call nc, $d293                                   ; $566b: $d4 $93 $d2

jr_072_566e:
	adc e                                            ; $566e: $8b
	db $eb                                           ; $566f: $eb
	ld c, l                                          ; $5670: $4d
	ld l, l                                          ; $5671: $6d

jr_072_5672:
	ld b, h                                          ; $5672: $44
	ld [hl], h                                       ; $5673: $74
	and d                                            ; $5674: $a2
	or d                                             ; $5675: $b2
	and c                                            ; $5676: $a1
	cp c                                             ; $5677: $b9
	and b                                            ; $5678: $a0
	cp c                                             ; $5679: $b9
	ret nc                                           ; $567a: $d0

	ld e, h                                          ; $567b: $5c
	ld a, e                                          ; $567c: $7b
	cp $9e                                           ; $567d: $fe $9e
	ld e, [hl]                                       ; $567f: $5e
	ld a, e                                          ; $5680: $7b
	cp $9a                                           ; $5681: $fe $9a
	ld d, a                                          ; $5683: $57
	ret nc                                           ; $5684: $d0

	rst SubAFromHL                                          ; $5685: $d7
	ret nc                                           ; $5686: $d0

	db $d3                                           ; $5687: $d3
	di                                               ; $5688: $f3
	rst SubAFromDE                                          ; $5689: $df
	rrca                                             ; $568a: $0f
	add b                                            ; $568b: $80
	ldh a, [rIE]                                     ; $568c: $f0 $ff
	sub b                                            ; $568e: $90
	ldh [$4c], a                                     ; $568f: $e0 $4c
	add e                                            ; $5691: $83
	inc hl                                           ; $5692: $23
	inc e                                            ; $5693: $1c
	sbc b                                            ; $5694: $98
	ld h, b                                          ; $5695: $60
	ld h, [hl]                                       ; $5696: $66
	add c                                            ; $5697: $81
	sub b                                            ; $5698: $90
	rrca                                             ; $5699: $0f
	ld h, a                                          ; $569a: $67
	rra                                              ; $569b: $1f
	ret                                              ; $569c: $c9


	ccf                                              ; $569d: $3f
	ld e, $f3                                        ; $569e: $1e $f3
	inc hl                                           ; $56a0: $23

jr_072_56a1:
	or $30                                           ; $56a1: $f6 $30
	and $ca                                          ; $56a3: $e6 $ca
	ld h, h                                          ; $56a5: $64
	ld h, c                                          ; $56a6: $61
	call z, $c994                                    ; $56a7: $cc $94 $c9
	jp nz, $999e                                     ; $56aa: $c2 $9e $99

	ldh [$c1], a                                     ; $56ad: $e0 $c1
	adc h                                            ; $56af: $8c
	call z, $86f3                                    ; $56b0: $cc $f3 $86
	ld sp, hl                                        ; $56b3: $f9
	daa                                              ; $56b4: $27
	ret c                                            ; $56b5: $d8

	ld h, a                                          ; $56b6: $67
	sbc b                                            ; $56b7: $98
	db $e3                                           ; $56b8: $e3
	inc e                                            ; $56b9: $1c
	di                                               ; $56ba: $f3
	inc c                                            ; $56bb: $0c
	di                                               ; $56bc: $f3
	inc c                                            ; $56bd: $0c
	pop af                                           ; $56be: $f1
	ld c, $06                                        ; $56bf: $0e $06
	nop                                              ; $56c1: $00
	rst $38                                          ; $56c2: $ff
	ld [hl], a                                       ; $56c3: $77
	cp $7e                                           ; $56c4: $fe $7e
	ld [hl], e                                       ; $56c6: $73
	adc b                                            ; $56c7: $88
	rlca                                             ; $56c8: $07
	pop hl                                           ; $56c9: $e1
	add b                                            ; $56ca: $80
	ld a, b                                          ; $56cb: $78
	ld b, b                                          ; $56cc: $40
	inc a                                            ; $56cd: $3c
	jr nz, jr_072_566e                               ; $56ce: $20 $9e

	sub b                                            ; $56d0: $90
	ld c, a                                          ; $56d1: $4f
	ret z                                            ; $56d2: $c8

	daa                                              ; $56d3: $27
	ld h, [hl]                                       ; $56d4: $66
	add hl, de                                       ; $56d5: $19
	ld a, c                                          ; $56d6: $79
	ld b, $3e                                        ; $56d7: $06 $3e
	ld bc, $001d                                     ; $56d9: $01 $1d $00
	ld e, $00                                        ; $56dc: $1e $00
	adc a                                            ; $56de: $8f
	di                                               ; $56df: $f3
	rst SubAFromDE                                          ; $56e0: $df
	ld hl, sp-$80                                    ; $56e1: $f8 $80
	rlca                                             ; $56e3: $07
	rst $38                                          ; $56e4: $ff
	ldh a, [c]                                       ; $56e5: $f2
	rrca                                             ; $56e6: $0f
	ld a, l                                          ; $56e7: $7d
	rst $38                                          ; $56e8: $ff
	dec bc                                           ; $56e9: $0b
	rlca                                             ; $56ea: $07
	cp $01                                           ; $56eb: $fe $01
	ld [hl], c                                       ; $56ed: $71
	cp $be                                           ; $56ee: $fe $be
	rst GetHLinHL                                          ; $56f0: $cf
	ld [hl], a                                       ; $56f1: $77
	sbc c                                            ; $56f2: $99
	sbc a                                            ; $56f3: $9f
	inc sp                                           ; $56f4: $33
	ld [hl], e                                       ; $56f5: $73
	ld h, $21                                        ; $56f6: $26 $21
	ld h, [hl]                                       ; $56f8: $66
	xor d                                            ; $56f9: $aa
	ld b, h                                          ; $56fa: $44
	ld [bc], a                                       ; $56fb: $02
	call z, $8854                                    ; $56fc: $cc $54 $88
	dec d                                            ; $56ff: $15
	adc b                                            ; $5700: $88
	and b                                            ; $5701: $a0
	sbc [hl]                                         ; $5702: $9e
	add hl, de                                       ; $5703: $19
	ldh [$c1], a                                     ; $5704: $e0 $c1
	sbc b                                            ; $5706: $98
	rst SubAFromBC                                          ; $5707: $e7
	rra                                              ; $5708: $1f
	rst FarCall                                          ; $5709: $f7
	inc bc                                           ; $570a: $03
	rst SubAFromBC                                          ; $570b: $e7
	inc bc                                           ; $570c: $03
	rlca                                             ; $570d: $07
	ld a, e                                          ; $570e: $7b
	cp $9e                                           ; $570f: $fe $9e
	inc bc                                           ; $5711: $03
	ld e, l                                          ; $5712: $5d
	ld l, $97                                        ; $5713: $2e $97
	nop                                              ; $5715: $00
	ret nz                                           ; $5716: $c0

	nop                                              ; $5717: $00
	pop af                                           ; $5718: $f1
	nop                                              ; $5719: $00
	ei                                               ; $571a: $fb
	pop bc                                           ; $571b: $c1
	ld a, h                                          ; $571c: $7c
	ld l, c                                          ; $571d: $69
	sub d                                            ; $571e: $92
	ld a, a                                          ; $571f: $7f
	ldh a, [c]                                       ; $5720: $f2
	sbc d                                            ; $5721: $9a
	rst $38                                          ; $5722: $ff
	add b                                            ; $5723: $80
	ld a, a                                          ; $5724: $7f
	ld a, a                                          ; $5725: $7f
	add b                                            ; $5726: $80
	ld a, e                                          ; $5727: $7b
	db $fc                                           ; $5728: $fc
	sbc l                                            ; $5729: $9d

jr_072_572a:
	nop                                              ; $572a: $00
	inc e                                            ; $572b: $1c
	pop af                                           ; $572c: $f1
	rst SubAFromDE                                          ; $572d: $df
	ldh [hLCDCIntHandlerIdx], a                                     ; $572e: $e0 $81
	jr jr_072_572a                                   ; $5730: $18 $f8

	ld a, $c6                                        ; $5732: $3e $c6
	cp a                                             ; $5734: $bf
	rst $38                                          ; $5735: $ff
	adc $f1                                          ; $5736: $ce $f1
	ld h, e                                          ; $5738: $63
	rst $38                                          ; $5739: $ff
	ld l, a                                          ; $573a: $6f
	db $fc                                           ; $573b: $fc
	sub l                                            ; $573c: $95
	ei                                               ; $573d: $fb
	dec hl                                           ; $573e: $2b
	sbc [hl]                                         ; $573f: $9e
	ld c, [hl]                                       ; $5740: $4e
	dec a                                            ; $5741: $3d
	dec sp                                           ; $5742: $3b
	ld [hl], a                                       ; $5743: $77
	cp [hl]                                          ; $5744: $be

jr_072_5745:
	ld h, h                                          ; $5745: $64
	push bc                                          ; $5746: $c5
	ld l, [hl]                                       ; $5747: $6e
	ld l, [hl]                                       ; $5748: $6e
	bit 3, e                                         ; $5749: $cb $5b
	ret                                              ; $574b: $c9


	adc e                                            ; $574c: $8b
	reti                                             ; $574d: $d9


	ldh [$b7], a                                     ; $574e: $e0 $b7
	rst SubAFromDE                                          ; $5750: $df
	ret nz                                           ; $5751: $c0

	adc h                                            ; $5752: $8c
	jr nc, jr_072_5745                               ; $5753: $30 $f0

	adc $3e                                          ; $5755: $ce $3e
	dec bc                                           ; $5757: $0b
	dec bc                                           ; $5758: $0b
	ld a, [bc]                                       ; $5759: $0a
	dec bc                                           ; $575a: $0b
	dec a                                            ; $575b: $3d
	dec b                                            ; $575c: $05
	db $fd                                           ; $575d: $fd
	dec e                                            ; $575e: $1d
	db $fd                                           ; $575f: $fd
	ld h, l                                          ; $5760: $65
	push bc                                          ; $5761: $c5
	add l                                            ; $5762: $85
	dec b                                            ; $5763: $05
	dec b                                            ; $5764: $05
	dec c                                            ; $5765: $0d
	ld a, e                                          ; $5766: $7b
	cp $91                                           ; $5767: $fe $91
	add hl, de                                       ; $5769: $19
	add hl, bc                                       ; $576a: $09
	ld [hl], d                                       ; $576b: $72
	inc de                                           ; $576c: $13
	db $e4                                           ; $576d: $e4
	ld h, a                                          ; $576e: $67
	adc b                                            ; $576f: $88
	adc e                                            ; $5770: $8b
	jr nc, jr_072_57a4                               ; $5771: $30 $31

	ret nz                                           ; $5773: $c0

	pop af                                           ; $5774: $f1
	nop                                              ; $5775: $00
	jr c, jr_072_5797                                ; $5776: $38 $1f

	jp nz, $e0df                                     ; $5778: $c2 $df $e0

	adc e                                            ; $577b: $8b
	ld a, b                                          ; $577c: $78
	sbc b                                            ; $577d: $98
	call c, $ecec                                    ; $577e: $dc $ec $ec
	inc [hl]                                         ; $5781: $34
	ld a, d                                          ; $5782: $7a
	sub [hl]                                         ; $5783: $96
	cp [hl]                                          ; $5784: $be
	jp z, Jump_072_6bdd                              ; $5785: $ca $dd $6b

	rst SubAFromDE                                          ; $5788: $df
	ld h, l                                          ; $5789: $65
	rst AddAOntoHL                                          ; $578a: $ef
	dec [hl]                                         ; $578b: $35
	ld l, l                                          ; $578c: $6d
	or [hl]                                          ; $578d: $b6
	ld h, a                                          ; $578e: $67
	cp d                                             ; $578f: $ba
	ldh [$c1], a                                     ; $5790: $e0 $c1
	rst SubAFromDE                                          ; $5792: $df
	inc b                                            ; $5793: $04
	di                                               ; $5794: $f3
	rst SubAFromDE                                          ; $5795: $df
	add b                                            ; $5796: $80

jr_072_5797:
	add c                                            ; $5797: $81
	ld [hl], b                                       ; $5798: $70
	ldh a, [$7c]                                     ; $5799: $f0 $7c
	call z, $c67e                                    ; $579b: $cc $7e $c6
	ld a, $e2                                        ; $579e: $3e $e2
	ccf                                              ; $57a0: $3f
	pop hl                                           ; $57a1: $e1
	cp a                                             ; $57a2: $bf
	ld h, c                                          ; $57a3: $61

jr_072_57a4:
	sbc a                                            ; $57a4: $9f
	ld [hl], b                                       ; $57a5: $70
	add hl, de                                       ; $57a6: $19
	ld [hl], b                                       ; $57a7: $70
	jr jr_072_57e2                                   ; $57a8: $18 $38

	inc c                                            ; $57aa: $0c
	jr c, @+$0e                                      ; $57ab: $38 $0c

	sbc h                                            ; $57ad: $9c
	ld b, $9c                                        ; $57ae: $06 $9c
	ld b, $ce                                        ; $57b0: $06 $ce
	inc bc                                           ; $57b2: $03
	adc $01                                          ; $57b3: $ce $01
	rst SubAFromBC                                          ; $57b5: $e7
	ld c, a                                          ; $57b6: $4f
	call nc, $80db                                   ; $57b7: $d4 $db $80
	sbc l                                            ; $57ba: $9d
	ret nz                                           ; $57bb: $c0

	ld b, b                                          ; $57bc: $40
	ld [hl], a                                       ; $57bd: $77
	cp $80                                           ; $57be: $fe $80
	ld h, b                                          ; $57c0: $60
	and b                                            ; $57c1: $a0
	ldh [$a0], a                                     ; $57c2: $e0 $a0
	or b                                             ; $57c4: $b0
	ret nc                                           ; $57c5: $d0

	ld l, b                                          ; $57c6: $68
	ld hl, sp-$24                                    ; $57c7: $f8 $dc
	call c, Call_072_60a0                            ; $57c9: $dc $a0 $60
	ld [hl], b                                       ; $57cc: $70
	sub b                                            ; $57cd: $90

jr_072_57ce:
	ret c                                            ; $57ce: $d8

	add sp, -$58                                     ; $57cf: $e8 $a8
	cp b                                             ; $57d1: $b8
	call nc, $cc5c                                   ; $57d2: $d4 $5c $cc
	ld c, h                                          ; $57d5: $4c
	and $a6                                          ; $57d6: $e6 $a6
	ld [hl], d                                       ; $57d8: $72

jr_072_57d9:
	jp nc, Jump_072_78c8                             ; $57d9: $d2 $c8 $78

	cp [hl]                                          ; $57dc: $be
	ld a, [hl]                                       ; $57dd: $7e
	ld h, b                                          ; $57de: $60
	sbc d                                            ; $57df: $9a
	and b                                            ; $57e0: $a0
	ld d, b                                          ; $57e1: $50

jr_072_57e2:
	or b                                             ; $57e2: $b0
	or b                                             ; $57e3: $b0
	ret nc                                           ; $57e4: $d0

	ld [hl], a                                       ; $57e5: $77
	cp $7d                                           ; $57e6: $fe $7d
	ld b, $7f                                        ; $57e8: $06 $7f
	cp $db                                           ; $57ea: $fe $db
	jr nz, jr_072_57ce                               ; $57ec: $20 $e0

	rst SubAFromDE                                          ; $57ee: $df
	reti                                             ; $57ef: $d9


	add b                                            ; $57f0: $80
	ld [hl], e                                       ; $57f1: $73
	sbc a                                            ; $57f2: $9f
	sbc d                                            ; $57f3: $9a
	ret nz                                           ; $57f4: $c0

	jr nz, @-$1e                                     ; $57f5: $20 $e0

	jr nz, jr_072_57d9                               ; $57f7: $20 $e0

	inc h                                            ; $57f9: $24
	nop                                              ; $57fa: $00
	sbc $88                                          ; $57fb: $de $88
	sbc e                                            ; $57fd: $9b
	call z, $8888                                    ; $57fe: $cc $88 $88
	nop                                              ; $5801: $00
	ld a, e                                          ; $5802: $7b
	ei                                               ; $5803: $fb
	ld a, e                                          ; $5804: $7b
	db $fc                                           ; $5805: $fc
	sbc e                                            ; $5806: $9b
	ld [hl+], a                                      ; $5807: $22
	add b                                            ; $5808: $80
	ld [$7399], sp                                   ; $5809: $08 $99 $73
	ei                                               ; $580c: $fb
	sbc h                                            ; $580d: $9c
	add b                                            ; $580e: $80
	ld [hl+], a                                      ; $580f: $22
	call z, $f677                                    ; $5810: $cc $77 $f6
	ld a, a                                          ; $5813: $7f
	xor $9c                                          ; $5814: $ee $9c
	sbc c                                            ; $5816: $99
	adc b                                            ; $5817: $88
	and d                                            ; $5818: $a2
	ld a, e                                          ; $5819: $7b
	push hl                                          ; $581a: $e5
	sbc [hl]                                         ; $581b: $9e
	call z, $01d1                                    ; $581c: $cc $d1 $01
	add b                                            ; $581f: $80
	ld c, b                                          ; $5820: $48
	or e                                             ; $5821: $b3
	db $e4                                           ; $5822: $e4
	inc sp                                           ; $5823: $33
	or e                                             ; $5824: $b3
	ld h, [hl]                                       ; $5825: $66
	cp e                                             ; $5826: $bb
	ld h, [hl]                                       ; $5827: $66
	ld d, l                                          ; $5828: $55
	xor $44                                          ; $5829: $ee $44
	rst $38                                          ; $582b: $ff
	ret                                              ; $582c: $c9


	rst $38                                          ; $582d: $ff
	sbc e                                            ; $582e: $9b
	rst $38                                          ; $582f: $ff
	or [hl]                                          ; $5830: $b6
	rst $38                                          ; $5831: $ff
	ld a, a                                          ; $5832: $7f
	ei                                               ; $5833: $fb
	rst $38                                          ; $5834: $ff
	add b                                            ; $5835: $80
	rst FarCall                                          ; $5836: $f7
	rrca                                             ; $5837: $0f
	xor $1e                                          ; $5838: $ee $1e
	db $fc                                           ; $583a: $fc
	inc a                                            ; $583b: $3c
	rst FarCall                                          ; $583c: $f7
	sub a                                            ; $583d: $97

jr_072_583e:
	rst SubAFromBC                                          ; $583e: $e7
	sub c                                            ; $583f: $91
	add a                                            ; $5840: $87
	push af                                          ; $5841: $f5
	add a                                            ; $5842: $87
	ld a, [$ff82]                                    ; $5843: $fa $82 $ff
	add e                                            ; $5846: $83
	push hl                                          ; $5847: $e5
	add b                                            ; $5848: $80
	ld a, [$f880]                                    ; $5849: $fa $80 $f8
	add b                                            ; $584c: $80
	db $fc                                           ; $584d: $fc
	ld a, e                                          ; $584e: $7b
	cp $80                                           ; $584f: $fe $80
	pop bc                                           ; $5851: $c1
	cp $61                                           ; $5852: $fe $61
	ld a, [hl]                                       ; $5854: $7e
	ld [hl], b                                       ; $5855: $70
	ld a, a                                          ; $5856: $7f
	ld e, b                                          ; $5857: $58
	ld a, a                                          ; $5858: $7f
	ld c, h                                          ; $5859: $4c
	ld a, a                                          ; $585a: $7f
	ld b, e                                          ; $585b: $43

Call_072_585c:
	ld a, a                                          ; $585c: $7f
	ld b, c                                          ; $585d: $41
	ld a, a                                          ; $585e: $7f
	ld c, b                                          ; $585f: $48
	ld [hl], a                                       ; $5860: $77
	ld a, [hl-]                                      ; $5861: $3a
	ld de, $3351                                     ; $5862: $11 $51 $33
	ld h, l                                          ; $5865: $65
	inc sp                                           ; $5866: $33
	cp e                                             ; $5867: $bb
	ld h, a                                          ; $5868: $67
	ld d, [hl]                                       ; $5869: $56
	rst AddAOntoHL                                          ; $586a: $ef
	adc $fb                                          ; $586b: $ce $fb
	sbc l                                            ; $586d: $9d
	rst FarCall                                          ; $586e: $f7
	ld a, e                                          ; $586f: $7b
	add e                                            ; $5870: $83
	xor $de                                          ; $5871: $ee $de
	call c, $00e0                                    ; $5873: $dc $e0 $00
	ldh a, [rP1]                                     ; $5876: $f0 $00
	ld hl, sp-$40                                    ; $5878: $f8 $c0
	db $fc                                           ; $587a: $fc
	ldh [$fc], a                                     ; $587b: $e0 $fc
	ldh [$58], a                                     ; $587d: $e0 $58
	ret nz                                           ; $587f: $c0

	ld d, b                                          ; $5880: $50
	ret nz                                           ; $5881: $c0

	ld b, b                                          ; $5882: $40
	ld b, b                                          ; $5883: $40
	add b                                            ; $5884: $80
	add b                                            ; $5885: $80
	pop bc                                           ; $5886: $c1
	add b                                            ; $5887: $80
	and e                                            ; $5888: $a3
	nop                                              ; $5889: $00
	db $d3                                           ; $588a: $d3
	nop                                              ; $588b: $00
	ld bc, $8af4                                     ; $588c: $01 $f4 $8a
	add b                                            ; $588f: $80
	nop                                              ; $5890: $00
	ret nz                                           ; $5891: $c0

	nop                                              ; $5892: $00
	ldh a, [$c0]                                     ; $5893: $f0 $c0
	cp h                                             ; $5895: $bc
	ld a, c                                          ; $5896: $79
	cp e                                             ; $5897: $bb
	sub b                                            ; $5898: $90
	ld de, $71b0                                     ; $5899: $11 $b0 $71
	jr nz, jr_072_583e                               ; $589c: $20 $a0

	ld h, b                                          ; $589e: $60
	ld b, b                                          ; $589f: $40
	ret nz                                           ; $58a0: $c0

	jp $8680                                         ; $58a1: $c3 $80 $86


	sbc $07                                          ; $58a4: $de $07
	add d                                            ; $58a6: $82
	ld c, $01                                        ; $58a7: $0e $01
	rra                                              ; $58a9: $1f
	nop                                              ; $58aa: $00
	rra                                              ; $58ab: $1f
	nop                                              ; $58ac: $00
	ccf                                              ; $58ad: $3f
	nop                                              ; $58ae: $00
	ccf                                              ; $58af: $3f
	rlca                                             ; $58b0: $07
	dec a                                            ; $58b1: $3d
	dec c                                            ; $58b2: $0d
	add hl, de                                       ; $58b3: $19
	add hl, bc                                       ; $58b4: $09
	ld c, $0f                                        ; $58b5: $0e $0f
	ld c, $0f                                        ; $58b7: $0e $0f
	adc d                                            ; $58b9: $8a
	ld c, $c5                                        ; $58ba: $0e $c5
	dec b                                            ; $58bc: $05
	rst SubAFromBC                                          ; $58bd: $e7
	ld b, a                                          ; $58be: $47
	ld h, $e0                                        ; $58bf: $26 $e0
	xor c                                            ; $58c1: $a9
	ld h, b                                          ; $58c2: $60
	ret nz                                           ; $58c3: $c0

	cp $80                                           ; $58c4: $fe $80
	rst $38                                          ; $58c6: $ff
	nop                                              ; $58c7: $00
	cp $01                                           ; $58c8: $fe $01
	rst $38                                          ; $58ca: $ff
	ld bc, $02fe                                     ; $58cb: $01 $fe $02
	db $f4                                           ; $58ce: $f4
	inc c                                            ; $58cf: $0c
	ld hl, sp+$18                                    ; $58d0: $f8 $18
	and b                                            ; $58d2: $a0
	ld h, b                                          ; $58d3: $60
	ret nz                                           ; $58d4: $c0

	ret nz                                           ; $58d5: $c0

	or a                                             ; $58d6: $b7
	jp c, $dbb6                                      ; $58d7: $da $b6 $db

	sub $7b                                          ; $58da: $d6 $7b
	bit 7, l                                         ; $58dc: $cb $7d
	db $eb                                           ; $58de: $eb
	dec a                                            ; $58df: $3d
	push hl                                          ; $58e0: $e5
	ccf                                              ; $58e1: $3f
	ld [hl], h                                       ; $58e2: $74
	sbc a                                            ; $58e3: $9f
	cp d                                             ; $58e4: $ba
	add b                                            ; $58e5: $80
	rst GetHLinHL                                          ; $58e6: $cf
	ei                                               ; $58e7: $fb
	rst GetHLinHL                                          ; $58e8: $cf
	cp [hl]                                          ; $58e9: $be
	ld h, a                                          ; $58ea: $67
	adc $06                                          ; $58eb: $ce $06
	adc l                                            ; $58ed: $8d
	rlca                                             ; $58ee: $07
	ld c, $8c                                        ; $58ef: $0e $8c
	adc $cc                                          ; $58f1: $ce $cc
	rst AddAOntoHL                                          ; $58f3: $ef
	ld [$89af], a                                    ; $58f4: $ea $af $89
	sub l                                            ; $58f7: $95
	sbc b                                            ; $58f8: $98
	sbc d                                            ; $58f9: $9a
	sbc h                                            ; $58fa: $9c
	dec a                                            ; $58fb: $3d
	ld d, $a6                                        ; $58fc: $16 $a6
	inc sp                                           ; $58fe: $33
	xor d                                            ; $58ff: $aa
	inc sp                                           ; $5900: $33
	ld a, e                                          ; $5901: $7b
	ld sp, $7955                                     ; $5902: $31 $55 $79
	sub l                                            ; $5905: $95
	db $dd                                           ; $5906: $dd
	ld a, c                                          ; $5907: $79
	ei                                               ; $5908: $fb
	db $dd                                           ; $5909: $dd
	rst FarCall                                          ; $590a: $f7
	push de                                          ; $590b: $d5
	ld [hl], a                                       ; $590c: $77
	ld d, l                                          ; $590d: $55
	ld d, a                                          ; $590e: $57
	ld [hl], l                                       ; $590f: $75
	db $dd                                           ; $5910: $dd
	ld h, $df                                        ; $5911: $26 $df
	inc h                                            ; $5913: $24
	rst SubAFromDE                                          ; $5914: $df
	inc b                                            ; $5915: $04
	cpl                                              ; $5916: $2f
	nop                                              ; $5917: $00
	ld a, a                                          ; $5918: $7f
	sbc d                                            ; $5919: $9a
	sub a                                            ; $591a: $97
	ei                                               ; $591b: $fb
	rlca                                             ; $591c: $07
	db $ec                                           ; $591d: $ec
	inc e                                            ; $591e: $1c
	rst $38                                          ; $591f: $ff
	cp a                                             ; $5920: $bf
	rst FarCall                                          ; $5921: $f7
	sub a                                            ; $5922: $97
	inc bc                                           ; $5923: $03
	nop                                              ; $5924: $00
	cpl                                              ; $5925: $2f
	nop                                              ; $5926: $00
	sbc b                                            ; $5927: $98
	nop                                              ; $5928: $00
	cp h                                             ; $5929: $bc
	ret nz                                           ; $592a: $c0

	call c, $f8e0                                    ; $592b: $dc $e0 $f8
	ldh [$03], a                                     ; $592e: $e0 $03
	nop                                              ; $5930: $00
	rra                                              ; $5931: $1f
	nop                                              ; $5932: $00
	sbc c                                            ; $5933: $99
	nop                                              ; $5934: $00
	dec sp                                           ; $5935: $3b
	rlca                                             ; $5936: $07
	dec d                                            ; $5937: $15
	dec c                                            ; $5938: $0d
	rrca                                             ; $5939: $0f
	inc bc                                           ; $593a: $03
	nop                                              ; $593b: $00
	daa                                              ; $593c: $27
	nop                                              ; $593d: $00
	sub a                                            ; $593e: $97
	adc [hl]                                         ; $593f: $8e
	inc c                                            ; $5940: $0c
	ld c, $8c                                        ; $5941: $0e $8c
	adc a                                            ; $5943: $8f
	jp z, $e9ef                                      ; $5944: $ca $ef $e9

	inc bc                                           ; $5947: $03
	nop                                              ; $5948: $00
	dec hl                                           ; $5949: $2b
	nop                                              ; $594a: $00
	ld [hl], e                                       ; $594b: $73
	cp $9a                                           ; $594c: $fe $9a
	adc a                                            ; $594e: $8f
	rst $38                                          ; $594f: $ff
	cp a                                             ; $5950: $bf
	push af                                          ; $5951: $f5
	sub a                                            ; $5952: $97
	inc bc                                           ; $5953: $03
	nop                                              ; $5954: $00
	inc sp                                           ; $5955: $33
	nop                                              ; $5956: $00
	sbc [hl]                                         ; $5957: $9e

jr_072_5958:
	db $fc                                           ; $5958: $fc
	ld a, e                                          ; $5959: $7b
	cp $7d                                           ; $595a: $fe $7d
	ld a, [$709d]                                    ; $595c: $fa $9d $70
	ldh [$03], a                                     ; $595f: $e0 $03
	nop                                              ; $5961: $00
	inc hl                                           ; $5962: $23
	nop                                              ; $5963: $00
	ld a, a                                          ; $5964: $7f
	cp $7b                                           ; $5965: $fe $7b
	or $7f                                           ; $5967: $f6 $7f
	ldh a, [$03]                                     ; $5969: $f0 $03
	nop                                              ; $596b: $00
	daa                                              ; $596c: $27
	nop                                              ; $596d: $00
	ld a, a                                          ; $596e: $7f
	cp $99                                           ; $596f: $fe $99
	rrca                                             ; $5971: $0f
	ld a, [bc]                                       ; $5972: $0a
	rst GetHLinHL                                          ; $5973: $cf
	adc c                                            ; $5974: $89
	push de                                          ; $5975: $d5
	ret c                                            ; $5976: $d8

	inc bc                                           ; $5977: $03
	nop                                              ; $5978: $00
	rra                                              ; $5979: $1f
	nop                                              ; $597a: $00
	ld a, a                                          ; $597b: $7f
	ld hl, sp+$7b                                    ; $597c: $f8 $7b
	cp $9b                                           ; $597e: $fe $9b
	ld a, [$ff9c]                                    ; $5980: $fa $9c $ff
	adc a                                            ; $5983: $8f
	inc bc                                           ; $5984: $03
	nop                                              ; $5985: $00
	cpl                                              ; $5986: $2f
	nop                                              ; $5987: $00
	ld a, e                                          ; $5988: $7b
	or $7f                                           ; $5989: $f6 $7f
	ldh a, [c]                                       ; $598b: $f2
	ld a, a                                          ; $598c: $7f
	ld e, d                                          ; $598d: $5a
	sbc l                                            ; $598e: $9d
	pop bc                                           ; $598f: $c1
	ret nz                                           ; $5990: $c0

	inc bc                                           ; $5991: $03
	nop                                              ; $5992: $00
	ld [hl], e                                       ; $5993: $73
	nop                                              ; $5994: $00
	sbc b                                            ; $5995: $98
	add a                                            ; $5996: $87
	nop                                              ; $5997: $00
	ld b, $07                                        ; $5998: $06 $07
	rrca                                             ; $599a: $0f
	rlca                                             ; $599b: $07
	ld e, $7a                                        ; $599c: $1e $7a
	cp $63                                           ; $599e: $fe $63
	nop                                              ; $59a0: $00
	sbc b                                            ; $59a1: $98
	nop                                              ; $59a2: $00
	rrca                                             ; $59a3: $0f
	nop                                              ; $59a4: $00
	adc a                                            ; $59a5: $8f
	nop                                              ; $59a6: $00
	jp z, $030c                                      ; $59a7: $ca $0c $03

	nop                                              ; $59aa: $00
	ld l, e                                          ; $59ab: $6b
	nop                                              ; $59ac: $00
	sub a                                            ; $59ad: $97
	ld a, [hl-]                                      ; $59ae: $3a
	rst GetHLinHL                                          ; $59af: $cf
	cp e                                             ; $59b0: $bb
	rst GetHLinHL                                          ; $59b1: $cf
	sbc $e7                                          ; $59b2: $de $e7
	xor [hl]                                         ; $59b4: $ae
	ld h, [hl]                                       ; $59b5: $66
	ld h, a                                          ; $59b6: $67
	nop                                              ; $59b7: $00
	sub l                                            ; $59b8: $95
	rrca                                             ; $59b9: $0f
	add hl, bc                                       ; $59ba: $09
	dec d                                            ; $59bb: $15
	jr jr_072_5958                                   ; $59bc: $18 $9a

	inc e                                            ; $59be: $1c
	ld a, l                                          ; $59bf: $7d
	sub $a6                                          ; $59c0: $d6 $a6
	or e                                             ; $59c2: $b3
	daa                                              ; $59c3: $27
	nop                                              ; $59c4: $00
	di                                               ; $59c5: $f3
	sbc b                                            ; $59c6: $98
	ld b, $04                                        ; $59c7: $06 $04
	inc bc                                           ; $59c9: $03
	ld [bc], a                                       ; $59ca: $02
	nop                                              ; $59cb: $00
	nop                                              ; $59cc: $00
	inc bc                                           ; $59cd: $03
	and $df                                          ; $59ce: $e6 $df
	add b                                            ; $59d0: $80
	push hl                                          ; $59d1: $e5
	sbc l                                            ; $59d2: $9d
	ld [bc], a                                       ; $59d3: $02
	inc b                                            ; $59d4: $04
	sbc $07                                          ; $59d5: $de $07
	rst SubAFromDE                                          ; $59d7: $df
	inc bc                                           ; $59d8: $03
	inc bc                                           ; $59d9: $03
	ret nz                                           ; $59da: $c0

	jp hl                                            ; $59db: $e9


	ld a, a                                          ; $59dc: $7f
	ld [hl], c                                       ; $59dd: $71
	call c, $1b07                                    ; $59de: $dc $07 $1b
	cp [hl]                                          ; $59e1: $be
	db $dd                                           ; $59e2: $dd
	add b                                            ; $59e3: $80
	push hl                                          ; $59e4: $e5
	ld a, d                                          ; $59e5: $7a
	cp a                                             ; $59e6: $bf
	rst SubAFromDE                                          ; $59e7: $df
	rrca                                             ; $59e8: $0f
	dec de                                           ; $59e9: $1b
	cp [hl]                                          ; $59ea: $be
	db $db                                           ; $59eb: $db
	add b                                            ; $59ec: $80
	rst FarCall                                          ; $59ed: $f7
	ret c                                            ; $59ee: $d8

	ld bc, $4880                                     ; $59ef: $01 $80 $48
	or e                                             ; $59f2: $b3
	db $e4                                           ; $59f3: $e4
	inc sp                                           ; $59f4: $33
	or e                                             ; $59f5: $b3
	ld h, [hl]                                       ; $59f6: $66
	cp e                                             ; $59f7: $bb
	ld h, [hl]                                       ; $59f8: $66
	ld d, l                                          ; $59f9: $55
	xor $44                                          ; $59fa: $ee $44
	rst $38                                          ; $59fc: $ff
	ret                                              ; $59fd: $c9


	rst $38                                          ; $59fe: $ff
	sbc e                                            ; $59ff: $9b
	rst $38                                          ; $5a00: $ff
	or [hl]                                          ; $5a01: $b6
	rst $38                                          ; $5a02: $ff
	ld a, a                                          ; $5a03: $7f
	ei                                               ; $5a04: $fb
	rst $38                                          ; $5a05: $ff
	add b                                            ; $5a06: $80
	rst FarCall                                          ; $5a07: $f7
	rrca                                             ; $5a08: $0f
	db $ec                                           ; $5a09: $ec
	inc e                                            ; $5a0a: $1c
	db $fc                                           ; $5a0b: $fc
	inc a                                            ; $5a0c: $3c
	rst FarCall                                          ; $5a0d: $f7
	sub a                                            ; $5a0e: $97

jr_072_5a0f:
	rst SubAFromBC                                          ; $5a0f: $e7
	sub c                                            ; $5a10: $91
	add a                                            ; $5a11: $87
	push af                                          ; $5a12: $f5
	add a                                            ; $5a13: $87
	ld a, [$ff82]                                    ; $5a14: $fa $82 $ff
	add e                                            ; $5a17: $83
	ldh [$80], a                                     ; $5a18: $e0 $80
	ldh a, [$80]                                     ; $5a1a: $f0 $80
	ld hl, sp-$80                                    ; $5a1c: $f8 $80
	db $fc                                           ; $5a1e: $fc
	ld a, e                                          ; $5a1f: $7b
	cp $80                                           ; $5a20: $fe $80
	pop bc                                           ; $5a22: $c1
	cp $61                                           ; $5a23: $fe $61
	ld a, [hl]                                       ; $5a25: $7e
	ld [hl], b                                       ; $5a26: $70
	ld a, a                                          ; $5a27: $7f
	ld e, b                                          ; $5a28: $58
	ld a, a                                          ; $5a29: $7f
	ld c, h                                          ; $5a2a: $4c
	ld a, a                                          ; $5a2b: $7f
	ld b, e                                          ; $5a2c: $43
	ld a, a                                          ; $5a2d: $7f
	ld b, c                                          ; $5a2e: $41
	ld a, a                                          ; $5a2f: $7f
	ld c, b                                          ; $5a30: $48
	ld [hl], a                                       ; $5a31: $77
	ld a, [hl-]                                      ; $5a32: $3a
	ld de, $3351                                     ; $5a33: $11 $51 $33
	ld h, l                                          ; $5a36: $65
	inc sp                                           ; $5a37: $33
	cp e                                             ; $5a38: $bb
	ld h, a                                          ; $5a39: $67
	ld d, [hl]                                       ; $5a3a: $56
	rst AddAOntoHL                                          ; $5a3b: $ef
	adc $fb                                          ; $5a3c: $ce $fb
	sbc l                                            ; $5a3e: $9d
	rst FarCall                                          ; $5a3f: $f7
	ld a, e                                          ; $5a40: $7b
	add e                                            ; $5a41: $83
	xor $de                                          ; $5a42: $ee $de
	call c, $00e0                                    ; $5a44: $dc $e0 $00
	ldh a, [rP1]                                     ; $5a47: $f0 $00
	ld hl, sp-$40                                    ; $5a49: $f8 $c0
	db $fc                                           ; $5a4b: $fc
	ldh [$fc], a                                     ; $5a4c: $e0 $fc
	ldh [$58], a                                     ; $5a4e: $e0 $58
	ret nz                                           ; $5a50: $c0

	ld d, b                                          ; $5a51: $50
	ret nz                                           ; $5a52: $c0

	ld b, b                                          ; $5a53: $40
	ld b, b                                          ; $5a54: $40
	add b                                            ; $5a55: $80
	add b                                            ; $5a56: $80
	pop bc                                           ; $5a57: $c1
	add b                                            ; $5a58: $80
	inc bc                                           ; $5a59: $03
	nop                                              ; $5a5a: $00
	inc bc                                           ; $5a5b: $03
	nop                                              ; $5a5c: $00
	ld bc, $84f4                                     ; $5a5d: $01 $f4 $84
	add b                                            ; $5a60: $80
	nop                                              ; $5a61: $00
	ret nz                                           ; $5a62: $c0

	nop                                              ; $5a63: $00
	ldh a, [$c0]                                     ; $5a64: $f0 $c0
	cp h                                             ; $5a66: $bc
	ld a, c                                          ; $5a67: $79
	cp e                                             ; $5a68: $bb
	sub b                                            ; $5a69: $90
	ld de, $71b0                                     ; $5a6a: $11 $b0 $71
	jr nz, jr_072_5a0f                               ; $5a6d: $20 $a0

	ld h, b                                          ; $5a6f: $60
	ld b, b                                          ; $5a70: $40
	ret nz                                           ; $5a71: $c0

jr_072_5a72:
	jp $8583                                         ; $5a72: $c3 $83 $85


	inc bc                                           ; $5a75: $03
	rlca                                             ; $5a76: $07
	nop                                              ; $5a77: $00
	rrca                                             ; $5a78: $0f
	nop                                              ; $5a79: $00
	rra                                              ; $5a7a: $1f
	ld a, e                                          ; $5a7b: $7b
	cp $88                                           ; $5a7c: $fe $88
	ccf                                              ; $5a7e: $3f
	nop                                              ; $5a7f: $00
	ccf                                              ; $5a80: $3f
	rlca                                             ; $5a81: $07
	add hl, sp                                       ; $5a82: $39
	add hl, bc                                       ; $5a83: $09
	add hl, de                                       ; $5a84: $19
	add hl, bc                                       ; $5a85: $09
	ld c, $0f                                        ; $5a86: $0e $0f
	ld c, $0f                                        ; $5a88: $0e $0f
	adc d                                            ; $5a8a: $8a
	ld c, $c5                                        ; $5a8b: $0e $c5
	dec b                                            ; $5a8d: $05
	rst SubAFromBC                                          ; $5a8e: $e7
	ld b, a                                          ; $5a8f: $47
	jr nz, jr_072_5a72                               ; $5a90: $20 $e0

	and b                                            ; $5a92: $a0
	ld h, b                                          ; $5a93: $60
	ret nz                                           ; $5a94: $c0

	cp $93                                           ; $5a95: $fe $93
	rst $38                                          ; $5a97: $ff
	nop                                              ; $5a98: $00
	cp $01                                           ; $5a99: $fe $01
	rst $38                                          ; $5a9b: $ff
	ld bc, $02fe                                     ; $5a9c: $01 $fe $02
	db $f4                                           ; $5a9f: $f4
	inc c                                            ; $5aa0: $0c
	ld hl, sp+$18                                    ; $5aa1: $f8 $18
	ld a, e                                          ; $5aa3: $7b
	xor $80                                          ; $5aa4: $ee $80
	ret nz                                           ; $5aa6: $c0

	or a                                             ; $5aa7: $b7
	jp c, $dbb6                                      ; $5aa8: $da $b6 $db

	sub $7b                                          ; $5aab: $d6 $7b
	bit 7, l                                         ; $5aad: $cb $7d
	db $eb                                           ; $5aaf: $eb
	dec a                                            ; $5ab0: $3d
	push hl                                          ; $5ab1: $e5
	cp a                                             ; $5ab2: $bf
	db $f4                                           ; $5ab3: $f4
	rst SubAFromDE                                          ; $5ab4: $df
	ld a, d                                          ; $5ab5: $7a
	rst AddAOntoHL                                          ; $5ab6: $ef
	ei                                               ; $5ab7: $fb
	cpl                                              ; $5ab8: $2f
	cp $07                                           ; $5ab9: $fe $07
	adc $06                                          ; $5abb: $ce $06
	adc l                                            ; $5abd: $8d
	rlca                                             ; $5abe: $07
	ld c, $8c                                        ; $5abf: $0e $8c
	adc $cc                                          ; $5ac1: $ce $cc
	rst AddAOntoHL                                          ; $5ac3: $ef
	ld [$af85], a                                    ; $5ac4: $ea $85 $af
	adc c                                            ; $5ac7: $89
	sub l                                            ; $5ac8: $95
	sbc b                                            ; $5ac9: $98
	sbc d                                            ; $5aca: $9a
	sbc h                                            ; $5acb: $9c
	dec a                                            ; $5acc: $3d
	ld d, $a6                                        ; $5acd: $16 $a6
	inc sp                                           ; $5acf: $33
	ld a, [hl+]                                      ; $5ad0: $2a
	inc sp                                           ; $5ad1: $33
	ld a, e                                          ; $5ad2: $7b
	ld sp, $7955                                     ; $5ad3: $31 $55 $79
	db $dd                                           ; $5ad6: $dd
	ld a, c                                          ; $5ad7: $79
	ei                                               ; $5ad8: $fb
	db $dd                                           ; $5ad9: $dd
	rst FarCall                                          ; $5ada: $f7
	push de                                          ; $5adb: $d5
	ld [hl], a                                       ; $5adc: $77
	ld d, l                                          ; $5add: $55
	ld d, a                                          ; $5ade: $57
	ld [hl], l                                       ; $5adf: $75
	db $dd                                           ; $5ae0: $dd
	ld h, $df                                        ; $5ae1: $26 $df
	inc h                                            ; $5ae3: $24
	rst SubAFromDE                                          ; $5ae4: $df
	inc b                                            ; $5ae5: $04
	cpl                                              ; $5ae6: $2f
	nop                                              ; $5ae7: $00
	ld a, a                                          ; $5ae8: $7f
	sbc d                                            ; $5ae9: $9a
	sub a                                            ; $5aea: $97
	ei                                               ; $5aeb: $fb
	rlca                                             ; $5aec: $07
	db $ec                                           ; $5aed: $ec
	inc e                                            ; $5aee: $1c
	rst $38                                          ; $5aef: $ff
	cp a                                             ; $5af0: $bf
	rst FarCall                                          ; $5af1: $f7
	sub a                                            ; $5af2: $97
	inc bc                                           ; $5af3: $03
	nop                                              ; $5af4: $00
	cpl                                              ; $5af5: $2f
	nop                                              ; $5af6: $00
	sbc b                                            ; $5af7: $98
	nop                                              ; $5af8: $00
	cp h                                             ; $5af9: $bc
	ret nz                                           ; $5afa: $c0

	call c, $f8e0                                    ; $5afb: $dc $e0 $f8
	ldh [$03], a                                     ; $5afe: $e0 $03
	nop                                              ; $5b00: $00
	rra                                              ; $5b01: $1f
	nop                                              ; $5b02: $00
	sbc c                                            ; $5b03: $99
	nop                                              ; $5b04: $00
	dec sp                                           ; $5b05: $3b
	rlca                                             ; $5b06: $07
	dec d                                            ; $5b07: $15
	dec c                                            ; $5b08: $0d
	rrca                                             ; $5b09: $0f
	inc bc                                           ; $5b0a: $03
	nop                                              ; $5b0b: $00
	daa                                              ; $5b0c: $27
	nop                                              ; $5b0d: $00
	sub a                                            ; $5b0e: $97
	adc [hl]                                         ; $5b0f: $8e
	inc c                                            ; $5b10: $0c
	ld c, $8c                                        ; $5b11: $0e $8c
	adc a                                            ; $5b13: $8f
	jp z, $e9ef                                      ; $5b14: $ca $ef $e9

	inc bc                                           ; $5b17: $03
	nop                                              ; $5b18: $00
	dec hl                                           ; $5b19: $2b
	nop                                              ; $5b1a: $00
	ld [hl], e                                       ; $5b1b: $73
	cp $9a                                           ; $5b1c: $fe $9a
	adc a                                            ; $5b1e: $8f
	rst $38                                          ; $5b1f: $ff
	cp a                                             ; $5b20: $bf
	push af                                          ; $5b21: $f5
	sub a                                            ; $5b22: $97
	inc bc                                           ; $5b23: $03

jr_072_5b24:
	nop                                              ; $5b24: $00
	inc sp                                           ; $5b25: $33
	nop                                              ; $5b26: $00
	sbc [hl]                                         ; $5b27: $9e
	db $fc                                           ; $5b28: $fc
	ld a, e                                          ; $5b29: $7b
	cp $7d                                           ; $5b2a: $fe $7d
	ld a, [$709d]                                    ; $5b2c: $fa $9d $70
	ldh [$03], a                                     ; $5b2f: $e0 $03
	nop                                              ; $5b31: $00
	inc hl                                           ; $5b32: $23
	nop                                              ; $5b33: $00
	ld a, a                                          ; $5b34: $7f
	cp $7b                                           ; $5b35: $fe $7b
	or $7e                                           ; $5b37: $f6 $7e
	jr c, jr_072_5b3e                                ; $5b39: $38 $03

	nop                                              ; $5b3b: $00
	daa                                              ; $5b3c: $27
	nop                                              ; $5b3d: $00

jr_072_5b3e:
	ld a, a                                          ; $5b3e: $7f
	cp $99                                           ; $5b3f: $fe $99
	rrca                                             ; $5b41: $0f
	ld a, [bc]                                       ; $5b42: $0a
	rst GetHLinHL                                          ; $5b43: $cf
	adc c                                            ; $5b44: $89
	push de                                          ; $5b45: $d5
	ret c                                            ; $5b46: $d8

	inc bc                                           ; $5b47: $03
	nop                                              ; $5b48: $00
	rra                                              ; $5b49: $1f
	nop                                              ; $5b4a: $00
	ld a, a                                          ; $5b4b: $7f
	ld hl, sp+$7b                                    ; $5b4c: $f8 $7b
	cp $9b                                           ; $5b4e: $fe $9b
	ld a, [$ff9c]                                    ; $5b50: $fa $9c $ff
	adc a                                            ; $5b53: $8f
	inc bc                                           ; $5b54: $03
	nop                                              ; $5b55: $00
	cpl                                              ; $5b56: $2f
	nop                                              ; $5b57: $00
	ld a, e                                          ; $5b58: $7b
	or $7f                                           ; $5b59: $f6 $7f
	ldh a, [c]                                       ; $5b5b: $f2
	ld a, a                                          ; $5b5c: $7f
	ld e, d                                          ; $5b5d: $5a
	sbc l                                            ; $5b5e: $9d
	pop bc                                           ; $5b5f: $c1
	ret nz                                           ; $5b60: $c0

	inc bc                                           ; $5b61: $03
	nop                                              ; $5b62: $00
	ld [hl], a                                       ; $5b63: $77
	nop                                              ; $5b64: $00
	sbc d                                            ; $5b65: $9a
	add b                                            ; $5b66: $80
	add a                                            ; $5b67: $87
	rlca                                             ; $5b68: $07
	inc bc                                           ; $5b69: $03
	rlca                                             ; $5b6a: $07
	ld c, e                                          ; $5b6b: $4b
	nop                                              ; $5b6c: $00
	ld a, d                                          ; $5b6d: $7a
	ldh a, [$9b]                                     ; $5b6e: $f0 $9b
	adc a                                            ; $5b70: $8f
	nop                                              ; $5b71: $00
	jp z, $030c                                      ; $5b72: $ca $0c $03

	nop                                              ; $5b75: $00
	ld [hl], a                                       ; $5b76: $77
	nop                                              ; $5b77: $00
	sub [hl]                                         ; $5b78: $96
	ccf                                              ; $5b79: $3f
	ld [hl], h                                       ; $5b7a: $74
	sbc a                                            ; $5b7b: $9f
	ld a, [$7bcf]                                    ; $5b7c: $fa $cf $7b
	rst AddAOntoHL                                          ; $5b7f: $ef
	cp $27                                           ; $5b80: $fe $27
	ld e, a                                          ; $5b82: $5f
	nop                                              ; $5b83: $00
	sub l                                            ; $5b84: $95
	rrca                                             ; $5b85: $0f
	add hl, bc                                       ; $5b86: $09
	dec d                                            ; $5b87: $15
	jr jr_072_5b24                                   ; $5b88: $18 $9a

	inc e                                            ; $5b8a: $1c
	ld a, l                                          ; $5b8b: $7d
	sub $a6                                          ; $5b8c: $d6 $a6
	or e                                             ; $5b8e: $b3
	daa                                              ; $5b8f: $27
	nop                                              ; $5b90: $00
	di                                               ; $5b91: $f3
	sbc b                                            ; $5b92: $98
	ld b, $04                                        ; $5b93: $06 $04
	rlca                                             ; $5b95: $07
	ld b, $07                                        ; $5b96: $06 $07
	inc bc                                           ; $5b98: $03
	inc bc                                           ; $5b99: $03
	and $df                                          ; $5b9a: $e6 $df
	ret nz                                           ; $5b9c: $c0

	rst SubAFromDE                                          ; $5b9d: $df
	add b                                            ; $5b9e: $80
	rst SubAFromBC                                          ; $5b9f: $e7
	sbc l                                            ; $5ba0: $9d
	dec b                                            ; $5ba1: $05
	ld b, $dd                                        ; $5ba2: $06 $dd
	rlca                                             ; $5ba4: $07
	rla                                              ; $5ba5: $17
	cp a                                             ; $5ba6: $bf
	rrca                                             ; $5ba7: $0f
	ret nz                                           ; $5ba8: $c0

	sub l                                            ; $5ba9: $95
	dec c                                            ; $5baa: $0d
	ld b, $07                                        ; $5bab: $06 $07
	rrca                                             ; $5bad: $0f
	rlca                                             ; $5bae: $07
	rrca                                             ; $5baf: $0f
	rrca                                             ; $5bb0: $0f
	rlca                                             ; $5bb1: $07
	inc bc                                           ; $5bb2: $03
	ld b, $03                                        ; $5bb3: $06 $03
	ret nz                                           ; $5bb5: $c0

	db $ec                                           ; $5bb6: $ec
	sbc l                                            ; $5bb7: $9d
	ld a, [bc]                                       ; $5bb8: $0a
	inc c                                            ; $5bb9: $0c
	db $dd                                           ; $5bba: $dd
	rrca                                             ; $5bbb: $0f
	ld [hl], a                                       ; $5bbc: $77
	cp [hl]                                          ; $5bbd: $be
	sbc [hl]                                         ; $5bbe: $9e
	ld b, $2b                                        ; $5bbf: $06 $2b
	ld a, h                                          ; $5bc1: $7c
	ld [hl], a                                       ; $5bc2: $77
	ret nz                                           ; $5bc3: $c0

	ld d, a                                          ; $5bc4: $57
	cp [hl]                                          ; $5bc5: $be
	cp h                                             ; $5bc6: $bc
	ld bc, $4880                                     ; $5bc7: $01 $80 $48
	or e                                             ; $5bca: $b3
	db $e4                                           ; $5bcb: $e4
	inc sp                                           ; $5bcc: $33
	or e                                             ; $5bcd: $b3
	ld h, [hl]                                       ; $5bce: $66
	cp e                                             ; $5bcf: $bb
	ld h, [hl]                                       ; $5bd0: $66
	ld d, l                                          ; $5bd1: $55
	xor $44                                          ; $5bd2: $ee $44
	rst $38                                          ; $5bd4: $ff
	ret                                              ; $5bd5: $c9


	rst $38                                          ; $5bd6: $ff
	sbc e                                            ; $5bd7: $9b
	rst $38                                          ; $5bd8: $ff
	or [hl]                                          ; $5bd9: $b6
	rst $38                                          ; $5bda: $ff
	ld a, a                                          ; $5bdb: $7f
	ei                                               ; $5bdc: $fb
	rst $38                                          ; $5bdd: $ff
	add b                                            ; $5bde: $80
	rst FarCall                                          ; $5bdf: $f7
	rrca                                             ; $5be0: $0f
	xor $1e                                          ; $5be1: $ee $1e
	db $fc                                           ; $5be3: $fc
	inc a                                            ; $5be4: $3c
	rst FarCall                                          ; $5be5: $f7
	sub a                                            ; $5be6: $97

jr_072_5be7:
	rst SubAFromBC                                          ; $5be7: $e7
	sub c                                            ; $5be8: $91
	add a                                            ; $5be9: $87
	push af                                          ; $5bea: $f5
	add a                                            ; $5beb: $87
	ld a, [$ff82]                                    ; $5bec: $fa $82 $ff
	add e                                            ; $5bef: $83
	ldh [$80], a                                     ; $5bf0: $e0 $80
	ldh a, [$80]                                     ; $5bf2: $f0 $80
	ld hl, sp-$80                                    ; $5bf4: $f8 $80
	db $fc                                           ; $5bf6: $fc
	ld a, e                                          ; $5bf7: $7b
	cp $80                                           ; $5bf8: $fe $80
	pop bc                                           ; $5bfa: $c1
	cp $61                                           ; $5bfb: $fe $61
	ld a, [hl]                                       ; $5bfd: $7e
	ld [hl], b                                       ; $5bfe: $70
	ld a, a                                          ; $5bff: $7f
	ld e, b                                          ; $5c00: $58
	ld a, a                                          ; $5c01: $7f
	ld c, h                                          ; $5c02: $4c
	ld a, a                                          ; $5c03: $7f
	ld b, e                                          ; $5c04: $43
	ld a, a                                          ; $5c05: $7f
	ld b, c                                          ; $5c06: $41
	ld a, a                                          ; $5c07: $7f
	ld c, b                                          ; $5c08: $48
	ld [hl], a                                       ; $5c09: $77
	ld a, [hl-]                                      ; $5c0a: $3a
	ld de, $3351                                     ; $5c0b: $11 $51 $33
	ld h, l                                          ; $5c0e: $65
	inc sp                                           ; $5c0f: $33
	cp e                                             ; $5c10: $bb
	ld h, a                                          ; $5c11: $67
	ld d, [hl]                                       ; $5c12: $56
	rst AddAOntoHL                                          ; $5c13: $ef
	adc $fb                                          ; $5c14: $ce $fb
	sbc l                                            ; $5c16: $9d
	rst FarCall                                          ; $5c17: $f7
	ld a, e                                          ; $5c18: $7b
	add e                                            ; $5c19: $83
	xor $de                                          ; $5c1a: $ee $de
	call c, $00e0                                    ; $5c1c: $dc $e0 $00
	ldh a, [rP1]                                     ; $5c1f: $f0 $00
	ld hl, sp-$40                                    ; $5c21: $f8 $c0
	db $fc                                           ; $5c23: $fc
	ldh [$fc], a                                     ; $5c24: $e0 $fc
	ldh [$58], a                                     ; $5c26: $e0 $58
	ret nz                                           ; $5c28: $c0

	ld d, b                                          ; $5c29: $50
	ret nz                                           ; $5c2a: $c0

	ld b, b                                          ; $5c2b: $40
	ld b, b                                          ; $5c2c: $40
	add b                                            ; $5c2d: $80
	add b                                            ; $5c2e: $80
	pop bc                                           ; $5c2f: $c1
	add b                                            ; $5c30: $80
	inc bc                                           ; $5c31: $03
	nop                                              ; $5c32: $00
	inc bc                                           ; $5c33: $03
	nop                                              ; $5c34: $00
	ld bc, $84f4                                     ; $5c35: $01 $f4 $84
	add b                                            ; $5c38: $80
	nop                                              ; $5c39: $00
	ret nz                                           ; $5c3a: $c0

	nop                                              ; $5c3b: $00
	ldh a, [$c0]                                     ; $5c3c: $f0 $c0
	cp h                                             ; $5c3e: $bc
	ld a, c                                          ; $5c3f: $79
	cp e                                             ; $5c40: $bb
	sub b                                            ; $5c41: $90
	ld de, $71b0                                     ; $5c42: $11 $b0 $71
	jr nz, jr_072_5be7                               ; $5c45: $20 $a0

	ld h, b                                          ; $5c47: $60
	ld b, b                                          ; $5c48: $40
	ret nz                                           ; $5c49: $c0

jr_072_5c4a:
	jp $8780                                         ; $5c4a: $c3 $80 $87


	rlca                                             ; $5c4d: $07
	inc bc                                           ; $5c4e: $03
	rlca                                             ; $5c4f: $07
	rrca                                             ; $5c50: $0f
	nop                                              ; $5c51: $00
	rra                                              ; $5c52: $1f
	ld a, e                                          ; $5c53: $7b
	cp $88                                           ; $5c54: $fe $88
	ccf                                              ; $5c56: $3f
	nop                                              ; $5c57: $00
	ccf                                              ; $5c58: $3f
	rlca                                             ; $5c59: $07
	dec a                                            ; $5c5a: $3d
	dec c                                            ; $5c5b: $0d
	add hl, de                                       ; $5c5c: $19
	add hl, bc                                       ; $5c5d: $09
	ld c, $0f                                        ; $5c5e: $0e $0f
	ld c, $0f                                        ; $5c60: $0e $0f
	adc d                                            ; $5c62: $8a
	ld c, $c5                                        ; $5c63: $0e $c5
	dec b                                            ; $5c65: $05
	rst SubAFromBC                                          ; $5c66: $e7
	ld b, a                                          ; $5c67: $47
	jr nz, jr_072_5c4a                               ; $5c68: $20 $e0

	and b                                            ; $5c6a: $a0
	ld h, b                                          ; $5c6b: $60
	ret nz                                           ; $5c6c: $c0

	cp $93                                           ; $5c6d: $fe $93
	rst $38                                          ; $5c6f: $ff
	nop                                              ; $5c70: $00
	cp $01                                           ; $5c71: $fe $01
	rst $38                                          ; $5c73: $ff
	ld bc, $02fe                                     ; $5c74: $01 $fe $02
	db $f4                                           ; $5c77: $f4
	inc c                                            ; $5c78: $0c
	ld hl, sp+$18                                    ; $5c79: $f8 $18
	ld a, e                                          ; $5c7b: $7b
	xor $80                                          ; $5c7c: $ee $80
	ret nz                                           ; $5c7e: $c0

	or a                                             ; $5c7f: $b7
	jp c, $dbb6                                      ; $5c80: $da $b6 $db

	sub $7b                                          ; $5c83: $d6 $7b
	bit 7, l                                         ; $5c85: $cb $7d
	db $eb                                           ; $5c87: $eb
	dec a                                            ; $5c88: $3d
	push hl                                          ; $5c89: $e5
	ccf                                              ; $5c8a: $3f
	ld [hl], h                                       ; $5c8b: $74
	sbc a                                            ; $5c8c: $9f
	ld a, [$7bcf]                                    ; $5c8d: $fa $cf $7b
	rst AddAOntoHL                                          ; $5c90: $ef
	cp $27                                           ; $5c91: $fe $27
	adc $06                                          ; $5c93: $ce $06
	adc l                                            ; $5c95: $8d
	rlca                                             ; $5c96: $07
	ld c, $8c                                        ; $5c97: $0e $8c
	adc $cc                                          ; $5c99: $ce $cc
	rst AddAOntoHL                                          ; $5c9b: $ef
	ld [$af85], a                                    ; $5c9c: $ea $85 $af
	adc c                                            ; $5c9f: $89
	sub l                                            ; $5ca0: $95
	sbc b                                            ; $5ca1: $98
	sbc d                                            ; $5ca2: $9a
	sbc h                                            ; $5ca3: $9c
	dec a                                            ; $5ca4: $3d
	ld d, $a6                                        ; $5ca5: $16 $a6
	inc sp                                           ; $5ca7: $33
	ld a, [hl+]                                      ; $5ca8: $2a
	inc sp                                           ; $5ca9: $33
	ld a, e                                          ; $5caa: $7b
	ld sp, $7955                                     ; $5cab: $31 $55 $79
	db $dd                                           ; $5cae: $dd
	ld a, c                                          ; $5caf: $79
	ei                                               ; $5cb0: $fb
	db $dd                                           ; $5cb1: $dd
	rst FarCall                                          ; $5cb2: $f7
	push de                                          ; $5cb3: $d5
	ld [hl], a                                       ; $5cb4: $77
	ld d, l                                          ; $5cb5: $55
	ld d, a                                          ; $5cb6: $57
	ld [hl], l                                       ; $5cb7: $75
	db $dd                                           ; $5cb8: $dd
	ld h, $df                                        ; $5cb9: $26 $df
	inc h                                            ; $5cbb: $24
	rst SubAFromDE                                          ; $5cbc: $df
	inc b                                            ; $5cbd: $04
	cpl                                              ; $5cbe: $2f
	nop                                              ; $5cbf: $00
	ld a, a                                          ; $5cc0: $7f
	sbc d                                            ; $5cc1: $9a
	sub a                                            ; $5cc2: $97
	ei                                               ; $5cc3: $fb
	rlca                                             ; $5cc4: $07
	db $ec                                           ; $5cc5: $ec
	inc e                                            ; $5cc6: $1c
	rst $38                                          ; $5cc7: $ff
	cp a                                             ; $5cc8: $bf
	rst FarCall                                          ; $5cc9: $f7
	sub a                                            ; $5cca: $97
	inc bc                                           ; $5ccb: $03
	nop                                              ; $5ccc: $00
	cpl                                              ; $5ccd: $2f
	nop                                              ; $5cce: $00
	sbc b                                            ; $5ccf: $98
	nop                                              ; $5cd0: $00
	cp h                                             ; $5cd1: $bc
	ret nz                                           ; $5cd2: $c0

	call c, $f8e0                                    ; $5cd3: $dc $e0 $f8
	ldh [$03], a                                     ; $5cd6: $e0 $03
	nop                                              ; $5cd8: $00
	rra                                              ; $5cd9: $1f
	nop                                              ; $5cda: $00
	sbc c                                            ; $5cdb: $99
	nop                                              ; $5cdc: $00
	dec sp                                           ; $5cdd: $3b
	rlca                                             ; $5cde: $07
	dec d                                            ; $5cdf: $15
	dec c                                            ; $5ce0: $0d
	rrca                                             ; $5ce1: $0f
	inc bc                                           ; $5ce2: $03
	nop                                              ; $5ce3: $00
	daa                                              ; $5ce4: $27
	nop                                              ; $5ce5: $00
	sub a                                            ; $5ce6: $97
	adc [hl]                                         ; $5ce7: $8e
	inc c                                            ; $5ce8: $0c

jr_072_5ce9:
	ld c, $8c                                        ; $5ce9: $0e $8c
	adc a                                            ; $5ceb: $8f
	jp z, $e9ef                                      ; $5cec: $ca $ef $e9

	inc bc                                           ; $5cef: $03
	nop                                              ; $5cf0: $00
	dec hl                                           ; $5cf1: $2b
	nop                                              ; $5cf2: $00
	ld [hl], e                                       ; $5cf3: $73
	cp $9a                                           ; $5cf4: $fe $9a
	adc a                                            ; $5cf6: $8f
	rst $38                                          ; $5cf7: $ff
	cp a                                             ; $5cf8: $bf
	push af                                          ; $5cf9: $f5
	sub a                                            ; $5cfa: $97
	inc bc                                           ; $5cfb: $03
	nop                                              ; $5cfc: $00
	inc sp                                           ; $5cfd: $33
	nop                                              ; $5cfe: $00
	sbc [hl]                                         ; $5cff: $9e
	db $fc                                           ; $5d00: $fc
	ld a, e                                          ; $5d01: $7b
	cp $7d                                           ; $5d02: $fe $7d
	ld a, [$709d]                                    ; $5d04: $fa $9d $70
	ldh [$03], a                                     ; $5d07: $e0 $03
	nop                                              ; $5d09: $00
	inc hl                                           ; $5d0a: $23
	nop                                              ; $5d0b: $00
	ld a, a                                          ; $5d0c: $7f
	cp $7b                                           ; $5d0d: $fe $7b
	or $7e                                           ; $5d0f: $f6 $7e
	jr c, jr_072_5d16                                ; $5d11: $38 $03

	nop                                              ; $5d13: $00
	daa                                              ; $5d14: $27
	nop                                              ; $5d15: $00

jr_072_5d16:
	ld a, a                                          ; $5d16: $7f
	cp $99                                           ; $5d17: $fe $99
	rrca                                             ; $5d19: $0f
	ld a, [bc]                                       ; $5d1a: $0a
	rst GetHLinHL                                          ; $5d1b: $cf
	adc c                                            ; $5d1c: $89
	push de                                          ; $5d1d: $d5
	ret c                                            ; $5d1e: $d8

	inc bc                                           ; $5d1f: $03
	nop                                              ; $5d20: $00
	rra                                              ; $5d21: $1f
	nop                                              ; $5d22: $00
	ld a, a                                          ; $5d23: $7f
	ld hl, sp+$7b                                    ; $5d24: $f8 $7b
	cp $9b                                           ; $5d26: $fe $9b
	ld a, [$ff9c]                                    ; $5d28: $fa $9c $ff
	adc a                                            ; $5d2b: $8f
	inc bc                                           ; $5d2c: $03
	nop                                              ; $5d2d: $00
	cpl                                              ; $5d2e: $2f
	nop                                              ; $5d2f: $00
	ld a, e                                          ; $5d30: $7b
	or $7f                                           ; $5d31: $f6 $7f
	ldh a, [c]                                       ; $5d33: $f2
	ld a, a                                          ; $5d34: $7f
	ld e, d                                          ; $5d35: $5a
	sbc l                                            ; $5d36: $9d
	pop bc                                           ; $5d37: $c1
	ret nz                                           ; $5d38: $c0

	inc bc                                           ; $5d39: $03
	nop                                              ; $5d3a: $00
	daa                                              ; $5d3b: $27
	nop                                              ; $5d3c: $00
	sbc b                                            ; $5d3d: $98
	nop                                              ; $5d3e: $00
	rrca                                             ; $5d3f: $0f
	nop                                              ; $5d40: $00
	adc a                                            ; $5d41: $8f
	nop                                              ; $5d42: $00
	jp z, $030c                                      ; $5d43: $ca $0c $03

	nop                                              ; $5d46: $00
	dec hl                                           ; $5d47: $2b
	nop                                              ; $5d48: $00
	sub l                                            ; $5d49: $95
	rrca                                             ; $5d4a: $0f
	add hl, bc                                       ; $5d4b: $09
	dec d                                            ; $5d4c: $15
	jr jr_072_5ce9                                   ; $5d4d: $18 $9a

	inc e                                            ; $5d4f: $1c
	ld a, l                                          ; $5d50: $7d
	sub $a6                                          ; $5d51: $d6 $a6
	or e                                             ; $5d53: $b3
	daa                                              ; $5d54: $27
	nop                                              ; $5d55: $00
	di                                               ; $5d56: $f3
	rst SubAFromDE                                          ; $5d57: $df
	inc b                                            ; $5d58: $04
	rst SubAFromDE                                          ; $5d59: $df
	inc bc                                           ; $5d5a: $03
	rst $38                                          ; $5d5b: $ff
	ld a, e                                          ; $5d5c: $7b
	db $fd                                           ; $5d5d: $fd
	add sp, -$21                                     ; $5d5e: $e8 $df
	ld b, b                                          ; $5d60: $40
	push hl                                          ; $5d61: $e5
	rst SubAFromDE                                          ; $5d62: $df
	inc b                                            ; $5d63: $04
	sbc $07                                          ; $5d64: $de $07
	ld [hl], a                                       ; $5d66: $77
	cp l                                             ; $5d67: $bd
	add sp, -$21                                     ; $5d68: $e8 $df
	ret nz                                           ; $5d6a: $c0

	rst SubAFromDE                                          ; $5d6b: $df
	add b                                            ; $5d6c: $80
	rst SubAFromBC                                          ; $5d6d: $e7
	sbc [hl]                                         ; $5d6e: $9e
	ld b, $77                                        ; $5d6f: $06 $77
	ret nz                                           ; $5d71: $c0

	inc de                                           ; $5d72: $13
	cp [hl]                                          ; $5d73: $be
	rrca                                             ; $5d74: $0f
	ret nz                                           ; $5d75: $c0

	sbc d                                            ; $5d76: $9a
	ld c, $04                                        ; $5d77: $0e $04
	rrca                                             ; $5d79: $0f
	rlca                                             ; $5d7a: $07
	rrca                                             ; $5d7b: $0f
	inc de                                           ; $5d7c: $13
	cp [hl]                                          ; $5d7d: $be
	ld [hl], a                                       ; $5d7e: $77
	ret nz                                           ; $5d7f: $c0

	ld d, a                                          ; $5d80: $57
	cp [hl]                                          ; $5d81: $be
	add $01                                          ; $5d82: $c6 $01
	add b                                            ; $5d84: $80
	ld c, b                                          ; $5d85: $48
	or e                                             ; $5d86: $b3
	db $e4                                           ; $5d87: $e4
	inc sp                                           ; $5d88: $33
	or e                                             ; $5d89: $b3
	ld h, [hl]                                       ; $5d8a: $66
	cp e                                             ; $5d8b: $bb
	ld h, [hl]                                       ; $5d8c: $66
	ld d, l                                          ; $5d8d: $55
	xor $44                                          ; $5d8e: $ee $44
	rst $38                                          ; $5d90: $ff
	ret                                              ; $5d91: $c9


	rst $38                                          ; $5d92: $ff
	sbc e                                            ; $5d93: $9b
	rst $38                                          ; $5d94: $ff
	or [hl]                                          ; $5d95: $b6
	rst $38                                          ; $5d96: $ff
	ld a, a                                          ; $5d97: $7f
	ei                                               ; $5d98: $fb
	rst $38                                          ; $5d99: $ff
	add b                                            ; $5d9a: $80
	rst FarCall                                          ; $5d9b: $f7
	rrca                                             ; $5d9c: $0f
	xor $1e                                          ; $5d9d: $ee $1e
	db $fc                                           ; $5d9f: $fc
	inc a                                            ; $5da0: $3c
	rst FarCall                                          ; $5da1: $f7
	sub a                                            ; $5da2: $97

jr_072_5da3:
	rst SubAFromBC                                          ; $5da3: $e7
	sub c                                            ; $5da4: $91
	add a                                            ; $5da5: $87
	push af                                          ; $5da6: $f5
	add a                                            ; $5da7: $87
	ld a, [$ff82]                                    ; $5da8: $fa $82 $ff
	add e                                            ; $5dab: $83
	ldh [$80], a                                     ; $5dac: $e0 $80
	ldh a, [$80]                                     ; $5dae: $f0 $80
	ld hl, sp-$80                                    ; $5db0: $f8 $80
	db $fc                                           ; $5db2: $fc
	ld a, e                                          ; $5db3: $7b
	cp $80                                           ; $5db4: $fe $80
	pop bc                                           ; $5db6: $c1
	cp $61                                           ; $5db7: $fe $61
	ld a, [hl]                                       ; $5db9: $7e
	ld [hl], b                                       ; $5dba: $70
	ld a, a                                          ; $5dbb: $7f
	ld e, b                                          ; $5dbc: $58
	ld a, a                                          ; $5dbd: $7f
	ld c, h                                          ; $5dbe: $4c
	ld a, a                                          ; $5dbf: $7f
	ld b, e                                          ; $5dc0: $43
	ld a, a                                          ; $5dc1: $7f
	ld b, c                                          ; $5dc2: $41
	ld a, a                                          ; $5dc3: $7f
	ld c, b                                          ; $5dc4: $48
	ld [hl], a                                       ; $5dc5: $77
	ld a, [hl-]                                      ; $5dc6: $3a
	ld de, $3351                                     ; $5dc7: $11 $51 $33
	ld h, l                                          ; $5dca: $65
	inc sp                                           ; $5dcb: $33
	cp e                                             ; $5dcc: $bb
	ld h, a                                          ; $5dcd: $67
	ld d, [hl]                                       ; $5dce: $56
	rst AddAOntoHL                                          ; $5dcf: $ef
	adc $fb                                          ; $5dd0: $ce $fb
	sbc l                                            ; $5dd2: $9d
	rst FarCall                                          ; $5dd3: $f7
	ld a, e                                          ; $5dd4: $7b
	add e                                            ; $5dd5: $83
	xor $de                                          ; $5dd6: $ee $de
	call c, $00e0                                    ; $5dd8: $dc $e0 $00
	ldh a, [rP1]                                     ; $5ddb: $f0 $00
	ld hl, sp-$40                                    ; $5ddd: $f8 $c0
	db $fc                                           ; $5ddf: $fc
	ldh [$fc], a                                     ; $5de0: $e0 $fc
	ldh [$58], a                                     ; $5de2: $e0 $58
	ret nz                                           ; $5de4: $c0

	ld d, b                                          ; $5de5: $50
	ret nz                                           ; $5de6: $c0

	ld b, b                                          ; $5de7: $40
	ld b, b                                          ; $5de8: $40
	add b                                            ; $5de9: $80
	add b                                            ; $5dea: $80
	pop bc                                           ; $5deb: $c1
	add b                                            ; $5dec: $80
	inc bc                                           ; $5ded: $03
	nop                                              ; $5dee: $00
	inc bc                                           ; $5def: $03
	nop                                              ; $5df0: $00
	ld bc, $80f4                                     ; $5df1: $01 $f4 $80
	add b                                            ; $5df4: $80
	nop                                              ; $5df5: $00
	ret nz                                           ; $5df6: $c0

	nop                                              ; $5df7: $00
	ldh a, [$c0]                                     ; $5df8: $f0 $c0
	cp h                                             ; $5dfa: $bc
	ld a, c                                          ; $5dfb: $79
	cp e                                             ; $5dfc: $bb
	sub b                                            ; $5dfd: $90
	ld de, $71b0                                     ; $5dfe: $11 $b0 $71
	jr nz, jr_072_5da3                               ; $5e01: $20 $a0

	ld h, b                                          ; $5e03: $60
	ld b, b                                          ; $5e04: $40
	ret nz                                           ; $5e05: $c0

	jp $8780                                         ; $5e06: $c3 $80 $87


	nop                                              ; $5e09: $00
	rlca                                             ; $5e0a: $07
	rrca                                             ; $5e0b: $0f
	inc c                                            ; $5e0c: $0c
	rrca                                             ; $5e0d: $0f
	rra                                              ; $5e0e: $1f
	nop                                              ; $5e0f: $00
	rra                                              ; $5e10: $1f
	nop                                              ; $5e11: $00
	ccf                                              ; $5e12: $3f
	ld a, a                                          ; $5e13: $7f
	cp $8b                                           ; $5e14: $fe $8b
	rlca                                             ; $5e16: $07
	dec a                                            ; $5e17: $3d
	dec c                                            ; $5e18: $0d
	add hl, de                                       ; $5e19: $19
	add hl, bc                                       ; $5e1a: $09
	ld c, $0f                                        ; $5e1b: $0e $0f
	ld c, $0f                                        ; $5e1d: $0e $0f
	adc d                                            ; $5e1f: $8a
	ld c, $c5                                        ; $5e20: $0e $c5
	dec b                                            ; $5e22: $05
	rst SubAFromBC                                          ; $5e23: $e7
	ld b, a                                          ; $5e24: $47
	jr nz, @-$1e                                     ; $5e25: $20 $e0

	and b                                            ; $5e27: $a0
	ld h, b                                          ; $5e28: $60
	ret nz                                           ; $5e29: $c0

	cp $93                                           ; $5e2a: $fe $93
	rst $38                                          ; $5e2c: $ff
	nop                                              ; $5e2d: $00
	cp $01                                           ; $5e2e: $fe $01
	rst $38                                          ; $5e30: $ff
	ld bc, $02fe                                     ; $5e31: $01 $fe $02
	db $f4                                           ; $5e34: $f4
	inc c                                            ; $5e35: $0c
	ld hl, sp+$18                                    ; $5e36: $f8 $18
	ld a, e                                          ; $5e38: $7b
	xor $80                                          ; $5e39: $ee $80
	ret nz                                           ; $5e3b: $c0

	or a                                             ; $5e3c: $b7
	jp c, $dbb6                                      ; $5e3d: $da $b6 $db

	sub $7b                                          ; $5e40: $d6 $7b
	bit 7, l                                         ; $5e42: $cb $7d
	db $eb                                           ; $5e44: $eb
	dec a                                            ; $5e45: $3d
	push hl                                          ; $5e46: $e5
	ccf                                              ; $5e47: $3f
	ld [hl], h                                       ; $5e48: $74
	sbc a                                            ; $5e49: $9f
	cp d                                             ; $5e4a: $ba
	rst GetHLinHL                                          ; $5e4b: $cf
	ld e, e                                          ; $5e4c: $5b
	rst AddAOntoHL                                          ; $5e4d: $ef
	cp $27                                           ; $5e4e: $fe $27
	adc $06                                          ; $5e50: $ce $06
	adc l                                            ; $5e52: $8d
	rlca                                             ; $5e53: $07
	ld c, $8c                                        ; $5e54: $0e $8c
	adc $cc                                          ; $5e56: $ce $cc
	rst AddAOntoHL                                          ; $5e58: $ef
	ld [$af85], a                                    ; $5e59: $ea $85 $af
	adc c                                            ; $5e5c: $89
	sub l                                            ; $5e5d: $95
	sbc b                                            ; $5e5e: $98
	sbc d                                            ; $5e5f: $9a
	sbc h                                            ; $5e60: $9c
	dec a                                            ; $5e61: $3d
	ld d, $a6                                        ; $5e62: $16 $a6
	inc sp                                           ; $5e64: $33
	ld a, [hl+]                                      ; $5e65: $2a
	inc sp                                           ; $5e66: $33
	ld a, e                                          ; $5e67: $7b
	ld sp, $7955                                     ; $5e68: $31 $55 $79
	db $dd                                           ; $5e6b: $dd
	ld a, c                                          ; $5e6c: $79
	ei                                               ; $5e6d: $fb
	db $dd                                           ; $5e6e: $dd
	rst FarCall                                          ; $5e6f: $f7
	push de                                          ; $5e70: $d5
	ld [hl], a                                       ; $5e71: $77
	ld d, l                                          ; $5e72: $55
	ld d, a                                          ; $5e73: $57
	ld [hl], l                                       ; $5e74: $75
	db $dd                                           ; $5e75: $dd
	ld h, $df                                        ; $5e76: $26 $df
	inc h                                            ; $5e78: $24
	rst SubAFromDE                                          ; $5e79: $df
	inc b                                            ; $5e7a: $04

Call_072_5e7b:
	cpl                                              ; $5e7b: $2f
	nop                                              ; $5e7c: $00
	ld a, a                                          ; $5e7d: $7f
	sbc d                                            ; $5e7e: $9a
	sub a                                            ; $5e7f: $97
	ei                                               ; $5e80: $fb
	rlca                                             ; $5e81: $07
	db $ec                                           ; $5e82: $ec
	inc e                                            ; $5e83: $1c
	rst $38                                          ; $5e84: $ff
	cp a                                             ; $5e85: $bf
	rst FarCall                                          ; $5e86: $f7
	sub a                                            ; $5e87: $97
	inc bc                                           ; $5e88: $03
	nop                                              ; $5e89: $00
	cpl                                              ; $5e8a: $2f
	nop                                              ; $5e8b: $00
	sbc b                                            ; $5e8c: $98
	nop                                              ; $5e8d: $00
	cp h                                             ; $5e8e: $bc
	ret nz                                           ; $5e8f: $c0

	call c, $f8e0                                    ; $5e90: $dc $e0 $f8
	ldh [$03], a                                     ; $5e93: $e0 $03
	nop                                              ; $5e95: $00
	rra                                              ; $5e96: $1f
	nop                                              ; $5e97: $00
	sbc c                                            ; $5e98: $99
	nop                                              ; $5e99: $00
	dec sp                                           ; $5e9a: $3b
	rlca                                             ; $5e9b: $07
	dec d                                            ; $5e9c: $15
	dec c                                            ; $5e9d: $0d
	rrca                                             ; $5e9e: $0f
	inc bc                                           ; $5e9f: $03
	nop                                              ; $5ea0: $00
	daa                                              ; $5ea1: $27
	nop                                              ; $5ea2: $00
	sub a                                            ; $5ea3: $97
	adc [hl]                                         ; $5ea4: $8e
	inc c                                            ; $5ea5: $0c
	ld c, $8c                                        ; $5ea6: $0e $8c
	adc a                                            ; $5ea8: $8f
	jp z, $e9ef                                      ; $5ea9: $ca $ef $e9

	inc bc                                           ; $5eac: $03
	nop                                              ; $5ead: $00
	dec hl                                           ; $5eae: $2b
	nop                                              ; $5eaf: $00
	ld [hl], e                                       ; $5eb0: $73
	cp $9a                                           ; $5eb1: $fe $9a
	adc a                                            ; $5eb3: $8f
	rst $38                                          ; $5eb4: $ff
	cp a                                             ; $5eb5: $bf
	push af                                          ; $5eb6: $f5
	sub a                                            ; $5eb7: $97
	inc bc                                           ; $5eb8: $03

jr_072_5eb9:
	nop                                              ; $5eb9: $00
	inc sp                                           ; $5eba: $33
	nop                                              ; $5ebb: $00
	sbc [hl]                                         ; $5ebc: $9e
	db $fc                                           ; $5ebd: $fc
	ld a, e                                          ; $5ebe: $7b
	cp $7d                                           ; $5ebf: $fe $7d
	ld a, [$709d]                                    ; $5ec1: $fa $9d $70
	ldh [$03], a                                     ; $5ec4: $e0 $03
	nop                                              ; $5ec6: $00
	inc hl                                           ; $5ec7: $23
	nop                                              ; $5ec8: $00
	ld a, a                                          ; $5ec9: $7f
	cp $7b                                           ; $5eca: $fe $7b
	or $7e                                           ; $5ecc: $f6 $7e
	jr c, jr_072_5ed3                                ; $5ece: $38 $03

	nop                                              ; $5ed0: $00
	daa                                              ; $5ed1: $27
	nop                                              ; $5ed2: $00

jr_072_5ed3:
	ld a, a                                          ; $5ed3: $7f
	cp $99                                           ; $5ed4: $fe $99
	rrca                                             ; $5ed6: $0f
	ld a, [bc]                                       ; $5ed7: $0a
	rst GetHLinHL                                          ; $5ed8: $cf
	adc c                                            ; $5ed9: $89
	push de                                          ; $5eda: $d5
	ret c                                            ; $5edb: $d8

	inc bc                                           ; $5edc: $03
	nop                                              ; $5edd: $00
	rra                                              ; $5ede: $1f
	nop                                              ; $5edf: $00
	ld a, a                                          ; $5ee0: $7f
	ld hl, sp+$7b                                    ; $5ee1: $f8 $7b
	cp $9b                                           ; $5ee3: $fe $9b
	ld a, [$ff9c]                                    ; $5ee5: $fa $9c $ff
	adc a                                            ; $5ee8: $8f
	inc bc                                           ; $5ee9: $03
	nop                                              ; $5eea: $00
	cpl                                              ; $5eeb: $2f
	nop                                              ; $5eec: $00
	ld a, e                                          ; $5eed: $7b
	or $7f                                           ; $5eee: $f6 $7f
	ldh a, [c]                                       ; $5ef0: $f2
	ld a, a                                          ; $5ef1: $7f
	ld e, d                                          ; $5ef2: $5a
	sbc l                                            ; $5ef3: $9d
	pop bc                                           ; $5ef4: $c1
	ret nz                                           ; $5ef5: $c0

	inc bc                                           ; $5ef6: $03
	nop                                              ; $5ef7: $00
	ld l, e                                          ; $5ef8: $6b
	nop                                              ; $5ef9: $00
	sbc [hl]                                         ; $5efa: $9e
	rrca                                             ; $5efb: $0f
	ld a, d                                          ; $5efc: $7a
	cp $9d                                           ; $5efd: $fe $9d
	dec e                                            ; $5eff: $1d
	ld c, $5b                                        ; $5f00: $0e $5b
	nop                                              ; $5f02: $00
	ld a, e                                          ; $5f03: $7b
	xor $9b                                          ; $5f04: $ee $9b
	adc a                                            ; $5f06: $8f
	nop                                              ; $5f07: $00
	jp z, $030c                                      ; $5f08: $ca $0c $03

	nop                                              ; $5f0b: $00
	ld l, e                                          ; $5f0c: $6b
	nop                                              ; $5f0d: $00
	sub a                                            ; $5f0e: $97
	ld a, [hl-]                                      ; $5f0f: $3a
	rst GetHLinHL                                          ; $5f10: $cf
	cp e                                             ; $5f11: $bb
	rst GetHLinHL                                          ; $5f12: $cf
	sbc $67                                          ; $5f13: $de $67
	xor $26                                          ; $5f15: $ee $26
	ld h, a                                          ; $5f17: $67
	nop                                              ; $5f18: $00
	sub l                                            ; $5f19: $95
	rrca                                             ; $5f1a: $0f
	add hl, bc                                       ; $5f1b: $09
	dec d                                            ; $5f1c: $15
	jr jr_072_5eb9                                   ; $5f1d: $18 $9a

	inc e                                            ; $5f1f: $1c
	ld a, l                                          ; $5f20: $7d
	sub $a6                                          ; $5f21: $d6 $a6
	or e                                             ; $5f23: $b3
	daa                                              ; $5f24: $27
	nop                                              ; $5f25: $00
	pop af                                           ; $5f26: $f1
	rst SubAFromDE                                          ; $5f27: $df
	inc bc                                           ; $5f28: $03
	ld a, e                                          ; $5f29: $7b
	db $fc                                           ; $5f2a: $fc
	db $e4                                           ; $5f2b: $e4
	rst SubAFromDE                                          ; $5f2c: $df
	add b                                            ; $5f2d: $80
	push hl                                          ; $5f2e: $e5
	sbc $07                                          ; $5f2f: $de $07
	rrca                                             ; $5f31: $0f
	pop bc                                           ; $5f32: $c1
	dec bc                                           ; $5f33: $0b
	ret nz                                           ; $5f34: $c0

	sbc l                                            ; $5f35: $9d
	rrca                                             ; $5f36: $0f
	rlca                                             ; $5f37: $07
	sbc $0f                                          ; $5f38: $de $0f
	sbc l                                            ; $5f3a: $9d
	rlca                                             ; $5f3b: $07
	ld b, $03                                        ; $5f3c: $06 $03
	ret nz                                           ; $5f3e: $c0

	inc de                                           ; $5f3f: $13
	ret nz                                           ; $5f40: $c0

	rst SubAFromDE                                          ; $5f41: $df
	rrca                                             ; $5f42: $0f
	rst SubAFromDE                                          ; $5f43: $df
	ld b, $03                                        ; $5f44: $06 $03
	ret nz                                           ; $5f46: $c0

	ei                                               ; $5f47: $fb
	pop de                                           ; $5f48: $d1
	ld bc, $4880                                     ; $5f49: $01 $80 $48
	or e                                             ; $5f4c: $b3
	db $e4                                           ; $5f4d: $e4
	inc sp                                           ; $5f4e: $33
	or e                                             ; $5f4f: $b3
	ld h, [hl]                                       ; $5f50: $66
	cp e                                             ; $5f51: $bb
	ld h, [hl]                                       ; $5f52: $66
	ld d, l                                          ; $5f53: $55
	xor $44                                          ; $5f54: $ee $44
	rst $38                                          ; $5f56: $ff
	ret                                              ; $5f57: $c9


	rst $38                                          ; $5f58: $ff
	sbc e                                            ; $5f59: $9b
	rst $38                                          ; $5f5a: $ff
	or [hl]                                          ; $5f5b: $b6
	rst $38                                          ; $5f5c: $ff
	ld a, a                                          ; $5f5d: $7f
	ei                                               ; $5f5e: $fb
	rst $38                                          ; $5f5f: $ff
	add b                                            ; $5f60: $80
	ei                                               ; $5f61: $fb
	rlca                                             ; $5f62: $07
	rst AddAOntoHL                                          ; $5f63: $ef
	rra                                              ; $5f64: $1f
	db $fc                                           ; $5f65: $fc
	inc a                                            ; $5f66: $3c
	rst FarCall                                          ; $5f67: $f7
	sub a                                            ; $5f68: $97
	rst SubAFromBC                                          ; $5f69: $e7
	sub c                                            ; $5f6a: $91

jr_072_5f6b:
	add a                                            ; $5f6b: $87
	push af                                          ; $5f6c: $f5
	add a                                            ; $5f6d: $87
	ld a, [$ff82]                                    ; $5f6e: $fa $82 $ff
	add e                                            ; $5f71: $83
	ldh [$80], a                                     ; $5f72: $e0 $80
	ldh a, [$80]                                     ; $5f74: $f0 $80
	ld hl, sp-$80                                    ; $5f76: $f8 $80
	db $fc                                           ; $5f78: $fc
	ld a, e                                          ; $5f79: $7b
	cp $80                                           ; $5f7a: $fe $80
	pop bc                                           ; $5f7c: $c1
	cp $61                                           ; $5f7d: $fe $61
	ld a, [hl]                                       ; $5f7f: $7e
	ld [hl], b                                       ; $5f80: $70
	ld a, a                                          ; $5f81: $7f
	ld e, b                                          ; $5f82: $58
	ld a, a                                          ; $5f83: $7f
	ld c, h                                          ; $5f84: $4c
	ld a, a                                          ; $5f85: $7f
	ld b, e                                          ; $5f86: $43
	ld a, a                                          ; $5f87: $7f
	ld b, c                                          ; $5f88: $41
	ld a, a                                          ; $5f89: $7f
	ld c, b                                          ; $5f8a: $48
	ld [hl], a                                       ; $5f8b: $77
	ld a, [hl-]                                      ; $5f8c: $3a
	ld de, $3351                                     ; $5f8d: $11 $51 $33
	ld h, l                                          ; $5f90: $65
	inc sp                                           ; $5f91: $33
	cp e                                             ; $5f92: $bb
	ld h, a                                          ; $5f93: $67
	ld d, [hl]                                       ; $5f94: $56
	rst AddAOntoHL                                          ; $5f95: $ef
	adc $fb                                          ; $5f96: $ce $fb
	sbc l                                            ; $5f98: $9d
	rst FarCall                                          ; $5f99: $f7
	ld a, e                                          ; $5f9a: $7b
	add a                                            ; $5f9b: $87
	xor $de                                          ; $5f9c: $ee $de
	call c, $f0f0                                    ; $5f9e: $dc $f0 $f0
	or b                                             ; $5fa1: $b0
	ld [hl], b                                       ; $5fa2: $70
	ld hl, sp-$40                                    ; $5fa3: $f8 $c0
	db $fc                                           ; $5fa5: $fc
	ldh [$fc], a                                     ; $5fa6: $e0 $fc
	ldh a, [$58]                                     ; $5fa8: $f0 $58
	ret nz                                           ; $5faa: $c0

	ld d, b                                          ; $5fab: $50
	ret nz                                           ; $5fac: $c0

	ld b, b                                          ; $5fad: $40
	ld b, b                                          ; $5fae: $40
	add b                                            ; $5faf: $80
	add b                                            ; $5fb0: $80
	pop bc                                           ; $5fb1: $c1
	add b                                            ; $5fb2: $80
	inc bc                                           ; $5fb3: $03
	or [hl]                                          ; $5fb4: $b6
	inc bc                                           ; $5fb5: $03
	ld bc, $0000                                     ; $5fb6: $01 $00 $00
	nop                                              ; $5fb9: $00
	nop                                              ; $5fba: $00
	nop                                              ; $5fbb: $00
	nop                                              ; $5fbc: $00
	add b                                            ; $5fbd: $80
	ret nz                                           ; $5fbe: $c0

	ldh a, [$80]                                     ; $5fbf: $f0 $80
	ret nz                                           ; $5fc1: $c0

	cp h                                             ; $5fc2: $bc
	ld a, c                                          ; $5fc3: $79
	cp e                                             ; $5fc4: $bb
	sub b                                            ; $5fc5: $90
	ld de, $71b0                                     ; $5fc6: $11 $b0 $71
	jr nz, jr_072_5f6b                               ; $5fc9: $20 $a0

	ld h, b                                          ; $5fcb: $60
	ld b, b                                          ; $5fcc: $40
	ret nz                                           ; $5fcd: $c0

	jp $8780                                         ; $5fce: $c3 $80 $87


	nop                                              ; $5fd1: $00
	dec c                                            ; $5fd2: $0d
	inc bc                                           ; $5fd3: $03
	ld b, $0f                                        ; $5fd4: $06 $0f
	dec e                                            ; $5fd6: $1d
	ld e, $1f                                        ; $5fd7: $1e $1f
	jr jr_072_601a                                   ; $5fd9: $18 $3f

	nop                                              ; $5fdb: $00
	dec sp                                           ; $5fdc: $3b
	rlca                                             ; $5fdd: $07
	scf                                              ; $5fde: $37
	rrca                                             ; $5fdf: $0f
	adc [hl]                                         ; $5fe0: $8e
	add hl, de                                       ; $5fe1: $19
	add hl, bc                                       ; $5fe2: $09
	ld c, $0f                                        ; $5fe3: $0e $0f
	ld c, $0f                                        ; $5fe5: $0e $0f
	adc d                                            ; $5fe7: $8a
	ld c, $c5                                        ; $5fe8: $0e $c5
	dec b                                            ; $5fea: $05
	rst SubAFromBC                                          ; $5feb: $e7
	ld b, a                                          ; $5fec: $47
	jr nz, @-$1e                                     ; $5fed: $20 $e0

	and b                                            ; $5fef: $a0
	ld h, b                                          ; $5ff0: $60
	ret nz                                           ; $5ff1: $c0

	cp [hl]                                          ; $5ff2: $be
	nop                                              ; $5ff3: $00
	rst $38                                          ; $5ff4: $ff
	cp $96                                           ; $5ff5: $fe $96
	ld bc, $01ff                                     ; $5ff7: $01 $ff $01
	cp $02                                           ; $5ffa: $fe $02
	db $f4                                           ; $5ffc: $f4
	inc c                                            ; $5ffd: $0c
	ld hl, sp+$18                                    ; $5ffe: $f8 $18
	ld a, e                                          ; $6000: $7b
	xor $80                                          ; $6001: $ee $80
	ret nz                                           ; $6003: $c0

	or a                                             ; $6004: $b7
	jp c, $dbb6                                      ; $6005: $da $b6 $db

	sub $7b                                          ; $6008: $d6 $7b
	bit 7, l                                         ; $600a: $cb $7d
	db $eb                                           ; $600c: $eb
	dec a                                            ; $600d: $3d
	push hl                                          ; $600e: $e5
	ccf                                              ; $600f: $3f
	ld [hl], h                                       ; $6010: $74
	sbc a                                            ; $6011: $9f
	cp d                                             ; $6012: $ba
	rst GetHLinHL                                          ; $6013: $cf
	ei                                               ; $6014: $fb
	rrca                                             ; $6015: $0f
	cp $07                                           ; $6016: $fe $07
	adc $06                                          ; $6018: $ce $06

jr_072_601a:
	adc l                                            ; $601a: $8d
	rlca                                             ; $601b: $07
	ld c, $8c                                        ; $601c: $0e $8c
	adc $cc                                          ; $601e: $ce $cc
	rst AddAOntoHL                                          ; $6020: $ef
	ld [$af85], a                                    ; $6021: $ea $85 $af
	adc c                                            ; $6024: $89
	sub l                                            ; $6025: $95
	sbc b                                            ; $6026: $98
	sbc d                                            ; $6027: $9a
	sbc h                                            ; $6028: $9c
	dec a                                            ; $6029: $3d
	ld d, $a6                                        ; $602a: $16 $a6
	inc sp                                           ; $602c: $33
	ld a, [hl+]                                      ; $602d: $2a
	inc sp                                           ; $602e: $33
	ld a, e                                          ; $602f: $7b
	ld sp, $7955                                     ; $6030: $31 $55 $79
	db $dd                                           ; $6033: $dd
	ld a, c                                          ; $6034: $79
	ei                                               ; $6035: $fb
	db $dd                                           ; $6036: $dd
	rst FarCall                                          ; $6037: $f7
	push de                                          ; $6038: $d5
	ld [hl], a                                       ; $6039: $77
	ld d, l                                          ; $603a: $55
	ld d, a                                          ; $603b: $57
	ld [hl], l                                       ; $603c: $75
	db $dd                                           ; $603d: $dd
	ld h, $df                                        ; $603e: $26 $df
	inc h                                            ; $6040: $24
	rst SubAFromDE                                          ; $6041: $df
	inc b                                            ; $6042: $04
	cpl                                              ; $6043: $2f
	nop                                              ; $6044: $00
	ld a, a                                          ; $6045: $7f
	sbc d                                            ; $6046: $9a
	ld a, [hl]                                       ; $6047: $7e
	cp $99                                           ; $6048: $fe $99
	xor $1e                                          ; $604a: $ee $1e
	rst $38                                          ; $604c: $ff
	cp a                                             ; $604d: $bf
	rst FarCall                                          ; $604e: $f7
	sub a                                            ; $604f: $97
	inc bc                                           ; $6050: $03
	nop                                              ; $6051: $00
	cpl                                              ; $6052: $2f
	nop                                              ; $6053: $00
	sbc b                                            ; $6054: $98
	nop                                              ; $6055: $00
	cp h                                             ; $6056: $bc
	ret nz                                           ; $6057: $c0

	call c, $f8e0                                    ; $6058: $dc $e0 $f8
	ldh [$03], a                                     ; $605b: $e0 $03
	nop                                              ; $605d: $00
	inc hl                                           ; $605e: $23
	nop                                              ; $605f: $00
	halt                                             ; $6060: $76
	cp $9c                                           ; $6061: $fe $9c
	dec d                                            ; $6063: $15
	dec c                                            ; $6064: $0d
	rrca                                             ; $6065: $0f
	inc bc                                           ; $6066: $03
	nop                                              ; $6067: $00
	daa                                              ; $6068: $27
	nop                                              ; $6069: $00
	sub a                                            ; $606a: $97
	adc [hl]                                         ; $606b: $8e
	inc c                                            ; $606c: $0c
	ld c, $8c                                        ; $606d: $0e $8c
	adc a                                            ; $606f: $8f
	jp z, $e9ef                                      ; $6070: $ca $ef $e9

	inc bc                                           ; $6073: $03
	nop                                              ; $6074: $00
	dec hl                                           ; $6075: $2b
	nop                                              ; $6076: $00
	ld [hl], e                                       ; $6077: $73
	cp $9a                                           ; $6078: $fe $9a
	adc a                                            ; $607a: $8f
	rst $38                                          ; $607b: $ff
	cp a                                             ; $607c: $bf
	push af                                          ; $607d: $f5
	sub a                                            ; $607e: $97
	inc bc                                           ; $607f: $03
	nop                                              ; $6080: $00
	inc sp                                           ; $6081: $33
	nop                                              ; $6082: $00
	sbc [hl]                                         ; $6083: $9e
	db $fc                                           ; $6084: $fc
	cp a                                             ; $6085: $bf
	db $fc                                           ; $6086: $fc
	ld hl, sp-$64                                    ; $6087: $f8 $9c

jr_072_6089:
	ret nz                                           ; $6089: $c0

	ld [hl], b                                       ; $608a: $70
	ldh [$03], a                                     ; $608b: $e0 $03
	nop                                              ; $608d: $00
	inc hl                                           ; $608e: $23
	nop                                              ; $608f: $00
	ld a, a                                          ; $6090: $7f
	cp $9b                                           ; $6091: $fe $9b
	rra                                              ; $6093: $1f
	nop                                              ; $6094: $00
	rra                                              ; $6095: $1f
	rlca                                             ; $6096: $07
	inc bc                                           ; $6097: $03
	nop                                              ; $6098: $00
	inc hl                                           ; $6099: $23
	nop                                              ; $609a: $00
	ld a, a                                          ; $609b: $7f
	cp $99                                           ; $609c: $fe $99
	rrca                                             ; $609e: $0f
	ld a, [bc]                                       ; $609f: $0a

Call_072_60a0:
	rst GetHLinHL                                          ; $60a0: $cf
	adc c                                            ; $60a1: $89
	push de                                          ; $60a2: $d5
	ret c                                            ; $60a3: $d8

	inc bc                                           ; $60a4: $03
	nop                                              ; $60a5: $00
	rra                                              ; $60a6: $1f
	nop                                              ; $60a7: $00
	ld a, a                                          ; $60a8: $7f
	ld hl, sp+$7b                                    ; $60a9: $f8 $7b
	cp $9b                                           ; $60ab: $fe $9b
	ld a, [$ff9c]                                    ; $60ad: $fa $9c $ff
	adc a                                            ; $60b0: $8f
	inc bc                                           ; $60b1: $03
	nop                                              ; $60b2: $00
	ld e, e                                          ; $60b3: $5b
	nop                                              ; $60b4: $00
	rst SubAFromDE                                          ; $60b5: $df
	ldh [$9b], a                                     ; $60b6: $e0 $9b
	ld [hl], b                                       ; $60b8: $70
	ldh a, [$f8]                                     ; $60b9: $f0 $f8
	jr nc, jr_072_6130                               ; $60bb: $30 $73

	nop                                              ; $60bd: $00
	cp [hl]                                          ; $60be: $be
	ldh a, [$e0]                                     ; $60bf: $f0 $e0
	and b                                            ; $60c1: $a0
	sbc h                                            ; $60c2: $9c
	ld h, b                                          ; $60c3: $60
	pop bc                                           ; $60c4: $c1
	ret nz                                           ; $60c5: $c0

	inc bc                                           ; $60c6: $03
	nop                                              ; $60c7: $00
	ld l, e                                          ; $60c8: $6b
	nop                                              ; $60c9: $00
	sub [hl]                                         ; $60ca: $96
	rrca                                             ; $60cb: $0f
	nop                                              ; $60cc: $00
	dec bc                                           ; $60cd: $0b
	rlca                                             ; $60ce: $07
	rra                                              ; $60cf: $1f
	ld c, $1f                                        ; $60d0: $0e $1f
	inc e                                            ; $60d2: $1c
	ccf                                              ; $60d3: $3f
	ld [hl], d                                       ; $60d4: $72
	cp $7b                                           ; $60d5: $fe $7b
	nop                                              ; $60d7: $00
	cp [hl]                                          ; $60d8: $be
	rrca                                             ; $60d9: $0f
	adc a                                            ; $60da: $8f
	jp z, $0c9e                                      ; $60db: $ca $9e $0c

	inc bc                                           ; $60de: $03
	nop                                              ; $60df: $00
	ld l, e                                          ; $60e0: $6b
	nop                                              ; $60e1: $00
	sbc e                                            ; $60e2: $9b
	ld a, [hl-]                                      ; $60e3: $3a
	rst GetHLinHL                                          ; $60e4: $cf
	ld a, e                                          ; $60e5: $7b
	adc a                                            ; $60e6: $8f
	ld d, a                                          ; $60e7: $57
	nop                                              ; $60e8: $00
	sub l                                            ; $60e9: $95
	rrca                                             ; $60ea: $0f
	add hl, bc                                       ; $60eb: $09
	dec d                                            ; $60ec: $15
	jr jr_072_6089                                   ; $60ed: $18 $9a

	inc e                                            ; $60ef: $1c
	ld a, l                                          ; $60f0: $7d
	sub $a6                                          ; $60f1: $d6 $a6
	or e                                             ; $60f3: $b3
	daa                                              ; $60f4: $27
	nop                                              ; $60f5: $00
	pop af                                           ; $60f6: $f1
	rst SubAFromDE                                          ; $60f7: $df
	rlca                                             ; $60f8: $07
	rst $38                                          ; $60f9: $ff
	ld a, a                                          ; $60fa: $7f
	ld d, h                                          ; $60fb: $54
	push hl                                          ; $60fc: $e5
	rst SubAFromDE                                          ; $60fd: $df
	add b                                            ; $60fe: $80
	push hl                                          ; $60ff: $e5
	sbc $07                                          ; $6100: $de $07
	rrca                                             ; $6102: $0f
	pop bc                                           ; $6103: $c1
	dec bc                                           ; $6104: $0b
	ret nz                                           ; $6105: $c0

	sbc l                                            ; $6106: $9d
	rrca                                             ; $6107: $0f
	rlca                                             ; $6108: $07
	sbc $0f                                          ; $6109: $de $0f
	sbc l                                            ; $610b: $9d
	rlca                                             ; $610c: $07
	ld b, $03                                        ; $610d: $06 $03
	ret nz                                           ; $610f: $c0

	inc de                                           ; $6110: $13
	ret nz                                           ; $6111: $c0

	rst SubAFromDE                                          ; $6112: $df
	rrca                                             ; $6113: $0f
	rst SubAFromDE                                          ; $6114: $df
	ld b, $03                                        ; $6115: $06 $03
	ret nz                                           ; $6117: $c0

	ei                                               ; $6118: $fb
	dec e                                            ; $6119: $1d
	inc bc                                           ; $611a: $03
	rst FarCall                                          ; $611b: $f7
	db $db                                           ; $611c: $db
	ld bc, $028f                                     ; $611d: $01 $8f $02
	inc bc                                           ; $6120: $03
	inc bc                                           ; $6121: $03
	ld [bc], a                                       ; $6122: $02
	inc bc                                           ; $6123: $03
	ld [bc], a                                       ; $6124: $02
	dec b                                            ; $6125: $05
	ld b, $07                                        ; $6126: $06 $07
	inc b                                            ; $6128: $04
	dec bc                                           ; $6129: $0b
	inc c                                            ; $612a: $0c
	rrca                                             ; $612b: $0f
	ld [$080f], sp                                   ; $612c: $08 $0f $08
	rst SubAFromBC                                          ; $612f: $e7

jr_072_6130:
	rst SubAFromDE                                          ; $6130: $df
	ld bc, $d87f                                     ; $6131: $01 $7f $d8
	ld a, a                                          ; $6134: $7f
	jp c, $0a8a                                      ; $6135: $da $8a $0a

	dec c                                            ; $6138: $0d
	inc de                                           ; $6139: $13
	dec e                                            ; $613a: $1d
	add hl, hl                                       ; $613b: $29
	scf                                              ; $613c: $37
	ld a, [hl-]                                      ; $613d: $3a
	daa                                              ; $613e: $27
	ld e, e                                          ; $613f: $5b
	ld h, [hl]                                       ; $6140: $66
	ld d, l                                          ; $6141: $55
	ld l, [hl]                                       ; $6142: $6e
	ld d, a                                          ; $6143: $57
	ld l, h                                          ; $6144: $6c
	xor a                                            ; $6145: $af
	push de                                          ; $6146: $d5
	xor a                                            ; $6147: $af
	push de                                          ; $6148: $d5
	db $ed                                           ; $6149: $ed
	sub a                                            ; $614a: $97
	ld a, [$fe7b]                                    ; $614b: $fa $7b $fe
	sbc b                                            ; $614e: $98
	or d                                             ; $614f: $b2
	rst SubAFromDE                                          ; $6150: $df
	ld [hl], d                                       ; $6151: $72
	ld e, a                                          ; $6152: $5f
	ld c, d                                          ; $6153: $4a
	ld a, a                                          ; $6154: $7f
	add hl, hl                                       ; $6155: $29
	sbc $3f                                          ; $6156: $de $3f
	rst SubAFromDE                                          ; $6158: $df
	rra                                              ; $6159: $1f
	rst SubAFromDE                                          ; $615a: $df
	rrca                                             ; $615b: $0f
	rst SubAFromDE                                          ; $615c: $df
	inc bc                                           ; $615d: $03
	db $dd                                           ; $615e: $dd
	ld bc, $03df                                     ; $615f: $01 $df $03
	rst SubAFromDE                                          ; $6162: $df
	rra                                              ; $6163: $1f
	rst SubAFromDE                                          ; $6164: $df
	rlca                                             ; $6165: $07
	ld [hl], a                                       ; $6166: $77
	and b                                            ; $6167: $a0
	ld a, a                                          ; $6168: $7f
	ret z                                            ; $6169: $c8

	ld h, a                                          ; $616a: $67
	cp $77                                           ; $616b: $fe $77
	ldh a, [c]                                       ; $616d: $f2
	ld a, a                                          ; $616e: $7f
	db $fd                                           ; $616f: $fd
	db $db                                           ; $6170: $db
	ld bc, $dfef                                     ; $6171: $01 $ef $df
	rlca                                             ; $6174: $07
	sub h                                            ; $6175: $94
	dec de                                           ; $6176: $1b
	inc e                                            ; $6177: $1c
	cpl                                              ; $6178: $2f
	jr nc, @+$61                                     ; $6179: $30 $5f

	ld h, b                                          ; $617b: $60
	cp a                                             ; $617c: $bf
	ret nz                                           ; $617d: $c0

	rst $38                                          ; $617e: $ff
	add b                                            ; $617f: $80
	ld a, a                                          ; $6180: $7f
	ld a, e                                          ; $6181: $7b
	cp $8d                                           ; $6182: $fe $8d
	ld hl, sp+$07                                    ; $6184: $f8 $07
	ld hl, sp+$07                                    ; $6186: $f8 $07
	db $fc                                           ; $6188: $fc
	inc bc                                           ; $6189: $03

jr_072_618a:
	cp $01                                           ; $618a: $fe $01
	rst $38                                          ; $618c: $ff
	nop                                              ; $618d: $00
	ld a, a                                          ; $618e: $7f
	add b                                            ; $618f: $80
	ccf                                              ; $6190: $3f
	ret nz                                           ; $6191: $c0

	sbc a                                            ; $6192: $9f
	ld h, b                                          ; $6193: $60
	add a                                            ; $6194: $87
	ld a, b                                          ; $6195: $78
	db $ed                                           ; $6196: $ed
	rst SubAFromDE                                          ; $6197: $df
	rrca                                             ; $6198: $0f
	add b                                            ; $6199: $80
	jr c, jr_072_61db                                ; $619a: $38 $3f

	rst AddAOntoHL                                          ; $619c: $ef
	di                                               ; $619d: $f3
	rst SubAFromHL                                          ; $619e: $d7
	ld l, a                                          ; $619f: $6f
	ld a, e                                          ; $61a0: $7b
	call c, $f1ee                                    ; $61a1: $dc $ee $f1
	cp b                                             ; $61a4: $b8
	rst JumpTable                                          ; $61a5: $c7
	ld h, e                                          ; $61a6: $63
	sbc h                                            ; $61a7: $9c
	call z, $9030                                    ; $61a8: $cc $30 $90
	ld h, b                                          ; $61ab: $60
	and e                                            ; $61ac: $a3
	ld b, b                                          ; $61ad: $40
	ld b, [hl]                                       ; $61ae: $46
	add b                                            ; $61af: $80
	ret z                                            ; $61b0: $c8

	add h                                            ; $61b1: $84
	ld de, $aa88                                     ; $61b2: $11 $88 $aa
	ld de, $13b5                                     ; $61b5: $11 $b5 $13
	ld h, c                                          ; $61b8: $61
	sub h                                            ; $61b9: $94
	scf                                              ; $61ba: $37
	ld a, e                                          ; $61bb: $7b
	daa                                              ; $61bc: $27
	ld [hl], d                                       ; $61bd: $72
	cpl                                              ; $61be: $2f
	or $2f                                           ; $61bf: $f6 $2f
	xor [hl]                                         ; $61c1: $ae
	ld a, a                                          ; $61c2: $7f
	ld a, d                                          ; $61c3: $7a
	rst $38                                          ; $61c4: $ff
	ldh [$c1], a                                     ; $61c5: $e0 $c1
	sbc b                                            ; $61c7: $98
	ld a, h                                          ; $61c8: $7c
	jr nc, jr_072_61e9                               ; $61c9: $30 $1e

	ld [$040f], sp                                   ; $61cb: $08 $0f $04
	rlca                                             ; $61ce: $07
	ld a, e                                          ; $61cf: $7b
	ld a, [hl-]                                      ; $61d0: $3a
	sbc h                                            ; $61d1: $9c
	dec bc                                           ; $61d2: $0b
	ld bc, $b10d                                     ; $61d3: $01 $0d $b1
	ld b, $c6                                        ; $61d6: $06 $c6
	jp nz, $e1e3                                     ; $61d8: $c2 $e3 $e1

jr_072_61db:
	ld [hl], c                                       ; $61db: $71
	jr c, jr_072_61f6                                ; $61dc: $38 $18

	inc c                                            ; $61de: $0c
	nop                                              ; $61df: $00
	nop                                              ; $61e0: $00
	nop                                              ; $61e1: $00
	nop                                              ; $61e2: $00
	nop                                              ; $61e3: $00
	nop                                              ; $61e4: $00
	ld e, $90                                        ; $61e5: $1e $90
	ld e, $7f                                        ; $61e7: $1e $7f

jr_072_61e9:
	ld h, e                                          ; $61e9: $63
	db $e3                                           ; $61ea: $e3
	pop bc                                           ; $61eb: $c1
	pop bc                                           ; $61ec: $c1
	add b                                            ; $61ed: $80
	rst $38                                          ; $61ee: $ff
	sbc a                                            ; $61ef: $9f
	ldh [rIE], a                                     ; $61f0: $e0 $ff
	nop                                              ; $61f2: $00
	rst $38                                          ; $61f3: $ff
	cp $ff                                           ; $61f4: $fe $ff

jr_072_61f6:
	ld a, e                                          ; $61f6: $7b
	add hl, sp                                       ; $61f7: $39
	sbc c                                            ; $61f8: $99
	rst $38                                          ; $61f9: $ff
	di                                               ; $61fa: $f3
	rrca                                             ; $61fb: $0f
	cp $01                                           ; $61fc: $fe $01
	rlca                                             ; $61fe: $07
	cp a                                             ; $61ff: $bf
	rst $38                                          ; $6200: $ff
	adc b                                            ; $6201: $88
	adc b                                            ; $6202: $88
	rlca                                             ; $6203: $07
	inc h                                            ; $6204: $24
	jr jr_072_618a                                   ; $6205: $18 $83

	ld [hl], b                                       ; $6207: $70
	ld b, $e1                                        ; $6208: $06 $e1
	dec c                                            ; $620a: $0d
	jp nz, $8658                                     ; $620b: $c2 $58 $86

	ld [de], a                                       ; $620e: $12
	adc h                                            ; $620f: $8c
	or c                                             ; $6210: $b1
	inc c                                            ; $6211: $0c
	and b                                            ; $6212: $a0
	dec e                                            ; $6213: $1d
	jp z, $ca3d                                      ; $6214: $ca $3d $ca

	dec a                                            ; $6217: $3d
	adc e                                            ; $6218: $8b
	ld a, l                                          ; $6219: $7d
	ldh [$c1], a                                     ; $621a: $e0 $c1
	ld a, d                                          ; $621c: $7a
	sub $bc                                          ; $621d: $d6 $bc
	ccf                                              ; $621f: $3f
	ccf                                              ; $6220: $3f
	sbc a                                            ; $6221: $9f
	rst GetHLinHL                                          ; $6222: $cf
	rst GetHLinHL                                          ; $6223: $cf
	sbc l                                            ; $6224: $9d

jr_072_6225:
	add b                                            ; $6225: $80
	rst SubAFromBC                                          ; $6226: $e7

jr_072_6227:
	ld [hl], a                                       ; $6227: $77
	cp $9d                                           ; $6228: $fe $9d
	ld b, b                                          ; $622a: $40
	ld [hl], e                                       ; $622b: $73
	ld [hl], e                                       ; $622c: $73

jr_072_622d:
	cp $99                                           ; $622d: $fe $99
	di                                               ; $622f: $f3
	jr nz, jr_072_6225                               ; $6230: $20 $f3

	jr nz, jr_072_6225                               ; $6232: $20 $f1

	jr nz, jr_072_6227                               ; $6234: $20 $f1

	db $dd                                           ; $6236: $dd
	add b                                            ; $6237: $80
	rst SubAFromDE                                          ; $6238: $df
	ret nz                                           ; $6239: $c0

	add b                                            ; $623a: $80
	jr nc, jr_072_622d                               ; $623b: $30 $f0

	db $ec                                           ; $623d: $ec
	inc e                                            ; $623e: $1c
	ld a, d                                          ; $623f: $7a
	add [hl]                                         ; $6240: $86
	call $36f3                                       ; $6241: $cd $f3 $36
	ld sp, hl                                        ; $6244: $f9
	xor $19                                          ; $6245: $ee $19
	or $cd                                           ; $6247: $f6 $cd
	or b                                             ; $6249: $b0
	ld l, a                                          ; $624a: $6f
	db $db                                           ; $624b: $db
	inc a                                            ; $624c: $3c
	call c, $9338                                    ; $624d: $dc $38 $93
	ld a, h                                          ; $6250: $7c
	ld c, l                                          ; $6251: $4d
	or d                                             ; $6252: $b2
	sbc $21                                          ; $6253: $de $21
	call nc, $d620                                   ; $6255: $d4 $20 $d6
	jr nz, @+$58                                     ; $6258: $20 $56

	sub h                                            ; $625a: $94
	jr nz, @+$45                                     ; $625b: $20 $43

	jr nc, jr_072_62ca                               ; $625d: $30 $6b

	jr nc, jr_072_628a                               ; $625f: $30 $29

	ld [hl], d                                       ; $6261: $72
	xor c                                            ; $6262: $a9
	ld [hl], d                                       ; $6263: $72
	dec h                                            ; $6264: $25
	ld a, [$c1e0]                                    ; $6265: $fa $e0 $c1
	ld a, [hl]                                       ; $6268: $7e
	dec hl                                           ; $6269: $2b
	sub a                                            ; $626a: $97
	ret nz                                           ; $626b: $c0

	ccf                                              ; $626c: $3f
	ret nz                                           ; $626d: $c0

	ccf                                              ; $626e: $3f
	ldh [$1f], a                                     ; $626f: $e0 $1f
	ldh a, [rIF]                                     ; $6271: $f0 $0f
	ld h, [hl]                                       ; $6273: $66
	ld h, $4f                                        ; $6274: $26 $4f
	cp $e9                                           ; $6276: $fe $e9
	db $dd                                           ; $6278: $dd
	inc d                                            ; $6279: $14
	sub d                                            ; $627a: $92
	inc a                                            ; $627b: $3c
	inc l                                            ; $627c: $2c
	sbc $ea                                          ; $627d: $de $ea
	cp l                                             ; $627f: $bd
	rst SubAFromHL                                          ; $6280: $d7
	ld a, a                                          ; $6281: $7f
	adc b                                            ; $6282: $88
	ld a, b                                          ; $6283: $78
	rst $38                                          ; $6284: $ff
	inc b                                            ; $6285: $04
	inc bc                                           ; $6286: $03
	ld bc, $8ebf                                     ; $6287: $01 $bf $8e

jr_072_628a:
	and $8c                                          ; $628a: $e6 $8c
	ld bc, $00b9                                     ; $628c: $01 $b9 $00
	ld d, h                                          ; $628f: $54
	adc b                                            ; $6290: $88
	ld c, d                                          ; $6291: $4a
	add h                                            ; $6292: $84
	and d                                            ; $6293: $a2
	ld b, h                                          ; $6294: $44
	inc h                                            ; $6295: $24
	ld b, d                                          ; $6296: $42
	ld d, c                                          ; $6297: $51
	ld [hl+], a                                      ; $6298: $22
	ld d, d                                          ; $6299: $52
	ld hl, $3142                                     ; $629a: $21 $42 $31
	ld l, d                                          ; $629d: $6a
	ld de, $fe77                                     ; $629e: $11 $77 $fe
	adc h                                            ; $62a1: $8c
	ld [$e211], a                                    ; $62a2: $ea $11 $e2
	add hl, de                                       ; $62a5: $19
	ld h, d                                          ; $62a6: $62
	sbc c                                            ; $62a7: $99
	ld [hl], d                                       ; $62a8: $72
	sbc c                                            ; $62a9: $99
	ld [hl], h                                       ; $62aa: $74
	sbc e                                            ; $62ab: $9b
	inc [hl]                                         ; $62ac: $34
	db $db                                           ; $62ad: $db
	ld sp, $89df                                     ; $62ae: $31 $df $89
	rst $38                                          ; $62b1: $ff
	adc c                                            ; $62b2: $89
	rst $38                                          ; $62b3: $ff
	ret                                              ; $62b4: $c9


	ld a, e                                          ; $62b5: $7b
	cp $80                                           ; $62b6: $fe $80
	and l                                            ; $62b8: $a5
	rst $38                                          ; $62b9: $ff
	push de                                          ; $62ba: $d5
	cp a                                             ; $62bb: $bf
	sbc $bf                                          ; $62bc: $de $bf
	and $bf                                          ; $62be: $e6 $bf
	and a                                            ; $62c0: $a7
	ld a, a                                          ; $62c1: $7f
	call nz, $c87f                                   ; $62c2: $c4 $7f $c8
	ld a, a                                          ; $62c5: $7f
	pop de                                           ; $62c6: $d1
	ld a, a                                          ; $62c7: $7f
	cp $7f                                           ; $62c8: $fe $7f

jr_072_62ca:
	ret nc                                           ; $62ca: $d0

	ld a, a                                          ; $62cb: $7f
	ld d, e                                          ; $62cc: $53
	rst $38                                          ; $62cd: $ff
	ld e, h                                          ; $62ce: $5c
	db $fc                                           ; $62cf: $fc
	ret nc                                           ; $62d0: $d0

	ldh a, [$e0]                                     ; $62d1: $f0 $e0
	ldh [$c0], a                                     ; $62d3: $e0 $c0
	ret nz                                           ; $62d5: $c0

	ldh [$99], a                                     ; $62d6: $e0 $99

jr_072_62d8:
	ldh [rSVBK], a                                   ; $62d8: $e0 $70
	ldh a, [rAUD3HIGH]                               ; $62da: $f0 $1e
	cp $03                                           ; $62dc: $fe $03
	ld b, a                                          ; $62de: $47
	ld [hl], c                                       ; $62df: $71
	ld a, c                                          ; $62e0: $79
	ld a, c                                          ; $62e1: $79
	ld h, a                                          ; $62e2: $67
	ld d, [hl]                                       ; $62e3: $56
	ld l, a                                          ; $62e4: $6f
	ld d, h                                          ; $62e5: $54
	rst SubAFromDE                                          ; $62e6: $df
	ret nz                                           ; $62e7: $c0

	add b                                            ; $62e8: $80
	or b                                             ; $62e9: $b0
	ld [hl], b                                       ; $62ea: $70
	ld hl, sp+$08                                    ; $62eb: $f8 $08
	inc e                                            ; $62ed: $1c
	db $e4                                           ; $62ee: $e4
	add d                                            ; $62ef: $82
	cp $dd                                           ; $62f0: $fe $dd
	ld h, e                                          ; $62f2: $63
	xor a                                            ; $62f3: $af
	ld [hl], b                                       ; $62f4: $70
	ld d, c                                          ; $62f5: $51
	cp [hl]                                          ; $62f6: $be
	jr z, jr_072_62d8                                ; $62f7: $28 $df

	rst SubAFromDE                                          ; $62f9: $df
	ld l, a                                          ; $62fa: $6f
	or h                                             ; $62fb: $b4
	ld l, a                                          ; $62fc: $6f
	xor h                                            ; $62fd: $ac
	ld [hl], a                                       ; $62fe: $77
	db $ec                                           ; $62ff: $ec
	scf                                              ; $6300: $37
	rst SubAFromHL                                          ; $6301: $d7
	ccf                                              ; $6302: $3f
	call nc, $d73f                                   ; $6303: $d4 $3f $d7
	ccf                                              ; $6306: $3f
	ld d, l                                          ; $6307: $55
	add b                                            ; $6308: $80
	cp a                                             ; $6309: $bf
	ld d, l                                          ; $630a: $55
	cp a                                             ; $630b: $bf
	ld e, a                                          ; $630c: $5f
	cp a                                             ; $630d: $bf
	sbc c                                            ; $630e: $99
	rst $38                                          ; $630f: $ff
	sub d                                            ; $6310: $92
	rst $38                                          ; $6311: $ff
	and e                                            ; $6312: $a3
	cp $ae                                           ; $6313: $fe $ae
	db $fd                                           ; $6315: $fd
	or [hl]                                          ; $6316: $b6
	db $fd                                           ; $6317: $fd
	call $8bfa                                       ; $6318: $cd $fa $8b
	db $fc                                           ; $631b: $fc
	dec a                                            ; $631c: $3d
	ld hl, sp+$09                                    ; $631d: $f8 $09
	ld sp, hl                                        ; $631f: $f9
	inc de                                           ; $6320: $13
	ld sp, hl                                        ; $6321: $f9
	dec de                                           ; $6322: $1b
	ldh a, [c]                                       ; $6323: $f2
	push de                                          ; $6324: $d5
	ldh a, [c]                                       ; $6325: $f2
	inc de                                           ; $6326: $13
	db $f4                                           ; $6327: $f4
	adc c                                            ; $6328: $89
	ld a, a                                          ; $6329: $7f
	db $f4                                           ; $632a: $f4
	rst FarCall                                          ; $632b: $f7
	db $fc                                           ; $632c: $fc
	dec hl                                           ; $632d: $2b
	db $fc                                           ; $632e: $fc
	add hl, hl                                       ; $632f: $29
	cp $ed                                           ; $6330: $fe $ed
	cp $2a                                           ; $6332: $fe $2a
	rst $38                                          ; $6334: $ff
	ld a, l                                          ; $6335: $7d
	rst $38                                          ; $6336: $ff
	sub l                                            ; $6337: $95
	sub a                                            ; $6338: $97
	dec d                                            ; $6339: $15
	rla                                              ; $633a: $17
	ld [de], a                                       ; $633b: $12
	ld [de], a                                       ; $633c: $12
	ld [bc], a                                       ; $633d: $02
	ld [bc], a                                       ; $633e: $02
	ld e, [hl]                                       ; $633f: $5e
	ld [hl], d                                       ; $6340: $72
	sbc b                                            ; $6341: $98
	ld h, b                                          ; $6342: $60
	ldh [rAUD1SWEEP], a                              ; $6343: $e0 $10
	ldh a, [$08]                                     ; $6345: $f0 $08
	ld hl, sp+$06                                    ; $6347: $f8 $06
	ld a, e                                          ; $6349: $7b
	sub e                                            ; $634a: $93
	sbc l                                            ; $634b: $9d
	inc bc                                           ; $634c: $03
	db $fc                                           ; $634d: $fc
	ld e, a                                          ; $634e: $5f
	cp $7b                                           ; $634f: $fe $7b
	add e                                            ; $6351: $83
	ld l, e                                          ; $6352: $6b
	cp $4e                                           ; $6353: $fe $4e
	ld b, h                                          ; $6355: $44
	sbc h                                            ; $6356: $9c
	ld a, h                                          ; $6357: $7c
	db $fc                                           ; $6358: $fc
	db $e3                                           ; $6359: $e3
	ld a, c                                          ; $635a: $79
	sbc a                                            ; $635b: $9f
	adc l                                            ; $635c: $8d
	call c, $fe80                                    ; $635d: $dc $80 $fe
	add b                                            ; $6360: $80
	rst $38                                          ; $6361: $ff
	add b                                            ; $6362: $80
	rst $38                                          ; $6363: $ff
	pop bc                                           ; $6364: $c1
	rst $38                                          ; $6365: $ff
	ld sp, hl                                        ; $6366: $f9
	rst JumpTable                                          ; $6367: $c7
	rst JumpTable                                          ; $6368: $c7
	add e                                            ; $6369: $83
	add e                                            ; $636a: $83
	cp c                                             ; $636b: $b9
	ld bc, $01fd                                     ; $636c: $01 $fd $01
	ld a, c                                          ; $636f: $79
	sub l                                            ; $6370: $95
	sub e                                            ; $6371: $93
	add e                                            ; $6372: $83
	ld a, a                                          ; $6373: $7f
	rst JumpTable                                          ; $6374: $c7
	cp l                                             ; $6375: $bd
	rst $38                                          ; $6376: $ff
	dec d                                            ; $6377: $15
	rst $38                                          ; $6378: $ff
	inc [hl]                                         ; $6379: $34
	rst $38                                          ; $637a: $ff
	ld h, h                                          ; $637b: $64
	rst $38                                          ; $637c: $ff
	and h                                            ; $637d: $a4
	ld a, e                                          ; $637e: $7b
	db $fc                                           ; $637f: $fc
	ld a, a                                          ; $6380: $7f
	cp $9e                                           ; $6381: $fe $9e
	xor c                                            ; $6383: $a9
	ld [hl], e                                       ; $6384: $73
	cp $84                                           ; $6385: $fe $84
	xor d                                            ; $6387: $aa
	rst $38                                          ; $6388: $ff
	ld e, e                                          ; $6389: $5b
	rst $38                                          ; $638a: $ff
	ld c, [hl]                                       ; $638b: $4e
	rst $38                                          ; $638c: $ff
	rst SubAFromHL                                          ; $638d: $d7
	ld l, h                                          ; $638e: $6c
	xor d                                            ; $638f: $aa
	ld [hl], a                                       ; $6390: $77
	and [hl]                                         ; $6391: $a6
	ld a, c                                          ; $6392: $79
	sub e                                            ; $6393: $93
	db $fc                                           ; $6394: $fc
	ld hl, sp-$01                                    ; $6395: $f8 $ff
	rra                                              ; $6397: $1f
	rst $38                                          ; $6398: $ff
	xor a                                            ; $6399: $af
	db $db                                           ; $639a: $db
	or l                                             ; $639b: $b5
	db $dd                                           ; $639c: $dd
	ld e, l                                          ; $639d: $5d
	ld [hl], l                                       ; $639e: $75
	add hl, hl                                       ; $639f: $29
	add hl, hl                                       ; $63a0: $29
	jr nz, jr_072_63ec                               ; $63a1: $20 $49

	db $e4                                           ; $63a3: $e4
	ld [hl], a                                       ; $63a4: $77
	ld [hl], h                                       ; $63a5: $74
	adc l                                            ; $63a6: $8d
	ld d, b                                          ; $63a7: $50
	ldh a, [rBCPS]                                   ; $63a8: $f0 $68
	ret c                                            ; $63aa: $d8

	ld [hl], h                                       ; $63ab: $74
	call z, $c47c                                    ; $63ac: $cc $7c $c4
	cp h                                             ; $63af: $bc
	ld h, h                                          ; $63b0: $64
	cp h                                             ; $63b1: $bc
	ld h, h                                          ; $63b2: $64
	cp [hl]                                          ; $63b3: $be
	ld h, [hl]                                       ; $63b4: $66
	cp d                                             ; $63b5: $ba
	ld h, [hl]                                       ; $63b6: $66
	xor l                                            ; $63b7: $ad
	ld [hl], e                                       ; $63b8: $73
	add hl, sp                                       ; $63b9: $39
	adc [hl]                                         ; $63ba: $8e
	sub a                                            ; $63bb: $97
	rst $38                                          ; $63bc: $ff
	rst SubAFromDE                                          ; $63bd: $df
	or b                                             ; $63be: $b0
	db $eb                                           ; $63bf: $eb
	sbc h                                            ; $63c0: $9c
	or l                                             ; $63c1: $b5
	adc $82                                          ; $63c2: $ce $82
	sbc $ff                                          ; $63c4: $de $ff
	ld [hl], h                                       ; $63c6: $74
	inc l                                            ; $63c7: $2c
	rst SubAFromDE                                          ; $63c8: $df
	add b                                            ; $63c9: $80
	rst SubAFromDE                                          ; $63ca: $df
	ldh [hDisp1_SCY], a                                     ; $63cb: $e0 $90
	ld e, b                                          ; $63cd: $58
	cp b                                             ; $63ce: $b8
	ld c, h                                          ; $63cf: $4c
	or h                                             ; $63d0: $b4
	or d                                             ; $63d1: $b2
	adc $4d                                          ; $63d2: $ce $4d
	rst FarCall                                          ; $63d4: $f7
	inc hl                                           ; $63d5: $23
	rst $38                                          ; $63d6: $ff
	rst SubAFromHL                                          ; $63d7: $d7
	cp e                                             ; $63d8: $bb
	rst FarCall                                          ; $63d9: $f7
	sbc c                                            ; $63da: $99
	rst AddAOntoHL                                          ; $63db: $ef
	ld a, e                                          ; $63dc: $7b
	cp $82                                           ; $63dd: $fe $82
	xor $9b                                          ; $63df: $ee $9b
	ld l, l                                          ; $63e1: $6d
	sbc a                                            ; $63e2: $9f
	ld l, [hl]                                       ; $63e3: $6e
	cp a                                             ; $63e4: $bf
	ld a, d                                          ; $63e5: $7a
	cp h                                             ; $63e6: $bc
	xor c                                            ; $63e7: $a9
	ld [hl], b                                       ; $63e8: $70
	and d                                            ; $63e9: $a2
	pop bc                                           ; $63ea: $c1
	sbc d                                            ; $63eb: $9a

jr_072_63ec:
	rlca                                             ; $63ec: $07
	ld [hl], a                                       ; $63ed: $77
	ld hl, sp-$3b                                    ; $63ee: $f8 $c5
	inc bc                                           ; $63f0: $03
	rst $38                                          ; $63f1: $ff
	rst $38                                          ; $63f2: $ff
	adc c                                            ; $63f3: $89
	ld a, a                                          ; $63f4: $7f
	dec a                                            ; $63f5: $3d
	rst $38                                          ; $63f6: $ff
	push de                                          ; $63f7: $d5
	rst FarCall                                          ; $63f8: $f7
	pop de                                           ; $63f9: $d1
	ld [hl], e                                       ; $63fa: $73
	ld b, d                                          ; $63fb: $42
	sbc $e2                                          ; $63fc: $de $e2
	rst SubAFromDE                                          ; $63fe: $df
	ld b, b                                          ; $63ff: $40
	rst SubAFromBC                                          ; $6400: $e7
	ld [hl], l                                       ; $6401: $75
	ld h, b                                          ; $6402: $60
	add b                                            ; $6403: $80
	xor b                                            ; $6404: $a8
	ld a, b                                          ; $6405: $78
	db $f4                                           ; $6406: $f4
	inc l                                            ; $6407: $2c
	ld e, h                                          ; $6408: $5c
	and h                                            ; $6409: $a4
	cp [hl]                                          ; $640a: $be
	and $7a                                          ; $640b: $e6 $7a
	ld h, [hl]                                       ; $640d: $66
	ld [hl], c                                       ; $640e: $71
	ld l, a                                          ; $640f: $6f
	dec a                                            ; $6410: $3d
	dec hl                                           ; $6411: $2b
	dec h                                            ; $6412: $25
	dec sp                                           ; $6413: $3b
	dec a                                            ; $6414: $3d
	inc sp                                           ; $6415: $33
	ccf                                              ; $6416: $3f
	inc sp                                           ; $6417: $33
	dec hl                                           ; $6418: $2b
	scf                                              ; $6419: $37
	db $fd                                           ; $641a: $fd
	rst SubAFromBC                                          ; $641b: $e7
	ld d, l                                          ; $641c: $55
	ld l, a                                          ; $641d: $6f
	ld a, d                                          ; $641e: $7a
	ld c, [hl]                                       ; $641f: $4e
	and [hl]                                         ; $6420: $a6
	jp c, $8e6e                                      ; $6421: $da $6e $8e

	or d                                             ; $6424: $b2
	call c, $b464                                    ; $6425: $dc $64 $b4
	call z, $18e8                                    ; $6428: $cc $e8 $18
	ret c                                            ; $642b: $d8

	jr c, jr_072_649e                                ; $642c: $38 $70

	ldh a, [$a0]                                     ; $642e: $f0 $a0
	ldh [$c0], a                                     ; $6430: $e0 $c0
	ld b, b                                          ; $6432: $40
	add b                                            ; $6433: $80
	add b                                            ; $6434: $80
	jp hl                                            ; $6435: $e9


	ld h, $00                                        ; $6436: $26 $00
	sub e                                            ; $6438: $93
	rst $38                                          ; $6439: $ff
	adc b                                            ; $643a: $88
	adc b                                            ; $643b: $88
	xor d                                            ; $643c: $aa
	xor d                                            ; $643d: $aa
	rst $38                                          ; $643e: $ff
	adc b                                            ; $643f: $88
	nop                                              ; $6440: $00
	sbc c                                            ; $6441: $99
	sbc c                                            ; $6442: $99
	ld h, [hl]                                       ; $6443: $66
	push de                                          ; $6444: $d5
	ld [hl], a                                       ; $6445: $77
	ei                                               ; $6446: $fb
	ld [hl], e                                       ; $6447: $73
	or $7f                                           ; $6448: $f6 $7f
	ei                                               ; $644a: $fb
	sbc l                                            ; $644b: $9d
	nop                                              ; $644c: $00
	ld [$fb7b], sp                                   ; $644d: $08 $7b $fb
	sub [hl]                                         ; $6450: $96
	adc b                                            ; $6451: $88
	xor $d5                                          ; $6452: $ee $d5
	ld d, l                                          ; $6454: $55
	ld [$88ee], sp                                   ; $6455: $08 $ee $88
	add b                                            ; $6458: $80
	ld [$88de], sp                                   ; $6459: $08 $de $88
	ld e, c                                          ; $645c: $59
	ld bc, $768a                                     ; $645d: $01 $8a $76
	rst SubAFromDE                                          ; $6460: $df
	ld a, [hl]                                       ; $6461: $7e
	db $d3                                           ; $6462: $d3
	rst $38                                          ; $6463: $ff
	add c                                            ; $6464: $81
	rst SubAFromDE                                          ; $6465: $df
	pop hl                                           ; $6466: $e1
	db $fd                                           ; $6467: $fd
	cp [hl]                                          ; $6468: $be
	res 5, d                                         ; $6469: $cb $aa
	db $d3                                           ; $646b: $d3
	ld [de], a                                       ; $646c: $12
	ccf                                              ; $646d: $3f
	ld a, $17                                        ; $646e: $3e $17
	inc a                                            ; $6470: $3c
	ld l, h                                          ; $6471: $6c
	jr c, jr_072_64a4                                ; $6472: $38 $30

	cp $94                                           ; $6474: $fe $94
	ld [$1c00], sp                                   ; $6476: $08 $00 $1c
	db $10                                           ; $6479: $10
	inc e                                            ; $647a: $1c
	db $10                                           ; $647b: $10
	ld [$0900], sp                                   ; $647c: $08 $00 $09
	rst $38                                          ; $647f: $ff
	add hl, de                                       ; $6480: $19
	ld a, e                                          ; $6481: $7b
	cp $86                                           ; $6482: $fe $86
	dec e                                            ; $6484: $1d
	rst FarCall                                          ; $6485: $f7
	sbc [hl]                                         ; $6486: $9e
	rst FarCall                                          ; $6487: $f7
	sbc [hl]                                         ; $6488: $9e
	di                                               ; $6489: $f3
	rst SubAFromDE                                          ; $648a: $df
	ld [hl], e                                       ; $648b: $73
	rst $38                                          ; $648c: $ff
	ld sp, $08ff                                     ; $648d: $31 $ff $08
	ei                                               ; $6490: $fb
	rlca                                             ; $6491: $07
	ld [hl], a                                       ; $6492: $77
	rrca                                             ; $6493: $0f
	add hl, sp                                       ; $6494: $39
	ld bc, $0212                                     ; $6495: $01 $12 $02
	inc bc                                           ; $6498: $03
	inc bc                                           ; $6499: $03
	ld bc, $0603                                     ; $649a: $01 $03 $06
	ld a, e                                          ; $649d: $7b

jr_072_649e:
	ei                                               ; $649e: $fb
	rst $38                                          ; $649f: $ff
	sub [hl]                                         ; $64a0: $96
	inc bc                                           ; $64a1: $03
	nop                                              ; $64a2: $00
	rlca                                             ; $64a3: $07

jr_072_64a4:
	nop                                              ; $64a4: $00
	rra                                              ; $64a5: $1f
	nop                                              ; $64a6: $00
	ld a, a                                          ; $64a7: $7f
	nop                                              ; $64a8: $00
	rst $38                                          ; $64a9: $ff
	ld l, e                                          ; $64aa: $6b
	cp $96                                           ; $64ab: $fe $96
	add a                                            ; $64ad: $87
	add b                                            ; $64ae: $80
	add c                                            ; $64af: $81
	add b                                            ; $64b0: $80
	rst JumpTable                                          ; $64b1: $c7
	rst JumpTable                                          ; $64b2: $c7
	db $fc                                           ; $64b3: $fc
	rst $38                                          ; $64b4: $ff
	ret nz                                           ; $64b5: $c0

	ld a, e                                          ; $64b6: $7b
	di                                               ; $64b7: $f3
	sbc h                                            ; $64b8: $9c
	jr nz, @+$01                                     ; $64b9: $20 $ff

	ld [hl+], a                                      ; $64bb: $22
	ld [hl], e                                       ; $64bc: $73
	cp $83                                           ; $64bd: $fe $83
	and d                                            ; $64bf: $a2
	rst $38                                          ; $64c0: $ff
	or d                                             ; $64c1: $b2
	rst $38                                          ; $64c2: $ff
	di                                               ; $64c3: $f3
	ld a, a                                          ; $64c4: $7f
	ei                                               ; $64c5: $fb
	ld l, a                                          ; $64c6: $6f
	ei                                               ; $64c7: $fb
	cpl                                              ; $64c8: $2f
	ld a, e                                          ; $64c9: $7b
	adc a                                            ; $64ca: $8f
	rst $38                                          ; $64cb: $ff
	add $7f                                          ; $64cc: $c6 $7f
	ld h, e                                          ; $64ce: $63
	ccf                                              ; $64cf: $3f
	ld hl, $f0ff                                     ; $64d0: $21 $ff $f0
	cp a                                             ; $64d3: $bf
	ldh a, [$7b]                                     ; $64d4: $f0 $7b
	call c, $80ff                                    ; $64d6: $dc $ff $80
	rst $38                                          ; $64d9: $ff
	ld bc, $fe73                                     ; $64da: $01 $73 $fe
	sbc h                                            ; $64dd: $9c
	inc bc                                           ; $64de: $03
	rst $38                                          ; $64df: $ff
	rlca                                             ; $64e0: $07
	ld a, e                                          ; $64e1: $7b
	db $fc                                           ; $64e2: $fc
	ld l, a                                          ; $64e3: $6f
	db $f4                                           ; $64e4: $f4
	ld a, a                                          ; $64e5: $7f
	cp $9e                                           ; $64e6: $fe $9e
	ccf                                              ; $64e8: $3f
	ld [hl], a                                       ; $64e9: $77
	call nz, $fe77                                   ; $64ea: $c4 $77 $fe
	adc d                                            ; $64ed: $8a
	ld e, [hl]                                       ; $64ee: $5e
	rst $38                                          ; $64ef: $ff
	halt                                             ; $64f0: $76
	db $db                                           ; $64f1: $db
	rst $38                                          ; $64f2: $ff
	add c                                            ; $64f3: $81
	rst $38                                          ; $64f4: $ff
	add c                                            ; $64f5: $81
	rst SubAFromBC                                          ; $64f6: $e7
	sbc b                                            ; $64f7: $98
	rst SubAFromDE                                          ; $64f8: $df
	cp h                                             ; $64f9: $bc
	rst FarCall                                          ; $64fa: $f7
	ld a, [hl]                                       ; $64fb: $7e

Call_072_64fc:
	inc hl                                           ; $64fc: $23
	ld [hl], $3f                                     ; $64fd: $36 $3f
	inc a                                            ; $64ff: $3c
	ld c, h                                          ; $6500: $4c
	jr c, jr_072_653b                                ; $6501: $38 $38

	inc de                                           ; $6503: $13
	ld h, b                                          ; $6504: $60
	ld a, a                                          ; $6505: $7f
	res 3, b                                         ; $6506: $cb $98
	ld a, e                                          ; $6508: $7b
	rlca                                             ; $6509: $07
	ccf                                              ; $650a: $3f
	rrca                                             ; $650b: $0f
	ld de, $0203                                     ; $650c: $11 $03 $02
	ld a, e                                          ; $650f: $7b
	ld e, [hl]                                       ; $6510: $5e
	ld a, a                                          ; $6511: $7f
	ld h, b                                          ; $6512: $60
	ccf                                              ; $6513: $3f
	add b                                            ; $6514: $80
	adc e                                            ; $6515: $8b
	ei                                               ; $6516: $fb
	rrca                                             ; $6517: $0f
	ld a, a                                          ; $6518: $7f
	add [hl]                                         ; $6519: $86
	cp a                                             ; $651a: $bf
	jp $e1df                                         ; $651b: $c3 $df $e1


	ld a, a                                          ; $651e: $7f
	ld h, b                                          ; $651f: $60
	rst $38                                          ; $6520: $ff
	ldh a, [$7f]                                     ; $6521: $f0 $7f
	ret c                                            ; $6523: $d8

	ld a, [hl]                                       ; $6524: $7e
	rst $38                                          ; $6525: $ff
	ld d, [hl]                                       ; $6526: $56
	rst $38                                          ; $6527: $ff
	db $fd                                           ; $6528: $fd
	add e                                            ; $6529: $83
	ld a, e                                          ; $652a: $7b
	sbc [hl]                                         ; $652b: $9e
	ld a, a                                          ; $652c: $7f
	ld a, b                                          ; $652d: $78
	sub [hl]                                         ; $652e: $96
	add b                                            ; $652f: $80
	rst SubAFromDE                                          ; $6530: $df
	ld h, b                                          ; $6531: $60
	ld a, a                                          ; $6532: $7f
	ld a, b                                          ; $6533: $78
	ld l, a                                          ; $6534: $6f
	inc a                                            ; $6535: $3c
	ld e, h                                          ; $6536: $5c
	inc a                                            ; $6537: $3c
	rlca                                             ; $6538: $07
	and b                                            ; $6539: $a0
	ld a, a                                          ; $653a: $7f

jr_072_653b:
	ld d, $96                                        ; $653b: $16 $96
	ccf                                              ; $653d: $3f
	nop                                              ; $653e: $00
	rra                                              ; $653f: $1f
	ld c, $07                                        ; $6540: $0e $07
	rrca                                             ; $6542: $0f
	ld [bc], a                                       ; $6543: $02
	rlca                                             ; $6544: $07
	rlca                                             ; $6545: $07
	inc bc                                           ; $6546: $03
	nop                                              ; $6547: $00
	scf                                              ; $6548: $37
	add b                                            ; $6549: $80
	sbc l                                            ; $654a: $9d
	rst $38                                          ; $654b: $ff
	ld b, $73                                        ; $654c: $06 $73
	ld d, $7f                                        ; $654e: $16 $7f
	db $e3                                           ; $6550: $e3
	sbc d                                            ; $6551: $9a
	add b                                            ; $6552: $80
	ld a, a                                          ; $6553: $7f
	ret nz                                           ; $6554: $c0

	rst $38                                          ; $6555: $ff
	ldh a, [rIF]                                     ; $6556: $f0 $0f
	nop                                              ; $6558: $00
	ld [hl], a                                       ; $6559: $77
	ld h, b                                          ; $655a: $60
	sbc l                                            ; $655b: $9d
	ld sp, hl                                        ; $655c: $f9
	add a                                            ; $655d: $87
	ld l, a                                          ; $655e: $6f
	ld h, b                                          ; $655f: $60
	ld a, a                                          ; $6560: $7f
	pop af                                           ; $6561: $f1
	sbc [hl]                                         ; $6562: $9e
	ld e, a                                          ; $6563: $5f
	ld a, e                                          ; $6564: $7b
	ld e, [hl]                                       ; $6565: $5e
	sbc [hl]                                         ; $6566: $9e
	ld a, h                                          ; $6567: $7c
	inc bc                                           ; $6568: $03
	ld h, b                                          ; $6569: $60
	ld [hl], e                                       ; $656a: $73
	ld h, b                                          ; $656b: $60
	sbc h                                            ; $656c: $9c
	nop                                              ; $656d: $00
	dec c                                            ; $656e: $0d
	ld c, $de                                        ; $656f: $0e $de
	rlca                                             ; $6571: $07
	rst SubAFromDE                                          ; $6572: $df
	inc bc                                           ; $6573: $03
	cp $03                                           ; $6574: $fe $03
	ld h, b                                          ; $6576: $60
	dec hl                                           ; $6577: $2b
	ld h, b                                          ; $6578: $60
	sbc e                                            ; $6579: $9b
	ld a, a                                          ; $657a: $7f
	add b                                            ; $657b: $80
	rst SubAFromDE                                          ; $657c: $df
	ldh [rTAC], a                                    ; $657d: $e0 $07
	ld h, b                                          ; $657f: $60
	ld a, a                                          ; $6580: $7f
	cp a                                             ; $6581: $bf
	sbc c                                            ; $6582: $99
	rst SubAFromHL                                          ; $6583: $d7
	jr c, @+$01                                      ; $6584: $38 $ff

	inc c                                            ; $6586: $0c
	rst SubAFromDE                                          ; $6587: $df
	jr nz, @+$79                                     ; $6588: $20 $77

	jp nc, $fc99                                     ; $658a: $d2 $99 $fc

	add e                                            ; $658d: $83
	add b                                            ; $658e: $80
	rst $38                                          ; $658f: $ff
	ld a, h                                          ; $6590: $7c
	ld a, a                                          ; $6591: $7f
	ld [hl], e                                       ; $6592: $73
	adc l                                            ; $6593: $8d

jr_072_6594:
	db $fc                                           ; $6594: $fc
	rst SubAFromDE                                          ; $6595: $df
	inc bc                                           ; $6596: $03
	rst SubAFromDE                                          ; $6597: $df
	rst $38                                          ; $6598: $ff
	sbc c                                            ; $6599: $99
	rst AddAOntoHL                                          ; $659a: $ef
	jr nc, jr_072_6594                               ; $659b: $30 $f7

	jr c, @+$01                                      ; $659d: $38 $ff

	inc e                                            ; $659f: $1c
	rla                                              ; $65a0: $17
	ldh [$97], a                                     ; $65a1: $e0 $97
	rst $38                                          ; $65a3: $ff
	jr c, @+$01                                      ; $65a4: $38 $ff

	inc a                                            ; $65a6: $3c
	rst $38                                          ; $65a7: $ff
	nop                                              ; $65a8: $00
	rst SubAFromDE                                          ; $65a9: $df
	jr nz, jr_072_65c3                               ; $65aa: $20 $17

	ldh [$7b], a                                     ; $65ac: $e0 $7b
	cp h                                             ; $65ae: $bc
	ld a, a                                          ; $65af: $7f
	inc b                                            ; $65b0: $04
	sbc [hl]                                         ; $65b1: $9e
	and b                                            ; $65b2: $a0
	scf                                              ; $65b3: $37
	ldh [rAUD3LEVEL], a                              ; $65b4: $e0 $1c
	inc bc                                           ; $65b6: $03
	jp hl                                            ; $65b7: $e9


	rst SubAFromDE                                          ; $65b8: $df
	ld bc, $0293                                     ; $65b9: $01 $93 $02
	inc bc                                           ; $65bc: $03
	ld [bc], a                                       ; $65bd: $02
	inc bc                                           ; $65be: $03
	ld b, $05                                        ; $65bf: $06 $05
	ld b, $05                                        ; $65c1: $06 $05

jr_072_65c3:
	ld a, [bc]                                       ; $65c3: $0a
	dec c                                            ; $65c4: $0d
	rrca                                             ; $65c5: $0f
	ld [$fe77], sp                                   ; $65c6: $08 $77 $fe
	sub e                                            ; $65c9: $93
	dec bc                                           ; $65ca: $0b
	inc c                                            ; $65cb: $0c
	dec bc                                           ; $65cc: $0b
	inc c                                            ; $65cd: $0c
	dec c                                            ; $65ce: $0d
	ld c, $0a                                        ; $65cf: $0e $0a
	rrca                                             ; $65d1: $0f
	inc b                                            ; $65d2: $04
	rlca                                             ; $65d3: $07
	dec b                                            ; $65d4: $05
	ld b, $77                                        ; $65d5: $06 $77
	db $e4                                           ; $65d7: $e4
	rst SubAFromDE                                          ; $65d8: $df
	ld bc, $dfed                                     ; $65d9: $01 $ed $df
	rlca                                             ; $65dc: $07
	adc b                                            ; $65dd: $88
	dec e                                            ; $65de: $1d
	ld e, $6b                                        ; $65df: $1e $6b
	ld a, h                                          ; $65e1: $7c
	xor a                                            ; $65e2: $af
	ret c                                            ; $65e3: $d8

	push af                                          ; $65e4: $f5
	sbc e                                            ; $65e5: $9b
	rst $38                                          ; $65e6: $ff
	sub e                                            ; $65e7: $93
	ld a, [hl]                                       ; $65e8: $7e
	sub [hl]                                         ; $65e9: $96
	ld e, b                                          ; $65ea: $58
	cp b                                             ; $65eb: $b8
	ld d, b                                          ; $65ec: $50
	or b                                             ; $65ed: $b0
	ld d, b                                          ; $65ee: $50
	or b                                             ; $65ef: $b0
	ldh [$a0], a                                     ; $65f0: $e0 $a0
	and b                                            ; $65f2: $a0
	ldh [$60], a                                     ; $65f3: $e0 $60
	ld a, e                                          ; $65f5: $7b
	cp $80                                           ; $65f6: $fe $80
	and b                                            ; $65f8: $a0
	ld h, b                                          ; $65f9: $60

jr_072_65fa:
	and b                                            ; $65fa: $a0
	ld h, b                                          ; $65fb: $60
	ldh [rAUD4LEN], a                                ; $65fc: $e0 $20
	ld d, b                                          ; $65fe: $50
	or b                                             ; $65ff: $b0
	jr z, jr_072_65fa                                ; $6600: $28 $f8

	sbc $3e                                          ; $6602: $de $3e
	dec a                                            ; $6604: $3d
	jp $bf40                                         ; $6605: $c3 $40 $bf


	cp a                                             ; $6608: $bf
	ret nz                                           ; $6609: $c0

	ld c, a                                          ; $660a: $4f
	ld [hl], b                                       ; $660b: $70
	inc sp                                           ; $660c: $33
	ccf                                              ; $660d: $3f
	ld a, $3f                                        ; $660e: $3e $3f
	dec h                                            ; $6610: $25
	ccf                                              ; $6611: $3f
	ld c, b                                          ; $6612: $48
	ld a, a                                          ; $6613: $7f
	ld d, e                                          ; $6614: $53
	ld a, h                                          ; $6615: $7c
	cp l                                             ; $6616: $bd
	adc [hl]                                         ; $6617: $8e
	di                                               ; $6618: $f3
	sbc $df                                          ; $6619: $de $df
	sub [hl]                                         ; $661b: $96
	sbc e                                            ; $661c: $9b
	rla                                              ; $661d: $17
	ld a, [de]                                       ; $661e: $1a
	rla                                              ; $661f: $17
	ld a, [de]                                       ; $6620: $1a
	ld d, $1b                                        ; $6621: $16 $1b
	ld d, $1b                                        ; $6623: $16 $1b
	dec bc                                           ; $6625: $0b
	rrca                                             ; $6626: $0f
	dec bc                                           ; $6627: $0b
	rrca                                             ; $6628: $0f
	db $dd                                           ; $6629: $dd
	dec b                                            ; $662a: $05
	rst $38                                          ; $662b: $ff
	rst SubAFromDE                                          ; $662c: $df
	inc bc                                           ; $662d: $03
	ld a, a                                          ; $662e: $7f
	sub b                                            ; $662f: $90
	ld a, a                                          ; $6630: $7f
	add [hl]                                         ; $6631: $86
	adc l                                            ; $6632: $8d
	ld d, $1f                                        ; $6633: $16 $1f
	dec l                                            ; $6635: $2d
	inc sp                                           ; $6636: $33
	ccf                                              ; $6637: $3f
	jr nz, jr_072_6699                               ; $6638: $20 $5f

	ld h, b                                          ; $663a: $60
	ld b, a                                          ; $663b: $47
	ld a, b                                          ; $663c: $78
	ld b, c                                          ; $663d: $41
	ld a, [hl]                                       ; $663e: $7e
	ld hl, sp-$79                                    ; $663f: $f8 $87
	cp $81                                           ; $6641: $fe $81
	rst $38                                          ; $6643: $ff
	add b                                            ; $6644: $80

jr_072_6645:
	ld l, a                                          ; $6645: $6f
	cp $f1                                           ; $6646: $fe $f1
	rst SubAFromDE                                          ; $6648: $df
	ldh [hLCDCIntHandlerIdx], a                                     ; $6649: $e0 $81
	jr c, jr_072_6645                                ; $664b: $38 $f8

	ld b, [hl]                                       ; $664d: $46
	cp $8d                                           ; $664e: $fe $8d
	rst $38                                          ; $6650: $ff
	inc sp                                           ; $6651: $33
	cp $c7                                           ; $6652: $fe $c7
	db $fc                                           ; $6654: $fc
	ld l, a                                          ; $6655: $6f
	ld a, b                                          ; $6656: $78
	ld e, $19                                        ; $6657: $1e $19
	dec c                                            ; $6659: $0d
	ld a, [bc]                                       ; $665a: $0a
	ld c, $09                                        ; $665b: $0e $09
	rlca                                             ; $665d: $07
	inc b                                            ; $665e: $04
	rrca                                             ; $665f: $0f
	rrca                                             ; $6660: $0f
	rra                                              ; $6661: $1f
	ld de, $253b                                     ; $6662: $11 $3b $25
	halt                                             ; $6665: $76
	ld c, e                                          ; $6666: $4b
	ld a, d                                          ; $6667: $7a
	ld b, a                                          ; $6668: $47
	ld [hl], a                                       ; $6669: $77
	db $fc                                           ; $666a: $fc
	add b                                            ; $666b: $80
	dec a                                            ; $666c: $3d
	inc hl                                           ; $666d: $23
	rra                                              ; $666e: $1f
	ld de, rIE                                     ; $666f: $11 $ff $ff
	rlca                                             ; $6672: $07
	rst $38                                          ; $6673: $ff
	add hl, de                                       ; $6674: $19
	rst $38                                          ; $6675: $ff
	ld h, c                                          ; $6676: $61
	rst $38                                          ; $6677: $ff
	add c                                            ; $6678: $81
	rst $38                                          ; $6679: $ff
	rra                                              ; $667a: $1f
	rst $38                                          ; $667b: $ff
	db $ec                                           ; $667c: $ec
	rst $38                                          ; $667d: $ff
	sub $3d                                          ; $667e: $d6 $3d
	ld l, [hl]                                       ; $6680: $6e
	db $fd                                           ; $6681: $fd
	or a                                             ; $6682: $b7
	call c, $be65                                    ; $6683: $dc $65 $be

jr_072_6686:
	db $dd                                           ; $6686: $dd
	ld h, [hl]                                       ; $6687: $66
	db $f4                                           ; $6688: $f4
	ld c, a                                          ; $6689: $4f
	ld a, [$4f8f]                                    ; $668a: $fa $8f $4f
	jp c, $db6f                                      ; $668d: $da $6f $db

	ld l, a                                          ; $6690: $6f
	dec hl                                           ; $6691: $2b
	rst $38                                          ; $6692: $ff
	dec hl                                           ; $6693: $2b
	rst $38                                          ; $6694: $ff
	ld l, d                                          ; $6695: $6a
	rst $38                                          ; $6696: $ff
	ld d, l                                          ; $6697: $55
	push de                                          ; $6698: $d5

jr_072_6699:
	sub h                                            ; $6699: $94
	sub h                                            ; $669a: $94
	add b                                            ; $669b: $80
	ld b, e                                          ; $669c: $43
	sbc h                                            ; $669d: $9c
	ei                                               ; $669e: $fb
	rst SubAFromDE                                          ; $669f: $df
	inc bc                                           ; $66a0: $03
	ld a, [hl]                                       ; $66a1: $7e
	ldh a, [c]                                       ; $66a2: $f2
	add h                                            ; $66a3: $84
	scf                                              ; $66a4: $37
	jr c, jr_072_6686                                ; $66a5: $38 $df

	ldh [$3f], a                                     ; $66a7: $e0 $3f
	add b                                            ; $66a9: $80
	sbc a                                            ; $66aa: $9f
	nop                                              ; $66ab: $00
	rst GetHLinHL                                          ; $66ac: $cf

jr_072_66ad:
	nop                                              ; $66ad: $00
	rst SubAFromBC                                          ; $66ae: $e7
	nop                                              ; $66af: $00
	or e                                             ; $66b0: $b3
	ret nz                                           ; $66b1: $c0

	ld e, c                                          ; $66b2: $59
	ldh [$ec], a                                     ; $66b3: $e0 $ec
	jr nc, jr_072_66ad                               ; $66b5: $30 $f6

	jr @-$03                                         ; $66b7: $18 $fb

	inc c                                            ; $66b9: $0c
	push hl                                          ; $66ba: $e5
	ld e, $02                                        ; $66bb: $1e $02
	rst $38                                          ; $66bd: $ff
	ld bc, $fe7b                                     ; $66be: $01 $7b $fe
	sbc e                                            ; $66c1: $9b
	nop                                              ; $66c2: $00
	rst $38                                          ; $66c3: $ff
	add b                                            ; $66c4: $80
	ld a, a                                          ; $66c5: $7f
	db $eb                                           ; $66c6: $eb
	rst SubAFromDE                                          ; $66c7: $df
	ldh [$80], a                                     ; $66c8: $e0 $80
	pop af                                           ; $66ca: $f1
	ld de, $4fbe                                     ; $66cb: $11 $be $4f
	ld e, b                                          ; $66ce: $58
	cp a                                             ; $66cf: $bf
	sub a                                            ; $66d0: $97
	ld a, a                                          ; $66d1: $7f
	cp e                                             ; $66d2: $bb
	ld a, h                                          ; $66d3: $7c
	ld l, [hl]                                       ; $66d4: $6e
	pop af                                           ; $66d5: $f1
	cp c                                             ; $66d6: $b9
	add $e4                                          ; $66d7: $c6 $e4
	sbc b                                            ; $66d9: $98
	ld c, b                                          ; $66da: $48
	or b                                             ; $66db: $b0
	sub c                                            ; $66dc: $91
	ld h, b                                          ; $66dd: $60
	pop hl                                           ; $66de: $e1
	ld b, b                                          ; $66df: $40
	ld l, e                                          ; $66e0: $6b
	ret nz                                           ; $66e1: $c0

	adc d                                            ; $66e2: $8a
	pop bc                                           ; $66e3: $c1
	sbc d                                            ; $66e4: $9a
	pop bc                                           ; $66e5: $c1
	ld d, l                                          ; $66e6: $55
	add d                                            ; $66e7: $82
	ld h, h                                          ; $66e8: $64
	sub h                                            ; $66e9: $94
	sub d                                            ; $66ea: $92
	ld h, h                                          ; $66eb: $64
	sub d                                            ; $66ec: $92
	ld h, b                                          ; $66ed: $60
	sub [hl]                                         ; $66ee: $96
	ld e, c                                          ; $66ef: $59
	or [hl]                                          ; $66f0: $b6
	ld e, l                                          ; $66f1: $5d
	or [hl]                                          ; $66f2: $b6
	sub h                                            ; $66f3: $94
	rst $38                                          ; $66f4: $ff
	ld [hl], a                                       ; $66f5: $77
	cp $80                                           ; $66f6: $fe $80
	ld d, h                                          ; $66f8: $54
	rst $38                                          ; $66f9: $ff
	ld c, h                                          ; $66fa: $4c
	rst $38                                          ; $66fb: $ff
	inc l                                            ; $66fc: $2c
	rst $38                                          ; $66fd: $ff
	inc [hl]                                         ; $66fe: $34
	rst $38                                          ; $66ff: $ff
	ld e, l                                          ; $6700: $5d
	rst SubAFromDE                                          ; $6701: $df
	cp a                                             ; $6702: $bf
	sbc [hl]                                         ; $6703: $9e
	or a                                             ; $6704: $b7
	sbc h                                            ; $6705: $9c
	or $9c                                           ; $6706: $f6 $9c
	ld [hl], h                                       ; $6708: $74
	adc h                                            ; $6709: $8c
	db $f4                                           ; $670a: $f4
	call z, $fcb4                                    ; $670b: $cc $b4 $fc
	call z, Call_072_64fc                            ; $670e: $cc $fc $64
	db $fc                                           ; $6711: $fc
	cp a                                             ; $6712: $bf
	cp h                                             ; $6713: $bc
	sbc a                                            ; $6714: $9f
	sbc [hl]                                         ; $6715: $9e
	add a                                            ; $6716: $87
	sbc [hl]                                         ; $6717: $9e
	add [hl]                                         ; $6718: $86
	call c, Call_072_7a03                            ; $6719: $dc $03 $7a
	ld l, e                                          ; $671c: $6b
	adc l                                            ; $671d: $8d
	rlca                                             ; $671e: $07
	ld b, $0f                                        ; $671f: $06 $0f
	inc c                                            ; $6721: $0c
	rla                                              ; $6722: $17
	inc e                                            ; $6723: $1c
	daa                                              ; $6724: $27
	inc a                                            ; $6725: $3c
	ld c, a                                          ; $6726: $4f
	ld a, b                                          ; $6727: $78
	adc a                                            ; $6728: $8f
	ld hl, sp+$07                                    ; $6729: $f8 $07
	db $fc                                           ; $672b: $fc
	inc bc                                           ; $672c: $03
	cp $01                                           ; $672d: $fe $01
	rst $38                                          ; $672f: $ff
	ld a, e                                          ; $6730: $7b
	ld a, e                                          ; $6731: $7b
	ld d, e                                          ; $6732: $53
	cp $7f                                           ; $6733: $fe $7f
	ld l, a                                          ; $6735: $6f
	sbc l                                            ; $6736: $9d
	ccf                                              ; $6737: $3f
	nop                                              ; $6738: $00
	ld [hl], a                                       ; $6739: $77
	ld d, b                                          ; $673a: $50
	sub a                                            ; $673b: $97
	ld h, a                                          ; $673c: $67
	add b                                            ; $673d: $80
	ld [hl], e                                       ; $673e: $73
	add b                                            ; $673f: $80
	cp c                                             ; $6740: $b9
	ret nz                                           ; $6741: $c0

	ld a, b                                          ; $6742: $78
	ret nz                                           ; $6743: $c0

	db $eb                                           ; $6744: $eb
	rst SubAFromDE                                          ; $6745: $df
	ccf                                              ; $6746: $3f
	sbc [hl]                                         ; $6747: $9e
	ret nz                                           ; $6748: $c0

	ld a, e                                          ; $6749: $7b
	add $80                                          ; $674a: $c6 $80
	ldh a, [rIF]                                     ; $674c: $f0 $0f
	rrca                                             ; $674e: $0f
	ldh a, [$e6]                                     ; $674f: $f0 $e6
	ld bc, $0699                                     ; $6751: $01 $99 $06
	ld sp, $7208                                     ; $6754: $31 $08 $72
	ld bc, $06e1                                     ; $6757: $01 $e1 $06
	push bc                                          ; $675a: $c5
	ld [$019a], sp                                   ; $675b: $08 $9a $01
	sub b                                            ; $675e: $90
	ld [bc], a                                       ; $675f: $02
	inc b                                            ; $6760: $04
	ld [bc], a                                       ; $6761: $02
	ld h, d                                          ; $6762: $62
	inc b                                            ; $6763: $04
	ld c, b                                          ; $6764: $48
	inc h                                            ; $6765: $24
	ret                                              ; $6766: $c9


	inc h                                            ; $6767: $24
	pop bc                                           ; $6768: $c1
	inc l                                            ; $6769: $2c

jr_072_676a:
	sub e                                            ; $676a: $93
	sbc d                                            ; $676b: $9a
	ld l, h                                          ; $676c: $6c
	sub [hl]                                         ; $676d: $96
	ld l, l                                          ; $676e: $6d
	ld b, [hl]                                       ; $676f: $46
	db $fd                                           ; $6770: $fd
	ldh [$c1], a                                     ; $6771: $e0 $c1
	sub [hl]                                         ; $6773: $96
	add e                                            ; $6774: $83
	add b                                            ; $6775: $80
	ld b, e                                          ; $6776: $43
	ret nz                                           ; $6777: $c0

	jr nc, jr_072_676a                               ; $6778: $30 $f0

	ld [$03f8], sp                                   ; $677a: $08 $f8 $03
	ld [hl], d                                       ; $677d: $72
	ret nc                                           ; $677e: $d0

	ld c, a                                          ; $677f: $4f
	cp $9c                                           ; $6780: $fe $9c
	ld bc, $fffe                                     ; $6782: $01 $fe $ff
	ld [$80df], a                                    ; $6785: $ea $df $80
	add b                                            ; $6788: $80
	ld [hl], b                                       ; $6789: $70
	ldh a, [$ef]                                     ; $678a: $f0 $ef
	rra                                              ; $678c: $1f
	dec [hl]                                         ; $678d: $35
	rst GetHLinHL                                          ; $678e: $cf
	swap a                                           ; $678f: $cb $37
	nop                                              ; $6791: $00
	rst $38                                          ; $6792: $ff
	db $fc                                           ; $6793: $fc
	inc bc                                           ; $6794: $03
	add b                                            ; $6795: $80
	ld a, a                                          ; $6796: $7f
	ld a, b                                          ; $6797: $78
	add a                                            ; $6798: $87
	rst SubAFromBC                                          ; $6799: $e7
	nop                                              ; $679a: $00
	adc [hl]                                         ; $679b: $8e
	nop                                              ; $679c: $00
	dec e                                            ; $679d: $1d
	nop                                              ; $679e: $00
	ld a, [hl+]                                      ; $679f: $2a
	ld de, $3142                                     ; $67a0: $11 $42 $31
	jp nc, $8621                                     ; $67a3: $d2 $21 $86

	ld h, c                                          ; $67a6: $61
	add h                                            ; $67a7: $84
	sub [hl]                                         ; $67a8: $96
	ld h, e                                          ; $67a9: $63
	dec b                                            ; $67aa: $05
	db $e3                                           ; $67ab: $e3
	ld c, l                                          ; $67ac: $4d
	db $e3                                           ; $67ad: $e3
	ld c, d                                          ; $67ae: $4a
	rst SubAFromBC                                          ; $67af: $e7
	ld d, d                                          ; $67b0: $52
	rst AddAOntoHL                                          ; $67b1: $ef
	ldh [$c1], a                                     ; $67b2: $e0 $c1
	adc d                                            ; $67b4: $8a
	jp $8703                                         ; $67b5: $c3 $03 $87


	rlca                                             ; $67b8: $07
	jr c, jr_072_67fa                                ; $67b9: $38 $3f

	jp $1efc                                         ; $67bb: $c3 $fc $1e


	pop hl                                           ; $67be: $e1
	ld [hl], b                                       ; $67bf: $70
	adc a                                            ; $67c0: $8f
	ret nz                                           ; $67c1: $c0

	cp a                                             ; $67c2: $bf
	ld h, b                                          ; $67c3: $60
	rst $38                                          ; $67c4: $ff
	db $10                                           ; $67c5: $10
	rst $38                                          ; $67c6: $ff
	ld [$06ff], sp                                   ; $67c7: $08 $ff $06
	ld l, e                                          ; $67ca: $6b
	ld d, h                                          ; $67cb: $54
	ld a, [hl]                                       ; $67cc: $7e
	ldh [$27], a                                     ; $67cd: $e0 $27
	ld h, b                                          ; $67cf: $60
	ld [hl], a                                       ; $67d0: $77
	ld e, [hl]                                       ; $67d1: $5e
	ld a, l                                          ; $67d2: $7d
	dec d                                            ; $67d3: $15
	add b                                            ; $67d4: $80
	ret c                                            ; $67d5: $d8

	ld a, b                                          ; $67d6: $78
	rst GetHLinHL                                          ; $67d7: $cf
	ld a, a                                          ; $67d8: $7f
	rst FarCall                                          ; $67d9: $f7
	ld a, h                                          ; $67da: $7c
	jp hl                                            ; $67db: $e9


	ld e, a                                          ; $67dc: $5f
	ld e, a                                          ; $67dd: $5f
	ldh a, [$1f]                                     ; $67de: $f0 $1f
	ldh [$31], a                                     ; $67e0: $e0 $31
	ret nz                                           ; $67e2: $c0

	call c, Call_072_4a00                            ; $67e3: $dc $00 $4a
	inc b                                            ; $67e6: $04
	ld h, l                                          ; $67e7: $65
	ld [bc], a                                       ; $67e8: $02
	inc h                                            ; $67e9: $24
	inc bc                                           ; $67ea: $03
	ld [bc], a                                       ; $67eb: $02
	ld bc, $0132                                     ; $67ec: $01 $32 $01
	ld [de], a                                       ; $67ef: $12
	ld hl, $215b                                     ; $67f0: $21 $5b $21
	ld c, c                                          ; $67f3: $49
	sbc d                                            ; $67f4: $9a
	inc sp                                           ; $67f5: $33
	dec l                                            ; $67f6: $2d
	ld [hl], e                                       ; $67f7: $73
	xor c                                            ; $67f8: $a9
	ld [hl], a                                       ; $67f9: $77

jr_072_67fa:
	ldh [$c0], a                                     ; $67fa: $e0 $c0
	ld [hl], l                                       ; $67fc: $75
	sbc d                                            ; $67fd: $9a
	sub [hl]                                         ; $67fe: $96
	rst $38                                          ; $67ff: $ff
	or b                                             ; $6800: $b0

jr_072_6801:
	rst GetHLinHL                                          ; $6801: $cf
	ld a, a                                          ; $6802: $7f
	ret nz                                           ; $6803: $c0

	ld a, a                                          ; $6804: $7f
	ret nz                                           ; $6805: $c0

	rst SubAFromDE                                          ; $6806: $df
	ld h, b                                          ; $6807: $60
	ld [hl], a                                       ; $6808: $77
	cp $7f                                           ; $6809: $fe $7f
	ld e, e                                          ; $680b: $5b
	adc h                                            ; $680c: $8c
	xor a                                            ; $680d: $af
	ld [hl], b                                       ; $680e: $70
	jr z, jr_072_6801                                ; $680f: $28 $f0

	and b                                            ; $6811: $a0
	ldh a, [rPCM34]                                  ; $6812: $f0 $77
	ldh [$ad], a                                     ; $6814: $e0 $ad
	ld [hl], e                                       ; $6816: $73
	ld e, $3f                                        ; $6817: $1e $3f
	ldh [$e0], a                                     ; $6819: $e0 $e0
	sbc b                                            ; $681b: $98
	ld hl, sp-$09                                    ; $681c: $f8 $f7
	rrca                                             ; $681e: $0f
	db $fd                                           ; $681f: $fd
	ld [hl], l                                       ; $6820: $75
	push af                                          ; $6821: $f5
	adc d                                            ; $6822: $8a
	nop                                              ; $6823: $00
	cp a                                             ; $6824: $bf
	ld b, b                                          ; $6825: $40
	jp c, $db25                                      ; $6826: $da $25 $db

	inc h                                            ; $6829: $24
	ret                                              ; $682a: $c9


	ld [hl], $ed                                     ; $682b: $36 $ed
	ld [de], a                                       ; $682d: $12
	db $ed                                           ; $682e: $ed
	ld [de], a                                       ; $682f: $12
	ld l, a                                          ; $6830: $6f
	sub d                                            ; $6831: $92
	ld e, a                                          ; $6832: $5f
	or d                                             ; $6833: $b2
	ld e, e                                          ; $6834: $5b
	or [hl]                                          ; $6835: $b6
	ld a, [de]                                       ; $6836: $1a
	rst FarCall                                          ; $6837: $f7
	ldh [$c1], a                                     ; $6838: $e0 $c1
	add b                                            ; $683a: $80
	dec h                                            ; $683b: $25
	rst SubAFromDE                                          ; $683c: $df
	inc d                                            ; $683d: $14
	rst GetHLinHL                                          ; $683e: $cf
	inc d                                            ; $683f: $14
	rst GetHLinHL                                          ; $6840: $cf
	ld l, d                                          ; $6841: $6a
	add a                                            ; $6842: $87
	ld [$e607], a                                    ; $6843: $ea $07 $e6
	inc bc                                           ; $6846: $03
	push hl                                          ; $6847: $e5
	inc bc                                           ; $6848: $03
	pop af                                           ; $6849: $f1
	inc bc                                           ; $684a: $03
	di                                               ; $684b: $f3
	ld bc, $01f2                                     ; $684c: $01 $f2 $01
	ld [bc], a                                       ; $684f: $02
	ld bc, $011e                                     ; $6850: $01 $1e $01
	rst FarCall                                          ; $6853: $f7
	rrca                                             ; $6854: $0f
	cp b                                             ; $6855: $b8
	ld a, a                                          ; $6856: $7f
	jp $07fc                                         ; $6857: $c3 $fc $07


	add b                                            ; $685a: $80
	ld hl, sp+$3e                                    ; $685b: $f8 $3e
	ld a, $c5                                        ; $685d: $3e $c5
	rst $38                                          ; $685f: $ff
	ld [bc], a                                       ; $6860: $02
	rst $38                                          ; $6861: $ff
	ldh [c], a                                       ; $6862: $e2
	rst $38                                          ; $6863: $ff
	ld sp, hl                                        ; $6864: $f9
	sbc a                                            ; $6865: $9f
	ld a, l                                          ; $6866: $7d
	rst GetHLinHL                                          ; $6867: $cf
	ld a, e                                          ; $6868: $7b
	srl e                                            ; $6869: $cb $3b
	db $eb                                           ; $686b: $eb
	cp c                                             ; $686c: $b9
	jp hl                                            ; $686d: $e9


	sub c                                            ; $686e: $91
	pop af                                           ; $686f: $f1
	ld d, c                                          ; $6870: $51
	pop af                                           ; $6871: $f1
	ld d, d                                          ; $6872: $52
	di                                               ; $6873: $f3
	ld d, e                                          ; $6874: $53

jr_072_6875:
	di                                               ; $6875: $f3
	ld d, [hl]                                       ; $6876: $56
	rst FarCall                                          ; $6877: $f7
	ld e, h                                          ; $6878: $5c
	rst $38                                          ; $6879: $ff
	add b                                            ; $687a: $80
	ld d, c                                          ; $687b: $51
	rst $38                                          ; $687c: $ff
	and b                                            ; $687d: $a0
	rst $38                                          ; $687e: $ff
	cp e                                             ; $687f: $bb
	db $fc                                           ; $6880: $fc
	call c, $83e3                                    ; $6881: $dc $e3 $83
	rst $38                                          ; $6884: $ff
	db $fc                                           ; $6885: $fc
	db $fc                                           ; $6886: $fc
	ld l, b                                          ; $6887: $68
	sbc b                                            ; $6888: $98
	ldh a, [$f0]                                     ; $6889: $f0 $f0
	db $10                                           ; $688b: $10
	ldh a, [hDisp1_SCY]                                     ; $688c: $f0 $90
	ldh a, [rOBP0]                                   ; $688e: $f0 $48
	ld hl, sp+$68                                    ; $6890: $f8 $68

jr_072_6892:
	ld hl, sp+$34                                    ; $6892: $f8 $34
	db $fc                                           ; $6894: $fc
	sbc d                                            ; $6895: $9a
	cp $ef                                           ; $6896: $fe $ef
	rst $38                                          ; $6898: $ff
	sbc b                                            ; $6899: $98
	sbc [hl]                                         ; $689a: $9e
	sbc b                                            ; $689b: $98
	ld [hl], h                                       ; $689c: $74
	add h                                            ; $689d: $84
	db $dd                                           ; $689e: $dd
	add b                                            ; $689f: $80
	sbc l                                            ; $68a0: $9d
	ld b, b                                          ; $68a1: $40
	ret nz                                           ; $68a2: $c0

	ld e, a                                          ; $68a3: $5f
	cp $d7                                           ; $68a4: $fe $d7
	add b                                            ; $68a6: $80
	ld a, a                                          ; $68a7: $7f
	db $f4                                           ; $68a8: $f4
	ld a, a                                          ; $68a9: $7f
	pop af                                           ; $68aa: $f1
	ld [hl], a                                       ; $68ab: $77
	ldh [$7f], a                                     ; $68ac: $e0 $7f
	ld a, [$a081]                                    ; $68ae: $fa $81 $a0
	ld h, b                                          ; $68b1: $60
	and b                                            ; $68b2: $a0
	ld h, b                                          ; $68b3: $60
	ret nc                                           ; $68b4: $d0

	ld [hl], b                                       ; $68b5: $70
	ldh a, [$50]                                     ; $68b6: $f0 $50
	jr z, jr_072_6892                                ; $68b8: $28 $d8

	ret c                                            ; $68ba: $d8

	xor b                                            ; $68bb: $a8
	ld e, b                                          ; $68bc: $58
	xor b                                            ; $68bd: $a8
	cp b                                             ; $68be: $b8
	ld c, b                                          ; $68bf: $48
	add sp, -$68                                     ; $68c0: $e8 $98
	ret nc                                           ; $68c2: $d0

	jr nc, jr_072_6875                               ; $68c3: $30 $b0

	ld [hl], b                                       ; $68c5: $70
	ld d, b                                          ; $68c6: $50
	ldh a, [$a0]                                     ; $68c7: $f0 $a0
	ldh [$a0], a                                     ; $68c9: $e0 $a0
	ld h, b                                          ; $68cb: $60
	ret nz                                           ; $68cc: $c0

	ld b, b                                          ; $68cd: $40
	inc h                                            ; $68ce: $24
	ld a, $fd                                        ; $68cf: $3e $fd
	rra                                              ; $68d1: $1f
	nop                                              ; $68d2: $00
	call c, $8f88                                    ; $68d3: $dc $88 $8f
	rst $38                                          ; $68d6: $ff
	xor d                                            ; $68d7: $aa
	xor d                                            ; $68d8: $aa
	adc b                                            ; $68d9: $88
	rst $38                                          ; $68da: $ff
	ld [hl], a                                       ; $68db: $77
	xor d                                            ; $68dc: $aa
	nop                                              ; $68dd: $00
	ld de, $77cc                                     ; $68de: $11 $cc $77
	adc b                                            ; $68e1: $88
	nop                                              ; $68e2: $00
	sbc c                                            ; $68e3: $99
	sbc c                                            ; $68e4: $99
	ld b, h                                          ; $68e5: $44
	ld h, e                                          ; $68e6: $63
	ei                                               ; $68e7: $fb
	ld a, a                                          ; $68e8: $7f
	pop af                                           ; $68e9: $f1
	ld a, e                                          ; $68ea: $7b
	db $fc                                           ; $68eb: $fc
	ld a, e                                          ; $68ec: $7b
	db $e4                                           ; $68ed: $e4
	rst SubAFromDE                                          ; $68ee: $df
	adc b                                            ; $68ef: $88
	ld a, a                                          ; $68f0: $7f
	ld bc, $449c                                     ; $68f1: $01 $9c $44
	rst $38                                          ; $68f4: $ff
	ld c, h                                          ; $68f5: $4c
	ld a, e                                          ; $68f6: $7b
	cp $89                                           ; $68f7: $fe $89
	ld c, l                                          ; $68f9: $4d
	rst $38                                          ; $68fa: $ff
	sub l                                            ; $68fb: $95
	rst $38                                          ; $68fc: $ff
	cp a                                             ; $68fd: $bf
	and $ff                                          ; $68fe: $e6 $ff

jr_072_6900:
	call z, $0bff                                    ; $6900: $cc $ff $0b
	rst $38                                          ; $6903: $ff
	rra                                              ; $6904: $1f
	ld sp, hl                                        ; $6905: $f9
	ld a, c                                          ; $6906: $79
	di                                               ; $6907: $f3
	dec de                                           ; $6908: $1b
	cpl                                              ; $6909: $2f
	rrca                                             ; $690a: $0f
	add hl, bc                                       ; $690b: $09
	rrca                                             ; $690c: $0f
	ld d, $0e                                        ; $690d: $16 $0e
	push af                                          ; $690f: $f5
	rst SubAFromDE                                          ; $6910: $df
	add b                                            ; $6911: $80
	adc h                                            ; $6912: $8c
	ret nz                                           ; $6913: $c0

	ld b, b                                          ; $6914: $40
	ld [hl], b                                       ; $6915: $70
	jr nz, jr_072_6990                               ; $6916: $20 $78

	jr jr_072_6998                                   ; $6918: $18 $7e

	inc c                                            ; $691a: $0c
	ld a, a                                          ; $691b: $7f
	rlca                                             ; $691c: $07
	scf                                              ; $691d: $37
	inc bc                                           ; $691e: $03
	inc sp                                           ; $691f: $33
	ld bc, $0019                                     ; $6920: $01 $19 $00
	jr jr_072_6925                                   ; $6923: $18 $00

jr_072_6925:
	ld [$fe7b], sp                                   ; $6925: $08 $7b $fe
	adc b                                            ; $6928: $88
	ld b, [hl]                                       ; $6929: $46
	rst $38                                          ; $692a: $ff
	adc h                                            ; $692b: $8c
	rst $38                                          ; $692c: $ff
	sbc h                                            ; $692d: $9c
	rst FarCall                                          ; $692e: $f7
	sbc h                                            ; $692f: $9c
	rst FarCall                                          ; $6930: $f7
	xor c                                            ; $6931: $a9
	rst $38                                          ; $6932: $ff
	ld a, [rIE]                                    ; $6933: $fa $ff $ff
	adc l                                            ; $6936: $8d
	cp [hl]                                          ; $6937: $be
	jp $e7df                                         ; $6938: $c3 $df $e7


	ld a, a                                          ; $693b: $7f
	and b                                            ; $693c: $a0
	rra                                              ; $693d: $1f
	and b                                            ; $693e: $a0
	rra                                              ; $693f: $1f
	ld hl, sp-$80                                    ; $6940: $f8 $80
	ld hl, $43ff                                     ; $6942: $21 $ff $43
	rst $38                                          ; $6945: $ff
	ld b, d                                          ; $6946: $42
	rst $38                                          ; $6947: $ff
	add [hl]                                         ; $6948: $86
	rst $38                                          ; $6949: $ff
	adc [hl]                                         ; $694a: $8e
	ei                                               ; $694b: $fb
	sbc h                                            ; $694c: $9c
	rst FarCall                                          ; $694d: $f7
	dec sp                                           ; $694e: $3b
	rst AddAOntoHL                                          ; $694f: $ef
	rst $38                                          ; $6950: $ff
	db $dd                                           ; $6951: $dd
	di                                               ; $6952: $f3
	inc c                                            ; $6953: $0c
	rst $38                                          ; $6954: $ff
	ld e, $f7                                        ; $6955: $1e $f7

jr_072_6957:
	scf                                              ; $6957: $37
	push hl                                          ; $6958: $e5
	daa                                              ; $6959: $27
	db $ed                                           ; $695a: $ed
	inc a                                            ; $695b: $3c
	ld a, c                                          ; $695c: $79
	inc a                                            ; $695d: $3c
	dec hl                                           ; $695e: $2b
	jr c, jr_072_6900                                ; $695f: $38 $9f

jr_072_6961:
	sbc h                                            ; $6961: $9c
	ld bc, $81ff                                     ; $6962: $01 $ff $81
	ld a, e                                          ; $6965: $7b
	cp $8d                                           ; $6966: $fe $8d
	inc bc                                           ; $6968: $03
	rst $38                                          ; $6969: $ff
	inc bc                                           ; $696a: $03
	db $fd                                           ; $696b: $fd
	dec b                                            ; $696c: $05
	ld hl, sp+$08                                    ; $696d: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $696f: $f0 $10
	ldh [rAUD4LEN], a                                ; $6971: $e0 $20
	ret nz                                           ; $6973: $c0

	ret nz                                           ; $6974: $c0

	inc a                                            ; $6975: $3c
	db $fc                                           ; $6976: $fc
	inc bc                                           ; $6977: $03
	rst $38                                          ; $6978: $ff
	nop                                              ; $6979: $00
	ld h, e                                          ; $697a: $63
	cp $9a                                           ; $697b: $fe $9a
	ld [de], a                                       ; $697d: $12
	rst $38                                          ; $697e: $ff
	inc d                                            ; $697f: $14
	rst $38                                          ; $6980: $ff
	inc h                                            ; $6981: $24
	ld a, e                                          ; $6982: $7b
	cp $8c                                           ; $6983: $fe $8c
	ld c, c                                          ; $6985: $49
	rst $38                                          ; $6986: $ff
	sbc c                                            ; $6987: $99
	rst $38                                          ; $6988: $ff
	inc sp                                           ; $6989: $33
	rst $38                                          ; $698a: $ff
	rst SubAFromBC                                          ; $698b: $e7
	rst $38                                          ; $698c: $ff
	call z, $fa7f                                    ; $698d: $cc $7f $fa

jr_072_6990:
	ccf                                              ; $6990: $3f
	di                                               ; $6991: $f3
	ld a, a                                          ; $6992: $7f
	db $d3                                           ; $6993: $d3
	rst $38                                          ; $6994: $ff
	jp nc, $92ff                                     ; $6995: $d2 $ff $92

jr_072_6998:
	ld a, e                                          ; $6998: $7b
	cp $7f                                           ; $6999: $fe $7f
	add sp, -$6f                                     ; $699b: $e8 $91
	dec h                                            ; $699d: $25
	rst $38                                          ; $699e: $ff
	add hl, hl                                       ; $699f: $29
	rst $38                                          ; $69a0: $ff
	ld c, d                                          ; $69a1: $4a
	cp $5a                                           ; $69a2: $fe $5a
	cp $ac                                           ; $69a4: $fe $ac
	db $ec                                           ; $69a6: $ec
	ret z                                            ; $69a7: $c8

	ret z                                            ; $69a8: $c8

	add b                                            ; $69a9: $80
	add b                                            ; $69aa: $80
	ei                                               ; $69ab: $fb
	rst SubAFromDE                                          ; $69ac: $df
	ret nz                                           ; $69ad: $c0

	sub l                                            ; $69ae: $95
	and b                                            ; $69af: $a0
	ld h, b                                          ; $69b0: $60
	ld hl, sp+$38                                    ; $69b1: $f8 $38
	ld c, h                                          ; $69b3: $4c
	cp h                                             ; $69b4: $bc
	ld l, [hl]                                       ; $69b5: $6e
	sbc [hl]                                         ; $69b6: $9e
	cpl                                              ; $69b7: $2f
	rst SubAFromDE                                          ; $69b8: $df
	ld h, a                                          ; $69b9: $67
	jr nz, jr_072_6957                               ; $69ba: $20 $9b

	sbc l                                            ; $69bc: $9d
	rst $38                                          ; $69bd: $ff
	and a                                            ; $69be: $a7
	cp $7b                                           ; $69bf: $fe $7b
	jr nz, jr_072_6961                               ; $69c1: $20 $9e

	ld [$947b], sp                                   ; $69c3: $08 $7b $94
	sub [hl]                                         ; $69c6: $96
	rrca                                             ; $69c7: $0f
	ld sp, hl                                        ; $69c8: $f9
	ld a, c                                          ; $69c9: $79
	inc de                                           ; $69ca: $13
	dec de                                           ; $69cb: $1b
	dec c                                            ; $69cc: $0d
	rrca                                             ; $69cd: $0f
	dec de                                           ; $69ce: $1b
	rrca                                             ; $69cf: $0f
	db $fd                                           ; $69d0: $fd
	ld c, a                                          ; $69d1: $4f
	ld b, b                                          ; $69d2: $40
	sbc c                                            ; $69d3: $99
	cp $03                                           ; $69d4: $fe $03
	cp a                                             ; $69d6: $bf
	rst JumpTable                                          ; $69d7: $c7
	rst SubAFromDE                                          ; $69d8: $df
	ldh [rPCM34], a                                  ; $69d9: $e0 $77
	ld a, $7b                                        ; $69db: $3e $7b
	ld c, $33                                        ; $69dd: $0e $33
	ld b, b                                          ; $69df: $40
	ld a, a                                          ; $69e0: $7f
	ld l, l                                          ; $69e1: $6d
	ld l, e                                          ; $69e2: $6b
	ld a, $9b                                        ; $69e3: $3e $9b
	cpl                                              ; $69e5: $2f
	ld a, l                                          ; $69e6: $7d
	inc a                                            ; $69e7: $3c
	cpl                                              ; $69e8: $2f
	ld a, e                                          ; $69e9: $7b
	ld b, b                                          ; $69ea: $40
	dec hl                                           ; $69eb: $2b
	ld h, b                                          ; $69ec: $60
	sbc [hl]                                         ; $69ed: $9e
	ld a, a                                          ; $69ee: $7f
	ld h, a                                          ; $69ef: $67
	ld h, b                                          ; $69f0: $60
	ld b, e                                          ; $69f1: $43
	add b                                            ; $69f2: $80
	ld [hl], e                                       ; $69f3: $73
	add hl, hl                                       ; $69f4: $29
	rst SubAFromDE                                          ; $69f5: $df
	ld a, a                                          ; $69f6: $7f
	sbc l                                            ; $69f7: $9d
	ld sp, $4f3b                                     ; $69f8: $31 $3b $4f
	add b                                            ; $69fb: $80
	sub l                                            ; $69fc: $95
	cp c                                             ; $69fd: $b9
	rst AddAOntoHL                                          ; $69fe: $ef
	ld [$dfff], a                                    ; $69ff: $ea $ff $df
	cp l                                             ; $6a02: $bd
	cp $03                                           ; $6a03: $fe $03
	rst $38                                          ; $6a05: $ff
	rlca                                             ; $6a06: $07
	ld [hl], e                                       ; $6a07: $73
	ldh [$7e], a                                     ; $6a08: $e0 $7e
	sub d                                            ; $6a0a: $92
	sbc [hl]                                         ; $6a0b: $9e
	ldh [$27], a                                     ; $6a0c: $e0 $27
	add b                                            ; $6a0e: $80
	ld l, a                                          ; $6a0f: $6f
	cp $9a                                           ; $6a10: $fe $9a
	db $fd                                           ; $6a12: $fd
	ld e, $27                                        ; $6a13: $1e $27
	ld l, a                                          ; $6a15: $6f
	rra                                              ; $6a16: $1f
	inc bc                                           ; $6a17: $03
	add b                                            ; $6a18: $80
	inc hl                                           ; $6a19: $23
	add b                                            ; $6a1a: $80
	sbc e                                            ; $6a1b: $9b
	nop                                              ; $6a1c: $00
	ld [hl], $79                                     ; $6a1d: $36 $79
	rra                                              ; $6a1f: $1f
	dec de                                           ; $6a20: $1b
	add b                                            ; $6a21: $80
	ld a, a                                          ; $6a22: $7f
	cp $7f                                           ; $6a23: $fe $7f
	add b                                            ; $6a25: $80
	ld l, [hl]                                       ; $6a26: $6e
	rst $38                                          ; $6a27: $ff
	daa                                              ; $6a28: $27
	add b                                            ; $6a29: $80
	ld a, a                                          ; $6a2a: $7f
	cp $9b                                           ; $6a2b: $fe $9b
	dec sp                                           ; $6a2d: $3b
	ld h, a                                          ; $6a2e: $67
	dec e                                            ; $6a2f: $1d
	ld a, $03                                        ; $6a30: $3e $03
	add b                                            ; $6a32: $80
	ld a, a                                          ; $6a33: $7f
	reti                                             ; $6a34: $d9


	sub h                                            ; $6a35: $94
	nop                                              ; $6a36: $00
	ld bc, $2100                                     ; $6a37: $01 $00 $21
	nop                                              ; $6a3a: $00
	inc bc                                           ; $6a3b: $03
	ld d, $0f                                        ; $6a3c: $16 $0f
	nop                                              ; $6a3e: $00
	rlca                                             ; $6a3f: $07
	nop                                              ; $6a40: $00
	ld [hl], a                                       ; $6a41: $77
	db $fc                                           ; $6a42: $fc
	ld a, a                                          ; $6a43: $7f
	cp $92                                           ; $6a44: $fe $92
	adc a                                            ; $6a46: $8f
	ld bc, $c7fe                                     ; $6a47: $01 $fe $c7
	ld hl, sp-$01                                    ; $6a4a: $f8 $ff
	ldh a, [rIE]                                     ; $6a4c: $f0 $ff
	ld hl, sp+$1f                                    ; $6a4e: $f8 $1f
	inc a                                            ; $6a50: $3c
	rra                                              ; $6a51: $1f
	ld a, $7b                                        ; $6a52: $3e $7b
	ld a, h                                          ; $6a54: $7c
	ld [hl], a                                       ; $6a55: $77
	ldh [$9b], a                                     ; $6a56: $e0 $9b
	inc hl                                           ; $6a58: $23
	ld d, $1f                                        ; $6a59: $16 $1f
	inc c                                            ; $6a5b: $0c
	rra                                              ; $6a5c: $1f
	ldh [$7f], a                                     ; $6a5d: $e0 $7f
	cp $7f                                           ; $6a5f: $fe $7f
	ldh [$9b], a                                     ; $6a61: $e0 $9b
	ccf                                              ; $6a63: $3f
	inc e                                            ; $6a64: $1c
	rra                                              ; $6a65: $1f
	ld [$de6f], sp                                   ; $6a66: $08 $6f $de
	inc hl                                           ; $6a69: $23
	ldh [rOCPD], a                                   ; $6a6a: $e0 $6b
	sbc $4f                                          ; $6a6c: $de $4f
	ldh [rAUD1SWEEP], a                              ; $6a6e: $e0 $10
	inc bc                                           ; $6a70: $03
	jp hl                                            ; $6a71: $e9


	rst SubAFromDE                                          ; $6a72: $df
	ld bc, $0680                                     ; $6a73: $01 $80 $06
	rlca                                             ; $6a76: $07
	dec bc                                           ; $6a77: $0b
	ld c, $17                                        ; $6a78: $0e $17
	ld a, [de]                                       ; $6a7a: $1a
	rra                                              ; $6a7b: $1f
	ld [de], a                                       ; $6a7c: $12
	cpl                                              ; $6a7d: $2f
	ld [hl-], a                                      ; $6a7e: $32
	ld l, $33                                        ; $6a7f: $2e $33
	dec h                                            ; $6a81: $25
	dec sp                                           ; $6a82: $3b
	ld [hl], l                                       ; $6a83: $75
	ld c, e                                          ; $6a84: $4b
	ld [hl], l                                       ; $6a85: $75
	ld c, e                                          ; $6a86: $4b
	ld d, [hl]                                       ; $6a87: $56
	ld l, d                                          ; $6a88: $6a
	ld l, d                                          ; $6a89: $6a
	halt                                             ; $6a8a: $76
	ld l, d                                          ; $6a8b: $6a
	halt                                             ; $6a8c: $76
	ld a, d                                          ; $6a8d: $7a
	ld d, [hl]                                       ; $6a8e: $56
	halt                                             ; $6a8f: $76
	ld e, d                                          ; $6a90: $5a
	ld l, d                                          ; $6a91: $6a
	ld e, [hl]                                       ; $6a92: $5e
	ld a, [hl-]                                      ; $6a93: $3a
	adc h                                            ; $6a94: $8c
	ld l, $36                                        ; $6a95: $2e $36
	ld l, $3a                                        ; $6a97: $2e $3a
	ld h, $2d                                        ; $6a99: $26 $2d
	inc sp                                           ; $6a9b: $33
	ld d, $19                                        ; $6a9c: $16 $19
	inc de                                           ; $6a9e: $13
	inc e                                            ; $6a9f: $1c
	inc c                                            ; $6aa0: $0c
	dec bc                                           ; $6aa1: $0b
	rlca                                             ; $6aa2: $07
	inc b                                            ; $6aa3: $04
	ld [bc], a                                       ; $6aa4: $02
	inc bc                                           ; $6aa5: $03
	ld bc, $e001                                     ; $6aa6: $01 $01 $e0
	reti                                             ; $6aa9: $d9


	rst SubAFromDE                                          ; $6aaa: $df
	ld e, $80                                        ; $6aab: $1e $80
	ld h, l                                          ; $6aad: $65
	ld a, a                                          ; $6aae: $7f
	adc b                                            ; $6aaf: $88
	rst $38                                          ; $6ab0: $ff
	db $10                                           ; $6ab1: $10
	rst $38                                          ; $6ab2: $ff
	cpl                                              ; $6ab3: $2f
	rst $38                                          ; $6ab4: $ff
	inc sp                                           ; $6ab5: $33
	ldh a, [c]                                       ; $6ab6: $f2
	daa                                              ; $6ab7: $27
	db $e4                                           ; $6ab8: $e4
	ld b, [hl]                                       ; $6ab9: $46
	push bc                                          ; $6aba: $c5
	add [hl]                                         ; $6abb: $86
	add l                                            ; $6abc: $85
	ld b, $05                                        ; $6abd: $06 $05
	inc bc                                           ; $6abf: $03
	ld [bc], a                                       ; $6ac0: $02
	inc bc                                           ; $6ac1: $03
	inc bc                                           ; $6ac2: $03
	inc b                                            ; $6ac3: $04
	rlca                                             ; $6ac4: $07
	rrca                                             ; $6ac5: $0f
	rrca                                             ; $6ac6: $0f
	ld [$100f], sp                                   ; $6ac7: $08 $0f $10
	rra                                              ; $6aca: $1f
	ld hl, $3f80                                     ; $6acb: $21 $80 $3f
	add hl, hl                                       ; $6ace: $29
	ccf                                              ; $6acf: $3f
	ld d, c                                          ; $6ad0: $51
	ld a, a                                          ; $6ad1: $7f
	ld [hl], c                                       ; $6ad2: $71
	ld a, a                                          ; $6ad3: $7f
	or c                                             ; $6ad4: $b1
	cp a                                             ; $6ad5: $bf
	ld hl, $bc3f                                     ; $6ad6: $21 $3f $bc
	and e                                            ; $6ad9: $a3
	ld e, e                                          ; $6ada: $5b
	rst SubAFromBC                                          ; $6adb: $e7
	ld a, $ff                                        ; $6adc: $3e $ff
	db $fc                                           ; $6ade: $fc
	inc bc                                           ; $6adf: $03
	di                                               ; $6ae0: $f3
	rrca                                             ; $6ae1: $0f

jr_072_6ae2:
	sbc h                                            ; $6ae2: $9c
	rst $38                                          ; $6ae3: $ff
	ld h, b                                          ; $6ae4: $60
	ld a, a                                          ; $6ae5: $7f
	ccf                                              ; $6ae6: $3f
	ccf                                              ; $6ae7: $3f
	ld e, $17                                        ; $6ae8: $1e $17
	ld d, $1f                                        ; $6aea: $16 $1f
	sbc l                                            ; $6aec: $9d
	ld a, [de]                                       ; $6aed: $1a
	dec de                                           ; $6aee: $1b
	db $dd                                           ; $6aef: $dd
	add hl, bc                                       ; $6af0: $09
	rra                                              ; $6af1: $1f
	sub b                                            ; $6af2: $90
	rst SubAFromDE                                          ; $6af3: $df
	inc bc                                           ; $6af4: $03
	sbc h                                            ; $6af5: $9c
	dec c                                            ; $6af6: $0d
	rrca                                             ; $6af7: $0f
	ld de, $ba7b                                     ; $6af8: $11 $7b $ba
	ld a, a                                          ; $6afb: $7f
	cp $80                                           ; $6afc: $fe $80
	ld b, c                                          ; $6afe: $41
	ld a, a                                          ; $6aff: $7f
	ld b, d                                          ; $6b00: $42
	ld a, l                                          ; $6b01: $7d
	ld b, [hl]                                       ; $6b02: $46
	ld a, c                                          ; $6b03: $79
	ld c, [hl]                                       ; $6b04: $4e
	ld [hl], c                                       ; $6b05: $71
	ld c, a                                          ; $6b06: $4f
	ld [hl], c                                       ; $6b07: $71
	ld b, c                                          ; $6b08: $41
	ld a, a                                          ; $6b09: $7f
	ld c, b                                          ; $6b0a: $48
	ld [hl], a                                       ; $6b0b: $77
	ld e, [hl]                                       ; $6b0c: $5e
	ld h, c                                          ; $6b0d: $61
	cp [hl]                                          ; $6b0e: $be
	pop bc                                           ; $6b0f: $c1
	rst $38                                          ; $6b10: $ff
	add b                                            ; $6b11: $80
	rst $38                                          ; $6b12: $ff
	add b                                            ; $6b13: $80
	or a                                             ; $6b14: $b7
	ret z                                            ; $6b15: $c8

	adc a                                            ; $6b16: $8f
	ldh a, [rVBK]                                    ; $6b17: $f0 $4f
	ld [hl], b                                       ; $6b19: $70
	ld e, a                                          ; $6b1a: $5f
	ld h, b                                          ; $6b1b: $60
	ccf                                              ; $6b1c: $3f
	sbc h                                            ; $6b1d: $9c
	jr nz, jr_072_6b5f                               ; $6b1e: $20 $3f

	jr nz, jr_072_6b51                               ; $6b20: $20 $2f

	ld h, b                                          ; $6b22: $60
	add b                                            ; $6b23: $80
	cp a                                             ; $6b24: $bf
	and c                                            ; $6b25: $a1
	ld a, a                                          ; $6b26: $7f
	ret nz                                           ; $6b27: $c0

	ld [hl], l                                       ; $6b28: $75
	jp z, $f5ea                                      ; $6b29: $ca $ea $f5

	pop af                                           ; $6b2c: $f1
	ld e, $ff                                        ; $6b2d: $1e $ff
	add hl, bc                                       ; $6b2f: $09
	rst $38                                          ; $6b30: $ff
	rrca                                             ; $6b31: $0f
	db $fd                                           ; $6b32: $fd
	ld c, $fc                                        ; $6b33: $0e $fc
	ld [$10f8], sp                                   ; $6b35: $08 $f8 $10
	ldh a, [$e1]                                     ; $6b38: $f0 $e1
	ld b, l                                          ; $6b3a: $45
	ldh [c], a                                       ; $6b3b: $e2
	add sp, -$3a                                     ; $6b3c: $e8 $c6
	ldh a, [c]                                       ; $6b3e: $f2
	adc h                                            ; $6b3f: $8c
	jp hl                                            ; $6b40: $e9


	sbc h                                            ; $6b41: $9c
	ld l, l                                          ; $6b42: $6d
	sub h                                            ; $6b43: $94
	sbc b                                            ; $6b44: $98
	ld d, [hl]                                       ; $6b45: $56

jr_072_6b46:
	cp c                                             ; $6b46: $b9
	ld d, h                                          ; $6b47: $54
	cp e                                             ; $6b48: $bb
	ld d, l                                          ; $6b49: $55
	cp e                                             ; $6b4a: $bb
	ld de, $11ff                                     ; $6b4b: $11 $ff $11
	rst $38                                          ; $6b4e: $ff
	ldh [$c1], a                                     ; $6b4f: $e0 $c1

jr_072_6b51:
	add b                                            ; $6b51: $80
	adc [hl]                                         ; $6b52: $8e
	ld hl, $200f                                     ; $6b53: $21 $0f $20
	ld c, a                                          ; $6b56: $4f
	jr nz, jr_072_6b68                               ; $6b57: $20 $0f

	jr nz, jr_072_6ae2                               ; $6b59: $20 $87

	jr nz, jr_072_6bd3                               ; $6b5b: $20 $76

	and c                                            ; $6b5d: $a1
	add c                                            ; $6b5e: $81

jr_072_6b5f:
	sub e                                            ; $6b5f: $93
	sub c                                            ; $6b60: $91
	sbc e                                            ; $6b61: $9b
	ld c, $cb                                        ; $6b62: $0e $cb
	jp z, $b44f                                      ; $6b64: $ca $4f $b4

	ld l, a                                          ; $6b67: $6f

jr_072_6b68:
	ld hl, sp+$3f                                    ; $6b68: $f8 $3f
	call nc, $fe3b                                   ; $6b6a: $d4 $3b $fe
	ld sp, $30ef                                     ; $6b6d: $31 $ef $30
	rst SubAFromDE                                          ; $6b70: $df
	sbc [hl]                                         ; $6b71: $9e
	ld h, b                                          ; $6b72: $60
	jp hl                                            ; $6b73: $e9


	rst SubAFromDE                                          ; $6b74: $df
	add c                                            ; $6b75: $81
	add b                                            ; $6b76: $80
	adc [hl]                                         ; $6b77: $8e
	adc a                                            ; $6b78: $8f
	rst FarCall                                          ; $6b79: $f7
	ld hl, sp-$21                                    ; $6b7a: $f8 $df
	ldh [$fc], a                                     ; $6b7c: $e0 $fc
	rst $38                                          ; $6b7e: $ff
	ld a, a                                          ; $6b7f: $7f
	add b                                            ; $6b80: $80
	inc e                                            ; $6b81: $1c
	inc bc                                           ; $6b82: $03
	ld d, e                                          ; $6b83: $53
	jr nz, @+$0e                                     ; $6b84: $20 $0c

	jp $0c93                                         ; $6b86: $c3 $93 $0c


	jr z, jr_072_6b9b                                ; $6b89: $28 $10

	ld d, b                                          ; $6b8b: $50
	inc h                                            ; $6b8c: $24
	and l                                            ; $6b8d: $a5
	ld c, b                                          ; $6b8e: $48
	ld [hl-], a                                      ; $6b8f: $32
	ret                                              ; $6b90: $c9


	ld l, $d1                                        ; $6b91: $2e $d1

jr_072_6b93:
	ld l, h                                          ; $6b93: $6c
	sub e                                            ; $6b94: $93
	ld c, [hl]                                       ; $6b95: $4e
	sbc e                                            ; $6b96: $9b
	or e                                             ; $6b97: $b3
	ld l, e                                          ; $6b98: $6b
	or [hl]                                          ; $6b99: $b6
	ld l, l                                          ; $6b9a: $6d

jr_072_6b9b:
	ld a, e                                          ; $6b9b: $7b
	cp $e0                                           ; $6b9c: $fe $e0
	pop bc                                           ; $6b9e: $c1
	add l                                            ; $6b9f: $85
	ccf                                              ; $6ba0: $3f
	ldh a, [$9f]                                     ; $6ba1: $f0 $9f
	ld a, b                                          ; $6ba3: $78
	rst GetHLinHL                                          ; $6ba4: $cf
	jr c, jr_072_6b46                                ; $6ba5: $38 $9f

	ld a, b                                          ; $6ba7: $78
	scf                                              ; $6ba8: $37
	db $fc                                           ; $6ba9: $fc
	db $e3                                           ; $6baa: $e3
	rst $38                                          ; $6bab: $ff
	xor h                                            ; $6bac: $ac
	di                                               ; $6bad: $f3
	ld l, $f1                                        ; $6bae: $2e $f1
	ld a, a                                          ; $6bb0: $7f
	sub b                                            ; $6bb1: $90
	ld a, a                                          ; $6bb2: $7f
	adc b                                            ; $6bb3: $88
	ld a, $c7                                        ; $6bb4: $3e $c7
	dec e                                            ; $6bb6: $1d
	db $e3                                           ; $6bb7: $e3
	rst $38                                          ; $6bb8: $ff
	nop                                              ; $6bb9: $00
	ld l, a                                          ; $6bba: $6f
	cp $ed                                           ; $6bbb: $fe $ed
	rst SubAFromDE                                          ; $6bbd: $df
	inc b                                            ; $6bbe: $04
	rst SubAFromDE                                          ; $6bbf: $df
	inc bc                                           ; $6bc0: $03
	add b                                            ; $6bc1: $80
	db $e3                                           ; $6bc2: $e3
	ldh [c], a                                       ; $6bc3: $e2
	ld a, c                                          ; $6bc4: $79
	sbc c                                            ; $6bc5: $99
	rra                                              ; $6bc6: $1f
	rst SubAFromBC                                          ; $6bc7: $e7
	push hl                                          ; $6bc8: $e5
	dec de                                           ; $6bc9: $1b
	jr c, jr_072_6b93                                ; $6bca: $38 $c7

	adc [hl]                                         ; $6bcc: $8e
	ld [hl], e                                       ; $6bcd: $73
	halt                                             ; $6bce: $76
	ei                                               ; $6bcf: $fb
	db $ed                                           ; $6bd0: $ed
	rra                                              ; $6bd1: $1f
	inc bc                                           ; $6bd2: $03

jr_072_6bd3:
	rst $38                                          ; $6bd3: $ff
	ld h, d                                          ; $6bd4: $62
	rra                                              ; $6bd5: $1f
	ld b, c                                          ; $6bd6: $41
	ld a, $95                                        ; $6bd7: $3e $95
	ld h, d                                          ; $6bd9: $62
	add hl, bc                                       ; $6bda: $09
	add $11                                          ; $6bdb: $c6 $11

Jump_072_6bdd:
	adc [hl]                                         ; $6bdd: $8e
	and e                                            ; $6bde: $a3
	ld e, $67                                        ; $6bdf: $1e $67
	sub [hl]                                         ; $6be1: $96
	ld e, $4f                                        ; $6be2: $1e $4f
	ld a, $dd                                        ; $6be4: $3e $dd
	ld a, $9d                                        ; $6be6: $3e $9d
	ld a, [hl]                                       ; $6be8: $7e
	dec a                                            ; $6be9: $3d
	cp $e0                                           ; $6bea: $fe $e0
	pop bc                                           ; $6bec: $c1
	ld a, [hl]                                       ; $6bed: $7e
	ld h, d                                          ; $6bee: $62

jr_072_6bef:
	sbc l                                            ; $6bef: $9d
	rst $38                                          ; $6bf0: $ff
	ld [$fe73], sp                                   ; $6bf1: $08 $73 $fe
	adc b                                            ; $6bf4: $88
	rra                                              ; $6bf5: $1f
	push af                                          ; $6bf6: $f5
	ld a, [de]                                       ; $6bf7: $1a
	rst AddAOntoHL                                          ; $6bf8: $ef
	ldh a, [$2f]                                     ; $6bf9: $f0 $2f
	ldh a, [$a7]                                     ; $6bfb: $f0 $a7
	ld a, b                                          ; $6bfd: $78
	and a                                            ; $6bfe: $a7
	ld a, b                                          ; $6bff: $78
	inc hl                                           ; $6c00: $23
	db $fc                                           ; $6c01: $fc
	di                                               ; $6c02: $f3
	db $ec                                           ; $6c03: $ec
	inc sp                                           ; $6c04: $33
	db $ec                                           ; $6c05: $ec
	cp c                                             ; $6c06: $b9
	ld h, [hl]                                       ; $6c07: $66
	cp l                                             ; $6c08: $bd
	ld h, d                                          ; $6c09: $62
	cp l                                             ; $6c0a: $bd
	ld h, d                                          ; $6c0b: $62
	db $ed                                           ; $6c0c: $ed
	rst SubAFromDE                                          ; $6c0d: $df
	jr nz, jr_072_6bef                               ; $6c0e: $20 $df

	jr nc, @-$7e                                     ; $6c10: $30 $80

	ldh a, [$d0]                                     ; $6c12: $f0 $d0
	ldh a, [$50]                                     ; $6c14: $f0 $50
	ldh a, [$50]                                     ; $6c16: $f0 $50
	adc [hl]                                         ; $6c18: $8e
	ld a, [hl]                                       ; $6c19: $7e
	dec e                                            ; $6c1a: $1d
	db $e3                                           ; $6c1b: $e3
	ld a, a                                          ; $6c1c: $7f
	add b                                            ; $6c1d: $80
	add b                                            ; $6c1e: $80
	ld a, a                                          ; $6c1f: $7f
	ccf                                              ; $6c20: $3f
	ret nz                                           ; $6c21: $c0

	inc bc                                           ; $6c22: $03
	db $fc                                           ; $6c23: $fc
	ld a, b                                          ; $6c24: $78
	add a                                            ; $6c25: $87
	ld a, [$d401]                                    ; $6c26: $fa $01 $d4
	jr nz, jr_072_6c7f                               ; $6c29: $20 $54

	ld [hl+], a                                      ; $6c2b: $22
	ld b, c                                          ; $6c2c: $41
	ld [hl-], a                                      ; $6c2d: $32
	ld a, [bc]                                       ; $6c2e: $0a
	ld sp, $96ba                                     ; $6c2f: $31 $ba $96
	ld de, $119c                                     ; $6c32: $11 $9c $11
	inc d                                            ; $6c35: $14
	sbc c                                            ; $6c36: $99
	ld d, l                                          ; $6c37: $55
	sbc b                                            ; $6c38: $98
	ld a, [hl+]                                      ; $6c39: $2a
	db $dd                                           ; $6c3a: $dd
	ldh [$c1], a                                     ; $6c3b: $e0 $c1
	add e                                            ; $6c3d: $83
	ldh [c], a                                       ; $6c3e: $e2
	rst $38                                          ; $6c3f: $ff
	ldh [c], a                                       ; $6c40: $e2
	rra                                              ; $6c41: $1f
	jp nz, $ce3f                                     ; $6c42: $c2 $3f $ce

	ccf                                              ; $6c45: $3f
	pop af                                           ; $6c46: $f1
	rst $38                                          ; $6c47: $ff
	ld hl, sp+$07                                    ; $6c48: $f8 $07
	ldh a, [rIF]                                     ; $6c4a: $f0 $0f
	ldh [$1f], a                                     ; $6c4c: $e0 $1f
	call z, $9c33                                    ; $6c4e: $cc $33 $9c
	ld h, e                                          ; $6c51: $63
	ld a, b                                          ; $6c52: $78
	add a                                            ; $6c53: $87
	ld hl, sp+$07                                    ; $6c54: $f8 $07
	ldh a, [c]                                       ; $6c56: $f2

jr_072_6c57:
	dec c                                            ; $6c57: $0d
	or $09                                           ; $6c58: $f6 $09
	halt                                             ; $6c5a: $76
	ret nz                                           ; $6c5b: $c0

	rst SubAFromDE                                          ; $6c5c: $df
	ldh [hLCDCIntHandlerIdx], a                                     ; $6c5d: $e0 $81
	ret c                                            ; $6c5f: $d8

	jr c, @+$09                                      ; $6c60: $38 $07

	rst $38                                          ; $6c62: $ff
	pop hl                                           ; $6c63: $e1
	rra                                              ; $6c64: $1f
	ld sp, hl                                        ; $6c65: $f9
	rlca                                             ; $6c66: $07
	rst $38                                          ; $6c67: $ff
	ld bc, $c03f                                     ; $6c68: $01 $3f $c0
	sbc a                                            ; $6c6b: $9f
	ld h, b                                          ; $6c6c: $60
	rst GetHLinHL                                          ; $6c6d: $cf
	jr nc, jr_072_6c57                               ; $6c6e: $30 $e7

	jr @-$1b                                         ; $6c70: $18 $e3

	inc e                                            ; $6c72: $1c
	ld a, e                                          ; $6c73: $7b
	adc h                                            ; $6c74: $8c
	ld a, e                                          ; $6c75: $7b
	adc h                                            ; $6c76: $8c
	cp c                                             ; $6c77: $b9
	adc $b5                                          ; $6c78: $ce $b5
	adc $95                                          ; $6c7a: $ce $95
	xor $e0                                          ; $6c7c: $ee $e0
	pop bc                                           ; $6c7e: $c1

jr_072_6c7f:
	adc [hl]                                         ; $6c7f: $8e
	ld a, [hl+]                                      ; $6c80: $2a
	rst FarCall                                          ; $6c81: $f7
	dec a                                            ; $6c82: $3d
	rst SubAFromBC                                          ; $6c83: $e7
	ld d, [hl]                                       ; $6c84: $56
	rst AddAOntoHL                                          ; $6c85: $ef
	ld a, h                                          ; $6c86: $7c
	rst GetHLinHL                                          ; $6c87: $cf
	xor b                                            ; $6c88: $a8
	rst SubAFromDE                                          ; $6c89: $df
	ldh a, [$9f]                                     ; $6c8a: $f0 $9f
	ldh [$bf], a                                     ; $6c8c: $e0 $bf
	ret nz                                           ; $6c8e: $c0

	rst $38                                          ; $6c8f: $ff
	rst SubAFromDE                                          ; $6c90: $df
	ld a, e                                          ; $6c91: $7b
	ei                                               ; $6c92: $fb
	add b                                            ; $6c93: $80
	cp h                                             ; $6c94: $bc
	jp $c1be                                         ; $6c95: $c3 $be $c1


	sbc a                                            ; $6c98: $9f
	ldh [rSCX], a                                    ; $6c99: $e0 $43
	db $fc                                           ; $6c9b: $fc
	rst $38                                          ; $6c9c: $ff
	ld b, b                                          ; $6c9d: $40
	rst $38                                          ; $6c9e: $ff
	jr nz, jr_072_6d19                               ; $6c9f: $20 $78

	ld a, b                                          ; $6ca1: $78
	db $fc                                           ; $6ca2: $fc
	add h                                            ; $6ca3: $84
	rst $38                                          ; $6ca4: $ff
	inc bc                                           ; $6ca5: $03
	xor [hl]                                         ; $6ca6: $ae
	ld d, e                                          ; $6ca7: $53
	rla                                              ; $6ca8: $17
	rst AddAOntoHL                                          ; $6ca9: $ef
	adc a                                            ; $6caa: $8f
	ld a, b                                          ; $6cab: $78
	rst SubAFromDE                                          ; $6cac: $df
	or b                                             ; $6cad: $b0
	ld a, d                                          ; $6cae: $7a
	push af                                          ; $6caf: $f5
	ld de, $98fe                                     ; $6cb0: $11 $fe $98
	add b                                            ; $6cb3: $80
	rst FarCall                                          ; $6cb4: $f7
	ld c, l                                          ; $6cb5: $4d
	ld a, [$ff4f]                                    ; $6cb6: $fa $4f $ff
	inc h                                            ; $6cb9: $24
	rst $38                                          ; $6cba: $ff
	ld h, $ff                                        ; $6cbb: $26 $ff
	and l                                            ; $6cbd: $a5
	rst $38                                          ; $6cbe: $ff
	and h                                            ; $6cbf: $a4
	rst $38                                          ; $6cc0: $ff
	rst $38                                          ; $6cc1: $ff
	and [hl]                                         ; $6cc2: $a6
	cp $a7                                           ; $6cc3: $fe $a7
	push de                                          ; $6cc5: $d5
	xor a                                            ; $6cc6: $af
	rst FarCall                                          ; $6cc7: $f7
	xor l                                            ; $6cc8: $ad
	cp d                                             ; $6cc9: $ba
	db $ed                                           ; $6cca: $ed
	dec hl                                           ; $6ccb: $2b
	db $fd                                           ; $6ccc: $fd
	ld c, a                                          ; $6ccd: $4f
	rst $38                                          ; $6cce: $ff
	ld d, e                                          ; $6ccf: $53
	rst $38                                          ; $6cd0: $ff
	sub d                                            ; $6cd1: $92
	db $fd                                           ; $6cd2: $fd
	sbc b                                            ; $6cd3: $98
	xor l                                            ; $6cd4: $ad
	ld a, [$fd66]                                    ; $6cd5: $fa $66 $fd
	sbc a                                            ; $6cd8: $9f
	rst $38                                          ; $6cd9: $ff
	inc d                                            ; $6cda: $14
	ld a, e                                          ; $6cdb: $7b
	sbc $97                                          ; $6cdc: $de $97
	ret                                              ; $6cde: $c9


	rst $38                                          ; $6cdf: $ff
	ld e, d                                          ; $6ce0: $5a
	ld a, [hl]                                       ; $6ce1: $7e
	ld l, h                                          ; $6ce2: $6c
	ld l, h                                          ; $6ce3: $6c
	ld d, b                                          ; $6ce4: $50
	ld d, b                                          ; $6ce5: $50
	rst AddAOntoHL                                          ; $6ce6: $ef
	rst SubAFromDE                                          ; $6ce7: $df
	ret nz                                           ; $6ce8: $c0

	adc b                                            ; $6ce9: $88
	or b                                             ; $6cea: $b0
	ldh a, [$08]                                     ; $6ceb: $f0 $08
	ld hl, sp-$3c                                    ; $6ced: $f8 $c4
	inc a                                            ; $6cef: $3c
	db $e4                                           ; $6cf0: $e4
	inc e                                            ; $6cf1: $1c
	cp $7e                                           ; $6cf2: $fe $7e
	or d                                             ; $6cf4: $b2
	adc $76                                          ; $6cf5: $ce $76
	adc [hl]                                         ; $6cf7: $8e
	ld l, [hl]                                       ; $6cf8: $6e
	sbc [hl]                                         ; $6cf9: $9e
	ret                                              ; $6cfa: $c9


	ccf                                              ; $6cfb: $3f
	pop af                                           ; $6cfc: $f1
	rra                                              ; $6cfd: $1f
	pop af                                           ; $6cfe: $f1
	rra                                              ; $6cff: $1f
	pop hl                                           ; $6d00: $e1
	ld a, e                                          ; $6d01: $7b
	cp $95                                           ; $6d02: $fe $95
	add c                                            ; $6d04: $81
	ld a, a                                          ; $6d05: $7f
	ld bc, $02ff                                     ; $6d06: $01 $ff $02

jr_072_6d09:
	cp $02                                           ; $6d09: $fe $02
	cp $82                                           ; $6d0b: $fe $82
	ld a, [hl]                                       ; $6d0d: $7e
	ld [hl], a                                       ; $6d0e: $77
	ldh [$df], a                                     ; $6d0f: $e0 $df
	ld c, $80                                        ; $6d11: $0e $80
	ld [hl], c                                       ; $6d13: $71
	ld a, a                                          ; $6d14: $7f
	and c                                            ; $6d15: $a1
	rst $38                                          ; $6d16: $ff
	db $10                                           ; $6d17: $10
	rst $38                                          ; $6d18: $ff

jr_072_6d19:
	adc b                                            ; $6d19: $88
	rst $38                                          ; $6d1a: $ff
	sbc $7f                                          ; $6d1b: $de $7f
	pop af                                           ; $6d1d: $f1
	ld sp, $20e0                                     ; $6d1e: $31 $e0 $20
	ld h, b                                          ; $6d21: $60
	and b                                            ; $6d22: $a0
	ld h, b                                          ; $6d23: $60
	and b                                            ; $6d24: $a0
	ld b, b                                          ; $6d25: $40
	ret nz                                           ; $6d26: $c0

	add b                                            ; $6d27: $80
	add b                                            ; $6d28: $80
	ldh [$e0], a                                     ; $6d29: $e0 $e0
	inc e                                            ; $6d2b: $1c
	db $fc                                           ; $6d2c: $fc
	ret z                                            ; $6d2d: $c8

	ld hl, sp-$10                                    ; $6d2e: $f8 $f0
	ldh a, [rLCDC]                                   ; $6d30: $f0 $40
	rst SubAFromDE                                          ; $6d32: $df
	ret nz                                           ; $6d33: $c0

	adc d                                            ; $6d34: $8a
	ld b, b                                          ; $6d35: $40
	pop bc                                           ; $6d36: $c1
	ld b, c                                          ; $6d37: $41
	ld b, c                                          ; $6d38: $41
	pop bc                                           ; $6d39: $c1
	jp nz, $9dc3                                     ; $6d3a: $c2 $c3 $9d

	sbc [hl]                                         ; $6d3d: $9e
	rst SubAFromBC                                          ; $6d3e: $e7
	ld hl, sp-$10                                    ; $6d3f: $f8 $f0
	rrca                                             ; $6d41: $0f
	cp $c1                                           ; $6d42: $fe $c1
	jr c, @+$01                                      ; $6d44: $38 $ff

	adc a                                            ; $6d46: $8f
	ld a, a                                          ; $6d47: $7f
	ld hl, sp-$08                                    ; $6d48: $f8 $f8
	db $dd                                           ; $6d4a: $dd
	add b                                            ; $6d4b: $80
	ld h, a                                          ; $6d4c: $67
	sub h                                            ; $6d4d: $94

jr_072_6d4e:
	ld a, a                                          ; $6d4e: $7f
	call $d080                                       ; $6d4f: $cd $80 $d0
	or b                                             ; $6d52: $b0
	ret c                                            ; $6d53: $d8

	xor b                                            ; $6d54: $a8
	ret c                                            ; $6d55: $d8

	xor b                                            ; $6d56: $a8
	call nc, $dcac                                   ; $6d57: $d4 $ac $dc
	xor h                                            ; $6d5a: $ac
	adc [hl]                                         ; $6d5b: $8e

jr_072_6d5c:
	ld a, [$7a56]                                    ; $6d5c: $fa $56 $7a
	ld e, [hl]                                       ; $6d5f: $5e
	ld [hl], d                                       ; $6d60: $72
	ld l, d                                          ; $6d61: $6a
	halt                                             ; $6d62: $76
	ld e, [hl]                                       ; $6d63: $5e
	ld h, [hl]                                       ; $6d64: $66
	ld c, [hl]                                       ; $6d65: $4e
	ld a, d                                          ; $6d66: $7a
	ld a, [hl]                                       ; $6d67: $7e
	ld [hl], d                                       ; $6d68: $72
	ld a, d                                          ; $6d69: $7a
	ld h, [hl]                                       ; $6d6a: $66
	ldh a, [c]                                       ; $6d6b: $f2
	adc $e4                                          ; $6d6c: $ce $e4
	sbc h                                            ; $6d6e: $9c
	call z, $3494                                    ; $6d6f: $cc $94 $34
	jr jr_072_6d5c                                   ; $6d72: $18 $e8

	jr z, jr_072_6d4e                                ; $6d74: $28 $d8

	ret nc                                           ; $6d76: $d0

	jr nc, jr_072_6d09                               ; $6d77: $30 $90

	ld [hl], b                                       ; $6d79: $70
	jr nz, jr_072_6d5c                               ; $6d7a: $20 $e0

	ld [hl], a                                       ; $6d7c: $77
	and h                                            ; $6d7d: $a4
	push af                                          ; $6d7e: $f5
	jr jr_072_6d81                                   ; $6d7f: $18 $00

jr_072_6d81:
	sbc $88                                          ; $6d81: $de $88
	rst SubAFromDE                                          ; $6d83: $df
	xor d                                            ; $6d84: $aa
	sub [hl]                                         ; $6d85: $96
	adc b                                            ; $6d86: $88
	rst $38                                          ; $6d87: $ff
	rst $38                                          ; $6d88: $ff
	xor d                                            ; $6d89: $aa
	nop                                              ; $6d8a: $00
	sbc c                                            ; $6d8b: $99
	sbc c                                            ; $6d8c: $99
	ld [hl], a                                       ; $6d8d: $77
	adc b                                            ; $6d8e: $88
	ld c, e                                          ; $6d8f: $4b
	ei                                               ; $6d90: $fb
	ld a, e                                          ; $6d91: $7b
	db $fc                                           ; $6d92: $fc
	ld [hl], e                                       ; $6d93: $73
	db $e4                                           ; $6d94: $e4
	sbc $88                                          ; $6d95: $de $88
	sub $01                                          ; $6d97: $d6 $01
	add b                                            ; $6d99: $80
	sub c                                            ; $6d9a: $91
	rst $38                                          ; $6d9b: $ff
	sub c                                            ; $6d9c: $91
	rst $38                                          ; $6d9d: $ff
	ret nc                                           ; $6d9e: $d0

	rst $38                                          ; $6d9f: $ff
	jp z, $09ff                                      ; $6da0: $ca $ff $09

	rst $38                                          ; $6da3: $ff
	dec h                                            ; $6da4: $25
	rst $38                                          ; $6da5: $ff
	db $d3                                           ; $6da6: $d3
	rst $38                                          ; $6da7: $ff
	sbc e                                            ; $6da8: $9b
	rst $38                                          ; $6da9: $ff
	sbc a                                            ; $6daa: $9f
	or $9e                                           ; $6dab: $f6 $9e
	di                                               ; $6dad: $f3
	sbc a                                            ; $6dae: $9f
	ldh a, [c]                                       ; $6daf: $f2
	sbc a                                            ; $6db0: $9f
	ldh a, [c]                                       ; $6db1: $f2
	ld e, a                                          ; $6db2: $5f
	ld [hl], d                                       ; $6db3: $72
	ccf                                              ; $6db4: $3f
	dec sp                                           ; $6db5: $3b
	rla                                              ; $6db6: $17
	rla                                              ; $6db7: $17
	dec b                                            ; $6db8: $05
	sbc d                                            ; $6db9: $9a
	rlca                                             ; $6dba: $07
	inc bc                                           ; $6dbb: $03
	inc bc                                           ; $6dbc: $03
	ld bc, $fd01                                     ; $6dbd: $01 $01 $fd
	rst SubAFromDE                                          ; $6dc0: $df
	ld bc, $039b                                     ; $6dc1: $01 $9b $03
	ld [bc], a                                       ; $6dc4: $02
	rlca                                             ; $6dc5: $07
	dec b                                            ; $6dc6: $05
	ld [hl], e                                       ; $6dc7: $73
	cp $95                                           ; $6dc8: $fe $95
	inc b                                            ; $6dca: $04
	rst $38                                          ; $6dcb: $ff
	db $fc                                           ; $6dcc: $fc
	di                                               ; $6dcd: $f3
	ld l, $71                                        ; $6dce: $2e $71
	xor a                                            ; $6dd0: $af
	ldh a, [$2f]                                     ; $6dd1: $f0 $2f
	ld [hl], b                                       ; $6dd3: $70
	ld a, e                                          ; $6dd4: $7b
	db $fc                                           ; $6dd5: $fc
	add e                                            ; $6dd6: $83
	inc h                                            ; $6dd7: $24
	rst $38                                          ; $6dd8: $ff
	inc h                                            ; $6dd9: $24
	rst $38                                          ; $6dda: $ff
	and [hl]                                         ; $6ddb: $a6
	rst $38                                          ; $6ddc: $ff
	or [hl]                                          ; $6ddd: $b6
	rst $38                                          ; $6dde: $ff
	sub $ff                                          ; $6ddf: $d6 $ff
	rst SubAFromDE                                          ; $6de1: $df
	ld a, l                                          ; $6de2: $7d
	rst $38                                          ; $6de3: $ff
	inc h                                            ; $6de4: $24
	db $ed                                           ; $6de5: $ed
	sbc [hl]                                         ; $6de6: $9e
	cp a                                             ; $6de7: $bf
	ld a, a                                          ; $6de8: $7f
	db $e3                                           ; $6de9: $e3
	di                                               ; $6dea: $f3
	sbc $1f                                          ; $6deb: $de $1f
	dec c                                            ; $6ded: $0d
	ld e, $12                                        ; $6dee: $1e $12
	ld e, $12                                        ; $6df0: $1e $12
	inc c                                            ; $6df2: $0c
	db $fd                                           ; $6df3: $fd
	adc d                                            ; $6df4: $8a
	add b                                            ; $6df5: $80
	nop                                              ; $6df6: $00
	add b                                            ; $6df7: $80
	add b                                            ; $6df8: $80
	ret nz                                           ; $6df9: $c0

	add b                                            ; $6dfa: $80
	db $e3                                           ; $6dfb: $e3
	jp Jump_072_7cfd                                 ; $6dfc: $c3 $fd $7c


	ei                                               ; $6dff: $fb
	xor c                                            ; $6e00: $a9
	jp nc, Jump_072_5652                             ; $6e01: $d2 $52 $56

	ld d, d                                          ; $6e04: $52
	rlca                                             ; $6e05: $07
	ld [bc], a                                       ; $6e06: $02
	rra                                              ; $6e07: $1f
	ld bc, $be7f                                     ; $6e08: $01 $7f $be
	rst $38                                          ; $6e0b: $ff
	rst $38                                          ; $6e0c: $ff
	rst $38                                          ; $6e0d: $ff
	sub d                                            ; $6e0e: $92
	add b                                            ; $6e0f: $80
	ld a, a                                          ; $6e10: $7f
	ret nz                                           ; $6e11: $c0

	ld a, a                                          ; $6e12: $7f
	ldh [$3c], a                                     ; $6e13: $e0 $3c
	rst FarCall                                          ; $6e15: $f7
	inc a                                            ; $6e16: $3c
	rst SubAFromBC                                          ; $6e17: $e7
	ld a, h                                          ; $6e18: $7c
	rst SubAFromBC                                          ; $6e19: $e7
	ld a, [hl]                                       ; $6e1a: $7e
	jp $fe77                                         ; $6e1b: $c3 $77 $fe


	sub [hl]                                         ; $6e1e: $96
	cp a                                             ; $6e1f: $bf
	pop hl                                           ; $6e20: $e1
	rst $38                                          ; $6e21: $ff
	ld h, b                                          ; $6e22: $60
	rst $38                                          ; $6e23: $ff
	jr nz, @+$01                                     ; $6e24: $20 $ff

	db $10                                           ; $6e26: $10
	rst $38                                          ; $6e27: $ff
	cp h                                             ; $6e28: $bc
	add e                                            ; $6e29: $83
	nop                                              ; $6e2a: $00
	nop                                              ; $6e2b: $00
	ld [$971c], sp                                   ; $6e2c: $08 $1c $97
	db $10                                           ; $6e2f: $10
	adc b                                            ; $6e30: $88
	rst $38                                          ; $6e31: $ff
	adc b                                            ; $6e32: $88
	rst $38                                          ; $6e33: $ff
	adc h                                            ; $6e34: $8c
	rst $38                                          ; $6e35: $ff
	call z, Call_072_5e7b                            ; $6e36: $cc $7b $5e
	add b                                            ; $6e39: $80
	xor [hl]                                         ; $6e3a: $ae
	rst $38                                          ; $6e3b: $ff
	xor $fb                                          ; $6e3c: $ee $fb
	rst $38                                          ; $6e3e: $ff
	sub c                                            ; $6e3f: $91
	rst FarCall                                          ; $6e40: $f7
	add hl, sp                                       ; $6e41: $39
	rst $38                                          ; $6e42: $ff
	ld a, h                                          ; $6e43: $7c
	adc a                                            ; $6e44: $8f
	adc $fb                                          ; $6e45: $ce $fb
	ld a, a                                          ; $6e47: $7f
	or e                                             ; $6e48: $b3
	ld a, c                                          ; $6e49: $79
	ld c, c                                          ; $6e4a: $49
	ld a, b                                          ; $6e4b: $78

jr_072_6e4c:
	ld c, e                                          ; $6e4c: $4b
	jr nc, jr_072_6e8e                               ; $6e4d: $30 $3f

	nop                                              ; $6e4f: $00
	rrca                                             ; $6e50: $0f
	ld bc, $023f                                     ; $6e51: $01 $3f $02
	ld a, [hl]                                       ; $6e54: $7e
	inc b                                            ; $6e55: $04
	ld sp, hl                                        ; $6e56: $f9
	jr jr_072_6e4c                                   ; $6e57: $18 $f3

	sbc e                                            ; $6e59: $9b
	ld h, b                                          ; $6e5a: $60
	rst JumpTable                                          ; $6e5b: $c7
	add b                                            ; $6e5c: $80
	rrca                                             ; $6e5d: $0f
	cp [hl]                                          ; $6e5e: $be
	rra                                              ; $6e5f: $1f
	ccf                                              ; $6e60: $3f
	ld a, a                                          ; $6e61: $7f
	ld a, a                                          ; $6e62: $7f
	and b                                            ; $6e63: $a0
	adc a                                            ; $6e64: $8f
	inc bc                                           ; $6e65: $03
	ld a, l                                          ; $6e66: $7d
	rlca                                             ; $6e67: $07
	ld a, b                                          ; $6e68: $78
	rrca                                             ; $6e69: $0f
	jr c, jr_072_6e7b                                ; $6e6a: $38 $0f

	inc a                                            ; $6e6c: $3c
	rrca                                             ; $6e6d: $0f
	ld a, [hl-]                                      ; $6e6e: $3a
	rra                                              ; $6e6f: $1f
	add h                                            ; $6e70: $84
	rst $38                                          ; $6e71: $ff
	add h                                            ; $6e72: $84
	rst $38                                          ; $6e73: $ff
	ld b, h                                          ; $6e74: $44
	ld [hl], e                                       ; $6e75: $73
	cp $9c                                           ; $6e76: $fe $9c
	ld b, l                                          ; $6e78: $45
	rst $38                                          ; $6e79: $ff
	ld c, c                                          ; $6e7a: $49

jr_072_6e7b:
	ld a, e                                          ; $6e7b: $7b
	cp $93                                           ; $6e7c: $fe $93
	ld c, d                                          ; $6e7e: $4a
	rst $38                                          ; $6e7f: $ff
	jp nc, $e5ff                                     ; $6e80: $d2 $ff $e5

	ld a, a                                          ; $6e83: $7f
	ld a, [$ffbf]                                    ; $6e84: $fa $bf $ff
	cpl                                              ; $6e87: $2f
	rst $38                                          ; $6e88: $ff
	dec l                                            ; $6e89: $2d
	ld a, e                                          ; $6e8a: $7b
	pop af                                           ; $6e8b: $f1
	adc h                                            ; $6e8c: $8c
	sub e                                            ; $6e8d: $93

jr_072_6e8e:
	cp $26                                           ; $6e8e: $fe $26
	cp $4a                                           ; $6e90: $fe $4a
	cp $12                                           ; $6e92: $fe $12
	db $fc                                           ; $6e94: $fc
	inc b                                            ; $6e95: $04
	db $fc                                           ; $6e96: $fc
	inc c                                            ; $6e97: $0c
	db $fc                                           ; $6e98: $fc
	inc b                                            ; $6e99: $04
	ld hl, sp+$08                                    ; $6e9a: $f8 $08
	ldh a, [$30]                                     ; $6e9c: $f0 $30
	ret nz                                           ; $6e9e: $c0

	ret nz                                           ; $6e9f: $c0

	db $fd                                           ; $6ea0: $fd
	rst SubAFromDE                                          ; $6ea1: $df
	rst $38                                          ; $6ea2: $ff
	sbc [hl]                                         ; $6ea3: $9e
	ld [$ee7a], sp                                   ; $6ea4: $08 $7a $ee
	sbc h                                            ; $6ea7: $9c
	ld de, $12ff                                     ; $6ea8: $11 $ff $12
	ld a, d                                          ; $6eab: $7a
	ldh [c], a                                       ; $6eac: $e2
	ld b, [hl]                                       ; $6ead: $46
	ldh [rPCM12], a                                  ; $6eae: $e0 $76
	ldh [c], a                                       ; $6eb0: $e2
	ld a, [hl]                                       ; $6eb1: $7e
	call c, $e066                                    ; $6eb2: $dc $66 $e0
	ld e, a                                          ; $6eb5: $5f
	nop                                              ; $6eb6: $00
	sbc l                                            ; $6eb7: $9d
	reti                                             ; $6eb8: $d9


	ld a, a                                          ; $6eb9: $7f
	ld a, e                                          ; $6eba: $7b
	push af                                          ; $6ebb: $f5
	sub a                                            ; $6ebc: $97
	add b                                            ; $6ebd: $80
	rst $38                                          ; $6ebe: $ff
	nop                                              ; $6ebf: $00
	db $ed                                           ; $6ec0: $ed
	ld e, $b7                                        ; $6ec1: $1e $b7
	ld a, a                                          ; $6ec3: $7f
	rst SubAFromBC                                          ; $6ec4: $e7
	ld a, d                                          ; $6ec5: $7a
	db $fc                                           ; $6ec6: $fc
	sbc [hl]                                         ; $6ec7: $9e

jr_072_6ec8:
	ld e, $73                                        ; $6ec8: $1e $73
	nop                                              ; $6eca: $00
	ld e, a                                          ; $6ecb: $5f
	ld b, b                                          ; $6ecc: $40
	adc h                                            ; $6ecd: $8c
	xor $bf                                          ; $6ece: $ee $bf
	xor $fb                                          ; $6ed0: $ee $fb
	cp a                                             ; $6ed2: $bf
	pop de                                           ; $6ed3: $d1
	rst $38                                          ; $6ed4: $ff
	ld bc, $00ff                                     ; $6ed5: $01 $ff $00
	or a                                             ; $6ed8: $b7
	ld a, b                                          ; $6ed9: $78
	db $fd                                           ; $6eda: $fd
	cp $cf                                           ; $6edb: $fe $cf
	rst SubAFromDE                                          ; $6edd: $df
	ei                                               ; $6ede: $fb
	ld a, l                                          ; $6edf: $7d
	ld a, e                                          ; $6ee0: $7b
	ld a, e                                          ; $6ee1: $7b
	ld b, b                                          ; $6ee2: $40
	dec hl                                           ; $6ee3: $2b
	ld h, b                                          ; $6ee4: $60
	sbc h                                            ; $6ee5: $9c
	ccf                                              ; $6ee6: $3f
	rst $38                                          ; $6ee7: $ff
	xor a                                            ; $6ee8: $af
	ld l, a                                          ; $6ee9: $6f
	ld h, b                                          ; $6eea: $60
	cpl                                              ; $6eeb: $2f
	add b                                            ; $6eec: $80
	ld e, [hl]                                       ; $6eed: $5e
	ld h, b                                          ; $6eee: $60
	ld e, a                                          ; $6eef: $5f
	add b                                            ; $6ef0: $80
	sbc l                                            ; $6ef1: $9d
	ld e, c                                          ; $6ef2: $59
	rst $38                                          ; $6ef3: $ff
	ld l, a                                          ; $6ef4: $6f
	add b                                            ; $6ef5: $80
	ld [hl], a                                       ; $6ef6: $77
	cp $99                                           ; $6ef7: $fe $99
	db $fd                                           ; $6ef9: $fd
	ld a, $6f                                        ; $6efa: $3e $6f
	rst FarCall                                          ; $6efc: $f7
	ld e, $1c                                        ; $6efd: $1e $1c
	ld d, a                                          ; $6eff: $57
	add b                                            ; $6f00: $80
	ld a, [hl]                                       ; $6f01: $7e
	call $ea9b                                       ; $6f02: $cd $9b $ea
	cp a                                             ; $6f05: $bf
	xor $ff                                          ; $6f06: $ee $ff
	ld l, a                                          ; $6f08: $6f
	add b                                            ; $6f09: $80
	ld [hl], a                                       ; $6f0a: $77
	cp $99                                           ; $6f0b: $fe $99
	cp e                                             ; $6f0d: $bb
	ld a, h                                          ; $6f0e: $7c
	rst AddAOntoHL                                          ; $6f0f: $ef
	rst SubAFromDE                                          ; $6f10: $df
	ld a, a                                          ; $6f11: $7f
	jr c, jr_072_6f2f                                ; $6f12: $38 $1b

	add b                                            ; $6f14: $80
	ld l, d                                          ; $6f15: $6a
	ldh [$03], a                                     ; $6f16: $e0 $03
	add b                                            ; $6f18: $80
	inc sp                                           ; $6f19: $33
	add b                                            ; $6f1a: $80
	ld a, a                                          ; $6f1b: $7f
	cp $9b                                           ; $6f1c: $fe $9b
	ld h, a                                          ; $6f1e: $67
	rst $38                                          ; $6f1f: $ff
	ld e, $3e                                        ; $6f20: $1e $3e
	rla                                              ; $6f22: $17
	add b                                            ; $6f23: $80
	ld a, a                                          ; $6f24: $7f
	cp $9b                                           ; $6f25: $fe $9b
	rst SubAFromBC                                          ; $6f27: $e7
	rst $38                                          ; $6f28: $ff
	ld a, a                                          ; $6f29: $7f
	ld a, h                                          ; $6f2a: $7c
	inc bc                                           ; $6f2b: $03
	add b                                            ; $6f2c: $80
	sbc e                                            ; $6f2d: $9b
	sub e                                            ; $6f2e: $93

jr_072_6f2f:
	jr z, jr_072_6f41                                ; $6f2f: $28 $10

	nop                                              ; $6f31: $00
	cp a                                             ; $6f32: $bf
	ld b, h                                          ; $6f33: $44
	adc b                                            ; $6f34: $88
	sbc c                                            ; $6f35: $99
	jr z, jr_072_6ec8                                ; $6f36: $28 $90

	add b                                            ; $6f38: $80
	ld sp, $0300                                     ; $6f39: $31 $00 $03
	ld a, c                                          ; $6f3c: $79
	ld a, h                                          ; $6f3d: $7c
	sbc e                                            ; $6f3e: $9b
	ld c, $02                                        ; $6f3f: $0e $02

jr_072_6f41:
	cp $04                                           ; $6f41: $fe $04
	sbc $fc                                          ; $6f43: $de $fc
	sub [hl]                                         ; $6f45: $96
	call c, Call_072_4cfc                            ; $6f46: $dc $fc $4c
	db $fc                                           ; $6f49: $fc
	inc h                                            ; $6f4a: $24
	db $fc                                           ; $6f4b: $fc
	inc d                                            ; $6f4c: $14
	cp $14                                           ; $6f4d: $fe $14
	ld [hl], a                                       ; $6f4f: $77
	ldh [rIE], a                                     ; $6f50: $e0 $ff
	sbc e                                            ; $6f52: $9b
	xor b                                            ; $6f53: $a8
	ld l, h                                          ; $6f54: $6c
	xor b                                            ; $6f55: $a8
	sub b                                            ; $6f56: $90
	rla                                              ; $6f57: $17
	ldh [$99], a                                     ; $6f58: $e0 $99
	xor d                                            ; $6f5a: $aa
	ld l, h                                          ; $6f5b: $6c
	cp h                                             ; $6f5c: $bc
	cp b                                             ; $6f5d: $b8
	add hl, hl                                       ; $6f5e: $29
	db $10                                           ; $6f5f: $10
	rra                                              ; $6f60: $1f
	ldh [$97], a                                     ; $6f61: $e0 $97
	add $6c                                          ; $6f63: $c6 $6c
	db $fc                                           ; $6f65: $fc
	cp h                                             ; $6f66: $bc
	ld de, $0338                                     ; $6f67: $11 $38 $03
	ld de, $e03f                                     ; $6f6a: $11 $3f $e0
	ld b, [hl]                                       ; $6f6d: $46
	inc bc                                           ; $6f6e: $03
	rst SubAFromDE                                          ; $6f6f: $df
	ld bc, $0280                                     ; $6f70: $01 $80 $02
	inc bc                                           ; $6f73: $03
	ld [bc], a                                       ; $6f74: $02
	inc bc                                           ; $6f75: $03
	ld b, $05                                        ; $6f76: $06 $05
	ld c, $09                                        ; $6f78: $0e $09
	ld c, $09                                        ; $6f7a: $0e $09
	ld d, $19                                        ; $6f7c: $16 $19
	ld [de], a                                       ; $6f7e: $12
	dec e                                            ; $6f7f: $1d
	ld a, [de]                                       ; $6f80: $1a
	dec d                                            ; $6f81: $15
	jr c, @+$29                                      ; $6f82: $38 $27

	ld a, $23                                        ; $6f84: $3e $23
	dec a                                            ; $6f86: $3d
	inc hl                                           ; $6f87: $23
	cpl                                              ; $6f88: $2f
	ld sp, $1916                                     ; $6f89: $31 $16 $19
	inc de                                           ; $6f8c: $13
	inc e                                            ; $6f8d: $1c
	add hl, de                                       ; $6f8e: $19
	ld e, $08                                        ; $6f8f: $1e $08
	sub [hl]                                         ; $6f91: $96
	rrca                                             ; $6f92: $0f
	ld a, [bc]                                       ; $6f93: $0a
	dec c                                            ; $6f94: $0d
	dec b                                            ; $6f95: $05
	ld b, $02                                        ; $6f96: $06 $02
	inc bc                                           ; $6f98: $03
	ld bc, $ee01                                     ; $6f99: $01 $01 $ee
	sbc $03                                          ; $6f9c: $de $03
	db $eb                                           ; $6f9e: $eb
	rst SubAFromDE                                          ; $6f9f: $df
	rlca                                             ; $6fa0: $07
	add b                                            ; $6fa1: $80
	dec de                                           ; $6fa2: $1b
	inc e                                            ; $6fa3: $1c
	ccf                                              ; $6fa4: $3f
	ld hl, $467b                                     ; $6fa5: $21 $7b $46
	rst $38                                          ; $6fa8: $ff
	call nz, Call_072_47ff                           ; $6fa9: $c4 $ff $47
	cp $8f                                           ; $6fac: $fe $8f
	ld hl, sp-$71                                    ; $6fae: $f8 $8f
	ldh a, [$9f]                                     ; $6fb0: $f0 $9f
	ldh a, [$bf]                                     ; $6fb2: $f0 $bf
	ldh a, [$7f]                                     ; $6fb4: $f0 $7f
	ldh a, [$7f]                                     ; $6fb6: $f0 $7f
	call z, $c64f                                    ; $6fb8: $cc $4f $c6
	ld b, a                                          ; $6fbb: $47
	add l                                            ; $6fbc: $85
	add a                                            ; $6fbd: $87
	adc c                                            ; $6fbe: $89
	adc a                                            ; $6fbf: $8f
	sub e                                            ; $6fc0: $93
	add b                                            ; $6fc1: $80
	sbc a                                            ; $6fc2: $9f
	dec h                                            ; $6fc3: $25
	ccf                                              ; $6fc4: $3f
	xor d                                            ; $6fc5: $aa
	cp a                                             ; $6fc6: $bf
	jp nc, $e07f                                     ; $6fc7: $d2 $7f $e0

	ccf                                              ; $6fca: $3f
	ld e, a                                          ; $6fcb: $5f
	cp a                                             ; $6fcc: $bf
	inc a                                            ; $6fcd: $3c
	jp Jump_072_7f8f                                 ; $6fce: $c3 $8f $7f


	cp $01                                           ; $6fd1: $fe $01
	rst $38                                          ; $6fd3: $ff
	rst $38                                          ; $6fd4: $ff
	ld h, b                                          ; $6fd5: $60
	ld a, a                                          ; $6fd6: $7f
	rra                                              ; $6fd7: $1f
	rra                                              ; $6fd8: $1f
	dec c                                            ; $6fd9: $0d
	dec bc                                           ; $6fda: $0b
	ld c, $0b                                        ; $6fdb: $0e $0b
	ccf                                              ; $6fdd: $3f
	dec a                                            ; $6fde: $3d
	dec sp                                           ; $6fdf: $3b
	add $93                                          ; $6fe0: $c6 $93
	cp $fd                                           ; $6fe2: $fe $fd
	dec a                                            ; $6fe4: $3d
	inc sp                                           ; $6fe5: $33
	rst FarCall                                          ; $6fe6: $f7
	adc $bb                                          ; $6fe7: $ce $bb
	ld a, d                                          ; $6fe9: $7a
	pop bc                                           ; $6fea: $c1
	pop bc                                           ; $6feb: $c1
	nop                                              ; $6fec: $00

Jump_072_6fed:
	nop                                              ; $6fed: $00
	db $dd                                           ; $6fee: $dd
	ld bc, $03df                                     ; $6fef: $01 $df $03
	adc a                                            ; $6ff2: $8f
	dec b                                            ; $6ff3: $05
	rlca                                             ; $6ff4: $07
	dec c                                            ; $6ff5: $0d
	rrca                                             ; $6ff6: $0f
	add hl, bc                                       ; $6ff7: $09
	rrca                                             ; $6ff8: $0f
	db $10                                           ; $6ff9: $10
	rra                                              ; $6ffa: $1f
	db $10                                           ; $6ffb: $10
	rra                                              ; $6ffc: $1f
	jr nz, jr_072_703e                               ; $6ffd: $20 $3f

	jr nz, jr_072_7040                               ; $6fff: $20 $3f

	ld b, b                                          ; $7001: $40
	ld a, a                                          ; $7002: $7f
	ld l, a                                          ; $7003: $6f
	cp $7f                                           ; $7004: $fe $7f
	or $f3                                           ; $7006: $f6 $f3
	ld l, a                                          ; $7008: $6f
	ld [hl-], a                                      ; $7009: $32
	add c                                            ; $700a: $81
	inc b                                            ; $700b: $04
	rlca                                             ; $700c: $07
	db $f4                                           ; $700d: $f4
	rst FarCall                                          ; $700e: $f7
	db $fd                                           ; $700f: $fd
	ld l, a                                          ; $7010: $6f
	db $fd                                           ; $7011: $fd
	add a                                            ; $7012: $87
	ei                                               ; $7013: $fb
	rrca                                             ; $7014: $0f
	ldh a, [$1f]                                     ; $7015: $f0 $1f
	pop af                                           ; $7017: $f1
	rst $38                                          ; $7018: $ff
	dec sp                                           ; $7019: $3b
	cp $4f                                           ; $701a: $fe $4f
	db $fc                                           ; $701c: $fc
	adc [hl]                                         ; $701d: $8e
	ld hl, sp+$1c                                    ; $701e: $f8 $1c
	ldh a, [$3b]                                     ; $7020: $f0 $3b
	ldh [$7f], a                                     ; $7022: $e0 $7f
	ret nz                                           ; $7024: $c0

	ld a, a                                          ; $7025: $7f
	ret z                                            ; $7026: $c8

	rst $38                                          ; $7027: $ff
	sub b                                            ; $7028: $90
	ld a, e                                          ; $7029: $7b
	cp $9c                                           ; $702a: $fe $9c
	jr nz, @+$01                                     ; $702c: $20 $ff

	ld b, h                                          ; $702e: $44
	ld a, e                                          ; $702f: $7b
	cp $9e                                           ; $7030: $fe $9e
	adc b                                            ; $7032: $88
	ld a, e                                          ; $7033: $7b
	cp $9b                                           ; $7034: $fe $9b
	sbc b                                            ; $7036: $98
	sub $b9                                          ; $7037: $d6 $b9
	rst SubAFromHL                                          ; $7039: $d7
	ld a, e                                          ; $703a: $7b
	cp $80                                           ; $703b: $fe $80
	sub a                                            ; $703d: $97

jr_072_703e:
	ld sp, hl                                        ; $703e: $f9
	sub a                                            ; $703f: $97

jr_072_7040:
	ld sp, hl                                        ; $7040: $f9
	ld d, e                                          ; $7041: $53
	db $fd                                           ; $7042: $fd
	ld [$2bfd], a                                    ; $7043: $ea $fd $2b
	db $fc                                           ; $7046: $fc
	cp l                                             ; $7047: $bd
	cp $ae                                           ; $7048: $fe $ae
	ld a, a                                          ; $704a: $7f
	ld e, e                                          ; $704b: $5b
	rst AddAOntoHL                                          ; $704c: $ef
	sbc l                                            ; $704d: $9d
	db $eb                                           ; $704e: $eb
	xor l                                            ; $704f: $ad
	ld e, e                                          ; $7050: $5b

jr_072_7051:
	dec [hl]                                         ; $7051: $35
	db $db                                           ; $7052: $db
	ld a, l                                          ; $7053: $7d
	sub e                                            ; $7054: $93
	ld e, c                                          ; $7055: $59
	or a                                             ; $7056: $b7
	or d                                             ; $7057: $b2
	rst $38                                          ; $7058: $ff
	or [hl]                                          ; $7059: $b6
	rst $38                                          ; $705a: $ff
	ld d, [hl]                                       ; $705b: $56
	sbc d                                            ; $705c: $9a
	ld e, a                                          ; $705d: $5f
	ld c, c                                          ; $705e: $49
	ld c, c                                          ; $705f: $49
	add hl, bc                                       ; $7060: $09
	add hl, bc                                       ; $7061: $09
	push af                                          ; $7062: $f5
	rst SubAFromDE                                          ; $7063: $df
	ld [hl], d                                       ; $7064: $72
	add b                                            ; $7065: $80
	rst $38                                          ; $7066: $ff
	adc l                                            ; $7067: $8d
	rst $38                                          ; $7068: $ff
	and h                                            ; $7069: $a4
	rst $38                                          ; $706a: $ff
	jp nc, $aaff                                     ; $706b: $d2 $ff $aa

	sub $ff                                          ; $706e: $d6 $ff
	xor d                                            ; $7070: $aa
	rst $38                                          ; $7071: $ff
	ld d, l                                          ; $7072: $55
	rst $38                                          ; $7073: $ff
	db $eb                                           ; $7074: $eb
	sbc a                                            ; $7075: $9f
	jp z, $ea3f                                      ; $7076: $ca $3f $ea

	ccf                                              ; $7079: $3f
	ld e, h                                          ; $707a: $5c
	cp a                                             ; $707b: $bf
	or $8f                                           ; $707c: $f6 $8f
	cp l                                             ; $707e: $bd
	jp $c17e                                         ; $707f: $c3 $7e $c1


	ld a, $e1                                        ; $7082: $3e $e1
	rra                                              ; $7084: $1f
	sub [hl]                                         ; $7085: $96
	ldh a, [rAUD2ENV]                                ; $7086: $f0 $17
	ld hl, sp+$0f                                    ; $7088: $f8 $0f
	ld hl, sp+$0b                                    ; $708a: $f8 $0b
	db $fc                                           ; $708c: $fc
	dec b                                            ; $708d: $05
	cp $f3                                           ; $708e: $fe $f3
	rst SubAFromDE                                          ; $7090: $df
	add b                                            ; $7091: $80
	add b                                            ; $7092: $80
	ld b, b                                          ; $7093: $40
	ret nz                                           ; $7094: $c0

	ld h, b                                          ; $7095: $60
	ldh [rAUD3LEVEL], a                              ; $7096: $e0 $1c
	db $fc                                           ; $7098: $fc
	ld [bc], a                                       ; $7099: $02
	cp $1f                                           ; $709a: $fe $1f
	rst $38                                          ; $709c: $ff
	ld h, e                                          ; $709d: $63
	cp $87                                           ; $709e: $fe $87
	db $fc                                           ; $70a0: $fc
	rst $38                                          ; $70a1: $ff
	ld hl, sp+$07                                    ; $70a2: $f8 $07
	ld hl, sp-$08                                    ; $70a4: $f8 $f8
	rlca                                             ; $70a6: $07
	ld bc, $2000                                     ; $70a7: $01 $00 $20
	rra                                              ; $70aa: $1f
	adc a                                            ; $70ab: $8f
	ld [hl], b                                       ; $70ac: $70
	ldh a, [c]                                       ; $70ad: $f2
	ld bc, $02cd                                     ; $70ae: $01 $cd $02
	and e                                            ; $70b1: $a3
	adc [hl]                                         ; $70b2: $8e
	inc b                                            ; $70b3: $04
	ld b, [hl]                                       ; $70b4: $46
	ld [$10ca], sp                                   ; $70b5: $08 $ca $10
	adc b                                            ; $70b8: $88
	db $10                                           ; $70b9: $10
	sub d                                            ; $70ba: $92
	jr nz, jr_072_7051                               ; $70bb: $20 $94

	ld [hl+], a                                      ; $70bd: $22
	ld d, l                                          ; $70be: $55
	ld [hl+], a                                      ; $70bf: $22
	ld [hl], c                                       ; $70c0: $71
	ld h, $68                                        ; $70c1: $26 $68
	scf                                              ; $70c3: $37
	ldh [$c1], a                                     ; $70c4: $e0 $c1
	sub l                                            ; $70c6: $95
	rst SubAFromDE                                          ; $70c7: $df
	di                                               ; $70c8: $f3
	rst $38                                          ; $70c9: $ff
	ld [hl], a                                       ; $70ca: $77
	rst AddAOntoHL                                          ; $70cb: $ef
	ld a, l                                          ; $70cc: $7d
	rst SubAFromBC                                          ; $70cd: $e7
	dec a                                            ; $70ce: $3d
	rst $38                                          ; $70cf: $ff
	dec e                                            ; $70d0: $1d
	ld a, e                                          ; $70d1: $7b
	cp $9e                                           ; $70d2: $fe $9e
	add hl, bc                                       ; $70d4: $09
	ld a, e                                          ; $70d5: $7b
	cp $93                                           ; $70d6: $fe $93
	dec b                                            ; $70d8: $05
	rst $38                                          ; $70d9: $ff
	add l                                            ; $70da: $85
	rst $38                                          ; $70db: $ff
	ld b, l                                          ; $70dc: $45
	rst $38                                          ; $70dd: $ff
	dec h                                            ; $70de: $25
	ld a, a                                          ; $70df: $7f
	add hl, hl                                       ; $70e0: $29
	ld a, a                                          ; $70e1: $7f
	dec bc                                           ; $70e2: $0b
	ccf                                              ; $70e3: $3f
	ld a, e                                          ; $70e4: $7b
	cp $eb                                           ; $70e5: $fe $eb
	rst SubAFromDE                                          ; $70e7: $df
	inc bc                                           ; $70e8: $03
	ld a, a                                          ; $70e9: $7f
	ld h, l                                          ; $70ea: $65
	add d                                            ; $70eb: $82
	cp l                                             ; $70ec: $bd
	ld b, d                                          ; $70ed: $42
	db $db                                           ; $70ee: $db
	inc h                                            ; $70ef: $24
	ld a, [hl+]                                      ; $70f0: $2a
	db $dd                                           ; $70f1: $dd
	sbc $35                                          ; $70f2: $de $35
	ld l, [hl]                                       ; $70f4: $6e
	sbc e                                            ; $70f5: $9b
	ld c, $fb                                        ; $70f6: $0e $fb

jr_072_70f8:
	rlca                                             ; $70f8: $07
	db $fd                                           ; $70f9: $fd
	inc b                                            ; $70fa: $04
	rst $38                                          ; $70fb: $ff
	ld c, d                                          ; $70fc: $4a
	or a                                             ; $70fd: $b7
	ret c                                            ; $70fe: $d8

	daa                                              ; $70ff: $27
	xor c                                            ; $7100: $a9
	ld b, [hl]                                       ; $7101: $46
	adc l                                            ; $7102: $8d
	ld b, d                                          ; $7103: $42
	ld c, h                                          ; $7104: $4c
	add d                                            ; $7105: $82
	ld c, h                                          ; $7106: $4c
	add d                                            ; $7107: $82
	inc e                                            ; $7108: $1c
	ld a, e                                          ; $7109: $7b
	cp $99                                           ; $710a: $fe $99
	rra                                              ; $710c: $1f
	add d                                            ; $710d: $82
	ld e, e                                          ; $710e: $5b
	add [hl]                                         ; $710f: $86
	jp z, $e087                                      ; $7110: $ca $87 $e0

	pop bc                                           ; $7113: $c1
	rst SubAFromDE                                          ; $7114: $df
	add b                                            ; $7115: $80
	rst SubAFromDE                                          ; $7116: $df
	add c                                            ; $7117: $81
	add e                                            ; $7118: $83
	jp nz, $c542                                     ; $7119: $c2 $42 $c5

	ld b, l                                          ; $711c: $45
	ld l, b                                          ; $711d: $68
	xor b                                            ; $711e: $a8
	inc a                                            ; $711f: $3c
	call nc, $e21e                                   ; $7120: $d4 $1e $e2
	rrca                                             ; $7123: $0f
	pop af                                           ; $7124: $f1
	add a                                            ; $7125: $87
	ld a, b                                          ; $7126: $78
	jp $e13c                                         ; $7127: $c3 $3c $e1


	ld e, $f0                                        ; $712a: $1e $f0
	rrca                                             ; $712c: $0f
	ld [hl], b                                       ; $712d: $70
	adc a                                            ; $712e: $8f
	jr c, jr_072_70f8                                ; $712f: $38 $c7

	inc e                                            ; $7131: $1c
	db $e3                                           ; $7132: $e3
	inc e                                            ; $7133: $1c
	db $e3                                           ; $7134: $e3
	db $ed                                           ; $7135: $ed
	rst SubAFromDE                                          ; $7136: $df
	ld bc, $f1df                                     ; $7137: $01 $df $f1
	add b                                            ; $713a: $80
	rst GetHLinHL                                          ; $713b: $cf
	ccf                                              ; $713c: $3f
	adc [hl]                                         ; $713d: $8e
	ld [hl], c                                       ; $713e: $71
	ccf                                              ; $713f: $3f
	ret nz                                           ; $7140: $c0

	ld a, a                                          ; $7141: $7f
	add b                                            ; $7142: $80
	ld hl, sp+$00                                    ; $7143: $f8 $00
	ld [hl], e                                       ; $7145: $73
	db $fc                                           ; $7146: $fc
	ldh a, [$a3]                                     ; $7147: $f0 $a3
	db $fc                                           ; $7149: $fc

jr_072_714a:
	ld b, b                                          ; $714a: $40
	sub [hl]                                         ; $714b: $96
	ldh [$7b], a                                     ; $714c: $e0 $7b

jr_072_714e:
	nop                                              ; $714e: $00

Jump_072_714f:
	sbc l                                            ; $714f: $9d
	nop                                              ; $7150: $00
	ld c, [hl]                                       ; $7151: $4e
	add b                                            ; $7152: $80
	ldh [c], a                                       ; $7153: $e2
	ld bc, $00b3                                     ; $7154: $01 $b3 $00
	xor c                                            ; $7157: $a9
	db $10                                           ; $7158: $10
	dec d                                            ; $7159: $15
	sub [hl]                                         ; $715a: $96
	ld [$0c12], sp                                   ; $715b: $08 $12 $0c
	ld a, [bc]                                       ; $715e: $0a
	ld b, h                                          ; $715f: $44
	cpl                                              ; $7160: $2f
	ld b, d                                          ; $7161: $42
	ld b, $63                                        ; $7162: $06 $63
	ldh [$c1], a                                     ; $7164: $e0 $c1
	rst SubAFromDE                                          ; $7166: $df
	ldh [$df], a                                     ; $7167: $e0 $df
	jr nc, jr_072_714a                               ; $7169: $30 $df

	xor b                                            ; $716b: $a8
	add l                                            ; $716c: $85
	ld h, h                                          ; $716d: $64
	db $e4                                           ; $716e: $e4

Jump_072_716f:
	and [hl]                                         ; $716f: $a6
	and [hl]                                         ; $7170: $a6
	cpl                                              ; $7171: $2f
	add hl, hl                                       ; $7172: $29
	ld a, $31                                        ; $7173: $3e $31
	inc a                                            ; $7175: $3c
	inc hl                                           ; $7176: $23
	ld hl, sp-$39                                    ; $7177: $f8 $c7
	ldh a, [rIF]                                     ; $7179: $f0 $0f
	pop hl                                           ; $717b: $e1
	ld e, $c3                                        ; $717c: $1e $c3
	inc a                                            ; $717e: $3c
	rlca                                             ; $717f: $07
	ld hl, sp+$0f                                    ; $7180: $f8 $0f
	ldh a, [rAUD3LEVEL]                              ; $7182: $f0 $1c
	db $e3                                           ; $7184: $e3
	jr c, jr_072_714e                                ; $7185: $38 $c7

	ld c, l                                          ; $7187: $4d
	ld a, [bc]                                       ; $7188: $0a
	ld a, h                                          ; $7189: $7c
	jp nc, $7080                                     ; $718a: $d2 $80 $70

	ld a, a                                          ; $718d: $7f
	add b                                            ; $718e: $80
	rst $38                                          ; $718f: $ff
	nop                                              ; $7190: $00
	rst $38                                          ; $7191: $ff
	add b                                            ; $7192: $80
	rst $38                                          ; $7193: $ff
	jp nz, $e7ff                                     ; $7194: $c2 $ff $e7

	rst $38                                          ; $7197: $ff
	push hl                                          ; $7198: $e5
	ccf                                              ; $7199: $3f
	ld hl, sp+$1f                                    ; $719a: $f8 $1f
	dec a                                            ; $719c: $3d
	rrca                                             ; $719d: $0f
	adc [hl]                                         ; $719e: $8e
	rlca                                             ; $719f: $07
	and $03                                          ; $71a0: $e6 $03
	di                                               ; $71a2: $f3
	inc bc                                           ; $71a3: $03
	ld a, e                                          ; $71a4: $7b
	ld bc, $103d                                     ; $71a5: $01 $3d $10
	cp a                                             ; $71a8: $bf
	ld [$9cdf], sp                                   ; $71a9: $08 $df $9c
	ld [$04ef], sp                                   ; $71ac: $08 $ef $04
	ld a, c                                          ; $71af: $79
	add [hl]                                         ; $71b0: $86
	sbc d                                            ; $71b1: $9a
	ld [hl+], a                                      ; $71b2: $22
	rst $38                                          ; $71b3: $ff
	ld [de], a                                       ; $71b4: $12
	rst $38                                          ; $71b5: $ff
	ld de, $747a                                     ; $71b6: $11 $7a $74
	sbc h                                            ; $71b9: $9c
	ld [$4cff], sp                                   ; $71ba: $08 $ff $4c
	ldh [$c1], a                                     ; $71bd: $e0 $c1
	ld a, e                                          ; $71bf: $7b
	sub l                                            ; $71c0: $95
	sub [hl]                                         ; $71c1: $96
	add h                                            ; $71c2: $84
	ei                                               ; $71c3: $fb
	sbc a                                            ; $71c4: $9f
	xor $ff                                          ; $71c5: $ee $ff
	adc $fb                                          ; $71c7: $ce $fb
	rst $38                                          ; $71c9: $ff
	or c                                             ; $71ca: $b1
	ld a, e                                          ; $71cb: $7b
	db $f4                                           ; $71cc: $f4
	ld [hl], a                                       ; $71cd: $77
	cp $7f                                           ; $71ce: $fe $7f
	ldh a, [hDisp1_OBP1]                                     ; $71d0: $f0 $94
	adc a                                            ; $71d2: $8f
	cp $bf                                           ; $71d3: $fe $bf
	adc $fb                                          ; $71d5: $ce $fb
	sbc a                                            ; $71d7: $9f
	pop af                                           ; $71d8: $f1
	rst $38                                          ; $71d9: $ff
	pop af                                           ; $71da: $f1
	rst $38                                          ; $71db: $ff
	add b                                            ; $71dc: $80
	ld b, [hl]                                       ; $71dd: $46
	sub d                                            ; $71de: $92
	ld [hl], l                                       ; $71df: $75
	ld a, [hl]                                       ; $71e0: $7e
	adc [hl]                                         ; $71e1: $8e
	ld e, [hl]                                       ; $71e2: $5e
	sbc $7f                                          ; $71e3: $de $7f
	pop hl                                           ; $71e5: $e1
	rst $38                                          ; $71e6: $ff
	ret nz                                           ; $71e7: $c0

	rst $38                                          ; $71e8: $ff
	or b                                             ; $71e9: $b0
	rst $38                                          ; $71ea: $ff
	adc h                                            ; $71eb: $8c
	rst $38                                          ; $71ec: $ff
	di                                               ; $71ed: $f3
	adc $fe                                          ; $71ee: $ce $fe
	ld b, d                                          ; $71f0: $42
	cp $31                                           ; $71f1: $fe $31

Jump_072_71f3:
	ld a, b                                          ; $71f3: $78
	rst AddAOntoHL                                          ; $71f4: $ef
	add b                                            ; $71f5: $80
	add c                                            ; $71f6: $81
	rst $38                                          ; $71f7: $ff
	rst JumpTable                                          ; $71f8: $c7
	rst $38                                          ; $71f9: $ff
	and h                                            ; $71fa: $a4
	db $fc                                           ; $71fb: $fc
	sub h                                            ; $71fc: $94
	db $fc                                           ; $71fd: $fc
	call c, $f67c                                    ; $71fe: $dc $7c $f6
	ld a, [hl]                                       ; $7201: $7e
	pop hl                                           ; $7202: $e1
	ccf                                              ; $7203: $3f

jr_072_7204:
	pop hl                                           ; $7204: $e1
	ccf                                              ; $7205: $3f
	ldh [$3f], a                                     ; $7206: $e0 $3f
	rst $38                                          ; $7208: $ff
	ccf                                              ; $7209: $3f
	rst $38                                          ; $720a: $ff
	or h                                             ; $720b: $b4
	rst $38                                          ; $720c: $ff
	jp nc, $f5db                                     ; $720d: $d2 $db $f5

	push de                                          ; $7210: $d5
	ld a, [$ff58]                                    ; $7211: $fa $58 $ff
	ld d, [hl]                                       ; $7214: $56
	add b                                            ; $7215: $80
	rst $38                                          ; $7216: $ff
	ld a, a                                          ; $7217: $7f
	rst $38                                          ; $7218: $ff
	ld a, [hl+]                                      ; $7219: $2a
	rst $38                                          ; $721a: $ff
	and l                                            ; $721b: $a5
	rst $38                                          ; $721c: $ff
	halt                                             ; $721d: $76
	rst $38                                          ; $721e: $ff
	db $db                                           ; $721f: $db
	rst $38                                          ; $7220: $ff
	cp d                                             ; $7221: $ba
	rst SubAFromDE                                          ; $7222: $df
	db $fd                                           ; $7223: $fd
	sub a                                            ; $7224: $97
	ld a, [$db97]                                    ; $7225: $fa $97 $db
	or a                                             ; $7228: $b7
	db $dd                                           ; $7229: $dd
	or a                                             ; $722a: $b7
	push hl                                          ; $722b: $e5
	ccf                                              ; $722c: $3f
	db $eb                                           ; $722d: $eb
	dec sp                                           ; $722e: $3b
	ld a, [hl+]                                      ; $722f: $2a
	ld a, [$d252]                                    ; $7230: $fa $52 $d2
	ld d, b                                          ; $7233: $50
	ret nc                                           ; $7234: $d0

	db $db                                           ; $7235: $db
	add b                                            ; $7236: $80
	ld d, a                                          ; $7237: $57
	sbc b                                            ; $7238: $98
	adc l                                            ; $7239: $8d
	ldh [$60], a                                     ; $723a: $e0 $60
	ld hl, sp+$38                                    ; $723c: $f8 $38
	db $fc                                           ; $723e: $fc
	inc h                                            ; $723f: $24
	rst $38                                          ; $7240: $ff
	inc hl                                           ; $7241: $23
	rst $38                                          ; $7242: $ff
	jr nz, jr_072_7204                               ; $7243: $20 $bf

	ld h, b                                          ; $7245: $60
	rst SubAFromDE                                          ; $7246: $df
	ld h, b                                          ; $7247: $60
	rst $38                                          ; $7248: $ff
	ret nz                                           ; $7249: $c0

	ld a, a                                          ; $724a: $7f
	ret nz                                           ; $724b: $c0

	ld a, e                                          ; $724c: $7b
	adc [hl]                                         ; $724d: $8e
	sbc [hl]                                         ; $724e: $9e
	ld b, b                                          ; $724f: $40
	ld h, e                                          ; $7250: $63
	cp $7b                                           ; $7251: $fe $7b
	ldh a, [$6f]                                     ; $7253: $f0 $6f
	xor $26                                          ; $7255: $ee $26
	adc d                                            ; $7257: $8a
	add b                                            ; $7258: $80
	ldh a, [hDisp1_SCY]                                     ; $7259: $f0 $90
	ld l, b                                          ; $725b: $68
	ret c                                            ; $725c: $d8

	db $fc                                           ; $725d: $fc
	ld b, h                                          ; $725e: $44
	db $fc                                           ; $725f: $fc
	inc h                                            ; $7260: $24
	cp d                                             ; $7261: $ba
	and $7a                                          ; $7262: $e6 $7a
	ld h, [hl]                                       ; $7264: $66
	ld a, e                                          ; $7265: $7b
	ld h, l                                          ; $7266: $65
	cp e                                             ; $7267: $bb
	and l                                            ; $7268: $a5
	or e                                             ; $7269: $b3
	xor l                                            ; $726a: $ad
	dec [hl]                                         ; $726b: $35
	dec hl                                           ; $726c: $2b
	dec [hl]                                         ; $726d: $35
	dec hl                                           ; $726e: $2b
	scf                                              ; $726f: $37
	dec hl                                           ; $7270: $2b
	inc hl                                           ; $7271: $23
	ccf                                              ; $7272: $3f
	daa                                              ; $7273: $27
	dec a                                            ; $7274: $3d
	cpl                                              ; $7275: $2f
	add hl, sp                                       ; $7276: $39
	ld a, l                                          ; $7277: $7d
	adc e                                            ; $7278: $8b
	ld [hl], e                                       ; $7279: $73
	ld sp, hl                                        ; $727a: $f9
	rst JumpTable                                          ; $727b: $c7
	add c                                            ; $727c: $81
	rst $38                                          ; $727d: $ff
	jp nz, $fa3e                                     ; $727e: $c2 $3e $fa

	ld b, $74                                        ; $7281: $06 $74
	adc h                                            ; $7283: $8c
	ret z                                            ; $7284: $c8

	ld hl, sp+$38                                    ; $7285: $f8 $38
	ld hl, sp+$58                                    ; $7287: $f8 $58
	ld hl, sp-$38                                    ; $7289: $f8 $c8
	ld hl, sp+$48                                    ; $728b: $f8 $48
	ld a, e                                          ; $728d: $7b
	cp $91                                           ; $728e: $fe $91
	xor b                                            ; $7290: $a8
	ld hl, sp+$74                                    ; $7291: $f8 $74
	db $fc                                           ; $7293: $fc
	or h                                             ; $7294: $b4
	db $fc                                           ; $7295: $fc
	ld c, h                                          ; $7296: $4c
	db $fc                                           ; $7297: $fc
	ldh a, [c]                                       ; $7298: $f2
	cp $4c                                           ; $7299: $fe $4c

jr_072_729b:
	call z, $f0f0                                    ; $729b: $cc $f0 $f0
	ld l, a                                          ; $729e: $6f
	or [hl]                                          ; $729f: $b6
	sbc h                                            ; $72a0: $9c
	jr jr_072_729b                                   ; $72a1: $18 $f8

	inc b                                            ; $72a3: $04
	ld a, b                                          ; $72a4: $78
	sub b                                            ; $72a5: $90
	ld a, a                                          ; $72a6: $7f
	cp $9d                                           ; $72a7: $fe $9d
	ld bc, $67ff                                     ; $72a9: $01 $ff $67
	cp $77                                           ; $72ac: $fe $77
	ldh a, [c]                                       ; $72ae: $f2
	ld l, a                                          ; $72af: $6f
	cp $7f                                           ; $72b0: $fe $7f
	db $f4                                           ; $72b2: $f4
	daa                                              ; $72b3: $27
	nop                                              ; $72b4: $00
	sbc $88                                          ; $72b5: $de $88
	sub c                                            ; $72b7: $91
	xor d                                            ; $72b8: $aa
	adc b                                            ; $72b9: $88
	call z, $22aa                                    ; $72ba: $cc $aa $22
	nop                                              ; $72bd: $00
	sbc c                                            ; $72be: $99
	ld b, h                                          ; $72bf: $44
	xor d                                            ; $72c0: $aa
	nop                                              ; $72c1: $00
	sbc c                                            ; $72c2: $99
	sbc c                                            ; $72c3: $99
	inc sp                                           ; $72c4: $33
	adc b                                            ; $72c5: $88
	ld a, e                                          ; $72c6: $7b
	ei                                               ; $72c7: $fb
	sbc [hl]                                         ; $72c8: $9e
	ld h, [hl]                                       ; $72c9: $66
	ld [hl], e                                       ; $72ca: $73
	ei                                               ; $72cb: $fb
	ld a, a                                          ; $72cc: $7f
	db $ec                                           ; $72cd: $ec
	ld a, e                                          ; $72ce: $7b
	pop af                                           ; $72cf: $f1
	rst SubAFromDE                                          ; $72d0: $df
	xor d                                            ; $72d1: $aa
	sbc [hl]                                         ; $72d2: $9e
	adc b                                            ; $72d3: $88
	ld a, e                                          ; $72d4: $7b
	db $ec                                           ; $72d5: $ec
	rst SubAFromDE                                          ; $72d6: $df
	adc b                                            ; $72d7: $88
	sbc [hl]                                         ; $72d8: $9e
	call z, $01dc                                    ; $72d9: $cc $dc $01
	sbc h                                            ; $72dc: $9c
	ld [hl+], a                                      ; $72dd: $22
	ld a, a                                          ; $72de: $7f
	ld [hl-], a                                      ; $72df: $32
	ld a, e                                          ; $72e0: $7b
	cp $80                                           ; $72e1: $fe $80
	add hl, sp                                       ; $72e3: $39
	rst AddAOntoHL                                          ; $72e4: $ef
	cp c                                             ; $72e5: $b9
	rst AddAOntoHL                                          ; $72e6: $ef
	cp l                                             ; $72e7: $bd
	rst SubAFromBC                                          ; $72e8: $e7
	rst $38                                          ; $72e9: $ff
	db $e3                                           ; $72ea: $e3
	di                                               ; $72eb: $f3
	xor a                                            ; $72ec: $af
	ld l, a                                          ; $72ed: $6f
	call c, $f35d                                    ; $72ee: $dc $5d $f3
	dec sp                                           ; $72f1: $3b
	rst SubAFromBC                                          ; $72f2: $e7
	or $ee                                           ; $72f3: $f6 $ee
	sbc $7e                                          ; $72f5: $de $7e
	db $fd                                           ; $72f7: $fd
	dec hl                                           ; $72f8: $2b
	ld a, [$f023]                                    ; $72f9: $fa $23 $f0
	ld hl, $f09f                                     ; $72fc: $21 $9f $f0
	rst SubAFromHL                                          ; $72ff: $d7
	ld hl, sp-$41                                    ; $7300: $f8 $bf
	add b                                            ; $7302: $80
	cp b                                             ; $7303: $b8
	dec de                                           ; $7304: $1b
	inc e                                            ; $7305: $1c
	rra                                              ; $7306: $1f
	inc e                                            ; $7307: $1c
	dec d                                            ; $7308: $15
	ld d, $02                                        ; $7309: $16 $02
	inc bc                                           ; $730b: $03
	ld bc, $0001                                     ; $730c: $01 $01 $00
	nop                                              ; $730f: $00
	inc bc                                           ; $7310: $03
	inc bc                                           ; $7311: $03
	dec e                                            ; $7312: $1d
	rra                                              ; $7313: $1f
	ld sp, $413f                                     ; $7314: $31 $3f $41
	ld a, a                                          ; $7317: $7f
	add c                                            ; $7318: $81
	rst $38                                          ; $7319: $ff
	add c                                            ; $731a: $81
	rst $38                                          ; $731b: $ff
	and e                                            ; $731c: $a3
	rst $38                                          ; $731d: $ff
	add c                                            ; $731e: $81
	rst GetHLinHL                                          ; $731f: $cf
	add c                                            ; $7320: $81
	rst AddAOntoHL                                          ; $7321: $ef
	adc d                                            ; $7322: $8a
	pop bc                                           ; $7323: $c1
	rst AddAOntoHL                                          ; $7324: $ef
	ld b, c                                          ; $7325: $41
	rst FarCall                                          ; $7326: $f7
	and c                                            ; $7327: $a1
	rst $38                                          ; $7328: $ff
	ldh a, [$5f]                                     ; $7329: $f0 $5f
	inc a                                            ; $732b: $3c
	rst GetHLinHL                                          ; $732c: $cf
	rst $38                                          ; $732d: $ff
	jp $00ff                                         ; $732e: $c3 $ff $00


	rst $38                                          ; $7331: $ff
	ret nz                                           ; $7332: $c0

	db $fd                                           ; $7333: $fd
	ldh [$58], a                                     ; $7334: $e0 $58
	ld h, b                                          ; $7336: $60
	ld h, b                                          ; $7337: $60
	sbc $c0                                          ; $7338: $de $c0
	add b                                            ; $733a: $80
	ld b, a                                          ; $733b: $47
	ret nz                                           ; $733c: $c0

	ld c, a                                          ; $733d: $4f
	add b                                            ; $733e: $80
	ld hl, $2177                                     ; $733f: $21 $77 $21
	ei                                               ; $7342: $fb
	sub b                                            ; $7343: $90
	rst $38                                          ; $7344: $ff
	sub b                                            ; $7345: $90
	rst $38                                          ; $7346: $ff
	call z, $ee7f                                    ; $7347: $cc $7f $ee
	cp e                                             ; $734a: $bb
	push af                                          ; $734b: $f5
	sbc a                                            ; $734c: $9f
	ld a, a                                          ; $734d: $7f
	rst SubAFromDE                                          ; $734e: $df
	rst FarCall                                          ; $734f: $f7
	rst AddAOntoHL                                          ; $7350: $ef
	rst AddAOntoHL                                          ; $7351: $ef
	rra                                              ; $7352: $1f
	db $fc                                           ; $7353: $fc
	inc e                                            ; $7354: $1c
	ld [hl], h                                       ; $7355: $74
	dec b                                            ; $7356: $05
	inc bc                                           ; $7357: $03
	rlca                                             ; $7358: $07
	inc b                                            ; $7359: $04
	add b                                            ; $735a: $80
	rlca                                             ; $735b: $07
	ret nz                                           ; $735c: $c0

	inc bc                                           ; $735d: $03
	pop af                                           ; $735e: $f1
	nop                                              ; $735f: $00
	inc h                                            ; $7360: $24
	rst $38                                          ; $7361: $ff
	inc h                                            ; $7362: $24
	rst $38                                          ; $7363: $ff
	sub d                                            ; $7364: $92
	rst $38                                          ; $7365: $ff
	jp z, $49ff                                      ; $7366: $ca $ff $49

	rst $38                                          ; $7369: $ff
	ld h, l                                          ; $736a: $65
	rst $38                                          ; $736b: $ff
	or h                                             ; $736c: $b4
	rst $38                                          ; $736d: $ff
	ld a, [rIE]                                    ; $736e: $fa $ff $ff
	daa                                              ; $7371: $27
	cp a                                             ; $7372: $bf
	call nz, $e4df                                   ; $7373: $c4 $df $e4
	rst $38                                          ; $7376: $ff
	db $f4                                           ; $7377: $f4
	sbc a                                            ; $7378: $9f
	xor b                                            ; $7379: $a8
	add b                                            ; $737a: $80
	cp a                                             ; $737b: $bf
	adc [hl]                                         ; $737c: $8e
	ld a, a                                          ; $737d: $7f
	add hl, bc                                       ; $737e: $09
	rst $38                                          ; $737f: $ff
	rrca                                             ; $7380: $0f
	dec e                                            ; $7381: $1d
	db $fd                                           ; $7382: $fd
	dec e                                            ; $7383: $1d
	db $fd                                           ; $7384: $fd
	dec a                                            ; $7385: $3d
	db $fd                                           ; $7386: $fd
	inc l                                            ; $7387: $2c
	db $ec                                           ; $7388: $ec
	ld c, b                                          ; $7389: $48
	ret z                                            ; $738a: $c8

	adc b                                            ; $738b: $88
	adc b                                            ; $738c: $88
	add b                                            ; $738d: $80
	add b                                            ; $738e: $80
	ret nz                                           ; $738f: $c0

	ld b, b                                          ; $7390: $40
	ldh a, [$30]                                     ; $7391: $f0 $30
	ld hl, sp+$38                                    ; $7393: $f8 $38
	and $3e                                          ; $7395: $e6 $3e
	pop hl                                           ; $7397: $e1
	ccf                                              ; $7398: $3f
	ldh [$9c], a                                     ; $7399: $e0 $9c
	ccf                                              ; $739b: $3f
	ret nz                                           ; $739c: $c0

	ld a, a                                          ; $739d: $7f
	ld [hl], a                                       ; $739e: $77
	cp $4f                                           ; $739f: $fe $4f
	ld b, b                                          ; $73a1: $40
	sub b                                            ; $73a2: $90
	ei                                               ; $73a3: $fb
	and a                                            ; $73a4: $a7
	ld l, l                                          ; $73a5: $6d
	sbc $57                                          ; $73a6: $de $57
	ld hl, sp+$3e                                    ; $73a8: $f8 $3e
	pop hl                                           ; $73aa: $e1
	ei                                               ; $73ab: $fb
	rst SubAFromBC                                          ; $73ac: $e7
	rst SubAFromHL                                          ; $73ad: $d7
	ld l, a                                          ; $73ae: $6f
	ld a, [$fb3e]                                    ; $73af: $fa $3e $fb
	ld a, e                                          ; $73b2: $7b
	ld b, b                                          ; $73b3: $40
	dec sp                                           ; $73b4: $3b
	ld h, b                                          ; $73b5: $60
	sub l                                            ; $73b6: $95
	nop                                              ; $73b7: $00
	dec a                                            ; $73b8: $3d
	ret nz                                           ; $73b9: $c0

	ld hl, sp-$20                                    ; $73ba: $f8 $e0
	ld d, b                                          ; $73bc: $50
	ldh [rLCDC], a                                   ; $73bd: $e0 $40
	ld b, b                                          ; $73bf: $40
	rst JumpTable                                          ; $73c0: $c7
	dec sp                                           ; $73c1: $3b
	ld h, b                                          ; $73c2: $60
	sub h                                            ; $73c3: $94
	rst $38                                          ; $73c4: $ff
	ldh [rIE], a                                     ; $73c5: $e0 $ff
	nop                                              ; $73c7: $00
	rst AddAOntoHL                                          ; $73c8: $ef
	rra                                              ; $73c9: $1f
	ld a, l                                          ; $73ca: $7d
	rra                                              ; $73cb: $1f
	inc e                                            ; $73cc: $1c
	inc b                                            ; $73cd: $04
	rlca                                             ; $73ce: $07
	inc sp                                           ; $73cf: $33
	ld h, b                                          ; $73d0: $60
	sub l                                            ; $73d1: $95
	ccf                                              ; $73d2: $3f
	rst SubAFromBC                                          ; $73d3: $e7
	rst $38                                          ; $73d4: $ff
	inc b                                            ; $73d5: $04
	ld a, a                                          ; $73d6: $7f
	add h                                            ; $73d7: $84
	rst $38                                          ; $73d8: $ff
	call nz, $f8ef                                   ; $73d9: $c4 $ef $f8
	ld l, a                                          ; $73dc: $6f
	ld h, b                                          ; $73dd: $60
	ld b, a                                          ; $73de: $47
	add b                                            ; $73df: $80
	sub b                                            ; $73e0: $90
	ld l, h                                          ; $73e1: $6c
	rst SubAFromDE                                          ; $73e2: $df
	ld d, a                                          ; $73e3: $57
	ld hl, sp+$3f                                    ; $73e4: $f8 $3f
	ldh [rIE], a                                     ; $73e6: $e0 $ff
	ldh [$dc], a                                     ; $73e8: $e0 $dc
	ld h, e                                          ; $73ea: $63
	rst $38                                          ; $73eb: $ff
	ccf                                              ; $73ec: $3f
	ld a, [$f127]                                    ; $73ed: $fa $27 $f1
	ld d, e                                          ; $73f0: $53
	add b                                            ; $73f1: $80
	sbc b                                            ; $73f2: $98
	db $fc                                           ; $73f3: $fc
	rrca                                             ; $73f4: $0f
	rst $38                                          ; $73f5: $ff
	jp $c03f                                         ; $73f6: $c3 $3f $c0


	rst $38                                          ; $73f9: $ff
	cp [hl]                                          ; $73fa: $be
	db $fd                                           ; $73fb: $fd
	ld hl, sp+$70                                    ; $73fc: $f8 $70
	sbc c                                            ; $73fe: $99
	add b                                            ; $73ff: $80
	ldh [$e0], a                                     ; $7400: $e0 $e0
	ld b, a                                          ; $7402: $47
	ret nz                                           ; $7403: $c0

	rst GetHLinHL                                          ; $7404: $cf
	ld b, e                                          ; $7405: $43
	add b                                            ; $7406: $80
	sbc l                                            ; $7407: $9d
	rst SubAFromBC                                          ; $7408: $e7
	ld hl, sp+$77                                    ; $7409: $f8 $77
	ld e, [hl]                                       ; $740b: $5e
	sbc b                                            ; $740c: $98
	ld a, b                                          ; $740d: $78
	rlca                                             ; $740e: $07
	rra                                              ; $740f: $1f
	rra                                              ; $7410: $1f
	inc c                                            ; $7411: $0c
	rlca                                             ; $7412: $07
	jp $802b                                         ; $7413: $c3 $2b $80


	ld [hl], a                                       ; $7416: $77
	ld a, [hl]                                       ; $7417: $7e
	ld a, e                                          ; $7418: $7b
	add b                                            ; $7419: $80
	sbc l                                            ; $741a: $9d
	adc $ff                                          ; $741b: $ce $ff
	ld b, e                                          ; $741d: $43
	add b                                            ; $741e: $80
	sbc c                                            ; $741f: $99
	db $fd                                           ; $7420: $fd
	and e                                            ; $7421: $a3
	ld l, [hl]                                       ; $7422: $6e
	rst SubAFromDE                                          ; $7423: $df
	ld d, e                                          ; $7424: $53
	db $fc                                           ; $7425: $fc
	ld [hl], a                                       ; $7426: $77
	add b                                            ; $7427: $80
	sub a                                            ; $7428: $97
	rst SubAFromDE                                          ; $7429: $df

jr_072_742a:
	ld h, b                                          ; $742a: $60
	rst $38                                          ; $742b: $ff
	jr nz, jr_072_742a                               ; $742c: $20 $fc

	ccf                                              ; $742e: $3f
	rst FarCall                                          ; $742f: $f7
	daa                                              ; $7430: $27
	daa                                              ; $7431: $27
	add b                                            ; $7432: $80
	sbc [hl]                                         ; $7433: $9e
	ldh a, [$bf]                                     ; $7434: $f0 $bf
	ldh [$e7], a                                     ; $7436: $e0 $e7
	sbc h                                            ; $7438: $9c
	ldh [hDisp1_LCDC], a                                     ; $7439: $e0 $8f
	ret nz                                           ; $743b: $c0

	ld b, a                                          ; $743c: $47
	add b                                            ; $743d: $80

Jump_072_743e:
	sbc l                                            ; $743e: $9d
	and $f9                                          ; $743f: $e6 $f9
	ld [hl], a                                       ; $7441: $77
	add b                                            ; $7442: $80
	sbc [hl]                                         ; $7443: $9e
	ld a, a                                          ; $7444: $7f
	cp a                                             ; $7445: $bf
	rra                                              ; $7446: $1f
	inc e                                            ; $7447: $1c
	sbc h                                            ; $7448: $9c
	rra                                              ; $7449: $1f
	rst JumpTable                                          ; $744a: $c7
	rrca                                             ; $744b: $0f
	daa                                              ; $744c: $27
	add b                                            ; $744d: $80
	ld a, e                                          ; $744e: $7b
	cp $96                                           ; $744f: $fe $96
	ld [$eeff], sp                                   ; $7451: $08 $ff $ee
	cp a                                             ; $7454: $bf
	ret                                              ; $7455: $c9


	rst $38                                          ; $7456: $ff
	rrca                                             ; $7457: $0f
	ld bc, $75fd                                     ; $7458: $01 $fd $75
	db $ec                                           ; $745b: $ec
	ld a, l                                          ; $745c: $7d
	and $be                                          ; $745d: $e6 $be
	ld bc, $0001                                     ; $745f: $01 $01 $00
	ld a, [hl]                                       ; $7462: $7e
	ld e, a                                          ; $7463: $5f
	adc a                                            ; $7464: $8f
	ldh [$f0], a                                     ; $7465: $e0 $f0
	ld hl, sp-$44                                    ; $7467: $f8 $bc
	xor $3f                                          ; $7469: $ee $3f
	db $e3                                           ; $746b: $e3
	ccf                                              ; $746c: $3f
	ldh a, [rAUD1LEN]                                ; $746d: $f0 $11
	ld hl, sp+$08                                    ; $746f: $f8 $08
	db $fc                                           ; $7471: $fc
	inc b                                            ; $7472: $04
	rst $38                                          ; $7473: $ff
	inc bc                                           ; $7474: $03
	cp [hl]                                          ; $7475: $be
	db $fc                                           ; $7476: $fc
	add b                                            ; $7477: $80
	nop                                              ; $7478: $00
	ld a, a                                          ; $7479: $7f
	add sp, -$41                                     ; $747a: $e8 $bf
	ld bc, $8b81                                     ; $747c: $01 $81 $8b
	ld bc, $0303                                     ; $747f: $01 $03 $03
	rlca                                             ; $7482: $07
	rlca                                             ; $7483: $07
	rrca                                             ; $7484: $0f
	rra                                              ; $7485: $1f
	ccf                                              ; $7486: $3f
	ld a, a                                          ; $7487: $7f
	cp $ff                                           ; $7488: $fe $ff
	db $fc                                           ; $748a: $fc
	ccf                                              ; $748b: $3f
	ld hl, sp+$1f                                    ; $748c: $f8 $1f
	ld [hl], b                                       ; $748e: $70
	ccf                                              ; $748f: $3f
	ld h, b                                          ; $7490: $60
	rst $38                                          ; $7491: $ff
	ret nz                                           ; $7492: $c0

	ld l, a                                          ; $7493: $6f
	ret nz                                           ; $7494: $c0

	ld a, a                                          ; $7495: $7f
	add sp, $7f                                      ; $7496: $e8 $7f
	db $e4                                           ; $7498: $e4
	cp a                                             ; $7499: $bf
	ld bc, $1b01                                     ; $749a: $01 $01 $1b
	ret nz                                           ; $749d: $c0

	sbc h                                            ; $749e: $9c
	add c                                            ; $749f: $81
	nop                                              ; $74a0: $00
	ld bc, $c017                                     ; $74a1: $01 $17 $c0
	rst SubAFromDE                                          ; $74a4: $df
	inc bc                                           ; $74a5: $03
	ld [hl], e                                       ; $74a6: $73
	add b                                            ; $74a7: $80
	sbc [hl]                                         ; $74a8: $9e
	pop bc                                           ; $74a9: $c1
	daa                                              ; $74aa: $27
	ret nz                                           ; $74ab: $c0

	sbc [hl]                                         ; $74ac: $9e
	add b                                            ; $74ad: $80
	inc bc                                           ; $74ae: $03
	ret nz                                           ; $74af: $c0

	ld a, e                                          ; $74b0: $7b
	ld a, [hl]                                       ; $74b1: $7e
	rrca                                             ; $74b2: $0f
	ret nz                                           ; $74b3: $c0

	inc sp                                           ; $74b4: $33
	ld b, b                                          ; $74b5: $40
	ld c, a                                          ; $74b6: $4f
	inc bc                                           ; $74b7: $03
	rst FarCall                                          ; $74b8: $f7
	db $db                                           ; $74b9: $db
	ld bc, $03dd                                     ; $74ba: $01 $dd $03
	sbc [hl]                                         ; $74bd: $9e
	ld [bc], a                                       ; $74be: $02
	ld [hl], a                                       ; $74bf: $77
	db $fd                                           ; $74c0: $fd
	ld a, e                                          ; $74c1: $7b
	cp $dd                                           ; $74c2: $fe $dd
	ld bc, $07df                                     ; $74c4: $01 $df $07
	add b                                            ; $74c7: $80
	dec sp                                           ; $74c8: $3b
	inc a                                            ; $74c9: $3c
	ld a, [hl]                                       ; $74ca: $7e
	ld d, c                                          ; $74cb: $51
	cp l                                             ; $74cc: $bd
	db $d3                                           ; $74cd: $d3
	rst AddAOntoHL                                          ; $74ce: $ef
	sub d                                            ; $74cf: $92
	ld l, h                                          ; $74d0: $6c
	sub a                                            ; $74d1: $97
	rst SubAFromBC                                          ; $74d2: $e7
	rra                                              ; $74d3: $1f
	add sp, $18                                      ; $74d4: $e8 $18
	add sp, $18                                      ; $74d6: $e8 $18
	ldh a, [rAUD1SWEEP]                              ; $74d8: $f0 $10
	ldh a, [hDisp1_SCY]                                     ; $74da: $f0 $90
	or b                                             ; $74dc: $b0
	ret nc                                           ; $74dd: $d0

	ld d, b                                          ; $74de: $50
	ldh a, [$d8]                                     ; $74df: $f0 $d8
	jr c, @-$06                                      ; $74e1: $38 $f8

	ld [$04fc], sp                                   ; $74e3: $08 $fc $04
	db $fc                                           ; $74e6: $fc
	adc [hl]                                         ; $74e7: $8e
	add h                                            ; $74e8: $84
	cp [hl]                                          ; $74e9: $be
	jp nz, Jump_072_714f                             ; $74ea: $c2 $4f $71

	ld a, h                                          ; $74ed: $7c
	ld a, a                                          ; $74ee: $7f
	jr c, jr_072_7518                                ; $74ef: $38 $27

	rra                                              ; $74f1: $1f
	db $10                                           ; $74f2: $10
	rrca                                             ; $74f3: $0f
	ld [$0704], sp                                   ; $74f4: $08 $04 $07
	inc bc                                           ; $74f7: $03
	inc bc                                           ; $74f8: $03
	ei                                               ; $74f9: $fb
	rst SubAFromDE                                          ; $74fa: $df
	inc bc                                           ; $74fb: $03
	sbc e                                            ; $74fc: $9b
	dec bc                                           ; $74fd: $0b
	inc c                                            ; $74fe: $0c
	ccf                                              ; $74ff: $3f
	ccf                                              ; $7500: $3f
	rst FarCall                                          ; $7501: $f7
	rst SubAFromDE                                          ; $7502: $df
	inc bc                                           ; $7503: $03
	ld a, a                                          ; $7504: $7f
	db $e4                                           ; $7505: $e4
	add e                                            ; $7506: $83
	add hl, bc                                       ; $7507: $09
	rrca                                             ; $7508: $0f
	ld d, $1b                                        ; $7509: $16 $1b
	dec hl                                           ; $750b: $2b
	inc [hl]                                         ; $750c: $34
	ld e, [hl]                                       ; $750d: $5e
	ld h, c                                          ; $750e: $61
	ld a, h                                          ; $750f: $7c
	ld b, e                                          ; $7510: $43
	ld a, h                                          ; $7511: $7c
	ld b, e                                          ; $7512: $43
	ld e, h                                          ; $7513: $5c
	ld h, e                                          ; $7514: $63
	ld l, $31                                        ; $7515: $2e $31
	rra                                              ; $7517: $1f

jr_072_7518:
	db $10                                           ; $7518: $10
	rla                                              ; $7519: $17
	jr jr_072_752b                                   ; $751a: $18 $0f

	ld [$080f], sp                                   ; $751c: $08 $0f $08
	rlca                                             ; $751f: $07
	inc b                                            ; $7520: $04
	rlca                                             ; $7521: $07
	inc b                                            ; $7522: $04
	ld l, a                                          ; $7523: $6f
	adc [hl]                                         ; $7524: $8e
	ld [hl], a                                       ; $7525: $77
	cp $80                                           ; $7526: $fe $80
	rlca                                             ; $7528: $07
	ld b, $0f                                        ; $7529: $06 $0f

jr_072_752b:
	inc c                                            ; $752b: $0c
	rla                                              ; $752c: $17
	inc e                                            ; $752d: $1c
	daa                                              ; $752e: $27
	dec a                                            ; $752f: $3d
	ld c, a                                          ; $7530: $4f
	ld a, [hl]                                       ; $7531: $7e
	sbc a                                            ; $7532: $9f
	ldh a, [$bf]                                     ; $7533: $f0 $bf
	ldh [rIE], a                                     ; $7535: $e0 $ff
	rst $38                                          ; $7537: $ff
	ld e, a                                          ; $7538: $5f
	pop af                                           ; $7539: $f1
	cp a                                             ; $753a: $bf
	ldh [$7a], a                                     ; $753b: $e0 $7a
	push bc                                          ; $753d: $c5
	ld [hl], l                                       ; $753e: $75
	jp z, $c57b                                      ; $753f: $ca $7b $c5

	halt                                             ; $7542: $76
	set 7, d                                         ; $7543: $cb $fa
	rst SubAFromBC                                          ; $7545: $e7
	inc [hl]                                         ; $7546: $34
	sbc c                                            ; $7547: $99
	ccf                                              ; $7548: $3f
	inc a                                            ; $7549: $3c
	cpl                                              ; $754a: $2f
	ld a, h                                          ; $754b: $7c
	ld c, a                                          ; $754c: $4f
	ld a, b                                          ; $754d: $78
	ld l, e                                          ; $754e: $6b
	cp $80                                           ; $754f: $fe $80
	jr c, jr_072_7582                                ; $7551: $38 $2f

	rra                                              ; $7553: $1f
	add hl, de                                       ; $7554: $19
	rrca                                             ; $7555: $0f
	add hl, bc                                       ; $7556: $09
	rrca                                             ; $7557: $0f
	add hl, bc                                       ; $7558: $09
	rst GetHLinHL                                          ; $7559: $cf
	call $ff3d                                       ; $755a: $cd $3d $ff
	db $ed                                           ; $755d: $ed
	rra                                              ; $755e: $1f
	or d                                             ; $755f: $b2
	ld a, a                                          ; $7560: $7f
	jp nz, $07ff                                     ; $7561: $c2 $ff $07

	rst $38                                          ; $7564: $ff
	db $fc                                           ; $7565: $fc
	rst $38                                          ; $7566: $ff
	ld c, l                                          ; $7567: $4d
	ld a, e                                          ; $7568: $7b
	ld a, d                                          ; $7569: $7a
	ld [hl], a                                       ; $756a: $77
	db $ed                                           ; $756b: $ed
	rst SubAFromDE                                          ; $756c: $df
	or l                                             ; $756d: $b5
	ld a, a                                          ; $756e: $7f
	push de                                          ; $756f: $d5
	sub [hl]                                         ; $7570: $96
	rst $38                                          ; $7571: $ff
	ld d, l                                          ; $7572: $55
	ld a, a                                          ; $7573: $7f
	ld [hl], d                                       ; $7574: $72
	ld a, a                                          ; $7575: $7f
	ld c, d                                          ; $7576: $4a
	ld c, a                                          ; $7577: $4f
	dec b                                            ; $7578: $05
	dec b                                            ; $7579: $05
	sbc $fc                                          ; $757a: $de $fc
	add b                                            ; $757c: $80
	inc b                                            ; $757d: $04
	ei                                               ; $757e: $fb
	ccf                                              ; $757f: $3f
	db $fc                                           ; $7580: $fc
	rst $38                                          ; $7581: $ff

jr_072_7582:
	cp $2b                                           ; $7582: $fe $2b
	rst $38                                          ; $7584: $ff
	dec d                                            ; $7585: $15
	rst $38                                          ; $7586: $ff
	ld c, d                                          ; $7587: $4a
	rst $38                                          ; $7588: $ff
	ld [$6bff], a                                    ; $7589: $ea $ff $6b
	cp $3b                                           ; $758c: $fe $3b
	cp $1f                                           ; $758e: $fe $1f
	rst $38                                          ; $7590: $ff
	rrca                                             ; $7591: $0f
	rst $38                                          ; $7592: $ff
	rrca                                             ; $7593: $0f
	inc a                                            ; $7594: $3c
	rlca                                             ; $7595: $07
	ld a, $07                                        ; $7596: $3e $07
	ld e, $03                                        ; $7598: $1e $03
	ld e, $03                                        ; $759a: $1e $03
	sbc [hl]                                         ; $759c: $9e
	ld c, $73                                        ; $759d: $0e $73
	cp $7f                                           ; $759f: $fe $7f
	ld hl, sp-$63                                    ; $75a1: $f8 $9d
	inc e                                            ; $75a3: $1c
	rlca                                             ; $75a4: $07
	ld a, e                                          ; $75a5: $7b
	xor $9a                                          ; $75a6: $ee $9a
	rrca                                             ; $75a8: $0f
	ldh a, [c]                                       ; $75a9: $f2
	ld a, e                                          ; $75aa: $7b
	add d                                            ; $75ab: $82
	jp Jump_072_716f                                 ; $75ac: $c3 $6f $71


	rst SubAFromDE                                          ; $75af: $df
	rlca                                             ; $75b0: $07
	add c                                            ; $75b1: $81
	sbc e                                            ; $75b2: $9b
	sbc h                                            ; $75b3: $9c
	rst AddAOntoHL                                          ; $75b4: $ef
	ld [hl], b                                       ; $75b5: $70
	ret nz                                           ; $75b6: $c0

	rst $38                                          ; $75b7: $ff
	adc a                                            ; $75b8: $8f
	ldh a, [$3c]                                     ; $75b9: $f0 $3c
	jp $0cf3                                         ; $75bb: $c3 $f3 $0c


	and $19                                          ; $75be: $e6 $19
	call c, $b823                                    ; $75c0: $dc $23 $b8
	ld b, a                                          ; $75c3: $47
	or h                                             ; $75c4: $b4
	ld c, e                                          ; $75c5: $4b
	ld l, l                                          ; $75c6: $6d
	sub d                                            ; $75c7: $92
	ld l, c                                          ; $75c8: $69
	sub [hl]                                         ; $75c9: $96
	ld e, c                                          ; $75ca: $59
	and [hl]                                         ; $75cb: $a6
	ld e, c                                          ; $75cc: $59
	and [hl]                                         ; $75cd: $a6
	ld d, c                                          ; $75ce: $51
	xor [hl]                                         ; $75cf: $ae
	ldh [$c1], a                                     ; $75d0: $e0 $c1
	sub a                                            ; $75d2: $97
	add $83                                          ; $75d3: $c6 $83
	call z, $fc87                                    ; $75d5: $cc $87 $fc
	ld c, a                                          ; $75d8: $4f
	ld hl, sp+$3f                                    ; $75d9: $f8 $3f
	ld a, e                                          ; $75db: $7b
	cp $8a                                           ; $75dc: $fe $8a
	rra                                              ; $75de: $1f
	ld hl, sp+$0f                                    ; $75df: $f8 $0f
	ld hl, sp+$0f                                    ; $75e1: $f8 $0f
	ei                                               ; $75e3: $fb
	rrca                                             ; $75e4: $0f
	db $fc                                           ; $75e5: $fc
	rrca                                             ; $75e6: $0f
	ldh a, [$1f]                                     ; $75e7: $f0 $1f
	ldh a, [$3f]                                     ; $75e9: $f0 $3f
	ret nz                                           ; $75eb: $c0

	ld a, a                                          ; $75ec: $7f
	ret nz                                           ; $75ed: $c0

	ld a, a                                          ; $75ee: $7f
	add b                                            ; $75ef: $80
	rst $38                                          ; $75f0: $ff
	add b                                            ; $75f1: $80
	rst $38                                          ; $75f2: $ff
	rst SubAFromBC                                          ; $75f3: $e7
	rst SubAFromDE                                          ; $75f4: $df
	ld bc, $1f84                                     ; $75f5: $01 $84 $1f
	ld e, $fd                                        ; $75f8: $1e $fd
	ldh [c], a                                       ; $75fa: $e2
	ld c, $f1                                        ; $75fb: $0e $f1
	ldh [c], a                                       ; $75fd: $e2

jr_072_75fe:
	dec e                                            ; $75fe: $1d
	ld hl, sp+$07                                    ; $75ff: $f8 $07
	nop                                              ; $7601: $00
	rst $38                                          ; $7602: $ff
	ldh a, [rIF]                                     ; $7603: $f0 $0f
	ld [$b6f7], sp                                   ; $7605: $08 $f7 $b6
	ld c, c                                          ; $7608: $49
	ld l, h                                          ; $7609: $6c
	sub c                                            ; $760a: $91
	xor l                                            ; $760b: $ad
	db $10                                           ; $760c: $10
	adc c                                            ; $760d: $89
	db $10                                           ; $760e: $10
	add hl, bc                                       ; $760f: $09
	db $10                                           ; $7610: $10
	ld c, c                                          ; $7611: $49
	ld a, e                                          ; $7612: $7b
	cp $99                                           ; $7613: $fe $99
	adc l                                            ; $7615: $8d
	ld d, b                                          ; $7616: $50
	and h                                            ; $7617: $a4
	ld e, b                                          ; $7618: $58
	ld b, d                                          ; $7619: $42
	db $fc                                           ; $761a: $fc
	ldh [$c1], a                                     ; $761b: $e0 $c1
	ld a, e                                          ; $761d: $7b
	ld [hl], l                                       ; $761e: $75
	sbc [hl]                                         ; $761f: $9e
	ldh [$7b], a                                     ; $7620: $e0 $7b

jr_072_7622:
	ld [hl], l                                       ; $7622: $75

jr_072_7623:
	sbc c                                            ; $7623: $99
	db $fc                                           ; $7624: $fc
	ld b, a                                          ; $7625: $47
	jp $80c0                                         ; $7626: $c3 $c0 $80


	db $fc                                           ; $7629: $fc
	ld a, e                                          ; $762a: $7b
	ld l, a                                          ; $762b: $6f
	ld a, a                                          ; $762c: $7f
	ld a, [$4091]                                    ; $762d: $fa $91 $40
	ret nz                                           ; $7630: $c0

	jr nc, jr_072_7623                               ; $7631: $30 $f0

	ld a, b                                          ; $7633: $78
	ld hl, sp+$40                                    ; $7634: $f8 $40

jr_072_7636:
	call nz, $fc3e                                   ; $7636: $c4 $3e $fc
	rlca                                             ; $7639: $07
	rst $38                                          ; $763a: $ff
	jr @-$06                                         ; $763b: $18 $f8

	inc hl                                           ; $763d: $23
	ret z                                            ; $763e: $c8

	adc e                                            ; $763f: $8b
	rra                                              ; $7640: $1f
	xor $f1                                          ; $7641: $ee $f1
	rst SubAFromDE                                          ; $7643: $df
	jr nz, jr_072_75fe                               ; $7644: $20 $b8

	ld b, a                                          ; $7646: $47
	ld h, e                                          ; $7647: $63
	sbc h                                            ; $7648: $9c
	rrca                                             ; $7649: $0f
	ldh a, [$03]                                     ; $764a: $f0 $03
	db $fc                                           ; $764c: $fc
	ld a, b                                          ; $764d: $78
	add b                                            ; $764e: $80
	cp $00                                           ; $764f: $fe $00
	rra                                              ; $7651: $1f
	ldh [rIE], a                                     ; $7652: $e0 $ff
	cp a                                             ; $7654: $bf
	db $db                                           ; $7655: $db
	ld l, l                                          ; $7656: $6d
	sub b                                            ; $7657: $90
	add b                                            ; $7658: $80
	ld h, [hl]                                       ; $7659: $66
	add b                                            ; $765a: $80
	ld d, e                                          ; $765b: $53
	add b                                            ; $765c: $80
	ld [bc], a                                       ; $765d: $02
	pop bc                                           ; $765e: $c1
	jr z, jr_072_7622                                ; $765f: $28 $c1

	dec h                                            ; $7661: $25
	add sp, -$47                                     ; $7662: $e8 $b9
	ld h, h                                          ; $7664: $64
	cp a                                             ; $7665: $bf
	ld [hl], h                                       ; $7666: $74
	ldh [$c1], a                                     ; $7667: $e0 $c1
	ld a, [hl]                                       ; $7669: $7e
	db $db                                           ; $766a: $db
	ld a, a                                          ; $766b: $7f
	cp $7e                                           ; $766c: $fe $7e
	db $d3                                           ; $766e: $d3
	sub a                                            ; $766f: $97
	ld a, $c1                                        ; $7670: $3e $c1
	cp [hl]                                          ; $7672: $be
	pop bc                                           ; $7673: $c1
	ld e, $e1                                        ; $7674: $1e $e1
	adc $31                                          ; $7676: $ce $31
	ld a, d                                          ; $7678: $7a
	call $ffbd                                       ; $7679: $cd $bd $ff
	rst $38                                          ; $767c: $ff
	rst $38                                          ; $767d: $ff
	ld a, a                                          ; $767e: $7f
	ld a, e                                          ; $767f: $7b
	ld [$867b], a                                    ; $7680: $ea $7b $86
	sbc [hl]                                         ; $7683: $9e
	ld a, h                                          ; $7684: $7c
	rst SubAFromBC                                          ; $7685: $e7
	rst SubAFromDE                                          ; $7686: $df
	ldh [$7f], a                                     ; $7687: $e0 $7f
	ld b, d                                          ; $7689: $42
	sbc b                                            ; $768a: $98
	halt                                             ; $768b: $76
	adc [hl]                                         ; $768c: $8e
	db $fd                                           ; $768d: $fd
	inc bc                                           ; $768e: $03
	ld b, $01                                        ; $768f: $06 $01
	pop hl                                           ; $7691: $e1
	cp h                                             ; $7692: $bc
	jr c, jr_072_76a3                                ; $7693: $38 $0e

	ld h, a                                          ; $7695: $67
	or e                                             ; $7696: $b3
	ld e, l                                          ; $7697: $5d
	adc [hl]                                         ; $7698: $8e
	add b                                            ; $7699: $80
	or [hl]                                          ; $769a: $b6
	ld c, b                                          ; $769b: $48
	ld e, e                                          ; $769c: $5b
	inc h                                            ; $769d: $24
	dec l                                            ; $769e: $2d
	ld [de], a                                       ; $769f: $12
	sub [hl]                                         ; $76a0: $96
	add hl, bc                                       ; $76a1: $09
	ld d, e                                          ; $76a2: $53

jr_072_76a3:
	adc h                                            ; $76a3: $8c
	ld l, e                                          ; $76a4: $6b
	call nz, $e629                                   ; $76a5: $c4 $29 $e6
	ld a, [hl+]                                      ; $76a8: $2a
	rst FarCall                                          ; $76a9: $f7

Jump_072_76aa:
	ldh [$c1], a                                     ; $76aa: $e0 $c1
	ld l, e                                          ; $76ac: $6b
	ld [hl], b                                       ; $76ad: $70
	ld a, [hl]                                       ; $76ae: $7e
	push de                                          ; $76af: $d5
	sbc l                                            ; $76b0: $9d
	jr c, jr_072_7636                                ; $76b1: $38 $83

	cp h                                             ; $76b3: $bc
	rlca                                             ; $76b4: $07
	ccf                                              ; $76b5: $3f
	ld hl, sp+$00                                    ; $76b6: $f8 $00
	inc bc                                           ; $76b8: $03
	ld a, h                                          ; $76b9: $7c
	call c, $0e7d                                    ; $76ba: $dc $7d $0e
	sbc b                                            ; $76bd: $98
	rlca                                             ; $76be: $07
	ld [$1e0f], sp                                   ; $76bf: $08 $0f $1e
	rra                                              ; $76c2: $1f
	ld b, c                                          ; $76c3: $41
	ld h, c                                          ; $76c4: $61
	rst AddAOntoHL                                          ; $76c5: $ef
	rst SubAFromDE                                          ; $76c6: $df
	inc bc                                           ; $76c7: $03
	add b                                            ; $76c8: $80
	inc c                                            ; $76c9: $0c
	rrca                                             ; $76ca: $0f
	jr jr_072_76ec                                   ; $76cb: $18 $1f

	ld h, $3f                                        ; $76cd: $26 $3f
	ld a, c                                          ; $76cf: $79
	ld a, a                                          ; $76d0: $7f
	db $fc                                           ; $76d1: $fc
	rst JumpTable                                          ; $76d2: $c7
	rst $38                                          ; $76d3: $ff
	add e                                            ; $76d4: $83
	rst SubAFromHL                                          ; $76d5: $d7
	add hl, hl                                       ; $76d6: $29
	xor e                                            ; $76d7: $ab
	push de                                          ; $76d8: $d5
	ld d, a                                          ; $76d9: $57
	jp hl                                            ; $76da: $e9


	daa                                              ; $76db: $27
	ld a, a                                          ; $76dc: $7f
	rra                                              ; $76dd: $1f
	jr c, jr_072_76ef                                ; $76de: $38 $0f

	jr c, jr_072_76ec                                ; $76e0: $38 $0a

	sbc l                                            ; $76e2: $9d
	add l                                            ; $76e3: $85
	sbc $46                                          ; $76e4: $de $46
	db $dd                                           ; $76e6: $dd
	ld b, e                                          ; $76e7: $43
	sbc c                                            ; $76e8: $99
	cp $22                                           ; $76e9: $fe $22
	rst $38                                          ; $76eb: $ff

jr_072_76ec:
	ld hl, $91ff                                     ; $76ec: $21 $ff $91

jr_072_76ef:
	ld a, e                                          ; $76ef: $7b
	cp $9c                                           ; $76f0: $fe $9c
	ld d, c                                          ; $76f2: $51
	rst $38                                          ; $76f3: $ff
	ld c, c                                          ; $76f4: $49
	ld a, e                                          ; $76f5: $7b
	cp $9e                                           ; $76f6: $fe $9e
	ld a, [hl+]                                      ; $76f8: $2a
	ld a, e                                          ; $76f9: $7b
	cp $80                                           ; $76fa: $fe $80
	xor e                                            ; $76fc: $ab
	rst $38                                          ; $76fd: $ff
	push de                                          ; $76fe: $d5
	rst $38                                          ; $76ff: $ff
	push af                                          ; $7700: $f5
	ld a, a                                          ; $7701: $7f
	db $fc                                           ; $7702: $fc
	ccf                                              ; $7703: $3f
	jp c, $bb7f                                      ; $7704: $da $7f $bb

	rst AddAOntoHL                                          ; $7707: $ef
	ld a, c                                          ; $7708: $79
	rst GetHLinHL                                          ; $7709: $cf
	ld a, c                                          ; $770a: $79
	rst GetHLinHL                                          ; $770b: $cf
	ld sp, hl                                        ; $770c: $f9
	rst GetHLinHL                                          ; $770d: $cf
	ld sp, hl                                        ; $770e: $f9
	ld c, a                                          ; $770f: $4f
	ld sp, hl                                        ; $7710: $f9
	sbc a                                            ; $7711: $9f
	db $ed                                           ; $7712: $ed
	cp a                                             ; $7713: $bf
	db $ed                                           ; $7714: $ed
	rst $38                                          ; $7715: $ff
	di                                               ; $7716: $f3
	di                                               ; $7717: $f3
	ldh [c], a                                       ; $7718: $e2
	ldh [c], a                                       ; $7719: $e2
	jp nz, $c29c                                     ; $771a: $c2 $9c $c2

	add b                                            ; $771d: $80
	add b                                            ; $771e: $80
	ld sp, hl                                        ; $771f: $f9
	rst SubAFromDE                                          ; $7720: $df
	add b                                            ; $7721: $80
	rst SubAFromDE                                          ; $7722: $df
	ldh [hDisp1_SCX], a                                     ; $7723: $e0 $91
	inc a                                            ; $7725: $3c
	db $fc                                           ; $7726: $fc
	dec bc                                           ; $7727: $0b
	rst $38                                          ; $7728: $ff
	inc b                                            ; $7729: $04
	rst $38                                          ; $772a: $ff
	ld [bc], a                                       ; $772b: $02
	rst $38                                          ; $772c: $ff
	add hl, de                                       ; $772d: $19
	rst SubAFromBC                                          ; $772e: $e7
	rra                                              ; $772f: $1f
	pop hl                                           ; $7730: $e1
	ldh [$80], a                                     ; $7731: $e0 $80
	ld [hl], e                                       ; $7733: $73
	cp $9d                                           ; $7734: $fe $9d
	ret nz                                           ; $7736: $c0

	ldh a, [$7b]                                     ; $7737: $f0 $7b
	cp $9d                                           ; $7739: $fe $9d
	or b                                             ; $773b: $b0
	ldh [rPCM34], a                                  ; $773c: $e0 $77
	cp $91                                           ; $773e: $fe $91
	sub b                                            ; $7740: $90
	ldh a, [$98]                                     ; $7741: $f0 $98
	ldh a, [rOBP0]                                   ; $7743: $f0 $48
	ld a, b                                          ; $7745: $78
	adc h                                            ; $7746: $8c
	ld hl, sp+$04                                    ; $7747: $f8 $04
	db $fc                                           ; $7749: $fc
	ld b, $fc                                        ; $774a: $06 $fc

jr_072_774c:
	ld [bc], a                                       ; $774c: $02
	cp $ef                                           ; $774d: $fe $ef
	rst SubAFromDE                                          ; $774f: $df
	ret nz                                           ; $7750: $c0

	add b                                            ; $7751: $80
	ld [hl], b                                       ; $7752: $70
	or b                                             ; $7753: $b0
	ld l, b                                          ; $7754: $68
	sbc b                                            ; $7755: $98
	ld [hl], h                                       ; $7756: $74
	adc h                                            ; $7757: $8c
	ld [hl], $ca                                     ; $7758: $36 $ca
	or a                                             ; $775a: $b7
	ret                                              ; $775b: $c9


	sbc a                                            ; $775c: $9f
	jp hl                                            ; $775d: $e9


	ld l, b                                          ; $775e: $68
	ld a, a                                          ; $775f: $7f
	jr z, @+$41                                      ; $7760: $28 $3f

	jr @+$21                                         ; $7762: $18 $1f

	jr jr_072_7785                                   ; $7764: $18 $1f

	adc b                                            ; $7766: $88
	adc a                                            ; $7767: $8f
	call nz, $e547                                   ; $7768: $c4 $47 $e5
	daa                                              ; $776b: $27
	push hl                                          ; $776c: $e5
	daa                                              ; $776d: $27
	and $27                                          ; $776e: $e6 $27
	ld b, h                                          ; $7770: $44
	add b                                            ; $7771: $80
	rst JumpTable                                          ; $7772: $c7
	add h                                            ; $7773: $84
	add a                                            ; $7774: $87
	adc b                                            ; $7775: $88
	adc a                                            ; $7776: $8f
	jr nc, jr_072_77b8                               ; $7777: $30 $3f

	pop bc                                           ; $7779: $c1
	rst $38                                          ; $777a: $ff
	and $ff                                          ; $777b: $e6 $ff
	jr @+$01                                         ; $777d: $18 $ff

	rra                                              ; $777f: $1f
	pop hl                                           ; $7780: $e1
	jp nz, Jump_072_743e                             ; $7781: $c2 $3e $74

	adc h                                            ; $7784: $8c

jr_072_7785:
	adc h                                            ; $7785: $8c
	db $fc                                           ; $7786: $fc
	halt                                             ; $7787: $76
	cp $0a                                           ; $7788: $fe $0a
	cp $a9                                           ; $778a: $fe $a9
	rst $38                                          ; $778c: $ff
	sub l                                            ; $778d: $95
	rst $38                                          ; $778e: $ff
	ld d, l                                          ; $778f: $55
	rst $38                                          ; $7790: $ff
	adc a                                            ; $7791: $8f
	or a                                             ; $7792: $b7
	db $fd                                           ; $7793: $fd
	ld e, a                                          ; $7794: $5f
	db $ed                                           ; $7795: $ed
	halt                                             ; $7796: $76
	ld a, [$fd5f]                                    ; $7797: $fa $5f $fd
	ld d, [hl]                                       ; $779a: $56
	or $54                                           ; $779b: $f6 $54
	db $f4                                           ; $779d: $f4
	and h                                            ; $779e: $a4
	and h                                            ; $779f: $a4
	jr nz, jr_072_77c2                               ; $77a0: $20 $20

	db $eb                                           ; $77a2: $eb
	rst SubAFromDE                                          ; $77a3: $df
	ret nz                                           ; $77a4: $c0

	ld a, l                                          ; $77a5: $7d
	sbc d                                            ; $77a6: $9a
	sbc [hl]                                         ; $77a7: $9e
	ld [$7c7b], sp                                   ; $77a8: $08 $7b $7c
	sub h                                            ; $77ab: $94
	add e                                            ; $77ac: $83
	rst $38                                          ; $77ad: $ff
	add d                                            ; $77ae: $82
	rst $38                                          ; $77af: $ff
	ld [bc], a                                       ; $77b0: $02
	rst GetHLinHL                                          ; $77b1: $cf
	ld [bc], a                                       ; $77b2: $02
	rst SubAFromBC                                          ; $77b3: $e7
	ld [bc], a                                       ; $77b4: $02
	rst SubAFromBC                                          ; $77b5: $e7
	inc b                                            ; $77b6: $04
	ld [hl], a                                       ; $77b7: $77

jr_072_77b8:
	cp $9c                                           ; $77b8: $fe $9c
	rst JumpTable                                          ; $77ba: $c7
	ld [$7b8f], sp                                   ; $77bb: $08 $8f $7b
	cp $7d                                           ; $77be: $fe $7d
	inc d                                            ; $77c0: $14
	sbc h                                            ; $77c1: $9c

jr_072_77c2:
	ld e, $10                                        ; $77c2: $1e $10
	inc e                                            ; $77c4: $1c
	ld a, e                                          ; $77c5: $7b
	cp $97                                           ; $77c6: $fe $97
	jr c, jr_072_77ea                                ; $77c8: $38 $20

	jr c, jr_072_774c                                ; $77ca: $38 $80

	add b                                            ; $77cc: $80
	ret nz                                           ; $77cd: $c0

	ret nz                                           ; $77ce: $c0

	ld b, b                                          ; $77cf: $40
	ld a, e                                          ; $77d0: $7b
	cp $95                                           ; $77d1: $fe $95
	ldh [$a0], a                                     ; $77d3: $e0 $a0
	ldh [$a0], a                                     ; $77d5: $e0 $a0
	ld h, b                                          ; $77d7: $60
	and b                                            ; $77d8: $a0
	ldh [rAUD4LEN], a                                ; $77d9: $e0 $20
	ldh [rAUD4LEN], a                                ; $77db: $e0 $20
	ld a, e                                          ; $77dd: $7b
	ld sp, hl                                        ; $77de: $f9
	rst SubAFromDE                                          ; $77df: $df
	ld h, b                                          ; $77e0: $60
	ld a, a                                          ; $77e1: $7f
	cpl                                              ; $77e2: $2f
	ld a, e                                          ; $77e3: $7b
	db $ec                                           ; $77e4: $ec
	db $dd                                           ; $77e5: $dd
	add b                                            ; $77e6: $80
	ld [hl], a                                       ; $77e7: $77
	ld c, $7f                                        ; $77e8: $0e $7f

jr_072_77ea:
	or $7f                                           ; $77ea: $f6 $7f
	jp hl                                            ; $77ec: $e9


	adc a                                            ; $77ed: $8f
	db $10                                           ; $77ee: $10
	ldh a, [rAUD2LOW]                                ; $77ef: $f0 $18
	ld hl, sp+$08                                    ; $77f1: $f8 $08
	ld hl, sp+$14                                    ; $77f3: $f8 $14
	db $ec                                           ; $77f5: $ec
	inc a                                            ; $77f6: $3c
	call nz, $847c                                   ; $77f7: $c4 $7c $84
	ldh a, [c]                                       ; $77fa: $f2
	ld c, $e2                                        ; $77fb: $0e $e2
	ld e, $77                                        ; $77fd: $1e $77
	cp $7f                                           ; $77ff: $fe $7f
	ld hl, sp-$63                                    ; $7801: $f8 $9d
	ld a, [$2706]                                    ; $7803: $fa $06 $27
	nop                                              ; $7806: $00
	sbc $88                                          ; $7807: $de $88
	sub b                                            ; $7809: $90
	xor $ff                                          ; $780a: $ee $ff
	xor d                                            ; $780c: $aa
	adc b                                            ; $780d: $88
	sbc c                                            ; $780e: $99
	ld de, $9980                                     ; $780f: $11 $80 $99
	sbc c                                            ; $7812: $99
	ld d, l                                          ; $7813: $55
	adc b                                            ; $7814: $88
	nop                                              ; $7815: $00
	sbc c                                            ; $7816: $99
	sbc c                                            ; $7817: $99
	ld b, h                                          ; $7818: $44
	ld [hl], a                                       ; $7819: $77
	ei                                               ; $781a: $fb
	sbc [hl]                                         ; $781b: $9e
	ld h, [hl]                                       ; $781c: $66
	ld [hl], e                                       ; $781d: $73
	or $93                                           ; $781e: $f6 $93
	xor d                                            ; $7820: $aa
	ld [hl+], a                                      ; $7821: $22
	ld de, $55ff                                     ; $7822: $11 $ff $55
	adc b                                            ; $7825: $88
	xor d                                            ; $7826: $aa
	adc b                                            ; $7827: $88
	rst $38                                          ; $7828: $ff
	ld [hl], a                                       ; $7829: $77
	adc b                                            ; $782a: $88
	rst $38                                          ; $782b: $ff
	xor c                                            ; $782c: $a9
	ld bc, $029c                                     ; $782d: $01 $9c $02
	rst $38                                          ; $7830: $ff
	ld [hl+], a                                      ; $7831: $22
	ld a, e                                          ; $7832: $7b
	cp $9e                                           ; $7833: $fe $9e
	ld de, $fe7b                                     ; $7835: $11 $7b $fe
	add b                                            ; $7838: $80
	add hl, de                                       ; $7839: $19
	rst $38                                          ; $783a: $ff
	sbc l                                            ; $783b: $9d
	rst FarCall                                          ; $783c: $f7
	sbc [hl]                                         ; $783d: $9e
	di                                               ; $783e: $f3
	call $cffb                                       ; $783f: $cd $fb $cf
	ld a, [$fca7]                                    ; $7842: $fa $a7 $fc
	cp a                                             ; $7845: $bf
	db $fd                                           ; $7846: $fd
	add hl, sp                                       ; $7847: $39
	xor $3c                                          ; $7848: $ee $3c
	rst SubAFromBC                                          ; $784a: $e7
	ccf                                              ; $784b: $3f
	db $e3                                           ; $784c: $e3
	rra                                              ; $784d: $1f
	ldh a, [c]                                       ; $784e: $f2
	sbc a                                            ; $784f: $9f
	rst $38                                          ; $7850: $ff
	sub a                                            ; $7851: $97
	rst $38                                          ; $7852: $ff
	cp d                                             ; $7853: $ba
	cp $aa                                           ; $7854: $fe $aa
	xor $bf                                          ; $7856: $ee $bf
	add b                                            ; $7858: $80
	rst $38                                          ; $7859: $ff
	rst SubAFromBC                                          ; $785a: $e7
	ld hl, sp+$1d                                    ; $785b: $f8 $1d
	cp $f3                                           ; $785d: $fe $f3
	rrca                                             ; $785f: $0f
	ld a, [hl]                                       ; $7860: $7e
	add c                                            ; $7861: $81
	rst $38                                          ; $7862: $ff
	add b                                            ; $7863: $80
	cp [hl]                                          ; $7864: $be
	pop bc                                           ; $7865: $c1
	rrca                                             ; $7866: $0f
	rst $38                                          ; $7867: $ff
	jr nc, @+$01                                     ; $7868: $30 $ff

	ret nz                                           ; $786a: $c0

	rst $38                                          ; $786b: $ff
	dec c                                            ; $786c: $0d
	di                                               ; $786d: $f3
	ccf                                              ; $786e: $3f
	jp $fe40                                         ; $786f: $c3 $40 $fe


	ld c, b                                          ; $7872: $48
	rst $38                                          ; $7873: $ff
	inc l                                            ; $7874: $2c
	rst $38                                          ; $7875: $ff
	ld l, $fb                                        ; $7876: $2e $fb
	add b                                            ; $7878: $80
	rla                                              ; $7879: $17
	db $fd                                           ; $787a: $fd
	sub a                                            ; $787b: $97
	db $fc                                           ; $787c: $fc
	ld c, e                                          ; $787d: $4b
	cp $e7                                           ; $787e: $fe $e7
	cp [hl]                                          ; $7880: $be
	ei                                               ; $7881: $fb
	cp l                                             ; $7882: $bd
	rst AddAOntoHL                                          ; $7883: $ef
	cp $c7                                           ; $7884: $fe $c7
	call z, $dcce                                    ; $7886: $cc $ce $dc
	halt                                             ; $7889: $76
	db $fc                                           ; $788a: $fc
	ret nc                                           ; $788b: $d0

	rra                                              ; $788c: $1f
	ld h, c                                          ; $788d: $61
	sub e                                            ; $788e: $93
	add e                                            ; $788f: $83
	rst SubAFromBC                                          ; $7890: $e7
	xor $6e                                          ; $7891: $ee $6e
	sbc a                                            ; $7893: $9f
	ld e, $8f                                        ; $7894: $1e $8f
	adc a                                            ; $7896: $8f
	rst GetHLinHL                                          ; $7897: $cf
	add b                                            ; $7898: $80
	ret nz                                           ; $7899: $c0

	ld h, b                                          ; $789a: $60
	ret nz                                           ; $789b: $c0

	jr nc, jr_072_78fe                               ; $789c: $30 $60

	jr @+$32                                         ; $789e: $18 $30

	cp $fc                                           ; $78a0: $fe $fc
	rst $38                                          ; $78a2: $ff
	rst $38                                          ; $78a3: $ff
	ld a, a                                          ; $78a4: $7f
	ld a, a                                          ; $78a5: $7f
	rst $38                                          ; $78a6: $ff
	rst $38                                          ; $78a7: $ff
	pop af                                           ; $78a8: $f1
	rst $38                                          ; $78a9: $ff
	jp $87ff                                         ; $78aa: $c3 $ff $87


jr_072_78ad:
	rst $38                                          ; $78ad: $ff
	rrca                                             ; $78ae: $0f
	ld hl, sp+$1f                                    ; $78af: $f8 $1f
	ldh a, [$32]                                     ; $78b1: $f0 $32
	rst $38                                          ; $78b3: $ff
	dec sp                                           ; $78b4: $3b
	ld l, a                                          ; $78b5: $6f
	ld a, [hl-]                                      ; $78b6: $3a
	ld l, a                                          ; $78b7: $6f
	sub d                                            ; $78b8: $92
	dec e                                            ; $78b9: $1d
	rst FarCall                                          ; $78ba: $f7
	dec de                                           ; $78bb: $1b
	rst FarCall                                          ; $78bc: $f7
	rst GetHLinHL                                          ; $78bd: $cf
	db $fd                                           ; $78be: $fd
	rst FarCall                                          ; $78bf: $f7
	inc a                                            ; $78c0: $3c
	cp $0f                                           ; $78c1: $fe $0f
	db $fd                                           ; $78c3: $fd
	inc bc                                           ; $78c4: $03
	adc $fb                                          ; $78c5: $ce $fb
	add b                                            ; $78c7: $80

Jump_072_78c8:
	ld bc, $3e00                                     ; $78c8: $01 $00 $3e
	dec c                                            ; $78cb: $0d
	db $e3                                           ; $78cc: $e3
	sbc b                                            ; $78cd: $98
	jp nc, Jump_072_7f12                             ; $78ce: $d2 $12 $7f

	add hl, de                                       ; $78d1: $19
	rst $38                                          ; $78d2: $ff
	sub l                                            ; $78d3: $95
	rst $38                                          ; $78d4: $ff
	jp z, $f7ff                                      ; $78d5: $ca $ff $f7

	dec a                                            ; $78d8: $3d
	rst $38                                          ; $78d9: $ff
	inc c                                            ; $78da: $0c
	ld l, a                                          ; $78db: $6f
	ldh a, [c]                                       ; $78dc: $f2
	db $db                                           ; $78dd: $db
	db $fc                                           ; $78de: $fc
	adc [hl]                                         ; $78df: $8e
	sbc a                                            ; $78e0: $9f
	sbc l                                            ; $78e1: $9d
	cp e                                             ; $78e2: $bb
	ld a, [hl]                                       ; $78e3: $7e
	di                                               ; $78e4: $f3
	inc b                                            ; $78e5: $04
	ei                                               ; $78e6: $fb
	add h                                            ; $78e7: $84
	ld sp, $3b3f                                     ; $78e8: $31 $3f $3b
	ld a, [hl]                                       ; $78eb: $7e
	ld a, e                                          ; $78ec: $7b
	ld a, h                                          ; $78ed: $7c
	ei                                               ; $78ee: $fb
	ld hl, sp-$07                                    ; $78ef: $f8 $f9
	rst FarCall                                          ; $78f1: $f7
	ld de, $f2ef                                     ; $78f2: $11 $ef $f2
	ld c, $e4                                        ; $78f5: $0e $e4
	inc e                                            ; $78f7: $1c
	add sp, $18                                      ; $78f8: $e8 $18
	ret nc                                           ; $78fa: $d0

	jr nc, jr_072_78ad                               ; $78fb: $30 $b0

	ld [hl], b                                       ; $78fd: $70

jr_072_78fe:
	ld a, h                                          ; $78fe: $7c
	db $fc                                           ; $78ff: $fc
	sbc a                                            ; $7900: $9f
	rst $38                                          ; $7901: $ff
	rra                                              ; $7902: $1f
	ld a, e                                          ; $7903: $7b
	cp $9c                                           ; $7904: $fe $9c
	rla                                              ; $7906: $17
	rst $38                                          ; $7907: $ff
	inc de                                           ; $7908: $13
	ld a, e                                          ; $7909: $7b
	cp $9e                                           ; $790a: $fe $9e
	ld bc, $fe7b                                     ; $790c: $01 $7b $fe
	dec hl                                           ; $790f: $2b
	jr nz, jr_072_78ad                               ; $7910: $20 $9b

	db $fc                                           ; $7912: $fc
	add hl, sp                                       ; $7913: $39
	xor $3d                                          ; $7914: $ee $3d
	ld [hl], e                                       ; $7916: $73
	jr nz, jr_072_795c                               ; $7917: $20 $43

	ld b, b                                          ; $7919: $40
	sub b                                            ; $791a: $90
	sbc l                                            ; $791b: $9d
	rst $38                                          ; $791c: $ff
	inc b                                            ; $791d: $04
	rst SubAFromDE                                          ; $791e: $df

jr_072_791f:
	jr c, jr_072_791f                                ; $791f: $38 $fe

	ld a, h                                          ; $7921: $7c
	call nz, $d0ce                                   ; $7922: $c4 $ce $d0
	rst SubAFromDE                                          ; $7925: $df
	ld h, c                                          ; $7926: $61
	or e                                             ; $7927: $b3
	add e                                            ; $7928: $83
	rst SubAFromBC                                          ; $7929: $e7
	ld e, e                                          ; $792a: $5b
	ld h, b                                          ; $792b: $60
	ld a, a                                          ; $792c: $7f
	ld a, h                                          ; $792d: $7c
	sub l                                            ; $792e: $95
	inc a                                            ; $792f: $3c
	rst $38                                          ; $7930: $ff
	ld c, $ff                                        ; $7931: $0e $ff
	nop                                              ; $7933: $00
	adc $01                                          ; $7934: $ce $01
	ld bc, $0103                                     ; $7936: $01 $03 $01
	inc sp                                           ; $7939: $33
	ld h, b                                          ; $793a: $60
	ld a, e                                          ; $793b: $7b
	sub e                                            ; $793c: $93
	sub [hl]                                         ; $793d: $96
	nop                                              ; $793e: $00
	ld l, a                                          ; $793f: $6f
	ldh a, [$db]                                     ; $7940: $f0 $db
	rst $38                                          ; $7942: $ff
	adc [hl]                                         ; $7943: $8e
	sbc a                                            ; $7944: $9f
	inc b                                            ; $7945: $04
	rst $38                                          ; $7946: $ff
	ld h, a                                          ; $7947: $67
	ld h, b                                          ; $7948: $60
	rra                                              ; $7949: $1f
	add b                                            ; $794a: $80
	ld l, [hl]                                       ; $794b: $6e
	and b                                            ; $794c: $a0
	scf                                              ; $794d: $37
	add b                                            ; $794e: $80
	ld a, a                                          ; $794f: $7f
	cp d                                             ; $7950: $ba
	sbc c                                            ; $7951: $99
	cp $00                                           ; $7952: $fe $00
	xor $1e                                          ; $7954: $ee $1e
	ret nc                                           ; $7956: $d0

	cp a                                             ; $7957: $bf
	ld d, a                                          ; $7958: $57
	add b                                            ; $7959: $80
	sbc c                                            ; $795a: $99
	rra                                              ; $795b: $1f

jr_072_795c:
	di                                               ; $795c: $f3
	rst GetHLinHL                                          ; $795d: $cf
	rst $38                                          ; $795e: $ff
	push af                                          ; $795f: $f5
	ld a, $77                                        ; $7960: $3e $77
	add b                                            ; $7962: $80
	sbc h                                            ; $7963: $9c
	rst GetHLinHL                                          ; $7964: $cf
	nop                                              ; $7965: $00
	inc bc                                           ; $7966: $03
	ld a, e                                          ; $7967: $7b
	add e                                            ; $7968: $83
	ld b, a                                          ; $7969: $47
	add b                                            ; $796a: $80
	sbc l                                            ; $796b: $9d
	ld [hl], a                                       ; $796c: $77
	cp l                                             ; $796d: $bd
	ld l, a                                          ; $796e: $6f
	add b                                            ; $796f: $80
	ld a, e                                          ; $7970: $7b
	cp $9c                                           ; $7971: $fe $9c
	ld bc, $73fe                                     ; $7973: $01 $fe $73
	inc bc                                           ; $7976: $03
	add b                                            ; $7977: $80
	dec hl                                           ; $7978: $2b
	add b                                            ; $7979: $80
	sbc c                                            ; $797a: $99
	and a                                            ; $797b: $a7
	cp $fb                                           ; $797c: $fe $fb
	db $dd                                           ; $797e: $dd
	rst $38                                          ; $797f: $ff
	ld b, $77                                        ; $7980: $06 $77
	add b                                            ; $7982: $80
	ld a, a                                          ; $7983: $7f
	cp $9d                                           ; $7984: $fe $9d
	ldh a, [rIF]                                     ; $7986: $f0 $0f
	halt                                             ; $7988: $76
	ld b, b                                          ; $7989: $40
	ld e, a                                          ; $798a: $5f
	add b                                            ; $798b: $80
	sbc [hl]                                         ; $798c: $9e
	rl e                                             ; $798d: $cb $13
	add b                                            ; $798f: $80
	sbc l                                            ; $7990: $9d
	or a                                             ; $7991: $b7
	db $fd                                           ; $7992: $fd
	ld e, e                                          ; $7993: $5b
	add b                                            ; $7994: $80
	sbc [hl]                                         ; $7995: $9e
	inc bc                                           ; $7996: $03
	ld e, [hl]                                       ; $7997: $5e
	ld h, b                                          ; $7998: $60
	sub h                                            ; $7999: $94
	sbc b                                            ; $799a: $98
	pop de                                           ; $799b: $d1
	add b                                            ; $799c: $80
	ret nz                                           ; $799d: $c0

	ld b, [hl]                                       ; $799e: $46
	add d                                            ; $799f: $82
	inc [hl]                                         ; $79a0: $34
	inc d                                            ; $79a1: $14
	nop                                              ; $79a2: $00
	nop                                              ; $79a3: $00
	ld [$9dfc], sp                                   ; $79a4: $08 $fc $9d
	pop bc                                           ; $79a7: $c1
	add b                                            ; $79a8: $80
	ld a, d                                          ; $79a9: $7a
	inc bc                                           ; $79aa: $03
	sbc c                                            ; $79ab: $99
	ld c, $c3                                        ; $79ac: $0e $c3
	nop                                              ; $79ae: $00
	pop bc                                           ; $79af: $c1
	nop                                              ; $79b0: $00
	ret nz                                           ; $79b1: $c0

	ld a, e                                          ; $79b2: $7b
	cp $9d                                           ; $79b3: $fe $9d
	add b                                            ; $79b5: $80
	nop                                              ; $79b6: $00
	ld [hl], a                                       ; $79b7: $77
	ldh [$9b], a                                     ; $79b8: $e0 $9b
	ld l, [hl]                                       ; $79ba: $6e
	add [hl]                                         ; $79bb: $86
	inc e                                            ; $79bc: $1c
	inc e                                            ; $79bd: $1c
	rla                                              ; $79be: $17
	ldh [$99], a                                     ; $79bf: $e0 $99
	ld a, [hl]                                       ; $79c1: $7e
	adc [hl]                                         ; $79c2: $8e
	ld a, $3c                                        ; $79c3: $3e $3c
	inc e                                            ; $79c5: $1c
	ld [$e01f], sp                                   ; $79c6: $08 $1f $e0
	sub [hl]                                         ; $79c9: $96
	ld a, a                                          ; $79ca: $7f
	sbc [hl]                                         ; $79cb: $9e
	ld a, $3e                                        ; $79cc: $3e $3e
	ld e, $0c                                        ; $79ce: $1e $0c
	inc c                                            ; $79d0: $0c
	nop                                              ; $79d1: $00
	inc b                                            ; $79d2: $04
	dec sp                                           ; $79d3: $3b
	ldh [$a2], a                                     ; $79d4: $e0 $a2
	ld [bc], a                                       ; $79d6: $02
	rst FarCall                                          ; $79d7: $f7
	rst SubAFromDE                                          ; $79d8: $df
	ld bc, $0293                                     ; $79d9: $01 $93 $02
	inc bc                                           ; $79dc: $03
	dec b                                            ; $79dd: $05
	ld b, $04                                        ; $79de: $06 $04
	rlca                                             ; $79e0: $07
	dec b                                            ; $79e1: $05
	ld b, $05                                        ; $79e2: $06 $05
	ld b, $07                                        ; $79e4: $06 $07
	rlca                                             ; $79e6: $07
	ld l, a                                          ; $79e7: $6f
	ld hl, sp+$7f                                    ; $79e8: $f8 $7f
	cp $f3                                           ; $79ea: $fe $f3
	db $dd                                           ; $79ec: $dd
	ld bc, $da7f                                     ; $79ed: $01 $7f $da
	ld a, a                                          ; $79f0: $7f
	cp $dd                                           ; $79f1: $fe $dd
	rlca                                             ; $79f3: $07
	rst SubAFromDE                                          ; $79f4: $df
	ld b, $df                                        ; $79f5: $06 $df
	ld c, $dd                                        ; $79f7: $0e $dd
	inc c                                            ; $79f9: $0c
	db $db                                           ; $79fa: $db
	ld [$dfe5], sp                                   ; $79fb: $08 $e5 $df
	rlca                                             ; $79fe: $07
	add l                                            ; $79ff: $85

jr_072_7a00:
	jr c, jr_072_7a41                                ; $7a00: $38 $3f

	rst JumpTable                                          ; $7a02: $c7

Call_072_7a03:
	ld hl, sp+$3f                                    ; $7a03: $f8 $3f
	ret nz                                           ; $7a05: $c0

	rst $38                                          ; $7a06: $ff
	nop                                              ; $7a07: $00
	rst $38                                          ; $7a08: $ff
	nop                                              ; $7a09: $00
	rst GetHLinHL                                          ; $7a0a: $cf
	jr nc, jr_072_7a00                               ; $7a0b: $30 $f3

	inc c                                            ; $7a0d: $0c
	db $fd                                           ; $7a0e: $fd
	ld [bc], a                                       ; $7a0f: $02
	cp $81                                           ; $7a10: $fe $81
	ld l, a                                          ; $7a12: $6f
	ldh a, [rAUD2ENV]                                ; $7a13: $f0 $17
	ld hl, sp+$68                                    ; $7a15: $f8 $68
	sbc a                                            ; $7a17: $9f
	ld h, a                                          ; $7a18: $67
	sbc a                                            ; $7a19: $9f
	rst SubAFromBC                                          ; $7a1a: $e7
	ld [hl], a                                       ; $7a1b: $77
	sub [hl]                                         ; $7a1c: $96
	ld a, a                                          ; $7a1d: $7f
	ld a, d                                          ; $7a1e: $7a
	rst SubAFromDE                                          ; $7a1f: $df
	rlca                                             ; $7a20: $07
	add b                                            ; $7a21: $80
	inc c                                            ; $7a22: $0c
	rrca                                             ; $7a23: $0f
	ld de, $271e                                     ; $7a24: $11 $1e $27
	jr c, jr_072_7a78                                ; $7a27: $38 $4f

	ld [hl], b                                       ; $7a29: $70
	sbc e                                            ; $7a2a: $9b
	db $e4                                           ; $7a2b: $e4
	or a                                             ; $7a2c: $b7
	ret z                                            ; $7a2d: $c8

	rra                                              ; $7a2e: $1f
	ldh a, [$2c]                                     ; $7a2f: $f0 $2c
	di                                               ; $7a31: $f3
	ld b, b                                          ; $7a32: $40
	rst $38                                          ; $7a33: $ff
	pop bc                                           ; $7a34: $c1
	rst $38                                          ; $7a35: $ff
	jp nz, Jump_072_45ff                             ; $7a36: $c2 $ff $45

	ld a, [hl]                                       ; $7a39: $7e
	dec h                                            ; $7a3a: $25
	ld a, $2b                                        ; $7a3b: $3e $2b
	inc a                                            ; $7a3d: $3c
	dec sp                                           ; $7a3e: $3b
	inc a                                            ; $7a3f: $3c
	scf                                              ; $7a40: $37

jr_072_7a41:
	sub e                                            ; $7a41: $93
	jr c, jr_072_7a5a                                ; $7a42: $38 $16

	add hl, de                                       ; $7a44: $19
	ld d, $19                                        ; $7a45: $16 $19
	inc d                                            ; $7a47: $14
	dec de                                           ; $7a48: $1b
	inc h                                            ; $7a49: $24
	dec sp                                           ; $7a4a: $3b
	jr nz, jr_072_7a8c                               ; $7a4b: $20 $3f

	ld hl, $fe7b                                     ; $7a4d: $21 $7b $fe
	sbc [hl]                                         ; $7a50: $9e
	inc hl                                           ; $7a51: $23
	ld [hl], e                                       ; $7a52: $73
	cp $8f                                           ; $7a53: $fe $8f
	inc sp                                           ; $7a55: $33
	ccf                                              ; $7a56: $3f
	inc de                                           ; $7a57: $13
	rra                                              ; $7a58: $1f
	inc de                                           ; $7a59: $13

jr_072_7a5a:
	rra                                              ; $7a5a: $1f
	dec de                                           ; $7a5b: $1b
	rra                                              ; $7a5c: $1f
	add hl, bc                                       ; $7a5d: $09
	rrca                                             ; $7a5e: $0f
	add hl, bc                                       ; $7a5f: $09
	rrca                                             ; $7a60: $0f
	dec b                                            ; $7a61: $05
	rlca                                             ; $7a62: $07
	dec b                                            ; $7a63: $05
	rlca                                             ; $7a64: $07
	db $db                                           ; $7a65: $db
	inc bc                                           ; $7a66: $03
	rst SubAFromDE                                          ; $7a67: $df
	ld bc, $6437                                     ; $7a68: $01 $37 $64
	sbc c                                            ; $7a6b: $99
	ld hl, sp-$01                                    ; $7a6c: $f8 $ff
	add b                                            ; $7a6e: $80
	rst $38                                          ; $7a6f: $ff
	ld a, a                                          ; $7a70: $7f
	add b                                            ; $7a71: $80
	ld [hl], a                                       ; $7a72: $77
	ld h, h                                          ; $7a73: $64
	ld [hl], a                                       ; $7a74: $77
	cp $8f                                           ; $7a75: $fe $8f
	rst FarCall                                          ; $7a77: $f7

jr_072_7a78:
	ld [$0cf3], sp                                   ; $7a78: $08 $f3 $0c
	ldh a, [rIF]                                     ; $7a7b: $f0 $0f
	di                                               ; $7a7d: $f3
	rrca                                             ; $7a7e: $0f
	dec c                                            ; $7a7f: $0d
	cp $31                                           ; $7a80: $fe $31
	cp $c3                                           ; $7a82: $fe $c3
	db $fc                                           ; $7a84: $fc
	inc bc                                           ; $7a85: $03
	db $fc                                           ; $7a86: $fc
	db $ed                                           ; $7a87: $ed
	rst SubAFromDE                                          ; $7a88: $df
	rra                                              ; $7a89: $1f
	add b                                            ; $7a8a: $80
	ld h, b                                          ; $7a8b: $60

jr_072_7a8c:
	ld a, a                                          ; $7a8c: $7f
	cp a                                             ; $7a8d: $bf
	ret nz                                           ; $7a8e: $c0

	ld b, a                                          ; $7a8f: $47
	cp a                                             ; $7a90: $bf
	cp b                                             ; $7a91: $b8
	ld a, a                                          ; $7a92: $7f
	rst SubAFromDE                                          ; $7a93: $df
	ldh [rAUDVOL], a                                 ; $7a94: $e0 $24
	jp $03c4                                         ; $7a96: $c3 $c4 $03


	rlca                                             ; $7a99: $07
	ld bc, $078a                                     ; $7a9a: $01 $8a $07
	db $d3                                           ; $7a9d: $d3
	inc c                                            ; $7a9e: $0c
	cpl                                              ; $7a9f: $2f
	db $10                                           ; $7aa0: $10
	reti                                             ; $7aa1: $d9


	jr nz, jr_072_7ad6                               ; $7aa2: $20 $32

	pop bc                                           ; $7aa4: $c1
	ld b, l                                          ; $7aa5: $45
	add d                                            ; $7aa6: $82
	ld c, e                                          ; $7aa7: $4b
	add h                                            ; $7aa8: $84
	sub [hl]                                         ; $7aa9: $96
	sub h                                            ; $7aaa: $94
	add hl, bc                                       ; $7aab: $09
	ld a, [hl+]                                      ; $7aac: $2a
	ld de, $1320                                     ; $7aad: $11 $20 $13
	ld d, h                                          ; $7ab0: $54
	inc hl                                           ; $7ab1: $23
	pop af                                           ; $7ab2: $f1
	daa                                              ; $7ab3: $27
	xor c                                            ; $7ab4: $a9
	ld h, a                                          ; $7ab5: $67
	ldh [$c1], a                                     ; $7ab6: $e0 $c1
	sub c                                            ; $7ab8: $91
	inc hl                                           ; $7ab9: $23
	rst FarCall                                          ; $7aba: $f7
	db $e3                                           ; $7abb: $e3
	ld [hl], $e7                                     ; $7abc: $36 $e7
	ld [hl], $d7                                     ; $7abe: $36 $d7
	ld [hl], $77                                     ; $7ac0: $36 $77
	ld d, $36                                        ; $7ac2: $16 $36
	ld d, $34                                        ; $7ac4: $16 $34
	inc d                                            ; $7ac6: $14
	ld [hl], a                                       ; $7ac7: $77
	cp $91                                           ; $7ac8: $fe $91
	ld l, $1c                                        ; $7aca: $2e $1c
	db $fc                                           ; $7acc: $fc
	ld a, $ce                                        ; $7acd: $3e $ce
	rst $38                                          ; $7acf: $ff
	add hl, de                                       ; $7ad0: $19
	ld l, a                                          ; $7ad1: $6f
	ld a, [de]                                       ; $7ad2: $1a
	ld hl, $2018                                     ; $7ad3: $21 $18 $20

jr_072_7ad6:
	jr jr_072_7af8                                   ; $7ad6: $18 $20

	ld c, [hl]                                       ; $7ad8: $4e
	adc $df                                          ; $7ad9: $ce $df
	inc bc                                           ; $7adb: $03
	ld a, [hl]                                       ; $7adc: $7e
	ld l, c                                          ; $7add: $69
	adc [hl]                                         ; $7ade: $8e
	ld c, $0d                                        ; $7adf: $0e $0d
	sbc [hl]                                         ; $7ae1: $9e
	sbc c                                            ; $7ae2: $99
	ld a, l                                          ; $7ae3: $7d
	ei                                               ; $7ae4: $fb
	sbc c                                            ; $7ae5: $99

Jump_072_7ae6:
	ld a, a                                          ; $7ae6: $7f
	adc a                                            ; $7ae7: $8f
	rst $38                                          ; $7ae8: $ff
	ld a, a                                          ; $7ae9: $7f
	rst $38                                          ; $7aea: $ff
	ld e, $ff                                        ; $7aeb: $1e $ff
	inc c                                            ; $7aed: $0c
	rst $38                                          ; $7aee: $ff
	dec c                                            ; $7aef: $0d
	sbc $ff                                          ; $7af0: $de $ff
	ld a, a                                          ; $7af2: $7f
	ld a, [$c387]                                    ; $7af3: $fa $87 $c3
	inc a                                            ; $7af6: $3c
	sbc a                                            ; $7af7: $9f

jr_072_7af8:
	ld h, b                                          ; $7af8: $60
	ld a, a                                          ; $7af9: $7f
	add b                                            ; $7afa: $80
	db $eb                                           ; $7afb: $eb
	inc b                                            ; $7afc: $04
	sub l                                            ; $7afd: $95
	ld c, d                                          ; $7afe: $4a
	ld d, c                                          ; $7aff: $51
	adc d                                            ; $7b00: $8a
	ld c, d                                          ; $7b01: $4a
	add c                                            ; $7b02: $81
	ld c, h                                          ; $7b03: $4c
	add c                                            ; $7b04: $81
	push bc                                          ; $7b05: $c5
	adc b                                            ; $7b06: $88
	sub $88                                          ; $7b07: $d6 $88
	ld [$cb98], a                                    ; $7b09: $ea $98 $cb
	sbc c                                            ; $7b0c: $99
	ldh [$c1], a                                     ; $7b0d: $e0 $c1
	sbc c                                            ; $7b0f: $99
	ldh a, [rAUD4LEN]                                ; $7b10: $f0 $20
	ld hl, sp+$10                                    ; $7b12: $f8 $10
	adc h                                            ; $7b14: $8c
	ld [$c979], sp                                   ; $7b15: $08 $79 $c9
	sbc [hl]                                         ; $7b18: $9e
	ld [bc], a                                       ; $7b19: $02
	ld a, d                                          ; $7b1a: $7a
	ld d, [hl]                                       ; $7b1b: $56
	adc a                                            ; $7b1c: $8f
	rlca                                             ; $7b1d: $07
	inc e                                            ; $7b1e: $1c
	rrca                                             ; $7b1f: $0f
	jr c, jr_072_7b41                                ; $7b20: $38 $1f

	ld a, h                                          ; $7b22: $7c
	ccf                                              ; $7b23: $3f
	cp $47                                           ; $7b24: $fe $47
	rst FarCall                                          ; $7b26: $f7
	jp $41c3                                         ; $7b27: $c3 $c3 $41


	pop bc                                           ; $7b2a: $c1
	ld b, c                                          ; $7b2b: $41
	ld b, e                                          ; $7b2c: $43
	ld a, e                                          ; $7b2d: $7b
	cp $f7                                           ; $7b2e: $fe $f7
	rst SubAFromDE                                          ; $7b30: $df
	ld a, h                                          ; $7b31: $7c
	add b                                            ; $7b32: $80
	or b                                             ; $7b33: $b0
	ldh a, [$60]                                     ; $7b34: $f0 $60
	ldh [rVBK], a                                    ; $7b36: $e0 $4f
	rst GetHLinHL                                          ; $7b38: $cf
	or d                                             ; $7b39: $b2
	cp [hl]                                          ; $7b3a: $be
	call nz, $bffc                                   ; $7b3b: $c4 $fc $bf
	rst $38                                          ; $7b3e: $ff
	ret nz                                           ; $7b3f: $c0

	rst $38                                          ; $7b40: $ff

jr_072_7b41:
	cp a                                             ; $7b41: $bf
	ret nz                                           ; $7b42: $c0

	di                                               ; $7b43: $f3
	rrca                                             ; $7b44: $0f
	inc e                                            ; $7b45: $1c
	db $e3                                           ; $7b46: $e3
	add c                                            ; $7b47: $81
	ret nz                                           ; $7b48: $c0

	ld e, $80                                        ; $7b49: $1e $80
	ld h, b                                          ; $7b4b: $60
	sbc a                                            ; $7b4c: $9f
	sbc a                                            ; $7b4d: $9f
	ldh [$5c], a                                     ; $7b4e: $e0 $5c
	ldh [rAUD4POLY], a                               ; $7b50: $e0 $22
	adc d                                            ; $7b52: $8a
	ldh a, [$d9]                                     ; $7b53: $f0 $d9
	jr nc, jr_072_7bbb                               ; $7b55: $30 $64

	jr @+$34                                         ; $7b57: $18 $32

	adc h                                            ; $7b59: $8c
	add hl, de                                       ; $7b5a: $19
	add $8c                                          ; $7b5b: $c6 $8c
	ld h, e                                          ; $7b5d: $63
	add $31                                          ; $7b5e: $c6 $31
	inc hl                                           ; $7b60: $23
	sbc b                                            ; $7b61: $98
	ld d, c                                          ; $7b62: $51
	adc h                                            ; $7b63: $8c
	add sp, $46                                      ; $7b64: $e8 $46
	dec [hl]                                         ; $7b66: $35
	ld h, e                                          ; $7b67: $63
	ldh [$c1], a                                     ; $7b68: $e0 $c1
	add h                                            ; $7b6a: $84
	rra                                              ; $7b6b: $1f
	ld b, $1f                                        ; $7b6c: $06 $1f
	ld a, [bc]                                       ; $7b6e: $0a
	ccf                                              ; $7b6f: $3f
	ld [de], a                                       ; $7b70: $12
	ld [hl], a                                       ; $7b71: $77
	inc hl                                           ; $7b72: $23
	rst SubAFromBC                                          ; $7b73: $e7
	ld b, e                                          ; $7b74: $43
	rst SubAFromBC                                          ; $7b75: $e7
	db $e3                                           ; $7b76: $e3
	inc sp                                           ; $7b77: $33
	ldh [c], a                                       ; $7b78: $e2
	dec de                                           ; $7b79: $1b
	ldh a, [c]                                       ; $7b7a: $f2
	sbc a                                            ; $7b7b: $9f
	cp d                                             ; $7b7c: $ba
	sbc a                                            ; $7b7d: $9f
	cp [hl]                                          ; $7b7e: $be
	cp a                                             ; $7b7f: $bf
	di                                               ; $7b80: $f3
	rst $38                                          ; $7b81: $ff
	ldh [c], a                                       ; $7b82: $e2
	ccf                                              ; $7b83: $3f
	ldh [c], a                                       ; $7b84: $e2
	ld [hl], $7b                                     ; $7b85: $36 $7b
	cp $9d                                           ; $7b87: $fe $9d
	inc [hl]                                         ; $7b89: $34
	ldh [$f1], a                                     ; $7b8a: $e0 $f1
	rst SubAFromDE                                          ; $7b8c: $df
	ret nz                                           ; $7b8d: $c0

	db $fd                                           ; $7b8e: $fd
	rst SubAFromDE                                          ; $7b8f: $df
	ldh [$80], a                                     ; $7b90: $e0 $80
	ccf                                              ; $7b92: $3f
	rst $38                                          ; $7b93: $ff
	jp $ff3f                                         ; $7b94: $c3 $3f $ff


	rst $38                                          ; $7b97: $ff
	db $fd                                           ; $7b98: $fd

Call_072_7b99:
	di                                               ; $7b99: $f3
	rra                                              ; $7b9a: $1f
	db $fc                                           ; $7b9b: $fc
	ld h, a                                          ; $7b9c: $67
	rra                                              ; $7b9d: $1f
	sbc l                                            ; $7b9e: $9d
	inc bc                                           ; $7b9f: $03
	db $e4                                           ; $7ba0: $e4
	ei                                               ; $7ba1: $fb
	sbc b                                            ; $7ba2: $98
	ld a, a                                          ; $7ba3: $7f
	ld l, $1f                                        ; $7ba4: $2e $1f
	rla                                              ; $7ba6: $17
	adc a                                            ; $7ba7: $8f
	adc d                                            ; $7ba8: $8a
	ld b, a                                          ; $7ba9: $47
	ld e, c                                          ; $7baa: $59
	daa                                              ; $7bab: $27
	ld sp, $a81f                                     ; $7bac: $31 $1f $a8
	rra                                              ; $7baf: $1f
	ld h, h                                          ; $7bb0: $64
	sub [hl]                                         ; $7bb1: $96
	sbc a                                            ; $7bb2: $9f
	inc b                                            ; $7bb3: $04
	rst $38                                          ; $7bb4: $ff

jr_072_7bb5:
	and d                                            ; $7bb5: $a2
	ld a, a                                          ; $7bb6: $7f
	jp nc, $293f                                     ; $7bb7: $d2 $3f $29

	rra                                              ; $7bba: $1f

jr_072_7bbb:
	ldh [$c1], a                                     ; $7bbb: $e0 $c1
	sbc h                                            ; $7bbd: $9c
	ld hl, sp-$11                                    ; $7bbe: $f8 $ef
	cp b                                             ; $7bc0: $b8
	ld [hl], e                                       ; $7bc1: $73
	cp $87                                           ; $7bc2: $fe $87
	jr c, jr_072_7bb5                                ; $7bc4: $38 $ef

	cp b                                             ; $7bc6: $b8
	ld a, a                                          ; $7bc7: $7f
	reti                                             ; $7bc8: $d9


	ld a, $fb                                        ; $7bc9: $3e $fb
	inc e                                            ; $7bcb: $1c
	rst $38                                          ; $7bcc: $ff
	rra                                              ; $7bcd: $1f
	db $fc                                           ; $7bce: $fc
	rra                                              ; $7bcf: $1f
	rst SubAFromDE                                          ; $7bd0: $df
	inc a                                            ; $7bd1: $3c
	or l                                             ; $7bd2: $b5
	db $fc                                           ; $7bd3: $fc
	db $ed                                           ; $7bd4: $ed
	db $f4                                           ; $7bd5: $f4
	sub l                                            ; $7bd6: $95
	db $e4                                           ; $7bd7: $e4
	push hl                                          ; $7bd8: $e5
	add b                                            ; $7bd9: $80
	and h                                            ; $7bda: $a4
	add b                                            ; $7bdb: $80
	ld a, [de]                                       ; $7bdc: $1a
	add [hl]                                         ; $7bdd: $86
	add b                                            ; $7bde: $80
	ldh a, [rP1]                                     ; $7bdf: $f0 $00
	nop                                              ; $7be1: $00
	add b                                            ; $7be2: $80
	add b                                            ; $7be3: $80
	ld h, b                                          ; $7be4: $60
	ldh [hDisp1_SCY], a                                     ; $7be5: $e0 $90
	ld [hl], b                                       ; $7be7: $70
	add sp, -$08                                     ; $7be8: $e8 $f8
	cp b                                             ; $7bea: $b8
	cp b                                             ; $7beb: $b8
	ld e, h                                          ; $7bec: $5c
	call c, $e626                                    ; $7bed: $dc $26 $e6
	sub b                                            ; $7bf0: $90
	ldh a, [$c8]                                     ; $7bf1: $f0 $c8
	ld hl, sp+$64                                    ; $7bf3: $f8 $64
	db $fc                                           ; $7bf5: $fc
	ld [hl-], a                                      ; $7bf6: $32
	cp $aa                                           ; $7bf7: $fe $aa
	cp $ad                                           ; $7bf9: $fe $ad
	rst $38                                          ; $7bfb: $ff
	sbc e                                            ; $7bfc: $9b
	ei                                               ; $7bfd: $fb
	sbc e                                            ; $7bfe: $9b
	ld e, c                                          ; $7bff: $59
	ld sp, hl                                        ; $7c00: $f9
	ld e, b                                          ; $7c01: $58
	ld hl, sp+$6f                                    ; $7c02: $f8 $6f

jr_072_7c04:
	cp $92                                           ; $7c04: $fe $92
	ret c                                            ; $7c06: $d8

	ld hl, sp+$78                                    ; $7c07: $f8 $78
	ld hl, sp+$18                                    ; $7c09: $f8 $18
	ld hl, sp-$3a                                    ; $7c0b: $f8 $c6
	cp $7f                                           ; $7c0d: $fe $7f
	rst $38                                          ; $7c0f: $ff
	ld h, b                                          ; $7c10: $60
	ldh [$a0], a                                     ; $7c11: $e0 $a0
	sbc $e0                                          ; $7c13: $de $e0
	ld a, a                                          ; $7c15: $7f
	ld a, [$409a]                                    ; $7c16: $fa $9a $40
	ret nz                                           ; $7c19: $c0

	ld b, b                                          ; $7c1a: $40
	ret nz                                           ; $7c1b: $c0

	add b                                            ; $7c1c: $80
	dec de                                           ; $7c1d: $1b
	and h                                            ; $7c1e: $a4
	halt                                             ; $7c1f: $76
	ld hl, sp-$71                                    ; $7c20: $f8 $8f
	jr nc, @-$0e                                     ; $7c22: $30 $f0

	ld [$84f8], sp                                   ; $7c24: $08 $f8 $84
	db $fc                                           ; $7c27: $fc
	ld a, a                                          ; $7c28: $7f
	rst $38                                          ; $7c29: $ff
	rlca                                             ; $7c2a: $07
	rst $38                                          ; $7c2b: $ff
	rlca                                             ; $7c2c: $07
	ld hl, sp+$0f                                    ; $7c2d: $f8 $0f
	ldh a, [$1f]                                     ; $7c2f: $f0 $1f
	ldh [$74], a                                     ; $7c31: $e0 $74
	call c, $d17e                                    ; $7c33: $dc $7e $d1
	adc a                                            ; $7c36: $8f
	ld hl, sp+$00                                    ; $7c37: $f8 $00
	rst $38                                          ; $7c39: $ff
	ld hl, sp+$07                                    ; $7c3a: $f8 $07
	rst $38                                          ; $7c3c: $ff
	di                                               ; $7c3d: $f3
	inc c                                            ; $7c3e: $0c
	sub h                                            ; $7c3f: $94
	ld [$0894], sp                                   ; $7c40: $08 $94 $08
	ld [$0910], sp                                   ; $7c43: $08 $10 $09
	db $10                                           ; $7c46: $10
	ld [hl], a                                       ; $7c47: $77
	ld a, h                                          ; $7c48: $7c
	sub a                                            ; $7c49: $97
	ld [hl], b                                       ; $7c4a: $70
	ldh a, [$0c]                                     ; $7c4b: $f0 $0c

jr_072_7c4d:
	db $fc                                           ; $7c4d: $fc
	inc bc                                           ; $7c4e: $03
	rst $38                                          ; $7c4f: $ff
	inc e                                            ; $7c50: $1c
	db $e3                                           ; $7c51: $e3
	ld l, h                                          ; $7c52: $6c
	cp [hl]                                          ; $7c53: $be
	sub c                                            ; $7c54: $91
	ld a, h                                          ; $7c55: $7c
	add e                                            ; $7c56: $83
	add e                                            ; $7c57: $83
	rst $38                                          ; $7c58: $ff
	ld a, h                                          ; $7c59: $7c
	rst $38                                          ; $7c5a: $ff
	dec bc                                           ; $7c5b: $0b
	db $fc                                           ; $7c5c: $fc
	ld d, $f9                                        ; $7c5d: $16 $f9
	ld l, $f1                                        ; $7c5f: $2e $f1
	ld e, l                                          ; $7c61: $5d
	ldh [c], a                                       ; $7c62: $e2
	rst FarCall                                          ; $7c63: $f7
	rst SubAFromDE                                          ; $7c64: $df
	add b                                            ; $7c65: $80
	ld a, a                                          ; $7c66: $7f
	adc h                                            ; $7c67: $8c
	sub e                                            ; $7c68: $93
	and b                                            ; $7c69: $a0
	ld h, b                                          ; $7c6a: $60
	jr nz, jr_072_7c4d                               ; $7c6b: $20 $e0

	ret nc                                           ; $7c6d: $d0

	ldh a, [$30]                                     ; $7c6e: $f0 $30
	ldh a, [$d0]                                     ; $7c70: $f0 $d0
	jr nc, jr_072_7c04                               ; $7c72: $30 $90

	ld [hl], b                                       ; $7c74: $70
	ld l, a                                          ; $7c75: $6f
	cp $1e                                           ; $7c76: $fe $1e
	nop                                              ; $7c78: $00
	sbc h                                            ; $7c79: $9c
	call z, $9999                                    ; $7c7a: $cc $99 $99
	ld a, e                                          ; $7c7d: $7b
	db $fd                                           ; $7c7e: $fd
	ld [hl], a                                       ; $7c7f: $77
	ei                                               ; $7c80: $fb
	sub [hl]                                         ; $7c81: $96
	ld de, $99ff                                     ; $7c82: $11 $ff $99
	inc sp                                           ; $7c85: $33
	sbc c                                            ; $7c86: $99
	ld de, $9999                                     ; $7c87: $11 $99 $99
	ld [hl+], a                                      ; $7c8a: $22
	ld h, e                                          ; $7c8b: $63
	ei                                               ; $7c8c: $fb
	sbc [hl]                                         ; $7c8d: $9e
	inc sp                                           ; $7c8e: $33
	sbc $88                                          ; $7c8f: $de $88
	ld a, a                                          ; $7c91: $7f
	ei                                               ; $7c92: $fb
	rst SubAFromDE                                          ; $7c93: $df
	call z, $01a2                                    ; $7c94: $cc $a2 $01
	add b                                            ; $7c97: $80
	ld d, d                                          ; $7c98: $52
	rst AddAOntoHL                                          ; $7c99: $ef
	ld h, h                                          ; $7c9a: $64
	rst SubAFromDE                                          ; $7c9b: $df
	add h                                            ; $7c9c: $84
	rst $38                                          ; $7c9d: $ff
	adc c                                            ; $7c9e: $89
	cp $93                                           ; $7c9f: $fe $93
	db $fc                                           ; $7ca1: $fc
	sbc a                                            ; $7ca2: $9f
	rst $38                                          ; $7ca3: $ff
	jr nc, @+$01                                     ; $7ca4: $30 $ff

	inc hl                                           ; $7ca6: $23
	rst $38                                          ; $7ca7: $ff
	ld l, a                                          ; $7ca8: $6f
	rst $38                                          ; $7ca9: $ff
	ld l, l                                          ; $7caa: $6d
	ld a, [$f1ef]                                    ; $7cab: $fa $ef $f1
	xor h                                            ; $7cae: $ac
	di                                               ; $7caf: $f3
	sub a                                            ; $7cb0: $97
	ld hl, sp+$57                                    ; $7cb1: $f8 $57
	ld a, b                                          ; $7cb3: $78
	ccf                                              ; $7cb4: $3f
	jr c, jr_072_7cd2                                ; $7cb5: $38 $1b

	add b                                            ; $7cb7: $80
	inc e                                            ; $7cb8: $1c

jr_072_7cb9:
	rra                                              ; $7cb9: $1f
	inc e                                            ; $7cba: $1c
	dec d                                            ; $7cbb: $15
	ld e, $16                                        ; $7cbc: $1e $16
	rra                                              ; $7cbe: $1f
	inc de                                           ; $7cbf: $13
	rra                                              ; $7cc0: $1f
	ld [de], a                                       ; $7cc1: $12
	rra                                              ; $7cc2: $1f
	ld d, $1b                                        ; $7cc3: $16 $1b
	ld d, $1b                                        ; $7cc5: $16 $1b
	dec [hl]                                         ; $7cc7: $35
	ld a, [hl-]                                      ; $7cc8: $3a
	dec l                                            ; $7cc9: $2d
	ld [hl-], a                                      ; $7cca: $32
	cpl                                              ; $7ccb: $2f
	jr nc, jr_072_7cfd                               ; $7ccc: $30 $2f

	jr nc, jr_072_7cfd                               ; $7cce: $30 $2d

	ld [hl-], a                                      ; $7cd0: $32
	dec l                                            ; $7cd1: $2d

jr_072_7cd2:
	ld [hl-], a                                      ; $7cd2: $32
	ld a, [hl+]                                      ; $7cd3: $2a
	scf                                              ; $7cd4: $37
	ld a, [hl+]                                      ; $7cd5: $2a
	scf                                              ; $7cd6: $37
	add e                                            ; $7cd7: $83
	db $eb                                           ; $7cd8: $eb
	rst FarCall                                          ; $7cd9: $f7
	db $db                                           ; $7cda: $db
	ld c, c                                          ; $7cdb: $49
	ld e, c                                          ; $7cdc: $59
	ld c, b                                          ; $7cdd: $48
	ld e, l                                          ; $7cde: $5d
	ld c, h                                          ; $7cdf: $4c
	dec l                                            ; $7ce0: $2d
	inc h                                            ; $7ce1: $24
	ld l, $26                                        ; $7ce2: $2e $26
	cp $f6                                           ; $7ce4: $fe $f6
	rst $38                                          ; $7ce6: $ff
	dec [hl]                                         ; $7ce7: $35
	db $fd                                           ; $7ce8: $fd
	db $fd                                           ; $7ce9: $fd
	ld e, l                                          ; $7cea: $5d
	db $fc                                           ; $7ceb: $fc
	adc $ee                                          ; $7cec: $ce $ee
	add [hl]                                         ; $7cee: $86
	jp nz, $01c3                                     ; $7cef: $c2 $c3 $01

	ld bc, $7700                                     ; $7cf2: $01 $00 $77
	cp $8f                                           ; $7cf5: $fe $8f
	inc bc                                           ; $7cf7: $03
	ld [bc], a                                       ; $7cf8: $02
	ld a, e                                          ; $7cf9: $7b
	jr c, jr_072_7cb9                                ; $7cfa: $38 $bd

	sub h                                            ; $7cfc: $94

Jump_072_7cfd:
jr_072_7cfd:
	sbc $d2                                          ; $7cfd: $de $d2
	rst $38                                          ; $7cff: $ff
	or c                                             ; $7d00: $b1
	ld hl, sp+$58                                    ; $7d01: $f8 $58
	rst $38                                          ; $7d03: $ff
	ld c, a                                          ; $7d04: $4f
	rst $38                                          ; $7d05: $ff
	ld e, b                                          ; $7d06: $58
	ld a, e                                          ; $7d07: $7b
	sbc a                                            ; $7d08: $9f
	add b                                            ; $7d09: $80
	xor a                                            ; $7d0a: $af
	db $fc                                           ; $7d0b: $fc
	ld d, [hl]                                       ; $7d0c: $56
	pop af                                           ; $7d0d: $f1
	ld sp, $18fb                                     ; $7d0e: $31 $fb $18
	sbc a                                            ; $7d11: $9f
	inc c                                            ; $7d12: $0c
	inc c                                            ; $7d13: $0c
	inc b                                            ; $7d14: $04
	ld b, $02                                        ; $7d15: $06 $02
	inc bc                                           ; $7d17: $03
	ld bc, $858f                                     ; $7d18: $01 $8f $85
	rst JumpTable                                          ; $7d1b: $c7
	jp Jump_072_71f3                                 ; $7d1c: $c3 $f3 $71


	ld a, l                                          ; $7d1f: $7d
	inc l                                            ; $7d20: $2c
	rst $38                                          ; $7d21: $ff
	db $d3                                           ; $7d22: $d3
	rst $38                                          ; $7d23: $ff
	ld sp, hl                                        ; $7d24: $f9
	rst $38                                          ; $7d25: $ff
	dec c                                            ; $7d26: $0d
	rst $38                                          ; $7d27: $ff
	push hl                                          ; $7d28: $e5
	sub l                                            ; $7d29: $95
	ld e, a                                          ; $7d2a: $5f
	ld a, [$d3df]                                    ; $7d2b: $fa $df $d3
	cp a                                             ; $7d2e: $bf
	rst JumpTable                                          ; $7d2f: $c7
	rst $38                                          ; $7d30: $ff
	dec b                                            ; $7d31: $05
	rst $38                                          ; $7d32: $ff
	add hl, bc                                       ; $7d33: $09
	ld a, e                                          ; $7d34: $7b
	cp $93                                           ; $7d35: $fe $93
	inc de                                           ; $7d37: $13
	rst $38                                          ; $7d38: $ff
	rla                                              ; $7d39: $17
	sbc [hl]                                         ; $7d3a: $9e
	cp $3a                                           ; $7d3b: $fe $3a
	cp $2e                                           ; $7d3d: $fe $2e
	ld a, [$ea7e]                                    ; $7d3f: $fa $7e $ea
	sub $73                                          ; $7d42: $d6 $73
	cp $8d                                           ; $7d44: $fe $8d
	xor h                                            ; $7d46: $ac
	call nc, $d4ac                                   ; $7d47: $d4 $ac $d4
	db $ec                                           ; $7d4a: $ec
	sub h                                            ; $7d4b: $94
	sbc $a6                                          ; $7d4c: $de $a6
	ld d, l                                          ; $7d4e: $55
	xor a                                            ; $7d4f: $af
	ld a, h                                          ; $7d50: $7c
	xor a                                            ; $7d51: $af
	ld a, [$f92f]                                    ; $7d52: $fa $2f $f9
	ld l, a                                          ; $7d55: $6f
	rst $38                                          ; $7d56: $ff
	ld l, a                                          ; $7d57: $6f
	ld c, a                                          ; $7d58: $4f
	ld b, b                                          ; $7d59: $40
	sub l                                            ; $7d5a: $95
	jr nz, @+$01                                     ; $7d5b: $20 $ff

	ld h, a                                          ; $7d5d: $67
	ei                                               ; $7d5e: $fb
	ld l, a                                          ; $7d5f: $6f
	rst FarCall                                          ; $7d60: $f7
	rst AddAOntoHL                                          ; $7d61: $ef
	ldh a, [$af]                                     ; $7d62: $f0 $af
	ldh a, [$67]                                     ; $7d64: $f0 $67
	ld b, b                                          ; $7d66: $40
	ld e, a                                          ; $7d67: $5f
	ld h, b                                          ; $7d68: $60
	sub c                                            ; $7d69: $91
	sbc $16                                          ; $7d6a: $de $16
	rst $38                                          ; $7d6c: $ff
	push af                                          ; $7d6d: $f5
	db $fd                                           ; $7d6e: $fd
	dec e                                            ; $7d6f: $1d
	db $fd                                           ; $7d70: $fd
	db $fc                                           ; $7d71: $fc
	ld l, $7e                                        ; $7d72: $2e $7e
	add $62                                          ; $7d74: $c6 $62
	db $e3                                           ; $7d76: $e3
	pop hl                                           ; $7d77: $e1
	dec hl                                           ; $7d78: $2b
	ld h, b                                          ; $7d79: $60
	ld a, a                                          ; $7d7a: $7f
	cp a                                             ; $7d7b: $bf
	sbc b                                            ; $7d7c: $98
	xor a                                            ; $7d7d: $af
	ld hl, sp+$5d                                    ; $7d7e: $f8 $5d
	pop af                                           ; $7d80: $f1
	inc sp                                           ; $7d81: $33
	ei                                               ; $7d82: $fb
	dec de                                           ; $7d83: $1b
	dec hl                                           ; $7d84: $2b
	ld h, b                                          ; $7d85: $60
	ld a, a                                          ; $7d86: $7f
	ld l, b                                          ; $7d87: $68
	sbc b                                            ; $7d88: $98
	ldh [c], a                                       ; $7d89: $e2
	rst $38                                          ; $7d8a: $ff
	di                                               ; $7d8b: $f3
	sbc a                                            ; $7d8c: $9f
	ld b, a                                          ; $7d8d: $47
	cp a                                             ; $7d8e: $bf
	add l                                            ; $7d8f: $85
	ld h, a                                          ; $7d90: $67
	ld h, b                                          ; $7d91: $60
	ld b, a                                          ; $7d92: $47
	add b                                            ; $7d93: $80
	sbc c                                            ; $7d94: $99
	ld h, h                                          ; $7d95: $64
	ei                                               ; $7d96: $fb
	ld l, a                                          ; $7d97: $6f
	di                                               ; $7d98: $f3
	xor $f7                                          ; $7d99: $ee $f7
	dec de                                           ; $7d9b: $1b
	add b                                            ; $7d9c: $80
	sbc c                                            ; $7d9d: $99
	inc c                                            ; $7d9e: $0c
	cp $fe                                           ; $7d9f: $fe $fe
	ld h, [hl]                                       ; $7da1: $66
	ldh a, [c]                                       ; $7da2: $f2
	jp $801f                                         ; $7da3: $c3 $1f $80


	sbc d                                            ; $7da6: $9a
	and b                                            ; $7da7: $a0
	rst $38                                          ; $7da8: $ff
	ld e, a                                          ; $7da9: $5f
	pop af                                           ; $7daa: $f1
	scf                                              ; $7dab: $37
	dec de                                           ; $7dac: $1b
	add b                                            ; $7dad: $80
	sbc d                                            ; $7dae: $9a
	ld [bc], a                                       ; $7daf: $02
	rst $38                                          ; $7db0: $ff
	db $e3                                           ; $7db1: $e3
	cp a                                             ; $7db2: $bf
	rst FarCall                                          ; $7db3: $f7
	rra                                              ; $7db4: $1f
	add b                                            ; $7db5: $80
	sbc b                                            ; $7db6: $98
	ld h, b                                          ; $7db7: $60
	rst $38                                          ; $7db8: $ff
	ld l, [hl]                                       ; $7db9: $6e
	pop af                                           ; $7dba: $f1
	rst AddAOntoHL                                          ; $7dbb: $ef

jr_072_7dbc:
	rst FarCall                                          ; $7dbc: $f7
	xor a                                            ; $7dbd: $af
	ld h, d                                          ; $7dbe: $62
	ld b, b                                          ; $7dbf: $40
	dec sp                                           ; $7dc0: $3b
	add b                                            ; $7dc1: $80
	sbc h                                            ; $7dc2: $9c
	ld e, $f6                                        ; $7dc3: $1e $f6
	ldh a, [c]                                       ; $7dc5: $f2
	dec de                                           ; $7dc6: $1b
	nop                                              ; $7dc7: $00
	ld a, a                                          ; $7dc8: $7f
	add b                                            ; $7dc9: $80
	sbc l                                            ; $7dca: $9d
	ld e, b                                          ; $7dcb: $58
	rst FarCall                                          ; $7dcc: $f7
	rrca                                             ; $7dcd: $0f
	add b                                            ; $7dce: $80
	sbc d                                            ; $7dcf: $9a
	inc bc                                           ; $7dd0: $03
	rst $38                                          ; $7dd1: $ff
	rst FarCall                                          ; $7dd2: $f7
	rst $38                                          ; $7dd3: $ff
	push hl                                          ; $7dd4: $e5
	ld h, a                                          ; $7dd5: $67
	add b                                            ; $7dd6: $80
	rst SubAFromDE                                          ; $7dd7: $df
	ld bc, $0288                                     ; $7dd8: $01 $88 $02
	nop                                              ; $7ddb: $00
	ld [bc], a                                       ; $7ddc: $02
	inc bc                                           ; $7ddd: $03
	add b                                            ; $7dde: $80
	nop                                              ; $7ddf: $00
	pop bc                                           ; $7de0: $c1
	add b                                            ; $7de1: $80
	ldh [$c0], a                                     ; $7de2: $e0 $c0
	ld hl, sp-$20                                    ; $7de4: $f8 $e0
	sbc $f8                                          ; $7de6: $de $f8
	rst JumpTable                                          ; $7de8: $c7
	cp $dd                                           ; $7de9: $fe $dd
	db $e3                                           ; $7deb: $e3
	di                                               ; $7dec: $f3
	ret nz                                           ; $7ded: $c0

	pop af                                           ; $7dee: $f1
	ret nz                                           ; $7def: $c0

	ldh a, [$7b]                                     ; $7df0: $f0 $7b
	cp $9e                                           ; $7df2: $fe $9e
	ld [hl], b                                       ; $7df4: $70
	ld a, e                                          ; $7df5: $7b
	cp $7f                                           ; $7df6: $fe $7f
	sbc h                                            ; $7df8: $9c
	add c                                            ; $7df9: $81
	ld b, e                                          ; $7dfa: $43
	jr nz, jr_072_7e40                               ; $7dfb: $20 $43

	ld h, b                                          ; $7dfd: $60
	rlca                                             ; $7dfe: $07
	nop                                              ; $7dff: $00
	adc [hl]                                         ; $7e00: $8e
	ld bc, $031d                                     ; $7e01: $01 $1d $03
	dec sp                                           ; $7e04: $3b
	rlca                                             ; $7e05: $07
	ld l, l                                          ; $7e06: $6d
	rra                                              ; $7e07: $1f
	cp c                                             ; $7e08: $b9
	ld a, a                                          ; $7e09: $7f
	pop hl                                           ; $7e0a: $e1
	rst $38                                          ; $7e0b: $ff
	ld bc, $c3ff                                     ; $7e0c: $01 $ff $c3
	dec a                                            ; $7e0f: $3d
	rst $38                                          ; $7e10: $ff
	ld bc, $013f                    ; $7e11: $01 $3f $01
	ld c, $03                                        ; $7e14: $0e $03
	ld e, $03                                        ; $7e16: $1e $03
	ld l, a                                          ; $7e18: $6f
	ret nz                                           ; $7e19: $c0

	sbc l                                            ; $7e1a: $9d
	add e                                            ; $7e1b: $83
	ld bc, $c017                                     ; $7e1c: $01 $17 $c0
	sbc e                                            ; $7e1f: $9b
	db $e3                                           ; $7e20: $e3
	ldh [$c7], a                                     ; $7e21: $e0 $c7
	ret nz                                           ; $7e23: $c0

	inc bc                                           ; $7e24: $03
	ret nz                                           ; $7e25: $c0

	dec de                                           ; $7e26: $1b
	ret nz                                           ; $7e27: $c0

	sbc [hl]                                         ; $7e28: $9e
	ld h, e                                          ; $7e29: $63
	inc de                                           ; $7e2a: $13
	ret nz                                           ; $7e2b: $c0

	ld a, [hl]                                       ; $7e2c: $7e
	db $fc                                           ; $7e2d: $fc
	rst SubAFromDE                                          ; $7e2e: $df
	inc bc                                           ; $7e2f: $03
	rla                                              ; $7e30: $17
	ret nz                                           ; $7e31: $c0

	sbc l                                            ; $7e32: $9d
	db $e3                                           ; $7e33: $e3
	ld h, b                                          ; $7e34: $60
	rla                                              ; $7e35: $17
	add b                                            ; $7e36: $80
	jr c, jr_072_7dbc                                ; $7e37: $38 $83

	db $dd                                           ; $7e39: $dd
	ld bc, $02de                                     ; $7e3a: $01 $de $02
	sbc [hl]                                         ; $7e3d: $9e
	inc b                                            ; $7e3e: $04
	db $dd                                           ; $7e3f: $dd

jr_072_7e40:
	ld bc, $03de                                     ; $7e40: $01 $de $03

jr_072_7e43:
	adc [hl]                                         ; $7e43: $8e
	rlca                                             ; $7e44: $07
	inc b                                            ; $7e45: $04
	ld b, $0b                                        ; $7e46: $06 $0b
	dec bc                                           ; $7e48: $0b
	rrca                                             ; $7e49: $0f
	rla                                              ; $7e4a: $17
	rla                                              ; $7e4b: $17
	cpl                                              ; $7e4c: $2f
	rlca                                             ; $7e4d: $07
	dec b                                            ; $7e4e: $05
	inc c                                            ; $7e4f: $0c
	inc c                                            ; $7e50: $0c
	ld [$1818], sp                                   ; $7e51: $08 $18 $18
	jr nc, jr_072_7e43                               ; $7e54: $30 $ed

	sbc e                                            ; $7e56: $9b
	inc bc                                           ; $7e57: $03
	ld b, $0d                                        ; $7e58: $06 $0d
	rra                                              ; $7e5a: $1f
	ld [hl], e                                       ; $7e5b: $73
	ld hl, sp-$72                                    ; $7e5c: $f8 $8e
	dec b                                            ; $7e5e: $05
	dec bc                                           ; $7e5f: $0b
	rra                                              ; $7e60: $1f
	ld bc, $0203                                     ; $7e61: $01 $03 $02
	ld b, $07                                        ; $7e64: $06 $07
	ld b, $04                                        ; $7e66: $06 $04
	inc b                                            ; $7e68: $04
	ld bc, $0302                                     ; $7e69: $01 $02 $03
	dec b                                            ; $7e6c: $05
	rlca                                             ; $7e6d: $07
	ld b, $7b                                        ; $7e6e: $06 $7b
	rst FarCall                                          ; $7e70: $f7
	ld a, [$f763]                                    ; $7e71: $fa $63 $f7
	sbc [hl]                                         ; $7e74: $9e
	nop                                              ; $7e75: $00
	sbc $07                                          ; $7e76: $de $07
	sbc h                                            ; $7e78: $9c
	ccf                                              ; $7e79: $3f
	ld e, h                                          ; $7e7a: $5c
	ld e, a                                          ; $7e7b: $5f
	ld a, e                                          ; $7e7c: $7b
	ld hl, sp-$21                                    ; $7e7d: $f8 $df
	inc b                                            ; $7e7f: $04
	sbc h                                            ; $7e80: $9c
	ccf                                              ; $7e81: $3f
	ld h, e                                          ; $7e82: $63
	ld h, b                                          ; $7e83: $60
	db $dd                                           ; $7e84: $dd
	ld e, a                                          ; $7e85: $5f
	sbc $bf                                          ; $7e86: $de $bf
	sbc [hl]                                         ; $7e88: $9e
	rst $38                                          ; $7e89: $ff
	db $dd                                           ; $7e8a: $dd
	ld h, b                                          ; $7e8b: $60
	sbc $c0                                          ; $7e8c: $de $c0
	sbc [hl]                                         ; $7e8e: $9e
	add b                                            ; $7e8f: $80
	db $dd                                           ; $7e90: $dd
	ld a, a                                          ; $7e91: $7f
	sbc $7e                                          ; $7e92: $de $7e
	sbc [hl]                                         ; $7e94: $9e
	ld a, h                                          ; $7e95: $7c
	db $dd                                           ; $7e96: $dd
	add b                                            ; $7e97: $80
	sbc $81                                          ; $7e98: $de $81
	add [hl]                                         ; $7e9a: $86
	add e                                            ; $7e9b: $83
	ld a, h                                          ; $7e9c: $7c
	ld a, h                                          ; $7e9d: $7c
	ld a, c                                          ; $7e9e: $79
	ld a, c                                          ; $7e9f: $79
	ld a, e                                          ; $7ea0: $7b
	ld a, d                                          ; $7ea1: $7a
	ld a, [hl]                                       ; $7ea2: $7e
	db $fc                                           ; $7ea3: $fc
	add e                                            ; $7ea4: $83
	add e                                            ; $7ea5: $83
	add [hl]                                         ; $7ea6: $86
	add [hl]                                         ; $7ea7: $86
	add h                                            ; $7ea8: $84
	add l                                            ; $7ea9: $85
	add c                                            ; $7eaa: $81
	inc bc                                           ; $7eab: $03
	add h                                            ; $7eac: $84
	add l                                            ; $7ead: $85
	call $aeee                                       ; $7eae: $cd $ee $ae
	jp c, Jump_072_76aa                              ; $7eb1: $da $aa $76

	ld a, e                                          ; $7eb4: $7b
	ld hl, sp-$21                                    ; $7eb5: $f8 $df
	db $eb                                           ; $7eb7: $eb
	add b                                            ; $7eb8: $80
	cp a                                             ; $7eb9: $bf
	rst SubAFromDE                                          ; $7eba: $df
	ld c, a                                          ; $7ebb: $4f
	ld e, d                                          ; $7ebc: $5a
	dec l                                            ; $7ebd: $2d
	add hl, de                                       ; $7ebe: $19
	rst $38                                          ; $7ebf: $ff
	ld [hl], e                                       ; $7ec0: $73
	rst $38                                          ; $7ec1: $ff
	db $fd                                           ; $7ec2: $fd
	db $db                                           ; $7ec3: $db
	ld h, a                                          ; $7ec4: $67
	inc sp                                           ; $7ec5: $33
	rra                                              ; $7ec6: $1f
	rst $38                                          ; $7ec7: $ff
	rst $38                                          ; $7ec8: $ff
	sbc l                                            ; $7ec9: $9d
	ld a, e                                          ; $7eca: $7b
	or a                                             ; $7ecb: $b7
	xor [hl]                                         ; $7ecc: $ae
	ld e, l                                          ; $7ecd: $5d
	sbc d                                            ; $7ece: $9a
	cp l                                             ; $7ecf: $bd
	cp e                                             ; $7ed0: $bb
	cp a                                             ; $7ed1: $bf
	cp l                                             ; $7ed2: $bd
	sbc a                                            ; $7ed3: $9f
	ld h, [hl]                                       ; $7ed4: $66
	call z, $9b89                                    ; $7ed5: $cc $89 $9b
	rst SubAFromDE                                          ; $7ed8: $df
	sbc a                                            ; $7ed9: $9f
	sbc b                                            ; $7eda: $98
	adc a                                            ; $7edb: $8f
	adc l                                            ; $7edc: $8d
	add h                                            ; $7edd: $84
	call nz, $e6c7                                   ; $7ede: $c4 $c7 $e6
	db $e3                                           ; $7ee1: $e3
	sbc $f3                                          ; $7ee2: $de $f3
	adc a                                            ; $7ee4: $8f
	adc l                                            ; $7ee5: $8d
	add b                                            ; $7ee6: $80
	add d                                            ; $7ee7: $82
	jp $e1c1                                         ; $7ee8: $c3 $c1 $e1


	ldh [$e0], a                                     ; $7eeb: $e0 $e0
	pop bc                                           ; $7eed: $c1
	pop bc                                           ; $7eee: $c1
	db $e3                                           ; $7eef: $e3
	rst $38                                          ; $7ef0: $ff
	cp $ff                                           ; $7ef1: $fe $ff
	nop                                              ; $7ef3: $00
	ldh [$de], a                                     ; $7ef4: $e0 $de
	pop hl                                           ; $7ef6: $e1
	ld a, a                                          ; $7ef7: $7f
	ld d, h                                          ; $7ef8: $54
	rst SubAFromDE                                          ; $7ef9: $df
	rst $38                                          ; $7efa: $ff
	sbc [hl]                                         ; $7efb: $9e
	rra                                              ; $7efc: $1f
	sbc $e0                                          ; $7efd: $de $e0
	ld [hl], a                                       ; $7eff: $77
	adc c                                            ; $7f00: $89
	sbc [hl]                                         ; $7f01: $9e
	add b                                            ; $7f02: $80
	sbc $1f                                          ; $7f03: $de $1f
	sbc $3f                                          ; $7f05: $de $3f
	rst SubAFromDE                                          ; $7f07: $df
	ld a, a                                          ; $7f08: $7f
	add b                                            ; $7f09: $80
	add l                                            ; $7f0a: $85
	add hl, bc                                       ; $7f0b: $09
	add hl, de                                       ; $7f0c: $19
	ld [hl-], a                                      ; $7f0d: $32
	inc sp                                           ; $7f0e: $33
	ld h, e                                          ; $7f0f: $63
	ld h, l                                          ; $7f10: $65
	push bc                                          ; $7f11: $c5

Jump_072_7f12:
	ld a, e                                          ; $7f12: $7b
	rst FarCall                                          ; $7f13: $f7
	rst SubAFromBC                                          ; $7f14: $e7
	rst GetHLinHL                                          ; $7f15: $cf
	adc $9e                                          ; $7f16: $ce $9e
	sbc [hl]                                         ; $7f18: $9e
	ld a, $c6                                        ; $7f19: $3e $c6
	add [hl]                                         ; $7f1b: $86
	adc d                                            ; $7f1c: $8a
	dec bc                                           ; $7f1d: $0b
	add hl, hl                                       ; $7f1e: $29
	ld l, c                                          ; $7f1f: $69
	ld d, c                                          ; $7f20: $51
	pop de                                           ; $7f21: $d1
	dec a                                            ; $7f22: $3d
	ld a, l                                          ; $7f23: $7d
	ld a, l                                          ; $7f24: $7d
	db $fd                                           ; $7f25: $fd
	rst SubAFromDE                                          ; $7f26: $df
	sbc a                                            ; $7f27: $9f
	cp a                                             ; $7f28: $bf
	sbc [hl]                                         ; $7f29: $9e
	ccf                                              ; $7f2a: $3f
	scf                                              ; $7f2b: $37
	ld bc, $0f9b                                     ; $7f2c: $01 $9b $0f
	dec a                                            ; $7f2f: $3d
	ld d, a                                          ; $7f30: $57
	or c                                             ; $7f31: $b1
	ld [hl], a                                       ; $7f32: $77
	ld hl, sp-$80                                    ; $7f33: $f8 $80
	inc c                                            ; $7f35: $0c
	inc sp                                           ; $7f36: $33
	ld l, a                                          ; $7f37: $6f
	adc $dd                                          ; $7f38: $ce $dd
	ld [de], a                                       ; $7f3a: $12
	add l                                            ; $7f3b: $85
	ld [$bea5], a                                    ; $7f3c: $ea $a5 $be
	xor c                                            ; $7f3f: $a9
	ld c, d                                          ; $7f40: $4a
	add b                                            ; $7f41: $80
	add c                                            ; $7f42: $81
	ld [bc], a                                       ; $7f43: $02
	inc b                                            ; $7f44: $04
	ld c, h                                          ; $7f45: $4c
	ld c, c                                          ; $7f46: $49
	ld e, a                                          ; $7f47: $5f
	rst $38                                          ; $7f48: $ff
	sbc $fc                                          ; $7f49: $de $fc
	or [hl]                                          ; $7f4b: $b6
	ld b, e                                          ; $7f4c: $43
	ld e, d                                          ; $7f4d: $5a
	ld h, c                                          ; $7f4e: $61
	sbc h                                            ; $7f4f: $9c
	di                                               ; $7f50: $f3
	cp $fe                                           ; $7f51: $fe $fe
	rst GetHLinHL                                          ; $7f53: $cf
	sbc d                                            ; $7f54: $9a
	add a                                            ; $7f55: $87
	add c                                            ; $7f56: $81
	sbc h                                            ; $7f57: $9c
	rst $38                                          ; $7f58: $ff
	rst GetHLinHL                                          ; $7f59: $cf
	ldh [$c1], a                                     ; $7f5a: $e0 $c1
	sub d                                            ; $7f5c: $92
	ld a, e                                          ; $7f5d: $7b
	ld l, e                                          ; $7f5e: $6b
	rst FarCall                                          ; $7f5f: $f7
	ld [hl], a                                       ; $7f60: $77

jr_072_7f61:
	ld [hl], a                                       ; $7f61: $77
	ld d, e                                          ; $7f62: $53
	sub e                                            ; $7f63: $93
	sub e                                            ; $7f64: $93
	call z, Call_072_585c                            ; $7f65: $cc $5c $58
	ret c                                            ; $7f68: $d8

	ret c                                            ; $7f69: $d8

	sbc $fc                                          ; $7f6a: $de $fc
	rst SubAFromDE                                          ; $7f6c: $df
	and c                                            ; $7f6d: $a1
	sbc h                                            ; $7f6e: $9c
	and b                                            ; $7f6f: $a0
	jr nz, jr_072_7f92                               ; $7f70: $20 $20

	sbc $40                                          ; $7f72: $de $40
	rst SubAFromDE                                          ; $7f74: $df
	cp $db                                           ; $7f75: $fe $db
	rst $38                                          ; $7f77: $ff
	rst AddAOntoHL                                          ; $7f78: $ef
	sbc c                                            ; $7f79: $99
	ld a, h                                          ; $7f7a: $7c
	and e                                            ; $7f7b: $a3
	ld a, h                                          ; $7f7c: $7c
	di                                               ; $7f7d: $f3
	ld e, h                                          ; $7f7e: $5c
	rst SubAFromBC                                          ; $7f7f: $e7
	ld a, e                                          ; $7f80: $7b
	ld hl, sp+$7f                                    ; $7f81: $f8 $7f
	rlca                                             ; $7f83: $07
	add b                                            ; $7f84: $80
	rst AddAOntoHL                                          ; $7f85: $ef
	cp a                                             ; $7f86: $bf
	ld a, b                                          ; $7f87: $78

Call_072_7f88:
	ld h, $80                                        ; $7f88: $26 $80
	dec hl                                           ; $7f8a: $2b
	and b                                            ; $7f8b: $a0
	ld a, a                                          ; $7f8c: $7f
	rst $38                                          ; $7f8d: $ff
	ld a, a                                          ; $7f8e: $7f

Jump_072_7f8f:
	add b                                            ; $7f8f: $80
	pop bc                                           ; $7f90: $c1
	nop                                              ; $7f91: $00

jr_072_7f92:
	db $10                                           ; $7f92: $10
	ld a, a                                          ; $7f93: $7f
	rst $38                                          ; $7f94: $ff
	rst $38                                          ; $7f95: $ff
	add b                                            ; $7f96: $80
	nop                                              ; $7f97: $00
	jr jr_072_7f61                                   ; $7f98: $18 $c7

	rra                                              ; $7f9a: $1f
	rst FarCall                                          ; $7f9b: $f7
	add sp, -$41                                     ; $7f9c: $e8 $bf
	daa                                              ; $7f9e: $27
	ldh [rTAC], a                                    ; $7f9f: $e0 $07
	ccf                                              ; $7fa1: $3f
	rst $38                                          ; $7fa2: $ff
	ld hl, sp-$64                                    ; $7fa3: $f8 $9c
	ldh a, [$78]                                     ; $7fa5: $f0 $78
	rst SubAFromDE                                          ; $7fa7: $df
	dec sp                                           ; $7fa8: $3b
	ret nz                                           ; $7fa9: $c0

	ldh [$d3], a                                     ; $7faa: $e0 $d3
	ld a, [hl]                                       ; $7fac: $7e
	and e                                            ; $7fad: $a3
	rst SubAFromDE                                          ; $7fae: $df
	ld hl, sp-$72                                    ; $7faf: $f8 $8e
	ldh a, [$f1]                                     ; $7fb1: $f0 $f1
	ldh a, [c]                                       ; $7fb3: $f2
	push hl                                          ; $7fb4: $e5
	jr nc, @+$63                                     ; $7fb5: $30 $61

	ld h, a                                          ; $7fb7: $67
	ld b, a                                          ; $7fb8: $47
	rst GetHLinHL                                          ; $7fb9: $cf
	adc a                                            ; $7fba: $8f
	adc a                                            ; $7fbb: $8f
	sbc a                                            ; $7fbc: $9f
	ld [$f5f4], a                                    ; $7fbd: $ea $f4 $f5
	db $eb                                           ; $7fc0: $eb
	ld l, d                                          ; $7fc1: $6a
	sbc $2b                                          ; $7fc2: $de $2b
	rst SubAFromDE                                          ; $7fc4: $df
	sbc a                                            ; $7fc5: $9f
	sbc h                                            ; $7fc6: $9c
	sbc [hl]                                         ; $7fc7: $9e
	inc a                                            ; $7fc8: $3c
	cp h                                             ; $7fc9: $bc
	sbc $fc                                          ; $7fca: $de $fc
	xor $9a                                          ; $7fcc: $ee $9a
	ldh a, [rLCDC]                                   ; $7fce: $f0 $40
	rst $38                                          ; $7fd0: $ff
	rst SubAFromBC                                          ; $7fd1: $e7
	ld a, h                                          ; $7fd2: $7c
	ld [hl], a                                       ; $7fd3: $77
	ld hl, sp-$67                                    ; $7fd4: $f8 $99
	ret nz                                           ; $7fd6: $c0

	rst $38                                          ; $7fd7: $ff
	rra                                              ; $7fd8: $1f
	rst $38                                          ; $7fd9: $ff
	rlca                                             ; $7fda: $07
	ld [bc], a                                       ; $7fdb: $02
	ld a, e                                          ; $7fdc: $7b
	inc a                                            ; $7fdd: $3c
	adc h                                            ; $7fde: $8c
	rst AddAOntoHL                                          ; $7fdf: $ef
	call c, $ff1b                                    ; $7fe0: $dc $1b $ff
	ld bc, $ff00                                     ; $7fe3: $01 $00 $ff
	rst $38                                          ; $7fe6: $ff
	ldh a, [$3f]                                     ; $7fe7: $f0 $3f
	rlca                                             ; $7fe9: $07
	nop                                              ; $7fea: $00
	rst $38                                          ; $7feb: $ff
	pop af                                           ; $7fec: $f1
	ld l, e                                          ; $7fed: $6b
	inc [hl]                                         ; $7fee: $34
	adc c                                            ; $7fef: $89
	ld a, [hl]                                       ; $7ff0: $7e
	ldh a, [$de]                                     ; $7ff1: $f0 $de
	rst $38                                          ; $7ff3: $ff
	sbc e                                            ; $7ff4: $9b
	ldh a, [rAUD2LOW]                                ; $7ff5: $f0 $18
	ld b, $81                                        ; $7ff7: $06 $81
	inc bc                                           ; $7ff9: $03
	ld h, b                                          ; $7ffa: $60
	pop hl                                           ; $7ffb: $e1
	sub [hl]                                         ; $7ffc: $96
	ld d, h                                          ; $7ffd: $54
	ld d, a                                          ; $7ffe: $57
	ld d, a                                          ; $7fff: $57
