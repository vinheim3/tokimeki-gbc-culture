; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $055", ROMX[$4000], BANK[$55]

	sub [hl]                                         ; $4000: $96
	add $00                                          ; $4001: $c6 $00
	pop hl                                           ; $4003: $e1
	ld a, a                                          ; $4004: $7f
	add b                                            ; $4005: $80
	cp a                                             ; $4006: $bf
	ret nz                                           ; $4007: $c0

	nop                                              ; $4008: $00
	rst SubAFromDE                                          ; $4009: $df
	ld a, e                                          ; $400a: $7b
	ld h, e                                          ; $400b: $63
	ld [hl], a                                       ; $400c: $77
	call nz, $2080                                   ; $400d: $c4 $80 $20
	ld [bc], a                                       ; $4010: $02
	add c                                            ; $4011: $81
	ret nz                                           ; $4012: $c0

	ld b, b                                          ; $4013: $40
	ld hl, sp+$16                                    ; $4014: $f8 $16
	ld e, $bf                                        ; $4016: $1e $bf
	db $fc                                           ; $4018: $fc
	ld a, [hl]                                       ; $4019: $7e
	ccf                                              ; $401a: $3f
	rst $38                                          ; $401b: $ff
	ccf                                              ; $401c: $3f
	dec hl                                           ; $401d: $2b
	cpl                                              ; $401e: $2f
	ld a, a                                          ; $401f: $7f
	xor $6f                                          ; $4020: $ee $6f
	xor a                                            ; $4022: $af
	ld e, a                                          ; $4023: $5f
	daa                                              ; $4024: $27
	rla                                              ; $4025: $17
	ld bc, $3300                                     ; $4026: $01 $00 $33
	ld [hl-], a                                      ; $4029: $32
	ld [de], a                                       ; $402a: $12
	add d                                            ; $402b: $82
	jp z, $8de8                                      ; $402c: $ca $e8 $8d

	or $fb                                           ; $402f: $f6 $fb
	cp $33                                           ; $4031: $fe $33
	ld a, c                                          ; $4033: $79
	ld a, b                                          ; $4034: $78
	ld a, [hl]                                       ; $4035: $7e
	dec [hl]                                         ; $4036: $35
	or c                                             ; $4037: $b1
	ld b, b                                          ; $4038: $40
	rst GetHLinHL                                          ; $4039: $cf
	db $fc                                           ; $403a: $fc
	sbc [hl]                                         ; $403b: $9e
	sbc a                                            ; $403c: $9f
	cp c                                             ; $403d: $b9
	ld hl, sp+$7e                                    ; $403e: $f8 $7e
	cp a                                             ; $4040: $bf
	ld a, e                                          ; $4041: $7b
	ld e, l                                          ; $4042: $5d
	sbc c                                            ; $4043: $99
	ld b, $9b                                        ; $4044: $06 $9b
	xor $fc                                          ; $4046: $ee $fc
	ret c                                            ; $4048: $d8

	add b                                            ; $4049: $80
	ld a, b                                          ; $404a: $78
	jp z, $9c8e                                      ; $404b: $ca $8e $9c

	ld [hl], b                                       ; $404e: $70
	jr nc, jr_055_4089                               ; $404f: $30 $38

	rlca                                             ; $4051: $07
	ld a, e                                          ; $4052: $7b
	cp h                                             ; $4053: $bc
	ret z                                            ; $4054: $c8

	ld de, $df67                                     ; $4055: $11 $67 $df
	rst $38                                          ; $4058: $ff
	rlca                                             ; $4059: $07
	ld a, h                                          ; $405a: $7c
	jp $0e07                                         ; $405b: $c3 $07 $0e


	ld a, c                                          ; $405e: $79
	jp hl                                            ; $405f: $e9


	sub a                                            ; $4060: $97
	ld [hl+], a                                      ; $4061: $22
	inc [hl]                                         ; $4062: $34
	rra                                              ; $4063: $1f
	ld e, a                                          ; $4064: $5f
	rst SubAFromDE                                          ; $4065: $df
	or a                                             ; $4066: $b7
	ld b, a                                          ; $4067: $47
	adc [hl]                                         ; $4068: $8e
	ld a, e                                          ; $4069: $7b
	ld [hl], e                                       ; $406a: $73
	sub a                                            ; $406b: $97
	cp a                                             ; $406c: $bf
	inc a                                            ; $406d: $3c

jr_055_406e:
	ld h, b                                          ; $406e: $60
	ret nz                                           ; $406f: $c0

	add b                                            ; $4070: $80
	rlca                                             ; $4071: $07
	ld a, d                                          ; $4072: $7a
	ld a, [$3f72]                                    ; $4073: $fa $72 $3f
	sbc h                                            ; $4076: $9c
	rlca                                             ; $4077: $07
	ld e, $fe                                        ; $4078: $1e $fe
	ld [hl], d                                       ; $407a: $72
	adc $7b                                          ; $407b: $ce $7b
	ei                                               ; $407d: $fb
	ld h, [hl]                                       ; $407e: $66
	dec l                                            ; $407f: $2d
	ld [hl], e                                       ; $4080: $73
	ldh a, [$9a]                                     ; $4081: $f0 $9a
	rst SubAFromBC                                          ; $4083: $e7

jr_055_4084:
	ld [hl], e                                       ; $4084: $73
	add hl, sp                                       ; $4085: $39
	jr c, jr_055_4084                                ; $4086: $38 $fc

	ld a, d                                          ; $4088: $7a

jr_055_4089:
	inc l                                            ; $4089: $2c
	sub a                                            ; $408a: $97
	add b                                            ; $408b: $80
	ld b, b                                          ; $408c: $40
	jr nz, jr_055_40bf                               ; $408d: $20 $30

	ld hl, sp+$1c                                    ; $408f: $f8 $1c
	rlca                                             ; $4091: $07
	ld bc, $8479                                     ; $4092: $01 $79 $84
	ld a, a                                          ; $4095: $7f
	ld a, b                                          ; $4096: $78
	ld a, l                                          ; $4097: $7d
	ld [hl], b                                       ; $4098: $70
	sbc h                                            ; $4099: $9c
	rst JumpTable                                          ; $409a: $c7
	inc c                                            ; $409b: $0c
	ld b, $72                                        ; $409c: $06 $72
	or d                                             ; $409e: $b2
	ld a, a                                          ; $409f: $7f
	add hl, hl                                       ; $40a0: $29
	ld a, a                                          ; $40a1: $7f
	sub a                                            ; $40a2: $97
	sbc [hl]                                         ; $40a3: $9e
	add b                                            ; $40a4: $80
	ld [hl], a                                       ; $40a5: $77
	jr z, jr_055_4121                                ; $40a6: $28 $79

	adc e                                            ; $40a8: $8b
	ld a, [hl]                                       ; $40a9: $7e
	sbc d                                            ; $40aa: $9a

jr_055_40ab:
	ld a, a                                          ; $40ab: $7f
	add sp, -$77                                     ; $40ac: $e8 $89
	rlca                                             ; $40ae: $07
	ldh a, [c]                                       ; $40af: $f2
	ld [$f026], sp                                   ; $40b0: $08 $26 $f0
	nop                                              ; $40b3: $00
	ld bc, $6f0d                                     ; $40b4: $01 $0d $6f
	inc c                                            ; $40b7: $0c
	ldh a, [$c1]                                     ; $40b8: $f0 $c1
	rrca                                             ; $40ba: $0f
	rst $38                                          ; $40bb: $ff
	cp $f3                                           ; $40bc: $fe $f3
	sbc a                                            ; $40be: $9f

jr_055_40bf:
	jr c, @-$3d                                      ; $40bf: $38 $c1

	ld b, $18                                        ; $40c1: $06 $18
	ld l, a                                          ; $40c3: $6f
	sbc $ff                                          ; $40c4: $de $ff
	sbc d                                            ; $40c6: $9a
	rlca                                             ; $40c7: $07
	ld a, $f9                                        ; $40c8: $3e $f9
	rst SubAFromBC                                          ; $40ca: $e7
	sbc a                                            ; $40cb: $9f
	ld a, e                                          ; $40cc: $7b
	db $db                                           ; $40cd: $db
	ld a, a                                          ; $40ce: $7f
	sub a                                            ; $40cf: $97
	ld a, a                                          ; $40d0: $7f
	jr c, jr_055_406e                                ; $40d1: $38 $9b

	ld a, [$f4f4]                                    ; $40d3: $fa $f4 $f4
	inc a                                            ; $40d6: $3c
	jp c, $9eff                                      ; $40d7: $da $ff $9e

	rst AddAOntoHL                                          ; $40da: $ef
	ld a, c                                          ; $40db: $79
	ld h, e                                          ; $40dc: $63
	sbc l                                            ; $40dd: $9d
	ldh [rAUD2LOW], a                                ; $40de: $e0 $18
	ld a, e                                          ; $40e0: $7b
	or h                                             ; $40e1: $b4
	reti                                             ; $40e2: $d9


	rst $38                                          ; $40e3: $ff
	sbc [hl]                                         ; $40e4: $9e
	add e                                            ; $40e5: $83
	ld l, a                                          ; $40e6: $6f
	xor c                                            ; $40e7: $a9
	sbc [hl]                                         ; $40e8: $9e
	ld b, b                                          ; $40e9: $40
	reti                                             ; $40ea: $d9


	rst $38                                          ; $40eb: $ff
	sbc e                                            ; $40ec: $9b
	ld [bc], a                                       ; $40ed: $02
	ld bc, $8000                                     ; $40ee: $01 $00 $80
	halt                                             ; $40f1: $76
	call nz, Call_055_7c7b                           ; $40f2: $c4 $7b $7c
	rst SubAFromDE                                          ; $40f5: $df
	ld a, a                                          ; $40f6: $7f
	rst SubAFromDE                                          ; $40f7: $df
	ccf                                              ; $40f8: $3f
	sbc d                                            ; $40f9: $9a
	rra                                              ; $40fa: $1f
	dec d                                            ; $40fb: $15
	ld a, [hl+]                                      ; $40fc: $2a
	sub l                                            ; $40fd: $95
	adc [hl]                                         ; $40fe: $8e
	halt                                             ; $40ff: $76
	xor h                                            ; $4100: $ac
	sbc h                                            ; $4101: $9c
	dec sp                                           ; $4102: $3b
	dec e                                            ; $4103: $1d
	ld c, $7b                                        ; $4104: $0e $7b
	add e                                            ; $4106: $83
	ld a, a                                          ; $4107: $7f
	add sp, $7d                                      ; $4108: $e8 $7d
	cp b                                             ; $410a: $b8
	sbc l                                            ; $410b: $9d
	sbc a                                            ; $410c: $9f
	ld [hl], b                                       ; $410d: $70
	db $fd                                           ; $410e: $fd
	sbc e                                            ; $410f: $9b
	rst GetHLinHL                                          ; $4110: $cf
	rst $38                                          ; $4111: $ff
	ld a, a                                          ; $4112: $7f
	rrca                                             ; $4113: $0f
	ld [hl], b                                       ; $4114: $70
	jr nc, jr_055_40ab                               ; $4115: $30 $94

	ccf                                              ; $4117: $3f
	ldh [$0c], a                                     ; $4118: $e0 $0c
	nop                                              ; $411a: $00
	ld bc, $8418                                     ; $411b: $01 $18 $84
	pop hl                                           ; $411e: $e1
	rst $38                                          ; $411f: $ff
	rst $38                                          ; $4120: $ff

jr_055_4121:
	pop af                                           ; $4121: $f1
	ld a, c                                          ; $4122: $79
	dec c                                            ; $4123: $0d
	sub a                                            ; $4124: $97
	ld a, b                                          ; $4125: $78
	ld b, l                                          ; $4126: $45
	adc h                                            ; $4127: $8c
	inc b                                            ; $4128: $04
	ld [bc], a                                       ; $4129: $02
	inc bc                                           ; $412a: $03
	dec c                                            ; $412b: $0d
	ret nz                                           ; $412c: $c0

	ld [hl], e                                       ; $412d: $73
	and b                                            ; $412e: $a0
	sbc l                                            ; $412f: $9d
	ld a, l                                          ; $4130: $7d
	di                                               ; $4131: $f3
	ld [hl], a                                       ; $4132: $77
	or e                                             ; $4133: $b3
	sub a                                            ; $4134: $97
	pop bc                                           ; $4135: $c1
	ld b, b                                          ; $4136: $40
	jr nz, @-$5e                                     ; $4137: $20 $a0

	cp b                                             ; $4139: $b8
	ld hl, sp-$03                                    ; $413a: $f8 $fd
	cp $75                                           ; $413c: $fe $75
	ld d, a                                          ; $413e: $57
	ld a, c                                          ; $413f: $79
	add $80                                          ; $4140: $c6 $80
	ld [$8b0b], sp                                   ; $4142: $08 $0b $8b
	ld c, e                                          ; $4145: $4b
	inc hl                                           ; $4146: $23
	ld [de], a                                       ; $4147: $12
	add hl, bc                                       ; $4148: $09
	rrca                                             ; $4149: $0f
	rst FarCall                                          ; $414a: $f7
	ld [hl], h                                       ; $414b: $74
	inc [hl]                                         ; $414c: $34
	sub h                                            ; $414d: $94
	call z, $f2e5                                    ; $414e: $cc $e5 $f2
	call Call_055_4b87                               ; $4151: $cd $87 $4b
	sub l                                            ; $4154: $95
	adc b                                            ; $4155: $88
	db $10                                           ; $4156: $10
	and b                                            ; $4157: $a0
	nop                                              ; $4158: $00
	inc a                                            ; $4159: $3c
	ld a, [hl]                                       ; $415a: $7e
	inc sp                                           ; $415b: $33
	inc hl                                           ; $415c: $23
	ld b, a                                          ; $415d: $47
	add a                                            ; $415e: $87
	inc bc                                           ; $415f: $03
	ld b, c                                          ; $4160: $41
	ld [hl], l                                       ; $4161: $75
	ld [hl-], a                                      ; $4162: $32
	sbc e                                            ; $4163: $9b
	db $fd                                           ; $4164: $fd
	ld a, d                                          ; $4165: $7a
	inc [hl]                                         ; $4166: $34
	inc e                                            ; $4167: $1c
	cp $94                                           ; $4168: $fe $94
	add c                                            ; $416a: $81
	jp $fce6                                         ; $416b: $c3 $e6 $fc


	ld hl, sp-$10                                    ; $416e: $f8 $f0
	ld a, a                                          ; $4170: $7f
	ld b, b                                          ; $4171: $40
	add b                                            ; $4172: $80
	nop                                              ; $4173: $00
	ccf                                              ; $4174: $3f
	ld a, c                                          ; $4175: $79
	ld h, [hl]                                       ; $4176: $66
	sbc [hl]                                         ; $4177: $9e
	rst $38                                          ; $4178: $ff
	ld a, e                                          ; $4179: $7b
	ld b, $7b                                        ; $417a: $06 $7b
	ld hl, sp+$7f                                    ; $417c: $f8 $7f
	and a                                            ; $417e: $a7
	sbc $20                                          ; $417f: $de $20
	ld a, e                                          ; $4181: $7b
	dec b                                            ; $4182: $05
	ld l, a                                          ; $4183: $6f
	ld hl, sp+$7f                                    ; $4184: $f8 $7f
	and c                                            ; $4186: $a1
	sbc d                                            ; $4187: $9a
	inc bc                                           ; $4188: $03
	ldh [$3e], a                                     ; $4189: $e0 $3e
	inc bc                                           ; $418b: $03
	ld bc, $c176                                     ; $418c: $01 $76 $c1
	sub h                                            ; $418f: $94
	ret nz                                           ; $4190: $c0

	inc a                                            ; $4191: $3c
	inc bc                                           ; $4192: $03
	ld bc, $3fe0                                     ; $4193: $01 $e0 $3f
	nop                                              ; $4196: $00
	rst $38                                          ; $4197: $ff
	ccf                                              ; $4198: $3f
	rrca                                             ; $4199: $0f
	ld bc, $4277                                     ; $419a: $01 $77 $42
	ld [hl], e                                       ; $419d: $73
	ld a, [hl+]                                      ; $419e: $2a
	sbc d                                            ; $419f: $9a
	ld h, b                                          ; $41a0: $60
	ld hl, sp+$7c                                    ; $41a1: $f8 $7c
	db $e3                                           ; $41a3: $e3
	ld sp, hl                                        ; $41a4: $f9
	ld a, e                                          ; $41a5: $7b
	adc b                                            ; $41a6: $88
	ld a, a                                          ; $41a7: $7f
	db $ec                                           ; $41a8: $ec
	sbc e                                            ; $41a9: $9b
	rlca                                             ; $41aa: $07
	ld h, b                                          ; $41ab: $60
	jr nc, jr_055_41b6                               ; $41ac: $30 $08

	ld [hl], d                                       ; $41ae: $72
	cp [hl]                                          ; $41af: $be
	ld a, e                                          ; $41b0: $7b
	ldh a, [c]                                       ; $41b1: $f2
	halt                                             ; $41b2: $76
	push bc                                          ; $41b3: $c5
	sbc l                                            ; $41b4: $9d
	rst $38                                          ; $41b5: $ff

jr_055_41b6:
	inc bc                                           ; $41b6: $03
	sbc $01                                          ; $41b7: $de $01
	sbc d                                            ; $41b9: $9a
	add c                                            ; $41ba: $81
	ld b, c                                          ; $41bb: $41
	ld hl, $7011                                     ; $41bc: $21 $11 $70
	ld a, e                                          ; $41bf: $7b
	xor [hl]                                         ; $41c0: $ae
	jp c, $faff                                      ; $41c1: $da $ff $fa

	ld a, [hl]                                       ; $41c4: $7e
	and h                                            ; $41c5: $a4
	sbc e                                            ; $41c6: $9b
	db $fd                                           ; $41c7: $fd
	ei                                               ; $41c8: $fb
	or $ef                                           ; $41c9: $f6 $ef
	ld a, d                                          ; $41cb: $7a
	cp [hl]                                          ; $41cc: $be
	sub l                                            ; $41cd: $95
	inc bc                                           ; $41ce: $03
	ld [bc], a                                       ; $41cf: $02
	dec b                                            ; $41d0: $05
	dec bc                                           ; $41d1: $0b
	inc d                                            ; $41d2: $14
	jr z, jr_055_4205                                ; $41d3: $28 $30

	ld h, c                                          ; $41d5: $61
	rst JumpTable                                          ; $41d6: $c7
	cp a                                             ; $41d7: $bf
	ld a, e                                          ; $41d8: $7b
	adc $df                                          ; $41d9: $ce $df
	rst SubAFromDE                                          ; $41db: $df
	sbc l                                            ; $41dc: $9d
	cp [hl]                                          ; $41dd: $be
	ld a, b                                          ; $41de: $78
	ld a, e                                          ; $41df: $7b
	ld a, [hl]                                       ; $41e0: $7e
	ld [hl], d                                       ; $41e1: $72
	ld a, l                                          ; $41e2: $7d
	ld a, a                                          ; $41e3: $7f
	and b                                            ; $41e4: $a0
	sbc [hl]                                         ; $41e5: $9e
	pop af                                           ; $41e6: $f1
	halt                                             ; $41e7: $76
	add d                                            ; $41e8: $82
	ld a, d                                          ; $41e9: $7a
	ldh [c], a                                       ; $41ea: $e2
	ld a, [hl]                                       ; $41eb: $7e
	db $ec                                           ; $41ec: $ec
	ld a, [hl]                                       ; $41ed: $7e
	and $79                                          ; $41ee: $e6 $79
	sub e                                            ; $41f0: $93
	ld a, a                                          ; $41f1: $7f
	add a                                            ; $41f2: $87
	sbc [hl]                                         ; $41f3: $9e
	ldh a, [$db]                                     ; $41f4: $f0 $db
	rst $38                                          ; $41f6: $ff
	ld a, [hl]                                       ; $41f7: $7e
	ld l, a                                          ; $41f8: $6f
	ld h, d                                          ; $41f9: $62
	nop                                              ; $41fa: $00
	sbc l                                            ; $41fb: $9d
	ld b, d                                          ; $41fc: $42
	dec h                                            ; $41fd: $25
	sbc $55                                          ; $41fe: $de $55
	sbc b                                            ; $4200: $98
	ld d, d                                          ; $4201: $52
	ld [hl+], a                                      ; $4202: $22

jr_055_4203:
	ld [hl+], a                                      ; $4203: $22
	inc sp                                           ; $4204: $33

jr_055_4205:
	inc sp                                           ; $4205: $33
	ld b, h                                          ; $4206: $44
	ld b, l                                          ; $4207: $45
	ld h, e                                          ; $4208: $63
	or $df                                           ; $4209: $f6 $df
	inc sp                                           ; $420b: $33
	ld a, a                                          ; $420c: $7f
	ld [$529d], a                                    ; $420d: $ea $9d $52
	ld [hl-], a                                      ; $4210: $32
	ld l, a                                          ; $4211: $6f
	or $9c                                           ; $4212: $f6 $9c
	ld [hl], a                                       ; $4214: $77
	ld [hl], l                                       ; $4215: $75
	ld d, e                                          ; $4216: $53
	db $dd                                           ; $4217: $dd
	inc sp                                           ; $4218: $33
	sbc l                                            ; $4219: $9d
	ld b, h                                          ; $421a: $44
	ld b, e                                          ; $421b: $43
	ld [hl], a                                       ; $421c: $77
	or $9e                                           ; $421d: $f6 $9e
	ld [hl], e                                       ; $421f: $73
	ld [hl], a                                       ; $4220: $77
	or $99                                           ; $4221: $f6 $99
	ld b, h                                          ; $4223: $44
	scf                                              ; $4224: $37
	ld [hl], a                                       ; $4225: $77
	ld [hl], l                                       ; $4226: $75
	ld d, a                                          ; $4227: $57
	ld [hl], a                                       ; $4228: $77
	ld [hl], a                                       ; $4229: $77
	or $99                                           ; $422a: $f6 $99
	ld b, l                                          ; $422c: $45
	daa                                              ; $422d: $27
	ld [hl], a                                       ; $422e: $77
	ld d, l                                          ; $422f: $55
	ld d, e                                          ; $4230: $53
	scf                                              ; $4231: $37
	ld a, e                                          ; $4232: $7b
	push af                                          ; $4233: $f5
	rst SubAFromDE                                          ; $4234: $df
	ld b, h                                          ; $4235: $44
	sbc e                                            ; $4236: $9b
	ld d, d                                          ; $4237: $52
	dec h                                            ; $4238: $25
	ld d, [hl]                                       ; $4239: $56
	ld h, e                                          ; $423a: $63
	sbc $33                                          ; $423b: $de $33
	sbc l                                            ; $423d: $9d
	ld [hl+], a                                      ; $423e: $22
	ld b, h                                          ; $423f: $44
	ld a, e                                          ; $4240: $7b
	cp c                                             ; $4241: $b9
	sbc h                                            ; $4242: $9c

jr_055_4243:
	ld h, $63                                        ; $4243: $26 $63
	inc sp                                           ; $4245: $33
	sbc $22                                          ; $4246: $de $22
	sbc $44                                          ; $4248: $de $44
	sbc b                                            ; $424a: $98
	ld d, h                                          ; $424b: $54
	ld h, [hl]                                       ; $424c: $66
	ld h, e                                          ; $424d: $63
	inc sp                                           ; $424e: $33
	ld [hl-], a                                      ; $424f: $32
	dec h                                            ; $4250: $25
	ld d, l                                          ; $4251: $55
	db $dd                                           ; $4252: $dd
	ld b, h                                          ; $4253: $44
	sbc c                                            ; $4254: $99
	ld h, [hl]                                       ; $4255: $66
	inc sp                                           ; $4256: $33
	inc sp                                           ; $4257: $33
	dec [hl]                                         ; $4258: $35
	ld d, l                                          ; $4259: $55
	ld d, l                                          ; $425a: $55
	dec a                                            ; $425b: $3d
	adc e                                            ; $425c: $8b
	ld sp, hl                                        ; $425d: $f9
	reti                                             ; $425e: $d9


	rst $38                                          ; $425f: $ff
	ccf                                              ; $4260: $3f
	ldh a, [$80]                                     ; $4261: $f0 $80
	ld hl, $0810                                     ; $4263: $21 $10 $08
	ld b, $13                                        ; $4266: $06 $13
	add hl, bc                                       ; $4268: $09
	rst $38                                          ; $4269: $ff
	rst $38                                          ; $426a: $ff
	sbc $ef                                          ; $426b: $de $ef
	rst FarCall                                          ; $426d: $f7
	ld sp, hl                                        ; $426e: $f9
	db $ec                                           ; $426f: $ec
	or $14                                           ; $4270: $f6 $14
	nop                                              ; $4272: $00
	ld [$a4c4], sp                                   ; $4273: $08 $c4 $a4
	ld a, [bc]                                       ; $4276: $0a
	ld b, d                                          ; $4277: $42
	and b                                            ; $4278: $a0
	db $e3                                           ; $4279: $e3
	pop af                                           ; $427a: $f1
	ldh a, [$38]                                     ; $427b: $f0 $38
	jr jr_055_4203                                   ; $427d: $18 $84

	add b                                            ; $427f: $80
	ld b, b                                          ; $4280: $40
	or d                                             ; $4281: $b2
	add b                                            ; $4282: $80
	db $10                                           ; $4283: $10
	ld b, b                                          ; $4284: $40

jr_055_4285:
	ld b, c                                          ; $4285: $41
	inc bc                                           ; $4286: $03
	rlca                                             ; $4287: $07
	ld c, $1d                                        ; $4288: $0e $1d
	nop                                              ; $428a: $00
	add b                                            ; $428b: $80
	add b                                            ; $428c: $80
	ld bc, $0402                                     ; $428d: $01 $02 $04
	add hl, bc                                       ; $4290: $09
	inc de                                           ; $4291: $13
	inc c                                            ; $4292: $0c
	ld [hl-], a                                      ; $4293: $32
	ld c, l                                          ; $4294: $4d
	ld a, [$79d4]                                    ; $4295: $fa $d4 $79
	jp nc, $0fb1                                     ; $4298: $d2 $b1 $0f

	dec a                                            ; $429b: $3d
	ld [hl], d                                       ; $429c: $72
	add h                                            ; $429d: $84
	add hl, hl                                       ; $429e: $29
	jp nc, $e4b4                                     ; $429f: $d2 $b4 $e4

	add b                                            ; $42a2: $80
	ld b, $09                                        ; $42a3: $06 $09
	or e                                             ; $42a5: $b3
	ld h, l                                          ; $42a6: $65
	sbc e                                            ; $42a7: $9b
	ld [hl], $a4                                     ; $42a8: $36 $a4
	ld c, h                                          ; $42aa: $4c
	ld sp, hl                                        ; $42ab: $f9
	or $4c                                           ; $42ac: $f6 $4c
	sbc b                                            ; $42ae: $98
	jr nz, jr_055_42f2                               ; $42af: $20 $41

	ld b, e                                          ; $42b1: $43
	add d                                            ; $42b2: $82
	halt                                             ; $42b3: $76
	db $ed                                           ; $42b4: $ed
	jp c, Jump_055_49b4                              ; $42b5: $da $b4 $49

	inc de                                           ; $42b8: $13
	ld b, d                                          ; $42b9: $42
	dec h                                            ; $42ba: $25
	adc c                                            ; $42bb: $89
	ld [de], a                                       ; $42bc: $12
	inc h                                            ; $42bd: $24
	ld c, b                                          ; $42be: $48
	sub b                                            ; $42bf: $90
	and b                                            ; $42c0: $a0
	jr nz, jr_055_4243                               ; $42c1: $20 $80

	ld b, b                                          ; $42c3: $40
	ccf                                              ; $42c4: $3f
	ld a, a                                          ; $42c5: $7f
	rst $38                                          ; $42c6: $ff
	cp $f8                                           ; $42c7: $fe $f8
	and $c8                                          ; $42c9: $e6 $c8
	sub c                                            ; $42cb: $91
	add b                                            ; $42cc: $80
	nop                                              ; $42cd: $00
	nop                                              ; $42ce: $00
	ld bc, $1c07                                     ; $42cf: $01 $07 $1c
	inc a                                            ; $42d2: $3c
	ld a, b                                          ; $42d3: $78
	ld hl, sp-$04                                    ; $42d4: $f8 $fc
	call z, Call_055_7418                            ; $42d6: $cc $18 $74
	cp $e7                                           ; $42d9: $fe $e7
	add e                                            ; $42db: $83
	rlca                                             ; $42dc: $07
	inc bc                                           ; $42dd: $03
	inc sp                                           ; $42de: $33
	rst $38                                          ; $42df: $ff
	adc a                                            ; $42e0: $8f
	inc bc                                           ; $42e1: $03
	sub h                                            ; $42e2: $94
	add hl, de                                       ; $42e3: $19
	ld a, l                                          ; $42e4: $7d
	cp $ff                                           ; $42e5: $fe $ff
	ld a, a                                          ; $42e7: $7f
	ld a, a                                          ; $42e8: $7f
	ld c, a                                          ; $42e9: $4f
	db $10                                           ; $42ea: $10
	inc l                                            ; $42eb: $2c
	ld [hl], e                                       ; $42ec: $73
	ld bc, $9f7b                                     ; $42ed: $01 $7b $9f
	add b                                            ; $42f0: $80
	cp a                                             ; $42f1: $bf

jr_055_42f2:
	rst $38                                          ; $42f2: $ff
	di                                               ; $42f3: $f3
	ret nz                                           ; $42f4: $c0

	ld a, b                                          ; $42f5: $78
	ld d, $89                                        ; $42f6: $16 $89
	call nz, $d0a2                                   ; $42f8: $c4 $a2 $d0
	ld l, b                                          ; $42fb: $68
	jr z, jr_055_4285                                ; $42fc: $28 $87

	pop hl                                           ; $42fe: $e1
	ld [hl], b                                       ; $42ff: $70
	jr c, jr_055_431e                                ; $4300: $38 $1c

	adc [hl]                                         ; $4302: $8e
	rst JumpTable                                          ; $4303: $c7
	rst SubAFromBC                                          ; $4304: $e7
	jp c, $376d                                      ; $4305: $da $6d $37

	sbc d                                            ; $4308: $9a
	add hl, bc                                       ; $4309: $09
	ld c, l                                          ; $430a: $4d
	inc b                                            ; $430b: $04
	and [hl]                                         ; $430c: $a6
	ld h, $93                                        ; $430d: $26 $93
	ret                                              ; $430f: $c9


	sbc d                                            ; $4310: $9a
	ld h, l                                          ; $4311: $65
	halt                                             ; $4312: $76
	ld [hl-], a                                      ; $4313: $32
	dec sp                                           ; $4314: $3b
	add hl, de                                       ; $4315: $19
	cp $9a                                           ; $4316: $fe $9a
	add b                                            ; $4318: $80
	add c                                            ; $4319: $81
	ld b, a                                          ; $431a: $47
	ld c, a                                          ; $431b: $4f
	ccf                                              ; $431c: $3f
	ld [hl], e                                       ; $431d: $73

jr_055_431e:
	ld hl, sp-$64                                    ; $431e: $f8 $9c
	add $c8                                          ; $4320: $c6 $c8
	pop af                                           ; $4322: $f1
	cp $9a                                           ; $4323: $fe $9a
	ld a, h                                          ; $4325: $7c
	cp e                                             ; $4326: $bb
	rst $38                                          ; $4327: $ff
	db $fd                                           ; $4328: $fd
	adc $77                                          ; $4329: $ce $77
	ld hl, sp-$64                                    ; $432b: $f8 $9c
	rst JumpTable                                          ; $432d: $c7
	nop                                              ; $432e: $00
	ld a, [hl]                                       ; $432f: $7e
	ld [hl], e                                       ; $4330: $73
	jr nz, jr_055_43b2                               ; $4331: $20 $7f

	ld c, d                                          ; $4333: $4a
	sbc l                                            ; $4334: $9d
	and b                                            ; $4335: $a0
	ret nc                                           ; $4336: $d0

	ld [hl], e                                       ; $4337: $73
	ld hl, sp-$80                                    ; $4338: $f8 $80
	ret nz                                           ; $433a: $c0

	ld h, b                                          ; $433b: $60
	jr nc, jr_055_4360                               ; $433c: $30 $22

	ld c, h                                          ; $433e: $4c
	db $10                                           ; $433f: $10
	ld c, b                                          ; $4340: $48
	ld [bc], a                                       ; $4341: $02
	ld [$0301], sp                                   ; $4342: $08 $01 $03
	dec e                                            ; $4345: $1d
	inc sp                                           ; $4346: $33
	ld h, a                                          ; $4347: $67
	add a                                            ; $4348: $87
	inc c                                            ; $4349: $0c
	stop                                             ; $434a: $10 $00
	nop                                              ; $434c: $00
	inc b                                            ; $434d: $04
	jr jr_055_4380                                   ; $434e: $18 $30

	and b                                            ; $4350: $a0
	ld b, e                                          ; $4351: $43
	adc d                                            ; $4352: $8a
	inc h                                            ; $4353: $24
	adc d                                            ; $4354: $8a
	ei                                               ; $4355: $fb
	rst SubAFromBC                                          ; $4356: $e7
	rst GetHLinHL                                          ; $4357: $cf
	rra                                              ; $4358: $1f

jr_055_4359:
	adc h                                            ; $4359: $8c
	inc a                                            ; $435a: $3c
	ld [hl], c                                       ; $435b: $71
	jp $0004                                         ; $435c: $c3 $04 $00


	nop                                              ; $435f: $00

jr_055_4360:
	ld [bc], a                                       ; $4360: $02
	add h                                            ; $4361: $84
	jr jr_055_4374                                   ; $4362: $18 $10

	add c                                            ; $4364: $81
	ld h, $ff                                        ; $4365: $26 $ff
	rst $38                                          ; $4367: $ff
	db $fd                                           ; $4368: $fd
	ld a, e                                          ; $4369: $7b
	rst SubAFromBC                                          ; $436a: $e7
	rst GetHLinHL                                          ; $436b: $cf
	ld e, $77                                        ; $436c: $1e $77
	and b                                            ; $436e: $a0
	ld a, e                                          ; $436f: $7b
	rst JumpTable                                          ; $4370: $c7
	sbc l                                            ; $4371: $9d
	nop                                              ; $4372: $00
	db $10                                           ; $4373: $10

jr_055_4374:
	call c, Call_055_7fff                            ; $4374: $dc $ff $7f
	ld b, h                                          ; $4377: $44
	sbc [hl]                                         ; $4378: $9e
	rst AddAOntoHL                                          ; $4379: $ef
	ld b, d                                          ; $437a: $42
	ret nc                                           ; $437b: $d0

	add e                                            ; $437c: $83
	ld b, c                                          ; $437d: $41

Jump_055_437e:
	jr nc, jr_055_438c                               ; $437e: $30 $0c

jr_055_4380:
	rlca                                             ; $4380: $07
	ld [bc], a                                       ; $4381: $02
	ld de, $ff0c                                     ; $4382: $11 $0c $ff
	cp [hl]                                          ; $4385: $be
	rst GetHLinHL                                          ; $4386: $cf
	di                                               ; $4387: $f3
	ld hl, sp-$04                                    ; $4388: $f8 $fc
	xor $f3                                          ; $438a: $ee $f3

jr_055_438c:
	ld b, [hl]                                       ; $438c: $46
	jr nc, jr_055_4359                               ; $438d: $30 $ca

	ld b, c                                          ; $438f: $41
	ld hl, $0070                                     ; $4390: $21 $70 $00
	add b                                            ; $4393: $80
	cp c                                             ; $4394: $b9
	call z, $8224                                    ; $4395: $cc $24 $82
	ret nz                                           ; $4398: $c0

	cp $9e                                           ; $4399: $fe $9e
	jr nz, jr_055_4418                               ; $439b: $20 $7b

	rla                                              ; $439d: $17
	ld a, a                                          ; $439e: $7f
	ld d, $df                                        ; $439f: $16 $df
	ld bc, $defc                                     ; $43a1: $01 $fc $de
	ld bc, $3780                                     ; $43a4: $01 $80 $37
	ld l, c                                          ; $43a7: $69
	ld d, d                                          ; $43a8: $52
	and d                                            ; $43a9: $a2
	jp nz, $0585                                     ; $43aa: $c2 $85 $05

	rlca                                             ; $43ad: $07
	cpl                                              ; $43ae: $2f
	ld e, c                                          ; $43af: $59
	ld [hl], e                                       ; $43b0: $73
	db $e3                                           ; $43b1: $e3

jr_055_43b2:
	jp $0787                                         ; $43b2: $c3 $87 $07


	rlca                                             ; $43b5: $07
	ld b, b                                          ; $43b6: $40
	ld l, d                                          ; $43b7: $6a
	xor b                                            ; $43b8: $a8
	and l                                            ; $43b9: $a5
	add c                                            ; $43ba: $81
	ld b, b                                          ; $43bb: $40
	ld l, b                                          ; $43bc: $68
	jr z, @-$1d                                      ; $43bd: $28 $e1

	pop bc                                           ; $43bf: $c1
	db $d3                                           ; $43c0: $d3
	jp nc, $b6f6                                     ; $43c1: $d2 $f6 $b6

	or [hl]                                          ; $43c4: $b6
	add b                                            ; $43c5: $80
	or $8a                                           ; $43c6: $f6 $8a
	sub c                                            ; $43c8: $91
	jr nc, @+$28                                     ; $43c9: $30 $26

	ld [hl+], a                                      ; $43cb: $22
	ld h, b                                          ; $43cc: $60
	ld d, h                                          ; $43cd: $54
	ld d, [hl]                                       ; $43ce: $56
	inc b                                            ; $43cf: $04
	inc c                                            ; $43d0: $0c
	dec c                                            ; $43d1: $0d
	add hl, de                                       ; $43d2: $19
	add hl, de                                       ; $43d3: $19
	dec de                                           ; $43d4: $1b
	dec sp                                           ; $43d5: $3b
	dec sp                                           ; $43d6: $3b
	add e                                            ; $43d7: $83
	ld b, e                                          ; $43d8: $43
	ld b, $84                                        ; $43d9: $06 $84
	inc l                                            ; $43db: $2c
	jr z, jr_055_4426                                ; $43dc: $28 $48

	ld d, c                                          ; $43de: $51
	ld b, b                                          ; $43df: $40
	add b                                            ; $43e0: $80
	add c                                            ; $43e1: $81
	inc bc                                           ; $43e2: $03
	inc bc                                           ; $43e3: $03
	rlca                                             ; $43e4: $07
	add l                                            ; $43e5: $85
	rlca                                             ; $43e6: $07
	rrca                                             ; $43e7: $0f
	dec hl                                           ; $43e8: $2b
	ld [hl+], a                                      ; $43e9: $22

jr_055_43ea:
	ld d, h                                          ; $43ea: $54
	ld b, h                                          ; $43eb: $44
	xor b                                            ; $43ec: $a8
	adc b                                            ; $43ed: $88
	pop de                                           ; $43ee: $d1
	ld de, $f1f0                                     ; $43ef: $11 $f0 $f1
	db $e3                                           ; $43f2: $e3
	db $e3                                           ; $43f3: $e3
	rst JumpTable                                          ; $43f4: $c7
	rst JumpTable                                          ; $43f5: $c7
	adc a                                            ; $43f6: $8f
	adc a                                            ; $43f7: $8f
	ld bc, $3c00                                     ; $43f8: $01 $00 $3c
	ld b, e                                          ; $43fb: $43
	adc a                                            ; $43fc: $8f
	sbc b                                            ; $43fd: $98
	jr nc, jr_055_4420                               ; $43fe: $30 $20

	db $dd                                           ; $4400: $dd
	rst $38                                          ; $4401: $ff
	add b                                            ; $4402: $80
	call c, $a0b0                                    ; $4403: $dc $b0 $a0
	ld h, b                                          ; $4406: $60
	add b                                            ; $4407: $80
	sbc h                                            ; $4408: $9c
	add e                                            ; $4409: $83
	ldh a, [$38]                                     ; $440a: $f0 $38
	inc c                                            ; $440c: $0c
	ld b, $06                                        ; $440d: $06 $06
	db $fc                                           ; $440f: $fc
	cp $ff                                           ; $4410: $fe $ff
	db $fd                                           ; $4412: $fd
	ld c, $06                                        ; $4413: $0e $06
	inc bc                                           ; $4415: $03
	inc bc                                           ; $4416: $03
	or h                                             ; $4417: $b4

jr_055_4418:
	ld d, b                                          ; $4418: $50
	ld d, d                                          ; $4419: $52
	ld [$feae], a                                    ; $441a: $ea $ae $fe
	rst SubAFromHL                                          ; $441d: $d7
	push de                                          ; $441e: $d5
	ld h, e                                          ; $441f: $63

jr_055_4420:
	inc sp                                           ; $4420: $33
	cp c                                             ; $4421: $b9
	sub l                                            ; $4422: $95
	sbc l                                            ; $4423: $9d
	db $dd                                           ; $4424: $dd
	ld c, a                                          ; $4425: $4f

jr_055_4426:
	ld l, a                                          ; $4426: $6f
	ld l, a                                          ; $4427: $6f
	ld [hl+], a                                      ; $4428: $22
	ld l, d                                          ; $4429: $6a
	jr c, @+$36                                      ; $442a: $38 $34

	inc [hl]                                         ; $442c: $34
	sbc $12                                          ; $442d: $de $12
	rst SubAFromDE                                          ; $442f: $df
	sbc l                                            ; $4430: $9d
	sbc $cf                                          ; $4431: $de $cf
	sbc $ef                                          ; $4433: $de $ef
	sbc d                                            ; $4435: $9a
	ccf                                              ; $4436: $3f
	cp a                                             ; $4437: $bf
	cp a                                             ; $4438: $bf
	sbc a                                            ; $4439: $9f
	sbc a                                            ; $443a: $9f
	sbc $5f                                          ; $443b: $de $5f
	sbc e                                            ; $443d: $9b
	di                                               ; $443e: $f3
	db $e4                                           ; $443f: $e4
	db $e4                                           ; $4440: $e4
	db $f4                                           ; $4441: $f4
	sbc $f8                                          ; $4442: $de $f8
	sbc e                                            ; $4444: $9b
	db $fc                                           ; $4445: $fc
	inc bc                                           ; $4446: $03
	ld b, e                                          ; $4447: $43
	and e                                            ; $4448: $a3
	ld a, e                                          ; $4449: $7b
	cp $9a                                           ; $444a: $fe $9a
	and a                                            ; $444c: $a7
	ld b, [hl]                                       ; $444d: $46
	rst $38                                          ; $444e: $ff
	cp a                                             ; $444f: $bf
	ld e, a                                          ; $4450: $5f
	ld [hl], e                                       ; $4451: $73
	cp $91                                           ; $4452: $fe $91
	add sp, $74                                      ; $4454: $e8 $74
	db $f4                                           ; $4456: $f4
	cp d                                             ; $4457: $ba
	cp l                                             ; $4458: $bd
	cp [hl]                                          ; $4459: $be
	cp a                                             ; $445a: $bf
	rst $38                                          ; $445b: $ff
	jr jr_055_43ea                                   ; $445c: $18 $8c

	adc h                                            ; $445e: $8c
	add $c3                                          ; $445f: $c6 $c3
	pop bc                                           ; $4461: $c1
	ld [hl], a                                       ; $4462: $77
	ld l, $ff                                        ; $4463: $2e $ff
	sbc h                                            ; $4465: $9c
	ret nz                                           ; $4466: $c0

	jr c, jr_055_4470                                ; $4467: $38 $07

	ld [hl], a                                       ; $4469: $77
	ld a, [hl+]                                      ; $446a: $2a
	ld a, a                                          ; $446b: $7f
	ld hl, sp-$64                                    ; $446c: $f8 $9c
	ld hl, sp-$01                                    ; $446e: $f8 $ff

jr_055_4470:
	ld a, a                                          ; $4470: $7f
	db $fd                                           ; $4471: $fd

jr_055_4472:
	sbc e                                            ; $4472: $9b
	db $10                                           ; $4473: $10
	ld de, $ed2b                                     ; $4474: $11 $2b $ed
	ld l, a                                          ; $4477: $6f
	ld hl, sp-$7c                                    ; $4478: $f8 $84
	dec sp                                           ; $447a: $3b
	rst $38                                          ; $447b: $ff
	ld d, h                                          ; $447c: $54
	jr z, jr_055_4492                                ; $447d: $28 $13

	ld a, [bc]                                       ; $447f: $0a
	nop                                              ; $4480: $00
	ld bc, $0200                                     ; $4481: $01 $00 $02
	inc hl                                           ; $4484: $23
	ld b, a                                          ; $4485: $47
	adc h                                            ; $4486: $8c
	ld de, $0603                                     ; $4487: $11 $03 $06
	nop                                              ; $448a: $00
	ld bc, $c060                                     ; $448b: $01 $60 $c0
	add b                                            ; $448e: $80
	nop                                              ; $448f: $00
	jr c, jr_055_44b2                                ; $4490: $38 $20

jr_055_4492:
	add b                                            ; $4492: $80
	ld e, $9f                                        ; $4493: $1e $9f
	ld a, d                                          ; $4495: $7a
	rlca                                             ; $4496: $07
	add b                                            ; $4497: $80
	rst JumpTable                                          ; $4498: $c7
	rra                                              ; $4499: $1f
	ld a, a                                          ; $449a: $7f
	pop hl                                           ; $449b: $e1
	nop                                              ; $449c: $00
	nop                                              ; $449d: $00
	inc bc                                           ; $449e: $03
	jr jr_055_44a7                                   ; $449f: $18 $06

	add c                                            ; $44a1: $81
	ld h, b                                          ; $44a2: $60
	ld e, $ff                                        ; $44a3: $1e $ff
	rst $38                                          ; $44a5: $ff
	db $fc                                           ; $44a6: $fc

jr_055_44a7:
	rst SubAFromBC                                          ; $44a7: $e7
	ld sp, hl                                        ; $44a8: $f9
	ld a, [hl]                                       ; $44a9: $7e
	sbc a                                            ; $44aa: $9f
	pop hl                                           ; $44ab: $e1
	ld h, h                                          ; $44ac: $64
	ld a, [hl-]                                      ; $44ad: $3a
	sub e                                            ; $44ae: $93
	sbc b                                            ; $44af: $98
	jr nz, jr_055_4472                               ; $44b0: $20 $c0

jr_055_44b2:
	ld e, h                                          ; $44b2: $5c
	inc hl                                           ; $44b3: $23
	sbc b                                            ; $44b4: $98
	call nz, Call_055_7f60                           ; $44b5: $c4 $60 $7f
	or b                                             ; $44b8: $b0
	sbc e                                            ; $44b9: $9b
	jr nc, @-$7e                                     ; $44ba: $30 $80

	ret nz                                           ; $44bc: $c0

	ld b, b                                          ; $44bd: $40
	ld a, d                                          ; $44be: $7a
	sub e                                            ; $44bf: $93
	ld l, [hl]                                       ; $44c0: $6e
	adc l                                            ; $44c1: $8d
	db $eb                                           ; $44c2: $eb
	sbc [hl]                                         ; $44c3: $9e
	rlca                                             ; $44c4: $07
	db $dd                                           ; $44c5: $dd
	dec b                                            ; $44c6: $05
	ld a, d                                          ; $44c7: $7a
	or d                                             ; $44c8: $b2
	ld h, a                                          ; $44c9: $67
	ld hl, sp-$69                                    ; $44ca: $f8 $97
	jr nz, jr_055_44f0                               ; $44cc: $20 $22

	ld [hl+], a                                      ; $44ce: $22
	ld h, d                                          ; $44cf: $62
	ld h, d                                          ; $44d0: $62
	ld d, e                                          ; $44d1: $53
	sub d                                            ; $44d2: $92
	or e                                             ; $44d3: $b3
	db $db                                           ; $44d4: $db
	cp $9a                                           ; $44d5: $fe $9a
	rst $38                                          ; $44d7: $ff
	rst SubAFromDE                                          ; $44d8: $df
	rst SubAFromHL                                          ; $44d9: $d7
	db $d3                                           ; $44da: $d3
	sub e                                            ; $44db: $93
	db $dd                                           ; $44dc: $dd
	sub d                                            ; $44dd: $92
	sbc e                                            ; $44de: $9b
	adc c                                            ; $44df: $89
	ld a, [hl-]                                      ; $44e0: $3a
	ld a, $7e                                        ; $44e1: $3e $7e
	call c, $df7f                                    ; $44e3: $dc $7f $df
	ld d, c                                          ; $44e6: $51
	sbc [hl]                                         ; $44e7: $9e
	ld h, c                                          ; $44e8: $61
	sbc $e1                                          ; $44e9: $de $e1
	sbc e                                            ; $44eb: $9b
	ld h, c                                          ; $44ec: $61
	ld [hl], c                                       ; $44ed: $71
	rrca                                             ; $44ee: $0f
	rrca                                             ; $44ef: $0f

jr_055_44f0:
	db $dd                                           ; $44f0: $dd
	rra                                              ; $44f1: $1f
	sbc l                                            ; $44f2: $9d
	sbc a                                            ; $44f3: $9f
	adc a                                            ; $44f4: $8f
	halt                                             ; $44f5: $76
	cp e                                             ; $44f6: $bb
	ld a, [hl]                                       ; $44f7: $7e
	cp d                                             ; $44f8: $ba
	rst SubAFromDE                                          ; $44f9: $df
	ld c, $de                                        ; $44fa: $0e $de

jr_055_44fc:
	cp a                                             ; $44fc: $bf
	sbc b                                            ; $44fd: $98
	db $fd                                           ; $44fe: $fd
	db $fc                                           ; $44ff: $fc
	db $fc                                           ; $4500: $fc
	ld hl, sp-$08                                    ; $4501: $f8 $f8
	ld h, b                                          ; $4503: $60
	ld h, b                                          ; $4504: $60
	call c, $9e40                                    ; $4505: $dc $40 $9e
	pop hl                                           ; $4508: $e1
	sbc $40                                          ; $4509: $de $40
	call c, $ddc0                                    ; $450b: $dc $c0 $dd
	ld b, $7f                                        ; $450e: $06 $7f
	ldh [$9d], a                                     ; $4510: $e0 $9d
	ld c, l                                          ; $4512: $4d
	scf                                              ; $4513: $37
	call c, $9503                                    ; $4514: $dc $03 $95
	rlca                                             ; $4517: $07
	ld a, $fc                                        ; $4518: $3e $fc
	ld b, [hl]                                       ; $451a: $46
	ldh [c], a                                       ; $451b: $e2
	ldh a, [c]                                       ; $451c: $f2
	ld a, [$f6bd]                                    ; $451d: $fa $bd $f6
	cp $de                                           ; $4520: $fe $de
	rst $38                                          ; $4522: $ff
	ld a, a                                          ; $4523: $7f
	call nz, $c793                                   ; $4524: $c4 $93 $c7
	rst $38                                          ; $4527: $ff
	add e                                            ; $4528: $83
	ld bc, $4181                                     ; $4529: $01 $81 $41
	and c                                            ; $452c: $a1
	pop de                                           ; $452d: $d1
	ld l, c                                          ; $452e: $69
	rst FarCall                                          ; $452f: $f7
	ld hl, sp+$7f                                    ; $4530: $f8 $7f
	ld a, c                                          ; $4532: $79
	di                                               ; $4533: $f3
	sbc d                                            ; $4534: $9a
	ccf                                              ; $4535: $3f
	sbc a                                            ; $4536: $9f
	rst GetHLinHL                                          ; $4537: $cf
	rst FarCall                                          ; $4538: $f7
	rst $38                                          ; $4539: $ff
	db $db                                           ; $453a: $db
	ld e, a                                          ; $453b: $5f
	add l                                            ; $453c: $85
	rst $38                                          ; $453d: $ff
	rst FarCall                                          ; $453e: $f7
	db $fc                                           ; $453f: $fc
	or $f2                                           ; $4540: $f6 $f2
	pop af                                           ; $4542: $f1
	ldh a, [$f8]                                     ; $4543: $f0 $f8
	db $fc                                           ; $4545: $fc
	push af                                          ; $4546: $f5
	adc e                                            ; $4547: $8b
	ld d, a                                          ; $4548: $57
	xor a                                            ; $4549: $af
	ld e, e                                          ; $454a: $5b
	db $fd                                           ; $454b: $fd
	or d                                             ; $454c: $b2
	pop de                                           ; $454d: $d1
	ld d, b                                          ; $454e: $50
	ld a, h                                          ; $454f: $7c
	cp b                                             ; $4550: $b8
	ld [hl], b                                       ; $4551: $70
	db $ec                                           ; $4552: $ec
	sub $d3                                          ; $4553: $d6 $d3
	or c                                             ; $4555: $b1
	or c                                             ; $4556: $b1
	db $db                                           ; $4557: $db
	rst $38                                          ; $4558: $ff
	sbc l                                            ; $4559: $9d
	ld a, a                                          ; $455a: $7f
	cp a                                             ; $455b: $bf
	ei                                               ; $455c: $fb
	ld a, a                                          ; $455d: $7f
	jr nz, jr_055_44fc                               ; $455e: $20 $9c

	and b                                            ; $4560: $a0
	or d                                             ; $4561: $b2
	or $dc                                           ; $4562: $f6 $dc
	rst $38                                          ; $4564: $ff
	sbc h                                            ; $4565: $9c
	ld e, a                                          ; $4566: $5f
	ld c, l                                          ; $4567: $4d
	add hl, bc                                       ; $4568: $09
	db $fc                                           ; $4569: $fc
	sub a                                            ; $456a: $97
	dec hl                                           ; $456b: $2b
	ld b, $01                                        ; $456c: $06 $01
	inc hl                                           ; $456e: $23
	ld h, b                                          ; $456f: $60
	db $ec                                           ; $4570: $ec
	ld hl, sp-$08                                    ; $4571: $f8 $f8
	sbc $ff                                          ; $4573: $de $ff
	sbc c                                            ; $4575: $99
	rst SubAFromDE                                          ; $4576: $df
	sbc a                                            ; $4577: $9f
	inc de                                           ; $4578: $13
	rlca                                             ; $4579: $07
	rlca                                             ; $457a: $07
	add b                                            ; $457b: $80
	ld a, e                                          ; $457c: $7b
	rlca                                             ; $457d: $07
	sbc e                                            ; $457e: $9b

jr_055_457f:
	add b                                            ; $457f: $80
	ld h, b                                          ; $4580: $60
	db $10                                           ; $4581: $10
	ld [$f873], sp                                   ; $4582: $08 $73 $f8
	add b                                            ; $4585: $80
	ldh [$f0], a                                     ; $4586: $e0 $f0
	ld hl, sp+$18                                    ; $4588: $f8 $18
	ld b, b                                          ; $458a: $40
	add b                                            ; $458b: $80
	db $10                                           ; $458c: $10
	ld b, b                                          ; $458d: $40
	nop                                              ; $458e: $00
	jr nc, jr_055_4594                               ; $458f: $30 $03

	rlca                                             ; $4591: $07
	ccf                                              ; $4592: $3f
	ld a, a                                          ; $4593: $7f

jr_055_4594:
	rrca                                             ; $4594: $0f
	ccf                                              ; $4595: $3f

jr_055_4596:
	rst $38                                          ; $4596: $ff
	rrca                                             ; $4597: $0f
	nop                                              ; $4598: $00
	inc b                                            ; $4599: $04

jr_055_459a:
	ld bc, $f000                                     ; $459a: $01 $00 $f0
	jr c, jr_055_45a5                                ; $459d: $38 $06

	ld h, b                                          ; $459f: $60
	jr jr_055_459a                                   ; $45a0: $18 $f8

	cp $ff                                           ; $45a2: $fe $ff
	rrca                                             ; $45a4: $0f

jr_055_45a5:
	ld a, [hl]                                       ; $45a5: $7e
	add b                                            ; $45a6: $80
	sbc b                                            ; $45a7: $98
	sbc a                                            ; $45a8: $9f
	ldh [$38], a                                     ; $45a9: $e0 $38
	nop                                              ; $45ab: $00
	ret nz                                           ; $45ac: $c0

	jr nz, jr_055_457f                               ; $45ad: $20 $d0

	ld a, e                                          ; $45af: $7b
	adc $76                                          ; $45b0: $ce $76
	ld [hl], c                                       ; $45b2: $71
	sbc [hl]                                         ; $45b3: $9e
	jr nz, jr_055_4596                               ; $45b4: $20 $e0

	db $dd                                           ; $45b6: $dd
	ld a, l                                          ; $45b7: $7d
	dec b                                            ; $45b8: $05
	adc d                                            ; $45b9: $8a
	ld b, $0d                                        ; $45ba: $06 $0d
	ld d, $2d                                        ; $45bc: $16 $2d
	jp c, Boot                                       ; $45be: $da $00 $01

	ld [bc], a                                       ; $45c1: $02
	dec b                                            ; $45c2: $05
	dec bc                                           ; $45c3: $0b
	inc de                                           ; $45c4: $13
	inc h                                            ; $45c5: $24
	ret                                              ; $45c6: $c9


	or e                                             ; $45c7: $b3
	xor c                                            ; $45c8: $a9
	adc c                                            ; $45c9: $89
	ret                                              ; $45ca: $c9


	ld b, h                                          ; $45cb: $44
	ld c, h                                          ; $45cc: $4c
	ld b, d                                          ; $45cd: $42
	jp nc, $dfdc                                     ; $45ce: $d2 $dc $df

	rst SubAFromDE                                          ; $45d1: $df
	rst SubAFromHL                                          ; $45d2: $d7
	sbc [hl]                                         ; $45d3: $9e
	rst JumpTable                                          ; $45d4: $c7
	ld a, e                                          ; $45d5: $7b
	ldh a, [c]                                       ; $45d6: $f2
	sbc c                                            ; $45d7: $99
	call nz, $c3a6                                   ; $45d8: $c4 $a6 $c3
	and e                                            ; $45db: $a3
	pop af                                           ; $45dc: $f1
	ld a, a                                          ; $45dd: $7f
	ld a, c                                          ; $45de: $79
	rst SubAFromBC                                          ; $45df: $e7
	adc b                                            ; $45e0: $88
	rst SubAFromDE                                          ; $45e1: $df
	rst $38                                          ; $45e2: $ff
	rst $38                                          ; $45e3: $ff
	cp a                                             ; $45e4: $bf
	ld [hl], c                                       ; $45e5: $71
	ld sp, $98b8                                     ; $45e6: $31 $b8 $98
	ld e, b                                          ; $45e9: $58
	ld c, h                                          ; $45ea: $4c
	inc h                                            ; $45eb: $24
	or b                                             ; $45ec: $b0
	adc a                                            ; $45ed: $8f
	rst GetHLinHL                                          ; $45ee: $cf
	rst JumpTable                                          ; $45ef: $c7
	rst SubAFromBC                                          ; $45f0: $e7
	rst SubAFromBC                                          ; $45f1: $e7
	di                                               ; $45f2: $f3
	ei                                               ; $45f3: $fb
	rst $38                                          ; $45f4: $ff
	inc c                                            ; $45f5: $0c
	adc h                                            ; $45f6: $8c
	sbc h                                            ; $45f7: $9c
	sbc $dc                                          ; $45f8: $de $dc
	sbc e                                            ; $45fa: $9b
	db $ec                                           ; $45fb: $ec
	ld l, h                                          ; $45fc: $6c
	ld hl, sp-$08                                    ; $45fd: $f8 $f8
	db $dd                                           ; $45ff: $dd
	ldh a, [$df]                                     ; $4600: $f0 $df
	ld hl, sp-$6c                                    ; $4602: $f8 $94
	db $e4                                           ; $4604: $e4
	ld l, e                                          ; $4605: $6b
	ld h, a                                          ; $4606: $67
	inc hl                                           ; $4607: $23
	ld bc, $4000                                     ; $4608: $01 $00 $40
	ldh [rSCX], a                                    ; $460b: $e0 $43
	ld b, a                                          ; $460d: $47
	ld b, b                                          ; $460e: $40
	ld [hl], c                                       ; $460f: $71
	inc e                                            ; $4610: $1c
	rst SubAFromDE                                          ; $4611: $df
	rst $38                                          ; $4612: $ff
	sbc h                                            ; $4613: $9c
	di                                               ; $4614: $f3
	pop hl                                           ; $4615: $e1
	ldh a, [$7b]                                     ; $4616: $f0 $7b
	sbc d                                            ; $4618: $9a
	sbc h                                            ; $4619: $9c
	call nz, $ff3f                                   ; $461a: $c4 $3f $ff
	ld [hl], c                                       ; $461d: $71
	db $d3                                           ; $461e: $d3
	ld a, a                                          ; $461f: $7f
	ld a, [hl+]                                      ; $4620: $2a
	sub [hl]                                         ; $4621: $96
	and $fe                                          ; $4622: $e6 $fe
	ld a, h                                          ; $4624: $7c
	db $fc                                           ; $4625: $fc
	ld sp, hl                                        ; $4626: $f9
	ld sp, hl                                        ; $4627: $f9
	ld bc, $fbe1                                     ; $4628: $01 $e1 $fb
	ld [hl], l                                       ; $462b: $75
	ld b, c                                          ; $462c: $41
	sub [hl]                                         ; $462d: $96
	rrca                                             ; $462e: $0f
	di                                               ; $462f: $f3
	ldh a, [c]                                       ; $4630: $f2
	or d                                             ; $4631: $b2
	and [hl]                                         ; $4632: $a6
	and h                                            ; $4633: $a4
	and l                                            ; $4634: $a5
	and l                                            ; $4635: $a5
	ld b, l                                          ; $4636: $45
	reti                                             ; $4637: $d9


	rst $38                                          ; $4638: $ff
	rst SubAFromDE                                          ; $4639: $df
	db $e3                                           ; $463a: $e3
	sbc c                                            ; $463b: $99
	ldh [c], a                                       ; $463c: $e2
	jp $83c3                                         ; $463d: $c3 $c3 $83


	add a                                            ; $4640: $87
	db $fd                                           ; $4641: $fd
	sbc $e3                                          ; $4642: $de $e3
	rst SubAFromDE                                          ; $4644: $df
	jp nz, $8280                                     ; $4645: $c2 $80 $82

	add [hl]                                         ; $4648: $86
	cp $d3                                           ; $4649: $fe $d3
	rst FarCall                                          ; $464b: $f7
	rst $38                                          ; $464c: $ff
	xor $fc                                          ; $464d: $ee $fc
	or $fb                                           ; $464f: $f6 $fb
	rst $38                                          ; $4651: $ff
	inc sp                                           ; $4652: $33
	rla                                              ; $4653: $17
	ld e, $1c                                        ; $4654: $1e $1c
	ld [$070c], sp                                   ; $4656: $08 $0c $07
	nop                                              ; $4659: $00
	ld e, a                                          ; $465a: $5f
	cpl                                              ; $465b: $2f
	rla                                              ; $465c: $17
	dec bc                                           ; $465d: $0b
	dec b                                            ; $465e: $05
	ld [bc], a                                       ; $465f: $02
	add a                                            ; $4660: $87
	ld a, [hl]                                       ; $4661: $7e
	ldh [$30], a                                     ; $4662: $e0 $30
	jr jr_055_4672                                   ; $4664: $18 $0c

	ld a, c                                          ; $4666: $79
	ld sp, $ffda                                     ; $4667: $31 $da $ff
	sbc [hl]                                         ; $466a: $9e
	rst AddAOntoHL                                          ; $466b: $ef
	ld [hl], b                                       ; $466c: $70
	jr z, @+$01                                      ; $466d: $28 $ff

	ld a, a                                          ; $466f: $7f
	ld a, a                                          ; $4670: $7f
	sbc [hl]                                         ; $4671: $9e

jr_055_4672:
	rst $38                                          ; $4672: $ff
	halt                                             ; $4673: $76
	ld h, l                                          ; $4674: $65
	ld [hl], h                                       ; $4675: $74
	ld a, b                                          ; $4676: $78
	ld l, h                                          ; $4677: $6c
	sbc [hl]                                         ; $4678: $9e
	sbc d                                            ; $4679: $9a
	nop                                              ; $467a: $00
	add h                                            ; $467b: $84
	ld [bc], a                                       ; $467c: $02
	db $fd                                           ; $467d: $fd
	rst $38                                          ; $467e: $ff
	ld [hl], a                                       ; $467f: $77
	db $ec                                           ; $4680: $ec
	sbc h                                            ; $4681: $9c
	ld a, h                                          ; $4682: $7c
	cp $03                                           ; $4683: $fe $03
	ld l, b                                          ; $4685: $68
	adc b                                            ; $4686: $88
	sbc [hl]                                         ; $4687: $9e
	db $fc                                           ; $4688: $fc
	call c, Call_055_7aff                            ; $4689: $dc $ff $7a
	jp $079d                                         ; $468c: $c3 $9d $07


	ld bc, $cb7a                                     ; $468f: $01 $7a $cb
	ld a, a                                          ; $4692: $7f
	ld [$0490], a                                    ; $4693: $ea $90 $04
	ldh [rTMA], a                                    ; $4696: $e0 $06
	ld bc, $0118                                     ; $4698: $01 $18 $01
	db $fc                                           ; $469b: $fc
	rst $38                                          ; $469c: $ff
	ld hl, sp+$00                                    ; $469d: $f8 $00
	ld hl, sp-$02                                    ; $469f: $f8 $fe
	ldh [$fe], a                                     ; $46a1: $e0 $fe
	nop                                              ; $46a3: $00
	ld [hl], a                                       ; $46a4: $77
	ld e, d                                          ; $46a5: $5a
	ld a, [hl]                                       ; $46a6: $7e
	sub h                                            ; $46a7: $94
	ld l, l                                          ; $46a8: $6d
	daa                                              ; $46a9: $27
	xor $7e                                          ; $46aa: $ee $7e
	jp nc, $0f80                                     ; $46ac: $d2 $80 $0f

	inc d                                            ; $46af: $14
	add hl, hl                                       ; $46b0: $29
	inc sp                                           ; $46b1: $33
	ld h, [hl]                                       ; $46b2: $66
	ld c, l                                          ; $46b3: $4d
	inc bc                                           ; $46b4: $03
	dec b                                            ; $46b5: $05
	dec bc                                           ; $46b6: $0b
	inc e                                            ; $46b7: $1c
	add hl, sp                                       ; $46b8: $39
	ld [hl-], a                                      ; $46b9: $32
	ld h, l                                          ; $46ba: $65
	ld c, e                                          ; $46bb: $4b
	push af                                          ; $46bc: $f5
	xor $d8                                          ; $46bd: $ee $d8
	or b                                             ; $46bf: $b0
	ldh [rSCX], a                                    ; $46c0: $e0 $43
	adc [hl]                                         ; $46c2: $8e
	jr c, jr_055_46d8                                ; $46c3: $38 $13

	and $c8                                          ; $46c5: $e6 $c8
	sub b                                            ; $46c7: $90
	jr nz, @-$3b                                     ; $46c8: $20 $c3

	adc h                                            ; $46ca: $8c
	jr nc, @-$3d                                     ; $46cb: $30 $c1

	sub h                                            ; $46cd: $94
	ld d, d                                          ; $46ce: $52
	ld d, e                                          ; $46cf: $53
	ld l, e                                          ; $46d0: $6b
	rst $38                                          ; $46d1: $ff
	rst $38                                          ; $46d2: $ff
	inc bc                                           ; $46d3: $03
	rst $38                                          ; $46d4: $ff
	rst JumpTable                                          ; $46d5: $c7
	ld b, l                                          ; $46d6: $45
	ld b, h                                          ; $46d7: $44

jr_055_46d8:
	ld d, h                                          ; $46d8: $54
	ld [hl], a                                       ; $46d9: $77
	adc l                                            ; $46da: $8d
	sub l                                            ; $46db: $95
	reti                                             ; $46dc: $d9


	db $fc                                           ; $46dd: $fc
	ld [hl], d                                       ; $46de: $72
	ld l, e                                          ; $46df: $6b
	ld l, e                                          ; $46e0: $6b
	db $eb                                           ; $46e1: $eb

jr_055_46e2:
	ld h, l                                          ; $46e2: $65
	db $dd                                           ; $46e3: $dd
	cp a                                             ; $46e4: $bf
	sbc a                                            ; $46e5: $9f
	db $dd                                           ; $46e6: $dd
	rst SubAFromDE                                          ; $46e7: $df
	sbc c                                            ; $46e8: $99
	rst $38                                          ; $46e9: $ff
	ccf                                              ; $46ea: $3f
	ret c                                            ; $46eb: $d8

	db $ec                                           ; $46ec: $ec
	halt                                             ; $46ed: $76
	ccf                                              ; $46ee: $3f
	halt                                             ; $46ef: $76
	or a                                             ; $46f0: $b7
	ld a, d                                          ; $46f1: $7a
	ld hl, $ed81                                     ; $46f2: $21 $81 $ed
	db $e4                                           ; $46f5: $e4
	ldh a, [c]                                       ; $46f6: $f2
	ld sp, hl                                        ; $46f7: $f9
	add h                                            ; $46f8: $84
	ld a, h                                          ; $46f9: $7c
	ld a, l                                          ; $46fa: $7d
	dec a                                            ; $46fb: $3d
	ld a, $df                                        ; $46fc: $3e $df
	db $fc                                           ; $46fe: $fc

Jump_055_46ff:
	cp l                                             ; $46ff: $bd
	adc a                                            ; $4700: $8f
	ret c                                            ; $4701: $d8

	ret                                              ; $4702: $c9


	db $e4                                           ; $4703: $e4
	ldh [$f3], a                                     ; $4704: $e0 $f3
	halt                                             ; $4706: $76
	rrca                                             ; $4707: $0f
	rlca                                             ; $4708: $07
	ldh [$60], a                                     ; $4709: $e0 $60
	ret nz                                           ; $470b: $c0

	ldh [$f0], a                                     ; $470c: $e0 $f0
	nop                                              ; $470e: $00
	db $f4                                           ; $470f: $f4
	db $fc                                           ; $4710: $fc
	nop                                              ; $4711: $00
	ld a, d                                          ; $4712: $7a
	rrca                                             ; $4713: $0f
	sbc c                                            ; $4714: $99
	ld hl, sp+$0c                                    ; $4715: $f8 $0c
	db $fc                                           ; $4717: $fc
	db $fc                                           ; $4718: $fc
	ld bc, $6d01                                     ; $4719: $01 $01 $6d
	add [hl]                                         ; $471c: $86
	ld sp, hl                                        ; $471d: $f9
	sbc [hl]                                         ; $471e: $9e
	ld sp, hl                                        ; $471f: $f9
	sbc $f0                                          ; $4720: $de $f0
	sbc $e0                                          ; $4722: $de $e0
	add b                                            ; $4724: $80
	ret nz                                           ; $4725: $c0

	dec bc                                           ; $4726: $0b
	dec de                                           ; $4727: $1b
	ld [de], a                                       ; $4728: $12
	ld d, $34                                        ; $4729: $16 $34
	ld hl, $6929                                     ; $472b: $21 $29 $69
	jp hl                                            ; $472e: $e9


	xor e                                            ; $472f: $ab
	dec hl                                           ; $4730: $2b
	ld l, e                                          ; $4731: $6b
	rla                                              ; $4732: $17
	rla                                              ; $4733: $17
	ld e, [hl]                                       ; $4734: $5e
	ld e, h                                          ; $4735: $5c
	ld e, a                                          ; $4736: $5f
	ld e, a                                          ; $4737: $5f
	rst SubAFromDE                                          ; $4738: $df
	sbc a                                            ; $4739: $9f
	cp a                                             ; $473a: $bf
	cp a                                             ; $473b: $bf
	ccf                                              ; $473c: $3f
	ld a, $85                                        ; $473d: $3e $85
	dec b                                            ; $473f: $05
	dec b                                            ; $4740: $05
	ld a, $c1                                        ; $4741: $3e $c1
	jr nz, jr_055_46e2                               ; $4743: $20 $9d

	nop                                              ; $4745: $00
	rla                                              ; $4746: $17
	ld [hl], l                                       ; $4747: $75
	inc bc                                           ; $4748: $03
	ld a, l                                          ; $4749: $7d
	ld e, l                                          ; $474a: $5d
	sbc l                                            ; $474b: $9d
	rra                                              ; $474c: $1f
	rrca                                             ; $474d: $0f
	ld l, l                                          ; $474e: $6d
	sub d                                            ; $474f: $92
	sbc l                                            ; $4750: $9d
	ld a, a                                          ; $4751: $7f
	ld a, [hl]                                       ; $4752: $7e
	db $fd                                           ; $4753: $fd
	sbc [hl]                                         ; $4754: $9e
	add e                                            ; $4755: $83
	sbc $c1                                          ; $4756: $de $c1
	sub l                                            ; $4758: $95
	db $f4                                           ; $4759: $f4
	db $ec                                           ; $475a: $ec
	cp $ff                                           ; $475b: $fe $ff
	rst AddAOntoHL                                          ; $475d: $ef
	ld [hl], a                                       ; $475e: $77
	ei                                               ; $475f: $fb
	or h                                             ; $4760: $b4
	ld c, $1e                                        ; $4761: $0e $1e
	ld [hl], l                                       ; $4763: $75
	ld bc, $6b7f                                     ; $4764: $01 $7f $6b
	sub a                                            ; $4767: $97
	ld a, a                                          ; $4768: $7f
	ld a, l                                          ; $4769: $7d
	rst $38                                          ; $476a: $ff
	cp $f2                                           ; $476b: $fe $f2
	rst $38                                          ; $476d: $ff
	rst AddAOntoHL                                          ; $476e: $ef
	db $dd                                           ; $476f: $dd
	ld a, d                                          ; $4770: $7a
	push af                                          ; $4771: $f5
	rst SubAFromDE                                          ; $4772: $df
	cp $df                                           ; $4773: $fe $df
	di                                               ; $4775: $f3
	sbc [hl]                                         ; $4776: $9e
	db $e3                                           ; $4777: $e3
	ld a, d                                          ; $4778: $7a
	dec e                                            ; $4779: $1d
	sbc h                                            ; $477a: $9c
	ei                                               ; $477b: $fb
	rst GetHLinHL                                          ; $477c: $cf
	pop bc                                           ; $477d: $c1
	ld [hl], l                                       ; $477e: $75
	sub d                                            ; $477f: $92
	sbc h                                            ; $4780: $9c
	ret nz                                           ; $4781: $c0

	ld a, h                                          ; $4782: $7c
	rst SubAFromBC                                          ; $4783: $e7
	ld a, b                                          ; $4784: $78
	ld d, h                                          ; $4785: $54
	sbc $fd                                          ; $4786: $de $fd
	sbc d                                            ; $4788: $9a
	rst $38                                          ; $4789: $ff
	ld a, [hl]                                       ; $478a: $7e
	ldh [c], a                                       ; $478b: $e2
	ld [hl], $35                                     ; $478c: $36 $35
	db $dd                                           ; $478e: $dd
	inc bc                                           ; $478f: $03
	sbc d                                            ; $4790: $9a
	add e                                            ; $4791: $83
	rst $38                                          ; $4792: $ff
	rra                                              ; $4793: $1f
	ld e, $e3                                        ; $4794: $1e $e3
	ld [hl], h                                       ; $4796: $74

Jump_055_4797:
	ld [hl], a                                       ; $4797: $77
	sbc h                                            ; $4798: $9c
	ld d, h                                          ; $4799: $54
	xor e                                            ; $479a: $ab
	ld d, [hl]                                       ; $479b: $56
	call c, $95ff                                    ; $479c: $dc $ff $95
	xor e                                            ; $479f: $ab
	ld d, l                                          ; $47a0: $55
	xor e                                            ; $47a1: $ab
	jr nc, jr_055_47a4                               ; $47a2: $30 $00

jr_055_47a4:
	inc c                                            ; $47a4: $0c
	nop                                              ; $47a5: $00
	inc b                                            ; $47a6: $04
	nop                                              ; $47a7: $00
	jr jr_055_4824                                   ; $47a8: $18 $7a

	rst GetHLinHL                                          ; $47aa: $cf
	sbc [hl]                                         ; $47ab: $9e
	ldh a, [$7a]                                     ; $47ac: $f0 $7a
	cp [hl]                                          ; $47ae: $be
	sbc [hl]                                         ; $47af: $9e
	ldh [rPCM12], a                                  ; $47b0: $e0 $76
	ld a, b                                          ; $47b2: $78
	halt                                             ; $47b3: $76
	call nz, $8075                                   ; $47b4: $c4 $75 $80

jr_055_47b7:
	ld l, b                                          ; $47b7: $68
	ld c, c                                          ; $47b8: $49
	sbc $01                                          ; $47b9: $de $01
	sbc $02                                          ; $47bb: $de $02
	ld h, a                                          ; $47bd: $67
	ld hl, sp-$6d                                    ; $47be: $f8 $93
	jp z, $9994                                      ; $47c0: $ca $94 $99

	add hl, de                                       ; $47c3: $19
	ld [de], a                                       ; $47c4: $12
	ld [de], a                                       ; $47c5: $12
	inc de                                           ; $47c6: $13
	inc hl                                           ; $47c7: $23
	adc $9c                                          ; $47c8: $ce $9c
	sbc c                                            ; $47ca: $99
	add hl, de                                       ; $47cb: $19
	sbc $13                                          ; $47cc: $de $13
	add [hl]                                         ; $47ce: $86
	inc hl                                           ; $47cf: $23
	ld h, e                                          ; $47d0: $63
	call Call_055_5eb7                               ; $47d1: $cd $b7 $5e
	cp b                                             ; $47d4: $b8
	ld h, h                                          ; $47d5: $64
	ldh [$a1], a                                     ; $47d6: $e0 $a1
	ld b, b                                          ; $47d8: $40
	add e                                            ; $47d9: $83
	rrca                                             ; $47da: $0f
	ccf                                              ; $47db: $3f
	ld a, a                                          ; $47dc: $7f
	ei                                               ; $47dd: $fb
	jp $7fc3                                         ; $47de: $c3 $c3 $7f


	rst $38                                          ; $47e1: $ff
	add c                                            ; $47e2: $81
	ld [hl+], a                                      ; $47e3: $22
	add e                                            ; $47e4: $83
	adc c                                            ; $47e5: $89
	adc e                                            ; $47e6: $8b
	ld c, e                                          ; $47e7: $4b
	sbc $ff                                          ; $47e8: $de $ff
	sub e                                            ; $47ea: $93
	call $060c                                       ; $47eb: $cd $0c $06
	ld b, $86                                        ; $47ee: $06 $86
	dec b                                            ; $47f0: $05
	rst $38                                          ; $47f1: $ff
	db $fd                                           ; $47f2: $fd
	db $fc                                           ; $47f3: $fc
	rst SubAFromDE                                          ; $47f4: $df
	rst $38                                          ; $47f5: $ff
	pop af                                           ; $47f6: $f1
	ld a, e                                          ; $47f7: $7b
	ld l, b                                          ; $47f8: $68
	sub c                                            ; $47f9: $91
	rst SubAFromBC                                          ; $47fa: $e7
	rst JumpTable                                          ; $47fb: $c7
	rst JumpTable                                          ; $47fc: $c7
	adc b                                            ; $47fd: $88
	or b                                             ; $47fe: $b0
	ret nz                                           ; $47ff: $c0

	and $f0                                          ; $4800: $e6 $f0
	ld hl, sp+$7c                                    ; $4802: $f8 $7c
	ld a, $9f                                        ; $4804: $3e $9f
	rst SubAFromDE                                          ; $4806: $df
	rst $38                                          ; $4807: $ff
	ld a, d                                          ; $4808: $7a

jr_055_4809:
	jp c, $a27c                                      ; $4809: $da $7c $a2

	sbc e                                            ; $480c: $9b
	cp $7f                                           ; $480d: $fe $7f
	ld a, a                                          ; $480f: $7f
	ld b, a                                          ; $4810: $47
	db $dd                                           ; $4811: $dd
	rlca                                             ; $4812: $07
	sub h                                            ; $4813: $94
	inc bc                                           ; $4814: $03
	pop bc                                           ; $4815: $c1
	ldh a, [rTAC]                                    ; $4816: $f0 $07
	rlca                                             ; $4818: $07
	ld b, $04                                        ; $4819: $06 $04
	ld [bc], a                                       ; $481b: $02
	ld bc, $e080                                     ; $481c: $01 $80 $e0
	call c, Call_055_7dfc                            ; $481f: $dc $fc $7d
	ld [hl], h                                       ; $4822: $74
	sub [hl]                                         ; $4823: $96

jr_055_4824:
	ld h, e                                          ; $4824: $63
	db $fc                                           ; $4825: $fc
	db $fc                                           ; $4826: $fc
	call z, $0804                                    ; $4827: $cc $04 $08
	db $10                                           ; $482a: $10
	ldh [rSB], a                                     ; $482b: $e0 $01
	ld [hl], l                                       ; $482d: $75
	sbc h                                            ; $482e: $9c
	sbc l                                            ; $482f: $9d
	rra                                              ; $4830: $1f
	ccf                                              ; $4831: $3f
	ld a, e                                          ; $4832: $7b
	ld h, l                                          ; $4833: $65
	ld a, c                                          ; $4834: $79
	jr jr_055_47b7                                   ; $4835: $18 $80

	ld c, $1f                                        ; $4837: $0e $1f
	ld a, b                                          ; $4839: $78
	ldh a, [$c0]                                     ; $483a: $f0 $c0
	ret nz                                           ; $483c: $c0

	ldh [$60], a                                     ; $483d: $e0 $60
	jr nc, jr_055_4809                               ; $483f: $30 $c8

	db $fc                                           ; $4841: $fc
	ccf                                              ; $4842: $3f
	db $eb                                           ; $4843: $eb
	ld a, [$36f6]                                    ; $4844: $fa $f6 $36
	ld d, $0d                                        ; $4847: $16 $0d
	db $fd                                           ; $4849: $fd
	rlca                                             ; $484a: $07
	ld a, [hl-]                                      ; $484b: $3a
	and e                                            ; $484c: $a3
	ld b, [hl]                                       ; $484d: $46
	ld b, l                                          ; $484e: $45
	add a                                            ; $484f: $87
	sbc h                                            ; $4850: $9c
	db $f4                                           ; $4851: $f4
	add $7c                                          ; $4852: $c6 $7c
	ld a, h                                          ; $4854: $7c
	ld sp, hl                                        ; $4855: $f9
	ld a, l                                          ; $4856: $7d
	sbc e                                            ; $4857: $9b
	ld a, d                                          ; $4858: $7a
	db $fd                                           ; $4859: $fd
	add a                                            ; $485a: $87
	ccf                                              ; $485b: $3f
	cp b                                             ; $485c: $b8
	ldh a, [$d0]                                     ; $485d: $f0 $d0
	jr nc, jr_055_4881                               ; $485f: $30 $20

	ld bc, $1f03                                     ; $4861: $01 $03 $1f
	ld a, a                                          ; $4864: $7f
	rst AddAOntoHL                                          ; $4865: $ef
	rst AddAOntoHL                                          ; $4866: $ef
	rst GetHLinHL                                          ; $4867: $cf
	rst GetHLinHL                                          ; $4868: $cf
	adc $cc                                          ; $4869: $ce $cc
	cp a                                             ; $486b: $bf
	cp a                                             ; $486c: $bf
	ld a, a                                          ; $486d: $7f
	ld e, a                                          ; $486e: $5f
	ld l, a                                          ; $486f: $6f
	scf                                              ; $4870: $37
	dec de                                           ; $4871: $1b
	inc a                                            ; $4872: $3c
	db $dd                                           ; $4873: $dd
	ldh [$7b], a                                     ; $4874: $e0 $7b
	adc [hl]                                         ; $4876: $8e
	ld a, [hl]                                       ; $4877: $7e
	sub $9d                                          ; $4878: $d6 $9d
	rst SubAFromBC                                          ; $487a: $e7
	ei                                               ; $487b: $fb
	ld a, c                                          ; $487c: $79
	sub d                                            ; $487d: $92
	ld a, d                                          ; $487e: $7a
	ld b, d                                          ; $487f: $42
	ld a, a                                          ; $4880: $7f

jr_055_4881:
	ld a, c                                          ; $4881: $79
	sbc l                                            ; $4882: $9d
	ccf                                              ; $4883: $3f
	rra                                              ; $4884: $1f
	cp $9a                                           ; $4885: $fe $9a
	ld a, [hl]                                       ; $4887: $7e
	rst $38                                          ; $4888: $ff
	rst $38                                          ; $4889: $ff
	rst FarCall                                          ; $488a: $f7
	sbc a                                            ; $488b: $9f
	sbc $ff                                          ; $488c: $de $ff
	sbc d                                            ; $488e: $9a
	add c                                            ; $488f: $81
	nop                                              ; $4890: $00
	nop                                              ; $4891: $00
	ld hl, sp-$08                                    ; $4892: $f8 $f8
	cp $9d                                           ; $4894: $fe $9d
	ldh [$bf], a                                     ; $4896: $e0 $bf
	sbc $ff                                          ; $4898: $de $ff
	sbc d                                            ; $489a: $9a
	cp $fd                                           ; $489b: $fe $fd
	or $c0                                           ; $489d: $f6 $c0
	ld a, a                                          ; $489f: $7f
	ld [hl], b                                       ; $48a0: $70
	and h                                            ; $48a1: $a4
	sbc c                                            ; $48a2: $99
	ld c, $fa                                        ; $48a3: $0e $fa
	xor a                                            ; $48a5: $af
	rst SubAFromDE                                          ; $48a6: $df
	cp a                                             ; $48a7: $bf
	ld a, a                                          ; $48a8: $7f
	ld a, d                                          ; $48a9: $7a
	ld [$6d9a], a                                    ; $48aa: $ea $9a $6d
	ret c                                            ; $48ad: $d8

	ccf                                              ; $48ae: $3f
	ld h, b                                          ; $48af: $60
	ret nz                                           ; $48b0: $c0

	ld a, e                                          ; $48b1: $7b
	ld hl, sp+$77                                    ; $48b2: $f8 $77
	ldh [c], a                                       ; $48b4: $e2
	sbc [hl]                                         ; $48b5: $9e
	ld hl, sp+$7a                                    ; $48b6: $f8 $7a
	sbc $8f                                          ; $48b8: $de $8f
	inc b                                            ; $48ba: $04
	jr c, @-$1d                                      ; $48bb: $38 $e1

	rlca                                             ; $48bd: $07
	ccf                                              ; $48be: $3f

jr_055_48bf:
	rst $38                                          ; $48bf: $ff
	rra                                              ; $48c0: $1f
	rst $38                                          ; $48c1: $ff
	inc b                                            ; $48c2: $04
	ret nz                                           ; $48c3: $c0

	rlca                                             ; $48c4: $07
	ret nz                                           ; $48c5: $c0

	db $10                                           ; $48c6: $10
	inc bc                                           ; $48c7: $03
	ld [$7900], sp                                   ; $48c8: $08 $00 $79
	add d                                            ; $48cb: $82
	ld a, a                                          ; $48cc: $7f
	call nz, $fc9e                                   ; $48cd: $c4 $9e $fc
	ld a, b                                          ; $48d0: $78
	sub $f2                                          ; $48d1: $d6 $f2
	ld a, d                                          ; $48d3: $7a
	rst JumpTable                                          ; $48d4: $c7
	ld d, e                                          ; $48d5: $53
	ld hl, sp-$65                                    ; $48d6: $f8 $9b
	dec h                                            ; $48d8: $25
	inc h                                            ; $48d9: $24
	ld h, $05                                        ; $48da: $26 $05
	ld a, e                                          ; $48dc: $7b
	daa                                              ; $48dd: $27
	sbc [hl]                                         ; $48de: $9e
	jr nz, jr_055_48bf                               ; $48df: $20 $de

	inc h                                            ; $48e1: $24
	sbc l                                            ; $48e2: $9d
	ld b, $07                                        ; $48e3: $06 $07
	ld a, e                                          ; $48e5: $7b
	ld h, $8f                                        ; $48e6: $26 $8f
	or a                                             ; $48e8: $b7
	jp c, $dcf8                                      ; $48e9: $da $f8 $dc

	db $ec                                           ; $48ec: $ec
	db $fc                                           ; $48ed: $fc
	db $f4                                           ; $48ee: $f4
	ld a, h                                          ; $48ef: $7c
	pop bc                                           ; $48f0: $c1
	ld h, l                                          ; $48f1: $65
	daa                                              ; $48f2: $27
	inc sp                                           ; $48f3: $33
	dec de                                           ; $48f4: $1b
	dec bc                                           ; $48f5: $0b
	rrca                                             ; $48f6: $0f
	add a                                            ; $48f7: $87
	ld a, b                                          ; $48f8: $78
	ld e, c                                          ; $48f9: $59
	adc c                                            ; $48fa: $89
	call nc, $d8d8                                   ; $48fb: $d4 $d8 $d8
	ret nc                                           ; $48fe: $d0

	ldh a, [$c6]                                     ; $48ff: $f0 $c6
	rst JumpTable                                          ; $4901: $c7
	add $ec                                          ; $4902: $c6 $ec
	add sp, -$18                                     ; $4904: $e8 $e8
	ldh a, [$f0]                                     ; $4906: $f0 $f0
	jp $0787                                         ; $4908: $c3 $87 $07


	rrca                                             ; $490b: $0f
	ld a, $3e                                        ; $490c: $3e $3e
	ld e, $1c                                        ; $490e: $1e $1c
	add b                                            ; $4910: $80
	halt                                             ; $4911: $76
	add d                                            ; $4912: $82
	ld a, [hl]                                       ; $4913: $7e
	ld d, a                                          ; $4914: $57
	sub c                                            ; $4915: $91
	nop                                              ; $4916: $00
	rst GetHLinHL                                          ; $4917: $cf
	sbc a                                            ; $4918: $9f
	sbc a                                            ; $4919: $9f
	ccf                                              ; $491a: $3f
	ld a, a                                          ; $491b: $7f
	ld a, a                                          ; $491c: $7f
	rst $38                                          ; $491d: $ff
	rst $38                                          ; $491e: $ff
	adc a                                            ; $491f: $8f
	rlca                                             ; $4920: $07
	rlca                                             ; $4921: $07
	inc b                                            ; $4922: $04
	ld [$b87b], sp                                   ; $4923: $08 $7b $b8
	sub b                                            ; $4926: $90
	db $fc                                           ; $4927: $fc
	rst GetHLinHL                                          ; $4928: $cf
	db $e3                                           ; $4929: $e3
	ret nc                                           ; $492a: $d0

	ret z                                            ; $492b: $c8

	add $c1                                          ; $492c: $c6 $c1
	ret nz                                           ; $492e: $c0

	sbc b                                            ; $492f: $98
	add $e1                                          ; $4930: $c6 $e1
	ldh a, [$78]                                     ; $4932: $f0 $78
	ld a, [hl]                                       ; $4934: $7e
	ld a, a                                          ; $4935: $7f
	ld a, b                                          ; $4936: $78
	add sp, -$6b                                     ; $4937: $e8 $95
	cp $fc                                           ; $4939: $fe $fc
	jr jr_055_496d                                   ; $493b: $18 $30

	ret nz                                           ; $493d: $c0

	pop hl                                           ; $493e: $e1
	inc bc                                           ; $493f: $03
	rrca                                             ; $4940: $0f
	rst $38                                          ; $4941: $ff
	ccf                                              ; $4942: $3f
	ld a, d                                          ; $4943: $7a
	ret z                                            ; $4944: $c8

	ld a, [hl]                                       ; $4945: $7e
	rst JumpTable                                          ; $4946: $c7
	rst SubAFromDE                                          ; $4947: $df
	rst $38                                          ; $4948: $ff
	sub c                                            ; $4949: $91
	ldh [$e7], a                                     ; $494a: $e0 $e7
	rst $38                                          ; $494c: $ff
	cp $80                                           ; $494d: $fe $80
	ldh a, [$fc]                                     ; $494f: $f0 $fc
	db $e3                                           ; $4951: $e3
	ret nz                                           ; $4952: $c0

	ret nz                                           ; $4953: $c0

	rst $38                                          ; $4954: $ff
	add b                                            ; $4955: $80
	nop                                              ; $4956: $00
	inc bc                                           ; $4957: $03
	ld a, d                                          ; $4958: $7a
	dec e                                            ; $4959: $1d
	sbc h                                            ; $495a: $9c
	ldh [$f8], a                                     ; $495b: $e0 $f8
	rlca                                             ; $495d: $07
	ld a, c                                          ; $495e: $79
	ld h, $7c                                        ; $495f: $26 $7c
	push de                                          ; $4961: $d5
	halt                                             ; $4962: $76
	ld d, $9a                                        ; $4963: $16 $9a
	cp $3e                                           ; $4965: $fe $3e
	adc [hl]                                         ; $4967: $8e
	ld c, [hl]                                       ; $4968: $4e
	ld a, [hl]                                       ; $4969: $7e
	ld a, c                                          ; $496a: $79
	sub h                                            ; $496b: $94
	sbc h                                            ; $496c: $9c

jr_055_496d:
	ld a, [hl]                                       ; $496d: $7e
	ld e, $0e                                        ; $496e: $1e $0e
	sbc $06                                          ; $4970: $de $06
	add b                                            ; $4972: $80
	ld [bc], a                                       ; $4973: $02
	inc bc                                           ; $4974: $03
	inc b                                            ; $4975: $04
	nop                                              ; $4976: $00
	ld [$6713], sp                                   ; $4977: $08 $13 $67
	ld b, [hl]                                       ; $497a: $46
	ld c, l                                          ; $497b: $4d
	ld e, b                                          ; $497c: $58
	ret                                              ; $497d: $c9


	pop bc                                           ; $497e: $c1
	pop bc                                           ; $497f: $c1
	ret                                              ; $4980: $c9


	jp c, $f8fc                                      ; $4981: $da $fc $f8

	ldh a, [c]                                       ; $4984: $f2
	ld d, a                                          ; $4985: $57
	or d                                             ; $4986: $b2

jr_055_4987:
	ldh a, [c]                                       ; $4987: $f2
	ld h, c                                          ; $4988: $61
	ld h, c                                          ; $4989: $61
	ld b, c                                          ; $498a: $41
	ld b, b                                          ; $498b: $40
	adc [hl]                                         ; $498c: $8e
	rst AddAOntoHL                                          ; $498d: $ef
	rst GetHLinHL                                          ; $498e: $cf
	adc a                                            ; $498f: $8f
	rra                                              ; $4990: $1f
	rra                                              ; $4991: $1f
	rst SubAFromDE                                          ; $4992: $df
	ccf                                              ; $4993: $3f
	sbc c                                            ; $4994: $99
	ld [hl], c                                       ; $4995: $71
	ccf                                              ; $4996: $3f
	rst AddAOntoHL                                          ; $4997: $ef
	rra                                              ; $4998: $1f
	rrca                                             ; $4999: $0f
	rrca                                             ; $499a: $0f
	sbc $87                                          ; $499b: $de $87
	sbc l                                            ; $499d: $9d
	ret nz                                           ; $499e: $c0

	ldh a, [$75]                                     ; $499f: $f0 $75
	push de                                          ; $49a1: $d5
	rst SubAFromDE                                          ; $49a2: $df
	add b                                            ; $49a3: $80
	sbc e                                            ; $49a4: $9b
	rst $38                                          ; $49a5: $ff
	db $fc                                           ; $49a6: $fc
	rst $38                                          ; $49a7: $ff
	add b                                            ; $49a8: $80
	ld [hl], b                                       ; $49a9: $70
	ld d, b                                          ; $49aa: $50
	ld a, h                                          ; $49ab: $7c
	call $ce76                                       ; $49ac: $cd $76 $ce
	sbc h                                            ; $49af: $9c
	nop                                              ; $49b0: $00
	ret c                                            ; $49b1: $d8

	ldh [$db], a                                     ; $49b2: $e0 $db

Jump_055_49b4:
	add b                                            ; $49b4: $80
	sbc [hl]                                         ; $49b5: $9e
	jr c, @+$6d                                      ; $49b6: $38 $6b

	ld hl, sp+$78                                    ; $49b8: $f8 $78
	adc [hl]                                         ; $49ba: $8e
	rst $38                                          ; $49bb: $ff
	ld a, h                                          ; $49bc: $7c
	ld e, a                                          ; $49bd: $5f
	ei                                               ; $49be: $fb
	ld a, e                                          ; $49bf: $7b
	ld sp, hl                                        ; $49c0: $f9
	sub h                                            ; $49c1: $94
	ld b, $30                                        ; $49c2: $06 $30
	nop                                              ; $49c4: $00
	jr c, jr_055_4987                                ; $49c5: $38 $c0

	nop                                              ; $49c7: $00
	add b                                            ; $49c8: $80
	ld h, b                                          ; $49c9: $60
	ld bc, rIF                                     ; $49ca: $01 $0f $ff
	ld a, d                                          ; $49cd: $7a
	ret nz                                           ; $49ce: $c0

	adc l                                            ; $49cf: $8d
	ld a, a                                          ; $49d0: $7f
	rra                                              ; $49d1: $1f
	jr c, @+$03                                      ; $49d2: $38 $01

	ld b, $10                                        ; $49d4: $06 $10
	nop                                              ; $49d6: $00
	ld b, $70                                        ; $49d7: $06 $70
	ld e, $c0                                        ; $49d9: $1e $c0
	cp $f8                                           ; $49db: $fe $f8
	ldh [rIE], a                                     ; $49dd: $e0 $ff
	ld hl, sp-$80                                    ; $49df: $f8 $80
	ldh [$75], a                                     ; $49e1: $e0 $75
	adc [hl]                                         ; $49e3: $8e
	jr nz, jr_055_4a29                               ; $49e4: $20 $43

	cp $92                                           ; $49e6: $fe $92
	ld l, $5f                                        ; $49e8: $2e $5f
	ld h, e                                          ; $49ea: $63
	ld h, b                                          ; $49eb: $60
	ld h, b                                          ; $49ec: $60
	ld l, b                                          ; $49ed: $68
	ld l, b                                          ; $49ee: $68
	ld h, b                                          ; $49ef: $60
	ld sp, $4c60                                     ; $49f0: $31 $60 $4c
	ld c, a                                          ; $49f3: $4f
	ld c, a                                          ; $49f4: $4f
	sbc $47                                          ; $49f5: $de $47
	adc a                                            ; $49f7: $8f
	ld a, [hl-]                                      ; $49f8: $3a
	ld e, $8d                                        ; $49f9: $1e $8d
	push bc                                          ; $49fb: $c5
	ld h, b                                          ; $49fc: $60
	jr z, jr_055_4a13                                ; $49fd: $28 $14

	ld a, [bc]                                       ; $49ff: $0a
	rst JumpTable                                          ; $4a00: $c7
	db $e3                                           ; $4a01: $e3
	ld [hl], e                                       ; $4a02: $73
	dec sp                                           ; $4a03: $3b
	sbc a                                            ; $4a04: $9f
	rst SubAFromDE                                          ; $4a05: $df
	rst AddAOntoHL                                          ; $4a06: $ef
	rst FarCall                                          ; $4a07: $f7
	ld [hl], b                                       ; $4a08: $70
	and e                                            ; $4a09: $a3
	sbc $c0                                          ; $4a0a: $de $c0
	ld l, a                                          ; $4a0c: $6f
	ld a, [$ff78]                                    ; $4a0d: $fa $78 $ff
	ldh a, [c]                                       ; $4a10: $f2
	rst SubAFromDE                                          ; $4a11: $df
	ld a, a                                          ; $4a12: $7f

jr_055_4a13:
	sbc l                                            ; $4a13: $9d
	rst GetHLinHL                                          ; $4a14: $cf
	rlca                                             ; $4a15: $07
	ld [hl], h                                       ; $4a16: $74
	ld [hl], e                                       ; $4a17: $73
	sbc [hl]                                         ; $4a18: $9e
	ld hl, $6f6a                                     ; $4a19: $21 $6a $6f
	sbc d                                            ; $4a1c: $9a
	pop bc                                           ; $4a1d: $c1
	db $e3                                           ; $4a1e: $e3
	rst SubAFromBC                                          ; $4a1f: $e7
	rst SubAFromBC                                          ; $4a20: $e7
	rst JumpTable                                          ; $4a21: $c7
	sbc $cf                                          ; $4a22: $de $cf
	sub e                                            ; $4a24: $93
	ld a, a                                          ; $4a25: $7f
	ccf                                              ; $4a26: $3f
	ld a, $3c                                        ; $4a27: $3e $3c

jr_055_4a29:
	ld a, h                                          ; $4a29: $7c
	ld a, b                                          ; $4a2a: $78
	ld a, b                                          ; $4a2b: $78
	ld a, h                                          ; $4a2c: $7c
	pop hl                                           ; $4a2d: $e1
	pop af                                           ; $4a2e: $f1
	ldh a, [$f1]                                     ; $4a2f: $f0 $f1
	sbc $f9                                          ; $4a31: $de $f9
	ld a, a                                          ; $4a33: $7f
	ld a, [hl+]                                      ; $4a34: $2a
	ld a, [hl]                                       ; $4a35: $7e
	jp nz, $9f70                                     ; $4a36: $c2 $70 $9f

	sbc h                                            ; $4a39: $9c
	add a                                            ; $4a3a: $87
	rst $38                                          ; $4a3b: $ff
	ldh a, [$7b]                                     ; $4a3c: $f0 $7b
	ld [hl], c                                       ; $4a3e: $71
	sbc e                                            ; $4a3f: $9b
	cp b                                             ; $4a40: $b8
	ld hl, sp+$01                                    ; $4a41: $f8 $01
	cp $77                                           ; $4a43: $fe $77
	ld l, d                                          ; $4a45: $6a
	sbc b                                            ; $4a46: $98
	db $10                                           ; $4a47: $10
	sub b                                            ; $4a48: $90
	db $e3                                           ; $4a49: $e3
	add e                                            ; $4a4a: $83
	rlca                                             ; $4a4b: $07
	ld a, a                                          ; $4a4c: $7f

jr_055_4a4d:
	ccf                                              ; $4a4d: $3f
	ld a, e                                          ; $4a4e: $7b
	db $e4                                           ; $4a4f: $e4
	ld sp, hl                                        ; $4a50: $f9
	reti                                             ; $4a51: $d9


	rst $38                                          ; $4a52: $ff
	sbc $03                                          ; $4a53: $de $03
	call c, $8201                                    ; $4a55: $dc $01 $82
	ld h, b                                          ; $4a58: $60
	pop bc                                           ; $4a59: $c1
	sub b                                            ; $4a5a: $90
	and b                                            ; $4a5b: $a0
	pop bc                                           ; $4a5c: $c1
	add h                                            ; $4a5d: $84
	adc b                                            ; $4a5e: $88
	ret nc                                           ; $4a5f: $d0

	db $fc                                           ; $4a60: $fc
	ld hl, sp-$20                                    ; $4a61: $f8 $e0
	ret nz                                           ; $4a63: $c0

	add b                                            ; $4a64: $80
	add e                                            ; $4a65: $83
	rlca                                             ; $4a66: $07
	rrca                                             ; $4a67: $0f
	ld a, [hl]                                       ; $4a68: $7e
	ld a, [$4c36]                                    ; $4a69: $fa $36 $4c
	inc b                                            ; $4a6c: $04
	db $10                                           ; $4a6d: $10
	jr z, jr_055_4a81                                ; $4a6e: $28 $11

	add c                                            ; $4a70: $81
	dec b                                            ; $4a71: $05
	add hl, bc                                       ; $4a72: $09
	inc sp                                           ; $4a73: $33
	di                                               ; $4a74: $f3
	ld a, e                                          ; $4a75: $7b
	sub [hl]                                         ; $4a76: $96
	rst SubAFromDE                                          ; $4a77: $df
	add [hl]                                         ; $4a78: $86
	add c                                            ; $4a79: $81
	adc l                                            ; $4a7a: $8d
	sbc e                                            ; $4a7b: $9b
	or a                                             ; $4a7c: $b7
	rst AddAOntoHL                                          ; $4a7d: $ef
	rst SubAFromDE                                          ; $4a7e: $df
	rst $38                                          ; $4a7f: $ff
	add c                                            ; $4a80: $81

jr_055_4a81:
	add e                                            ; $4a81: $83
	add [hl]                                         ; $4a82: $86
	adc h                                            ; $4a83: $8c
	sbc b                                            ; $4a84: $98
	or b                                             ; $4a85: $b0
	ldh [$c0], a                                     ; $4a86: $e0 $c0
	cp [hl]                                          ; $4a88: $be
	rst $38                                          ; $4a89: $ff
	rst $38                                          ; $4a8a: $ff
	db $fd                                           ; $4a8b: $fd
	cp $fa                                           ; $4a8c: $fe $fa
	db $fc                                           ; $4a8e: $fc
	db $f4                                           ; $4a8f: $f4
	pop bc                                           ; $4a90: $c1
	ld bc, $0301                                     ; $4a91: $01 $01 $03
	ld [bc], a                                       ; $4a94: $02
	ld b, $04                                        ; $4a95: $06 $04
	inc c                                            ; $4a97: $0c
	ld h, a                                          ; $4a98: $67
	ld c, a                                          ; $4a99: $4f
	ld h, a                                          ; $4a9a: $67
	ld hl, sp-$69                                    ; $4a9b: $f8 $97
	inc b                                            ; $4a9d: $04
	ld bc, $0800                                     ; $4a9e: $01 $00 $08
	ld bc, $0900                                     ; $4aa1: $01 $00 $09
	ld [bc], a                                       ; $4aa4: $02
	ld a, d                                          ; $4aa5: $7a
	cp d                                             ; $4aa6: $ba
	ld a, e                                          ; $4aa7: $7b
	ld c, c                                          ; $4aa8: $49
	ld a, [hl]                                       ; $4aa9: $7e
	or a                                             ; $4aaa: $b7
	sbc d                                            ; $4aab: $9a
	inc e                                            ; $4aac: $1c
	nop                                              ; $4aad: $00
	ld b, b                                          ; $4aae: $40
	ld a, b                                          ; $4aaf: $78
	nop                                              ; $4ab0: $00
	ld a, d                                          ; $4ab1: $7a
	reti                                             ; $4ab2: $d9


	ld a, h                                          ; $4ab3: $7c
	xor a                                            ; $4ab4: $af
	sbc l                                            ; $4ab5: $9d
	ccf                                              ; $4ab6: $3f
	add a                                            ; $4ab7: $87
	ld a, d                                          ; $4ab8: $7a
	pop bc                                           ; $4ab9: $c1
	ld a, d                                          ; $4aba: $7a
	ld a, e                                          ; $4abb: $7b
	sub h                                            ; $4abc: $94
	ld [bc], a                                       ; $4abd: $02
	rra                                              ; $4abe: $1f
	ld h, b                                          ; $4abf: $60
	ld bc, $1f04                                     ; $4ac0: $01 $04 $1f
	rst $38                                          ; $4ac3: $ff
	rst $38                                          ; $4ac4: $ff
	db $fc                                           ; $4ac5: $fc
	ldh [$9f], a                                     ; $4ac6: $e0 $9f
	ld a, d                                          ; $4ac8: $7a
	cp h                                             ; $4ac9: $bc
	sub a                                            ; $4aca: $97
	jr nc, jr_055_4a4d                               ; $4acb: $30 $80

	inc e                                            ; $4acd: $1c
	db $10                                           ; $4ace: $10
	ld b, b                                          ; $4acf: $40
	nop                                              ; $4ad0: $00
	ld a, $04                                        ; $4ad1: $3e $04
	ld a, e                                          ; $4ad3: $7b
	ld d, d                                          ; $4ad4: $52
	ld a, [hl]                                       ; $4ad5: $7e
	ld a, [hl]                                       ; $4ad6: $7e
	ld a, c                                          ; $4ad7: $79
	inc l                                            ; $4ad8: $2c
	pop af                                           ; $4ad9: $f1
	sub h                                            ; $4ada: $94
	ld b, h                                          ; $4adb: $44
	ld d, h                                          ; $4adc: $54
	ld d, d                                          ; $4add: $52
	ld c, b                                          ; $4ade: $48
	ld c, b                                          ; $4adf: $48
	ld c, h                                          ; $4ae0: $4c
	sbc h                                            ; $4ae1: $9c
	sbc [hl]                                         ; $4ae2: $9e
	ld h, e                                          ; $4ae3: $63
	ld h, e                                          ; $4ae4: $63
	ld h, c                                          ; $4ae5: $61
	sbc $70                                          ; $4ae6: $de $70
	rst SubAFromDE                                          ; $4ae8: $df
	ldh [$97], a                                     ; $4ae9: $e0 $97
	dec b                                            ; $4aeb: $05
	ld bc, $9f00                                     ; $4aec: $01 $00 $9f
	ld h, e                                          ; $4aef: $63
	jr c, jr_055_4b0e                                ; $4af0: $38 $1c

	rrca                                             ; $4af2: $0f
	ld a, b                                          ; $4af3: $78
	jp $b27f                                         ; $4af4: $c3 $7f $b2


	ld a, l                                          ; $4af7: $7d
	jp hl                                            ; $4af8: $e9


	sbc [hl]                                         ; $4af9: $9e
	inc bc                                           ; $4afa: $03
	db $db                                           ; $4afb: $db
	ret nz                                           ; $4afc: $c0

	sbc l                                            ; $4afd: $9d
	pop bc                                           ; $4afe: $c1
	jp $80da                                         ; $4aff: $c3 $da $80


	ld b, d                                          ; $4b02: $42
	ld [hl], l                                       ; $4b03: $75
	sbc $01                                          ; $4b04: $de $01
	ld a, b                                          ; $4b06: $78
	ld [hl], a                                       ; $4b07: $77
	ld a, l                                          ; $4b08: $7d
	ld [hl], b                                       ; $4b09: $70
	ld [hl], a                                       ; $4b0a: $77
	or $7d                                           ; $4b0b: $f6 $7d
	ld [hl], b                                       ; $4b0d: $70

jr_055_4b0e:
	ld a, l                                          ; $4b0e: $7d
	ld a, a                                          ; $4b0f: $7f
	sbc e                                            ; $4b10: $9b
	rst GetHLinHL                                          ; $4b11: $cf
	rst SubAFromDE                                          ; $4b12: $df
	ld e, a                                          ; $4b13: $5f
	ld a, a                                          ; $4b14: $7f

jr_055_4b15:
	ld a, d                                          ; $4b15: $7a
	rst AddAOntoHL                                          ; $4b16: $ef
	sub l                                            ; $4b17: $95
	ccf                                              ; $4b18: $3f
	db $fd                                           ; $4b19: $fd
	rst $38                                          ; $4b1a: $ff
	cp $7c                                           ; $4b1b: $fe $7c
	ld a, h                                          ; $4b1d: $7c
	ld a, b                                          ; $4b1e: $78
	jr c, jr_055_4b51                                ; $4b1f: $38 $30

	db $fc                                           ; $4b21: $fc
	ld a, c                                          ; $4b22: $79
	or h                                             ; $4b23: $b4
	rst SubAFromDE                                          ; $4b24: $df
	rst $38                                          ; $4b25: $ff
	rst SubAFromDE                                          ; $4b26: $df
	ld a, [$b97c]                                    ; $4b27: $fa $7c $b9
	sbc $df                                          ; $4b2a: $de $df
	adc h                                            ; $4b2c: $8c
	ld e, a                                          ; $4b2d: $5f
	ld c, a                                          ; $4b2e: $4f
	ld c, [hl]                                       ; $4b2f: $4e
	ld hl, sp-$04                                    ; $4b30: $f8 $fc
	call z, $068e                                    ; $4b32: $cc $8e $06
	rst JumpTable                                          ; $4b35: $c7
	inc de                                           ; $4b36: $13
	dec bc                                           ; $4b37: $0b
	ret z                                            ; $4b38: $c8

	ld hl, sp-$04                                    ; $4b39: $f8 $fc
	db $fc                                           ; $4b3b: $fc
	cp $3e                                           ; $4b3c: $fe $3e
	rrca                                             ; $4b3e: $0f
	rlca                                             ; $4b3f: $07
	db $dd                                           ; $4b40: $dd
	rra                                              ; $4b41: $1f
	rst SubAFromDE                                          ; $4b42: $df
	rrca                                             ; $4b43: $0f
	sbc l                                            ; $4b44: $9d
	rlca                                             ; $4b45: $07
	add a                                            ; $4b46: $87
	ld b, [hl]                                       ; $4b47: $46
	ret nz                                           ; $4b48: $c0

	sbc $01                                          ; $4b49: $de $01
	db $fc                                           ; $4b4b: $fc
	sub a                                            ; $4b4c: $97
	ldh [$c1], a                                     ; $4b4d: $e0 $c1
	add e                                            ; $4b4f: $83
	adc a                                            ; $4b50: $8f

jr_055_4b51:
	rst FarCall                                          ; $4b51: $f7
	add b                                            ; $4b52: $80
	add $71                                          ; $4b53: $c6 $71
	ld [hl], c                                       ; $4b55: $71
	ld b, h                                          ; $4b56: $44
	ld a, l                                          ; $4b57: $7d
	add hl, sp                                       ; $4b58: $39
	add b                                            ; $4b59: $80
	ldh a, [$c2]                                     ; $4b5a: $f0 $c2
	daa                                              ; $4b5c: $27
	cp $0d                                           ; $4b5d: $fe $0d
	sub d                                            ; $4b5f: $92
	rst SubAFromHL                                          ; $4b60: $d7
	ccf                                              ; $4b61: $3f
	jp $9f9f                                         ; $4b62: $c3 $9f $9f


	db $fc                                           ; $4b65: $fc
	ld hl, sp+$79                                    ; $4b66: $f8 $79
	inc sp                                           ; $4b68: $33
	rst $38                                          ; $4b69: $ff
	ld a, $ff                                        ; $4b6a: $3e $ff
	ld a, a                                          ; $4b6c: $7f
	cp a                                             ; $4b6d: $bf
	ld a, a                                          ; $4b6e: $7f
	or a                                             ; $4b6f: $b7
	ld [hl], a                                       ; $4b70: $77
	and $28                                          ; $4b71: $e6 $28
	jr nz, jr_055_4b15                               ; $4b73: $20 $a0

	ldh [$f8], a                                     ; $4b75: $e0 $f8
	call z, $908c                                    ; $4b77: $cc $8c $90
	db $dd                                           ; $4b7a: $dd
	ld a, a                                          ; $4b7b: $7f
	ld hl, sp-$18                                    ; $4b7c: $f8 $e8
	ldh a, [$d0]                                     ; $4b7e: $f0 $d0
	and b                                            ; $4b80: $a0
	jr nz, @+$42                                     ; $4b81: $20 $40

	add b                                            ; $4b83: $80
	ld [$1018], sp                                   ; $4b84: $08 $18 $10

Call_055_4b87:
	jr nc, jr_055_4be9                               ; $4b87: $30 $60

	ld a, d                                          ; $4b89: $7a
	adc l                                            ; $4b8a: $8d
	ld l, c                                          ; $4b8b: $69
	sbc c                                            ; $4b8c: $99
	ld a, b                                          ; $4b8d: $78
	sub $fb                                          ; $4b8e: $d6 $fb
	sub a                                            ; $4b90: $97
	jr nc, jr_055_4ba2                               ; $4b91: $30 $0f

	inc a                                            ; $4b93: $3c
	inc bc                                           ; $4b94: $03
	ld [$8be4], sp                                   ; $4b95: $08 $e4 $8b
	ld b, c                                          ; $4b98: $41
	ld a, c                                          ; $4b99: $79
	ld a, b                                          ; $4b9a: $78
	sbc d                                            ; $4b9b: $9a
	inc e                                            ; $4b9c: $1c
	rlca                                             ; $4b9d: $07
	inc bc                                           ; $4b9e: $03
	ld [hl], b                                       ; $4b9f: $70
	ld a, $6b                                        ; $4ba0: $3e $6b

jr_055_4ba2:
	ld l, $9d                                        ; $4ba2: $2e $9d
	add b                                            ; $4ba4: $80
	ld a, a                                          ; $4ba5: $7f
	ld a, e                                          ; $4ba6: $7b
	and b                                            ; $4ba7: $a0
	sbc $ff                                          ; $4ba8: $de $ff
	ld [hl], l                                       ; $4baa: $75
	ld c, h                                          ; $4bab: $4c
	ld a, d                                          ; $4bac: $7a
	and l                                            ; $4bad: $a5
	ld [hl], e                                       ; $4bae: $73
	ld a, b                                          ; $4baf: $78
	ld a, [hl]                                       ; $4bb0: $7e
	inc c                                            ; $4bb1: $0c
	sbc $ff                                          ; $4bb2: $de $ff
	adc a                                            ; $4bb4: $8f
	ld [$e223], sp                                   ; $4bb5: $08 $23 $e2
	inc b                                            ; $4bb8: $04
	ld [$3a13], sp                                   ; $4bb9: $08 $13 $3a
	ld h, h                                          ; $4bbc: $64
	ldh a, [$c0]                                     ; $4bbd: $f0 $c0
	inc e                                            ; $4bbf: $1c
	ld hl, sp-$10                                    ; $4bc0: $f8 $f0
	ldh [$c4], a                                     ; $4bc2: $e0 $c4
	sbc b                                            ; $4bc4: $98
	ld a, e                                          ; $4bc5: $7b
	ld a, [de]                                       ; $4bc6: $1a
	sbc d                                            ; $4bc7: $9a
	inc bc                                           ; $4bc8: $03
	dec b                                            ; $4bc9: $05
	ld e, $33                                        ; $4bca: $1e $33
	daa                                              ; $4bcc: $27
	ld [hl], d                                       ; $4bcd: $72
	ld h, c                                          ; $4bce: $61
	adc a                                            ; $4bcf: $8f
	rra                                              ; $4bd0: $1f
	ld hl, $0f20                                     ; $4bd1: $21 $20 $0f
	rlca                                             ; $4bd4: $07
	inc bc                                           ; $4bd5: $03
	ld hl, sp+$06                                    ; $4bd6: $f8 $06
	ld bc, $1ce1                                     ; $4bd8: $01 $e1 $1c
	ldh a, [$f8]                                     ; $4bdb: $f0 $f8
	db $fc                                           ; $4bdd: $fc
	nop                                              ; $4bde: $00
	ld hl, sp+$7b                                    ; $4bdf: $f8 $7b
	dec d                                            ; $4be1: $15
	sub l                                            ; $4be2: $95
	rra                                              ; $4be3: $1f
	ldh [c], a                                       ; $4be4: $e2
	inc b                                            ; $4be5: $04
	inc c                                            ; $4be6: $0c
	jr @+$32                                         ; $4be7: $18 $30

jr_055_4be9:
	ldh [$e0], a                                     ; $4be9: $e0 $e0
	rra                                              ; $4beb: $1f
	db $e3                                           ; $4bec: $e3
	ld [hl], h                                       ; $4bed: $74
	ld [hl-], a                                      ; $4bee: $32
	rst SubAFromDE                                          ; $4bef: $df
	rst $38                                          ; $4bf0: $ff
	sub [hl]                                         ; $4bf1: $96
	ld [hl], $1e                                     ; $4bf2: $36 $1e
	rlca                                             ; $4bf4: $07
	ld bc, $0f0e                                     ; $4bf5: $01 $0e $0f
	adc a                                            ; $4bf8: $8f
	ld c, c                                          ; $4bf9: $49
	ldh [rPCM34], a                                  ; $4bfa: $e0 $77
	db $e3                                           ; $4bfc: $e3
	ld [hl], h                                       ; $4bfd: $74
	add sp, -$68                                     ; $4bfe: $e8 $98
	ld bc, $ff07                                     ; $4c00: $01 $07 $ff
	rst $38                                          ; $4c03: $ff
	cp $fe                                           ; $4c04: $fe $fe

jr_055_4c06:
	db $fc                                           ; $4c06: $fc
	cp $9d                                           ; $4c07: $fe $9d
	add c                                            ; $4c09: $81
	db $e3                                           ; $4c0a: $e3
	sbc $ff                                          ; $4c0b: $de $ff
	adc a                                            ; $4c0d: $8f
	ld l, h                                          ; $4c0e: $6c
	ret z                                            ; $4c0f: $c8

	sbc c                                            ; $4c10: $99
	ld [de], a                                       ; $4c11: $12
	dec [hl]                                         ; $4c12: $35
	add hl, sp                                       ; $4c13: $39
	ld [hl], e                                       ; $4c14: $73
	ld h, a                                          ; $4c15: $67
	jr nc, jr_055_4c88                               ; $4c16: $30 $70

	ldh [$e1], a                                     ; $4c18: $e0 $e1
	jp nz, $8cc6                                     ; $4c1a: $c2 $c6 $8c

	sbc b                                            ; $4c1d: $98
	ld a, c                                          ; $4c1e: $79
	or l                                             ; $4c1f: $b5
	sbc $0f                                          ; $4c20: $de $0f
	rst SubAFromDE                                          ; $4c22: $df
	rlca                                             ; $4c23: $07
	rst SubAFromDE                                          ; $4c24: $df
	jr nc, jr_055_4c06                               ; $4c25: $30 $df

	jr @-$1f                                         ; $4c27: $18 $df

	ld [$0c98], sp                                   ; $4c29: $08 $98 $0c
	ld b, $fc                                        ; $4c2c: $06 $fc
	db $fc                                           ; $4c2e: $fc
	ld hl, sp-$08                                    ; $4c2f: $f8 $f8
	ldh a, [$79]                                     ; $4c31: $f0 $79
	dec sp                                           ; $4c33: $3b
	sbc h                                            ; $4c34: $9c

jr_055_4c35:
	ld c, [hl]                                       ; $4c35: $4e
	adc h                                            ; $4c36: $8c
	adc h                                            ; $4c37: $8c
	ld [hl], e                                       ; $4c38: $73
	dec l                                            ; $4c39: $2d
	ld a, c                                          ; $4c3a: $79
	xor d                                            ; $4c3b: $aa

jr_055_4c3c:
	sbc d                                            ; $4c3c: $9a
	dec b                                            ; $4c3d: $05
	dec c                                            ; $4c3e: $0d
	rra                                              ; $4c3f: $1f
	ld a, h                                          ; $4c40: $7c
	ld hl, sp-$24                                    ; $4c41: $f8 $dc
	inc bc                                           ; $4c43: $03

jr_055_4c44:
	ld a, a                                          ; $4c44: $7f
	ld a, h                                          ; $4c45: $7c
	sub e                                            ; $4c46: $93
	rlca                                             ; $4c47: $07
	jp $3061                                         ; $4c48: $c3 $61 $30


	jr c, @+$3e                                      ; $4c4b: $38 $3c

	ccf                                              ; $4c4d: $3f
	cp a                                             ; $4c4e: $bf
	cp a                                             ; $4c4f: $bf
	add b                                            ; $4c50: $80
	ret nz                                           ; $4c51: $c0

	ldh [$7b], a                                     ; $4c52: $e0 $7b
	ld a, l                                          ; $4c54: $7d
	call c, $9aff                                    ; $4c55: $dc $ff $9a
	ld a, [hl]                                       ; $4c58: $7e
	inc a                                            ; $4c59: $3c
	jr nc, jr_055_4c3c                               ; $4c5a: $30 $e0

	add c                                            ; $4c5c: $81
	ld a, e                                          ; $4c5d: $7b
	ld a, [bc]                                       ; $4c5e: $0a
	sbc l                                            ; $4c5f: $9d
	inc bc                                           ; $4c60: $03
	rrca                                             ; $4c61: $0f
	ld a, c                                          ; $4c62: $79
	ld a, [$ec7f]                                    ; $4c63: $fa $7f $ec
	sub a                                            ; $4c66: $97
	ld a, [hl]                                       ; $4c67: $7e
	ld a, a                                          ; $4c68: $7f
	ld a, a                                          ; $4c69: $7f
	rst AddAOntoHL                                          ; $4c6a: $ef
	rst AddAOntoHL                                          ; $4c6b: $ef
	rst GetHLinHL                                          ; $4c6c: $cf
	ld hl, sp-$04                                    ; $4c6d: $f8 $fc
	ld l, a                                          ; $4c6f: $6f
	add b                                            ; $4c70: $80
	add b                                            ; $4c71: $80
	ld c, $1f                                        ; $4c72: $0e $1f
	ld b, b                                          ; $4c74: $40
	and e                                            ; $4c75: $a3
	jp nz, $f3ee                                     ; $4c76: $c2 $ee $f3

	ld sp, hl                                        ; $4c79: $f9
	inc b                                            ; $4c7a: $04
	rrca                                             ; $4c7b: $0f

jr_055_4c7c:
	ccf                                              ; $4c7c: $3f
	ld b, c                                          ; $4c7d: $41
	add c                                            ; $4c7e: $81
	pop hl                                           ; $4c7f: $e1
	ldh a, [$f8]                                     ; $4c80: $f0 $f8
	ld a, l                                          ; $4c82: $7d
	push hl                                          ; $4c83: $e5
	push de                                          ; $4c84: $d5
	sbc d                                            ; $4c85: $9a
	or $84                                           ; $4c86: $f6 $84

jr_055_4c88:
	add sp, -$10                                     ; $4c88: $e8 $f0
	ccf                                              ; $4c8a: $3f
	rst $38                                          ; $4c8b: $ff
	sbc a                                            ; $4c8c: $9f
	ld a, $fe                                        ; $4c8d: $3e $fe
	db $fc                                           ; $4c8f: $fc
	sbc b                                            ; $4c90: $98
	sbc [hl]                                         ; $4c91: $9e
	sub b                                            ; $4c92: $90
	pop af                                           ; $4c93: $f1
	ld a, a                                          ; $4c94: $7f
	ld a, [de]                                       ; $4c95: $1a
	sbc c                                            ; $4c96: $99
	add hl, de                                       ; $4c97: $19
	ld c, d                                          ; $4c98: $4a
	ld [$9424], sp                                   ; $4c99: $08 $24 $94
	ld b, d                                          ; $4c9c: $42
	ld a, d                                          ; $4c9d: $7a
	cp e                                             ; $4c9e: $bb
	sub l                                            ; $4c9f: $95
	inc b                                            ; $4ca0: $04
	daa                                              ; $4ca1: $27
	inc de                                           ; $4ca2: $13
	dec bc                                           ; $4ca3: $0b
	dec c                                            ; $4ca4: $0d
	and b                                            ; $4ca5: $a0
	ld d, b                                          ; $4ca6: $50
	jr jr_055_4c35                                   ; $4ca7: $18 $8c

	add d                                            ; $4ca9: $82
	cp $9a                                           ; $4caa: $fe $9a
	rra                                              ; $4cac: $1f
	adc a                                            ; $4cad: $8f
	rst SubAFromBC                                          ; $4cae: $e7
	ld [hl], e                                       ; $4caf: $73
	ld a, l                                          ; $4cb0: $7d
	sbc $ff                                          ; $4cb1: $de $ff
	sbc [hl]                                         ; $4cb3: $9e
	ld h, b                                          ; $4cb4: $60
	ld a, [$9f9e]                                    ; $4cb5: $fa $9e $9f
	jp c, Jump_055_46ff                              ; $4cb8: $da $ff $46

	jr c, jr_055_4c44                                ; $4cbb: $38 $87

	add e                                            ; $4cbd: $83
	ld [$2112], sp                                   ; $4cbe: $08 $12 $21
	ld b, $0d                                        ; $4cc1: $06 $0d
	ld bc, $7801                                     ; $4cc3: $01 $01 $78
	or $ec                                           ; $4cc6: $f6 $ec
	call c, $f3f9                                    ; $4cc8: $dc $f9 $f3
	rst $38                                          ; $4ccb: $ff
	rst $38                                          ; $4ccc: $ff
	ld h, a                                          ; $4ccd: $67
	ld c, a                                          ; $4cce: $4f
	ld c, a                                          ; $4ccf: $4f
	rst GetHLinHL                                          ; $4cd0: $cf
	sbc a                                            ; $4cd1: $9f
	sbc a                                            ; $4cd2: $9f
	cp a                                             ; $4cd3: $bf
	cp a                                             ; $4cd4: $bf
	sbc $40                                          ; $4cd5: $de $40
	rst SubAFromDE                                          ; $4cd7: $df
	add b                                            ; $4cd8: $80
	cp $9d                                           ; $4cd9: $fe $9d
	adc l                                            ; $4cdb: $8d
	db $e3                                           ; $4cdc: $e3
	ld a, b                                          ; $4cdd: $78
	ei                                               ; $4cde: $fb
	adc h                                            ; $4cdf: $8c
	adc a                                            ; $4ce0: $8f
	sbc a                                            ; $4ce1: $9f
	ccf                                              ; $4ce2: $3f
	ld a, a                                          ; $4ce3: $7f
	rra                                              ; $4ce4: $1f
	rra                                              ; $4ce5: $1f
	ccf                                              ; $4ce6: $3f
	ccf                                              ; $4ce7: $3f
	ld a, a                                          ; $4ce8: $7f
	ld a, a                                          ; $4ce9: $7f
	rst $38                                          ; $4cea: $ff
	and b                                            ; $4ceb: $a0
	jr jr_055_4c7c                                   ; $4cec: $18 $8e

	jp $fcf1                                         ; $4cee: $c3 $f1 $fc


	rst $38                                          ; $4cf1: $ff
	ret nz                                           ; $4cf2: $c0

	reti                                             ; $4cf3: $d9


	rst $38                                          ; $4cf4: $ff
	sub a                                            ; $4cf5: $97
	ld a, h                                          ; $4cf6: $7c
	ld a, [hl]                                       ; $4cf7: $7e
	ccf                                              ; $4cf8: $3f
	inc e                                            ; $4cf9: $1c
	rst GetHLinHL                                          ; $4cfa: $cf
	ld a, a                                          ; $4cfb: $7f
	rra                                              ; $4cfc: $1f
	rrca                                             ; $4cfd: $0f
	reti                                             ; $4cfe: $d9


Call_055_4cff:
	rst $38                                          ; $4cff: $ff

jr_055_4d00:
	sbc l                                            ; $4d00: $9d
	cp $f9                                           ; $4d01: $fe $f9
	ld a, d                                          ; $4d03: $7a

jr_055_4d04:
	ldh a, [c]                                       ; $4d04: $f2
	sbc $c0                                          ; $4d05: $de $c0
	reti                                             ; $4d07: $d9


	rst $38                                          ; $4d08: $ff
	sub h                                            ; $4d09: $94
	rst JumpTable                                          ; $4d0a: $c7
	rrca                                             ; $4d0b: $0f
	sbc b                                            ; $4d0c: $98
	ret nz                                           ; $4d0d: $c0

	ld h, b                                          ; $4d0e: $60
	jr nc, jr_055_4d29                               ; $4d0f: $30 $18

	inc c                                            ; $4d11: $0c
	jr c, jr_055_4d04                                ; $4d12: $38 $f0

	rst SubAFromBC                                          ; $4d14: $e7
	call c, $8dff                                    ; $4d15: $dc $ff $8d
	ei                                               ; $4d18: $fb
	add e                                            ; $4d19: $83
	rlca                                             ; $4d1a: $07
	dec c                                            ; $4d1b: $0d
	rra                                              ; $4d1c: $1f
	ld a, $7f                                        ; $4d1d: $3e $7f
	ld a, a                                          ; $4d1f: $7f
	rlca                                             ; $4d20: $07
	ld a, a                                          ; $4d21: $7f
	ei                                               ; $4d22: $fb
	di                                               ; $4d23: $f3
	pop hl                                           ; $4d24: $e1
	pop bc                                           ; $4d25: $c1
	add b                                            ; $4d26: $80
	add b                                            ; $4d27: $80
	rst SubAFromDE                                          ; $4d28: $df

jr_055_4d29:
	cp a                                             ; $4d29: $bf
	ld a, d                                          ; $4d2a: $7a
	dec l                                            ; $4d2b: $2d
	sbc $80                                          ; $4d2c: $de $80
	ld a, c                                          ; $4d2e: $79
	push af                                          ; $4d2f: $f5
	call c, $9dff                                    ; $4d30: $dc $ff $9d
	ldh a, [$c1]                                     ; $4d33: $f0 $c1
	ld [hl], l                                       ; $4d35: $75
	ld e, d                                          ; $4d36: $5a
	ld a, l                                          ; $4d37: $7d
	rst SubAFromDE                                          ; $4d38: $df
	ld a, a                                          ; $4d39: $7f
	ld bc, $ffdb                                     ; $4d3a: $01 $db $ff
	sbc h                                            ; $4d3d: $9c
	rst SubAFromBC                                          ; $4d3e: $e7

Jump_055_4d3f:
	jp $dd41                                         ; $4d3f: $c3 $41 $dd


	ld b, b                                          ; $4d42: $40
	ld e, a                                          ; $4d43: $5f
	ld d, b                                          ; $4d44: $50
	rst SubAFromDE                                          ; $4d45: $df
	ret nz                                           ; $4d46: $c0

	sbc d                                            ; $4d47: $9a
	jp $40c0                                         ; $4d48: $c3 $c0 $40


	ld b, b                                          ; $4d4b: $40
	ld h, b                                          ; $4d4c: $60
	reti                                             ; $4d4d: $d9


	rst $38                                          ; $4d4e: $ff
	sbc e                                            ; $4d4f: $9b
	sbc a                                            ; $4d50: $9f
	add hl, sp                                       ; $4d51: $39
	ld h, e                                          ; $4d52: $63
	jp $03de                                         ; $4d53: $c3 $de $03


	sbc [hl]                                         ; $4d56: $9e
	ld [bc], a                                       ; $4d57: $02
	reti                                             ; $4d58: $d9


	rst $38                                          ; $4d59: $ff
	halt                                             ; $4d5a: $76
	cp c                                             ; $4d5b: $b9
	sbc e                                            ; $4d5c: $9b
	rst SubAFromBC                                          ; $4d5d: $e7
	add e                                            ; $4d5e: $83
	ld bc, $6a01                                     ; $4d5f: $01 $01 $6a
	or c                                             ; $4d62: $b1
	ld a, a                                          ; $4d63: $7f
	or b                                             ; $4d64: $b0
	rst SubAFromDE                                          ; $4d65: $df
	ld h, b                                          ; $4d66: $60
	rst SubAFromDE                                          ; $4d67: $df
	ldh a, [$79]                                     ; $4d68: $f0 $79
	inc [hl]                                         ; $4d6a: $34
	add b                                            ; $4d6b: $80
	ld [hl], b                                       ; $4d6c: $70
	ld h, b                                          ; $4d6d: $60
	jr nz, jr_055_4d00                               ; $4d6e: $20 $90

	sub b                                            ; $4d70: $90
	ret z                                            ; $4d71: $c8

	db $e4                                           ; $4d72: $e4
	db $e4                                           ; $4d73: $e4
	ld [bc], a                                       ; $4d74: $02
	ld bc, $8a05                                     ; $4d75: $01 $05 $8a
	ld b, c                                          ; $4d78: $41
	inc h                                            ; $4d79: $24
	ld [de], a                                       ; $4d7a: $12
	ld b, h                                          ; $4d7b: $44
	nop                                              ; $4d7c: $00
	db $10                                           ; $4d7d: $10
	ld [$8604], sp                                   ; $4d7e: $08 $04 $86
	ld b, e                                          ; $4d81: $43
	ld h, c                                          ; $4d82: $61
	add hl, sp                                       ; $4d83: $39
	ld d, b                                          ; $4d84: $50
	ld [$8020], sp                                   ; $4d85: $08 $20 $80
	nop                                              ; $4d88: $00
	ret nz                                           ; $4d89: $c0

	ld b, b                                          ; $4d8a: $40
	sub a                                            ; $4d8b: $97
	nop                                              ; $4d8c: $00
	daa                                              ; $4d8d: $27
	inc sp                                           ; $4d8e: $33
	sbc a                                            ; $4d8f: $9f
	ld e, a                                          ; $4d90: $5f
	ld a, a                                          ; $4d91: $7f
	ccf                                              ; $4d92: $3f
	cp a                                             ; $4d93: $bf
	ld b, d                                          ; $4d94: $42
	ldh [rBGP], a                                    ; $4d95: $e0 $47
	ldh a, [rRP]                                     ; $4d97: $f0 $56
	nop                                              ; $4d99: $00
	db $db                                           ; $4d9a: $db
	ld [hl+], a                                      ; $4d9b: $22
	sbc l                                            ; $4d9c: $9d
	daa                                              ; $4d9d: $27
	ld b, h                                          ; $4d9e: $44
	db $db                                           ; $4d9f: $db
	ld [hl+], a                                      ; $4da0: $22
	sbc e                                            ; $4da1: $9b
	inc hl                                           ; $4da2: $23
	ld [hl-], a                                      ; $4da3: $32
	daa                                              ; $4da4: $27
	ld b, h                                          ; $4da5: $44
	ld l, a                                          ; $4da6: $6f
	push af                                          ; $4da7: $f5
	rst SubAFromDE                                          ; $4da8: $df
	inc sp                                           ; $4da9: $33
	ld a, e                                          ; $4daa: $7b
	or $9e                                           ; $4dab: $f6 $9e
	ld b, d                                          ; $4dad: $42
	ld l, a                                          ; $4dae: $6f
	or $9b                                           ; $4daf: $f6 $9b
	inc h                                            ; $4db1: $24
	ld b, h                                          ; $4db2: $44
	ld b, h                                          ; $4db3: $44
	ld b, a                                          ; $4db4: $47
	ld [hl], a                                       ; $4db5: $77
	db $e3                                           ; $4db6: $e3
	rst SubAFromDE                                          ; $4db7: $df
	inc sp                                           ; $4db8: $33
	sbc [hl]                                         ; $4db9: $9e
	dec h                                            ; $4dba: $25
	sbc $44                                          ; $4dbb: $de $44
	rst SubAFromDE                                          ; $4dbd: $df
	ld [hl+], a                                      ; $4dbe: $22

Call_055_4dbf:
	sbc [hl]                                         ; $4dbf: $9e
	ld d, l                                          ; $4dc0: $55

jr_055_4dc1:
	sbc $33                                          ; $4dc1: $de $33
	sbc [hl]                                         ; $4dc3: $9e
	ld d, l                                          ; $4dc4: $55
	ld [hl], a                                       ; $4dc5: $77
	db $ec                                           ; $4dc6: $ec
	sbc b                                            ; $4dc7: $98
	dec h                                            ; $4dc8: $25
	ld d, l                                          ; $4dc9: $55
	inc sp                                           ; $4dca: $33
	ld h, [hl]                                       ; $4dcb: $66
	inc sp                                           ; $4dcc: $33
	dec [hl]                                         ; $4dcd: $35
	ld d, h                                          ; $4dce: $54
	ld a, e                                          ; $4dcf: $7b
	db $ed                                           ; $4dd0: $ed
	sbc l                                            ; $4dd1: $9d
	dec h                                            ; $4dd2: $25
	ld d, e                                          ; $4dd3: $53
	ld e, a                                          ; $4dd4: $5f
	or $9a                                           ; $4dd5: $f6 $9a
	dec h                                            ; $4dd7: $25
	ld h, [hl]                                       ; $4dd8: $66
	ld d, e                                          ; $4dd9: $53
	dec [hl]                                         ; $4dda: $35
	ld d, h                                          ; $4ddb: $54
	ld a, e                                          ; $4ddc: $7b
	push bc                                          ; $4ddd: $c5
	sbc c                                            ; $4dde: $99
	ld d, l                                          ; $4ddf: $55
	ld h, [hl]                                       ; $4de0: $66
	ld d, l                                          ; $4de1: $55
	ld h, [hl]                                       ; $4de2: $66
	ld d, e                                          ; $4de3: $53
	ld h, [hl]                                       ; $4de4: $66
	ld l, e                                          ; $4de5: $6b
	or $df                                           ; $4de6: $f6 $df
	ld d, l                                          ; $4de8: $55
	sbc e                                            ; $4de9: $9b
	ld h, [hl]                                       ; $4dea: $66
	ld h, l                                          ; $4deb: $65
	ld [hl+], a                                      ; $4dec: $22
	ld [hl+], a                                      ; $4ded: $22
	add hl, de                                       ; $4dee: $19
	adc e                                            ; $4def: $8b
	ldh [$cf], a                                     ; $4df0: $e0 $cf
	sbc c                                            ; $4df2: $99
	ld bc, $0402                                     ; $4df3: $01 $02 $04
	ld a, [de]                                       ; $4df6: $1a

jr_055_4df7:
	inc [hl]                                         ; $4df7: $34
	ld h, b                                          ; $4df8: $60
	ld [hl], e                                       ; $4df9: $73
	ld hl, sp-$78                                    ; $4dfa: $f8 $88
	add hl, de                                       ; $4dfc: $19
	inc hl                                           ; $4dfd: $23
	ld c, a                                          ; $4dfe: $4f
	jr nz, jr_055_4dc1                               ; $4dff: $20 $c0

	and c                                            ; $4e01: $a1
	ld [bc], a                                       ; $4e02: $02
	rrca                                             ; $4e03: $0f
	inc e                                            ; $4e04: $1c
	jr c, jr_055_4df7                                ; $4e05: $38 $f0

	daa                                              ; $4e07: $27
	ld c, a                                          ; $4e08: $4f
	sbc [hl]                                         ; $4e09: $9e
	ld a, l                                          ; $4e0a: $7d
	di                                               ; $4e0b: $f3
	db $e4                                           ; $4e0c: $e4
	ret z                                            ; $4e0d: $c8

	db $10                                           ; $4e0e: $10
	ld e, e                                          ; $4e0f: $5b
	and c                                            ; $4e10: $a1
	ret nz                                           ; $4e11: $c0

	add b                                            ; $4e12: $80
	db $fd                                           ; $4e13: $fd
	sbc h                                            ; $4e14: $9c
	cp d                                             ; $4e15: $ba
	ld h, c                                          ; $4e16: $61
	ld b, b                                          ; $4e17: $40
	ld [hl], e                                       ; $4e18: $73
	ld hl, sp-$80                                    ; $4e19: $f8 $80
	ld b, l                                          ; $4e1b: $45
	and e                                            ; $4e1c: $a3
	db $d3                                           ; $4e1d: $d3
	ld l, d                                          ; $4e1e: $6a
	dec [hl]                                         ; $4e1f: $35
	ld a, [de]                                       ; $4e20: $1a
	dec c                                            ; $4e21: $0d
	ld b, $3e                                        ; $4e22: $06 $3e
	ld e, $8e                                        ; $4e24: $1e $8e
	ld b, a                                          ; $4e26: $47
	inc hl                                           ; $4e27: $23
	ld de, $0408                                     ; $4e28: $11 $08 $04
	ei                                               ; $4e2b: $fb
	rst $38                                          ; $4e2c: $ff
	rst AddAOntoHL                                          ; $4e2d: $ef
	db $dd                                           ; $4e2e: $dd
	ld e, l                                          ; $4e2f: $5d
	sbc a                                            ; $4e30: $9f
	ld l, [hl]                                       ; $4e31: $6e
	cp [hl]                                          ; $4e32: $be
	inc b                                            ; $4e33: $04
	inc c                                            ; $4e34: $0c
	inc e                                            ; $4e35: $1c
	ld a, $be                                        ; $4e36: $3e $be
	cp $ff                                           ; $4e38: $fe $ff
	sbc d                                            ; $4e3a: $9a
	ld a, a                                          ; $4e3b: $7f
	ldh [$e0], a                                     ; $4e3c: $e0 $e0
	pop hl                                           ; $4e3e: $e1
	rst SubAFromBC                                          ; $4e3f: $e7
	db $dd                                           ; $4e40: $dd
	rst $38                                          ; $4e41: $ff
	rst SubAFromDE                                          ; $4e42: $df
	rra                                              ; $4e43: $1f
	sbc l                                            ; $4e44: $9d
	ld e, $18                                        ; $4e45: $1e $18
	db $fd                                           ; $4e47: $fd
	sub d                                            ; $4e48: $92
	rrca                                             ; $4e49: $0f
	inc c                                            ; $4e4a: $0c
	and $fb                                          ; $4e4b: $e6 $fb
	inc bc                                           ; $4e4d: $03
	pop bc                                           ; $4e4e: $c1
	db $fc                                           ; $4e4f: $fc
	rst $38                                          ; $4e50: $ff
	ld hl, sp-$01                                    ; $4e51: $f8 $ff
	rra                                              ; $4e53: $1f
	rlca                                             ; $4e54: $07
	ld bc, $80fe                                     ; $4e55: $01 $fe $80
	sub d                                            ; $4e58: $92
	ld h, h                                          ; $4e59: $64
	xor b                                            ; $4e5a: $a8
	ret nz                                           ; $4e5b: $c0

	db $10                                           ; $4e5c: $10
	add b                                            ; $4e5d: $80
	nop                                              ; $4e5e: $00
	and c                                            ; $4e5f: $a1
	ld h, c                                          ; $4e60: $61
	jp $8fc7                                         ; $4e61: $c3 $c7 $8f


	adc a                                            ; $4e64: $8f
	sbc a                                            ; $4e65: $9f
	rst SubAFromDE                                          ; $4e66: $df
	ld a, a                                          ; $4e67: $7f
	ld a, d                                          ; $4e68: $7a
	ld e, c                                          ; $4e69: $59
	ld [hl], l                                       ; $4e6a: $75
	ld d, c                                          ; $4e6b: $51
	ld a, a                                          ; $4e6c: $7f
	ld d, [hl]                                       ; $4e6d: $56
	sub [hl]                                         ; $4e6e: $96
	ld a, h                                          ; $4e6f: $7c
	jp hl                                            ; $4e70: $e9


	ld [$f6d2], a                                    ; $4e71: $ea $d2 $f6
	db $f4                                           ; $4e74: $f4
	db $fd                                           ; $4e75: $fd
	db $fd                                           ; $4e76: $fd
	add d                                            ; $4e77: $82
	rst SubAFromDE                                          ; $4e78: $df
	ret c                                            ; $4e79: $d8

	and e                                            ; $4e7a: $a3
	push de                                          ; $4e7b: $d5
	ld l, e                                          ; $4e7c: $6b
	ld h, [hl]                                       ; $4e7d: $66
	and h                                            ; $4e7e: $a4
	xor h                                            ; $4e7f: $ac
	xor b                                            ; $4e80: $a8
	jr nc, jr_055_4ef3                               ; $4e81: $30 $70

	ld h, d                                          ; $4e83: $62
	call nz, $dbc9                                   ; $4e84: $c4 $c9 $db
	db $d3                                           ; $4e87: $d3
	rst SubAFromHL                                          ; $4e88: $d7
	pop af                                           ; $4e89: $f1
	ret z                                            ; $4e8a: $c8

	sub b                                            ; $4e8b: $90
	ld hl, $4442                                     ; $4e8c: $21 $42 $44
	add l                                            ; $4e8f: $85
	adc e                                            ; $4e90: $8b
	ld c, $3c                                        ; $4e91: $0e $3c

jr_055_4e93:
	ld a, e                                          ; $4e93: $7b
	rst FarCall                                          ; $4e94: $f7
	db $dd                                           ; $4e95: $dd
	rst $38                                          ; $4e96: $ff
	sbc $02                                          ; $4e97: $de $02
	sbc c                                            ; $4e99: $99
	db $f4                                           ; $4e9a: $f4
	ld [$f8ef], sp                                   ; $4e9b: $08 $ef $f8
	add sp, $07                                      ; $4e9e: $e8 $07
	call c, $8bff                                    ; $4ea0: $dc $ff $8b
	sbc a                                            ; $4ea3: $9f

jr_055_4ea4:
	rra                                              ; $4ea4: $1f
	inc a                                            ; $4ea5: $3c
	rst GetHLinHL                                          ; $4ea6: $cf
	and $f7                                          ; $4ea7: $e6 $f7
	scf                                              ; $4ea9: $37
	db $d3                                           ; $4eaa: $d3
	or d                                             ; $4eab: $b2
	ldh [c], a                                       ; $4eac: $e2
	jp $1931                                         ; $4ead: $c3 $31 $19


	ld [$ecc8], sp                                   ; $4eb0: $08 $c8 $ec
	ld l, l                                          ; $4eb3: $6d
	dec a                                            ; $4eb4: $3d
	ret nz                                           ; $4eb5: $c0

	jr nz, jr_055_4e93                               ; $4eb6: $20 $db

	ldh [$9d], a                                     ; $4eb8: $e0 $9d
	ld b, b                                          ; $4eba: $40
	ldh [$db], a                                     ; $4ebb: $e0 $db
	and b                                            ; $4ebd: $a0
	ldh [$ba], a                                     ; $4ebe: $e0 $ba
	sbc [hl]                                         ; $4ec0: $9e
	inc bc                                           ; $4ec1: $03
	ld h, e                                          ; $4ec2: $63
	ld hl, sp-$80                                    ; $4ec3: $f8 $80
	inc bc                                           ; $4ec5: $03
	ld b, $08                                        ; $4ec6: $06 $08
	jr nc, jr_055_4f32                               ; $4ec8: $30 $68

	add c                                            ; $4eca: $81
	ld b, e                                          ; $4ecb: $43
	nop                                              ; $4ecc: $00
	inc bc                                           ; $4ecd: $03
	inc b                                            ; $4ece: $04
	add hl, bc                                       ; $4ecf: $09
	inc sp                                           ; $4ed0: $33
	ld b, a                                          ; $4ed1: $47
	sbc [hl]                                         ; $4ed2: $9e
	inc a                                            ; $4ed3: $3c
	add c                                            ; $4ed4: $81
	ld b, e                                          ; $4ed5: $43
	add a                                            ; $4ed6: $87
	ld a, [de]                                       ; $4ed7: $1a
	inc a                                            ; $4ed8: $3c
	ld [hl], b                                       ; $4ed9: $70
	ldh [rLCDC], a                                   ; $4eda: $e0 $40
	sbc [hl]                                         ; $4edc: $9e
	inc a                                            ; $4edd: $3c
	ld a, c                                          ; $4ede: $79
	and $cc                                          ; $4edf: $e6 $cc
	sub b                                            ; $4ee1: $90
	jr nz, jr_055_4ea4                               ; $4ee2: $20 $c0

	sbc l                                            ; $4ee4: $9d
	and b                                            ; $4ee5: $a0
	ret nz                                           ; $4ee6: $c0

	ei                                               ; $4ee7: $fb
	sbc [hl]                                         ; $4ee8: $9e
	ld h, b                                          ; $4ee9: $60
	ld l, e                                          ; $4eea: $6b
	ld hl, sp+$43                                    ; $4eeb: $f8 $43
	or a                                             ; $4eed: $b7
	halt                                             ; $4eee: $76
	ei                                               ; $4eef: $fb
	cp $9e                                           ; $4ef0: $fe $9e
	ld [bc], a                                       ; $4ef2: $02

jr_055_4ef3:
	ld l, e                                          ; $4ef3: $6b
	ld hl, sp-$66                                    ; $4ef4: $f8 $9a
	ld b, a                                          ; $4ef6: $47
	and b                                            ; $4ef7: $a0
	ret nc                                           ; $4ef8: $d0

	ld l, b                                          ; $4ef9: $68
	inc [hl]                                         ; $4efa: $34
	ld a, d                                          ; $4efb: $7a
	or b                                             ; $4efc: $b0
	sbc h                                            ; $4efd: $9c
	ccf                                              ; $4efe: $3f
	rra                                              ; $4eff: $1f
	adc a                                            ; $4f00: $8f
	ld [hl], d                                       ; $4f01: $72
	or b                                             ; $4f02: $b0
	sub e                                            ; $4f03: $93
	ld a, a                                          ; $4f04: $7f
	cp e                                             ; $4f05: $bb
	ld h, c                                          ; $4f06: $61
	ld sp, $1810                                     ; $4f07: $31 $10 $18
	inc c                                            ; $4f0a: $0c
	add [hl]                                         ; $4f0b: $86
	add b                                            ; $4f0c: $80
	call nz, $fefe                                   ; $4f0d: $c4 $fe $fe
	sbc $ff                                          ; $4f10: $de $ff
	sub [hl]                                         ; $4f12: $96
	ld a, a                                          ; $4f13: $7f
	rst $38                                          ; $4f14: $ff
	db $fc                                           ; $4f15: $fc
	ei                                               ; $4f16: $fb
	rst $38                                          ; $4f17: $ff
	db $fd                                           ; $4f18: $fd
	ld [hl], a                                       ; $4f19: $77
	rrca                                             ; $4f1a: $0f
	ld de, $907b                                     ; $4f1b: $11 $7b $90
	ld a, a                                          ; $4f1e: $7f
	db $fd                                           ; $4f1f: $fd
	sub c                                            ; $4f20: $91
	adc a                                            ; $4f21: $8f
	rst $38                                          ; $4f22: $ff
	rst $38                                          ; $4f23: $ff
	ldh a, [c]                                       ; $4f24: $f2
	db $10                                           ; $4f25: $10
	dec e                                            ; $4f26: $1d
	rst SubAFromDE                                          ; $4f27: $df
	adc $fe                                          ; $4f28: $ce $fe
	adc [hl]                                         ; $4f2a: $8e
	ld a, $3f                                        ; $4f2b: $3e $3f
	rst $38                                          ; $4f2d: $ff
	rst $38                                          ; $4f2e: $ff
	ld a, e                                          ; $4f2f: $7b

jr_055_4f30:
	db $fd                                           ; $4f30: $fd
	sub c                                            ; $4f31: $91

jr_055_4f32:
	rst $38                                          ; $4f32: $ff
	rst JumpTable                                          ; $4f33: $c7
	db $fc                                           ; $4f34: $fc
	db $f4                                           ; $4f35: $f4
	inc a                                            ; $4f36: $3c
	halt                                             ; $4f37: $76
	ld d, d                                          ; $4f38: $52
	ld h, d                                          ; $4f39: $62
	ldh [c], a                                       ; $4f3a: $e2
	or e                                             ; $4f3b: $b3
	sbc a                                            ; $4f3c: $9f
	sbc a                                            ; $4f3d: $9f
	rst JumpTable                                          ; $4f3e: $c7
	jp $e3de                                         ; $4f3f: $c3 $de $e3


	sub h                                            ; $4f42: $94
	pop hl                                           ; $4f43: $e1
	xor c                                            ; $4f44: $a9
	and c                                            ; $4f45: $a1
	add e                                            ; $4f46: $83
	add e                                            ; $4f47: $83
	add d                                            ; $4f48: $82
	add $c6                                          ; $4f49: $c6 $c6
	and $d7                                          ; $4f4b: $e6 $d7
	rst SubAFromDE                                          ; $4f4d: $df
	call c, $80ff                                    ; $4f4e: $dc $ff $80
	cp a                                             ; $4f51: $bf
	dec de                                           ; $4f52: $1b
	ccf                                              ; $4f53: $3f
	ccf                                              ; $4f54: $3f
	ld a, a                                          ; $4f55: $7f
	ld a, a                                          ; $4f56: $7f
	db $fd                                           ; $4f57: $fd
	rst $38                                          ; $4f58: $ff
	ld hl, sp-$02                                    ; $4f59: $f8 $fe
	db $f4                                           ; $4f5b: $f4
	db $e4                                           ; $4f5c: $e4
	call nz, $86c0                                   ; $4f5d: $c4 $c0 $86
	add e                                            ; $4f60: $83
	add a                                            ; $4f61: $87
	db $f4                                           ; $4f62: $f4

jr_055_4f63:
	ld a, [$fefe]                                    ; $4f63: $fa $fe $fe
	ld a, [$74fe]                                    ; $4f66: $fa $fe $74
	call c, $070f                                    ; $4f69: $dc $0f $07
	inc bc                                           ; $4f6c: $03
	inc bc                                           ; $4f6d: $03
	rlca                                             ; $4f6e: $07
	rlca                                             ; $4f6f: $07
	adc l                                            ; $4f70: $8d
	adc a                                            ; $4f71: $8f
	rst AddAOntoHL                                          ; $4f72: $ef
	ldh [c], a                                       ; $4f73: $e2
	ld [$cfab], a                                    ; $4f74: $ea $ab $cf
	ld d, l                                          ; $4f77: $55
	sub a                                            ; $4f78: $97
	sbc e                                            ; $4f79: $9b
	rst SubAFromBC                                          ; $4f7a: $e7
	dec a                                            ; $4f7b: $3d
	dec a                                            ; $4f7c: $3d
	ld a, l                                          ; $4f7d: $7d
	ld a, c                                          ; $4f7e: $79
	ei                                               ; $4f7f: $fb
	ei                                               ; $4f80: $fb
	rst FarCall                                          ; $4f81: $f7
	rst $38                                          ; $4f82: $ff
	sbc $a0                                          ; $4f83: $de $a0
	sbc $40                                          ; $4f85: $de $40

Jump_055_4f87:
	rst SubAFromDE                                          ; $4f87: $df
	jr nz, jr_055_4f63                               ; $4f88: $20 $d9

	ldh [$e0], a                                     ; $4f8a: $e0 $e0
	db $db                                           ; $4f8c: $db
	sbc l                                            ; $4f8d: $9d
	ld [bc], a                                       ; $4f8e: $02
	jr nz, @-$06                                     ; $4f8f: $20 $f8

	sbc b                                            ; $4f91: $98
	jr z, jr_055_4f30                                ; $4f92: $28 $9c

	ld d, [hl]                                       ; $4f94: $56
	xor l                                            ; $4f95: $ad
	db $db                                           ; $4f96: $db
	xor [hl]                                         ; $4f97: $ae
	ld e, l                                          ; $4f98: $5d
	ld l, a                                          ; $4f99: $6f
	inc de                                           ; $4f9a: $13
	sub l                                            ; $4f9b: $95
	inc b                                            ; $4f9c: $04
	ld [$1806], sp                                   ; $4f9d: $08 $06 $18
	jr nc, @+$6a                                     ; $4fa0: $30 $68

	sub b                                            ; $4fa2: $90
	ld bc, $0f06                                     ; $4fa3: $01 $06 $0f
	halt                                             ; $4fa6: $76
	jp nc, $8f8e                                     ; $4fa7: $d2 $8e $8f

	ld a, $79                                        ; $4faa: $3e $79
	di                                               ; $4fac: $f3
	add a                                            ; $4fad: $87
	ld e, $3c                                        ; $4fae: $1e $3c
	ld l, b                                          ; $4fb0: $68
	ldh a, [$c2]                                     ; $4fb1: $f0 $c2
	add l                                            ; $4fb3: $85
	ld [bc], a                                       ; $4fb4: $02
	ld a, c                                          ; $4fb5: $79
	ldh [c], a                                       ; $4fb6: $e2
	call nz, $3098                                   ; $4fb7: $c4 $98 $30
	ld a, c                                          ; $4fba: $79
	xor l                                            ; $4fbb: $ad
	ld [hl], c                                       ; $4fbc: $71
	xor e                                            ; $4fbd: $ab
	sbc h                                            ; $4fbe: $9c
	ld d, h                                          ; $4fbf: $54
	xor d                                            ; $4fc0: $aa
	ld e, l                                          ; $4fc1: $5d
	ld [hl], e                                       ; $4fc2: $73
	ld hl, sp-$08                                    ; $4fc3: $f8 $f8
	sbc l                                            ; $4fc5: $9d
	add b                                            ; $4fc6: $80
	ld b, b                                          ; $4fc7: $40
	ldh [$d9], a                                     ; $4fc8: $e0 $d9
	add b                                            ; $4fca: $80
	rlca                                             ; $4fcb: $07
	rrca                                             ; $4fcc: $0f
	dec bc                                           ; $4fcd: $0b
	add hl, de                                       ; $4fce: $19
	ld de, $2331                                     ; $4fcf: $11 $31 $23
	ld h, [hl]                                       ; $4fd2: $66
	ld b, $09                                        ; $4fd3: $06 $09
	ld [$1010], sp                                   ; $4fd5: $08 $10 $10
	ld hl, $4422                                     ; $4fd8: $21 $22 $44
	ld b, d                                          ; $4fdb: $42
	and c                                            ; $4fdc: $a1
	add b                                            ; $4fdd: $80
	ldh a, [$c8]                                     ; $4fde: $f0 $c8
	add h                                            ; $4fe0: $84
	ld d, $29                                        ; $4fe1: $16 $29
	ccf                                              ; $4fe3: $3f
	rra                                              ; $4fe4: $1f
	rst $38                                          ; $4fe5: $ff
	ld a, a                                          ; $4fe6: $7f
	sbc a                                            ; $4fe7: $9f
	ccf                                              ; $4fe8: $3f
	ld l, l                                          ; $4fe9: $6d
	add b                                            ; $4fea: $80
	ret c                                            ; $4feb: $d8

	ld b, $05                                        ; $4fec: $06 $05
	adc h                                            ; $4fee: $8c
	ld c, e                                          ; $4fef: $4b
	dec sp                                           ; $4ff0: $3b
	ld e, $0e                                        ; $4ff1: $1e $0e
	rrca                                             ; $4ff3: $0f
	rst $38                                          ; $4ff4: $ff
	cp $fe                                           ; $4ff5: $fe $fe
	db $fc                                           ; $4ff7: $fc

jr_055_4ff8:
	db $fc                                           ; $4ff8: $fc
	db $fd                                           ; $4ff9: $fd
	rst $38                                          ; $4ffa: $ff
	rst $38                                          ; $4ffb: $ff
	add e                                            ; $4ffc: $83
	ld bc, $0f00                                     ; $4ffd: $01 $00 $0f
	ld a, $5f                                        ; $5000: $3e $5f
	ld [hl], a                                       ; $5002: $77
	ld h, e                                          ; $5003: $63
	inc bc                                           ; $5004: $03
	rra                                              ; $5005: $1f
	ld a, a                                          ; $5006: $7f
	rst $38                                          ; $5007: $ff
	pop af                                           ; $5008: $f1
	ldh [$df], a                                     ; $5009: $e0 $df
	ret nz                                           ; $500b: $c0

	adc [hl]                                         ; $500c: $8e
	di                                               ; $500d: $f3
	sub e                                            ; $500e: $93
	inc sp                                           ; $500f: $33
	sub c                                            ; $5010: $91
	pop de                                           ; $5011: $d1
	ld c, c                                          ; $5012: $49
	db $fc                                           ; $5013: $fc
	cp h                                             ; $5014: $bc
	and c                                            ; $5015: $a1
	or b                                             ; $5016: $b0
	sub b                                            ; $5017: $90
	sub b                                            ; $5018: $90
	sbc b                                            ; $5019: $98
	ret c                                            ; $501a: $d8

	ld c, b                                          ; $501b: $48
	ld l, h                                          ; $501c: $6c
	rst SubAFromBC                                          ; $501d: $e7
	ld [hl], l                                       ; $501e: $75
	sbc d                                            ; $501f: $9a
	adc b                                            ; $5020: $88
	rst FarCall                                          ; $5021: $f7
	ei                                               ; $5022: $fb
	rst $38                                          ; $5023: $ff
	cp l                                             ; $5024: $bd
	sbc l                                            ; $5025: $9d
	adc h                                            ; $5026: $8c
	inc b                                            ; $5027: $04
	ld bc, $020c                                     ; $5028: $01 $0c $02
	nop                                              ; $502b: $00
	rst $38                                          ; $502c: $ff
	db $fc                                           ; $502d: $fc
	db $fd                                           ; $502e: $fd
	ld a, a                                          ; $502f: $7f
	ld a, [hl]                                       ; $5030: $7e
	cp $f8                                           ; $5031: $fe $f8
	pop af                                           ; $5033: $f1
	add a                                            ; $5034: $87
	add d                                            ; $5035: $82
	add a                                            ; $5036: $87
	add e                                            ; $5037: $83
	ld a, e                                          ; $5038: $7b
	ld e, h                                          ; $5039: $5c
	add b                                            ; $503a: $80
	ld bc, $b56d                                     ; $503b: $01 $6d $b5
	push af                                          ; $503e: $f5
	ld e, l                                          ; $503f: $5d
	rra                                              ; $5040: $1f
	ld e, a                                          ; $5041: $5f
	ldh a, [c]                                       ; $5042: $f2
	daa                                              ; $5043: $27
	or a                                             ; $5044: $b7
	rst SubAFromDE                                          ; $5045: $df
	rst GetHLinHL                                          ; $5046: $cf
	rst SubAFromBC                                          ; $5047: $e7
	rrca                                             ; $5048: $0f
	ccf                                              ; $5049: $3f
	ld a, a                                          ; $504a: $7f
	rst $38                                          ; $504b: $ff
	ld c, l                                          ; $504c: $4d
	ret c                                            ; $504d: $d8

	ldh a, [$60]                                     ; $504e: $f0 $60
	sub b                                            ; $5050: $90
	add sp, $5c                                      ; $5051: $e8 $5c
	jr nz, @-$01                                     ; $5053: $20 $fd

	ld a, b                                          ; $5055: $78

jr_055_5056:
	jr nc, jr_055_4ff8                               ; $5056: $30 $a0

	ldh a, [$f8]                                     ; $5058: $f0 $f8
	sbc c                                            ; $505a: $99
	call c, $20e0                                    ; $505b: $dc $e0 $20
	and h                                            ; $505e: $a4
	cp b                                             ; $505f: $b8
	and e                                            ; $5060: $a3
	ld a, d                                          ; $5061: $7a
	ret nz                                           ; $5062: $c0

	sub [hl]                                         ; $5063: $96
	jr nc, jr_055_5056                               ; $5064: $30 $f0

	ld hl, sp-$02                                    ; $5066: $f8 $fe
	db $e3                                           ; $5068: $e3
	ld h, b                                          ; $5069: $60
	ld h, b                                          ; $506a: $60
	jr nz, jr_055_509d                               ; $506b: $20 $30

	ei                                               ; $506d: $fb
	sbc l                                            ; $506e: $9d
	dec bc                                           ; $506f: $0b
	dec d                                            ; $5070: $15
	rst FarCall                                          ; $5071: $f7
	sbc c                                            ; $5072: $99
	ld a, [bc]                                       ; $5073: $0a
	nop                                              ; $5074: $00
	add hl, hl                                       ; $5075: $29
	add d                                            ; $5076: $82
	push de                                          ; $5077: $d5
	cp $f9                                           ; $5078: $fe $f9
	sub a                                            ; $507a: $97
	dec b                                            ; $507b: $05
	ld d, $4b                                        ; $507c: $16 $4b
	scf                                              ; $507e: $37
	dec sp                                           ; $507f: $3b
	ld l, l                                          ; $5080: $6d
	ld d, a                                          ; $5081: $57
	cp a                                             ; $5082: $bf
	ld sp, hl                                        ; $5083: $f9
	sub a                                            ; $5084: $97
	or b                                             ; $5085: $b0
	ldh [hDisp1_SCY], a                                     ; $5086: $e0 $90
	ld hl, $0d43                                     ; $5088: $21 $43 $0d
	ld a, [de]                                       ; $508b: $1a
	inc [hl]                                         ; $508c: $34
	ld a, d                                          ; $508d: $7a
	jp nc, $d67e                                     ; $508e: $d2 $7e $d6

	sub h                                            ; $5091: $94

jr_055_5092:
	di                                               ; $5092: $f3
	rst SubAFromBC                                          ; $5093: $e7
	rst GetHLinHL                                          ; $5094: $cf
	ld e, $3d                                        ; $5095: $1e $3d
	rst $38                                          ; $5097: $ff
	cp a                                             ; $5098: $bf
	push de                                          ; $5099: $d5
	ld a, [hl+]                                      ; $509a: $2a
	dec b                                            ; $509b: $05
	ld l, [hl]                                       ; $509c: $6e

jr_055_509d:
	ld a, b                                          ; $509d: $78
	ld [hl], l                                       ; $509e: $75
	sub d                                            ; $509f: $92
	ld h, b                                          ; $50a0: $60
	ld [$fad5], a                                    ; $50a1: $ea $d5 $fa
	sub c                                            ; $50a4: $91
	xor l                                            ; $50a5: $ad
	ld d, a                                          ; $50a6: $57
	rst $38                                          ; $50a7: $ff
	rst $38                                          ; $50a8: $ff
	ld e, a                                          ; $50a9: $5f
	cp a                                             ; $50aa: $bf
	rst AddAOntoHL                                          ; $50ab: $ef
	cp l                                             ; $50ac: $bd
	db $fd                                           ; $50ad: $fd
	ld a, [hl]                                       ; $50ae: $7e
	ld d, [hl]                                       ; $50af: $56
	sbc l                                            ; $50b0: $9d
	db $10                                           ; $50b1: $10
	ld b, b                                          ; $50b2: $40
	ld [hl], l                                       ; $50b3: $75
	db $db                                           ; $50b4: $db
	sbc e                                            ; $50b5: $9b
	rst $38                                          ; $50b6: $ff
	push af                                          ; $50b7: $f5
	cp d                                             ; $50b8: $ba
	db $f4                                           ; $50b9: $f4
	ld sp, hl                                        ; $50ba: $f9
	ld a, l                                          ; $50bb: $7d
	or c                                             ; $50bc: $b1
	sbc l                                            ; $50bd: $9d
	and b                                            ; $50be: $a0
	ld d, b                                          ; $50bf: $50
	ld a, d                                          ; $50c0: $7a
	jp nz, $a269                                     ; $50c1: $c2 $69 $a2

	ld l, e                                          ; $50c4: $6b
	ld hl, sp-$64                                    ; $50c5: $f8 $9c
	ld bc, $c31f                                     ; $50c7: $01 $1f $c3
	ld l, a                                          ; $50ca: $6f
	ld hl, sp-$63                                    ; $50cb: $f8 $9d
	ccf                                              ; $50cd: $3f
	pop hl                                           ; $50ce: $e1
	ld a, d                                          ; $50cf: $7a
	ld l, e                                          ; $50d0: $6b
	sbc d                                            ; $50d1: $9a
	inc c                                            ; $50d2: $0c
	ld a, h                                          ; $50d3: $7c
	add l                                            ; $50d4: $85
	rlca                                             ; $50d5: $07
	ld b, $77                                        ; $50d6: $06 $77
	ld hl, sp-$78                                    ; $50d8: $f8 $88
	ld a, b                                          ; $50da: $78
	ret                                              ; $50db: $c9


	ld a, [bc]                                       ; $50dc: $0a
	inc c                                            ; $50dd: $0c
	ld c, h                                          ; $50de: $4c
	sbc b                                            ; $50df: $98
	or c                                             ; $50e0: $b1
	ld h, e                                          ; $50e1: $63
	rst JumpTable                                          ; $50e2: $c7
	adc a                                            ; $50e3: $8f
	rrca                                             ; $50e4: $0f
	dec de                                           ; $50e5: $1b
	ld c, c                                          ; $50e6: $49
	sub e                                            ; $50e7: $93
	ld h, $4c                                        ; $50e8: $26 $4c
	sbc c                                            ; $50ea: $99
	ld [hl-], a                                      ; $50eb: $32
	ld [hl], h                                       ; $50ec: $74
	db $ec                                           ; $50ed: $ec
	ld e, h                                          ; $50ee: $5c
	xor d                                            ; $50ef: $aa
	ld a, c                                          ; $50f0: $79
	sbc $91                                          ; $50f1: $de $91
	sbc e                                            ; $50f3: $9b
	sub d                                            ; $50f4: $92
	add d                                            ; $50f5: $82
	cp h                                             ; $50f6: $bc
	ld a, [hl]                                       ; $50f7: $7e
	ld a, c                                          ; $50f8: $79
	add e                                            ; $50f9: $83
	rst SubAFromDE                                          ; $50fa: $df
	ld a, a                                          ; $50fb: $7f
	sub l                                            ; $50fc: $95
	ld a, [hl]                                       ; $50fd: $7e
	add a                                            ; $50fe: $87
	ld b, c                                          ; $50ff: $41
	jr nz, jr_055_5092                               ; $5100: $20 $90

	ld a, b                                          ; $5102: $78
	ld l, h                                          ; $5103: $6c
	ld d, $0b                                        ; $5104: $16 $0b
	ld a, a                                          ; $5106: $7f
	ld a, c                                          ; $5107: $79
	ld e, a                                          ; $5108: $5f
	sbc e                                            ; $5109: $9b
	rst JumpTable                                          ; $510a: $c7
	di                                               ; $510b: $f3
	ld a, c                                          ; $510c: $79
	inc a                                            ; $510d: $3c
	db $dd                                           ; $510e: $dd
	add e                                            ; $510f: $83
	db $dd                                           ; $5110: $dd
	ld b, c                                          ; $5111: $41
	reti                                             ; $5112: $d9


	ret nz                                           ; $5113: $c0

	adc [hl]                                         ; $5114: $8e
	cp $ef                                           ; $5115: $fe $ef
	rst SubAFromDE                                          ; $5117: $df
	rst $38                                          ; $5118: $ff
	rst FarCall                                          ; $5119: $f7
	rst $38                                          ; $511a: $ff
	xor $f7                                          ; $511b: $ee $f7
	inc l                                            ; $511d: $2c
	ld a, $3f                                        ; $511e: $3e $3f
	rra                                              ; $5120: $1f
	jr jr_055_5142                                   ; $5121: $18 $1f

	jr jr_055_512d                                   ; $5123: $18 $08

	rst $38                                          ; $5125: $ff
	ld a, e                                          ; $5126: $7b
	ret z                                            ; $5127: $c8

	sbc e                                            ; $5128: $9b
	rst AddAOntoHL                                          ; $5129: $ef
	xor l                                            ; $512a: $ad
	ld e, $cf                                        ; $512b: $1e $cf

jr_055_512d:
	cp $90                                           ; $512d: $fe $90
	rst $38                                          ; $512f: $ff
	rra                                              ; $5130: $1f
	rst JumpTable                                          ; $5131: $c7
	inc bc                                           ; $5132: $03
	inc bc                                           ; $5133: $03
	add $1c                                          ; $5134: $c6 $1c
	ld [hl], c                                       ; $5136: $71
	rst SubAFromBC                                          ; $5137: $e7
	jp z, Jump_055_65b2                              ; $5138: $ca $b2 $65

	add l                                            ; $513b: $85
	inc bc                                           ; $513c: $03
	rrca                                             ; $513d: $0f
	db $db                                           ; $513e: $db
	rst $38                                          ; $513f: $ff
	sbc d                                            ; $5140: $9a
	ld c, c                                          ; $5141: $49

jr_055_5142:
	sub b                                            ; $5142: $90
	jr nz, jr_055_5185                               ; $5143: $20 $40

	add b                                            ; $5145: $80
	ld a, d                                          ; $5146: $7a
	or a                                             ; $5147: $b7
	db $db                                           ; $5148: $db
	rst $38                                          ; $5149: $ff
	sub c                                            ; $514a: $91
	db $fc                                           ; $514b: $fc
	ld hl, sp+$10                                    ; $514c: $f8 $10
	ld l, b                                          ; $514e: $68
	db $f4                                           ; $514f: $f4
	db $fc                                           ; $5150: $fc
	jp nz, $3e02                                     ; $5151: $c2 $02 $3e

	adc $f0                                          ; $5154: $ce $f0
	sbc b                                            ; $5156: $98
	inc c                                            ; $5157: $0c
	inc b                                            ; $5158: $04
	sbc $02                                          ; $5159: $de $02
	sub h                                            ; $515b: $94
	ld a, $1d                                        ; $515c: $3e $1d
	ld e, $27                                        ; $515e: $1e $27
	ld l, d                                          ; $5160: $6a
	ld a, a                                          ; $5161: $7f
	ld e, a                                          ; $5162: $5f
	xor a                                            ; $5163: $af
	rst SubAFromDE                                          ; $5164: $df
	jr jr_055_5173                                   ; $5165: $18 $0c

	ei                                               ; $5167: $fb
	sbc e                                            ; $5168: $9b
	cpl                                              ; $5169: $2f
	rst SubAFromHL                                          ; $516a: $d7
	ld e, l                                          ; $516b: $5d
	cp a                                             ; $516c: $bf
	ld [hl], l                                       ; $516d: $75
	dec [hl]                                         ; $516e: $35
	ld sp, hl                                        ; $516f: $f9
	sbc h                                            ; $5170: $9c
	push af                                          ; $5171: $f5
	cp [hl]                                          ; $5172: $be

jr_055_5173:
	ld sp, hl                                        ; $5173: $f9
	call c, $f9ff                                    ; $5174: $dc $ff $f9
	ld a, a                                          ; $5177: $7f
	push de                                          ; $5178: $d5
	sbc [hl]                                         ; $5179: $9e
	ld e, l                                          ; $517a: $5d
	ld d, e                                          ; $517b: $53
	ldh a, [hDisp0_LCDC]                                     ; $517c: $f0 $82
	ld a, [$60a0]                                    ; $517e: $fa $a0 $60
	add sp, $54                                      ; $5181: $e8 $54
	adc $d5                                          ; $5183: $ce $d5

jr_055_5185:
	rst $38                                          ; $5185: $ff
	dec e                                            ; $5186: $1d
	ld a, a                                          ; $5187: $7f
	rst SubAFromDE                                          ; $5188: $df
	sub a                                            ; $5189: $97
	dec hl                                           ; $518a: $2b
	ld de, $0000                                     ; $518b: $11 $00 $00
	cp e                                             ; $518e: $bb
	ld d, l                                          ; $518f: $55
	ld [bc], a                                       ; $5190: $02
	ld bc, $e232                                     ; $5191: $01 $32 $e2
	ld e, c                                          ; $5194: $59
	rst $38                                          ; $5195: $ff
	ld b, h                                          ; $5196: $44
	xor d                                            ; $5197: $aa
	db $fd                                           ; $5198: $fd
	cp $cd                                           ; $5199: $fe $cd
	cp $93                                           ; $519b: $fe $93
	rst FarCall                                          ; $519d: $f7
	ld e, a                                          ; $519e: $5f
	xor l                                            ; $519f: $ad
	ld e, a                                          ; $51a0: $5f
	call nc, $55aa                                   ; $51a1: $d4 $aa $55
	db $eb                                           ; $51a4: $eb
	ld [$50a0], sp                                   ; $51a5: $08 $a0 $50
	and b                                            ; $51a8: $a0
	db $fd                                           ; $51a9: $fd
	sbc b                                            ; $51aa: $98
	xor b                                            ; $51ab: $a8
	ld d, b                                          ; $51ac: $50
	and b                                            ; $51ad: $a0
	ld b, c                                          ; $51ae: $41
	ld [bc], a                                       ; $51af: $02
	inc b                                            ; $51b0: $04
	ld [$5876], sp                                   ; $51b1: $08 $76 $58
	sbc [hl]                                         ; $51b4: $9e
	ld bc, $f877                                     ; $51b5: $01 $77 $f8
	ld a, l                                          ; $51b8: $7d
	ld d, b                                          ; $51b9: $50
	add b                                            ; $51ba: $80
	ld h, b                                          ; $51bb: $60
	add b                                            ; $51bc: $80
	inc b                                            ; $51bd: $04
	add hl, bc                                       ; $51be: $09
	ld h, $89                                        ; $51bf: $26 $89
	rlca                                             ; $51c1: $07
	inc e                                            ; $51c2: $1c
	ld [hl], b                                       ; $51c3: $70
	pop bc                                           ; $51c4: $c1
	inc bc                                           ; $51c5: $03
	ld b, $19                                        ; $51c6: $06 $19
	ld [hl], d                                       ; $51c8: $72
	add hl, bc                                       ; $51c9: $09
	ld hl, $0781                                     ; $51ca: $21 $81 $07
	inc bc                                           ; $51cd: $03
	dec c                                            ; $51ce: $0d
	adc l                                            ; $51cf: $8d
	ld c, $07                                        ; $51d0: $0e $07
	dec de                                           ; $51d2: $1b
	ld [hl], e                                       ; $51d3: $73
	db $e3                                           ; $51d4: $e3
	rst JumpTable                                          ; $51d5: $c7
	add a                                            ; $51d6: $87
	dec bc                                           ; $51d7: $0b
	ld a, [de]                                       ; $51d8: $1a
	inc c                                            ; $51d9: $0c
	ld a, l                                          ; $51da: $7d
	jr nc, @-$7e                                     ; $51db: $30 $80

	ld h, c                                          ; $51dd: $61
	jp Jump_055_4f87                                 ; $51de: $c3 $87 $4f


	adc a                                            ; $51e1: $8f
	add hl, bc                                       ; $51e2: $09
	inc de                                           ; $51e3: $13
	daa                                              ; $51e4: $27
	ld c, [hl]                                       ; $51e5: $4e
	sbc h                                            ; $51e6: $9c
	add hl, sp                                       ; $51e7: $39
	ld [hl-], a                                      ; $51e8: $32
	ld [hl], h                                       ; $51e9: $74
	inc sp                                           ; $51ea: $33
	ld d, c                                          ; $51eb: $51
	or c                                             ; $51ec: $b1
	ld [hl], b                                       ; $51ed: $70
	ld hl, sp-$08                                    ; $51ee: $f8 $f8
	ret c                                            ; $51f0: $d8

	add sp, -$24                                     ; $51f1: $e8 $dc
	cp [hl]                                          ; $51f3: $be
	ld l, [hl]                                       ; $51f4: $6e
	rst GetHLinHL                                          ; $51f5: $cf
	add a                                            ; $51f6: $87
	add a                                            ; $51f7: $87
	ld h, a                                          ; $51f8: $67
	scf                                              ; $51f9: $37
	ld b, $0c                                        ; $51fa: $06 $0c
	sub a                                            ; $51fc: $97
	jr jr_055_5200                                   ; $51fd: $18 $01

	ccf                                              ; $51ff: $3f

jr_055_5200:
	dec bc                                           ; $5200: $0b
	ccf                                              ; $5201: $3f
	cpl                                              ; $5202: $2f
	db $fc                                           ; $5203: $fc
	ld hl, sp-$22                                    ; $5204: $f8 $de
	ldh a, [hDisp0_SCX]                                     ; $5206: $f0 $84
	db $fc                                           ; $5208: $fc
	rst $38                                          ; $5209: $ff
	ldh a, [$e4]                                     ; $520a: $f0 $e4
	ldh a, [c]                                       ; $520c: $f2
	db $fd                                           ; $520d: $fd
	ret nz                                           ; $520e: $c0

	db $ed                                           ; $520f: $ed
	ld sp, hl                                        ; $5210: $f9
	di                                               ; $5211: $f3
	ld a, [$0f1f]                                    ; $5212: $fa $1f $0f
	inc bc                                           ; $5215: $03
	ccf                                              ; $5216: $3f
	rra                                              ; $5217: $1f
	rlca                                             ; $5218: $07
	rst $38                                          ; $5219: $ff
	ld b, $41                                        ; $521a: $06 $41
	ld b, e                                          ; $521c: $43
	add e                                            ; $521d: $83
	sub e                                            ; $521e: $93
	sub a                                            ; $521f: $97
	dec [hl]                                         ; $5220: $35
	ld l, l                                          ; $5221: $6d
	ld [$c0dd], a                                    ; $5222: $ea $dd $c0
	sbc d                                            ; $5225: $9a
	sub b                                            ; $5226: $90
	sub h                                            ; $5227: $94
	inc h                                            ; $5228: $24
	ld c, c                                          ; $5229: $49
	rst $38                                          ; $522a: $ff
	ld a, d                                          ; $522b: $7a
	ccf                                              ; $522c: $3f
	adc c                                            ; $522d: $89
	ld hl, sp+$6e                                    ; $522e: $f8 $6e
	ld a, a                                          ; $5230: $7f
	rst SubAFromDE                                          ; $5231: $df
	rrca                                             ; $5232: $0f
	ld [$0f08], sp                                   ; $5233: $08 $08 $0f
	inc b                                            ; $5236: $04
	sub e                                            ; $5237: $93
	sbc c                                            ; $5238: $99
	cp a                                             ; $5239: $bf
	xor a                                            ; $523a: $af
	rrca                                             ; $523b: $0f
	rst GetHLinHL                                          ; $523c: $cf
	ld b, a                                          ; $523d: $47
	inc bc                                           ; $523e: $03
	add c                                            ; $523f: $81
	ldh [$a0], a                                     ; $5240: $e0 $a0
	pop bc                                           ; $5242: $c1
	ld bc, $e574                                     ; $5243: $01 $74 $e5
	sub b                                            ; $5246: $90
	add b                                            ; $5247: $80
	ret nz                                           ; $5248: $c0

	ld b, $06                                        ; $5249: $06 $06
	add a                                            ; $524b: $87
	db $fd                                           ; $524c: $fd
	ld b, a                                          ; $524d: $47
	cp a                                             ; $524e: $bf
	ld a, a                                          ; $524f: $7f
	dec sp                                           ; $5250: $3b
	rst $38                                          ; $5251: $ff
	rst $38                                          ; $5252: $ff
	cp $86                                           ; $5253: $fe $86
	rst $38                                          ; $5255: $ff
	ld a, d                                          ; $5256: $7a
	ld a, e                                          ; $5257: $7b
	sub d                                            ; $5258: $92
	ld e, $7b                                        ; $5259: $1e $7b
	adc $7b                                          ; $525b: $ce $7b
	rst JumpTable                                          ; $525d: $c7
	adc a                                            ; $525e: $8f
	ei                                               ; $525f: $fb
	cp $e1                                           ; $5260: $fe $e1
	add a                                            ; $5262: $87
	ccf                                              ; $5263: $3f
	db $fd                                           ; $5264: $fd
	ld hl, sp+$7b                                    ; $5265: $f8 $7b
	sbc a                                            ; $5267: $9f
	rst SubAFromDE                                          ; $5268: $df
	rst $38                                          ; $5269: $ff
	add b                                            ; $526a: $80
	ldh [c], a                                       ; $526b: $e2
	ld a, e                                          ; $526c: $7b
	cp $6c                                           ; $526d: $fe $6c
	ld d, c                                          ; $526f: $51
	ld l, b                                          ; $5270: $68
	cp $fe                                           ; $5271: $fe $fe
	ld a, [hl]                                       ; $5273: $7e
	sbc [hl]                                         ; $5274: $9e
	add a                                            ; $5275: $87
	db $d3                                           ; $5276: $d3
	xor $d7                                          ; $5277: $ee $d7
	ld a, d                                          ; $5279: $7a
	push de                                          ; $527a: $d5

Call_055_527b:
	ldh [hDisp1_WY], a                                     ; $527b: $e0 $95
	ld l, b                                          ; $527d: $68
	sub d                                            ; $527e: $92
	ld b, l                                          ; $527f: $45
	db $10                                           ; $5280: $10
	dec b                                            ; $5281: $05
	ld a, [hl+]                                      ; $5282: $2a
	rra                                              ; $5283: $1f
	ld l, d                                          ; $5284: $6a
	sub a                                            ; $5285: $97
	ld l, l                                          ; $5286: $6d
	cp d                                             ; $5287: $ba
	rst AddAOntoHL                                          ; $5288: $ef
	rst $38                                          ; $5289: $ff
	sub c                                            ; $528a: $91
	ld d, a                                          ; $528b: $57
	and d                                            ; $528c: $a2
	ld d, l                                          ; $528d: $55
	ld a, [hl+]                                      ; $528e: $2a
	ld d, a                                          ; $528f: $57
	ccf                                              ; $5290: $3f
	rst $38                                          ; $5291: $ff
	nop                                              ; $5292: $00
	xor b                                            ; $5293: $a8
	ld e, l                                          ; $5294: $5d
	xor d                                            ; $5295: $aa
	push de                                          ; $5296: $d5
	xor b                                            ; $5297: $a8
	ret nz                                           ; $5298: $c0

	halt                                             ; $5299: $76
	adc b                                            ; $529a: $88
	sbc [hl]                                         ; $529b: $9e
	cp a                                             ; $529c: $bf
	ld a, e                                          ; $529d: $7b
	or h                                             ; $529e: $b4
	halt                                             ; $529f: $76
	ret nc                                           ; $52a0: $d0

	ld a, b                                          ; $52a1: $78
	sbc h                                            ; $52a2: $9c
	ld a, a                                          ; $52a3: $7f
	sbc e                                            ; $52a4: $9b
	rst SubAFromDE                                          ; $52a5: $df
	rst $38                                          ; $52a6: $ff
	add d                                            ; $52a7: $82
	ldh [$80], a                                     ; $52a8: $e0 $80
	ld bc, $ca95                                     ; $52aa: $01 $95 $ca
	ld [hl], l                                       ; $52ad: $75
	nop                                              ; $52ae: $00
	nop                                              ; $52af: $00
	rra                                              ; $52b0: $1f
	ld a, a                                          ; $52b1: $7f
	cp $6a                                           ; $52b2: $fe $6a
	dec [hl]                                         ; $52b4: $35
	adc d                                            ; $52b5: $8a
	rst $38                                          ; $52b6: $ff
	xor a                                            ; $52b7: $af
	ld d, a                                          ; $52b8: $57
	xor d                                            ; $52b9: $aa
	ld d, c                                          ; $52ba: $51
	xor d                                            ; $52bb: $aa
	ld b, l                                          ; $52bc: $45
	jr nz, jr_055_52bf                               ; $52bd: $20 $00

jr_055_52bf:
	ld d, b                                          ; $52bf: $50
	xor b                                            ; $52c0: $a8
	ld d, l                                          ; $52c1: $55
	xor [hl]                                         ; $52c2: $ae
	push de                                          ; $52c3: $d5
	ld a, [$ffde]                                    ; $52c4: $fa $de $ff
	add b                                            ; $52c7: $80
	rst AddAOntoHL                                          ; $52c8: $ef
	cp a                                             ; $52c9: $bf
	ld h, a                                          ; $52ca: $67
	ld a, [hl-]                                      ; $52cb: $3a
	ld h, b                                          ; $52cc: $60
	ld [hl], b                                       ; $52cd: $70
	nop                                              ; $52ce: $00
	nop                                              ; $52cf: $00
	db $10                                           ; $52d0: $10
	ld b, b                                          ; $52d1: $40
	sbc a                                            ; $52d2: $9f
	db $fc                                           ; $52d3: $fc
	ldh [$e0], a                                     ; $52d4: $e0 $e0
	cp $ff                                           ; $52d6: $fe $ff
	cp $f0                                           ; $52d8: $fe $f0
	add b                                            ; $52da: $80
	ld [$a020], sp                                   ; $52db: $08 $20 $a0
	nop                                              ; $52de: $00
	ld bc, $7f0f                                     ; $52df: $01 $0f $7f
	jp nz, $1804                                     ; $52e2: $c2 $04 $18

	ld [hl], c                                       ; $52e5: $71
	pop bc                                           ; $52e6: $c1
	add b                                            ; $52e7: $80
	add d                                            ; $52e8: $82
	nop                                              ; $52e9: $00
	dec d                                            ; $52ea: $15
	inc hl                                           ; $52eb: $23
	ld b, h                                          ; $52ec: $44
	ld [$6080], sp                                   ; $52ed: $08 $80 $60
	pop bc                                           ; $52f0: $c1
	add [hl]                                         ; $52f1: $86
	ld [$2210], sp                                   ; $52f2: $08 $10 $22
	call nz, $3008                                   ; $52f5: $c4 $08 $30
	ld h, d                                          ; $52f8: $62
	add b                                            ; $52f9: $80
	inc d                                            ; $52fa: $14
	jr nz, jr_055_5305                               ; $52fb: $20 $08

	ld b, c                                          ; $52fd: $41
	inc bc                                           ; $52fe: $03
	add d                                            ; $52ff: $82
	inc b                                            ; $5300: $04
	inc c                                            ; $5301: $0c
	ld [$3018], sp                                   ; $5302: $08 $18 $30

jr_055_5305:
	ld sp, $8072                                     ; $5305: $31 $72 $80
	dec a                                            ; $5308: $3d
	ld a, [hl+]                                      ; $5309: $2a
	ld d, h                                          ; $530a: $54
	ld a, b                                          ; $530b: $78
	pop hl                                           ; $530c: $e1
	jp $0783                                         ; $530d: $c3 $83 $07


	inc d                                            ; $5310: $14
	add hl, sp                                       ; $5311: $39
	inc sp                                           ; $5312: $33
	ld h, a                                          ; $5313: $67
	ld c, [hl]                                       ; $5314: $4e
	sbc h                                            ; $5315: $9c
	dec a                                            ; $5316: $3d
	ld a, d                                          ; $5317: $7a
	dec de                                           ; $5318: $1b
	cpl                                              ; $5319: $2f
	ld e, a                                          ; $531a: $5f
	xor a                                            ; $531b: $af
	ld a, e                                          ; $531c: $7b
	db $eb                                           ; $531d: $eb
	cp e                                             ; $531e: $bb
	halt                                             ; $531f: $76
	db $ec                                           ; $5320: $ec
	ret c                                            ; $5321: $d8

	or b                                             ; $5322: $b0
	ld a, [hl]                                       ; $5323: $7e
	rst SubAFromHL                                          ; $5324: $d7
	or a                                             ; $5325: $b7
	ld h, a                                          ; $5326: $67
	sbc h                                            ; $5327: $9c
	rst AddAOntoHL                                          ; $5328: $ef
	sbc h                                            ; $5329: $9c
	add a                                            ; $532a: $87
	ld a, e                                          ; $532b: $7b
	rla                                              ; $532c: $17
	sbc d                                            ; $532d: $9a
	ldh [$30], a                                     ; $532e: $e0 $30
	jr nc, jr_055_53b1                               ; $5330: $30 $7f

	ld a, a                                          ; $5332: $7f
	db $db                                           ; $5333: $db
	rst $38                                          ; $5334: $ff
	sub a                                            ; $5335: $97
	jr nc, jr_055_5359                               ; $5336: $30 $21

	rst JumpTable                                          ; $5338: $c7
	ld l, [hl]                                       ; $5339: $6e
	ld a, l                                          ; $533a: $7d
	ld a, b                                          ; $533b: $78
	ld h, b                                          ; $533c: $60
	ld b, c                                          ; $533d: $41
	sbc $e0                                          ; $533e: $de $e0
	add b                                            ; $5340: $80
	pop bc                                           ; $5341: $c1
	jp $dfc7                                         ; $5342: $c3 $c7 $df


	cp $ff                                           ; $5345: $fe $ff
	rst SubAFromDE                                          ; $5347: $df
	ld [hl], c                                       ; $5348: $71
	pop de                                           ; $5349: $d1
	ld [hl-], a                                      ; $534a: $32
	ld [hl], e                                       ; $534b: $73
	rst SubAFromBC                                          ; $534c: $e7
	and $0c                                          ; $534d: $e6 $0c
	ccf                                              ; $534f: $3f
	rst $38                                          ; $5350: $ff
	rst AddAOntoHL                                          ; $5351: $ef
	rst GetHLinHL                                          ; $5352: $cf
	adc a                                            ; $5353: $8f
	rra                                              ; $5354: $1f
	rra                                              ; $5355: $1f
	db $d3                                           ; $5356: $d3
	or [hl]                                          ; $5357: $b6
	ld l, [hl]                                       ; $5358: $6e

jr_055_5359:
	ld sp, hl                                        ; $5359: $f9
	rst $38                                          ; $535a: $ff
	rst GetHLinHL                                          ; $535b: $cf
	add [hl]                                         ; $535c: $86
	adc h                                            ; $535d: $8c
	sbc c                                            ; $535e: $99
	inc sp                                           ; $535f: $33
	sub c                                            ; $5360: $91
	ld h, [hl]                                       ; $5361: $66
	call z, $bff9                                    ; $5362: $cc $f9 $bf
	ld a, e                                          ; $5365: $7b
	ld [hl], a                                       ; $5366: $77
	rst SubAFromBC                                          ; $5367: $e7
	jp $a041                                         ; $5368: $c3 $41 $a0


	sub b                                            ; $536b: $90
	ld c, b                                          ; $536c: $48
	inc h                                            ; $536d: $24
	ld [de], a                                       ; $536e: $12
	ld a, b                                          ; $536f: $78
	ld [hl], l                                       ; $5370: $75
	sub b                                            ; $5371: $90
	sbc a                                            ; $5372: $9f
	rst GetHLinHL                                          ; $5373: $cf
	rst SubAFromBC                                          ; $5374: $e7
	di                                               ; $5375: $f3
	ld sp, hl                                        ; $5376: $f9
	ldh a, [$78]                                     ; $5377: $f0 $78
	cp h                                             ; $5379: $bc
	rst $38                                          ; $537a: $ff
	ld a, a                                          ; $537b: $7f
	ld a, $1b                                        ; $537c: $3e $1b
	dec c                                            ; $537e: $0d
	ret nz                                           ; $537f: $c0

	ldh [$72], a                                     ; $5380: $e0 $72
	db $e3                                           ; $5382: $e3
	add [hl]                                         ; $5383: $86
	rst $38                                          ; $5384: $ff
	add hl, de                                       ; $5385: $19
	dec de                                           ; $5386: $1b
	inc sp                                           ; $5387: $33
	and $ce                                          ; $5388: $e6 $ce
	jr c, @-$0d                                      ; $538a: $38 $f1

	jp $3c1f                                         ; $538c: $c3 $1f $3c


	inc a                                            ; $538f: $3c
	ld a, c                                          ; $5390: $79
	pop af                                           ; $5391: $f1
	rst JumpTable                                          ; $5392: $c7
	rrca                                             ; $5393: $0f
	ccf                                              ; $5394: $3f
	ldh a, [$9e]                                     ; $5395: $f0 $9e
	ld c, a                                          ; $5397: $4f
	ld d, h                                          ; $5398: $54
	ld e, [hl]                                       ; $5399: $5e
	res 1, c                                         ; $539a: $cb $89
	sbc h                                            ; $539c: $9c
	ld [hl], a                                       ; $539d: $77
	daa                                              ; $539e: $27
	adc a                                            ; $539f: $8f
	rst SubAFromBC                                          ; $53a0: $e7
	rst FarCall                                          ; $53a1: $f7
	rst FarCall                                          ; $53a2: $f7
	db $e3                                           ; $53a3: $e3
	ld d, h                                          ; $53a4: $54
	ldh [$c0], a                                     ; $53a5: $e0 $c0
	ld h, d                                          ; $53a7: $62
	jr nz, @+$12                                     ; $53a8: $20 $10

	ld [$eb84], sp                                   ; $53aa: $08 $84 $eb
	rst SubAFromDE                                          ; $53ad: $df
	rst $38                                          ; $53ae: $ff
	db $fd                                           ; $53af: $fd
	ld [hl], c                                       ; $53b0: $71

jr_055_53b1:
	cp b                                             ; $53b1: $b8
	sbc [hl]                                         ; $53b2: $9e
	add c                                            ; $53b3: $81
	ld [hl], d                                       ; $53b4: $72
	and $71                                          ; $53b5: $e6 $71
	jr c, jr_055_5433                                ; $53b7: $38 $7a

	sub $9d                                          ; $53b9: $d6 $9d
	rst FarCall                                          ; $53bb: $f7
	cp a                                             ; $53bc: $bf
	ld a, d                                          ; $53bd: $7a
	pop af                                           ; $53be: $f1
	rst $38                                          ; $53bf: $ff
	sbc h                                            ; $53c0: $9c
	inc b                                            ; $53c1: $04
	xor e                                            ; $53c2: $ab
	ld b, b                                          ; $53c3: $40
	ld a, d                                          ; $53c4: $7a
	pop af                                           ; $53c5: $f1
	rst SubAFromDE                                          ; $53c6: $df
	rst $38                                          ; $53c7: $ff
	sbc d                                            ; $53c8: $9a
	ei                                               ; $53c9: $fb
	ld d, h                                          ; $53ca: $54
	push af                                          ; $53cb: $f5
	ld a, [$fd41]                                    ; $53cc: $fa $41 $fd
	sbc e                                            ; $53cf: $9b
	ld b, d                                          ; $53d0: $42
	ld a, [bc]                                       ; $53d1: $0a
	dec b                                            ; $53d2: $05
	cp [hl]                                          ; $53d3: $be
	db $dd                                           ; $53d4: $dd
	rst $38                                          ; $53d5: $ff
	sbc d                                            ; $53d6: $9a
	cp l                                             ; $53d7: $bd
	ret nc                                           ; $53d8: $d0

	xor b                                            ; $53d9: $a8
	ld d, b                                          ; $53da: $50
	inc h                                            ; $53db: $24
	cp $9a                                           ; $53dc: $fe $9a
	db $10                                           ; $53de: $10

jr_055_53df:
	cpl                                              ; $53df: $2f
	ld d, a                                          ; $53e0: $57
	xor a                                            ; $53e1: $af
	db $db                                           ; $53e2: $db
	ld [hl], a                                       ; $53e3: $77
	xor h                                            ; $53e4: $ac
	add l                                            ; $53e5: $85
	sub b                                            ; $53e6: $90
	ld l, b                                          ; $53e7: $68
	call z, $d61b                                    ; $53e8: $cc $1b $d6
	ccf                                              ; $53eb: $3f
	ld a, a                                          ; $53ec: $7f
	adc l                                            ; $53ed: $8d
	ld a, a                                          ; $53ee: $7f
	sbc a                                            ; $53ef: $9f
	scf                                              ; $53f0: $37
	rst SubAFromBC                                          ; $53f1: $e7
	add hl, hl                                       ; $53f2: $29
	ret nz                                           ; $53f3: $c0

	add b                                            ; $53f4: $80
	ld [hl], d                                       ; $53f5: $72
	pop af                                           ; $53f6: $f1
	rst FarCall                                          ; $53f7: $f7
	or $fe                                           ; $53f8: $f6 $fe
	ld hl, sp-$09                                    ; $53fa: $f8 $f7
	rst SubAFromBC                                          ; $53fc: $e7
	ccf                                              ; $53fd: $3f
	ldh a, [$f1]                                     ; $53fe: $f0 $f1
	ld a, c                                          ; $5400: $79
	inc de                                           ; $5401: $13
	add b                                            ; $5402: $80
	ld a, b                                          ; $5403: $78
	jr c, jr_055_53df                                ; $5404: $38 $d9

	ld h, c                                          ; $5406: $61
	add d                                            ; $5407: $82
	inc b                                            ; $5408: $04
	ld [$8250], sp                                   ; $5409: $08 $50 $82
	sbc [hl]                                         ; $540c: $9e
	ld a, l                                          ; $540d: $7d
	jp nz, $0884                                     ; $540e: $c2 $84 $08

	db $10                                           ; $5411: $10
	jr nz, jr_055_5491                               ; $5412: $20 $7d

	pop hl                                           ; $5414: $e1
	add e                                            ; $5415: $83
	ld [$5120], sp                                   ; $5416: $08 $20 $51
	ret nz                                           ; $5419: $c0

	ld b, [hl]                                       ; $541a: $46
	adc h                                            ; $541b: $8c
	db $fd                                           ; $541c: $fd
	ld a, l                                          ; $541d: $7d
	db $10                                           ; $541e: $10
	db $10                                           ; $541f: $10
	jr nz, jr_055_5483                               ; $5420: $20 $61

	add b                                            ; $5422: $80
	pop hl                                           ; $5423: $e1
	di                                               ; $5424: $f3
	add e                                            ; $5425: $83
	add e                                            ; $5426: $83
	sub [hl]                                         ; $5427: $96
	add hl, bc                                       ; $5428: $09
	ld [de], a                                       ; $5429: $12
	inc h                                            ; $542a: $24
	ld c, b                                          ; $542b: $48
	sub c                                            ; $542c: $91
	ld h, e                                          ; $542d: $63
	rst JumpTable                                          ; $542e: $c7
	ld h, h                                          ; $542f: $64
	db $ec                                           ; $5430: $ec
	ld sp, hl                                        ; $5431: $f9
	di                                               ; $5432: $f3

jr_055_5433:
	rst SubAFromBC                                          ; $5433: $e7
	adc $9c                                          ; $5434: $ce $9c
	add hl, sp                                       ; $5436: $39
	adc a                                            ; $5437: $8f
	dec de                                           ; $5438: $1b
	ld [hl], $6b                                     ; $5439: $36 $6b
	or l                                             ; $543b: $b5
	ld a, a                                          ; $543c: $7f
	sbc a                                            ; $543d: $9f
	dec e                                            ; $543e: $1d
	ld [hl], h                                       ; $543f: $74
	db $ed                                           ; $5440: $ed
	db $db                                           ; $5441: $db
	ld a, a                                          ; $5442: $7f
	ld b, $8f                                        ; $5443: $06 $8f
	call z, $fef4                                    ; $5445: $cc $f4 $fe
	or [hl]                                          ; $5448: $b6
	or h                                             ; $5449: $b4
	rst SubAFromHL                                          ; $544a: $d7
	rst FarCall                                          ; $544b: $f7
	halt                                             ; $544c: $76
	ld [hl], l                                       ; $544d: $75
	ld [hl], h                                       ; $544e: $74
	ld [hl], h                                       ; $544f: $74
	rst AddAOntoHL                                          ; $5450: $ef
	ld l, a                                          ; $5451: $6f
	ld l, a                                          ; $5452: $6f
	ld c, a                                          ; $5453: $4f
	call $ccde                                       ; $5454: $cd $de $cc
	sbc l                                            ; $5457: $9d
	ld l, b                                          ; $5458: $68
	ld c, b                                          ; $5459: $48
	db $dd                                           ; $545a: $dd
	rst $38                                          ; $545b: $ff
	sbc [hl]                                         ; $545c: $9e
	cp $73                                           ; $545d: $fe $73
	inc d                                            ; $545f: $14
	sbc $ff                                          ; $5460: $de $ff
	sub [hl]                                         ; $5462: $96
	ld a, a                                          ; $5463: $7f
	ld b, b                                          ; $5464: $40
	ld a, a                                          ; $5465: $7f
	ei                                               ; $5466: $fb
	call nz, $0382                                   ; $5467: $c4 $82 $03
	ld bc, $d903                                     ; $546a: $01 $03 $d9
	rst $38                                          ; $546d: $ff
	add b                                            ; $546e: $80
	rrca                                             ; $546f: $0f
	ld a, [bc]                                       ; $5470: $0a
	cp $f4                                           ; $5471: $fe $f4
	ld a, b                                          ; $5473: $78
	ld a, b                                          ; $5474: $78
	ld [hl], c                                       ; $5475: $71
	and c                                            ; $5476: $a1
	db $fc                                           ; $5477: $fc
	db $fd                                           ; $5478: $fd
	ld sp, hl                                        ; $5479: $f9
	ei                                               ; $547a: $fb
	rst FarCall                                          ; $547b: $f7
	rst SubAFromBC                                          ; $547c: $e7
	adc $de                                          ; $547d: $ce $de
	jr jr_055_54c0                                   ; $547f: $18 $3f

	jr c, jr_055_54fb                                ; $5481: $38 $78

jr_055_5483:
	add sp, -$38                                     ; $5483: $e8 $c8
	ld c, b                                          ; $5485: $48
	ret c                                            ; $5486: $d8

	rst AddAOntoHL                                          ; $5487: $ef
	rst GetHLinHL                                          ; $5488: $cf
	ret c                                            ; $5489: $d8

	xor b                                            ; $548a: $a8
	jr z, @+$4a                                      ; $548b: $28 $48

	ret z                                            ; $548d: $c8

	sbc d                                            ; $548e: $9a
	sbc b                                            ; $548f: $98
	add hl, sp                                       ; $5490: $39

jr_055_5491:
	db $fc                                           ; $5491: $fc
	ld [bc], a                                       ; $5492: $02
	ld bc, $9cfd                                     ; $5493: $01 $fd $9c
	db $fc                                           ; $5496: $fc
	cp $03                                           ; $5497: $fe $03
	ld [hl], e                                       ; $5499: $73
	ld hl, sp-$65                                    ; $549a: $f8 $9b
	rlca                                             ; $549c: $07
	add e                                            ; $549d: $83
	ld b, c                                          ; $549e: $41
	jr nz, jr_055_5517                               ; $549f: $20 $76

	or b                                             ; $54a1: $b0
	ld a, c                                          ; $54a2: $79
	sub h                                            ; $54a3: $94
	ld a, [hl]                                       ; $54a4: $7e
	or b                                             ; $54a5: $b0
	sub h                                            ; $54a6: $94
	ld h, a                                          ; $54a7: $67
	inc sp                                           ; $54a8: $33
	add hl, de                                       ; $54a9: $19
	sbc a                                            ; $54aa: $9f
	rst $38                                          ; $54ab: $ff
	rst $38                                          ; $54ac: $ff
	sbc [hl]                                         ; $54ad: $9e
	ret nz                                           ; $54ae: $c0

Call_055_54af:
	ld b, b                                          ; $54af: $40
	jr nz, @+$12                                     ; $54b0: $20 $10

	reti                                             ; $54b2: $d9


	rst $38                                          ; $54b3: $ff
	sbc l                                            ; $54b4: $9d
	sbc h                                            ; $54b5: $9c
	inc e                                            ; $54b6: $1c
	db $dd                                           ; $54b7: $dd
	rra                                              ; $54b8: $1f
	sbc e                                            ; $54b9: $9b
	rrca                                             ; $54ba: $0f
	dec bc                                           ; $54bb: $0b
	db $e3                                           ; $54bc: $e3
	db $e3                                           ; $54bd: $e3
	sbc $e0                                          ; $54be: $de $e0

jr_055_54c0:
	sub h                                            ; $54c0: $94
	ldh a, [$f8]                                     ; $54c1: $f0 $f8
	db $fc                                           ; $54c3: $fc
	ld b, d                                          ; $54c4: $42
	ld hl, $ef19                                     ; $54c5: $21 $19 $ef
	push bc                                          ; $54c8: $c5
	call nz, $9e84                                   ; $54c9: $c4 $84 $9e
	sbc $ff                                          ; $54cc: $de $ff
	sub b                                            ; $54ce: $90
	rra                                              ; $54cf: $1f
	ccf                                              ; $54d0: $3f
	ccf                                              ; $54d1: $3f
	ld a, a                                          ; $54d2: $7f
	ld [hl], l                                       ; $54d3: $75
	ld bc, $ffe1                                     ; $54d4: $01 $e1 $ff
	add b                                            ; $54d7: $80
	rst $38                                          ; $54d8: $ff
	rst $38                                          ; $54d9: $ff
	add b                                            ; $54da: $80
	ldh a, [$fe]                                     ; $54db: $f0 $fe
	ld e, $fe                                        ; $54dd: $1e $fe
	ld a, a                                          ; $54df: $7f
	or $94                                           ; $54e0: $f6 $94
	adc a                                            ; $54e2: $8f
	ld d, [hl]                                       ; $54e3: $56
	db $fd                                           ; $54e4: $fd
	ld hl, sp+$08                                    ; $54e5: $f8 $08
	nop                                              ; $54e7: $00
	ld d, b                                          ; $54e8: $50
	xor d                                            ; $54e9: $aa
	dec d                                            ; $54ea: $15
	xor c                                            ; $54eb: $a9
	ld [bc], a                                       ; $54ec: $02
	ld [hl], h                                       ; $54ed: $74
	sub e                                            ; $54ee: $93
	add b                                            ; $54ef: $80
	ld d, l                                          ; $54f0: $55
	ld [$5da8], a                                    ; $54f1: $ea $a8 $5d
	rst $38                                          ; $54f4: $ff
	dec de                                           ; $54f5: $1b
	ld c, $5f                                        ; $54f6: $0e $5f
	push de                                          ; $54f8: $d5
	ccf                                              ; $54f9: $3f
	ld d, a                                          ; $54fa: $57

jr_055_54fb:
	and d                                            ; $54fb: $a2
	nop                                              ; $54fc: $00
	inc b                                            ; $54fd: $04
	ld bc, $0200                                     ; $54fe: $01 $00 $02
	add b                                            ; $5501: $80
	xor d                                            ; $5502: $aa
	ld d, h                                          ; $5503: $54
	xor e                                            ; $5504: $ab
	db $f4                                           ; $5505: $f4
	xor b                                            ; $5506: $a8
	db $10                                           ; $5507: $10
	xor e                                            ; $5508: $ab
	rst SubAFromDE                                          ; $5509: $df
	ld d, l                                          ; $550a: $55
	xor e                                            ; $550b: $ab
	ld d, h                                          ; $550c: $54
	dec bc                                           ; $550d: $0b
	ld d, a                                          ; $550e: $57
	add b                                            ; $550f: $80
	rst AddAOntoHL                                          ; $5510: $ef

jr_055_5511:
	ld d, h                                          ; $5511: $54
	jr nz, jr_055_5511                               ; $5512: $20 $fd

	xor e                                            ; $5514: $ab
	xor $fb                                          ; $5515: $ee $fb

jr_055_5517:
	rla                                              ; $5517: $17
	db $fd                                           ; $5518: $fd
	pop af                                           ; $5519: $f1
	scf                                              ; $551a: $37
	ld [bc], a                                       ; $551b: $02
	ld d, h                                          ; $551c: $54
	ld de, $e804                                     ; $551d: $11 $04 $e8
	ld [bc], a                                       ; $5520: $02
	ld c, $c8                                        ; $5521: $0e $c8
	db $fd                                           ; $5523: $fd
	jp c, $f693                                      ; $5524: $da $93 $f6

	ld [hl], l                                       ; $5527: $75
	or [hl]                                          ; $5528: $b6
	cp a                                             ; $5529: $bf
	db $dd                                           ; $552a: $dd
	rrca                                             ; $552b: $0f
	daa                                              ; $552c: $27
	ld l, l                                          ; $552d: $6d
	add hl, bc                                       ; $552e: $09
	adc e                                            ; $552f: $8b
	adc d                                            ; $5530: $8a
	ld c, c                                          ; $5531: $49
	ld b, b                                          ; $5532: $40
	ld [hl+], a                                      ; $5533: $22
	db $fd                                           ; $5534: $fd
	ld a, [$f7fb]                                    ; $5535: $fa $fb $f7
	push bc                                          ; $5538: $c5
	push af                                          ; $5539: $f5
	rst GetHLinHL                                          ; $553a: $cf
	or l                                             ; $553b: $b5
	inc bc                                           ; $553c: $03
	rlca                                             ; $553d: $07
	ld b, $8e                                        ; $553e: $06 $8e
	ld a, [hl]                                       ; $5540: $7e
	ld a, $3c                                        ; $5541: $3e $3c
	ld c, a                                          ; $5543: $4f
	ld [hl], a                                       ; $5544: $77
	inc b                                            ; $5545: $04
	ld a, h                                          ; $5546: $7c
	ld hl, sp-$65                                    ; $5547: $f8 $9b
	and b                                            ; $5549: $a0
	ld b, b                                          ; $554a: $40
	ld [bc], a                                       ; $554b: $02
	inc b                                            ; $554c: $04
	ld a, b                                          ; $554d: $78
	ld l, [hl]                                       ; $554e: $6e
	adc a                                            ; $554f: $8f
	ld c, a                                          ; $5550: $4f
	rst SubAFromDE                                          ; $5551: $df
	cp a                                             ; $5552: $bf
	adc [hl]                                         ; $5553: $8e
	rrca                                             ; $5554: $0f
	rra                                              ; $5555: $1f
	cpl                                              ; $5556: $2f
	ld d, c                                          ; $5557: $51
	and b                                            ; $5558: $a0
	ld b, b                                          ; $5559: $40
	add b                                            ; $555a: $80
	ld [hl], e                                       ; $555b: $73
	db $f4                                           ; $555c: $f4
	db $ec                                           ; $555d: $ec
	rst SubAFromDE                                          ; $555e: $df
	cp a                                             ; $555f: $bf
	ld a, c                                          ; $5560: $79
	xor h                                            ; $5561: $ac
	ld a, [hl]                                       ; $5562: $7e
	ld [$3e99], sp                                   ; $5563: $08 $99 $3e
	ccf                                              ; $5566: $3f
	rst $38                                          ; $5567: $ff
	ld a, a                                          ; $5568: $7f
	ld a, h                                          ; $5569: $7c
	ld [hl], b                                       ; $556a: $70
	reti                                             ; $556b: $d9


	rst $38                                          ; $556c: $ff
	sub a                                            ; $556d: $97
	rst JumpTable                                          ; $556e: $c7
	add hl, sp                                       ; $556f: $39
	ld bc, $8f03                                     ; $5570: $01 $03 $8f
	rst $38                                          ; $5573: $ff
	ld a, [hl]                                       ; $5574: $7e
	inc e                                            ; $5575: $1c
	reti                                             ; $5576: $d9


	rst $38                                          ; $5577: $ff
	ld a, a                                          ; $5578: $7f
	call nz, $ff7d                                   ; $5579: $c4 $7d $ff
	ld a, b                                          ; $557c: $78
	sub a                                            ; $557d: $97
	sbc [hl]                                         ; $557e: $9e
	ld bc, $ffd9                                     ; $557f: $01 $d9 $ff
	sub a                                            ; $5582: $97
	rlca                                             ; $5583: $07
	rrca                                             ; $5584: $0f
	ld e, $1d                                        ; $5585: $1e $1d
	ccf                                              ; $5587: $3f
	ld a, [hl]                                       ; $5588: $7e
	db $f4                                           ; $5589: $f4
	ld hl, sp+$72                                    ; $558a: $f8 $72
	xor e                                            ; $558c: $ab
	ld a, d                                          ; $558d: $7a
	call $e38e                                       ; $558e: $cd $8e $e3
	push bc                                          ; $5591: $c5
	add a                                            ; $5592: $87
	ld a, [bc]                                       ; $5593: $0a
	ld e, $19                                        ; $5594: $1e $19
	jr z, jr_055_55e8                                ; $5596: $28 $50

	sbc l                                            ; $5598: $9d
	dec sp                                           ; $5599: $3b
	ld a, e                                          ; $559a: $7b
	or $e6                                           ; $559b: $f6 $e6
	rst AddAOntoHL                                          ; $559d: $ef
	rst SubAFromDE                                          ; $559e: $df
	cp a                                             ; $559f: $bf
	ldh a, [rPCM34]                                  ; $55a0: $f0 $77
	jp nc, $809b                                     ; $55a2: $d2 $9b $80

	ld b, b                                          ; $55a5: $40
	jr nz, jr_055_5618                               ; $55a6: $20 $70

	ld [hl], e                                       ; $55a8: $73
	ld hl, sp+$7d                                    ; $55a9: $f8 $7d
	sbc d                                            ; $55ab: $9a
	pop af                                           ; $55ac: $f1
	add h                                            ; $55ad: $84
	add hl, bc                                       ; $55ae: $09
	inc b                                            ; $55af: $04
	ld [bc], a                                       ; $55b0: $02
	inc bc                                           ; $55b1: $03
	ld [bc], a                                       ; $55b2: $02
	ld b, $04                                        ; $55b3: $06 $04
	ld c, $0c                                        ; $55b5: $0e $0c
	ld b, $03                                        ; $55b7: $06 $03
	inc bc                                           ; $55b9: $03
	ld [bc], a                                       ; $55ba: $02
	inc b                                            ; $55bb: $04
	dec b                                            ; $55bc: $05
	add hl, bc                                       ; $55bd: $09
	ld [$c384], sp                                   ; $55be: $08 $84 $c3
	and c                                            ; $55c1: $a1
	sub b                                            ; $55c2: $90
	ld [$5428], sp                                   ; $55c3: $08 $28 $54
	rst $38                                          ; $55c6: $ff
	ld a, a                                          ; $55c7: $7f
	rst $38                                          ; $55c8: $ff
	ld a, c                                          ; $55c9: $79
	dec e                                            ; $55ca: $1d
	sub e                                            ; $55cb: $93
	rst SubAFromDE                                          ; $55cc: $df
	or e                                             ; $55cd: $b3
	rlca                                             ; $55ce: $07
	rlca                                             ; $55cf: $07
	dec b                                            ; $55d0: $05
	add a                                            ; $55d1: $87
	rst JumpTable                                          ; $55d2: $c7
	ld h, [hl]                                       ; $55d3: $66
	scf                                              ; $55d4: $37
	rra                                              ; $55d5: $1f
	db $fc                                           ; $55d6: $fc
	db $fc                                           ; $55d7: $fc
	sbc $fe                                          ; $55d8: $de $fe
	sbc $ff                                          ; $55da: $de $ff
	sub e                                            ; $55dc: $93

Jump_055_55dd:
	sbc [hl]                                         ; $55dd: $9e
	sbc h                                            ; $55de: $9c
	sbc a                                            ; $55df: $9f
	cp l                                             ; $55e0: $bd
	cp a                                             ; $55e1: $bf
	cp a                                             ; $55e2: $bf
	xor a                                            ; $55e3: $af
	rst SubAFromDE                                          ; $55e4: $df
	ld [hl], l                                       ; $55e5: $75
	ld [hl], a                                       ; $55e6: $77
	ld [hl], e                                       ; $55e7: $73

jr_055_55e8:
	ld [hl], e                                       ; $55e8: $73
	sbc $71                                          ; $55e9: $de $71
	sbc h                                            ; $55eb: $9c
	ld hl, $8fe0                                     ; $55ec: $21 $e0 $8f
	ei                                               ; $55ef: $fb
	sbc [hl]                                         ; $55f0: $9e
	sbc a                                            ; $55f1: $9f
	ld a, e                                          ; $55f2: $7b
	and c                                            ; $55f3: $a1
	db $fc                                           ; $55f4: $fc
	sbc l                                            ; $55f5: $9d
	rst GetHLinHL                                          ; $55f6: $cf
	dec b                                            ; $55f7: $05
	db $fc                                           ; $55f8: $fc
	ld a, h                                          ; $55f9: $7c
	rst SubAFromBC                                          ; $55fa: $e7
	ei                                               ; $55fb: $fb
	sbc [hl]                                         ; $55fc: $9e
	sub $7b                                          ; $55fd: $d6 $7b
	inc h                                            ; $55ff: $24
	push hl                                          ; $5600: $e5
	add b                                            ; $5601: $80
	ld e, [hl]                                       ; $5602: $5e
	rst $38                                          ; $5603: $ff
	cp e                                             ; $5604: $bb
	rst SubAFromDE                                          ; $5605: $df
	ei                                               ; $5606: $fb
	ld a, a                                          ; $5607: $7f
	db $fd                                           ; $5608: $fd
	cp l                                             ; $5609: $bd
	and c                                            ; $560a: $a1
	nop                                              ; $560b: $00
	ld b, h                                          ; $560c: $44
	jr nz, @+$06                                     ; $560d: $20 $04

	add b                                            ; $560f: $80
	ld [bc], a                                       ; $5610: $02
	jp nz, $fffb                                     ; $5611: $c2 $fb $ff

	jp hl                                            ; $5614: $e9


	ld l, [hl]                                       ; $5615: $6e
	rst $38                                          ; $5616: $ff
	sbc e                                            ; $5617: $9b

jr_055_5618:
	cp a                                             ; $5618: $bf
	push af                                          ; $5619: $f5
	inc b                                            ; $561a: $04
	nop                                              ; $561b: $00
	ld d, $91                                        ; $561c: $16 $91
	nop                                              ; $561e: $00
	ld h, h                                          ; $561f: $64
	ld b, b                                          ; $5620: $40
	add [hl]                                         ; $5621: $86
	ld a, [bc]                                       ; $5622: $0a
	jp nc, $c191                                     ; $5623: $d2 $91 $c1

	ld d, d                                          ; $5626: $52
	call c, $22e5                                    ; $5627: $dc $e5 $22
	ld [hl], a                                       ; $562a: $77
	cpl                                              ; $562b: $2f
	ld l, a                                          ; $562c: $6f
	ld a, $ad                                        ; $562d: $3e $ad
	inc hl                                           ; $562f: $23
	ld a, [de]                                       ; $5630: $1a
	db $dd                                           ; $5631: $dd
	adc b                                            ; $5632: $88
	ld bc, $c703                                     ; $5633: $01 $03 $c7
	cpl                                              ; $5636: $2f
	rra                                              ; $5637: $1f
	rrca                                             ; $5638: $0f
	rlca                                             ; $5639: $07
	ld [bc], a                                       ; $563a: $02
	ld [hl], d                                       ; $563b: $72
	db $f4                                           ; $563c: $f4
	ld a, [hl]                                       ; $563d: $7e
	ld sp, $ffde                                     ; $563e: $31 $de $ff
	sub c                                            ; $5641: $91
	ei                                               ; $5642: $fb
	cp a                                             ; $5643: $bf
	rst $38                                          ; $5644: $ff
	cp $d6                                           ; $5645: $fe $d6
	and h                                            ; $5647: $a4
	rst $38                                          ; $5648: $ff
	rst $38                                          ; $5649: $ff
	db $fd                                           ; $564a: $fd
	jp $0f07                                         ; $564b: $c3 $07 $0f


	ccf                                              ; $564e: $3f
	ld a, a                                          ; $564f: $7f
	ld [hl], d                                       ; $5650: $72
	ldh [c], a                                       ; $5651: $e2
	sbc l                                            ; $5652: $9d
	inc bc                                           ; $5653: $03
	ccf                                              ; $5654: $3f
	db $db                                           ; $5655: $db
	rst $38                                          ; $5656: $ff
	sub h                                            ; $5657: $94
	db $fc                                           ; $5658: $fc
	ret nz                                           ; $5659: $c0

	nop                                              ; $565a: $00
	jr jr_055_5669                                   ; $565b: $18 $0c

	inc b                                            ; $565d: $04
	ld [bc], a                                       ; $565e: $02
	ld bc, $f0e0                                     ; $565f: $01 $e0 $f0
	ldh a, [$dc]                                     ; $5662: $f0 $dc
	rst $38                                          ; $5664: $ff
	ld a, a                                          ; $5665: $7f
	rst JumpTable                                          ; $5666: $c7
	sbc l                                            ; $5667: $9d
	rrca                                             ; $5668: $0f

jr_055_5669:
	inc bc                                           ; $5669: $03
	ld a, d                                          ; $566a: $7a
	rst GetHLinHL                                          ; $566b: $cf
	sbc e                                            ; $566c: $9b
	db $fd                                           ; $566d: $fd
	ei                                               ; $566e: $fb
	jp $db27                                         ; $566f: $c3 $27 $db


	rst $38                                          ; $5672: $ff
	ld a, d                                          ; $5673: $7a
	ld [hl], h                                       ; $5674: $74
	adc h                                            ; $5675: $8c
	ret nc                                           ; $5676: $d0

	ld [hl], c                                       ; $5677: $71
	pop hl                                           ; $5678: $e1
	ld b, d                                          ; $5679: $42
	add a                                            ; $567a: $87
	adc [hl]                                         ; $567b: $8e
	dec bc                                           ; $567c: $0b
	rst SubAFromBC                                          ; $567d: $e7
	rst AddAOntoHL                                          ; $567e: $ef
	adc $9e                                          ; $567f: $ce $9e
	cp l                                             ; $5681: $bd
	ld a, c                                          ; $5682: $79
	ld [hl], e                                       ; $5683: $73
	rst FarCall                                          ; $5684: $f7
	ld h, b                                          ; $5685: $60
	and b                                            ; $5686: $a0
	ret nz                                           ; $5687: $c0

	ret nz                                           ; $5688: $c0

	db $dd                                           ; $5689: $dd
	add b                                            ; $568a: $80
	ld a, [hl]                                       ; $568b: $7e
	ld [hl], h                                       ; $568c: $74
	ld a, d                                          ; $568d: $7a
	ld [hl], e                                       ; $568e: $73
	sbc $ff                                          ; $568f: $de $ff
	ld a, l                                          ; $5691: $7d
	or [hl]                                          ; $5692: $b6
	db $dd                                           ; $5693: $dd
	db $10                                           ; $5694: $10
	rst SubAFromDE                                          ; $5695: $df
	jr nz, jr_055_5713                               ; $5696: $20 $7b

	cp l                                             ; $5698: $bd
	sbc $f0                                          ; $5699: $de $f0
	rst SubAFromDE                                          ; $569b: $df
	ldh [$fa], a                                     ; $569c: $e0 $fa
	ld [hl], c                                       ; $569e: $71
	add h                                            ; $569f: $84
	ld [hl], a                                       ; $56a0: $77
	ld hl, sp-$76                                    ; $56a1: $f8 $8a
	ld [$3014], sp                                   ; $56a3: $08 $14 $30
	add hl, hl                                       ; $56a6: $29
	ld [hl], c                                       ; $56a7: $71
	ld b, d                                          ; $56a8: $42
	and e                                            ; $56a9: $a3
	dec b                                            ; $56aa: $05
	dec bc                                           ; $56ab: $0b
	inc de                                           ; $56ac: $13
	daa                                              ; $56ad: $27
	ld h, $4e                                        ; $56ae: $26 $4e
	ld e, l                                          ; $56b0: $5d
	sbc l                                            ; $56b1: $9d
	cp e                                             ; $56b2: $bb
	ld e, d                                          ; $56b3: $5a
	xor l                                            ; $56b4: $ad
	add $43                                          ; $56b5: $c6 $43
	add c                                            ; $56b7: $81
	ld a, e                                          ; $56b8: $7b
	ld a, l                                          ; $56b9: $7d
	sbc e                                            ; $56ba: $9b
	or c                                             ; $56bb: $b1
	ld l, b                                          ; $56bc: $68
	ld b, h                                          ; $56bd: $44
	jp nz, $f877                                     ; $56be: $c2 $77 $f8

	ld a, a                                          ; $56c1: $7f
	ld d, l                                          ; $56c2: $55
	ld a, l                                          ; $56c3: $7d
	ld e, a                                          ; $56c4: $5f
	sbc e                                            ; $56c5: $9b
	and b                                            ; $56c6: $a0
	ret nc                                           ; $56c7: $d0

	ld l, b                                          ; $56c8: $68
	inc [hl]                                         ; $56c9: $34
	ld a, c                                          ; $56ca: $79
	dec d                                            ; $56cb: $15
	sub [hl]                                         ; $56cc: $96
	ccf                                              ; $56cd: $3f
	rra                                              ; $56ce: $1f
	adc a                                            ; $56cf: $8f
	ld b, a                                          ; $56d0: $47
	inc hl                                           ; $56d1: $23
	rst $38                                          ; $56d2: $ff
	ld a, [hl]                                       ; $56d3: $7e
	ld a, h                                          ; $56d4: $7c
	ld hl, sp+$7a                                    ; $56d5: $f8 $7a
	ld [hl], c                                       ; $56d7: $71
	sbc d                                            ; $56d8: $9a
	db $10                                           ; $56d9: $10
	ld bc, $8482                                     ; $56da: $01 $82 $84
	ld hl, sp+$7a                                    ; $56dd: $f8 $7a
	ld [hl], c                                       ; $56df: $71
	sbc [hl]                                         ; $56e0: $9e
	ldh a, [$ec]                                     ; $56e1: $f0 $ec
	ld a, a                                          ; $56e3: $7f
	xor e                                            ; $56e4: $ab
	sbc [hl]                                         ; $56e5: $9e
	ld a, [hl+]                                      ; $56e6: $2a
	ldh a, [c]                                       ; $56e7: $f2
	ld [hl+], a                                      ; $56e8: $22
	cp h                                             ; $56e9: $bc
	sub h                                            ; $56ea: $94
	ld e, a                                          ; $56eb: $5f
	rst FarCall                                          ; $56ec: $f7
	dec sp                                           ; $56ed: $3b
	dec c                                            ; $56ee: $0d
	ld l, [hl]                                       ; $56ef: $6e
	sub e                                            ; $56f0: $93
	add hl, hl                                       ; $56f1: $29
	ld d, e                                          ; $56f2: $53
	ldh [$f8], a                                     ; $56f3: $e0 $f8
	db $fc                                           ; $56f5: $fc
	halt                                             ; $56f6: $76
	ld h, c                                          ; $56f7: $61
	ld a, a                                          ; $56f8: $7f
	db $fc                                           ; $56f9: $fc
	add b                                            ; $56fa: $80
	ld l, [hl]                                       ; $56fb: $6e
	sub $b3                                          ; $56fc: $d6 $b3
	ld a, a                                          ; $56fe: $7f
	rst $38                                          ; $56ff: $ff
	cp h                                             ; $5700: $bc
	ret z                                            ; $5701: $c8

	nop                                              ; $5702: $00
	sub c                                            ; $5703: $91
	add hl, hl                                       ; $5704: $29
	ld c, h                                          ; $5705: $4c
	add b                                            ; $5706: $80
	add b                                            ; $5707: $80
	jp $dd77                                         ; $5708: $c3 $77 $dd


	ei                                               ; $570b: $fb
	sbc h                                            ; $570c: $9c
	ld hl, sp-$11                                    ; $570d: $f8 $ef
	rst $38                                          ; $570f: $ff
	ld l, l                                          ; $5710: $6d
	rst FarCall                                          ; $5711: $f7
	ld [hl+], a                                      ; $5712: $22

jr_055_5713:
	inc b                                            ; $5713: $04
	ld h, e                                          ; $5714: $63
	rlca                                             ; $5715: $07
	stop                                             ; $5716: $10 $00
	sub d                                            ; $5718: $92
	ld [$318c], sp                                   ; $5719: $08 $8c $31
	add b                                            ; $571c: $80
	and b                                            ; $571d: $a0
	xor b                                            ; $571e: $a8
	ld l, b                                          ; $571f: $68
	or h                                             ; $5720: $b4
	ld de, $cfe5                                     ; $5721: $11 $e5 $cf
	ld a, a                                          ; $5724: $7f
	ld e, a                                          ; $5725: $5f
	ld d, a                                          ; $5726: $57
	sub a                                            ; $5727: $97
	ld c, e                                          ; $5728: $4b
	xor $1a                                          ; $5729: $ee $1a
	push bc                                          ; $572b: $c5
	ld b, a                                          ; $572c: $47
	daa                                              ; $572d: $27
	ld a, d                                          ; $572e: $7a
	or c                                             ; $572f: $b1
	ld a, a                                          ; $5730: $7f
	ld sp, $f67e                                     ; $5731: $31 $7e $f6
	sbc $fc                                          ; $5734: $de $fc
	ld [hl], a                                       ; $5736: $77
	cp [hl]                                          ; $5737: $be
	jp c, Jump_055_67ff                              ; $5738: $da $ff $67

	adc b                                            ; $573b: $88
	reti                                             ; $573c: $d9


	ld hl, sp-$27                                    ; $573d: $f8 $d9
	rlca                                             ; $573f: $07
	add d                                            ; $5740: $82
	ld a, [de]                                       ; $5741: $1a
	inc c                                            ; $5742: $0c

jr_055_5743:
	inc e                                            ; $5743: $1c
	jr z, jr_055_5776                                ; $5744: $28 $30

	ld [hl], b                                       ; $5746: $70
	pop hl                                           ; $5747: $e1
	ld b, c                                          ; $5748: $41
	db $fd                                           ; $5749: $fd
	ei                                               ; $574a: $fb
	di                                               ; $574b: $f3
	rst FarCall                                          ; $574c: $f7
	rst AddAOntoHL                                          ; $574d: $ef
	rst GetHLinHL                                          ; $574e: $cf
	sbc [hl]                                         ; $574f: $9e
	cp [hl]                                          ; $5750: $be
	dec e                                            ; $5751: $1d
	ld a, [hl-]                                      ; $5752: $3a
	cpl                                              ; $5753: $2f
	ld e, a                                          ; $5754: $5f
	rst AddAOntoHL                                          ; $5755: $ef
	xor l                                            ; $5756: $ad
	adc $c6                                          ; $5757: $ce $c6
	rst SubAFromBC                                          ; $5759: $e7
	rst GetHLinHL                                          ; $575a: $cf
	rst SubAFromDE                                          ; $575b: $df
	cp a                                             ; $575c: $bf
	ccf                                              ; $575d: $3f
	ld a, d                                          ; $575e: $7a
	call z, $857e                                    ; $575f: $cc $7e $85
	sbc c                                            ; $5762: $99
	ld hl, sp-$20                                    ; $5763: $f8 $e0
	nop                                              ; $5765: $00
	ret nz                                           ; $5766: $c0

	ld h, b                                          ; $5767: $60
	jr jr_055_5743                                   ; $5768: $18 $d9

	rst $38                                          ; $576a: $ff
	ld a, h                                          ; $576b: $7c
	ld [hl], h                                       ; $576c: $74
	sbc $40                                          ; $576d: $de $40
	sbc $20                                          ; $576f: $de $20
	call c, $dec0                                    ; $5771: $dc $c0 $de
	ldh [hDisp1_WX], a                                     ; $5774: $e0 $96

jr_055_5776:
	ld bc, $0202                                     ; $5776: $01 $02 $02
	dec b                                            ; $5779: $05
	ld [$1c0a], sp                                   ; $577a: $08 $0a $1c
	db $10                                           ; $577d: $10
	ld bc, $9279                                     ; $577e: $01 $79 $92
	adc e                                            ; $5781: $8b
	dec c                                            ; $5782: $0d
	add hl, bc                                       ; $5783: $09
	inc de                                           ; $5784: $13
	rla                                              ; $5785: $17
	ld b, $0a                                        ; $5786: $06 $0a
	inc c                                            ; $5788: $0c
	inc d                                            ; $5789: $14

jr_055_578a:
	jr jr_055_57b4                                   ; $578a: $18 $28

	jr nc, jr_055_57de                               ; $578c: $30 $50

	ld a, d                                          ; $578e: $7a
	halt                                             ; $578f: $76
	db $f4                                           ; $5790: $f4
	db $ec                                           ; $5791: $ec
	add sp, -$28                                     ; $5792: $e8 $d8
	ret nc                                           ; $5794: $d0

	or b                                             ; $5795: $b0
	pop af                                           ; $5796: $f1
	sbc l                                            ; $5797: $9d
	ld a, [de]                                       ; $5798: $1a
	dec c                                            ; $5799: $0d
	ld a, c                                          ; $579a: $79
	ld h, a                                          ; $579b: $67
	sbc d                                            ; $579c: $9a
	rra                                              ; $579d: $1f
	ld c, $3c                                        ; $579e: $0e $3c
	ld de, $7508                                     ; $57a0: $11 $08 $75
	ld d, a                                          ; $57a3: $57
	ld a, l                                          ; $57a4: $7d
	ld d, [hl]                                       ; $57a5: $56
	add a                                            ; $57a6: $87
	jr z, jr_055_57bd                                ; $57a7: $28 $14

	adc d                                            ; $57a9: $8a
	push hl                                          ; $57aa: $e5
	sub d                                            ; $57ab: $92
	add hl, bc                                       ; $57ac: $09
	xor b                                            ; $57ad: $a8
	inc l                                            ; $57ae: $2c
	ret c                                            ; $57af: $d8

	db $ec                                           ; $57b0: $ec
	halt                                             ; $57b1: $76
	ei                                               ; $57b2: $fb
	ld a, l                                          ; $57b3: $7d

jr_055_57b4:
	ld a, [hl]                                       ; $57b4: $7e
	ld e, a                                          ; $57b5: $5f
	db $db                                           ; $57b6: $db
	nop                                              ; $57b7: $00
	nop                                              ; $57b8: $00
	inc b                                            ; $57b9: $04
	nop                                              ; $57ba: $00
	adc d                                            ; $57bb: $8a
	ld b, c                                          ; $57bc: $41

jr_055_57bd:
	and d                                            ; $57bd: $a2
	ld e, a                                          ; $57be: $5f
	ld [hl], e                                       ; $57bf: $73
	ld d, e                                          ; $57c0: $53
	ld a, a                                          ; $57c1: $7f

Jump_055_57c2:
	adc b                                            ; $57c2: $88
	sub a                                            ; $57c3: $97
	or b                                             ; $57c4: $b0
	dec e                                            ; $57c5: $1d
	ccf                                              ; $57c6: $3f
	ld c, $b7                                        ; $57c7: $0e $b7
	ld e, a                                          ; $57c9: $5f
	cp l                                             ; $57ca: $bd
	ld e, a                                          ; $57cb: $5f
	ld h, a                                          ; $57cc: $67
	ld b, b                                          ; $57cd: $40
	rst $38                                          ; $57ce: $ff
	sbc c                                            ; $57cf: $99
	ld d, b                                          ; $57d0: $50
	xor b                                            ; $57d1: $a8
	push de                                          ; $57d2: $d5
	xor d                                            ; $57d3: $aa
	rst FarCall                                          ; $57d4: $f7
	cp $5f                                           ; $57d5: $fe $5f
	ldh a, [$98]                                     ; $57d7: $f0 $98
	nop                                              ; $57d9: $00
	jr nz, jr_055_5830                               ; $57da: $20 $54

	cp c                                             ; $57dc: $b9
	ld a, [hl]                                       ; $57dd: $7e

jr_055_57de:
	xor e                                            ; $57de: $ab
	or $63                                           ; $57df: $f6 $63
	and b                                            ; $57e1: $a0
	sub a                                            ; $57e2: $97
	jr nz, jr_055_578a                               ; $57e3: $20 $a5

	jp nc, $2c02                                     ; $57e5: $d2 $02 $2c

	and e                                            ; $57e8: $a3
	rst AddAOntoHL                                          ; $57e9: $ef
	db $fd                                           ; $57ea: $fd
	ld a, d                                          ; $57eb: $7a
	push bc                                          ; $57ec: $c5
	ld [hl], l                                       ; $57ed: $75
	or e                                             ; $57ee: $b3
	add b                                            ; $57ef: $80
	daa                                              ; $57f0: $27
	db $db                                           ; $57f1: $db
	xor [hl]                                         ; $57f2: $ae
	daa                                              ; $57f3: $27
	sbc e                                            ; $57f4: $9b
	or l                                             ; $57f5: $b5
	db $d3                                           ; $57f6: $d3
	ld l, l                                          ; $57f7: $6d
	ld hl, sp-$44                                    ; $57f8: $f8 $bc
	rst $38                                          ; $57fa: $ff
	rst $38                                          ; $57fb: $ff
	rst FarCall                                          ; $57fc: $f7
	rst $38                                          ; $57fd: $ff
	rst $38                                          ; $57fe: $ff
	cp a                                             ; $57ff: $bf
	rra                                              ; $5800: $1f
	xor a                                            ; $5801: $af
	reti                                             ; $5802: $d9


	rra                                              ; $5803: $1f
	ld a, [$76df]                                    ; $5804: $fa $df $76
	rst SubAFromHL                                          ; $5807: $d7
	ldh [$50], a                                     ; $5808: $e0 $50
	ld h, $e0                                        ; $580a: $26 $e0
	add l                                            ; $580c: $85
	ldh [$f9], a                                     ; $580d: $e0 $f9
	add b                                            ; $580f: $80
	ld hl, sp+$64                                    ; $5810: $f8 $64
	jp nz, $a2d9                                     ; $5812: $c2 $d9 $a2

	ret nz                                           ; $5815: $c0

	ld c, b                                          ; $5816: $48
	ld e, b                                          ; $5817: $58
	ld d, [hl]                                       ; $5818: $56
	sbc e                                            ; $5819: $9b
	dec a                                            ; $581a: $3d
	ld h, $5d                                        ; $581b: $26 $5d
	ccf                                              ; $581d: $3f
	or a                                             ; $581e: $b7
	and a                                            ; $581f: $a7
	xor c                                            ; $5820: $a9
	ld d, b                                          ; $5821: $50
	add b                                            ; $5822: $80
	add b                                            ; $5823: $80
	sub b                                            ; $5824: $90
	ld b, b                                          ; $5825: $40
	adc c                                            ; $5826: $89
	sub d                                            ; $5827: $92
	inc d                                            ; $5828: $14
	xor a                                            ; $5829: $af
	ld a, a                                          ; $582a: $7f
	ld a, a                                          ; $582b: $7f
	ld l, a                                          ; $582c: $6f
	cp a                                             ; $582d: $bf
	halt                                             ; $582e: $76
	sbc l                                            ; $582f: $9d

jr_055_5830:
	ld l, l                                          ; $5830: $6d
	db $eb                                           ; $5831: $eb
	ld a, d                                          ; $5832: $7a
	ld a, [de]                                       ; $5833: $1a
	sbc l                                            ; $5834: $9d
	rlca                                             ; $5835: $07
	inc bc                                           ; $5836: $03
	ld a, c                                          ; $5837: $79
	ldh [c], a                                       ; $5838: $e2
	ld a, a                                          ; $5839: $7f
	inc d                                            ; $583a: $14
	ld l, [hl]                                       ; $583b: $6e
	ld l, a                                          ; $583c: $6f
	sub [hl]                                         ; $583d: $96
	ld sp, hl                                        ; $583e: $f9
	ldh a, [c]                                       ; $583f: $f2
	db $f4                                           ; $5840: $f4
	db $f4                                           ; $5841: $f4
	add sp, -$18                                     ; $5842: $e8 $e8
	ldh a, [$60]                                     ; $5844: $f0 $60
	rlca                                             ; $5846: $07
	sbc $0f                                          ; $5847: $de $0f
	rst SubAFromDE                                          ; $5849: $df
	rra                                              ; $584a: $1f
	ld a, l                                          ; $584b: $7d
	ld d, l                                          ; $584c: $55
	sub e                                            ; $584d: $93
	jp nz, $0687                                     ; $584e: $c2 $87 $06

	ld c, $1c                                        ; $5851: $0e $1c
	jr c, jr_055_587d                                ; $5853: $38 $28

	ld [hl], b                                       ; $5855: $70
	dec a                                            ; $5856: $3d
	ld a, c                                          ; $5857: $79
	ei                                               ; $5858: $fb
	di                                               ; $5859: $f3
	ld a, d                                          ; $585a: $7a
	call z, $9f9d                                    ; $585b: $cc $9d $9f
	rst JumpTable                                          ; $585e: $c7
	sbc $c3                                          ; $585f: $de $c3
	rst SubAFromDE                                          ; $5861: $df
	pop bc                                           ; $5862: $c1
	rst SubAFromDE                                          ; $5863: $df
	ldh [$d9], a                                     ; $5864: $e0 $d9
	rst $38                                          ; $5866: $ff
	sbc h                                            ; $5867: $9c
	inc c                                            ; $5868: $0c
	add e                                            ; $5869: $83
	pop bc                                           ; $586a: $c1
	ld a, c                                          ; $586b: $79
	ld [$2771], a                                    ; $586c: $ea $71 $27
	ld l, c                                          ; $586f: $69
	add b                                            ; $5870: $80
	sbc c                                            ; $5871: $99
	sub b                                            ; $5872: $90
	ret nc                                           ; $5873: $d0

	jr nc, jr_055_5887                               ; $5874: $30 $11

	inc de                                           ; $5876: $13
	ld [hl+], a                                      ; $5877: $22
	ld [hl], c                                       ; $5878: $71
	add b                                            ; $5879: $80
	adc h                                            ; $587a: $8c
	pop af                                           ; $587b: $f1
	ldh a, [c]                                       ; $587c: $f2

jr_055_587d:
	ldh [c], a                                       ; $587d: $e2
	jr z, jr_055_58c0                                ; $587e: $28 $40

	ld d, b                                          ; $5880: $50
	pop bc                                           ; $5881: $c1
	add c                                            ; $5882: $81
	ld b, d                                          ; $5883: $42
	inc bc                                           ; $5884: $03
	add l                                            ; $5885: $85
	daa                                              ; $5886: $27

jr_055_5887:
	ld l, a                                          ; $5887: $6f
	ld c, a                                          ; $5888: $4f
	sbc [hl]                                         ; $5889: $9e
	cp [hl]                                          ; $588a: $be
	dec a                                            ; $588b: $3d
	ld a, l                                          ; $588c: $7d
	ld a, e                                          ; $588d: $7b
	ld a, c                                          ; $588e: $79
	ld d, b                                          ; $588f: $50
	ld a, h                                          ; $5890: $7c
	sbc a                                            ; $5891: $9f
	ld a, c                                          ; $5892: $79
	ldh [c], a                                       ; $5893: $e2
	sbc h                                            ; $5894: $9c
	and b                                            ; $5895: $a0
	ld h, b                                          ; $5896: $60
	ld b, b                                          ; $5897: $40
	ld a, c                                          ; $5898: $79
	ld c, b                                          ; $5899: $48
	rst $38                                          ; $589a: $ff
	sub a                                            ; $589b: $97
	ld [bc], a                                       ; $589c: $02
	rlca                                             ; $589d: $07
	ld e, d                                          ; $589e: $5a
	dec b                                            ; $589f: $05
	ld [hl+], a                                      ; $58a0: $22
	ld c, e                                          ; $58a1: $4b
	rst AddAOntoHL                                          ; $58a2: $ef
	ld d, d                                          ; $58a3: $52
	ld sp, hl                                        ; $58a4: $f9
	sub a                                            ; $58a5: $97
	db $fd                                           ; $58a6: $fd
	ld e, b                                          ; $58a7: $58
	ld a, [$b470]                                    ; $58a8: $fa $70 $b4
	ld h, c                                          ; $58ab: $61
	xor c                                            ; $58ac: $a9
	jp nz, $937a                                     ; $58ad: $c2 $7a $93

	add d                                            ; $58b0: $82
	dec de                                           ; $58b1: $1b
	inc de                                           ; $58b2: $13
	ld [hl], $26                                     ; $58b3: $36 $26
	ld l, l                                          ; $58b5: $6d
	ld [hl], d                                       ; $58b6: $72
	ld d, c                                          ; $58b7: $51
	ld hl, sp-$44                                    ; $58b8: $f8 $bc
	cp $6b                                           ; $58ba: $fe $6b
	push af                                          ; $58bc: $f5
	db $db                                           ; $58bd: $db
	sbc c                                            ; $58be: $99
	cp b                                             ; $58bf: $b8

jr_055_58c0:
	inc l                                            ; $58c0: $2c
	ld h, [hl]                                       ; $58c1: $66
	ld b, e                                          ; $58c2: $43
	pop bc                                           ; $58c3: $c1
	add b                                            ; $58c4: $80
	add b                                            ; $58c5: $80
	cpl                                              ; $58c6: $2f
	rla                                              ; $58c7: $17
	adc e                                            ; $58c8: $8b
	ld b, l                                          ; $58c9: $45
	ld [hl+], a                                      ; $58ca: $22
	ld de, $c488                                     ; $58cb: $11 $88 $c4
	ld a, d                                          ; $58ce: $7a
	or b                                             ; $58cf: $b0
	add b                                            ; $58d0: $80
	dec sp                                           ; $58d1: $3b
	dec e                                            ; $58d2: $1d
	adc [hl]                                         ; $58d3: $8e
	rst JumpTable                                          ; $58d4: $c7
	ld h, e                                          ; $58d5: $63
	rst FarCall                                          ; $58d6: $f7
	rst SubAFromDE                                          ; $58d7: $df
	ld a, [$aa75]                                    ; $58d8: $fa $75 $aa
	ld b, b                                          ; $58db: $40
	and b                                            ; $58dc: $a0
	ld d, b                                          ; $58dd: $50
	ld [$0520], sp                                   ; $58de: $08 $20 $05
	adc d                                            ; $58e1: $8a
	push de                                          ; $58e2: $d5
	rst $38                                          ; $58e3: $ff
	ld a, a                                          ; $58e4: $7f
	cp a                                             ; $58e5: $bf
	rst $38                                          ; $58e6: $ff
	ld a, a                                          ; $58e7: $7f
	xor d                                            ; $58e8: $aa
	ld d, l                                          ; $58e9: $55
	ld [hl+], a                                      ; $58ea: $22
	nop                                              ; $58eb: $00
	ld c, b                                          ; $58ec: $48
	ld bc, $8000                                     ; $58ed: $01 $00 $80
	sbc d                                            ; $58f0: $9a
	ld d, l                                          ; $58f1: $55
	xor d                                            ; $58f2: $aa
	db $dd                                           ; $58f3: $dd
	rst $38                                          ; $58f4: $ff
	or a                                             ; $58f5: $b7
	ld a, e                                          ; $58f6: $7b
	dec l                                            ; $58f7: $2d
	sbc c                                            ; $58f8: $99
	rst FarCall                                          ; $58f9: $f7
	ld c, e                                          ; $58fa: $4b
	sub l                                            ; $58fb: $95
	ld b, d                                          ; $58fc: $42
	dec h                                            ; $58fd: $25
	ld b, d                                          ; $58fe: $42
	ld a, c                                          ; $58ff: $79
	ld e, e                                          ; $5900: $5b
	sbc d                                            ; $5901: $9a
	or h                                             ; $5902: $b4
	ld l, d                                          ; $5903: $6a
	cp l                                             ; $5904: $bd
	jp c, $65bd                                      ; $5905: $da $bd $65

	nop                                              ; $5908: $00
	sbc e                                            ; $5909: $9b
	ld [hl+], a                                      ; $590a: $22
	dec h                                            ; $590b: $25
	ld d, l                                          ; $590c: $55
	ld d, d                                          ; $590d: $52
	sbc $22                                          ; $590e: $de $22
	sbc e                                            ; $5910: $9b
	ld [hl-], a                                      ; $5911: $32
	ld [hl+], a                                      ; $5912: $22
	ld [hl+], a                                      ; $5913: $22
	ld b, l                                          ; $5914: $45
	sbc $55                                          ; $5915: $de $55
	sub d                                            ; $5917: $92
	ld [hl+], a                                      ; $5918: $22
	inc hl                                           ; $5919: $23
	inc hl                                           ; $591a: $23
	ld [hl-], a                                      ; $591b: $32
	inc h                                            ; $591c: $24
	ld b, h                                          ; $591d: $44
	ld b, l                                          ; $591e: $45
	ld d, h                                          ; $591f: $54
	ld b, h                                          ; $5920: $44
	ld [hl+], a                                      ; $5921: $22
	ld d, d                                          ; $5922: $52
	inc sp                                           ; $5923: $33
	inc sp                                           ; $5924: $33
	ld a, e                                          ; $5925: $7b
	or $9a                                           ; $5926: $f6 $9a
	ld d, l                                          ; $5928: $55
	ld b, h                                          ; $5929: $44
	ld b, d                                          ; $592a: $42
	ld [hl+], a                                      ; $592b: $22
	dec h                                            ; $592c: $25
	ld a, e                                          ; $592d: $7b
	or $df                                           ; $592e: $f6 $df
	ld b, h                                          ; $5930: $44
	ld a, e                                          ; $5931: $7b
	db $ed                                           ; $5932: $ed
	sbc [hl]                                         ; $5933: $9e
	ld [hl+], a                                      ; $5934: $22
	ld a, e                                          ; $5935: $7b
	rst FarCall                                          ; $5936: $f7
	sbc h                                            ; $5937: $9c
	dec h                                            ; $5938: $25
	ld b, h                                          ; $5939: $44
	ld b, h                                          ; $593a: $44
	ld [hl], a                                       ; $593b: $77
	ret nc                                           ; $593c: $d0

	sbc l                                            ; $593d: $9d
	inc sp                                           ; $593e: $33
	dec h                                            ; $593f: $25
	ld [hl], a                                       ; $5940: $77
	or $db                                           ; $5941: $f6 $db
	ld [hl+], a                                      ; $5943: $22
	ld a, a                                          ; $5944: $7f
	pop af                                           ; $5945: $f1
	ld [hl], a                                       ; $5946: $77
	or $7f                                           ; $5947: $f6 $7f
	ret z                                            ; $5949: $c8

	rst SubAFromDE                                          ; $594a: $df
	ld [hl+], a                                      ; $594b: $22
	ld a, a                                          ; $594c: $7f
	pop bc                                           ; $594d: $c1
	rst SubAFromDE                                          ; $594e: $df
	ld b, h                                          ; $594f: $44
	sbc h                                            ; $5950: $9c
	ld h, [hl]                                       ; $5951: $66
	inc hl                                           ; $5952: $23
	inc sp                                           ; $5953: $33
	ld [hl], a                                       ; $5954: $77
	or $9e                                           ; $5955: $f6 $9e
	ld d, d                                          ; $5957: $52
	ld a, e                                          ; $5958: $7b
	or $9e                                           ; $5959: $f6 $9e
	ld h, [hl]                                       ; $595b: $66
	ld a, e                                          ; $595c: $7b
	or $9b                                           ; $595d: $f6 $9b
	dec h                                            ; $595f: $25
	ld d, d                                          ; $5960: $52
	ld d, l                                          ; $5961: $55
	ld d, h                                          ; $5962: $54
	ld a, e                                          ; $5963: $7b
	or $7b                                           ; $5964: $f6 $7b
	ldh [c], a                                       ; $5966: $e2
	sbc l                                            ; $5967: $9d
	dec h                                            ; $5968: $25
	ld d, h                                          ; $5969: $54
	ld a, e                                          ; $596a: $7b
	or $c5                                           ; $596b: $f6 $c5
	ld a, [bc]                                       ; $596d: $0a
	sub l                                            ; $596e: $95
	add b                                            ; $596f: $80
	ld a, a                                          ; $5970: $7f
	ldh [$1f], a                                     ; $5971: $e0 $1f
	ldh a, [rIF]                                     ; $5973: $f0 $0f
	db $fc                                           ; $5975: $fc
	inc bc                                           ; $5976: $03
	rst $38                                          ; $5977: $ff
	nop                                              ; $5978: $00
	ld [hl], a                                       ; $5979: $77
	cp $9d                                           ; $597a: $fe $9d
	rst AddAOntoHL                                          ; $597c: $ef
	db $10                                           ; $597d: $10
	ld [hl], e                                       ; $597e: $73
	ld sp, hl                                        ; $597f: $f9
	ld [hl], e                                       ; $5980: $73
	cp $77                                           ; $5981: $fe $77
	add sp, -$63                                     ; $5983: $e8 $9d
	ld hl, sp+$07                                    ; $5985: $f8 $07
	ld e, a                                          ; $5987: $5f
	ldh a, [$03]                                     ; $5988: $f0 $03
	cp $90                                           ; $598a: $fe $90
	rst $38                                          ; $598c: $ff
	ld bc, $03fe                                     ; $598d: $01 $fe $03
	db $fc                                           ; $5990: $fc
	ccf                                              ; $5991: $3f
	ret nz                                           ; $5992: $c0

	rra                                              ; $5993: $1f
	ldh [rTAC], a                                    ; $5994: $e0 $07
	ld hl, sp+$07                                    ; $5996: $f8 $07
	ld hl, sp+$1f                                    ; $5998: $f8 $1f
	ldh [$6f], a                                     ; $599a: $e0 $6f
	db $eb                                           ; $599c: $eb
	adc l                                            ; $599d: $8d
	ld d, l                                          ; $599e: $55
	xor d                                            ; $599f: $aa
	xor d                                            ; $59a0: $aa
	ld d, l                                          ; $59a1: $55
	push de                                          ; $59a2: $d5
	ld a, [hl+]                                      ; $59a3: $2a
	xor b                                            ; $59a4: $a8
	ld d, a                                          ; $59a5: $57
	ldh a, [c]                                       ; $59a6: $f2
	dec c                                            ; $59a7: $0d
	db $e4                                           ; $59a8: $e4
	dec de                                           ; $59a9: $1b
	ldh a, [rIF]                                     ; $59aa: $f0 $0f
	ldh [$1f], a                                     ; $59ac: $e0 $1f
	add b                                            ; $59ae: $80
	ld a, a                                          ; $59af: $7f
	ld l, a                                          ; $59b0: $6f
	call nc, $f86f                                   ; $59b1: $d4 $6f $f8
	ld a, a                                          ; $59b4: $7f
	adc $17                                          ; $59b5: $ce $17
	or b                                             ; $59b7: $b0
	sbc e                                            ; $59b8: $9b
	rlca                                             ; $59b9: $07
	rst $38                                          ; $59ba: $ff
	inc d                                            ; $59bb: $14
	ld hl, sp+$5f                                    ; $59bc: $f8 $5f
	ldh a, [c]                                       ; $59be: $f2
	sub l                                            ; $59bf: $95
	ld [bc], a                                       ; $59c0: $02
	rst $38                                          ; $59c1: $ff
	ldh a, [c]                                       ; $59c2: $f2
	rst $38                                          ; $59c3: $ff
	ld c, l                                          ; $59c4: $4d
	sbc a                                            ; $59c5: $9f
	nop                                              ; $59c6: $00
	rst $38                                          ; $59c7: $ff
	inc b                                            ; $59c8: $04
	ei                                               ; $59c9: $fb
	scf                                              ; $59ca: $37
	add [hl]                                         ; $59cb: $86
	ld e, a                                          ; $59cc: $5f
	db $f4                                           ; $59cd: $f4
	sbc e                                            ; $59ce: $9b
	ld d, c                                          ; $59cf: $51
	xor [hl]                                         ; $59d0: $ae
	xor b                                            ; $59d1: $a8
	ld d, a                                          ; $59d2: $57
	ld [hl], a                                       ; $59d3: $77
	adc d                                            ; $59d4: $8a
	ld a, a                                          ; $59d5: $7f
	db $fc                                           ; $59d6: $fc
	add a                                            ; $59d7: $87
	ld a, [bc]                                       ; $59d8: $0a
	push af                                          ; $59d9: $f5
	rlca                                             ; $59da: $07
	ld hl, sp+$05                                    ; $59db: $f8 $05
	ld a, [$d52a]                                    ; $59dd: $fa $2a $d5
	sub l                                            ; $59e0: $95
	ld l, d                                          ; $59e1: $6a
	ld a, [hl-]                                      ; $59e2: $3a
	push bc                                          ; $59e3: $c5
	cp a                                             ; $59e4: $bf
	ld b, b                                          ; $59e5: $40
	ld e, a                                          ; $59e6: $5f
	and b                                            ; $59e7: $a0
	cp a                                             ; $59e8: $bf
	ld b, b                                          ; $59e9: $40
	cp $01                                           ; $59ea: $fe $01
	ld b, b                                          ; $59ec: $40
	cp a                                             ; $59ed: $bf
	add b                                            ; $59ee: $80
	ld a, a                                          ; $59ef: $7f
	ld [hl], a                                       ; $59f0: $77
	db $fc                                           ; $59f1: $fc
	ld a, a                                          ; $59f2: $7f
	adc $99                                          ; $59f3: $ce $99
	adc d                                            ; $59f5: $8a
	ld [hl], l                                       ; $59f6: $75
	ld d, l                                          ; $59f7: $55
	xor d                                            ; $59f8: $aa
	xor [hl]                                         ; $59f9: $ae
	ld d, b                                          ; $59fa: $50
	ld a, e                                          ; $59fb: $7b
	ldh [$8c], a                                     ; $59fc: $e0 $8c
	call nc, $a854                                   ; $59fe: $d4 $54 $a8
	add hl, hl                                       ; $5a01: $29
	ret nc                                           ; $5a02: $d0

	ld d, c                                          ; $5a03: $51
	and b                                            ; $5a04: $a0
	db $e3                                           ; $5a05: $e3
	nop                                              ; $5a06: $00
	adc h                                            ; $5a07: $8c
	inc bc                                           ; $5a08: $03
	jr nz, @+$21                                     ; $5a09: $20 $1f

	ld d, h                                          ; $5a0b: $54
	inc bc                                           ; $5a0c: $03
	jr z, jr_055_5a16                                ; $5a0d: $28 $07

	ldh a, [rIF]                                     ; $5a0f: $f0 $0f
	ld h, a                                          ; $5a11: $67
	ld e, d                                          ; $5a12: $5a
	ccf                                              ; $5a13: $3f
	cp $9c                                           ; $5a14: $fe $9c

jr_055_5a16:
	ld c, l                                          ; $5a16: $4d
	add b                                            ; $5a17: $80
	rrca                                             ; $5a18: $0f
	ld a, e                                          ; $5a19: $7b
	cp $89                                           ; $5a1a: $fe $89
	ld e, a                                          ; $5a1c: $5f
	add b                                            ; $5a1d: $80
	sbc [hl]                                         ; $5a1e: $9e
	nop                                              ; $5a1f: $00
	ld b, a                                          ; $5a20: $47
	add b                                            ; $5a21: $80
	daa                                              ; $5a22: $27

jr_055_5a23:
	ret nz                                           ; $5a23: $c0

	inc de                                           ; $5a24: $13
	ldh [$fb], a                                     ; $5a25: $e0 $fb
	inc b                                            ; $5a27: $04
	rst FarCall                                          ; $5a28: $f7
	ld [$10ef], sp                                   ; $5a29: $08 $ef $10
	ld a, a                                          ; $5a2c: $7f
	add b                                            ; $5a2d: $80
	ld a, a                                          ; $5a2e: $7f
	add b                                            ; $5a2f: $80
	rst $38                                          ; $5a30: $ff
	nop                                              ; $5a31: $00
	ld [hl], a                                       ; $5a32: $77
	sbc h                                            ; $5a33: $9c
	ld a, [hl]                                       ; $5a34: $7e
	or [hl]                                          ; $5a35: $b6
	ld a, a                                          ; $5a36: $7f
	cp $7f                                           ; $5a37: $fe $7f
	sbc d                                            ; $5a39: $9a
	ld l, a                                          ; $5a3a: $6f
	cp $77                                           ; $5a3b: $fe $77
	db $f4                                           ; $5a3d: $f4
	ld b, $cc                                        ; $5a3e: $06 $cc
	sub a                                            ; $5a40: $97
	rrca                                             ; $5a41: $0f
	ldh a, [$1f]                                     ; $5a42: $f0 $1f
	ldh [$1f], a                                     ; $5a44: $e0 $1f
	ldh [$3f], a                                     ; $5a46: $e0 $3f
	ret nz                                           ; $5a48: $c0

	halt                                             ; $5a49: $76
	ret z                                            ; $5a4a: $c8

	ld a, a                                          ; $5a4b: $7f
	cp $7f                                           ; $5a4c: $fe $7f
	ldh a, [c]                                       ; $5a4e: $f2
	ld [hl], a                                       ; $5a4f: $77
	jp nz, $e777                                     ; $5a50: $c2 $77 $e7

	ld [hl], a                                       ; $5a53: $77
	xor b                                            ; $5a54: $a8
	sbc e                                            ; $5a55: $9b
	rst SubAFromBC                                          ; $5a56: $e7
	jr jr_055_5a23                                   ; $5a57: $18 $ca

	dec [hl]                                         ; $5a59: $35
	ld [hl], a                                       ; $5a5a: $77
	halt                                             ; $5a5b: $76
	ld a, a                                          ; $5a5c: $7f
	ld d, b                                          ; $5a5d: $50
	ld a, a                                          ; $5a5e: $7f
	cp $95                                           ; $5a5f: $fe $95
	and b                                            ; $5a61: $a0
	ld e, a                                          ; $5a62: $5f
	ldh [$1f], a                                     ; $5a63: $e0 $1f
	adc $31                                          ; $5a65: $ce $31
	or l                                             ; $5a67: $b5
	ld b, b                                          ; $5a68: $40
	ld [bc], a                                       ; $5a69: $02
	db $fc                                           ; $5a6a: $fc
	ld c, [hl]                                       ; $5a6b: $4e
	call z, $e077                                    ; $5a6c: $cc $77 $e0
	ld a, a                                          ; $5a6f: $7f
	rst GetHLinHL                                          ; $5a70: $cf
	ld a, [hl]                                       ; $5a71: $7e
	db $e4                                           ; $5a72: $e4
	ld a, a                                          ; $5a73: $7f
	cp $9c                                           ; $5a74: $fe $9c
	dec b                                            ; $5a76: $05
	rst $38                                          ; $5a77: $ff
	inc bc                                           ; $5a78: $03
	ld a, e                                          ; $5a79: $7b
	cp $80                                           ; $5a7a: $fe $80
	ld h, b                                          ; $5a7c: $60
	rst $38                                          ; $5a7d: $ff
	or c                                             ; $5a7e: $b1
	ret nz                                           ; $5a7f: $c0

	ld d, b                                          ; $5a80: $50
	xor a                                            ; $5a81: $af
	sub $78                                          ; $5a82: $d6 $78
	xor d                                            ; $5a84: $aa
	rst FarCall                                          ; $5a85: $f7
	cpl                                              ; $5a86: $2f
	push af                                          ; $5a87: $f5
	ld d, e                                          ; $5a88: $53
	db $fd                                           ; $5a89: $fd
	ld d, a                                          ; $5a8a: $57
	ld hl, sp-$7b                                    ; $5a8b: $f8 $85
	ld l, e                                          ; $5a8d: $6b
	ld e, c                                          ; $5a8e: $59
	cp [hl]                                          ; $5a8f: $be
	ret                                              ; $5a90: $c9


	ld h, b                                          ; $5a91: $60
	ld d, $a0                                        ; $5a92: $16 $a0
	dec hl                                           ; $5a94: $2b
	ld [hl], b                                       ; $5a95: $70
	ld e, e                                          ; $5a96: $5b
	db $fc                                           ; $5a97: $fc
	ld h, a                                          ; $5a98: $67
	rst $38                                          ; $5a99: $ff
	ld a, h                                          ; $5a9a: $7c
	adc [hl]                                         ; $5a9b: $8e
	adc $80                                          ; $5a9c: $ce $80
	rst $38                                          ; $5a9e: $ff
	ld b, b                                          ; $5a9f: $40
	rst $38                                          ; $5aa0: $ff
	ld h, b                                          ; $5aa1: $60
	ccf                                              ; $5aa2: $3f
	or b                                             ; $5aa3: $b0
	rra                                              ; $5aa4: $1f
	ld c, b                                          ; $5aa5: $48
	rra                                              ; $5aa6: $1f
	ld e, b                                          ; $5aa7: $58
	rrca                                             ; $5aa8: $0f
	push hl                                          ; $5aa9: $e5
	ld c, $6c                                        ; $5aaa: $0e $6c
	add a                                            ; $5aac: $87
	ld l, [hl]                                       ; $5aad: $6e
	call nz, $d67e                                   ; $5aae: $c4 $7e $d6
	ld a, a                                          ; $5ab1: $7f
	ld a, [$0899]                                    ; $5ab2: $fa $99 $08
	rst FarCall                                          ; $5ab5: $f7
	dec h                                            ; $5ab6: $25
	jp c, Jump_055_758a                              ; $5ab7: $da $8a $75

	halt                                             ; $5aba: $76
	inc a                                            ; $5abb: $3c
	add b                                            ; $5abc: $80
	ld d, a                                          ; $5abd: $57
	xor b                                            ; $5abe: $a8
	cp [hl]                                          ; $5abf: $be
	ld b, b                                          ; $5ac0: $40
	ld a, a                                          ; $5ac1: $7f
	add b                                            ; $5ac2: $80
	db $fc                                           ; $5ac3: $fc
	nop                                              ; $5ac4: $00
	ld a, e                                          ; $5ac5: $7b
	add b                                            ; $5ac6: $80
	db $fc                                           ; $5ac7: $fc
	inc bc                                           ; $5ac8: $03
	db $fd                                           ; $5ac9: $fd
	nop                                              ; $5aca: $00
	jp hl                                            ; $5acb: $e9


	nop                                              ; $5acc: $00
	pop de                                           ; $5acd: $d1
	nop                                              ; $5ace: $00
	and d                                            ; $5acf: $a2
	ld bc, $0344                                     ; $5ad0: $01 $44 $03
	db $10                                           ; $5ad3: $10
	rrca                                             ; $5ad4: $0f
	ret nz                                           ; $5ad5: $c0

	ccf                                              ; $5ad6: $3f
	nop                                              ; $5ad7: $00
	rst $38                                          ; $5ad8: $ff
	ld d, b                                          ; $5ad9: $50
	and b                                            ; $5ada: $a0
	adc c                                            ; $5adb: $89
	sbc [hl]                                         ; $5adc: $9e
	ld [hl], b                                       ; $5add: $70
	ld d, a                                          ; $5ade: $57
	add b                                            ; $5adf: $80
	ld [hl], a                                       ; $5ae0: $77
	db $ec                                           ; $5ae1: $ec
	ld h, e                                          ; $5ae2: $63
	cp $6a                                           ; $5ae3: $fe $6a
	jp z, $bc7f                                      ; $5ae5: $ca $7f $bc

	ld a, a                                          ; $5ae8: $7f
	ld e, d                                          ; $5ae9: $5a
	sub d                                            ; $5aea: $92
	inc b                                            ; $5aeb: $04
	ld hl, sp+$00                                    ; $5aec: $f8 $00
	ld hl, sp+$11                                    ; $5aee: $f8 $11
	ldh [rSC], a                                     ; $5af0: $e0 $02
	ldh [rP1], a                                     ; $5af2: $e0 $00
	rst $38                                          ; $5af4: $ff
	ld a, c                                          ; $5af5: $79
	add [hl]                                         ; $5af6: $86
	add b                                            ; $5af7: $80
	cp $80                                           ; $5af8: $fe $80
	dec d                                            ; $5afa: $15
	nop                                              ; $5afb: $00
	ld a, [hl+]                                      ; $5afc: $2a
	nop                                              ; $5afd: $00
	ld d, l                                          ; $5afe: $55
	nop                                              ; $5aff: $00
	cp d                                             ; $5b00: $ba
	nop                                              ; $5b01: $00
	inc de                                           ; $5b02: $13
	ldh [hDisp1_SCY], a                                     ; $5b03: $e0 $90
	ld h, b                                          ; $5b05: $60
	ld h, c                                          ; $5b06: $61
	nop                                              ; $5b07: $00
	rlca                                             ; $5b08: $07
	nop                                              ; $5b09: $00
	ld e, a                                          ; $5b0a: $5f
	nop                                              ; $5b0b: $00
	cp h                                             ; $5b0c: $bc
	inc bc                                           ; $5b0d: $03
	ld e, h                                          ; $5b0e: $5c
	inc bc                                           ; $5b0f: $03
	ld sp, hl                                        ; $5b10: $f9
	ld b, $2f                                        ; $5b11: $06 $2f
	ret nc                                           ; $5b13: $d0

	ld d, a                                          ; $5b14: $57
	xor b                                            ; $5b15: $a8
	xor a                                            ; $5b16: $af
	ld d, b                                          ; $5b17: $50
	ld e, a                                          ; $5b18: $5f
	sub l                                            ; $5b19: $95
	and b                                            ; $5b1a: $a0
	ld a, a                                          ; $5b1b: $7f
	add b                                            ; $5b1c: $80
	cp a                                             ; $5b1d: $bf
	ld b, b                                          ; $5b1e: $40
	ld a, [hl]                                       ; $5b1f: $7e
	add c                                            ; $5b20: $81
	cp l                                             ; $5b21: $bd
	ld b, d                                          ; $5b22: $42
	ld hl, sp+$7a                                    ; $5b23: $f8 $7a
	add d                                            ; $5b25: $82
	ld a, d                                          ; $5b26: $7a
	rst FarCall                                          ; $5b27: $f7
	ld a, e                                          ; $5b28: $7b
	cp $99                                           ; $5b29: $fe $99
	ret c                                            ; $5b2b: $d8

	daa                                              ; $5b2c: $27
	cp h                                             ; $5b2d: $bc
	ld b, e                                          ; $5b2e: $43
	ld d, [hl]                                       ; $5b2f: $56
	xor c                                            ; $5b30: $a9
	ld [hl], e                                       ; $5b31: $73
	xor [hl]                                         ; $5b32: $ae
	sbc [hl]                                         ; $5b33: $9e
	rst FarCall                                          ; $5b34: $f7
	add hl, de                                       ; $5b35: $19
	call c, $f897                                    ; $5b36: $dc $97 $f8
	rrca                                             ; $5b39: $0f
	ldh a, [rIF]                                     ; $5b3a: $f0 $0f
	ldh a, [rDIV]                                    ; $5b3c: $f0 $04
	ei                                               ; $5b3e: $fb
	inc b                                            ; $5b3f: $04
	ld a, c                                          ; $5b40: $79
	jp nc, $069e                                     ; $5b41: $d2 $9e $06

	ld a, d                                          ; $5b44: $7a
	db $fc                                           ; $5b45: $fc
	sbc e                                            ; $5b46: $9b
	add l                                            ; $5b47: $85
	ld a, d                                          ; $5b48: $7a
	ld [bc], a                                       ; $5b49: $02
	db $fd                                           ; $5b4a: $fd
	halt                                             ; $5b4b: $76
	add e                                            ; $5b4c: $83
	ld [hl], d                                       ; $5b4d: $72
	db $e4                                           ; $5b4e: $e4
	ld a, e                                          ; $5b4f: $7b
	inc d                                            ; $5b50: $14
	adc a                                            ; $5b51: $8f
	db $eb                                           ; $5b52: $eb
	nop                                              ; $5b53: $00
	cp $01                                           ; $5b54: $fe $01
	rst FarCall                                          ; $5b56: $f7
	ld [$14eb], sp                                   ; $5b57: $08 $eb $14
	ld d, l                                          ; $5b5a: $55
	xor d                                            ; $5b5b: $aa
	nop                                              ; $5b5c: $00
	rst $38                                          ; $5b5d: $ff
	inc e                                            ; $5b5e: $1c
	db $e3                                           ; $5b5f: $e3
	inc c                                            ; $5b60: $0c
	di                                               ; $5b61: $f3
	halt                                             ; $5b62: $76
	ld [bc], a                                       ; $5b63: $02
	sub b                                            ; $5b64: $90
	or b                                             ; $5b65: $b0
	rrca                                             ; $5b66: $0f
	ret z                                            ; $5b67: $c8

	rlca                                             ; $5b68: $07
	ldh [rTAC], a                                    ; $5b69: $e0 $07
	add sp, $07                                      ; $5b6b: $e8 $07
	ld e, b                                          ; $5b6d: $58
	add a                                            ; $5b6e: $87
	ld [hl], b                                       ; $5b6f: $70
	adc a                                            ; $5b70: $8f
	dec b                                            ; $5b71: $05
	rst $38                                          ; $5b72: $ff
	inc b                                            ; $5b73: $04
	ld l, a                                          ; $5b74: $6f
	or [hl]                                          ; $5b75: $b6
	sbc [hl]                                         ; $5b76: $9e
	rst SubAFromDE                                          ; $5b77: $df
	ld l, a                                          ; $5b78: $6f
	or b                                             ; $5b79: $b0
	add h                                            ; $5b7a: $84
	ld e, a                                          ; $5b7b: $5f
	ld sp, hl                                        ; $5b7c: $f9
	xor a                                            ; $5b7d: $af
	ei                                               ; $5b7e: $fb
	xor e                                            ; $5b7f: $ab
	db $fd                                           ; $5b80: $fd

jr_055_5b81:
	rst SubAFromDE                                          ; $5b81: $df
	ldh a, [rPCM34]                                  ; $5b82: $f0 $77
	ld a, [$f63d]                                    ; $5b84: $fa $3d $f6
	ld e, $f0                                        ; $5b87: $1e $f0
	inc c                                            ; $5b89: $0c
	ld hl, sp+$4c                                    ; $5b8a: $f8 $4c
	add [hl]                                         ; $5b8c: $86
	inc c                                            ; $5b8d: $0c
	ld b, [hl]                                       ; $5b8e: $46
	dec c                                            ; $5b8f: $0d
	ld b, $8d                                        ; $5b90: $06 $8d
	rlca                                             ; $5b92: $07
	adc l                                            ; $5b93: $8d
	rlca                                             ; $5b94: $07
	dec c                                            ; $5b95: $0d
	ld a, e                                          ; $5b96: $7b
	cp $86                                           ; $5b97: $fe $86
	dec e                                            ; $5b99: $1d
	rlca                                             ; $5b9a: $07
	call $dca6                                       ; $5b9b: $cd $a6 $dc
	and a                                            ; $5b9e: $a7
	call nc, Call_055_54af                           ; $5b9f: $d4 $af $54
	xor a                                            ; $5ba2: $af
	cp b                                             ; $5ba3: $b8
	ld c, a                                          ; $5ba4: $4f
	xor b                                            ; $5ba5: $a8
	ld e, a                                          ; $5ba6: $5f
	xor b                                            ; $5ba7: $a8
	ld e, a                                          ; $5ba8: $5f
	ld d, b                                          ; $5ba9: $50
	cp a                                             ; $5baa: $bf
	ld d, l                                          ; $5bab: $55
	xor d                                            ; $5bac: $aa
	xor e                                            ; $5bad: $ab
	ld d, h                                          ; $5bae: $54
	ld e, a                                          ; $5baf: $5f
	and b                                            ; $5bb0: $a0
	rlca                                             ; $5bb1: $07
	ld h, c                                          ; $5bb2: $61
	ld e, b                                          ; $5bb3: $58
	ld a, a                                          ; $5bb4: $7f
	and [hl]                                         ; $5bb5: $a6
	ld a, a                                          ; $5bb6: $7f
	and d                                            ; $5bb7: $a2
	ld d, d                                          ; $5bb8: $52
	db $ec                                           ; $5bb9: $ec
	inc bc                                           ; $5bba: $03
	cp $4f                                           ; $5bbb: $fe $4f
	cp $7e                                           ; $5bbd: $fe $7e
	call z, $229c                                    ; $5bbf: $cc $9c $22
	ret nz                                           ; $5bc2: $c0

	dec h                                            ; $5bc3: $25
	ld a, c                                          ; $5bc4: $79
	xor b                                            ; $5bc5: $a8
	sub [hl]                                         ; $5bc6: $96
	rla                                              ; $5bc7: $17
	ldh [$35], a                                     ; $5bc8: $e0 $35
	ret nz                                           ; $5bca: $c0

	ld h, d                                          ; $5bcb: $62
	add b                                            ; $5bcc: $80
	ld b, c                                          ; $5bcd: $41
	add b                                            ; $5bce: $80
	ld a, l                                          ; $5bcf: $7d
	ld a, e                                          ; $5bd0: $7b
	db $eb                                           ; $5bd1: $eb
	add b                                            ; $5bd2: $80
	rst SubAFromHL                                          ; $5bd3: $d7
	jr z, jr_055_5b81                                ; $5bd4: $28 $ab

	ld d, h                                          ; $5bd6: $54
	push de                                          ; $5bd7: $d5
	ld a, [hl+]                                      ; $5bd8: $2a
	ld l, d                                          ; $5bd9: $6a
	dec d                                            ; $5bda: $15
	or l                                             ; $5bdb: $b5
	ld a, [bc]                                       ; $5bdc: $0a
	ld l, d                                          ; $5bdd: $6a
	dec d                                            ; $5bde: $15
	jp nc, $a42d                                     ; $5bdf: $d2 $2d $a4

	ld e, e                                          ; $5be2: $5b
	pop de                                           ; $5be3: $d1
	ld l, $a4                                        ; $5be4: $2e $a4
	ld e, e                                          ; $5be6: $5b
	ld d, b                                          ; $5be7: $50
	xor a                                            ; $5be8: $af
	and b                                            ; $5be9: $a0
	ld e, a                                          ; $5bea: $5f
	ld d, b                                          ; $5beb: $50
	xor a                                            ; $5bec: $af
	add b                                            ; $5bed: $80
	ld a, a                                          ; $5bee: $7f
	ld e, d                                          ; $5bef: $5a
	and l                                            ; $5bf0: $a5
	cp c                                             ; $5bf1: $b9
	sbc h                                            ; $5bf2: $9c
	ld b, [hl]                                       ; $5bf3: $46
	ld d, b                                          ; $5bf4: $50
	xor a                                            ; $5bf5: $af
	ld [hl], a                                       ; $5bf6: $77
	add $7e                                          ; $5bf7: $c6 $7e
	ld c, b                                          ; $5bf9: $48
	ld a, d                                          ; $5bfa: $7a
	jr c, @-$70                                      ; $5bfb: $38 $8e

	rst $38                                          ; $5bfd: $ff
	xor [hl]                                         ; $5bfe: $ae
	ld d, c                                          ; $5bff: $51
	inc d                                            ; $5c00: $14
	db $eb                                           ; $5c01: $eb
	inc l                                            ; $5c02: $2c
	db $d3                                           ; $5c03: $d3
	db $10                                           ; $5c04: $10
	rst AddAOntoHL                                          ; $5c05: $ef
	ld h, b                                          ; $5c06: $60
	sbc a                                            ; $5c07: $9f
	ldh [$1f], a                                     ; $5c08: $e0 $1f
	ret nz                                           ; $5c0a: $c0

	ccf                                              ; $5c0b: $3f
	ld b, b                                          ; $5c0c: $40
	cp a                                             ; $5c0d: $bf
	rlca                                             ; $5c0e: $07
	sub b                                            ; $5c0f: $90
	ld [hl], l                                       ; $5c10: $75
	call z, $fe6a                                    ; $5c11: $cc $6a $fe
	ld [hl], e                                       ; $5c14: $73
	cp $96                                           ; $5c15: $fe $96
	ld a, [$74ff]                                    ; $5c17: $fa $ff $74
	rst $38                                          ; $5c1a: $ff
	jp c, $a8ff                                      ; $5c1b: $da $ff $a8

	rst $38                                          ; $5c1e: $ff
	inc [hl]                                         ; $5c1f: $34
	ld a, d                                          ; $5c20: $7a
	ld a, [hl-]                                      ; $5c21: $3a
	sub l                                            ; $5c22: $95
	ld d, h                                          ; $5c23: $54
	xor e                                            ; $5c24: $ab
	ld a, [hl+]                                      ; $5c25: $2a
	push de                                          ; $5c26: $d5
	inc bc                                           ; $5c27: $03
	db $fc                                           ; $5c28: $fc
	rlca                                             ; $5c29: $07
	ld hl, sp+$3d                                    ; $5c2a: $f8 $3d
	jp nz, $ea75                                     ; $5c2c: $c2 $75 $ea

	sub h                                            ; $5c2f: $94
	ld h, c                                          ; $5c30: $61
	sbc [hl]                                         ; $5c31: $9e
	db $f4                                           ; $5c32: $f4
	dec bc                                           ; $5c33: $0b
	db $10                                           ; $5c34: $10
	rst AddAOntoHL                                          ; $5c35: $ef
	ldh [$1f], a                                     ; $5c36: $e0 $1f
	ld b, b                                          ; $5c38: $40
	ccf                                              ; $5c39: $3f
	and b                                            ; $5c3a: $a0
	ld a, e                                          ; $5c3b: $7b
	and [hl]                                         ; $5c3c: $a6
	ld a, a                                          ; $5c3d: $7f
	ld a, [de]                                       ; $5c3e: $1a
	sbc l                                            ; $5c3f: $9d
	call nz, $7603                                   ; $5c40: $c4 $03 $76
	ld h, e                                          ; $5c43: $63
	ld a, l                                          ; $5c44: $7d
	add h                                            ; $5c45: $84
	ld a, [hl]                                       ; $5c46: $7e
	adc b                                            ; $5c47: $88
	add b                                            ; $5c48: $80
	rrca                                             ; $5c49: $0f
	ld sp, hl                                        ; $5c4a: $f9
	rra                                              ; $5c4b: $1f
	ldh a, [$1f]                                     ; $5c4c: $f0 $1f
	ldh a, [$3f]                                     ; $5c4e: $f0 $3f
	ldh [$3f], a                                     ; $5c50: $e0 $3f
	ldh [$7e], a                                     ; $5c52: $e0 $7e
	pop bc                                           ; $5c54: $c1
	call z, $bff8                                    ; $5c55: $cc $f8 $bf
	ld a, a                                          ; $5c58: $7f
	ld b, a                                          ; $5c59: $47
	cp a                                             ; $5c5a: $bf
	xor a                                            ; $5c5b: $af
	rst SubAFromDE                                          ; $5c5c: $df
	rst SubAFromDE                                          ; $5c5d: $df
	ld [hl], b                                       ; $5c5e: $70
	cp h                                             ; $5c5f: $bc
	ld [hl], e                                       ; $5c60: $73
	adc e                                            ; $5c61: $8b
	inc e                                            ; $5c62: $1c
	rla                                              ; $5c63: $17
	rrca                                             ; $5c64: $0f
	ccf                                              ; $5c65: $3f
	rlca                                             ; $5c66: $07
	cp $80                                           ; $5c67: $fe $80
	rst JumpTable                                          ; $5c69: $c7
	cp $c5                                           ; $5c6a: $fe $c5
	ld a, a                                          ; $5c6c: $7f
	rst $38                                          ; $5c6d: $ff
	ld a, a                                          ; $5c6e: $7f
	ret z                                            ; $5c6f: $c8

	ld a, b                                          ; $5c70: $78
	rst GetHLinHL                                          ; $5c71: $cf
	rst $38                                          ; $5c72: $ff
	ld a, h                                          ; $5c73: $7c
	cp a                                             ; $5c74: $bf
	rst SubAFromBC                                          ; $5c75: $e7
	db $10                                           ; $5c76: $10
	rst $38                                          ; $5c77: $ff
	sbc a                                            ; $5c78: $9f
	rst $38                                          ; $5c79: $ff
	and b                                            ; $5c7a: $a0
	cp $c0                                           ; $5c7b: $fe $c0
	ld sp, hl                                        ; $5c7d: $f9
	pop bc                                           ; $5c7e: $c1
	ld b, a                                          ; $5c7f: $47
	rst $38                                          ; $5c80: $ff
	ld a, $c0                                        ; $5c81: $3e $c0
	ld b, b                                          ; $5c83: $40
	ret nz                                           ; $5c84: $c0

	ret nz                                           ; $5c85: $c0

	nop                                              ; $5c86: $00
	rst $38                                          ; $5c87: $ff
	sub d                                            ; $5c88: $92
	ldh [rIE], a                                     ; $5c89: $e0 $ff
	jr c, jr_055_5d0c                                ; $5c8b: $38 $7f

	ld [hl], h                                       ; $5c8d: $74
	rst GetHLinHL                                          ; $5c8e: $cf
	ldh [c], a                                       ; $5c8f: $e2
	sub e                                            ; $5c90: $93
	db $e3                                           ; $5c91: $e3
	ld de, $50a1                                     ; $5c92: $11 $a1 $50
	ret nz                                           ; $5c95: $c0

	ld d, c                                          ; $5c96: $51
	and h                                            ; $5c97: $a4
	ld a, [hl]                                       ; $5c98: $7e
	ld b, b                                          ; $5c99: $40
	ld a, l                                          ; $5c9a: $7d
	ld [hl-], a                                      ; $5c9b: $32
	ld a, a                                          ; $5c9c: $7f
	ld a, [$209a]                                    ; $5c9d: $fa $9a $20
	rst SubAFromDE                                          ; $5ca0: $df
	ld d, b                                          ; $5ca1: $50
	adc a                                            ; $5ca2: $8f
	jr nz, jr_055_5d0f                               ; $5ca3: $20 $6a

jr_055_5ca5:
	ld h, d                                          ; $5ca5: $62
	inc bc                                           ; $5ca6: $03
	ld [hl-], a                                      ; $5ca7: $32
	sbc l                                            ; $5ca8: $9d
	db $fc                                           ; $5ca9: $fc
	ld b, c                                          ; $5caa: $41
	ld a, b                                          ; $5cab: $78
	ld l, d                                          ; $5cac: $6a
	ld a, [hl]                                       ; $5cad: $7e
	jr jr_055_5d1f                                   ; $5cae: $18 $6f

	ldh a, [c]                                       ; $5cb0: $f2
	adc e                                            ; $5cb1: $8b
	ld l, a                                          ; $5cb2: $6f
	sub b                                            ; $5cb3: $90
	ld a, [de]                                       ; $5cb4: $1a
	nop                                              ; $5cb5: $00
	ldh a, [rIF]                                     ; $5cb6: $f0 $0f
	add sp, $17                                      ; $5cb8: $e8 $17
	ld [hl], h                                       ; $5cba: $74
	adc e                                            ; $5cbb: $8b
	jr jr_055_5ca5                                   ; $5cbc: $18 $e7

	ld [hl], h                                       ; $5cbe: $74
	adc e                                            ; $5cbf: $8b
	ld [$f515], a                                    ; $5cc0: $ea $15 $f5
	ld a, [bc]                                       ; $5cc3: $0a
	ld a, [$4f05]                                    ; $5cc4: $fa $05 $4f
	ret nc                                           ; $5cc7: $d0

	ld a, [hl]                                       ; $5cc8: $7e
	ret nz                                           ; $5cc9: $c0

	adc l                                            ; $5cca: $8d
	ld d, h                                          ; $5ccb: $54
	rst $38                                          ; $5ccc: $ff
	xor d                                            ; $5ccd: $aa
	rst $38                                          ; $5cce: $ff
	ld d, l                                          ; $5ccf: $55
	rst $38                                          ; $5cd0: $ff
	ld hl, sp-$01                                    ; $5cd1: $f8 $ff
	pop de                                           ; $5cd3: $d1
	cp $aa                                           ; $5cd4: $fe $aa
	push af                                          ; $5cd6: $f5
	dec h                                            ; $5cd7: $25
	jp c, $f50a                                      ; $5cd8: $da $0a $f5

	ld hl, $74de                                     ; $5cdb: $21 $de $74
	ld [hl], h                                       ; $5cde: $74
	add l                                            ; $5cdf: $85
	ld [hl], d                                       ; $5ce0: $72
	adc l                                            ; $5ce1: $8d
	push hl                                          ; $5ce2: $e5
	ld a, [de]                                       ; $5ce3: $1a
	and b                                            ; $5ce4: $a0
	ld e, a                                          ; $5ce5: $5f
	ld b, b                                          ; $5ce6: $40
	cp a                                             ; $5ce7: $bf
	add c                                            ; $5ce8: $81
	ld a, [hl]                                       ; $5ce9: $7e
	add b                                            ; $5cea: $80
	ld a, a                                          ; $5ceb: $7f
	ldh [$1f], a                                     ; $5cec: $e0 $1f
	and $01                                          ; $5cee: $e6 $01
	or b                                             ; $5cf0: $b0
	ld b, b                                          ; $5cf1: $40
	ld e, [hl]                                       ; $5cf2: $5e
	and b                                            ; $5cf3: $a0
	xor a                                            ; $5cf4: $af
	ld d, b                                          ; $5cf5: $50
	rla                                              ; $5cf6: $17
	add sp, $4f                                      ; $5cf7: $e8 $4f
	or b                                             ; $5cf9: $b0
	ld h, a                                          ; $5cfa: $67
	ret z                                            ; $5cfb: $c8

	ld a, [hl]                                       ; $5cfc: $7e
	ld a, [$0099]                                    ; $5cfd: $fa $99 $00
	ccf                                              ; $5d00: $3f
	add b                                            ; $5d01: $80
	ccf                                              ; $5d02: $3f
	nop                                              ; $5d03: $00
	rra                                              ; $5d04: $1f
	ld l, e                                          ; $5d05: $6b
	or [hl]                                          ; $5d06: $b6
	ld [hl+], a                                      ; $5d07: $22
	sbc b                                            ; $5d08: $98
	ld a, l                                          ; $5d09: $7d
	scf                                              ; $5d0a: $37
	ld a, l                                          ; $5d0b: $7d

jr_055_5d0c:
	ld [hl], b                                       ; $5d0c: $70
	ld b, a                                          ; $5d0d: $47
	db $ec                                           ; $5d0e: $ec

jr_055_5d0f:
	ld a, [hl]                                       ; $5d0f: $7e
	call z, $8c7e                                    ; $5d10: $cc $7e $8c
	ld a, h                                          ; $5d13: $7c
	ld d, b                                          ; $5d14: $50
	ld a, [hl]                                       ; $5d15: $7e
	adc d                                            ; $5d16: $8a
	ld [hl], l                                       ; $5d17: $75
	ld c, h                                          ; $5d18: $4c
	sub [hl]                                         ; $5d19: $96
	ld a, h                                          ; $5d1a: $7c
	jp nz, $84fb                                     ; $5d1b: $c2 $fb $84

	rst $38                                          ; $5d1e: $ff

jr_055_5d1f:
	db $f4                                           ; $5d1f: $f4
	rrca                                             ; $5d20: $0f
	db $fc                                           ; $5d21: $fc
	rlca                                             ; $5d22: $07
	ld a, e                                          ; $5d23: $7b
	cp $87                                           ; $5d24: $fe $87
	dec b                                            ; $5d26: $05
	db $fc                                           ; $5d27: $fc
	push af                                          ; $5d28: $f5
	db $fc                                           ; $5d29: $fc
	ld a, a                                          ; $5d2a: $7f
	ld a, [bc]                                       ; $5d2b: $0a
	rst $38                                          ; $5d2c: $ff
	inc d                                            ; $5d2d: $14
	rst $38                                          ; $5d2e: $ff
	jr z, @+$01                                      ; $5d2f: $28 $ff

	ld d, b                                          ; $5d31: $50
	rst $38                                          ; $5d32: $ff
	sbc h                                            ; $5d33: $9c
	ccf                                              ; $5d34: $3f
	cp $e1                                           ; $5d35: $fe $e1
	rra                                              ; $5d37: $1f
	cp $01                                           ; $5d38: $fe $01
	db $fd                                           ; $5d3a: $fd
	inc hl                                           ; $5d3b: $23
	cp [hl]                                          ; $5d3c: $be
	ld b, c                                          ; $5d3d: $41
	ld a, c                                          ; $5d3e: $79
	add hl, sp                                       ; $5d3f: $39
	ld a, b                                          ; $5d40: $78
	ld [hl], b                                       ; $5d41: $70
	sub [hl]                                         ; $5d42: $96
	rst $38                                          ; $5d43: $ff
	adc a                                            ; $5d44: $8f
	ldh a, [$bf]                                     ; $5d45: $f0 $bf
	rst SubAFromDE                                          ; $5d47: $df
	ldh [$9c], a                                     ; $5d48: $e0 $9c
	nop                                              ; $5d4a: $00
	cp $75                                           ; $5d4b: $fe $75
	add hl, hl                                       ; $5d4d: $29
	sbc [hl]                                         ; $5d4e: $9e
	jr nz, jr_055_5dcc                               ; $5d4f: $20 $7b

	cp $7f                                           ; $5d51: $fe $7f
	ld a, [$8089]                                    ; $5d53: $fa $89 $80
	ei                                               ; $5d56: $fb
	nop                                              ; $5d57: $00
	cpl                                              ; $5d58: $2f
	ld [hl], e                                       ; $5d59: $73
	ld l, h                                          ; $5d5a: $6c
	ccf                                              ; $5d5b: $3f
	jr nc, jr_055_5d9d                               ; $5d5c: $30 $3f

	and b                                            ; $5d5e: $a0
	ccf                                              ; $5d5f: $3f
	and e                                            ; $5d60: $a3
	ccf                                              ; $5d61: $3f
	push hl                                          ; $5d62: $e5
	ld a, $e7                                        ; $5d63: $3e $e7
	ld a, h                                          ; $5d65: $7c
	rst AddAOntoHL                                          ; $5d66: $ef
	ld a, b                                          ; $5d67: $78
	db $10                                           ; $5d68: $10
	rst $38                                          ; $5d69: $ff
	ld [$a87b], sp                                   ; $5d6a: $08 $7b $a8
	sub l                                            ; $5d6d: $95
	ld a, h                                          ; $5d6e: $7c
	rst $38                                          ; $5d6f: $ff
	ld hl, sp-$71                                    ; $5d70: $f8 $8f
	add h                                            ; $5d72: $84
	rlca                                             ; $5d73: $07
	jp nz, $f103                                     ; $5d74: $c2 $03 $f1

	ld bc, $ce06                                     ; $5d77: $01 $06 $ce
	ld a, h                                          ; $5d7a: $7c
	ld e, b                                          ; $5d7b: $58
	adc [hl]                                         ; $5d7c: $8e
	ld [$11f0], sp                                   ; $5d7d: $08 $f0 $11
	ldh [rAUD1LOW], a                                ; $5d80: $e0 $13
	ldh [$2b], a                                     ; $5d82: $e0 $2b
	ret nz                                           ; $5d84: $c0

	rla                                              ; $5d85: $17
	ret nz                                           ; $5d86: $c0

	dec hl                                           ; $5d87: $2b
	ret nz                                           ; $5d88: $c0

	rlca                                             ; $5d89: $07
	ret nz                                           ; $5d8a: $c0

	dec b                                            ; $5d8b: $05
	nop                                              ; $5d8c: $00
	ld a, [$e97b]                                    ; $5d8d: $fa $7b $e9
	adc [hl]                                         ; $5d90: $8e
	xor d                                            ; $5d91: $aa
	ld d, l                                          ; $5d92: $55
	db $10                                           ; $5d93: $10
	rst AddAOntoHL                                          ; $5d94: $ef
	xor d                                            ; $5d95: $aa
	ld d, l                                          ; $5d96: $55
	ld b, b                                          ; $5d97: $40
	cp a                                             ; $5d98: $bf
	xor b                                            ; $5d99: $a8
	ld d, a                                          ; $5d9a: $57
	ld d, b                                          ; $5d9b: $50
	cpl                                              ; $5d9c: $2f

jr_055_5d9d:
	and b                                            ; $5d9d: $a0
	ld e, a                                          ; $5d9e: $5f
	ret nz                                           ; $5d9f: $c0

	ccf                                              ; $5da0: $3f
	add b                                            ; $5da1: $80
	ld [hl], b                                       ; $5da2: $70
	ld h, $7f                                        ; $5da3: $26 $7f
	ld c, b                                          ; $5da5: $48
	ld d, a                                          ; $5da6: $57
	add $9e                                          ; $5da7: $c6 $9e
	ld [de], a                                       ; $5da9: $12
	ld a, e                                          ; $5daa: $7b
	sbc b                                            ; $5dab: $98
	sbc l                                            ; $5dac: $9d
	ld c, c                                          ; $5dad: $49
	rst $38                                          ; $5dae: $ff
	ld l, l                                          ; $5daf: $6d
	add h                                            ; $5db0: $84
	sbc h                                            ; $5db1: $9c
	sub l                                            ; $5db2: $95
	rst $38                                          ; $5db3: $ff
	ld [$ba7a], a                                    ; $5db4: $ea $7a $ba
	sbc h                                            ; $5db7: $9c
	xor c                                            ; $5db8: $a9
	rst $38                                          ; $5db9: $ff
	cp $5a                                           ; $5dba: $fe $5a
	ld b, h                                          ; $5dbc: $44
	sbc h                                            ; $5dbd: $9c
	sub b                                            ; $5dbe: $90
	rst $38                                          ; $5dbf: $ff
	ld l, b                                          ; $5dc0: $68
	ld a, e                                          ; $5dc1: $7b
	db $fc                                           ; $5dc2: $fc
	sub c                                            ; $5dc3: $91
	ld d, $e8                                        ; $5dc4: $16 $e8
	ld c, l                                          ; $5dc6: $4d
	or b                                             ; $5dc7: $b0
	rlca                                             ; $5dc8: $07
	ld hl, sp+$0b                                    ; $5dc9: $f8 $0b
	db $f4                                           ; $5dcb: $f4

jr_055_5dcc:
	ld bc, $02fe                                     ; $5dcc: $01 $fe $02
	db $fd                                           ; $5dcf: $fd
	add hl, bc                                       ; $5dd0: $09
	or $7b                                           ; $5dd1: $f6 $7b
	and $7d                                          ; $5dd3: $e6 $7d
	call nz, $1f92                                   ; $5dd5: $c4 $92 $1f
	sub b                                            ; $5dd8: $90
	rrca                                             ; $5dd9: $0f
	ret nz                                           ; $5dda: $c0

	rlca                                             ; $5ddb: $07
	ldh a, [$03]                                     ; $5ddc: $f0 $03
	ld [$fd00], a                                    ; $5dde: $ea $00 $fd
	nop                                              ; $5de1: $00
	or [hl]                                          ; $5de2: $b6
	ld b, b                                          ; $5de3: $40
	ld d, a                                          ; $5de4: $57
	xor [hl]                                         ; $5de5: $ae
	sbc e                                            ; $5de6: $9b
	jr nz, @+$21                                     ; $5de7: $20 $1f

	adc b                                            ; $5de9: $88
	rlca                                             ; $5dea: $07
	rlca                                             ; $5deb: $07
	ld d, b                                          ; $5dec: $50
	ld a, [hl]                                       ; $5ded: $7e
	adc $80                                          ; $5dee: $ce $80
	inc bc                                           ; $5df0: $03
	cp $03                                           ; $5df1: $fe $03
	cp $05                                           ; $5df3: $fe $05
	cp $07                                           ; $5df5: $fe $07
	db $fc                                           ; $5df7: $fc
	rrca                                             ; $5df8: $0f
	ld hl, sp+$17                                    ; $5df9: $f8 $17

jr_055_5dfb:
	ld hl, sp+$1e                                    ; $5dfb: $f8 $1e
	pop af                                           ; $5dfd: $f1
	cp $1d                                           ; $5dfe: $fe $1d
	db $ec                                           ; $5e00: $ec
	jr jr_055_5dfb                                   ; $5e01: $18 $f8

	db $10                                           ; $5e03: $10
	pop af                                           ; $5e04: $f1
	db $10                                           ; $5e05: $10
	rst AddAOntoHL                                          ; $5e06: $ef
	jr nc, @+$01                                     ; $5e07: $30 $ff

	ccf                                              ; $5e09: $3f
	ld a, a                                          ; $5e0a: $7f
	sub c                                            ; $5e0b: $91
	ld l, a                                          ; $5e0c: $6f
	sbc c                                            ; $5e0d: $99
	ld a, a                                          ; $5e0e: $7f
	sbc d                                            ; $5e0f: $9a
	add b                                            ; $5e10: $80
	sbc h                                            ; $5e11: $9c
	ld h, e                                          ; $5e12: $63
	db $e3                                           ; $5e13: $e3
	inc e                                            ; $5e14: $1c
	ld [hl], a                                       ; $5e15: $77
	ld d, e                                          ; $5e16: $53
	sbc h                                            ; $5e17: $9c
	scf                                              ; $5e18: $37
	rst GetHLinHL                                          ; $5e19: $cf
	ld hl, sp+$7b                                    ; $5e1a: $f8 $7b
	ld c, [hl]                                       ; $5e1c: $4e
	sub h                                            ; $5e1d: $94
	sub c                                            ; $5e1e: $91
	ld h, b                                          ; $5e1f: $60
	ld h, b                                          ; $5e20: $60
	add b                                            ; $5e21: $80
	db $fc                                           ; $5e22: $fc
	inc e                                            ; $5e23: $1c
	ldh [c], a                                       ; $5e24: $e2

jr_055_5e25:
	ld a, [hl]                                       ; $5e25: $7e
	cp a                                             ; $5e26: $bf
	pop bc                                           ; $5e27: $c1
	rst SubAFromBC                                          ; $5e28: $e7
	ld a, e                                          ; $5e29: $7b
	db $eb                                           ; $5e2a: $eb
	rst SubAFromDE                                          ; $5e2b: $df
	rst $38                                          ; $5e2c: $ff
	sbc b                                            ; $5e2d: $98
	ld a, c                                          ; $5e2e: $79
	add b                                            ; $5e2f: $80
	add [hl]                                         ; $5e30: $86
	ld a, c                                          ; $5e31: $79
	ld a, b                                          ; $5e32: $78
	nop                                              ; $5e33: $00
	jr c, jr_055_5eb1                                ; $5e34: $38 $7b

	cp $83                                           ; $5e36: $fe $83

jr_055_5e38:
	rst $38                                          ; $5e38: $ff
	pop hl                                           ; $5e39: $e1
	ld a, $ff                                        ; $5e3a: $3e $ff
	rrca                                             ; $5e3c: $0f
	db $fc                                           ; $5e3d: $fc
	rst SubAFromDE                                          ; $5e3e: $df
	ld a, h                                          ; $5e3f: $7c
	jp Jump_055_437e                                 ; $5e40: $c3 $7e $43


	rst $38                                          ; $5e43: $ff
	ld h, a                                          ; $5e44: $67
	ld a, $6f                                        ; $5e45: $3e $6f
	jr c, jr_055_5e38                                ; $5e47: $38 $ef

	ldh [$e7], a                                     ; $5e49: $e0 $e7
	db $10                                           ; $5e4b: $10
	rst SubAFromBC                                          ; $5e4c: $e7
	db $10                                           ; $5e4d: $10
	add sp, $10                                      ; $5e4e: $e8 $10
	ld h, b                                          ; $5e50: $60
	ldh [$cf], a                                     ; $5e51: $e0 $cf
	add b                                            ; $5e53: $80
	ld h, a                                          ; $5e54: $67
	sub c                                            ; $5e55: $91
	sbc l                                            ; $5e56: $9d
	rst FarCall                                          ; $5e57: $f7
	rrca                                             ; $5e58: $0f
	ld a, d                                          ; $5e59: $7a
	sub e                                            ; $5e5a: $93
	sub b                                            ; $5e5b: $90
	ld a, a                                          ; $5e5c: $7f
	jr nz, jr_055_5e9e                               ; $5e5d: $20 $3f

	ret nc                                           ; $5e5f: $d0

	rra                                              ; $5e60: $1f
	ret nc                                           ; $5e61: $d0

	rra                                              ; $5e62: $1f
	or b                                             ; $5e63: $b0
	rra                                              ; $5e64: $1f
	and b                                            ; $5e65: $a0
	ld a, a                                          ; $5e66: $7f
	ret nz                                           ; $5e67: $c0

	rst $38                                          ; $5e68: $ff
	ld c, $f1                                        ; $5e69: $0e $f1
	ld [hl], h                                       ; $5e6b: $74
	ld l, b                                          ; $5e6c: $68
	adc a                                            ; $5e6d: $8f
	ld c, a                                          ; $5e6e: $4f
	add b                                            ; $5e6f: $80
	sbc l                                            ; $5e70: $9d
	ld [bc], a                                       ; $5e71: $02
	xor d                                            ; $5e72: $aa
	dec d                                            ; $5e73: $15
	ld d, h                                          ; $5e74: $54
	dec hl                                           ; $5e75: $2b
	jr nz, jr_055_5ed7                               ; $5e76: $20 $5f

	ld c, a                                          ; $5e78: $4f
	add b                                            ; $5e79: $80
	inc e                                            ; $5e7a: $1c
	inc bc                                           ; $5e7b: $03
	pop af                                           ; $5e7c: $f1
	ld c, $78                                        ; $5e7d: $0e $78
	ld [$bf9e], a                                    ; $5e7f: $ea $9e $bf
	ld l, [hl]                                       ; $5e82: $6e
	call c, Call_055_6c74                            ; $5e83: $dc $74 $6c
	ld [hl], l                                       ; $5e86: $75
	ldh [$7e], a                                     ; $5e87: $e0 $7e
	jr nz, jr_055_5e25                               ; $5e89: $20 $9a

	dec b                                            ; $5e8b: $05
	rst $38                                          ; $5e8c: $ff
	ld c, e                                          ; $5e8d: $4b
	rst $38                                          ; $5e8e: $ff
	or a                                             ; $5e8f: $b7
	ld a, d                                          ; $5e90: $7a
	jr @+$81                                         ; $5e91: $18 $7f

	ld a, h                                          ; $5e93: $7c
	adc [hl]                                         ; $5e94: $8e
	inc b                                            ; $5e95: $04
	ei                                               ; $5e96: $fb
	nop                                              ; $5e97: $00
	rst $38                                          ; $5e98: $ff
	sub c                                            ; $5e99: $91
	xor $20                                          ; $5e9a: $ee $20
	rst $38                                          ; $5e9c: $ff
	ret nz                                           ; $5e9d: $c0

jr_055_5e9e:
	rst $38                                          ; $5e9e: $ff
	sub l                                            ; $5e9f: $95
	ld [$ffaa], a                                    ; $5ea0: $ea $aa $ff
	ld d, a                                          ; $5ea3: $57
	rst $38                                          ; $5ea4: $ff
	xor l                                            ; $5ea5: $ad
	ld a, c                                          ; $5ea6: $79
	inc l                                            ; $5ea7: $2c
	sub h                                            ; $5ea8: $94
	dec b                                            ; $5ea9: $05
	ld a, [$df20]                                    ; $5eaa: $fa $20 $df
	ld a, [bc]                                       ; $5ead: $0a
	push af                                          ; $5eae: $f5
	ld d, l                                          ; $5eaf: $55
	xor d                                            ; $5eb0: $aa

jr_055_5eb1:
	cp e                                             ; $5eb1: $bb
	rst $38                                          ; $5eb2: $ff
	ld d, h                                          ; $5eb3: $54
	ld a, e                                          ; $5eb4: $7b
	sbc $90                                          ; $5eb5: $de $90

Call_055_5eb7:
	ld [$54f7], sp                                   ; $5eb7: $08 $f7 $54
	xor e                                            ; $5eba: $ab
	xor b                                            ; $5ebb: $a8
	ld d, a                                          ; $5ebc: $57
	ld h, b                                          ; $5ebd: $60
	sbc a                                            ; $5ebe: $9f
	ld a, [$6005]                                    ; $5ebf: $fa $05 $60
	rst $38                                          ; $5ec2: $ff
	ldh a, [rIE]                                     ; $5ec3: $f0 $ff
	ld l, d                                          ; $5ec5: $6a
	ld a, d                                          ; $5ec6: $7a
	ld b, b                                          ; $5ec7: $40
	sbc h                                            ; $5ec8: $9c
	cp a                                             ; $5ec9: $bf
	rst $38                                          ; $5eca: $ff
	ld d, [hl]                                       ; $5ecb: $56
	ld a, e                                          ; $5ecc: $7b
	cp [hl]                                          ; $5ecd: $be
	ld a, a                                          ; $5ece: $7f
	cp b                                             ; $5ecf: $b8
	ld a, a                                          ; $5ed0: $7f
	ret c                                            ; $5ed1: $d8

	ld l, a                                          ; $5ed2: $6f
	ld [hl], l                                       ; $5ed3: $75
	ld a, [hl]                                       ; $5ed4: $7e
	ld a, [hl+]                                      ; $5ed5: $2a
	ld a, a                                          ; $5ed6: $7f

jr_055_5ed7:
	halt                                             ; $5ed7: $76
	ld a, a                                          ; $5ed8: $7f
	sub $97                                          ; $5ed9: $d6 $97
	and b                                            ; $5edb: $a0
	rst $38                                          ; $5edc: $ff
	ld e, l                                          ; $5edd: $5d
	and b                                            ; $5ede: $a0
	and a                                            ; $5edf: $a7
	ld e, b                                          ; $5ee0: $58
	inc bc                                           ; $5ee1: $03
	db $fc                                           ; $5ee2: $fc
	halt                                             ; $5ee3: $76
	or d                                             ; $5ee4: $b2
	adc e                                            ; $5ee5: $8b
	ld de, $00ee                                     ; $5ee6: $11 $ee $00
	rst $38                                          ; $5ee9: $ff
	add hl, bc                                       ; $5eea: $09
	or $54                                           ; $5eeb: $f6 $54
	inc bc                                           ; $5eed: $03
	and b                                            ; $5eee: $a0
	rlca                                             ; $5eef: $07
	db $ec                                           ; $5ef0: $ec
	inc bc                                           ; $5ef1: $03
	ld d, h                                          ; $5ef2: $54
	add e                                            ; $5ef3: $83
	or d                                             ; $5ef4: $b2
	ld b, b                                          ; $5ef5: $40
	ld e, a                                          ; $5ef6: $5f
	and b                                            ; $5ef7: $a0
	xor e                                            ; $5ef8: $ab
	ld d, h                                          ; $5ef9: $54
	ld h, a                                          ; $5efa: $67
	jp nc, $fe7f                                     ; $5efb: $d2 $7f $fe

	ld a, b                                          ; $5efe: $78
	ld e, [hl]                                       ; $5eff: $5e
	sbc d                                            ; $5f00: $9a
	ld c, a                                          ; $5f01: $4f
	ld [$7d15], a                                    ; $5f02: $ea $15 $7d
	add d                                            ; $5f05: $82
	ld d, [hl]                                       ; $5f06: $56
	call nz, $067f                                   ; $5f07: $c4 $7f $06
	ld a, a                                          ; $5f0a: $7f
	call c, $2f9e                                    ; $5f0b: $dc $9e $2f
	ld [hl], b                                       ; $5f0e: $70
	ld e, b                                          ; $5f0f: $58
	ld a, a                                          ; $5f10: $7f
	cp $9b                                           ; $5f11: $fe $9b
	ld e, a                                          ; $5f13: $5f
	ldh [$7f], a                                     ; $5f14: $e0 $7f
	ret nz                                           ; $5f16: $c0

Jump_055_5f17:
	ld a, e                                          ; $5f17: $7b
	cp $95                                           ; $5f18: $fe $95
	pop bc                                           ; $5f1a: $c1
	ld c, a                                          ; $5f1b: $4f
	cp e                                             ; $5f1c: $bb
	rst AddAOntoHL                                          ; $5f1d: $ef
	rra                                              ; $5f1e: $1f
	rst SubAFromDE                                          ; $5f1f: $df
	ccf                                              ; $5f20: $3f
	rst $38                                          ; $5f21: $ff
	ccf                                              ; $5f22: $3f
	cp a                                             ; $5f23: $bf
	ld a, b                                          ; $5f24: $78
	ld e, l                                          ; $5f25: $5d
	db $db                                           ; $5f26: $db
	rst $38                                          ; $5f27: $ff
	sbc h                                            ; $5f28: $9c
	db $fd                                           ; $5f29: $fd
	rst $38                                          ; $5f2a: $ff
	db $dd                                           ; $5f2b: $dd
	ld a, e                                          ; $5f2c: $7b
	cp $96                                           ; $5f2d: $fe $96
	sbc l                                            ; $5f2f: $9d
	rst $38                                          ; $5f30: $ff
	cp c                                             ; $5f31: $b9
	rst $38                                          ; $5f32: $ff
	add hl, sp                                       ; $5f33: $39
	rst $38                                          ; $5f34: $ff
	ld sp, $ccff                                     ; $5f35: $31 $ff $cc
	ld a, e                                          ; $5f38: $7b
	cp $86                                           ; $5f39: $fe $86
	db $e4                                           ; $5f3b: $e4
	rst SubAFromDE                                          ; $5f3c: $df

jr_055_5f3d:
	or [hl]                                          ; $5f3d: $b6
	rst GetHLinHL                                          ; $5f3e: $cf
	ldh a, [c]                                       ; $5f3f: $f2
	adc a                                            ; $5f40: $8f
	ld a, [$fa87]                                    ; $5f41: $fa $87 $fa
	add a                                            ; $5f44: $87
	ld a, d                                          ; $5f45: $7a
	add a                                            ; $5f46: $87
	rst $38                                          ; $5f47: $ff
	ld hl, sp+$7f                                    ; $5f48: $f8 $7f
	ld hl, sp+$3f                                    ; $5f4a: $f8 $3f
	ld hl, sp+$1b                                    ; $5f4c: $f8 $1b
	db $fd                                           ; $5f4e: $fd
	rra                                              ; $5f4f: $1f
	db $fd                                           ; $5f50: $fd
	dec bc                                           ; $5f51: $0b
	rst $38                                          ; $5f52: $ff
	inc c                                            ; $5f53: $0c
	ld a, c                                          ; $5f54: $79
	cp $9d                                           ; $5f55: $fe $9d
	di                                               ; $5f57: $f3
	rrca                                             ; $5f58: $0f
	ld a, d                                          ; $5f59: $7a
	ld [hl], a                                       ; $5f5a: $77
	ld a, a                                          ; $5f5b: $7f
	cp $97                                           ; $5f5c: $fe $97
	rra                                              ; $5f5e: $1f
	ldh a, [$9f]                                     ; $5f5f: $f0 $9f
	or b                                             ; $5f61: $b0
	rst SubAFromDE                                          ; $5f62: $df
	ldh [$df], a                                     ; $5f63: $e0 $df
	ld h, b                                          ; $5f65: $60
	ld a, b                                          ; $5f66: $78
	or [hl]                                          ; $5f67: $b6
	ld l, a                                          ; $5f68: $6f
	sub h                                            ; $5f69: $94
	adc c                                            ; $5f6a: $89
	ld b, $f9                                        ; $5f6b: $06 $f9
	ld [$23f0], sp                                   ; $5f6d: $08 $f0 $23
	ret nz                                           ; $5f70: $c0

	rra                                              ; $5f71: $1f
	ldh [rSB], a                                     ; $5f72: $e0 $01
	cp $1a                                           ; $5f74: $fe $1a
	db $e4                                           ; $5f76: $e4
	inc l                                            ; $5f77: $2c
	ret nc                                           ; $5f78: $d0

	rla                                              ; $5f79: $17
	add sp, -$7b                                     ; $5f7a: $e8 $85
	ld a, d                                          ; $5f7c: $7a
	jp z, Jump_055_7435                              ; $5f7d: $ca $35 $74

	dec bc                                           ; $5f80: $0b
	ld a, b                                          ; $5f81: $78
	xor h                                            ; $5f82: $ac
	ld a, l                                          ; $5f83: $7d
	ld d, h                                          ; $5f84: $54
	ld a, b                                          ; $5f85: $78
	xor b                                            ; $5f86: $a8
	ld l, [hl]                                       ; $5f87: $6e
	call nc, $149b                                   ; $5f88: $d4 $9b $14
	db $eb                                           ; $5f8b: $eb
	inc l                                            ; $5f8c: $2c
	db $d3                                           ; $5f8d: $d3
	ld [hl], l                                       ; $5f8e: $75
	xor d                                            ; $5f8f: $aa
	ld a, l                                          ; $5f90: $7d
	dec c                                            ; $5f91: $0d
	sbc h                                            ; $5f92: $9c
	dec d                                            ; $5f93: $15
	rst $38                                          ; $5f94: $ff
	ld a, [hl+]                                      ; $5f95: $2a
	ld a, e                                          ; $5f96: $7b
	ld [hl+], a                                      ; $5f97: $22
	ld a, a                                          ; $5f98: $7f
	db $f4                                           ; $5f99: $f4
	sbc h                                            ; $5f9a: $9c
	ld d, c                                          ; $5f9b: $51
	xor [hl]                                         ; $5f9c: $ae
	sbc $7b                                          ; $5f9d: $de $7b
	jr @-$65                                         ; $5f9f: $18 $99

	and b                                            ; $5fa1: $a0
	rst SubAFromDE                                          ; $5fa2: $df
	ld b, c                                          ; $5fa3: $41
	cp [hl]                                          ; $5fa4: $be
	xor d                                            ; $5fa5: $aa
	ld d, l                                          ; $5fa6: $55
	ld [hl], a                                       ; $5fa7: $77
	jr nc, jr_055_5f3d                               ; $5fa8: $30 $93

	rst SubAFromDE                                          ; $5faa: $df
	jr nz, jr_055_5fed                               ; $5fab: $20 $40

	cp a                                             ; $5fad: $bf
	add hl, bc                                       ; $5fae: $09
	or $a0                                           ; $5faf: $f6 $a0
	ld e, a                                          ; $5fb1: $5f
	ld d, e                                          ; $5fb2: $53
	xor h                                            ; $5fb3: $ac
	cp a                                             ; $5fb4: $bf
	ld b, b                                          ; $5fb5: $40
	ld l, a                                          ; $5fb6: $6f
	and a                                            ; $5fb7: $a7
	sbc c                                            ; $5fb8: $99
	ld a, [hl+]                                      ; $5fb9: $2a
	push de                                          ; $5fba: $d5
	ld d, l                                          ; $5fbb: $55
	xor d                                            ; $5fbc: $aa
	xor a                                            ; $5fbd: $af
	ld d, b                                          ; $5fbe: $50
	ld e, a                                          ; $5fbf: $5f
	dec hl                                           ; $5fc0: $2b
	adc d                                            ; $5fc1: $8a
	db $fd                                           ; $5fc2: $fd
	ld [bc], a                                       ; $5fc3: $02
	rst $38                                          ; $5fc4: $ff
	nop                                              ; $5fc5: $00
	ld a, a                                          ; $5fc6: $7f
	add b                                            ; $5fc7: $80
	ld e, a                                          ; $5fc8: $5f
	and b                                            ; $5fc9: $a0
	ld c, a                                          ; $5fca: $4f

jr_055_5fcb:
	or b                                             ; $5fcb: $b0
	ld l, e                                          ; $5fcc: $6b
	sub h                                            ; $5fcd: $94
	add hl, bc                                       ; $5fce: $09
	db $f4                                           ; $5fcf: $f4
	dec d                                            ; $5fd0: $15
	add sp, $54                                      ; $5fd1: $e8 $54
	xor e                                            ; $5fd3: $ab
	rst $38                                          ; $5fd4: $ff
	nop                                              ; $5fd5: $00
	cp $6e                                           ; $5fd6: $fe $6e
	ld b, h                                          ; $5fd8: $44
	sub h                                            ; $5fd9: $94
	nop                                              ; $5fda: $00
	ld [hl], l                                       ; $5fdb: $75
	adc d                                            ; $5fdc: $8a
	or d                                             ; $5fdd: $b2
	ld c, e                                          ; $5fde: $4b
	ld [$95f7], sp                                   ; $5fdf: $08 $f7 $95
	ld l, d                                          ; $5fe2: $6a
	ld [$7715], a                                    ; $5fe3: $ea $15 $77
	ldh a, [$97]                                     ; $5fe6: $f0 $97
	rst GetHLinHL                                          ; $5fe8: $cf
	jr nc, jr_055_6021                               ; $5fe9: $30 $36

	pop bc                                           ; $5feb: $c1
	ld c, h                                          ; $5fec: $4c

jr_055_5fed:
	add e                                            ; $5fed: $83
	nop                                              ; $5fee: $00
	rst $38                                          ; $5fef: $ff
	ld [hl], l                                       ; $5ff0: $75
	ld a, [hl+]                                      ; $5ff1: $2a
	add [hl]                                         ; $5ff2: $86
	ld d, d                                          ; $5ff3: $52
	xor l                                            ; $5ff4: $ad
	db $ed                                           ; $5ff5: $ed
	ld [de], a                                       ; $5ff6: $12
	rst $38                                          ; $5ff7: $ff
	nop                                              ; $5ff8: $00
	di                                               ; $5ff9: $f3
	inc c                                            ; $5ffa: $0c
	ld h, a                                          ; $5ffb: $67
	sbc b                                            ; $5ffc: $98
	ld b, b                                          ; $5ffd: $40
	cp a                                             ; $5ffe: $bf
	ld [bc], a                                       ; $5fff: $02
	db $fd                                           ; $6000: $fd
	dec d                                            ; $6001: $15
	ld [$55aa], a                                    ; $6002: $ea $aa $55
	ld d, a                                          ; $6005: $57
	xor b                                            ; $6006: $a8
	rst $38                                          ; $6007: $ff
	nop                                              ; $6008: $00
	ei                                               ; $6009: $fb
	rlca                                             ; $600a: $07
	ld a, [hl]                                       ; $600b: $7e
	ld a, b                                          ; $600c: $78
	ld d, b                                          ; $600d: $50
	add h                                            ; $600e: $84
	adc a                                            ; $600f: $8f
	ld [hl], b                                       ; $6010: $70
	daa                                              ; $6011: $27
	ret c                                            ; $6012: $d8

	ld c, a                                          ; $6013: $4f
	or b                                             ; $6014: $b0
	dec e                                            ; $6015: $1d
	ldh [c], a                                       ; $6016: $e2
	ld [$10f5], a                                    ; $6017: $ea $f5 $10
	rra                                              ; $601a: $1f
	ld [$df0f], sp                                   ; $601b: $08 $0f $df
	jr nz, jr_055_5fcb                               ; $601e: $20 $ab

	ld d, h                                          ; $6020: $54

jr_055_6021:
	ld d, b                                          ; $6021: $50
	xor a                                            ; $6022: $af
	xor d                                            ; $6023: $aa
	ld d, l                                          ; $6024: $55
	ld d, l                                          ; $6025: $55
	xor e                                            ; $6026: $ab
	and c                                            ; $6027: $a1
	ld e, a                                          ; $6028: $5f
	ld bc, $547b                                     ; $6029: $01 $7b $54
	sub b                                            ; $602c: $90
	cp l                                             ; $602d: $bd
	jp $83ff                                         ; $602e: $c3 $ff $83


	db $fc                                           ; $6031: $fc
	add a                                            ; $6032: $87
	ld sp, hl                                        ; $6033: $f9
	adc a                                            ; $6034: $8f
	jp hl                                            ; $6035: $e9


	rra                                              ; $6036: $1f
	di                                               ; $6037: $f3
	rra                                              ; $6038: $1f
	db $e3                                           ; $6039: $e3
	ccf                                              ; $603a: $3f
	and a                                            ; $603b: $a7
	ld a, d                                          ; $603c: $7a
	call z, $ee9c                                    ; $603d: $cc $9c $ee
	rst $38                                          ; $6040: $ff
	sbc $7b                                          ; $6041: $de $7b
	cp $9e                                           ; $6043: $fe $9e
	sbc h                                            ; $6045: $9c
	ld a, e                                          ; $6046: $7b
	cp $88                                           ; $6047: $fe $88
	jr @+$01                                         ; $6049: $18 $ff

	inc a                                            ; $604b: $3c
	ei                                               ; $604c: $fb
	add hl, sp                                       ; $604d: $39
	rst FarCall                                          ; $604e: $f7
	add hl, sp                                       ; $604f: $39
	rst FarCall                                          ; $6050: $f7
	add hl, hl                                       ; $6051: $29
	rst FarCall                                          ; $6052: $f7
	add hl, sp                                       ; $6053: $39
	rst SubAFromBC                                          ; $6054: $e7
	add hl, sp                                       ; $6055: $39
	rst SubAFromBC                                          ; $6056: $e7
	ld a, d                                          ; $6057: $7a
	rst SubAFromBC                                          ; $6058: $e7
	ld d, d                                          ; $6059: $52
	rst AddAOntoHL                                          ; $605a: $ef
	ld [hl], e                                       ; $605b: $73
	adc $fe                                          ; $605c: $ce $fe
	inc bc                                           ; $605e: $03
	db $fd                                           ; $605f: $fd
	ld l, e                                          ; $6060: $6b
	cp $7f                                           ; $6061: $fe $7f
	jp $327c                                         ; $6063: $c3 $7c $32


	ld a, a                                          ; $6066: $7f
	cp $92                                           ; $6067: $fe $92
	add h                                            ; $6069: $84
	ld a, a                                          ; $606a: $7f
	jp $e33e                                         ; $606b: $c3 $3e $e3


	ld e, $fa                                        ; $606e: $1e $fa
	rlca                                             ; $6070: $07
	ld a, l                                          ; $6071: $7d
	add e                                            ; $6072: $83
	ld a, a                                          ; $6073: $7f
	add c                                            ; $6074: $81
	cp $7b                                           ; $6075: $fe $7b
	cp $87                                           ; $6077: $fe $87
	ret nc                                           ; $6079: $d0

	ld a, a                                          ; $607a: $7f
	ret nc                                           ; $607b: $d0

	ld a, a                                          ; $607c: $7f
	jp hl                                            ; $607d: $e9


	ld a, $da                                        ; $607e: $3e $da
	dec a                                            ; $6080: $3d
	ld sp, hl                                        ; $6081: $f9
	ld e, $6b                                        ; $6082: $1e $6b
	sbc h                                            ; $6084: $9c
	rst $38                                          ; $6085: $ff
	adc h                                            ; $6086: $8c
	rst FarCall                                          ; $6087: $f7
	adc h                                            ; $6088: $8c
	ld a, l                                          ; $6089: $7d
	add d                                            ; $608a: $82
	ld [$5115], a                                    ; $608b: $ea $15 $51
	xor [hl]                                         ; $608e: $ae
	dec sp                                           ; $608f: $3b
	call nz, $2067                                   ; $6090: $c4 $67 $20
	ld a, a                                          ; $6093: $7f
	ld h, b                                          ; $6094: $60
	sbc h                                            ; $6095: $9c
	add a                                            ; $6096: $87
	ld a, b                                          ; $6097: $78
	ld a, a                                          ; $6098: $7f
	ld h, c                                          ; $6099: $61
	ld [hl], b                                       ; $609a: $70
	ld a, a                                          ; $609b: $7f
	cp $97                                           ; $609c: $fe $97
	ld hl, sp+$07                                    ; $609e: $f8 $07
	push de                                          ; $60a0: $d5
	ld a, [hl+]                                      ; $60a1: $2a
	ld a, [$6b05]                                    ; $60a2: $fa $05 $6b
	sub h                                            ; $60a5: $94
	ld h, a                                          ; $60a6: $67
	ldh a, [$7f]                                     ; $60a7: $f0 $7f
	ld h, d                                          ; $60a9: $62
	ld c, [hl]                                       ; $60aa: $4e
	ldh a, [rPCM12]                                  ; $60ab: $f0 $76
	ldh a, [c]                                       ; $60ad: $f2
	inc a                                            ; $60ae: $3c
	ret                                              ; $60af: $c9


	ld a, c                                          ; $60b0: $79
	ld a, a                                          ; $60b1: $7f
	ld c, e                                          ; $60b2: $4b
	or $7f                                           ; $60b3: $f6 $7f
	inc b                                            ; $60b5: $04
	add b                                            ; $60b6: $80
	ld sp, hl                                        ; $60b7: $f9
	ld b, $d9                                        ; $60b8: $06 $d9
	ld b, $ec                                        ; $60ba: $06 $ec
	inc bc                                           ; $60bc: $03
	ld c, e                                          ; $60bd: $4b
	or b                                             ; $60be: $b0
	ld c, h                                          ; $60bf: $4c
	or e                                             ; $60c0: $b3
	ld c, $f1                                        ; $60c1: $0e $f1
	inc [hl]                                         ; $60c3: $34
	db $e3                                           ; $60c4: $e3
	xor e                                            ; $60c5: $ab
	ld [hl], h                                       ; $60c6: $74
	sub d                                            ; $60c7: $92
	ld a, l                                          ; $60c8: $7d
	call nc, Call_055_527b                           ; $60c9: $d4 $7b $52
	rst $38                                          ; $60cc: $ff
	ld [hl], e                                       ; $60cd: $73
	ld [$38c5], sp                                   ; $60ce: $08 $c5 $38
	dec l                                            ; $60d1: $2d
	sub h                                            ; $60d2: $94
	add $1d                                          ; $60d3: $c6 $1d
	ld e, $80                                        ; $60d5: $1e $80
	push bc                                          ; $60d7: $c5
	and l                                            ; $60d8: $a5
	ld c, [hl]                                       ; $60d9: $4e
	add c                                            ; $60da: $81
	ld l, [hl]                                       ; $60db: $6e
	dec bc                                           ; $60dc: $0b
	and $0c                                          ; $60dd: $e6 $0c
	or c                                             ; $60df: $b1
	cp l                                             ; $60e0: $bd
	ret nz                                           ; $60e1: $c0

	pop af                                           ; $60e2: $f1
	adc [hl]                                         ; $60e3: $8e
	call nz, $ae9a                                   ; $60e4: $c4 $9a $ae
	sub d                                            ; $60e7: $92
	sbc e                                            ; $60e8: $9b
	or [hl]                                          ; $60e9: $b6
	sub d                                            ; $60ea: $92
	rst $38                                          ; $60eb: $ff
	ld d, e                                          ; $60ec: $53
	rst $38                                          ; $60ed: $ff
	rrca                                             ; $60ee: $0f
	rst $38                                          ; $60ef: $ff
	ld d, e                                          ; $60f0: $53
	di                                               ; $60f1: $f3
	ld [hl], c                                       ; $60f2: $71
	rst SubAFromBC                                          ; $60f3: $e7
	ld l, [hl]                                       ; $60f4: $6e
	db $e3                                           ; $60f5: $e3
	add b                                            ; $60f6: $80
	ld h, d                                          ; $60f7: $62
	adc $5d                                          ; $60f8: $ce $5d
	add $95                                          ; $60fa: $c6 $95
	adc l                                            ; $60fc: $8d
	dec sp                                           ; $60fd: $3b

jr_055_60fe:
	adc l                                            ; $60fe: $8d
	add $be                                          ; $60ff: $c6 $be
	or h                                             ; $6101: $b4
	xor [hl]                                         ; $6102: $ae
	call z, $e87c                                    ; $6103: $cc $7c $e8
	ld e, h                                          ; $6106: $5c
	sbc b                                            ; $6107: $98
	ld hl, sp-$30                                    ; $6108: $f8 $d0
	cp c                                             ; $610a: $b9
	jr nc, jr_055_60fe                               ; $610b: $30 $f1

	and c                                            ; $610d: $a1
	ld [hl], d                                       ; $610e: $72
	inc b                                            ; $610f: $04
	daa                                              ; $6110: $27
	ld [hl+], a                                      ; $6111: $22
	ld d, e                                          ; $6112: $53
	ld b, c                                          ; $6113: $41
	add hl, bc                                       ; $6114: $09
	add hl, bc                                       ; $6115: $09
	sub l                                            ; $6116: $95
	add h                                            ; $6117: $84
	nop                                              ; $6118: $00
	cp $86                                           ; $6119: $fe $86
	inc bc                                           ; $611b: $03
	ld bc, $0603                                     ; $611c: $01 $03 $06
	ld bc, $7003                                     ; $611f: $01 $03 $70
	ld d, [hl]                                       ; $6122: $56
	sub d                                            ; $6123: $92
	rst $38                                          ; $6124: $ff
	pop af                                           ; $6125: $f1
	ld a, l                                          ; $6126: $7d

jr_055_6127:
	jp $d37e                                         ; $6127: $c3 $7e $d3


	inc a                                            ; $612a: $3c
	rst FarCall                                          ; $612b: $f7
	sbc h                                            ; $612c: $9c
	rst $38                                          ; $612d: $ff
	ld c, [hl]                                       ; $612e: $4e
	rst $38                                          ; $612f: $ff
	adc [hl]                                         ; $6130: $8e
	ld a, d                                          ; $6131: $7a
	sub $98                                          ; $6132: $d6 $98
	inc a                                            ; $6134: $3c
	rst $38                                          ; $6135: $ff
	jr c, @+$01                                      ; $6136: $38 $ff

	ld a, b                                          ; $6138: $78

jr_055_6139:
	rst $38                                          ; $6139: $ff
	ld [hl], b                                       ; $613a: $70

jr_055_613b:
	ld a, c                                          ; $613b: $79
	inc d                                            ; $613c: $14

jr_055_613d:
	adc b                                            ; $613d: $88
	inc [hl]                                         ; $613e: $34
	ei                                               ; $613f: $fb
	jr c, jr_055_6139                                ; $6140: $38 $f7

	jr c, jr_055_613b                                ; $6142: $38 $f7

	jr z, jr_055_613d                                ; $6144: $28 $f7

	ld [hl], b                                       ; $6146: $70
	rst AddAOntoHL                                          ; $6147: $ef
	ld [hl], b                                       ; $6148: $70
	rst GetHLinHL                                          ; $6149: $cf
	ld h, c                                          ; $614a: $61
	rst SubAFromDE                                          ; $614b: $df
	and c                                            ; $614c: $a1
	rst SubAFromDE                                          ; $614d: $df
	ld [hl], e                                       ; $614e: $73
	adc $b3                                          ; $614f: $ce $b3
	adc $e1                                          ; $6151: $ce $e1
	sbc [hl]                                         ; $6153: $9e
	push hl                                          ; $6154: $e5
	ld a, e                                          ; $6155: $7b
	cp $99                                           ; $6156: $fe $99
	ld h, a                                          ; $6158: $67
	sbc h                                            ; $6159: $9c
	rst JumpTable                                          ; $615a: $c7
	inc a                                            ; $615b: $3c
	rst JumpTable                                          ; $615c: $c7
	inc a                                            ; $615d: $3c
	halt                                             ; $615e: $76
	call z, $fe7f                                    ; $615f: $cc $7f $fe
	ld e, e                                          ; $6162: $5b
	inc [hl]                                         ; $6163: $34
	ld a, a                                          ; $6164: $7f
	ld [hl+], a                                      ; $6165: $22
	sbc l                                            ; $6166: $9d
	add b                                            ; $6167: $80
	cp a                                             ; $6168: $bf
	ld [hl], l                                       ; $6169: $75
	ld b, [hl]                                       ; $616a: $46
	ld [hl], e                                       ; $616b: $73
	cp $7d                                           ; $616c: $fe $7d
	ld a, [hl-]                                      ; $616e: $3a
	adc a                                            ; $616f: $8f
	cp l                                             ; $6170: $bd
	add $7b                                          ; $6171: $c6 $7b
	add $5e                                          ; $6173: $c6 $5e
	db $e3                                           ; $6175: $e3
	dec a                                            ; $6176: $3d
	db $e3                                           ; $6177: $e3
	cp a                                             ; $6178: $bf
	ld h, c                                          ; $6179: $61
	xor a                                            ; $617a: $af
	ld [hl], c                                       ; $617b: $71
	xor [hl]                                         ; $617c: $ae
	ld [hl], c                                       ; $617d: $71
	sbc a                                            ; $617e: $9f
	ld [hl], b                                       ; $617f: $70
	ld e, a                                          ; $6180: $5f
	sub $99                                          ; $6181: $d6 $99
	ld b, a                                          ; $6183: $47
	cp b                                             ; $6184: $b8
	ld a, [$8e9d]                                    ; $6185: $fa $9d $8e
	db $fd                                           ; $6188: $fd
	ld h, a                                          ; $6189: $67
	ldh a, [c]                                       ; $618a: $f2
	ld a, [hl]                                       ; $618b: $7e
	jr c, jr_055_6127                                ; $618c: $38 $99

	ccf                                              ; $618e: $3f
	ret nz                                           ; $618f: $c0

	ld [hl-], a                                      ; $6190: $32

jr_055_6191:
	call $9a65                                       ; $6191: $cd $65 $9a
	ld d, [hl]                                       ; $6194: $56
	ld [$bc9b], a                                    ; $6195: $ea $9b $bc
	ld b, e                                          ; $6198: $43
	sub h                                            ; $6199: $94
	ld l, e                                          ; $619a: $6b
	ld l, d                                          ; $619b: $6a
	ld [$0496], a                                    ; $619c: $ea $96 $04
	db $fd                                           ; $619f: $fd
	ld b, $ee                                        ; $61a0: $06 $ee
	inc de                                           ; $61a2: $13
	db $e4                                           ; $61a3: $e4
	dec de                                           ; $61a4: $1b
	sbc a                                            ; $61a5: $9f
	ld l, c                                          ; $61a6: $69
	ld [hl], a                                       ; $61a7: $77
	db $f4                                           ; $61a8: $f4
	add b                                            ; $61a9: $80
	db $dd                                           ; $61aa: $dd
	ld [hl+], a                                      ; $61ab: $22
	call z, $cc33                                    ; $61ac: $cc $33 $cc
	inc sp                                           ; $61af: $33
	and c                                            ; $61b0: $a1
	ld e, d                                          ; $61b1: $5a
	jr nz, jr_055_6191                               ; $61b2: $20 $dd

	ld a, h                                          ; $61b4: $7c
	adc a                                            ; $61b5: $8f
	rst $38                                          ; $61b6: $ff
	nop                                              ; $61b7: $00
	sbc e                                            ; $61b8: $9b
	ld h, h                                          ; $61b9: $64
	jr c, @-$38                                      ; $61ba: $38 $c6

	ld l, l                                          ; $61bc: $6d
	sub d                                            ; $61bd: $92
	ld l, c                                          ; $61be: $69
	sub [hl]                                         ; $61bf: $96
	ld c, h                                          ; $61c0: $4c
	or e                                             ; $61c1: $b3
	ld [bc], a                                       ; $61c2: $02
	or l                                             ; $61c3: $b5
	sbc h                                            ; $61c4: $9c
	daa                                              ; $61c5: $27
	call nc, $0123                                   ; $61c6: $d4 $23 $01
	add b                                            ; $61c9: $80
	ld [hl], a                                       ; $61ca: $77
	ld de, $3be7                                     ; $61cb: $11 $e7 $3b
	rst JumpTable                                          ; $61ce: $c7
	ldh a, [c]                                       ; $61cf: $f2
	adc a                                            ; $61d0: $8f
	jp $bbff                                         ; $61d1: $c3 $ff $bb


	rst GetHLinHL                                          ; $61d4: $cf
	xor e                                            ; $61d5: $ab
	rst SubAFromDE                                          ; $61d6: $df
	ld [hl], e                                       ; $61d7: $73
	cp $85                                           ; $61d8: $fe $85
	cp $8f                                           ; $61da: $fe $8f
	db $fc                                           ; $61dc: $fc
	push de                                          ; $61dd: $d5
	cp $d5                                           ; $61de: $fe $d5
	cp $d4                                           ; $61e0: $fe $d4
	rst $38                                          ; $61e2: $ff
	cp [hl]                                          ; $61e3: $be
	rst $38                                          ; $61e4: $ff
	cp e                                             ; $61e5: $bb
	rst $38                                          ; $61e6: $ff
	ld e, e                                          ; $61e7: $5b
	and $90                                          ; $61e8: $e6 $90
	ld h, e                                          ; $61ea: $63
	or $cb                                           ; $61eb: $f6 $cb
	or $6a                                           ; $61ed: $f6 $6a
	rst FarCall                                          ; $61ef: $f7
	ld a, d                                          ; $61f0: $7a
	rst $38                                          ; $61f1: $ff
	ld h, [hl]                                       ; $61f2: $66
	rst $38                                          ; $61f3: $ff
	halt                                             ; $61f4: $76
	rst $38                                          ; $61f5: $ff
	or d                                             ; $61f6: $b2
	rst $38                                          ; $61f7: $ff

jr_055_61f8:
	ld c, e                                          ; $61f8: $4b
	ld a, b                                          ; $61f9: $78
	ld [hl-], a                                      ; $61fa: $32
	add b                                            ; $61fb: $80
	ld c, h                                          ; $61fc: $4c
	cp $4e                                           ; $61fd: $fe $4e
	db $fc                                           ; $61ff: $fc
	xor c                                            ; $6200: $a9
	db $fc                                           ; $6201: $fc
	xor c                                            ; $6202: $a9
	ld hl, sp-$4d                                    ; $6203: $f8 $b3
	ld hl, sp-$49                                    ; $6205: $f8 $b7
	ldh a, [$2a]                                     ; $6207: $f0 $2a
	dec de                                           ; $6209: $1b
	ld [hl], a                                       ; $620a: $77
	ld a, [de]                                       ; $620b: $1a
	ld d, [hl]                                       ; $620c: $56
	dec [hl]                                         ; $620d: $35
	rst $38                                          ; $620e: $ff
	dec h                                            ; $620f: $25
	adc l                                            ; $6210: $8d
	ld l, e                                          ; $6211: $6b
	rst SubAFromDE                                          ; $6212: $df
	ld c, e                                          ; $6213: $4b
	dec de                                           ; $6214: $1b
	rst SubAFromHL                                          ; $6215: $d7
	adc [hl]                                         ; $6216: $8e
	or a                                             ; $6217: $b7
	ld h, b                                          ; $6218: $60
	ldh [c], a                                       ; $6219: $e2
	ld b, d                                          ; $621a: $42
	adc [hl]                                         ; $621b: $8e
	db $e4                                           ; $621c: $e4
	ret nz                                           ; $621d: $c0

	call nz, $c884                                   ; $621e: $c4 $84 $c8
	add c                                            ; $6221: $81
	adc b                                            ; $6222: $88
	dec de                                           ; $6223: $1b
	add b                                            ; $6224: $80
	rlca                                             ; $6225: $07
	db $10                                           ; $6226: $10
	daa                                              ; $6227: $27
	db $10                                           ; $6228: $10
	rrca                                             ; $6229: $0f
	nop                                              ; $622a: $00
	rra                                              ; $622b: $1f
	nop                                              ; $622c: $00
	ld [hl], b                                       ; $622d: $70
	db $e3                                           ; $622e: $e3
	ld l, e                                          ; $622f: $6b
	cp $92                                           ; $6230: $fe $92
	ld c, b                                          ; $6232: $48
	rst $38                                          ; $6233: $ff
	xor c                                            ; $6234: $a9
	ld a, a                                          ; $6235: $7f

jr_055_6236:
	pop af                                           ; $6236: $f1
	ccf                                              ; $6237: $3f
	db $d3                                           ; $6238: $d3
	ccf                                              ; $6239: $3f
	and e                                            ; $623a: $a3
	ld a, a                                          ; $623b: $7f
	rst JumpTable                                          ; $623c: $c7
	ld a, a                                          ; $623d: $7f
	ld b, [hl]                                       ; $623e: $46
	ld a, d                                          ; $623f: $7a
	call nz, $e092                                   ; $6240: $c4 $92 $e0
	rst $38                                          ; $6243: $ff
	ret nz                                           ; $6244: $c0

	rst $38                                          ; $6245: $ff
	pop bc                                           ; $6246: $c1
	rst $38                                          ; $6247: $ff
	add c                                            ; $6248: $81
	rst $38                                          ; $6249: $ff
	add d                                            ; $624a: $82
	rst $38                                          ; $624b: $ff
	inc bc                                           ; $624c: $03
	cp $05                                           ; $624d: $fe $05
	ld a, e                                          ; $624f: $7b
	cp $80                                           ; $6250: $fe $80
	pop hl                                           ; $6252: $e1
	sbc a                                            ; $6253: $9f
	jp nz, $c3bf                                     ; $6254: $c2 $bf $c3

	ld a, $c3                                        ; $6257: $3e $c3
	ld a, $85                                        ; $6259: $3e $85
	ld a, [hl]                                       ; $625b: $7e
	add a                                            ; $625c: $87
	ld a, h                                          ; $625d: $7c
	add a                                            ; $625e: $87

jr_055_625f:
	ld a, h                                          ; $625f: $7c
	dec bc                                           ; $6260: $0b
	db $fc                                           ; $6261: $fc
	srl h                                            ; $6262: $cb $3c
	rst GetHLinHL                                          ; $6264: $cf
	jr c, jr_055_6236                                ; $6265: $38 $cf

	jr c, jr_055_61f8                                ; $6267: $38 $8f

	ld a, b                                          ; $6269: $78
	add a                                            ; $626a: $87
	ld a, b                                          ; $626b: $78
	sbc a                                            ; $626c: $9f
	ld [hl], b                                       ; $626d: $70
	sbc a                                            ; $626e: $9f
	ld [hl], b                                       ; $626f: $70
	rra                                              ; $6270: $1f
	ld a, [hl]                                       ; $6271: $7e
	sbc a                                            ; $6272: $9f
	ld c, c                                          ; $6273: $49
	or $7e                                           ; $6274: $f6 $7e
	adc $9d                                          ; $6276: $ce $9d
	cp a                                             ; $6278: $bf
	ld h, b                                          ; $6279: $60
	ld [hl], a                                       ; $627a: $77
	cp $9c                                           ; $627b: $fe $9c
	xor a                                            ; $627d: $af
	ld [hl], b                                       ; $627e: $70
	xor a                                            ; $627f: $af
	ld a, e                                          ; $6280: $7b
	ldh [$7f], a                                     ; $6281: $e0 $7f
	cp $9c                                           ; $6283: $fe $9c
	rst SubAFromDE                                          ; $6285: $df
	jr nc, jr_055_625f                               ; $6286: $30 $d7

	ld a, e                                          ; $6288: $7b
	ret nc                                           ; $6289: $d0

	ld a, a                                          ; $628a: $7f
	cp $7f                                           ; $628b: $fe $7f
	ret z                                            ; $628d: $c8

	sbc h                                            ; $628e: $9c
	db $eb                                           ; $628f: $eb
	inc e                                            ; $6290: $1c
	rst SubAFromBC                                          ; $6291: $e7
	ld a, e                                          ; $6292: $7b
	cp $80                                           ; $6293: $fe $80
	add e                                            ; $6295: $83
	rst $38                                          ; $6296: $ff
	ld b, e                                          ; $6297: $43
	rst $38                                          ; $6298: $ff
	jp nz, $c27f                                     ; $6299: $c2 $7f $c2

	ld a, a                                          ; $629c: $7f
	xor h                                            ; $629d: $ac
	ld a, a                                          ; $629e: $7f
	and $3f                                          ; $629f: $e6 $3f
	or $3f                                           ; $62a1: $f6 $3f
	jp c, Jump_055_4d3f                              ; $62a3: $da $3f $4d

	cp d                                             ; $62a6: $ba
	db $fc                                           ; $62a7: $fc
	ld a, [hl+]                                      ; $62a8: $2a
	xor l                                            ; $62a9: $ad
	ld a, d                                          ; $62aa: $7a
	ret c                                            ; $62ab: $d8

	ld a, e                                          ; $62ac: $7b
	jp hl                                            ; $62ad: $e9


	ld e, d                                          ; $62ae: $5a
	db $ed                                           ; $62af: $ed
	ld e, d                                          ; $62b0: $5a
	ld l, h                                          ; $62b1: $6c
	db $db                                           ; $62b2: $db
	ret                                              ; $62b3: $c9


	ld a, a                                          ; $62b4: $7f
	ld a, [hl]                                       ; $62b5: $7e
	add b                                            ; $62b6: $80
	ld [hl], c                                       ; $62b7: $71
	db $dd                                           ; $62b8: $dd
	jr nz, jr_055_62ed                               ; $62b9: $20 $32

	ld l, h                                          ; $62bb: $6c
	ld e, c                                          ; $62bc: $59
	and $bd                                          ; $62bd: $e6 $bd
	jp nc, $afd8                                     ; $62bf: $d2 $d8 $af

	call nz, Call_055_4dbf                           ; $62c2: $c4 $bf $4d
	cp a                                             ; $62c5: $bf
	rrca                                             ; $62c6: $0f
	ld sp, hl                                        ; $62c7: $f9
	cpl                                              ; $62c8: $2f
	sbc c                                            ; $62c9: $99
	pop de                                           ; $62ca: $d1
	cpl                                              ; $62cb: $2f
	ld h, l                                          ; $62cc: $65
	rrca                                             ; $62cd: $0f
	dec h                                            ; $62ce: $25
	rst SubAFromDE                                          ; $62cf: $df
	xor h                                            ; $62d0: $ac
	rst SubAFromHL                                          ; $62d1: $d7
	rst SubAFromDE                                          ; $62d2: $df
	or $5e                                           ; $62d3: $f6 $5e
	push af                                          ; $62d5: $f5
	add b                                            ; $62d6: $80
	adc e                                            ; $62d7: $8b
	ld b, a                                          ; $62d8: $47
	sub d                                            ; $62d9: $92
	dec l                                            ; $62da: $2d
	push bc                                          ; $62db: $c5
	ld a, $e6                                        ; $62dc: $3e $e6
	ld a, a                                          ; $62de: $7f
	or $6f                                           ; $62df: $f6 $6f
	daa                                              ; $62e1: $27
	rst $38                                          ; $62e2: $ff
	xor e                                            ; $62e3: $ab
	rst SubAFromDE                                          ; $62e4: $df
	db $d3                                           ; $62e5: $d3
	cp a                                             ; $62e6: $bf
	ld e, b                                          ; $62e7: $58
	dec h                                            ; $62e8: $25
	add hl, hl                                       ; $62e9: $29
	ld [hl], e                                       ; $62ea: $73
	push bc                                          ; $62eb: $c5
	ld [hl], e                                       ; $62ec: $73

jr_055_62ed:
	ld e, b                                          ; $62ed: $58
	rst FarCall                                          ; $62ee: $f7
	sub d                                            ; $62ef: $92
	rst $38                                          ; $62f0: $ff
	sbc a                                            ; $62f1: $9f
	rst $38                                          ; $62f2: $ff
	or a                                             ; $62f3: $b7
	rst $38                                          ; $62f4: $ff
	db $db                                           ; $62f5: $db
	sbc e                                            ; $62f6: $9b
	rst $38                                          ; $62f7: $ff
	xor a                                            ; $62f8: $af
	rst SubAFromDE                                          ; $62f9: $df
	cp a                                             ; $62fa: $bf
	ld a, e                                          ; $62fb: $7b
	cp $7f                                           ; $62fc: $fe $7f
	ld hl, sp-$67                                    ; $62fe: $f8 $99
	rst SubAFromDE                                          ; $6300: $df
	ei                                               ; $6301: $fb
	ld [hl], a                                       ; $6302: $77
	ei                                               ; $6303: $fb
	cp e                                             ; $6304: $bb
	rst FarCall                                          ; $6305: $f7
	ld a, e                                          ; $6306: $7b
	cp $93                                           ; $6307: $fe $93
	rst $38                                          ; $6309: $ff
	rla                                              ; $630a: $17
	rst $38                                          ; $630b: $ff
	ld d, $ff                                        ; $630c: $16 $ff
	sub [hl]                                         ; $630e: $96
	rst $38                                          ; $630f: $ff
	sub $ff                                          ; $6310: $d6 $ff
	or $ff                                           ; $6312: $f6 $ff
	cp $7b                                           ; $6314: $fe $7b
	cp $9c                                           ; $6316: $fe $9c
	ld [hl-], a                                      ; $6318: $32
	rst $38                                          ; $6319: $ff
	or c                                             ; $631a: $b1

jr_055_631b:
	ld a, e                                          ; $631b: $7b
	cp $9e                                           ; $631c: $fe $9e
	reti                                             ; $631e: $d9


	ld a, e                                          ; $631f: $7b
	cp $9e                                           ; $6320: $fe $9e
	sbc c                                            ; $6322: $99
	ld [hl], h                                       ; $6323: $74
	xor b                                            ; $6324: $a8
	add b                                            ; $6325: $80
	cp $b6                                           ; $6326: $fe $b6
	pop hl                                           ; $6328: $e1
	rst GetHLinHL                                          ; $6329: $cf
	pop hl                                           ; $632a: $e1
	adc $c3                                          ; $632b: $ce $c3
	jp c, $9c86                                      ; $632d: $da $86 $9c

	add [hl]                                         ; $6330: $86
	inc [hl]                                         ; $6331: $34
	dec c                                            ; $6332: $0d
	ld a, c                                          ; $6333: $79
	dec c                                            ; $6334: $0d
	ld l, b                                          ; $6335: $68
	dec de                                           ; $6336: $1b
	or [hl]                                          ; $6337: $b6
	xor [hl]                                         ; $6338: $ae
	inc e                                            ; $6339: $1c
	ld l, [hl]                                       ; $633a: $6e
	ld l, h                                          ; $633b: $6c
	ld e, h                                          ; $633c: $5c
	jr c, jr_055_631b                                ; $633d: $38 $dc

	db $dd                                           ; $633f: $dd
	cp b                                             ; $6340: $b8
	ld [hl], a                                       ; $6341: $77
	cp b                                             ; $6342: $b8
	cp [hl]                                          ; $6343: $be
	ld [hl], c                                       ; $6344: $71
	sub e                                            ; $6345: $93
	xor $71                                          ; $6346: $ee $71
	rra                                              ; $6348: $1f
	jr nz, jr_055_63aa                               ; $6349: $20 $5f

	jr nz, jr_055_638c                               ; $634b: $20 $3f

	ld b, b                                          ; $634d: $40
	cp a                                             ; $634e: $bf
	ld b, b                                          ; $634f: $40
	ld a, a                                          ; $6350: $7f
	add b                                            ; $6351: $80
	ld l, l                                          ; $6352: $6d
	ld [$d47d], sp                                   ; $6353: $08 $7d $d4
	ld a, h                                          ; $6356: $7c
	sub [hl]                                         ; $6357: $96
	ld a, h                                          ; $6358: $7c
	adc h                                            ; $6359: $8c
	sbc d                                            ; $635a: $9a
	db $fc                                           ; $635b: $fc
	rlca                                             ; $635c: $07
	rst $38                                          ; $635d: $ff
	rlca                                             ; $635e: $07
	rst $38                                          ; $635f: $ff
	ld a, b                                          ; $6360: $78
	adc [hl]                                         ; $6361: $8e
	ld a, a                                          ; $6362: $7f
	cp $70                                           ; $6363: $fe $70
	ld l, d                                          ; $6365: $6a
	sbc [hl]                                         ; $6366: $9e
	rst $38                                          ; $6367: $ff
	ld a, b                                          ; $6368: $78
	ld e, c                                          ; $6369: $59
	sbc l                                            ; $636a: $9d
	rst $38                                          ; $636b: $ff
	rst FarCall                                          ; $636c: $f7
	ld a, d                                          ; $636d: $7a
	inc [hl]                                         ; $636e: $34
	ld a, a                                          ; $636f: $7f
	cp $9c                                           ; $6370: $fe $9c
	inc b                                            ; $6372: $04
	rst $38                                          ; $6373: $ff
	ld [$fe7b], sp                                   ; $6374: $08 $7b $fe
	sbc [hl]                                         ; $6377: $9e
	adc $de                                          ; $6378: $ce $de
	rst $38                                          ; $637a: $ff
	ld a, l                                          ; $637b: $7d
	ld [hl], $80                                     ; $637c: $36 $80
	ldh a, [rIF]                                     ; $637e: $f0 $0f
	db $fc                                           ; $6380: $fc
	inc bc                                           ; $6381: $03
	rrca                                             ; $6382: $0f
	ld hl, sp+$07                                    ; $6383: $f8 $07
	ld hl, sp+$1f                                    ; $6385: $f8 $1f
	ldh a, [rIF]                                     ; $6387: $f0 $0f
	ld hl, sp-$32                                    ; $6389: $f8 $ce
	rst $38                                          ; $638b: $ff

jr_055_638c:
	ld [hl], a                                       ; $638c: $77
	rst $38                                          ; $638d: $ff
	rra                                              ; $638e: $1f
	rst $38                                          ; $638f: $ff
	ccf                                              ; $6390: $3f
	rst $38                                          ; $6391: $ff
	rra                                              ; $6392: $1f
	ldh a, [$2f]                                     ; $6393: $f0 $2f
	ldh a, [$3f]                                     ; $6395: $f0 $3f
	ldh [$2f], a                                     ; $6397: $e0 $2f
	ldh a, [rAUD3HIGH]                               ; $6399: $f0 $1e
	rst $38                                          ; $639b: $ff

Call_055_639c:
	adc a                                            ; $639c: $8f
	sbc l                                            ; $639d: $9d
	rst $38                                          ; $639e: $ff
	rst SubAFromBC                                          ; $639f: $e7
	db $dd                                           ; $63a0: $dd
	rst $38                                          ; $63a1: $ff
	ld h, d                                          ; $63a2: $62
	add $9d                                          ; $63a3: $c6 $9d
	rst FarCall                                          ; $63a5: $f7
	ld hl, sp+$77                                    ; $63a6: $f8 $77
	cp a                                             ; $63a8: $bf
	ld h, [hl]                                       ; $63a9: $66

jr_055_63aa:
	ret nc                                           ; $63aa: $d0

	sbc d                                            ; $63ab: $9a
	rst GetHLinHL                                          ; $63ac: $cf
	inc a                                            ; $63ad: $3c
	add $3f                                          ; $63ae: $c6 $3f
	rst $38                                          ; $63b0: $ff
	ld a, e                                          ; $63b1: $7b
	sbc l                                            ; $63b2: $9d
	adc h                                            ; $63b3: $8c
	push af                                          ; $63b4: $f5
	ld c, $f3                                        ; $63b5: $0e $f3
	ld c, $fb                                        ; $63b7: $0e $fb
	ld b, $fa                                        ; $63b9: $06 $fa
	rlca                                             ; $63bb: $07
	ld a, [$fd07]                                    ; $63bc: $fa $07 $fd
	inc bc                                           ; $63bf: $03
	cp l                                             ; $63c0: $bd
	jp $e1ff                                         ; $63c1: $c3 $ff $e1


	ld hl, sp+$1f                                    ; $63c4: $f8 $1f
	db $f4                                           ; $63c6: $f4
	ld a, e                                          ; $63c7: $7b
	cp $8a                                           ; $63c8: $fe $8a
	db $ec                                           ; $63ca: $ec
	rra                                              ; $63cb: $1f
	cp $0f                                           ; $63cc: $fe $0f
	cp $0f                                           ; $63ce: $fe $0f
	halt                                             ; $63d0: $76
	adc a                                            ; $63d1: $8f
	rst $38                                          ; $63d2: $ff
	add a                                            ; $63d3: $87
	ld sp, hl                                        ; $63d4: $f9
	rst $38                                          ; $63d5: $ff
	jp hl                                            ; $63d6: $e9


	rst $38                                          ; $63d7: $ff
	xor l                                            ; $63d8: $ad
	rst $38                                          ; $63d9: $ff
	xor c                                            ; $63da: $a9
	rst $38                                          ; $63db: $ff
	db $ed                                           ; $63dc: $ed
	rst $38                                          ; $63dd: $ff
	cp l                                             ; $63de: $bd
	ld a, e                                          ; $63df: $7b
	inc l                                            ; $63e0: $2c
	sbc h                                            ; $63e1: $9c
	call $2dff                                       ; $63e2: $cd $ff $2d
	ld a, e                                          ; $63e5: $7b
	sbc h                                            ; $63e6: $9c
	add [hl]                                         ; $63e7: $86
	xor l                                            ; $63e8: $ad
	ld a, e                                          ; $63e9: $7b
	ld a, d                                          ; $63ea: $7a
	db $fd                                           ; $63eb: $fd
	rst AddAOntoHL                                          ; $63ec: $ef
	rst $38                                          ; $63ed: $ff
	rst AddAOntoHL                                          ; $63ee: $ef
	rst $38                                          ; $63ef: $ff
	rst SubAFromHL                                          ; $63f0: $d7
	rst $38                                          ; $63f1: $ff
	rst SubAFromDE                                          ; $63f2: $df
	rst $38                                          ; $63f3: $ff
	rst SubAFromDE                                          ; $63f4: $df
	rst FarCall                                          ; $63f5: $f7
	rst SubAFromDE                                          ; $63f6: $df
	rst FarCall                                          ; $63f7: $f7
	sub $ff                                          ; $63f8: $d6 $ff
	rst SubAFromHL                                          ; $63fa: $d7
	cp $b7                                           ; $63fb: $fe $b7
	cp $f6                                           ; $63fd: $fe $f6
	rst $38                                          ; $63ff: $ff
	push af                                          ; $6400: $f5
	ld a, e                                          ; $6401: $7b
	cp $9a                                           ; $6402: $fe $9a
	cp e                                             ; $6404: $bb
	ld a, a                                          ; $6405: $7f
	db $db                                           ; $6406: $db
	ld a, a                                          ; $6407: $7f
	db $db                                           ; $6408: $db
	ld a, e                                          ; $6409: $7b
	sub $7f                                          ; $640a: $d6 $7f
	db $fc                                           ; $640c: $fc
	sbc [hl]                                         ; $640d: $9e
	db $d3                                           ; $640e: $d3
	ld a, e                                          ; $640f: $7b
	ldh [$9e], a                                     ; $6410: $e0 $9e
	rst FarCall                                          ; $6412: $f7
	sbc $ff                                          ; $6413: $de $ff
	ld a, a                                          ; $6415: $7f
	ld b, h                                          ; $6416: $44
	sbc h                                            ; $6417: $9c
	cpl                                              ; $6418: $2f
	rst $38                                          ; $6419: $ff
	xor e                                            ; $641a: $ab
	ld a, c                                          ; $641b: $79
	and [hl]                                         ; $641c: $a6
	ld a, a                                          ; $641d: $7f
	cp $7e                                           ; $641e: $fe $7e
	cp [hl]                                          ; $6420: $be
	ld a, a                                          ; $6421: $7f
	ret nc                                           ; $6422: $d0

	sub [hl]                                         ; $6423: $96
	dec hl                                           ; $6424: $2b
	rst FarCall                                          ; $6425: $f7
	ld l, e                                          ; $6426: $6b
	rst FarCall                                          ; $6427: $f7
	ld [hl], a                                       ; $6428: $77
	rst AddAOntoHL                                          ; $6429: $ef
	ld a, a                                          ; $642a: $7f
	rst AddAOntoHL                                          ; $642b: $ef
	ld l, a                                          ; $642c: $6f
	ld [hl], a                                       ; $642d: $77
	call nz, $fe7b                                   ; $642e: $c4 $7b $fe
	ld b, e                                          ; $6431: $43
	nop                                              ; $6432: $00
	db $dd                                           ; $6433: $dd
	ld b, h                                          ; $6434: $44
	sbc l                                            ; $6435: $9d
	ld b, d                                          ; $6436: $42
	ld [hl+], a                                      ; $6437: $22
	reti                                             ; $6438: $d9


	ld b, h                                          ; $6439: $44
	ld e, a                                          ; $643a: $5f
	or $9d                                           ; $643b: $f6 $9d
	ld b, e                                          ; $643d: $43
	ld [hl-], a                                      ; $643e: $32
	reti                                             ; $643f: $d9


	ld b, h                                          ; $6440: $44
	sbc h                                            ; $6441: $9c
	scf                                              ; $6442: $37
	ld [hl], e                                       ; $6443: $73
	inc [hl]                                         ; $6444: $34
	ld l, e                                          ; $6445: $6b
	db $e3                                           ; $6446: $e3
	ld a, a                                          ; $6447: $7f
	or $9e                                           ; $6448: $f6 $9e
	inc sp                                           ; $644a: $33
	ld l, e                                          ; $644b: $6b
	db $e3                                           ; $644c: $e3
	sbc $33                                          ; $644d: $de $33
	ld l, a                                          ; $644f: $6f
	db $eb                                           ; $6450: $eb
	sbc h                                            ; $6451: $9c
	ld b, e                                          ; $6452: $43
	dec [hl]                                         ; $6453: $35
	ld d, e                                          ; $6454: $53
	ld l, e                                          ; $6455: $6b
	ldh [c], a                                       ; $6456: $e2
	sbc e                                            ; $6457: $9b
	ld b, e                                          ; $6458: $43
	dec h                                            ; $6459: $25
	ld d, l                                          ; $645a: $55
	ld d, h                                          ; $645b: $54
	db $dd                                           ; $645c: $dd
	ld b, h                                          ; $645d: $44
	sbc e                                            ; $645e: $9b
	ld b, [hl]                                       ; $645f: $46
	ld h, [hl]                                       ; $6460: $66
	ld [hl-], a                                      ; $6461: $32
	ld d, l                                          ; $6462: $55
	ld l, a                                          ; $6463: $6f
	or $df                                           ; $6464: $f6 $df
	ld h, [hl]                                       ; $6466: $66
	sbc [hl]                                         ; $6467: $9e
	ld h, l                                          ; $6468: $65
	sbc $55                                          ; $6469: $de $55
	sbc $44                                          ; $646b: $de $44
	sbc e                                            ; $646d: $9b
	ld h, $66                                        ; $646e: $26 $66
	ld h, [hl]                                       ; $6470: $66
	inc sp                                           ; $6471: $33
	ld l, a                                          ; $6472: $6f
	or $a5                                           ; $6473: $f6 $a5
	adc e                                            ; $6475: $8b
	sbc l                                            ; $6476: $9d
	db $10                                           ; $6477: $10
	ld hl, sp-$23                                    ; $6478: $f8 $dd
	rst $38                                          ; $647a: $ff
	sbc e                                            ; $647b: $9b
	ld a, a                                          ; $647c: $7f
	rst SubAFromBC                                          ; $647d: $e7
	nop                                              ; $647e: $00
	ld a, $dc                                        ; $647f: $3e $dc
	rst $38                                          ; $6481: $ff
	sbc d                                            ; $6482: $9a
	rra                                              ; $6483: $1f
	nop                                              ; $6484: $00
	nop                                              ; $6485: $00
	add h                                            ; $6486: $84
	ld l, a                                          ; $6487: $6f
	db $dd                                           ; $6488: $dd
	ld a, a                                          ; $6489: $7f
	rst $38                                          ; $648a: $ff
	sbc l                                            ; $648b: $9d
	jp $dd9f                                         ; $648c: $c3 $9f $dd


	cp a                                             ; $648f: $bf
	rst SubAFromDE                                          ; $6490: $df
	ld bc, $f19d                                     ; $6491: $01 $9d $f1
	ld sp, hl                                        ; $6494: $f9
	db $dd                                           ; $6495: $dd
	rst SubAFromBC                                          ; $6496: $e7
	rst $38                                          ; $6497: $ff
	sbc l                                            ; $6498: $9d
	ldh [$f0], a                                     ; $6499: $e0 $f0
	db $dd                                           ; $649b: $dd
	rst FarCall                                          ; $649c: $f7
	sbc e                                            ; $649d: $9b
	and c                                            ; $649e: $a1
	ld [hl+], a                                      ; $649f: $22
	inc c                                            ; $64a0: $0c
	cp $de                                           ; $64a1: $fe $de
	ei                                               ; $64a3: $fb
	sbc [hl]                                         ; $64a4: $9e
	di                                               ; $64a5: $f3
	cp $9e                                           ; $64a6: $fe $9e
	inc bc                                           ; $64a8: $03
	db $dd                                           ; $64a9: $dd
	di                                               ; $64aa: $f3
	sbc l                                            ; $64ab: $9d
	ld bc, $dc07                                     ; $64ac: $01 $07 $dc
	rst FarCall                                          ; $64af: $f7
	sbc e                                            ; $64b0: $9b
	rst SubAFromBC                                          ; $64b1: $e7
	ld bc, $6f1f                                     ; $64b2: $01 $1f $6f
	db $dd                                           ; $64b5: $dd
	rst AddAOntoHL                                          ; $64b6: $ef
	sbc [hl]                                         ; $64b7: $9e
	ei                                               ; $64b8: $fb
	sbc $ff                                          ; $64b9: $de $ff
	sbc $fe                                          ; $64bb: $de $fe
	rst SubAFromDE                                          ; $64bd: $df
	db $fd                                           ; $64be: $fd
	sbc h                                            ; $64bf: $9c
	nop                                              ; $64c0: $00
	ld bc, $de01                                     ; $64c1: $01 $01 $de
	inc bc                                           ; $64c4: $03
	rst SubAFromDE                                          ; $64c5: $df
	rlca                                             ; $64c6: $07
	add b                                            ; $64c7: $80
	sbc l                                            ; $64c8: $9d
	ld [hl], $5b                                     ; $64c9: $36 $5b
	ld l, l                                          ; $64cb: $6d
	or [hl]                                          ; $64cc: $b6
	jp c, $346c                                      ; $64cd: $da $6c $34

	and $ed                                          ; $64d0: $e6 $ed
	db $ed                                           ; $64d2: $ed
	db $db                                           ; $64d3: $db
	db $db                                           ; $64d4: $db
	or a                                             ; $64d5: $b7
	or a                                             ; $64d6: $b7
	rst AddAOntoHL                                          ; $64d7: $ef
	ld d, e                                          ; $64d8: $53
	and [hl]                                         ; $64d9: $a6
	daa                                              ; $64da: $27
	ld c, l                                          ; $64db: $4d
	ld c, [hl]                                       ; $64dc: $4e
	ld e, e                                          ; $64dd: $5b
	dec e                                            ; $64de: $1d
	sbc [hl]                                         ; $64df: $9e
	pop hl                                           ; $64e0: $e1
	pop bc                                           ; $64e1: $c1
	jp nz, $8582                                     ; $64e2: $c2 $82 $85

jr_055_64e5:
	add l                                            ; $64e5: $85
	adc e                                            ; $64e6: $8b
	sub c                                            ; $64e7: $91
	dec bc                                           ; $64e8: $0b
	rst AddAOntoHL                                          ; $64e9: $ef
	adc $dc                                          ; $64ea: $ce $dc
	sbc b                                            ; $64ec: $98
	sbc b                                            ; $64ed: $98
	add hl, sp                                       ; $64ee: $39
	inc sp                                           ; $64ef: $33
	inc sp                                           ; $64f0: $33
	jr nc, jr_055_6563                               ; $64f1: $30 $70

	ld h, b                                          ; $64f3: $60
	ldh [$e0], a                                     ; $64f4: $e0 $e0
	sbc $c0                                          ; $64f6: $de $c0
	add b                                            ; $64f8: $80
	ld [hl], b                                       ; $64f9: $70
	jp $10af                                         ; $64fa: $c3 $af $10


	inc hl                                           ; $64fd: $23
	add a                                            ; $64fe: $87
	adc a                                            ; $64ff: $8f

jr_055_6500:
	inc l                                            ; $6500: $2c
	rrca                                             ; $6501: $0f
	inc e                                            ; $6502: $1c
	db $10                                           ; $6503: $10
	jr nz, jr_055_6506                               ; $6504: $20 $00

jr_055_6506:
	add hl, bc                                       ; $6506: $09
	ld d, $18                                        ; $6507: $16 $18
	inc l                                            ; $6509: $2c
	sbc a                                            ; $650a: $9f
	rst SubAFromHL                                          ; $650b: $d7
	jr z, jr_055_64e5                                ; $650c: $28 $d7

	db $fd                                           ; $650e: $fd
	ld l, d                                          ; $650f: $6a
	ld e, $f0                                        ; $6510: $1e $f0
	ld a, b                                          ; $6512: $78
	ccf                                              ; $6513: $3f
	rra                                              ; $6514: $1f
	ld [$f78e], sp                                   ; $6515: $08 $8e $f7
	adc h                                            ; $6518: $8c
	dec sp                                           ; $6519: $3b
	xor h                                            ; $651a: $ac
	ld d, [hl]                                       ; $651b: $56
	and d                                            ; $651c: $a2
	sbc d                                            ; $651d: $9a
	ld d, e                                          ; $651e: $53
	and l                                            ; $651f: $a5
	ld b, c                                          ; $6520: $41
	ld b, c                                          ; $6521: $41
	ld b, b                                          ; $6522: $40
	jr nz, jr_055_6535                               ; $6523: $20 $10

	add b                                            ; $6525: $80
	ret z                                            ; $6526: $c8

	ld c, b                                          ; $6527: $48
	inc l                                            ; $6528: $2c
	inc l                                            ; $6529: $2c
	ret nz                                           ; $652a: $c0

	ret nz                                           ; $652b: $c0

	db $dd                                           ; $652c: $dd
	ld b, b                                          ; $652d: $40
	rst SubAFromDE                                          ; $652e: $df
	ld h, b                                          ; $652f: $60
	ld a, e                                          ; $6530: $7b
	inc a                                            ; $6531: $3c
	call c, $8f7f                                    ; $6532: $dc $7f $8f

jr_055_6535:
	rlca                                             ; $6535: $07
	inc bc                                           ; $6536: $03
	dec c                                            ; $6537: $0d
	ld de, $1103                                     ; $6538: $11 $03 $11
	jr nz, jr_055_6500                               ; $653b: $20 $c3

	ld hl, sp-$08                                    ; $653d: $f8 $f8
	ldh a, [c]                                       ; $653f: $f2
	and $ec                                          ; $6540: $e6 $ec
	adc $9c                                          ; $6542: $ce $9c
	inc a                                            ; $6544: $3c
	sbc $fe                                          ; $6545: $de $fe
	rst SubAFromDE                                          ; $6547: $df
	cp a                                             ; $6548: $bf
	sbc h                                            ; $6549: $9c
	rrca                                             ; $654a: $0f
	rra                                              ; $654b: $1f
	dec de                                           ; $654c: $1b
	reti                                             ; $654d: $d9


	inc bc                                           ; $654e: $03
	add b                                            ; $654f: $80
	jr jr_055_6582                                   ; $6550: $18 $30

	ld h, c                                          ; $6552: $61
	jp nz, $0088                                     ; $6553: $c2 $88 $00

	nop                                              ; $6556: $00
	inc b                                            ; $6557: $04
	rst SubAFromBC                                          ; $6558: $e7

jr_055_6559:
	rst GetHLinHL                                          ; $6559: $cf
	sbc [hl]                                         ; $655a: $9e
	inc a                                            ; $655b: $3c
	ld [hl], b                                       ; $655c: $70
	db $fc                                           ; $655d: $fc
	db $fc                                           ; $655e: $fc
	ld hl, sp+$39                                    ; $655f: $f8 $39
	cp a                                             ; $6561: $bf
	rra                                              ; $6562: $1f

jr_055_6563:
	ld e, a                                          ; $6563: $5f
	rra                                              ; $6564: $1f
	ld l, $0e                                        ; $6565: $2e $0e

jr_055_6567:
	inc l                                            ; $6567: $2c
	ret nz                                           ; $6568: $c0

	ld b, b                                          ; $6569: $40
	ld h, b                                          ; $656a: $60
	jr nz, jr_055_656d                               ; $656b: $20 $00

jr_055_656d:
	db $10                                           ; $656d: $10
	jr nc, jr_055_6506                               ; $656e: $30 $96

	db $10                                           ; $6570: $10
	ldh [$c0], a                                     ; $6571: $e0 $c0
	sbc a                                            ; $6573: $9f
	cp e                                             ; $6574: $bb
	dec sp                                           ; $6575: $3b
	ld a, a                                          ; $6576: $7f
	rst SubAFromDE                                          ; $6577: $df
	rst SubAFromDE                                          ; $6578: $df
	sbc $0f                                          ; $6579: $de $0f
	sub l                                            ; $657b: $95
	inc e                                            ; $657c: $1c
	rlca                                             ; $657d: $07
	rra                                              ; $657e: $1f
	ccf                                              ; $657f: $3f
	ccf                                              ; $6580: $3f
	rlca                                             ; $6581: $07

jr_055_6582:
	cp $88                                           ; $6582: $fe $88
	cp c                                             ; $6584: $b9
	push af                                          ; $6585: $f5
	ld [hl], a                                       ; $6586: $77
	dec hl                                           ; $6587: $2b
	rst SubAFromDE                                          ; $6588: $df
	db $fc                                           ; $6589: $fc
	sbc [hl]                                         ; $658a: $9e
	ld [hl], b                                       ; $658b: $70
	ld [hl], a                                       ; $658c: $77
	inc hl                                           ; $658d: $23
	add [hl]                                         ; $658e: $86
	ccf                                              ; $658f: $3f
	ld [hl], a                                       ; $6590: $77
	ld h, a                                          ; $6591: $67
	rst GetHLinHL                                          ; $6592: $cf
	db $dd                                           ; $6593: $dd
	sbc c                                            ; $6594: $99
	cp l                                             ; $6595: $bd
	dec a                                            ; $6596: $3d
	nop                                              ; $6597: $00
	nop                                              ; $6598: $00
	ld b, b                                          ; $6599: $40
	ret nz                                           ; $659a: $c0

	add b                                            ; $659b: $80
	add h                                            ; $659c: $84
	inc c                                            ; $659d: $0c
	inc e                                            ; $659e: $1c
	rra                                              ; $659f: $1f
	rlca                                             ; $65a0: $07
	nop                                              ; $65a1: $00
	inc bc                                           ; $65a2: $03
	dec c                                            ; $65a3: $0d
	inc sp                                           ; $65a4: $33
	jp $e103                                         ; $65a5: $c3 $03 $e1


	ld a, d                                          ; $65a8: $7a
	cp b                                             ; $65a9: $b8
	ld a, e                                          ; $65aa: $7b
	call c, $fc93                                    ; $65ab: $dc $93 $fc
	ccf                                              ; $65ae: $3f
	rst $38                                          ; $65af: $ff
	xor a                                            ; $65b0: $af
	rst AddAOntoHL                                          ; $65b1: $ef

Jump_055_65b2:
	rst $38                                          ; $65b2: $ff
	rst $38                                          ; $65b3: $ff
	rst SubAFromDE                                          ; $65b4: $df
	rst SubAFromDE                                          ; $65b5: $df
	rst $38                                          ; $65b6: $ff
	ld c, b                                          ; $65b7: $48
	ret c                                            ; $65b8: $d8

	sbc $10                                          ; $65b9: $de $10
	rst SubAFromDE                                          ; $65bb: $df
	jr nc, jr_055_6559                               ; $65bc: $30 $9b

	ldh a, [$1f]                                     ; $65be: $f0 $1f
	rst $38                                          ; $65c0: $ff
	rst $38                                          ; $65c1: $ff
	db $dd                                           ; $65c2: $dd
	db $fd                                           ; $65c3: $fd
	sbc h                                            ; $65c4: $9c
	ldh a, [$fc]                                     ; $65c5: $f0 $fc
	rlca                                             ; $65c7: $07
	halt                                             ; $65c8: $76
	rst AddAOntoHL                                          ; $65c9: $ef
	sbc e                                            ; $65ca: $9b
	inc bc                                           ; $65cb: $03
	ld b, $c6                                        ; $65cc: $06 $c6
	ld sp, hl                                        ; $65ce: $f9
	call c, $9cf7                                    ; $65cf: $dc $f7 $9c
	inc bc                                           ; $65d2: $03
	ccf                                              ; $65d3: $3f
	cp $dc                                           ; $65d4: $fe $dc
	jr jr_055_6567                                   ; $65d6: $18 $8f

	ld l, a                                          ; $65d8: $6f
	rst $38                                          ; $65d9: $ff
	rst SubAFromDE                                          ; $65da: $df
	rst $38                                          ; $65db: $ff
	rst SubAFromBC                                          ; $65dc: $e7
	ei                                               ; $65dd: $fb
	cp $ff                                           ; $65de: $fe $ff
	or c                                             ; $65e0: $b1
	ld de, $1931                                     ; $65e1: $11 $31 $19
	rra                                              ; $65e4: $1f
	rla                                              ; $65e5: $17
	ld de, $dc10                                     ; $65e6: $11 $10 $dc
	db $fd                                           ; $65e9: $fd
	sbc $ff                                          ; $65ea: $de $ff
	db $db                                           ; $65ec: $db
	rlca                                             ; $65ed: $07
	rst SubAFromDE                                          ; $65ee: $df
	add a                                            ; $65ef: $87
	sbc [hl]                                         ; $65f0: $9e
	inc [hl]                                         ; $65f1: $34
	db $db                                           ; $65f2: $db
	ld e, b                                          ; $65f3: $58
	sbc [hl]                                         ; $65f4: $9e
	ld c, b                                          ; $65f5: $48
	jp c, $80ef                                      ; $65f6: $da $ef $80

	rst $38                                          ; $65f9: $ff
	and [hl]                                         ; $65fa: $a6
	cp d                                             ; $65fb: $ba
	cp d                                             ; $65fc: $ba
	call c, $e4ec                                    ; $65fd: $dc $ec $e4
	ld h, h                                          ; $6600: $64
	ld h, h                                          ; $6601: $64
	dec de                                           ; $6602: $1b
	rla                                              ; $6603: $17
	rla                                              ; $6604: $17
	scf                                              ; $6605: $37
	scf                                              ; $6606: $37
	ccf                                              ; $6607: $3f
	cp a                                             ; $6608: $bf
	cp a                                             ; $6609: $bf
	ld [hl], a                                       ; $660a: $77
	halt                                             ; $660b: $76
	ld [hl], d                                       ; $660c: $72
	ld a, [hl-]                                      ; $660d: $3a
	dec sp                                           ; $660e: $3b
	inc sp                                           ; $660f: $33
	inc sp                                           ; $6610: $33
	ld a, [hl-]                                      ; $6611: $3a
	add b                                            ; $6612: $80
	add b                                            ; $6613: $80
	add h                                            ; $6614: $84
	call nz, $ccc4                                   ; $6615: $c4 $c4 $cc
	sbc c                                            ; $6618: $99
	call z, $18cd                                    ; $6619: $cc $cd $18
	jr nc, @+$22                                     ; $661c: $30 $20

	ld h, b                                          ; $661e: $60
	sbc $40                                          ; $661f: $de $40
	ld a, [hl]                                       ; $6621: $7e
	cp b                                             ; $6622: $b8
	ld a, [hl]                                       ; $6623: $7e
	or c                                             ; $6624: $b1
	db $dd                                           ; $6625: $dd
	ret nz                                           ; $6626: $c0

	sbc l                                            ; $6627: $9d
	add b                                            ; $6628: $80
	ld a, [hl-]                                      ; $6629: $3a
	call c, $9d1a                                    ; $662a: $dc $1a $9d
	ld d, $1e                                        ; $662d: $16 $1e
	sbc $0a                                          ; $662f: $de $0a
	rst SubAFromDE                                          ; $6631: $df
	ld c, $df                                        ; $6632: $0e $df
	rrca                                             ; $6634: $0f
	sub h                                            ; $6635: $94
	dec bc                                           ; $6636: $0b
	and c                                            ; $6637: $a1
	or b                                             ; $6638: $b0
	jr nc, jr_055_666d                               ; $6639: $30 $32

	ld [hl-], a                                      ; $663b: $32
	ld a, [hl+]                                      ; $663c: $2a
	add sp, -$13                                     ; $663d: $e8 $ed
	inc l                                            ; $663f: $2c
	dec l                                            ; $6640: $2d
	db $dd                                           ; $6641: $dd
	cp l                                             ; $6642: $bd
	add b                                            ; $6643: $80
	xor a                                            ; $6644: $af
	or a                                             ; $6645: $b7
	ld h, c                                          ; $6646: $61
	ld h, a                                          ; $6647: $67
	ld l, h                                          ; $6648: $6c
	ld a, b                                          ; $6649: $78
	ldh a, [$e0]                                     ; $664a: $f0 $e0
	ldh [$71], a                                     ; $664c: $e0 $71
	ld a, [hl]                                       ; $664e: $7e
	ld a, b                                          ; $664f: $78
	ld [hl], e                                       ; $6650: $73
	ld h, a                                          ; $6651: $67
	rst AddAOntoHL                                          ; $6652: $ef
	cp a                                             ; $6653: $bf
	cp a                                             ; $6654: $bf
	cp [hl]                                          ; $6655: $be
	add c                                            ; $6656: $81
	ld bc, $0703                                     ; $6657: $01 $03 $07

jr_055_665a:
	ld c, $25                                        ; $665a: $0e $25
	ld c, c                                          ; $665c: $49
	db $10                                           ; $665d: $10
	ld a, [hl]                                       ; $665e: $7e
	cp $fc                                           ; $665f: $fe $fc
	ld hl, sp-$0f                                    ; $6661: $f8 $f1
	sub h                                            ; $6663: $94
	jp nz, $0f86                                     ; $6664: $c2 $86 $0f

	dec de                                           ; $6667: $1b
	ld d, a                                          ; $6668: $57
	rst FarCall                                          ; $6669: $f7
	rst AddAOntoHL                                          ; $666a: $ef
	db $db                                           ; $666b: $db
	db $db                                           ; $666c: $db

jr_055_666d:
	cp [hl]                                          ; $666d: $be
	ld [hl], a                                       ; $666e: $77
	db $dd                                           ; $666f: $dd
	inc bc                                           ; $6670: $03
	sbc $07                                          ; $6671: $de $07
	sbc d                                            ; $6673: $9a
	inc c                                            ; $6674: $0c
	ld bc, $5020                                     ; $6675: $01 $20 $50
	add h                                            ; $6678: $84
	ld a, d                                          ; $6679: $7a
	ld e, d                                          ; $667a: $5a
	sbc c                                            ; $667b: $99
	rst $38                                          ; $667c: $ff
	ld hl, sp-$21                                    ; $667d: $f8 $df
	adc a                                            ; $667f: $8f
	add e                                            ; $6680: $83
	adc a                                            ; $6681: $8f
	ld a, d                                          ; $6682: $7a
	pop af                                           ; $6683: $f1
	sub b                                            ; $6684: $90
	dec e                                            ; $6685: $1d
	dec bc                                           ; $6686: $0b
	rlca                                             ; $6687: $07
	dec de                                           ; $6688: $1b
	jr nc, @+$62                                     ; $6689: $30 $60

	pop bc                                           ; $668b: $c1
	rst $38                                          ; $668c: $ff
	add b                                            ; $668d: $80
	ldh a, [$f0]                                     ; $668e: $f0 $f0
	db $e4                                           ; $6690: $e4
	rst GetHLinHL                                          ; $6691: $cf
	sbc a                                            ; $6692: $9f
	ccf                                              ; $6693: $3f
	ld a, e                                          ; $6694: $7b
	ld [hl-], a                                      ; $6695: $32
	sbc c                                            ; $6696: $99
	rst AddAOntoHL                                          ; $6697: $ef
	xor a                                            ; $6698: $af
	ld sp, $fb7c                                     ; $6699: $31 $7c $fb
	adc h                                            ; $669c: $8c
	sbc $3f                                          ; $669d: $de $3f
	sbc d                                            ; $669f: $9a
	ld [hl], a                                       ; $66a0: $77
	cp $f8                                           ; $66a1: $fe $f8
	rst $38                                          ; $66a3: $ff
	sbc $7a                                          ; $66a4: $de $7a
	db $eb                                           ; $66a6: $eb
	sbc d                                            ; $66a7: $9a
	ldh a, [c]                                       ; $66a8: $f2
	ld sp, hl                                        ; $66a9: $f9
	ld e, l                                          ; $66aa: $5d
	db $fc                                           ; $66ab: $fc
	cp a                                             ; $66ac: $bf
	sbc $fe                                          ; $66ad: $de $fe
	sub l                                            ; $66af: $95
	db $fc                                           ; $66b0: $fc
	ld h, h                                          ; $66b1: $64
	db $fc                                           ; $66b2: $fc

jr_055_66b3:
	db $dd                                           ; $66b3: $dd
	rst SubAFromDE                                          ; $66b4: $df
	ld e, l                                          ; $66b5: $5d
	ld a, l                                          ; $66b6: $7d
	sbc l                                            ; $66b7: $9d
	db $fd                                           ; $66b8: $fd
	ld a, l                                          ; $66b9: $7d
	ld a, e                                          ; $66ba: $7b
	ld e, $9b                                        ; $66bb: $1e $9b
	inc a                                            ; $66bd: $3c
	inc h                                            ; $66be: $24
	ld c, h                                          ; $66bf: $4c
	ld a, h                                          ; $66c0: $7c
	db $dd                                           ; $66c1: $dd
	db $fc                                           ; $66c2: $fc
	ld [hl], a                                       ; $66c3: $77
	xor e                                            ; $66c4: $ab
	db $dd                                           ; $66c5: $dd
	rlca                                             ; $66c6: $07
	ld a, a                                          ; $66c7: $7f
	sub d                                            ; $66c8: $92
	db $db                                           ; $66c9: $db
	ld hl, sp+$7f                                    ; $66ca: $f8 $7f
	ret nz                                           ; $66cc: $c0

	ld a, d                                          ; $66cd: $7a
	ret nc                                           ; $66ce: $d0

	sbc e                                            ; $66cf: $9b
	or d                                             ; $66d0: $b2
	cp a                                             ; $66d1: $bf
	cp a                                             ; $66d2: $bf
	jr nc, jr_055_66b3                               ; $66d3: $30 $de

	jr nz, jr_055_665a                               ; $66d5: $20 $83

	inc hl                                           ; $66d7: $23
	ld l, a                                          ; $66d8: $6f
	ld h, b                                          ; $66d9: $60
	ld h, b                                          ; $66da: $60
	db $fd                                           ; $66db: $fd
	ld sp, hl                                        ; $66dc: $f9
	rst AddAOntoHL                                          ; $66dd: $ef
	cp h                                             ; $66de: $bc
	ldh [rTAC], a                                    ; $66df: $e0 $07
	rst $38                                          ; $66e1: $ff
	cp $03                                           ; $66e2: $fe $03
	rlca                                             ; $66e4: $07
	rra                                              ; $66e5: $1f
	ld a, a                                          ; $66e6: $7f
	rst $38                                          ; $66e7: $ff
	ld hl, sp+$00                                    ; $66e8: $f8 $00
	ld bc, $fe17                                     ; $66ea: $01 $17 $fe
	adc b                                            ; $66ed: $88
	adc a                                            ; $66ee: $8f
	rst $38                                          ; $66ef: $ff
	db $fd                                           ; $66f0: $fd
	rst AddAOntoHL                                          ; $66f1: $ef
	ld sp, hl                                        ; $66f2: $f9
	ld a, d                                          ; $66f3: $7a
	sub c                                            ; $66f4: $91
	sbc b                                            ; $66f5: $98
	ld hl, sp-$78                                    ; $66f6: $f8 $88
	adc e                                            ; $66f8: $8b
	sbc a                                            ; $66f9: $9f
	cp $ff                                           ; $66fa: $fe $ff
	ccf                                              ; $66fc: $3f
	sbc $ff                                          ; $66fd: $de $ff
	sbc d                                            ; $66ff: $9a
	cp a                                             ; $6700: $bf
	ld a, a                                          ; $6701: $7f
	rst $38                                          ; $6702: $ff

jr_055_6703:
	db $10                                           ; $6703: $10
	ret nc                                           ; $6704: $d0

	sbc $10                                          ; $6705: $de $10
	sbc l                                            ; $6707: $9d
	ret nc                                           ; $6708: $d0

	sub b                                            ; $6709: $90
	ld [hl], d                                       ; $670a: $72
	ret nz                                           ; $670b: $c0

	rst SubAFromDE                                          ; $670c: $df
	ld sp, hl                                        ; $670d: $f9
	rst SubAFromDE                                          ; $670e: $df
	ld a, [$87dd]                                    ; $670f: $fa $dd $87
	db $dd                                           ; $6712: $dd
	adc a                                            ; $6713: $8f
	rst SubAFromDE                                          ; $6714: $df
	ret z                                            ; $6715: $c8

	sbc c                                            ; $6716: $99
	ld b, h                                          ; $6717: $44
	ld h, h                                          ; $6718: $64
	ld h, h                                          ; $6719: $64
	ld [hl], d                                       ; $671a: $72
	ld [hl], d                                       ; $671b: $72
	cp c                                             ; $671c: $b9
	reti                                             ; $671d: $d9


	rst $38                                          ; $671e: $ff
	rst SubAFromDE                                          ; $671f: $df
	ld h, h                                          ; $6720: $64
	rst SubAFromDE                                          ; $6721: $df
	inc h                                            ; $6722: $24
	rst SubAFromDE                                          ; $6723: $df
	ld [de], a                                       ; $6724: $12
	sbc e                                            ; $6725: $9b
	ld a, [de]                                       ; $6726: $1a
	dec c                                            ; $6727: $0d
	cp a                                             ; $6728: $bf
	cp a                                             ; $6729: $bf
	db $db                                           ; $672a: $db
	rst $38                                          ; $672b: $ff
	sbc l                                            ; $672c: $9d
	ld a, [hl-]                                      ; $672d: $3a
	dec de                                           ; $672e: $1b
	sbc $19                                          ; $672f: $de $19
	sbc $0a                                          ; $6731: $de $0a
	sbc l                                            ; $6733: $9d
	call $deed                                       ; $6734: $cd $ed $de
	rst AddAOntoHL                                          ; $6737: $ef
	sbc $fe                                          ; $6738: $de $fe
	rst SubAFromDE                                          ; $673a: $df
	ret nz                                           ; $673b: $c0

	add b                                            ; $673c: $80
	jp nz, $cfc1                                     ; $673d: $c2 $c1 $cf

	ld c, e                                          ; $6740: $4b
	rlca                                             ; $6741: $07
	inc bc                                           ; $6742: $03
	add b                                            ; $6743: $80
	add b                                            ; $6744: $80
	add c                                            ; $6745: $81
	add a                                            ; $6746: $87
	ld b, b                                          ; $6747: $40
	rlca                                             ; $6748: $07
	inc bc                                           ; $6749: $03
	ld bc, $423e                                     ; $674a: $01 $3e $42
	ld a, a                                          ; $674d: $7f
	pop af                                           ; $674e: $f1
	ld sp, hl                                        ; $674f: $f9
	cpl                                              ; $6750: $2f
	db $eb                                           ; $6751: $eb
	daa                                              ; $6752: $27
	inc bc                                           ; $6753: $03
	ccf                                              ; $6754: $3f
	pop hl                                           ; $6755: $e1
	nop                                              ; $6756: $00
	ldh a, [$7d]                                     ; $6757: $f0 $7d
	push hl                                          ; $6759: $e5
	db $e3                                           ; $675a: $e3
	sub e                                            ; $675b: $93
	sbc b                                            ; $675c: $98
	reti                                             ; $675d: $d9


	rst SubAFromBC                                          ; $675e: $e7
	ei                                               ; $675f: $fb
	ld b, e                                          ; $6760: $43
	daa                                              ; $6761: $27
	daa                                              ; $6762: $27
	cpl                                              ; $6763: $2f
	ld a, d                                          ; $6764: $7a
	ld [de], a                                       ; $6765: $12
	ld a, l                                          ; $6766: $7d
	adc [hl]                                         ; $6767: $8e
	rst SubAFromDE                                          ; $6768: $df
	inc a                                            ; $6769: $3c
	add b                                            ; $676a: $80
	ccf                                              ; $676b: $3f
	or $fd                                           ; $676c: $f6 $fd
	rst $38                                          ; $676e: $ff
	or a                                             ; $676f: $b7
	db $ed                                           ; $6770: $ed
	jp $1ee6                                         ; $6771: $c3 $e6 $1e


	ld a, b                                          ; $6774: $78
	cp $7f                                           ; $6775: $fe $7f
	cp $fe                                           ; $6777: $fe $fe
	ld a, a                                          ; $6779: $7f
	db $fc                                           ; $677a: $fc
	rst $38                                          ; $677b: $ff
	jr nz, jr_055_6703                               ; $677c: $20 $85

	ld a, [bc]                                       ; $677e: $0a
	ld a, a                                          ; $677f: $7f
	dec e                                            ; $6780: $1d
	db $fd                                           ; $6781: $fd
	ld e, l                                          ; $6782: $5d
	dec a                                            ; $6783: $3d
	ld e, $78                                        ; $6784: $1e $78
	pop af                                           ; $6786: $f1
	ld a, a                                          ; $6787: $7f
	ccf                                              ; $6788: $3f
	rst $38                                          ; $6789: $ff
	sub b                                            ; $678a: $90
	ccf                                              ; $678b: $3f
	ei                                               ; $678c: $fb
	jp z, $f936                                      ; $678d: $ca $36 $f9

	call c, $87cc                                    ; $6790: $dc $cc $87
	ld a, l                                          ; $6793: $7d
	rra                                              ; $6794: $1f
	inc a                                            ; $6795: $3c
	rst $38                                          ; $6796: $ff
	db $fc                                           ; $6797: $fc
	and $f7                                          ; $6798: $e6 $f7
	sbc $ff                                          ; $679a: $de $ff
	adc b                                            ; $679c: $88
	ld h, a                                          ; $679d: $67
	add a                                            ; $679e: $87
	sbc [hl]                                         ; $679f: $9e
	jp hl                                            ; $67a0: $e9


	jp hl                                            ; $67a1: $e9


	rst GetHLinHL                                          ; $67a2: $cf
	ld c, [hl]                                       ; $67a3: $4e
	ei                                               ; $67a4: $fb
	ccf                                              ; $67a5: $3f
	ld a, a                                          ; $67a6: $7f
	adc a                                            ; $67a7: $8f
	dec c                                            ; $67a8: $0d
	ei                                               ; $67a9: $fb
	adc e                                            ; $67aa: $8b
	xor a                                            ; $67ab: $af
	db $fc                                           ; $67ac: $fc
	rst $38                                          ; $67ad: $ff
	di                                               ; $67ae: $f3
	pop de                                           ; $67af: $d1
	xor a                                            ; $67b0: $af
	db $e3                                           ; $67b1: $e3
	ld h, b                                          ; $67b2: $60
	ldh [$79], a                                     ; $67b3: $e0 $79
	ld b, b                                          ; $67b5: $40
	ld a, e                                          ; $67b6: $7b
	add hl, sp                                       ; $67b7: $39
	add b                                            ; $67b8: $80
	cp a                                             ; $67b9: $bf
	ccf                                              ; $67ba: $3f
	ccf                                              ; $67bb: $3f
	ld l, c                                          ; $67bc: $69
	add a                                            ; $67bd: $87
	push bc                                          ; $67be: $c5
	sbc a                                            ; $67bf: $9f
	rst $38                                          ; $67c0: $ff
	ld a, b                                          ; $67c1: $78
	inc bc                                           ; $67c2: $03
	rlca                                             ; $67c3: $07
	adc h                                            ; $67c4: $8c
	rst $38                                          ; $67c5: $ff
	rrca                                             ; $67c6: $0f
	rst $38                                          ; $67c7: $ff
	ld hl, sp-$79                                    ; $67c8: $f8 $87
	db $fc                                           ; $67ca: $fc
	ld hl, sp+$7f                                    ; $67cb: $f8 $7f
	rst GetHLinHL                                          ; $67cd: $cf
	ret nc                                           ; $67ce: $d0

	sub a                                            ; $67cf: $97
	ld e, c                                          ; $67d0: $59
	add $c1                                          ; $67d1: $c6 $c1
	ret nz                                           ; $67d3: $c0

	rst SubAFromDE                                          ; $67d4: $df
	rst $38                                          ; $67d5: $ff
	cp b                                             ; $67d6: $b8
	ld a, a                                          ; $67d7: $7f
	sbc c                                            ; $67d8: $99
	xor a                                            ; $67d9: $af
	cpl                                              ; $67da: $2f
	daa                                              ; $67db: $27
	daa                                              ; $67dc: $27
	rst AddAOntoHL                                          ; $67dd: $ef
	sub l                                            ; $67de: $95
	ld [hl], a                                       ; $67df: $77
	rrca                                             ; $67e0: $0f
	sbc d                                            ; $67e1: $9a
	ld a, b                                          ; $67e2: $78
	add c                                            ; $67e3: $81
	db $f4                                           ; $67e4: $f4
	ld c, $7f                                        ; $67e5: $0e $7f
	sbc $ff                                          ; $67e7: $de $ff
	sbc l                                            ; $67e9: $9d
	db $fc                                           ; $67ea: $fc
	db $e3                                           ; $67eb: $e3
	call c, $df0f                                    ; $67ec: $dc $0f $df
	rra                                              ; $67ef: $1f
	sbc [hl]                                         ; $67f0: $9e
	ccf                                              ; $67f1: $3f
	call c, Call_055_78f0                            ; $67f2: $dc $f0 $78
	cp [hl]                                          ; $67f5: $be
	ld a, a                                          ; $67f6: $7f
	ret c                                            ; $67f7: $d8

	ld a, [hl]                                       ; $67f8: $7e
	adc d                                            ; $67f9: $8a
	ld a, a                                          ; $67fa: $7f
	xor e                                            ; $67fb: $ab
	ld a, a                                          ; $67fc: $7f
	ld h, l                                          ; $67fd: $65
	ld a, l                                          ; $67fe: $7d

Jump_055_67ff:
	ei                                               ; $67ff: $fb
	sbc h                                            ; $6800: $9c
	ld b, c                                          ; $6801: $41
	ld b, a                                          ; $6802: $47
	ld b, e                                          ; $6803: $43
	ld a, c                                          ; $6804: $79
	ld hl, sp-$67                                    ; $6805: $f8 $99
	ei                                               ; $6807: $fb
	sbc $f1                                          ; $6808: $de $f1
	ld bc, $fe02                                     ; $680a: $01 $02 $fe
	ld a, c                                          ; $680d: $79
	or b                                             ; $680e: $b0
	ld [hl], a                                       ; $680f: $77
	ret                                              ; $6810: $c9


	sbc b                                            ; $6811: $98
	inc bc                                           ; $6812: $03
	ld [bc], a                                       ; $6813: $02
	ld [bc], a                                       ; $6814: $02
	sub e                                            ; $6815: $93
	sbc a                                            ; $6816: $9f
	rra                                              ; $6817: $1f
	ccf                                              ; $6818: $3f
	ld [hl], e                                       ; $6819: $73
	add $7b                                          ; $681a: $c6 $7b
	jp nc, $a09e                                     ; $681c: $d2 $9e $a0

	sbc $20                                          ; $681f: $de $20
	call c, Call_055_7eff                            ; $6821: $dc $ff $7e
	ld h, l                                          ; $6824: $65
	sbc [hl]                                         ; $6825: $9e
	ldh a, [$dc]                                     ; $6826: $f0 $dc
	db $10                                           ; $6828: $10
	sbc b                                            ; $6829: $98
	ld de, $1f13                                     ; $682a: $11 $13 $1f
	ld a, [$f2fa]                                    ; $682d: $fa $fa $f2
	ldh a, [c]                                       ; $6830: $f2
	sbc $f0                                          ; $6831: $de $f0
	sbc h                                            ; $6833: $9c
	ld a, [$8f8f]                                    ; $6834: $fa $8f $8f
	db $db                                           ; $6837: $db
	sbc a                                            ; $6838: $9f
	sbc l                                            ; $6839: $9d
	or h                                             ; $683a: $b4
	or [hl]                                          ; $683b: $b6
	sbc $97                                          ; $683c: $de $97
	sbc h                                            ; $683e: $9c
	sub [hl]                                         ; $683f: $96
	sub l                                            ; $6840: $95
	sbc c                                            ; $6841: $99
	reti                                             ; $6842: $d9


	rst $38                                          ; $6843: $ff
	sbc e                                            ; $6844: $9b
	adc a                                            ; $6845: $8f
	ld b, a                                          ; $6846: $47
	daa                                              ; $6847: $27
	rst SubAFromHL                                          ; $6848: $d7
	ld [hl], h                                       ; $6849: $74
	ld hl, sp-$80                                    ; $684a: $f8 $80
	ei                                               ; $684c: $fb
	db $fd                                           ; $684d: $fd
	db $fc                                           ; $684e: $fc
	db $fc                                           ; $684f: $fc
	cp $c6                                           ; $6850: $fe $c6
	ldh [c], a                                       ; $6852: $e2
	ldh a, [$0e]                                     ; $6853: $f0 $0e
	adc a                                            ; $6855: $8f
	rst GetHLinHL                                          ; $6856: $cf
	rst SubAFromBC                                          ; $6857: $e7
	rst FarCall                                          ; $6858: $f7
	sbc [hl]                                         ; $6859: $9e
	adc l                                            ; $685a: $8d
	add b                                            ; $685b: $80
	cp $fa                                           ; $685c: $fe $fa
	ld a, d                                          ; $685e: $7a
	inc a                                            ; $685f: $3c
	inc e                                            ; $6860: $1c
	inc c                                            ; $6861: $0c
	ld b, $00                                        ; $6862: $06 $00
	add c                                            ; $6864: $81
	add b                                            ; $6865: $80
	add b                                            ; $6866: $80
	ld b, b                                          ; $6867: $40
	ret nz                                           ; $6868: $c0

	nop                                              ; $6869: $00
	ld b, b                                          ; $686a: $40
	sbc [hl]                                         ; $686b: $9e
	ld bc, $7dfe                                     ; $686c: $01 $fe $7d
	add e                                            ; $686f: $83
	add e                                            ; $6870: $83
	nop                                              ; $6871: $00
	add b                                            ; $6872: $80
	nop                                              ; $6873: $00
	daa                                              ; $6874: $27
	rrca                                             ; $6875: $0f
	rrca                                             ; $6876: $0f
	ld e, $1e                                        ; $6877: $1e $1e
	ld a, $fe                                        ; $6879: $3e $fe
	ld hl, sp-$39                                    ; $687b: $f8 $c7
	rlca                                             ; $687d: $07
	ld b, $0c                                        ; $687e: $06 $0c
	ld [$6010], sp                                   ; $6880: $08 $10 $60
	add b                                            ; $6883: $80
	xor l                                            ; $6884: $ad
	cp [hl]                                          ; $6885: $be
	inc sp                                           ; $6886: $33
	ld h, b                                          ; $6887: $60
	jr nz, jr_055_68ea                               ; $6888: $20 $60

	ret nz                                           ; $688a: $c0

	ld b, b                                          ; $688b: $40
	ld a, $de                                        ; $688c: $3e $de
	ccf                                              ; $688e: $3f
	sbc $7f                                          ; $688f: $de $7f
	ld a, a                                          ; $6891: $7f
	inc e                                            ; $6892: $1c
	sub l                                            ; $6893: $95
	or b                                             ; $6894: $b0
	jp hl                                            ; $6895: $e9


	ld a, a                                          ; $6896: $7f
	ld [bc], a                                       ; $6897: $02
	ld [$2311], sp                                   ; $6898: $08 $11 $23

jr_055_689b:
	ld [hl], $62                                     ; $689b: $36 $62
	di                                               ; $689d: $f3
	ld a, e                                          ; $689e: $7b
	ld l, h                                          ; $689f: $6c
	ld a, a                                          ; $68a0: $7f
	ld b, b                                          ; $68a1: $40
	sub e                                            ; $68a2: $93
	ld [hl], c                                       ; $68a3: $71
	ld l, d                                          ; $68a4: $6a
	jp c, $7a7a                                      ; $68a5: $da $7a $7a

	ld a, [$fafe]                                    ; $68a8: $fa $fe $fa
	dec sp                                           ; $68ab: $3b
	inc sp                                           ; $68ac: $33
	db $e3                                           ; $68ad: $e3
	add e                                            ; $68ae: $83
	db $dd                                           ; $68af: $dd
	inc bc                                           ; $68b0: $03
	ld a, [hl]                                       ; $68b1: $7e
	ld c, $7f                                        ; $68b2: $0e $7f
	ld b, c                                          ; $68b4: $41
	ld a, a                                          ; $68b5: $7f
	add $8b                                          ; $68b6: $c6 $8b
	jr @+$33                                         ; $68b8: $18 $31

	rst $38                                          ; $68ba: $ff
	cp $fe                                           ; $68bb: $fe $fe
	db $fd                                           ; $68bd: $fd
	ld sp, hl                                        ; $68be: $f9
	di                                               ; $68bf: $f3
	rst SubAFromBC                                          ; $68c0: $e7
	adc $1e                                          ; $68c1: $ce $1e
	adc [hl]                                         ; $68c3: $8e
	inc c                                            ; $68c4: $0c
	add hl, de                                       ; $68c5: $19
	rra                                              ; $68c6: $1f
	ld e, a                                          ; $68c7: $5f
	cpl                                              ; $68c8: $2f
	add a                                            ; $68c9: $87
	ldh [rSVBK], a                                   ; $68ca: $e0 $70
	ld a, e                                          ; $68cc: $7b
	ld [de], a                                       ; $68cd: $12
	sub h                                            ; $68ce: $94
	and b                                            ; $68cf: $a0
	sub b                                            ; $68d0: $90
	nop                                              ; $68d1: $00
	ld h, b                                          ; $68d2: $60
	ld h, b                                          ; $68d3: $60
	jr nz, jr_055_68f6                               ; $68d4: $20 $20

	and b                                            ; $68d6: $a0
	and e                                            ; $68d7: $a3
	xor $f8                                          ; $68d8: $ee $f8
	ld [hl], e                                       ; $68da: $73
	or d                                             ; $68db: $b2
	add h                                            ; $68dc: $84
	ld a, h                                          ; $68dd: $7c
	ld [hl], c                                       ; $68de: $71
	ld h, a                                          ; $68df: $67
	rrca                                             ; $68e0: $0f
	dec de                                           ; $68e1: $1b
	ld [hl-], a                                      ; $68e2: $32
	ld h, b                                          ; $68e3: $60
	jp nz, $0280                                     ; $68e4: $c2 $80 $02

	ld bc, $e4f0                                     ; $68e7: $01 $f0 $e4

jr_055_68ea:
	call z, $3c9c                                    ; $68ea: $cc $9c $3c
	ld a, [hl]                                       ; $68ed: $7e
	db $fc                                           ; $68ee: $fc
	cp $60                                           ; $68ef: $fe $60
	jr nz, jr_055_690a                               ; $68f1: $20 $17

	jr jr_055_6918                                   ; $68f3: $18 $23

	ccf                                              ; $68f5: $3f

jr_055_68f6:
	rst SubAFromDE                                          ; $68f6: $df
	rst $38                                          ; $68f7: $ff
	ld a, e                                          ; $68f8: $7b
	ld l, a                                          ; $68f9: $6f
	ld a, l                                          ; $68fa: $7d
	cp [hl]                                          ; $68fb: $be
	ld a, b                                          ; $68fc: $78
	jr nc, jr_055_689b                               ; $68fd: $30 $9c

	ld l, a                                          ; $68ff: $6f
	inc sp                                           ; $6900: $33
	adc e                                            ; $6901: $8b
	ld [hl], a                                       ; $6902: $77
	ld bc, $ffdf                                     ; $6903: $01 $df $ff
	ld a, c                                          ; $6906: $79
	or c                                             ; $6907: $b1
	db $dd                                           ; $6908: $dd
	rst $38                                          ; $6909: $ff

jr_055_690a:
	ld a, a                                          ; $690a: $7f
	ret                                              ; $690b: $c9


	rst $38                                          ; $690c: $ff
	adc c                                            ; $690d: $89
	rrca                                             ; $690e: $0f
	rlca                                             ; $690f: $07
	inc bc                                           ; $6910: $03
	ld e, $c0                                        ; $6911: $1e $c0
	add b                                            ; $6913: $80
	rst $38                                          ; $6914: $ff
	rst $38                                          ; $6915: $ff
	ldh a, [$f8]                                     ; $6916: $f0 $f8

jr_055_6918:
	db $fc                                           ; $6918: $fc
	pop hl                                           ; $6919: $e1
	ld a, a                                          ; $691a: $7f
	rst $38                                          ; $691b: $ff
	add b                                            ; $691c: $80
	ld hl, sp-$71                                    ; $691d: $f8 $8f
	pop af                                           ; $691f: $f1
	cp $ff                                           ; $6920: $fe $ff
	ret nz                                           ; $6922: $c0

	ret nz                                           ; $6923: $c0

	ld [hl], a                                       ; $6924: $77
	inc de                                           ; $6925: $13
	ld a, a                                          ; $6926: $7f
	ld [hl-], a                                      ; $6927: $32
	rst SubAFromDE                                          ; $6928: $df
	rst $38                                          ; $6929: $ff
	sub l                                            ; $692a: $95
	ld a, [hl]                                       ; $692b: $7e
	dec c                                            ; $692c: $0d
	pop bc                                           ; $692d: $c1
	ei                                               ; $692e: $fb
	ld a, [hl]                                       ; $692f: $7e
	adc h                                            ; $6930: $8c
	ld [bc], a                                       ; $6931: $02
	ld [bc], a                                       ; $6932: $02
	add e                                            ; $6933: $83
	di                                               ; $6934: $f3
	sbc $ff                                          ; $6935: $de $ff
	ld a, a                                          ; $6937: $7f
	pop hl                                           ; $6938: $e1
	sub l                                            ; $6939: $95
	rst AddAOntoHL                                          ; $693a: $ef
	xor $d0                                          ; $693b: $ee $d0
	ld de, $3613                                     ; $693d: $11 $13 $36
	ld l, a                                          ; $6940: $6f
	jr nz, jr_055_6973                               ; $6941: $20 $30

jr_055_6943:
	ld sp, $ae76                                     ; $6943: $31 $76 $ae
	ld a, a                                          ; $6946: $7f
	ld c, l                                          ; $6947: $4d
	sub [hl]                                         ; $6948: $96
	ld [$c736], sp                                   ; $6949: $08 $36 $c7
	adc e                                            ; $694c: $8b
	rra                                              ; $694d: $1f
	ld a, b                                          ; $694e: $78
	sbc c                                            ; $694f: $99
	rra                                              ; $6950: $1f
	rst $38                                          ; $6951: $ff
	ld [hl], l                                       ; $6952: $75
	add a                                            ; $6953: $87
	sbc l                                            ; $6954: $9d
	adc a                                            ; $6955: $8f
	ld a, a                                          ; $6956: $7f
	db $dd                                           ; $6957: $dd
	ld a, [$e076]                                    ; $6958: $fa $76 $e0
	rst SubAFromDE                                          ; $695b: $df
	sbc a                                            ; $695c: $9f
	db $db                                           ; $695d: $db
	rst $38                                          ; $695e: $ff
	sub a                                            ; $695f: $97
	sub c                                            ; $6960: $91
	and e                                            ; $6961: $a3
	ldh [$c4], a                                     ; $6962: $e0 $c4
	jp $edc2                                         ; $6964: $c3 $c2 $ed


	sub h                                            ; $6967: $94
	ld a, e                                          ; $6968: $7b
	pop hl                                           ; $6969: $e1
	rst SubAFromDE                                          ; $696a: $df
	ld sp, hl                                        ; $696b: $f9
	sbc l                                            ; $696c: $9d
	ei                                               ; $696d: $fb
	or $7a                                           ; $696e: $f6 $7a
	ld h, l                                          ; $6970: $65
	ld a, e                                          ; $6971: $7b
	cp e                                             ; $6972: $bb

jr_055_6973:
	adc a                                            ; $6973: $8f
	ccf                                              ; $6974: $3f
	ld e, $0e                                        ; $6975: $1e $0e
	ld hl, sp-$24                                    ; $6977: $f8 $dc
	adc [hl]                                         ; $6979: $8e
	add a                                            ; $697a: $87
	jp $30e0                                         ; $697b: $c3 $e0 $30


	jr jr_055_6943                                   ; $697e: $18 $c3

	jp nz, $e0c0                                     ; $6980: $c2 $c0 $e0

	pop hl                                           ; $6983: $e1
	ld a, e                                          ; $6984: $7b
	xor $fd                                          ; $6985: $ee $fd
	sbc b                                            ; $6987: $98
	ret nz                                           ; $6988: $c0

	ld h, e                                          ; $6989: $63
	rra                                              ; $698a: $1f
	rlca                                             ; $698b: $07
	inc bc                                           ; $698c: $03
	rrca                                             ; $698d: $0f
	ld a, $78                                        ; $698e: $3e $78
	add sp, -$21                                     ; $6990: $e8 $df
	cp $94                                           ; $6992: $fe $94
	inc bc                                           ; $6994: $03
	inc b                                            ; $6995: $04
	jr jr_055_69c8                                   ; $6996: $18 $30

	ldh [$a0], a                                     ; $6998: $e0 $a0
	add b                                            ; $699a: $80
	add b                                            ; $699b: $80
	pop hl                                           ; $699c: $e1
	add e                                            ; $699d: $83
	rlca                                             ; $699e: $07
	ld a, d                                          ; $699f: $7a
	ld c, a                                          ; $69a0: $4f
	add e                                            ; $69a1: $83
	ld a, a                                          ; $69a2: $7f
	inc sp                                           ; $69a3: $33
	nop                                              ; $69a4: $00
	ld bc, $0f03                                     ; $69a5: $01 $03 $0f
	add hl, de                                       ; $69a8: $19
	jr nc, jr_055_69e7                               ; $69a9: $30 $3c

	ccf                                              ; $69ab: $3f
	call nz, $c0b0                                   ; $69ac: $c4 $b0 $c0
	ld [hl], c                                       ; $69af: $71
	ldh [$a8], a                                     ; $69b0: $e0 $a8
	ld d, [hl]                                       ; $69b2: $56
	ld d, b                                          ; $69b3: $50
	ei                                               ; $69b4: $fb
	jp $a0e3                                         ; $69b5: $c3 $e3 $a0


	inc hl                                           ; $69b8: $23
	db $e3                                           ; $69b9: $e3
	ld sp, hl                                        ; $69ba: $f9
	rst $38                                          ; $69bb: $ff
	ld b, l                                          ; $69bc: $45
	xor c                                            ; $69bd: $a9
	sbc $01                                          ; $69be: $de $01
	sbc c                                            ; $69c0: $99
	inc bc                                           ; $69c1: $03
	ld b, $0c                                        ; $69c2: $06 $0c
	add d                                            ; $69c4: $82
	ld b, $ee                                        ; $69c5: $06 $ee
	ld a, b                                          ; $69c7: $78

jr_055_69c8:
	sbc [hl]                                         ; $69c8: $9e
	ld a, [hl]                                       ; $69c9: $7e
	sbc $9c                                          ; $69ca: $de $9c
	rst FarCall                                          ; $69cc: $f7
	db $eb                                           ; $69cd: $eb
	db $db                                           ; $69ce: $db
	ld a, b                                          ; $69cf: $78
	ldh a, [c]                                       ; $69d0: $f2
	ld a, d                                          ; $69d1: $7a
	dec d                                            ; $69d2: $15
	jp c, $9007                                      ; $69d3: $da $07 $90

	ld h, d                                          ; $69d6: $62
	pop bc                                           ; $69d7: $c1
	nop                                              ; $69d8: $00
	ld bc, $8a84                                     ; $69d9: $01 $84 $8a
	sub d                                            ; $69dc: $92
	call nz, $3e9c                                   ; $69dd: $c4 $9c $3e
	rst $38                                          ; $69e0: $ff
	cp $fb                                           ; $69e1: $fe $fb
	pop af                                           ; $69e3: $f1
	pop hl                                           ; $69e4: $e1
	ld a, c                                          ; $69e5: $79
	ret nc                                           ; $69e6: $d0

jr_055_69e7:
	sbc c                                            ; $69e7: $99
	dec b                                            ; $69e8: $05
	ld d, l                                          ; $69e9: $55
	dec bc                                           ; $69ea: $0b
	ld c, $1f                                        ; $69eb: $0e $1f
	inc sp                                           ; $69ed: $33
	cp $96                                           ; $69ee: $fe $96
	jr nz, @-$0e                                     ; $69f0: $20 $f0

	pop af                                           ; $69f2: $f1
	pop hl                                           ; $69f3: $e1
	rst GetHLinHL                                          ; $69f4: $cf
	ldh [$e0], a                                     ; $69f5: $e0 $e0
	ldh a, [$7b]                                     ; $69f7: $f0 $7b
	ld [hl], e                                       ; $69f9: $73
	ld l, h                                          ; $69fa: $6c
	rst SubAFromDE                                          ; $69fb: $df
	ld a, a                                          ; $69fc: $7f
	ld [hl], e                                       ; $69fd: $73
	ld h, h                                          ; $69fe: $64
	sub [hl]                                         ; $69ff: $96
	add hl, bc                                       ; $6a00: $09
	ld e, $7c                                        ; $6a01: $1e $7c
	ld sp, hl                                        ; $6a03: $f9
	ld h, a                                          ; $6a04: $67
	cp $f4                                           ; $6a05: $fe $f4
	and c                                            ; $6a07: $a1
	or $7b                                           ; $6a08: $f6 $7b
	add a                                            ; $6a0a: $87
	ld a, a                                          ; $6a0b: $7f
	dec a                                            ; $6a0c: $3d
	sbc l                                            ; $6a0d: $9d

jr_055_6a0e:
	ld hl, sp-$40                                    ; $6a0e: $f8 $c0
	ld a, b                                          ; $6a10: $78
	and h                                            ; $6a11: $a4
	sbc d                                            ; $6a12: $9a
	ld a, [$85d0]                                    ; $6a13: $fa $d0 $85
	cpl                                              ; $6a16: $2f
	ld a, a                                          ; $6a17: $7f
	ld a, c                                          ; $6a18: $79
	res 2, [hl]                                      ; $6a19: $cb $96
	db $fc                                           ; $6a1b: $fc
	ldh [$03], a                                     ; $6a1c: $e0 $03
	rra                                              ; $6a1e: $1f
	rst $38                                          ; $6a1f: $ff
	cp $e8                                           ; $6a20: $fe $e8
	ld b, d                                          ; $6a22: $42
	rla                                              ; $6a23: $17
	ld [hl], b                                       ; $6a24: $70
	push bc                                          ; $6a25: $c5

jr_055_6a26:
	sbc h                                            ; $6a26: $9c
	ldh a, [hLCDCIntHandlerIdx]                                     ; $6a27: $f0 $81
	rrca                                             ; $6a29: $0f
	ld [hl], a                                       ; $6a2a: $77
	sbc b                                            ; $6a2b: $98
	ld a, [hl]                                       ; $6a2c: $7e
	jr c, jr_055_6a0e                                ; $6a2d: $38 $df

	ld a, a                                          ; $6a2f: $7f
	rst SubAFromDE                                          ; $6a30: $df
	ld a, l                                          ; $6a31: $7d
	ld a, [hl]                                       ; $6a32: $7e
	ret nc                                           ; $6a33: $d0

	rst SubAFromDE                                          ; $6a34: $df
	pop bc                                           ; $6a35: $c1
	rst SubAFromDE                                          ; $6a36: $df
	add c                                            ; $6a37: $81
	rst SubAFromDE                                          ; $6a38: $df
	add e                                            ; $6a39: $83
	ld a, l                                          ; $6a3a: $7d
	sbc a                                            ; $6a3b: $9f
	sbc [hl]                                         ; $6a3c: $9e
	pop af                                           ; $6a3d: $f1
	ld a, e                                          ; $6a3e: $7b
	db $f4                                           ; $6a3f: $f4
	db $dd                                           ; $6a40: $dd
	rst $38                                          ; $6a41: $ff
	sbc l                                            ; $6a42: $9d
	adc [hl]                                         ; $6a43: $8e
	add e                                            ; $6a44: $83
	ld [hl], l                                       ; $6a45: $75
	db $fd                                           ; $6a46: $fd
	rst $38                                          ; $6a47: $ff
	sbc d                                            ; $6a48: $9a
	db $fc                                           ; $6a49: $fc
	or h                                             ; $6a4a: $b4
	ld a, e                                          ; $6a4b: $7b
	ccf                                              ; $6a4c: $3f
	rst GetHLinHL                                          ; $6a4d: $cf
	sbc $c3                                          ; $6a4e: $de $c3
	sbc l                                            ; $6a50: $9d
	rrca                                             ; $6a51: $0f
	rst GetHLinHL                                          ; $6a52: $cf
	ld a, d                                          ; $6a53: $7a
	sub h                                            ; $6a54: $94
	sbc $3f                                          ; $6a55: $de $3f
	ld a, d                                          ; $6a57: $7a
	call $f19a                                       ; $6a58: $cd $9a $f1
	xor $d9                                          ; $6a5b: $ee $d9
	rst SubAFromBC                                          ; $6a5d: $e7
	sbc l                                            ; $6a5e: $9d
	jp c, $dfff                                      ; $6a5f: $da $ff $df

	cp $93                                           ; $6a62: $fe $93
	ldh [$79], a                                     ; $6a64: $e0 $79
	rst $38                                          ; $6a66: $ff
	ld a, l                                          ; $6a67: $7d
	cp $fc                                           ; $6a68: $fe $fc
	call z, rIE                                    ; $6a6a: $cc $ff $ff
	add a                                            ; $6a6d: $87
	cp $83                                           ; $6a6e: $fe $83
	ld a, e                                          ; $6a70: $7b
	db $dd                                           ; $6a71: $dd
	sub h                                            ; $6a72: $94
	ld c, $71                                        ; $6a73: $0e $71
	xor [hl]                                         ; $6a75: $ae
	cp $fe                                           ; $6a76: $fe $fe
	ccf                                              ; $6a78: $3f
	ld h, a                                          ; $6a79: $67
	db $fd                                           ; $6a7a: $fd
	rst $38                                          ; $6a7b: $ff
	rst $38                                          ; $6a7c: $ff
	rst SubAFromDE                                          ; $6a7d: $df
	ld a, e                                          ; $6a7e: $7b
	call nc, $9f80                                   ; $6a7f: $d4 $80 $9f
	inc bc                                           ; $6a82: $03
	ld l, h                                          ; $6a83: $6c
	ld hl, sp+$34                                    ; $6a84: $f8 $34
	inc d                                            ; $6a86: $14
	ld e, $15                                        ; $6a87: $1e $15
	ld [hl], $34                                     ; $6a89: $36 $34
	ld hl, sp-$08                                    ; $6a8b: $f8 $f8
	db $fc                                           ; $6a8d: $fc
	cp $ff                                           ; $6a8e: $fe $ff
	push af                                          ; $6a90: $f5
	call nc, $06d6                                   ; $6a91: $d4 $d6 $06
	ldh [c], a                                       ; $6a94: $e2
	and c                                            ; $6a95: $a1
	ld hl, sp+$30                                    ; $6a96: $f8 $30
	jr jr_055_6a26                                   ; $6a98: $18 $8c

	ld b, b                                          ; $6a9a: $40
	db $ec                                           ; $6a9b: $ec
	add [hl]                                         ; $6a9c: $86
	sub c                                            ; $6a9d: $91
	ldh [$64], a                                     ; $6a9e: $e0 $64
	sub b                                            ; $6aa0: $90
	or h                                             ; $6aa1: $b4
	ret c                                            ; $6aa2: $d8

	ld h, b                                          ; $6aa3: $60
	inc e                                            ; $6aa4: $1c
	jr jr_055_6aba                                   ; $6aa5: $18 $13

	and $2e                                          ; $6aa7: $e6 $2e
	ld l, $27                                        ; $6aa9: $2e $27
	daa                                              ; $6aab: $27
	rlca                                             ; $6aac: $07
	rrca                                             ; $6aad: $0f
	rla                                              ; $6aae: $17
	rst SubAFromBC                                          ; $6aaf: $e7
	sbc $2b                                          ; $6ab0: $de $2b
	ld a, b                                          ; $6ab2: $78
	ld l, b                                          ; $6ab3: $68
	ld a, e                                          ; $6ab4: $7b
	ld l, d                                          ; $6ab5: $6a
	sbc $c0                                          ; $6ab6: $de $c0
	sbc [hl]                                         ; $6ab8: $9e
	add b                                            ; $6ab9: $80

jr_055_6aba:
	sbc $c0                                          ; $6aba: $de $c0
	ld a, a                                          ; $6abc: $7f
	ld b, c                                          ; $6abd: $41
	ld a, a                                          ; $6abe: $7f
	call z, $3d9b                                    ; $6abf: $cc $9b $3d
	add hl, sp                                       ; $6ac2: $39
	sub c                                            ; $6ac3: $91
	ldh [$fd], a                                     ; $6ac4: $e0 $fd
	rst SubAFromDE                                          ; $6ac6: $df
	rra                                              ; $6ac7: $1f
	sbc h                                            ; $6ac8: $9c
	jr @-$0e                                         ; $6ac9: $18 $f0

	add b                                            ; $6acb: $80
	cp $97                                           ; $6acc: $fe $97
	ld hl, sp-$48                                    ; $6ace: $f8 $b8
	cp c                                             ; $6ad0: $b9
	sbc a                                            ; $6ad1: $9f
	sbc a                                            ; $6ad2: $9f
	cp a                                             ; $6ad3: $bf
	ld e, a                                          ; $6ad4: $5f
	ld e, a                                          ; $6ad5: $5f
	ld [hl], l                                       ; $6ad6: $75
	dec bc                                           ; $6ad7: $0b
	ld a, a                                          ; $6ad8: $7f
	sbc l                                            ; $6ad9: $9d
	sbc b                                            ; $6ada: $98
	rst GetHLinHL                                          ; $6adb: $cf
	ld c, a                                          ; $6adc: $4f
	jr c, jr_055_6b4f                                ; $6add: $38 $70

	ret nz                                           ; $6adf: $c0

	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	sbc $ff                                          ; $6ae2: $de $ff
	sbc l                                            ; $6ae4: $9d
	rst JumpTable                                          ; $6ae5: $c7
	adc a                                            ; $6ae6: $8f
	halt                                             ; $6ae7: $76
	ld sp, $ffdf                                     ; $6ae8: $31 $df $ff
	rst SubAFromDE                                          ; $6aeb: $df
	rst FarCall                                          ; $6aec: $f7
	sbc l                                            ; $6aed: $9d
	ld l, a                                          ; $6aee: $6f
	rra                                              ; $6aef: $1f
	db $dd                                           ; $6af0: $dd
	rst $38                                          ; $6af1: $ff
	rst SubAFromDE                                          ; $6af2: $df
	rrca                                             ; $6af3: $0f
	ld l, [hl]                                       ; $6af4: $6e
	ccf                                              ; $6af5: $3f
	sub l                                            ; $6af6: $95
	ld a, b                                          ; $6af7: $78
	rst $38                                          ; $6af8: $ff
	ld a, d                                          ; $6af9: $7a
	add a                                            ; $6afa: $87
	cp $ff                                           ; $6afb: $fe $ff
	db $f4                                           ; $6afd: $f4
	pop hl                                           ; $6afe: $e1
	add a                                            ; $6aff: $87
	inc bc                                           ; $6b00: $03
	ld a, e                                          ; $6b01: $7b
	ld sp, hl                                        ; $6b02: $f9
	ld a, a                                          ; $6b03: $7f
	xor a                                            ; $6b04: $af
	sub a                                            ; $6b05: $97
	ldh a, [$1f]                                     ; $6b06: $f0 $1f
	rst $38                                          ; $6b08: $ff
	rst FarCall                                          ; $6b09: $f7
	ld a, [$05f0]                                    ; $6b0a: $fa $f0 $05
	cpl                                              ; $6b0d: $2f
	ld a, e                                          ; $6b0e: $7b
	sbc e                                            ; $6b0f: $9b
	sbc e                                            ; $6b10: $9b
	rrca                                             ; $6b11: $0f
	inc b                                            ; $6b12: $04
	ld [$7af3], sp                                   ; $6b13: $08 $f3 $7a
	ld a, [bc]                                       ; $6b16: $0a
	ld l, d                                          ; $6b17: $6a
	ldh a, [$9e]                                     ; $6b18: $f0 $9e
	cp $6a                                           ; $6b1a: $fe $6a
	ldh a, [$9e]                                     ; $6b1c: $f0 $9e
	dec bc                                           ; $6b1e: $0b
	ld a, e                                          ; $6b1f: $7b
	and [hl]                                         ; $6b20: $a6
	rst SubAFromDE                                          ; $6b21: $df
	rst $38                                          ; $6b22: $ff
	ld a, a                                          ; $6b23: $7f
	ld [$9070], a                                    ; $6b24: $ea $70 $90
	ld a, e                                          ; $6b27: $7b
	ld [$fb77], a                                    ; $6b28: $ea $77 $fb
	sbc l                                            ; $6b2b: $9d
	db $f4                                           ; $6b2c: $f4
	and e                                            ; $6b2d: $a3
	ld [hl], e                                       ; $6b2e: $73
	push hl                                          ; $6b2f: $e5
	ld a, a                                          ; $6b30: $7f
	jp nz, $c198                                     ; $6b31: $c2 $98 $c1

	ld e, $f0                                        ; $6b34: $1e $f0
	rst $38                                          ; $6b36: $ff
	ld hl, sp-$2e                                    ; $6b37: $f8 $d2
	adc a                                            ; $6b39: $8f
	ld [hl], e                                       ; $6b3a: $73
	di                                               ; $6b3b: $f3
	ld a, l                                          ; $6b3c: $7d
	sub l                                            ; $6b3d: $95
	sbc l                                            ; $6b3e: $9d
	rlca                                             ; $6b3f: $07
	jr c, jr_055_6bb5                                ; $6b40: $38 $73

	add l                                            ; $6b42: $85
	sbc $fb                                          ; $6b43: $de $fb
	rst SubAFromDE                                          ; $6b45: $df
	db $fd                                           ; $6b46: $fd
	sbc h                                            ; $6b47: $9c
	rst $38                                          ; $6b48: $ff
	ld [bc], a                                       ; $6b49: $02
	ld [bc], a                                       ; $6b4a: $02
	call c, $9e06                                    ; $6b4b: $dc $06 $9e
	inc b                                            ; $6b4e: $04

jr_055_6b4f:
	reti                                             ; $6b4f: $d9


	rst $38                                          ; $6b50: $ff
	ld sp, hl                                        ; $6b51: $f9
	sbc $c3                                          ; $6b52: $de $c3
	sbc $c7                                          ; $6b54: $de $c7
	rst SubAFromDE                                          ; $6b56: $df
	add a                                            ; $6b57: $87
	db $db                                           ; $6b58: $db
	ccf                                              ; $6b59: $3f
	rst SubAFromDE                                          ; $6b5a: $df
	ld a, a                                          ; $6b5b: $7f
	sbc h                                            ; $6b5c: $9c
	ld h, e                                          ; $6b5d: $63
	add e                                            ; $6b5e: $83
	inc c                                            ; $6b5f: $0c
	ld a, e                                          ; $6b60: $7b
	pop bc                                           ; $6b61: $c1
	sbc h                                            ; $6b62: $9c
	ld a, [$fce0]                                    ; $6b63: $fa $e0 $fc
	ld [hl], d                                       ; $6b66: $72
	ld d, d                                          ; $6b67: $52
	ld a, a                                          ; $6b68: $7f
	ei                                               ; $6b69: $fb
	adc d                                            ; $6b6a: $8a
	db $fc                                           ; $6b6b: $fc
	db $f4                                           ; $6b6c: $f4
	halt                                             ; $6b6d: $76
	cp $ce                                           ; $6b6e: $fe $ce
	ld c, [hl]                                       ; $6b70: $4e
	ld e, $87                                        ; $6b71: $1e $87
	rrca                                             ; $6b73: $0f
	rrca                                             ; $6b74: $0f
	adc a                                            ; $6b75: $8f
	rst GetHLinHL                                          ; $6b76: $cf
	rst $38                                          ; $6b77: $ff
	sbc a                                            ; $6b78: $9f
	rra                                              ; $6b79: $1f
	rra                                              ; $6b7a: $1f
	cp $7f                                           ; $6b7b: $fe $7f
	cp a                                             ; $6b7d: $bf
	rst SubAFromDE                                          ; $6b7e: $df
	ld a, [hl]                                       ; $6b7f: $7e
	ld a, b                                          ; $6b80: $78
	and $82                                          ; $6b81: $e6 $82
	ld bc, $c080                                     ; $6b83: $01 $80 $c0
	ldh [rIE], a                                     ; $6b86: $e0 $ff
	ld h, b                                          ; $6b88: $60
	ld h, b                                          ; $6b89: $60
	ld a, a                                          ; $6b8a: $7f
	ld [hl], $22                                     ; $6b8b: $36 $22
	xor d                                            ; $6b8d: $aa
	xor d                                            ; $6b8e: $aa
	dec sp                                           ; $6b8f: $3b
	ld e, d                                          ; $6b90: $5a
	ld a, l                                          ; $6b91: $7d
	dec a                                            ; $6b92: $3d
	sub $da                                          ; $6b93: $d6 $da
	ld e, d                                          ; $6b95: $5a
	ld e, d                                          ; $6b96: $5a
	jp z, $252b                                      ; $6b97: $ca $2b $25

	push hl                                          ; $6b9a: $e5
	jr nc, jr_055_6bb5                               ; $6b9b: $30 $18

	inc c                                            ; $6b9d: $0c
	ld b, $03                                        ; $6b9e: $06 $03
	ld a, d                                          ; $6ba0: $7a
	ld h, l                                          ; $6ba1: $65
	sbc d                                            ; $6ba2: $9a
	jr nz, jr_055_6bb5                               ; $6ba3: $20 $10

	ld [$0304], sp                                   ; $6ba5: $08 $04 $03
	cp $92                                           ; $6ba8: $fe $92
	dec l                                            ; $6baa: $2d
	add hl, sp                                       ; $6bab: $39
	ld [hl], l                                       ; $6bac: $75
	dec a                                            ; $6bad: $3d
	ld l, l                                          ; $6bae: $6d
	push bc                                          ; $6baf: $c5
	add l                                            ; $6bb0: $85
	adc h                                            ; $6bb1: $8c
	daa                                              ; $6bb2: $27
	cpl                                              ; $6bb3: $2f
	dec sp                                           ; $6bb4: $3b

jr_055_6bb5:
	ld h, e                                          ; $6bb5: $63
	jp $83de                                         ; $6bb6: $c3 $de $83


	sbc $df                                          ; $6bb9: $de $df
	sbc d                                            ; $6bbb: $9a
	rst GetHLinHL                                          ; $6bbc: $cf
	set 3, e                                         ; $6bbd: $cb $db
	reti                                             ; $6bbf: $d9


	ld hl, sp-$22                                    ; $6bc0: $f8 $de
	ldh [$dc], a                                     ; $6bc2: $e0 $dc
	ldh a, [$7c]                                     ; $6bc4: $f0 $7c
	dec a                                            ; $6bc6: $3d
	ld a, d                                          ; $6bc7: $7a
	or [hl]                                          ; $6bc8: $b6
	rst SubAFromDE                                          ; $6bc9: $df
	ldh [$9e], a                                     ; $6bca: $e0 $9e
	pop af                                           ; $6bcc: $f1
	ld a, [$0390]                                    ; $6bcd: $fa $90 $03
	ld a, a                                          ; $6bd0: $7f
	rra                                              ; $6bd1: $1f
	rra                                              ; $6bd2: $1f
	ld e, $38                                        ; $6bd3: $1e $38
	ld a, a                                          ; $6bd5: $7f
	ld a, d                                          ; $6bd6: $7a
	cp e                                             ; $6bd7: $bb
	ccf                                              ; $6bd8: $3f
	ccf                                              ; $6bd9: $3f
	rrca                                             ; $6bda: $0f
	rrca                                             ; $6bdb: $0f
	rra                                              ; $6bdc: $1f
	inc a                                            ; $6bdd: $3c
	sbc $fe                                          ; $6bde: $de $fe
	sbc b                                            ; $6be0: $98
	ld hl, sp-$3d                                    ; $6be1: $f8 $c3
	ld [bc], a                                       ; $6be3: $02
	add b                                            ; $6be4: $80
	ld d, b                                          ; $6be5: $50
	add b                                            ; $6be6: $80
	ld d, h                                          ; $6be7: $54
	ld a, e                                          ; $6be8: $7b
	ld [hl], h                                       ; $6be9: $74
	ld l, [hl]                                       ; $6bea: $6e
	sbc b                                            ; $6beb: $98
	sub e                                            ; $6bec: $93
	rst GetHLinHL                                          ; $6bed: $cf
	and $b0                                          ; $6bee: $e6 $b0
	ld e, c                                          ; $6bf0: $59
	xor h                                            ; $6bf1: $ac
	ld d, $2b                                        ; $6bf2: $16 $2b
	rst $38                                          ; $6bf4: $ff
	ccf                                              ; $6bf5: $3f
	rra                                              ; $6bf6: $1f
	ld c, $07                                        ; $6bf7: $0e $07
	ld a, e                                          ; $6bf9: $7b
	sub a                                            ; $6bfa: $97
	sbc h                                            ; $6bfb: $9c
	ldh a, [$d0]                                     ; $6bfc: $f0 $d0
	adc d                                            ; $6bfe: $8a
	ld a, d                                          ; $6bff: $7a
	xor $7d                                          ; $6c00: $ee $7d
	pop bc                                           ; $6c02: $c1
	sbc l                                            ; $6c03: $9d
	ld sp, hl                                        ; $6c04: $f9
	ldh [$6e], a                                     ; $6c05: $e0 $6e
	xor $7a                                          ; $6c07: $ee $7a
	dec e                                            ; $6c09: $1d
	sbc d                                            ; $6c0a: $9a
	rra                                              ; $6c0b: $1f
	rst JumpTable                                          ; $6c0c: $c7
	rst FarCall                                          ; $6c0d: $f7
	pop af                                           ; $6c0e: $f1
	ld hl, sp+$7b                                    ; $6c0f: $f8 $7b
	db $ed                                           ; $6c11: $ed
	sub e                                            ; $6c12: $93
	sbc a                                            ; $6c13: $9f
	rst GetHLinHL                                          ; $6c14: $cf
	db $e3                                           ; $6c15: $e3
	ld sp, hl                                        ; $6c16: $f9
	db $fc                                           ; $6c17: $fc
	rst $38                                          ; $6c18: $ff
	ld a, [$c7d1]                                    ; $6c19: $fa $d1 $c7
	rst GetHLinHL                                          ; $6c1c: $cf
	di                                               ; $6c1d: $f3
	db $fd                                           ; $6c1e: $fd
	ld a, e                                          ; $6c1f: $7b
	scf                                              ; $6c20: $37
	sbc b                                            ; $6c21: $98
	ldh [hDisp1_LCDC], a                                     ; $6c22: $e0 $8f
	add sp, -$10                                     ; $6c24: $e8 $f0
	ld hl, sp-$02                                    ; $6c26: $f8 $fe
	ld b, a                                          ; $6c28: $47
	ld l, e                                          ; $6c29: $6b
	jp c, $839d                                      ; $6c2a: $da $9d $83

	inc e                                            ; $6c2d: $1c
	ld [hl], e                                       ; $6c2e: $73
	or c                                             ; $6c2f: $b1
	halt                                             ; $6c30: $76
	ld h, l                                          ; $6c31: $65
	halt                                             ; $6c32: $76
	add $9e                                          ; $6c33: $c6 $9e
	di                                               ; $6c35: $f3
	halt                                             ; $6c36: $76
	ld b, h                                          ; $6c37: $44
	ld l, e                                          ; $6c38: $6b
	ldh a, [$7e]                                     ; $6c39: $f0 $7e
	add $9c                                          ; $6c3b: $c6 $9c
	rrca                                             ; $6c3d: $0f
	ld a, h                                          ; $6c3e: $7c
	pop hl                                           ; $6c3f: $e1
	ld sp, hl                                        ; $6c40: $f9
	halt                                             ; $6c41: $76
	ld c, l                                          ; $6c42: $4d
	sbc $fb                                          ; $6c43: $de $fb
	sbc [hl]                                         ; $6c45: $9e
	rst $38                                          ; $6c46: $ff
	sbc $04                                          ; $6c47: $de $04
	db $dd                                           ; $6c49: $dd
	inc c                                            ; $6c4a: $0c
	sbc [hl]                                         ; $6c4b: $9e
	ld [$c046], sp                                   ; $6c4c: $08 $46 $c0
	db $db                                           ; $6c4f: $db
	rrca                                             ; $6c50: $0f
	rst SubAFromDE                                          ; $6c51: $df
	rra                                              ; $6c52: $1f
	reti                                             ; $6c53: $d9


	rst $38                                          ; $6c54: $ff
	sbc l                                            ; $6c55: $9d
	rst JumpTable                                          ; $6c56: $c7
	sbc a                                            ; $6c57: $9f
	ld l, e                                          ; $6c58: $6b
	sbc a                                            ; $6c59: $9f
	jp c, $92ff                                      ; $6c5a: $da $ff $92

	sub e                                            ; $6c5d: $93
	jp $f9f9                                         ; $6c5e: $c3 $f9 $f9


	db $fd                                           ; $6c61: $fd
	push af                                          ; $6c62: $f5
	push af                                          ; $6c63: $f5
	db $fd                                           ; $6c64: $fd
	rst GetHLinHL                                          ; $6c65: $cf
	rst AddAOntoHL                                          ; $6c66: $ef
	rst SubAFromBC                                          ; $6c67: $e7
	rst FarCall                                          ; $6c68: $f7
	di                                               ; $6c69: $f3
	ld [hl], a                                       ; $6c6a: $77
	or a                                             ; $6c6b: $b7
	add b                                            ; $6c6c: $80
	ld e, e                                          ; $6c6d: $5b
	ld l, a                                          ; $6c6e: $6f
	or e                                             ; $6c6f: $b3
	and a                                            ; $6c70: $a7
	pop hl                                           ; $6c71: $e1
	ldh [$f8], a                                     ; $6c72: $e0 $f8

Call_055_6c74:
	ccf                                              ; $6c74: $3f
	cp h                                             ; $6c75: $bc
	sbc b                                            ; $6c76: $98
	call z, $e3ff                                    ; $6c77: $cc $ff $e3
	ldh [$fc], a                                     ; $6c7a: $e0 $fc
	db $ed                                           ; $6c7c: $ed
	ld b, [hl]                                       ; $6c7d: $46
	jp nz, $fa06                                     ; $6c7e: $c2 $06 $fa

	cp $7e                                           ; $6c81: $fe $7e
	ld a, [hl]                                       ; $6c83: $7e
	push bc                                          ; $6c84: $c5
	add d                                            ; $6c85: $82
	ld [bc], a                                       ; $6c86: $02
	ld a, [$fefe]                                    ; $6c87: $fa $fe $fe
	ld a, $3e                                        ; $6c8a: $3e $3e
	ld a, d                                          ; $6c8c: $7a
	ldh a, [$dc]                                     ; $6c8d: $f0 $dc
	add b                                            ; $6c8f: $80
	ld h, a                                          ; $6c90: $67
	ld hl, sp-$79                                    ; $6c91: $f8 $87
	adc b                                            ; $6c93: $88
	adc d                                            ; $6c94: $8a
	sbc d                                            ; $6c95: $9a
	ld d, $0e                                        ; $6c96: $16 $0e
	ld h, $06                                        ; $6c98: $26 $06
	add [hl]                                         ; $6c9a: $86
	add a                                            ; $6c9b: $87
	add l                                            ; $6c9c: $85
	add l                                            ; $6c9d: $85
	adc c                                            ; $6c9e: $89
	sub c                                            ; $6c9f: $91
	add c                                            ; $6ca0: $81
	add c                                            ; $6ca1: $81
	ld bc, $9ff8                                     ; $6ca2: $01 $f8 $9f
	adc [hl]                                         ; $6ca5: $8e
	sbc [hl]                                         ; $6ca6: $9e
	or $db                                           ; $6ca7: $f6 $db
	db $db                                           ; $6ca9: $db
	rst SubAFromDE                                          ; $6caa: $df
	halt                                             ; $6cab: $76
	rlca                                             ; $6cac: $07
	sub e                                            ; $6cad: $93
	rst $38                                          ; $6cae: $ff
	rst SubAFromBC                                          ; $6caf: $e7
	rst SubAFromBC                                          ; $6cb0: $e7
	rst AddAOntoHL                                          ; $6cb1: $ef
	ld l, a                                          ; $6cb2: $6f
	rst $38                                          ; $6cb3: $ff
	ld e, $1f                                        ; $6cb4: $1e $1f
	ld l, $19                                        ; $6cb6: $2e $19
	rra                                              ; $6cb8: $1f
	sbc a                                            ; $6cb9: $9f
	ld a, e                                          ; $6cba: $7b
	ld a, a                                          ; $6cbb: $7f
	sbc l                                            ; $6cbc: $9d
	cp $dc                                           ; $6cbd: $fe $dc
	sbc $e0                                          ; $6cbf: $de $e0
	sbc e                                            ; $6cc1: $9b
	ld a, [hl-]                                      ; $6cc2: $3a
	cpl                                              ; $6cc3: $2f
	daa                                              ; $6cc4: $27
	daa                                              ; $6cc5: $27
	halt                                             ; $6cc6: $76
	add b                                            ; $6cc7: $80
	rst SubAFromDE                                          ; $6cc8: $df
	cp $79                                           ; $6cc9: $fe $79
	sub l                                            ; $6ccb: $95
	sbc $f3                                          ; $6ccc: $de $f3
	sub a                                            ; $6cce: $97
	and b                                            ; $6ccf: $a0
	ld d, l                                          ; $6cd0: $55
	xor b                                            ; $6cd1: $a8
	push de                                          ; $6cd2: $d5
	ld [$faf5], a                                    ; $6cd3: $ea $f5 $fa
	db $fd                                           ; $6cd6: $fd
	db $fc                                           ; $6cd7: $fc
	ld a, d                                          ; $6cd8: $7a
	ld c, h                                          ; $6cd9: $4c
	sub a                                            ; $6cda: $97
	dec b                                            ; $6cdb: $05
	ld a, [bc]                                       ; $6cdc: $0a
	ld bc, $0042                                     ; $6cdd: $01 $42 $00
	ld d, b                                          ; $6ce0: $50
	add b                                            ; $6ce1: $80
	ld d, b                                          ; $6ce2: $50
	ld sp, hl                                        ; $6ce3: $f9
	sub h                                            ; $6ce4: $94
	sbc a                                            ; $6ce5: $9f
	adc $60                                          ; $6ce6: $ce $60
	cp c                                             ; $6ce8: $b9
	ld e, h                                          ; $6ce9: $5c
	xor [hl]                                         ; $6cea: $ae
	ld d, a                                          ; $6ceb: $57
	xor e                                            ; $6cec: $ab
	ld a, a                                          ; $6ced: $7f
	ccf                                              ; $6cee: $3f
	inc e                                            ; $6cef: $1c
	halt                                             ; $6cf0: $76
	or c                                             ; $6cf1: $b1
	sbc h                                            ; $6cf2: $9c
	nop                                              ; $6cf3: $00
	ret nc                                           ; $6cf4: $d0

	adc e                                            ; $6cf5: $8b
	ld [hl], d                                       ; $6cf6: $72
	or c                                             ; $6cf7: $b1
	sbc l                                            ; $6cf8: $9d
	sbc a                                            ; $6cf9: $9f
	ldh [c], a                                       ; $6cfa: $e2
	ld l, [hl]                                       ; $6cfb: $6e
	or c                                             ; $6cfc: $b1
	rst SubAFromDE                                          ; $6cfd: $df
	ld a, a                                          ; $6cfe: $7f

Jump_055_6cff:
	sbc e                                            ; $6cff: $9b
	sbc a                                            ; $6d00: $9f
	adc a                                            ; $6d01: $8f
	db $e3                                           ; $6d02: $e3
	di                                               ; $6d03: $f3
	ld a, b                                          ; $6d04: $78
	push hl                                          ; $6d05: $e5
	ld a, [hl]                                       ; $6d06: $7e
	xor d                                            ; $6d07: $aa
	sbc h                                            ; $6d08: $9c
	rst GetHLinHL                                          ; $6d09: $cf
	rst SubAFromBC                                          ; $6d0a: $e7
	pop af                                           ; $6d0b: $f1
	ld a, c                                          ; $6d0c: $79
	db $10                                           ; $6d0d: $10
	sub e                                            ; $6d0e: $93
	ccf                                              ; $6d0f: $3f
	rst SubAFromDE                                          ; $6d10: $df
	rst GetHLinHL                                          ; $6d11: $cf
	di                                               ; $6d12: $f3
	ld sp, hl                                        ; $6d13: $f9
	db $fc                                           ; $6d14: $fc
	ld a, a                                          ; $6d15: $7f
	ccf                                              ; $6d16: $3f
	nop                                              ; $6d17: $00
	add b                                            ; $6d18: $80
	ldh [$f0], a                                     ; $6d19: $e0 $f0
	ld a, e                                          ; $6d1b: $7b
	ldh a, [c]                                       ; $6d1c: $f2
	sbc [hl]                                         ; $6d1d: $9e
	rra                                              ; $6d1e: $1f
	ld a, d                                          ; $6d1f: $7a
	sbc [hl]                                         ; $6d20: $9e
	ld a, e                                          ; $6d21: $7b
	jp c, $bf9d                                      ; $6d22: $da $9d $bf

	sbc a                                            ; $6d25: $9f
	ld a, [$c096]                                    ; $6d26: $fa $96 $c0
	rst GetHLinHL                                          ; $6d29: $cf
	ld h, a                                          ; $6d2a: $67
	add hl, sp                                       ; $6d2b: $39
	adc h                                            ; $6d2c: $8c
	rst SubAFromBC                                          ; $6d2d: $e7
	pop af                                           ; $6d2e: $f1
	db $fc                                           ; $6d2f: $fc
	cp $5a                                           ; $6d30: $fe $5a
	ret nz                                           ; $6d32: $c0

	sbc d                                            ; $6d33: $9a
	rst AddAOntoHL                                          ; $6d34: $ef
	rst FarCall                                          ; $6d35: $f7
	rst FarCall                                          ; $6d36: $f7
	rst $38                                          ; $6d37: $ff
	rst $38                                          ; $6d38: $ff
	sbc $08                                          ; $6d39: $de $08
	sbc $18                                          ; $6d3b: $de $18
	rst SubAFromDE                                          ; $6d3d: $df
	db $10                                           ; $6d3e: $10
	db $db                                           ; $6d3f: $db
	cp $df                                           ; $6d40: $fe $df
	db $fc                                           ; $6d42: $fc
	db $db                                           ; $6d43: $db
	ld bc, $03df                                     ; $6d44: $01 $df $03
	rst SubAFromDE                                          ; $6d47: $df
	rra                                              ; $6d48: $1f
	ld l, l                                          ; $6d49: $6d
	adc b                                            ; $6d4a: $88
	reti                                             ; $6d4b: $d9


	rst $38                                          ; $6d4c: $ff
	sub a                                            ; $6d4d: $97
	dec bc                                           ; $6d4e: $0b
	ld [$c284], sp                                   ; $6d4f: $08 $84 $c2
	jp $bccf                                         ; $6d52: $c3 $cf $bc


	rlca                                             ; $6d55: $07
	ld a, d                                          ; $6d56: $7a
	dec a                                            ; $6d57: $3d
	rst SubAFromDE                                          ; $6d58: $df
	db $fc                                           ; $6d59: $fc
	add h                                            ; $6d5a: $84
	ldh a, [$c3]                                     ; $6d5b: $f0 $c3
	ld sp, hl                                        ; $6d5d: $f9
	db $fd                                           ; $6d5e: $fd
	db $fd                                           ; $6d5f: $fd
	ld e, l                                          ; $6d60: $5d
	dec e                                            ; $6d61: $1d
	dec b                                            ; $6d62: $05
	push bc                                          ; $6d63: $c5
	rst SubAFromDE                                          ; $6d64: $df
	sbc a                                            ; $6d65: $9f
	ei                                               ; $6d66: $fb
	ei                                               ; $6d67: $fb
	dec sp                                           ; $6d68: $3b
	inc bc                                           ; $6d69: $03
	inc bc                                           ; $6d6a: $03
	dec sp                                           ; $6d6b: $3b
	ccf                                              ; $6d6c: $3f
	rst $38                                          ; $6d6d: $ff
	rst SubAFromBC                                          ; $6d6e: $e7
	pop hl                                           ; $6d6f: $e1
	pop af                                           ; $6d70: $f1
	ld [hl], c                                       ; $6d71: $71
	ld a, b                                          ; $6d72: $78
	ccf                                              ; $6d73: $3f
	ld a, a                                          ; $6d74: $7f
	ld d, e                                          ; $6d75: $53
	db $db                                           ; $6d76: $db
	rst $38                                          ; $6d77: $ff
	rst SubAFromDE                                          ; $6d78: $df
	cp a                                             ; $6d79: $bf
	sbc [hl]                                         ; $6d7a: $9e
	cp $de                                           ; $6d7b: $fe $de
	ld a, [$e2df]                                    ; $6d7d: $fa $df $e2
	sbc d                                            ; $6d80: $9a
	ld [$feee], a                                    ; $6d81: $ea $ee $fe
	cp $fa                                           ; $6d84: $fe $fa
	call c, $dff2                                    ; $6d86: $dc $f2 $df
	add e                                            ; $6d89: $83
	sbc [hl]                                         ; $6d8a: $9e
	add c                                            ; $6d8b: $81
	ld [hl], l                                       ; $6d8c: $75
	xor [hl]                                         ; $6d8d: $ae
	ld a, h                                          ; $6d8e: $7c
	ld h, b                                          ; $6d8f: $60
	jp c, $de80                                      ; $6d90: $da $80 $de

	add d                                            ; $6d93: $82
	ld a, e                                          ; $6d94: $7b
	sbc c                                            ; $6d95: $99
	sbc l                                            ; $6d96: $9d
	add e                                            ; $6d97: $83
	push bc                                          ; $6d98: $c5
	sbc $01                                          ; $6d99: $de $01
	db $dd                                           ; $6d9b: $dd
	add c                                            ; $6d9c: $81
	sbc d                                            ; $6d9d: $9a
	add e                                            ; $6d9e: $83
	pop af                                           ; $6d9f: $f1
	pop bc                                           ; $6da0: $c1
	pop bc                                           ; $6da1: $c1
	ld b, c                                          ; $6da2: $41
	ld [hl], a                                       ; $6da3: $77
	db $fd                                           ; $6da4: $fd
	ld l, a                                          ; $6da5: $6f
	inc hl                                           ; $6da6: $23
	ld a, a                                          ; $6da7: $7f
	cp a                                             ; $6da8: $bf
	ld a, l                                          ; $6da9: $7d
	ld a, [hl+]                                      ; $6daa: $2a
	ld a, [hl]                                       ; $6dab: $7e
	ld h, [hl]                                       ; $6dac: $66
	sbc e                                            ; $6dad: $9b
	ld h, e                                          ; $6dae: $63
	jr c, @+$40                                      ; $6daf: $38 $3e

	sub a                                            ; $6db1: $97
	db $dd                                           ; $6db2: $dd
	ldh a, [rPCM34]                                  ; $6db3: $f0 $77
	dec [hl]                                         ; $6db5: $35
	sbc e                                            ; $6db6: $9b
	sub d                                            ; $6db7: $92
	sub $d7                                          ; $6db8: $d6 $d7
	rst SubAFromHL                                          ; $6dba: $d7
	ld a, e                                          ; $6dbb: $7b
	and $9a                                          ; $6dbc: $e6 $9a
	adc a                                            ; $6dbe: $8f
	ld h, c                                          ; $6dbf: $61
	ld hl, $2020                                     ; $6dc0: $21 $20 $20
	ld a, d                                          ; $6dc3: $7a
	rst GetHLinHL                                          ; $6dc4: $cf
	sbc e                                            ; $6dc5: $9b
	ldh a, [$7e]                                     ; $6dc6: $f0 $7e
	ld a, a                                          ; $6dc8: $7f
	ld a, $de                                        ; $6dc9: $3e $de
	cpl                                              ; $6dcb: $2f
	rst SubAFromDE                                          ; $6dcc: $df
	ld l, a                                          ; $6dcd: $6f
	rst SubAFromDE                                          ; $6dce: $df
	ldh a, [$db]                                     ; $6dcf: $f0 $db
	ld hl, sp-$66                                    ; $6dd1: $f8 $9a
	and b                                            ; $6dd3: $a0
	ld d, h                                          ; $6dd4: $54
	xor b                                            ; $6dd5: $a8
	ld d, l                                          ; $6dd6: $55
	xor d                                            ; $6dd7: $aa
	ld a, d                                          ; $6dd8: $7a
	xor [hl]                                         ; $6dd9: $ae
	ld sp, hl                                        ; $6dda: $f9
	sbc l                                            ; $6ddb: $9d
	dec d                                            ; $6ddc: $15
	ld a, [hl+]                                      ; $6ddd: $2a
	halt                                             ; $6dde: $76
	xor [hl]                                         ; $6ddf: $ae
	ld e, [hl]                                       ; $6de0: $5e
	or b                                             ; $6de1: $b0
	ld a, [hl]                                       ; $6de2: $7e
	jp c, Jump_055_729d                              ; $6de3: $da $9d $72

	cp b                                             ; $6de6: $b8
	halt                                             ; $6de7: $76
	or b                                             ; $6de8: $b0
	ld a, [hl]                                       ; $6de9: $7e
	and $9e                                          ; $6dea: $e6 $9e
	rrca                                             ; $6dec: $0f
	ld [hl], b                                       ; $6ded: $70
	ld hl, sp+$7d                                    ; $6dee: $f8 $7d
	add c                                            ; $6df0: $81
	ld a, d                                          ; $6df1: $7a
	xor a                                            ; $6df2: $af
	ld a, d                                          ; $6df3: $7a
	or b                                             ; $6df4: $b0
	ld a, l                                          ; $6df5: $7d
	add c                                            ; $6df6: $81
	ld [hl], d                                       ; $6df7: $72
	xor a                                            ; $6df8: $af
	ld a, a                                          ; $6df9: $7f
	and a                                            ; $6dfa: $a7
	sbc e                                            ; $6dfb: $9b
	daa                                              ; $6dfc: $27
	pop af                                           ; $6dfd: $f1
	ld sp, hl                                        ; $6dfe: $f9
	ld a, [$ffde]                                    ; $6dff: $fa $de $ff
	sbc h                                            ; $6e02: $9c

jr_055_6e03:
	rrca                                             ; $6e03: $0f
	rst JumpTable                                          ; $6e04: $c7
	db $e3                                           ; $6e05: $e3
	ld a, d                                          ; $6e06: $7a
	ret nz                                           ; $6e07: $c0

	ld a, c                                          ; $6e08: $79
	ret nc                                           ; $6e09: $d0

	sbc l                                            ; $6e0a: $9d
	ei                                               ; $6e0b: $fb
	ld sp, hl                                        ; $6e0c: $f9
	ld a, d                                          ; $6e0d: $7a
	cp d                                             ; $6e0e: $ba

jr_055_6e0f:
	sbc l                                            ; $6e0f: $9d
	sbc a                                            ; $6e10: $9f
	rst JumpTable                                          ; $6e11: $c7
	halt                                             ; $6e12: $76
	or d                                             ; $6e13: $b2
	ld a, a                                          ; $6e14: $7f
	reti                                             ; $6e15: $d9


	sbc l                                            ; $6e16: $9d
	rrca                                             ; $6e17: $0f
	add a                                            ; $6e18: $87
	ld [hl], a                                       ; $6e19: $77
	call c, $3f9b                                    ; $6e1a: $dc $9b $3f
	rst GetHLinHL                                          ; $6e1d: $cf
	rst FarCall                                          ; $6e1e: $f7
	di                                               ; $6e1f: $f3
	ld l, d                                          ; $6e20: $6a
	ld d, c                                          ; $6e21: $51
	ld a, l                                          ; $6e22: $7d
	jr c, jr_055_6e03                                ; $6e23: $38 $de

	rst SubAFromDE                                          ; $6e25: $df
	rst SubAFromDE                                          ; $6e26: $df
	rst AddAOntoHL                                          ; $6e27: $ef
	rst SubAFromDE                                          ; $6e28: $df
	rst $38                                          ; $6e29: $ff
	sbc [hl]                                         ; $6e2a: $9e
	db $10                                           ; $6e2b: $10
	call c, $df30                                    ; $6e2c: $dc $30 $df
	jr nz, jr_055_6e0f                               ; $6e2f: $20 $de

	db $fc                                           ; $6e31: $fc
	rst SubAFromDE                                          ; $6e32: $df
	ld hl, sp-$64                                    ; $6e33: $f8 $9c
	ld sp, hl                                        ; $6e35: $f9
	pop af                                           ; $6e36: $f1
	pop af                                           ; $6e37: $f1
	sbc $03                                          ; $6e38: $de $03
	sbc $07                                          ; $6e3a: $de $07
	rst SubAFromDE                                          ; $6e3c: $df
	rrca                                             ; $6e3d: $0f
	sbc h                                            ; $6e3e: $9c
	ld hl, sp-$10                                    ; $6e3f: $f8 $f0
	di                                               ; $6e41: $f3
	ld a, d                                          ; $6e42: $7a
	ld b, $7e                                        ; $6e43: $06 $7e
	jp hl                                            ; $6e45: $e9


	db $db                                           ; $6e46: $db
	rst $38                                          ; $6e47: $ff
	ld a, a                                          ; $6e48: $7f
	db $e4                                           ; $6e49: $e4
	sub d                                            ; $6e4a: $92
	jp c, $c29d                                      ; $6e4b: $da $9d $c2

	jp nc, $9ebe                                     ; $6e4e: $d2 $be $9e

	xor a                                            ; $6e51: $af
	sub a                                            ; $6e52: $97
	dec a                                            ; $6e53: $3d
	ld c, $e7                                        ; $6e54: $0e $e7
	pop hl                                           ; $6e56: $e1
	pop bc                                           ; $6e57: $c1
	ld a, e                                          ; $6e58: $7b
	ld a, e                                          ; $6e59: $7b
	sub a                                            ; $6e5a: $97
	rst GetHLinHL                                          ; $6e5b: $cf
	xor $66                                          ; $6e5c: $ee $66
	ld [hl], a                                       ; $6e5e: $77
	scf                                              ; $6e5f: $37
	ld [hl], $3f                                     ; $6e60: $36 $3f
	sbc a                                            ; $6e62: $9f
	sbc $ff                                          ; $6e63: $de $ff
	ld a, c                                          ; $6e65: $79
	db $ed                                           ; $6e66: $ed
	rst SubAFromDE                                          ; $6e67: $df
	rst $38                                          ; $6e68: $ff
	add d                                            ; $6e69: $82
	ld d, h                                          ; $6e6a: $54
	ld a, [$f3fd]                                    ; $6e6b: $fa $fd $f3
	db $fc                                           ; $6e6e: $fc
	db $eb                                           ; $6e6f: $eb
	ld a, h                                          ; $6e70: $7c
	sub a                                            ; $6e71: $97
	cp b                                             ; $6e72: $b8
	inc e                                            ; $6e73: $1c
	ld d, $11                                        ; $6e74: $16 $11
	db $10                                           ; $6e76: $10
	inc e                                            ; $6e77: $1c
	adc a                                            ; $6e78: $8f
	rst AddAOntoHL                                          ; $6e79: $ef
	ld a, [hl]                                       ; $6e7a: $7e
	ld d, $c4                                        ; $6e7b: $16 $c4
	dec b                                            ; $6e7d: $05
	adc c                                            ; $6e7e: $89
	adc e                                            ; $6e7f: $8b
	sub e                                            ; $6e80: $93
	sbc a                                            ; $6e81: $9f
	cp $0e                                           ; $6e82: $fe $0e
	ld a, $fd                                        ; $6e84: $3e $fd
	db $fd                                           ; $6e86: $fd
	ld a, c                                          ; $6e87: $79
	ld h, c                                          ; $6e88: $61
	adc d                                            ; $6e89: $8a
	ret nz                                           ; $6e8a: $c0

	call nz, $be80                                   ; $6e8b: $c4 $80 $be
	ld a, [hl]                                       ; $6e8e: $7e
	cp $f8                                           ; $6e8f: $fe $f8
	pop hl                                           ; $6e91: $e1
	add b                                            ; $6e92: $80
	add e                                            ; $6e93: $83
	rst $38                                          ; $6e94: $ff
	pop bc                                           ; $6e95: $c1
	add c                                            ; $6e96: $81
	ld bc, $1f07                                     ; $6e97: $01 $07 $1f
	add e                                            ; $6e9a: $83
	rlca                                             ; $6e9b: $07
	rrca                                             ; $6e9c: $0f
	rra                                              ; $6e9d: $1f
	ccf                                              ; $6e9e: $3f
	ld a, d                                          ; $6e9f: $7a
	ld h, d                                          ; $6ea0: $62
	adc e                                            ; $6ea1: $8b
	cp $fd                                           ; $6ea2: $fe $fd
	ld a, [$e8f5]                                    ; $6ea4: $fa $f5 $e8
	ret nc                                           ; $6ea7: $d0

jr_055_6ea8:
	and e                                            ; $6ea8: $a3
	ld a, a                                          ; $6ea9: $7f
	jp $cfb7                                         ; $6eaa: $c3 $b7 $cf


	dec de                                           ; $6ead: $1b
	ld [hl], l                                       ; $6eae: $75
	ld a, [hl-]                                      ; $6eaf: $3a
	db $fd                                           ; $6eb0: $fd
	rst $38                                          ; $6eb1: $ff

jr_055_6eb2:
	cp a                                             ; $6eb2: $bf
	ld a, a                                          ; $6eb3: $7f
	rst AddAOntoHL                                          ; $6eb4: $ef
	adc l                                            ; $6eb5: $8d
	ld a, e                                          ; $6eb6: $7b
	or b                                             ; $6eb7: $b0
	sub [hl]                                         ; $6eb8: $96
	cp [hl]                                          ; $6eb9: $be
	sub e                                            ; $6eba: $93
	sbc c                                            ; $6ebb: $99
	adc e                                            ; $6ebc: $8b
	adc l                                            ; $6ebd: $8d
	adc $e3                                          ; $6ebe: $ce $e3
	ld [hl], c                                       ; $6ec0: $71
	cp a                                             ; $6ec1: $bf
	ld a, e                                          ; $6ec2: $7b
	add h                                            ; $6ec3: $84
	ld a, a                                          ; $6ec4: $7f
	pop af                                           ; $6ec5: $f1
	ld a, l                                          ; $6ec6: $7d
	ld hl, sp-$72                                    ; $6ec7: $f8 $8e
	rst SubAFromDE                                          ; $6ec9: $df
	di                                               ; $6eca: $f3
	db $fd                                           ; $6ecb: $fd
	ld a, a                                          ; $6ecc: $7f
	cp e                                             ; $6ecd: $bb
	rst SubAFromHL                                          ; $6ece: $d7
	cpl                                              ; $6ecf: $2f
	adc a                                            ; $6ed0: $8f
	jp nz, $fefc                                     ; $6ed1: $c2 $fc $fe

	db $fc                                           ; $6ed4: $fc
	ld a, h                                          ; $6ed5: $7c
	jr c, jr_055_6ea8                                ; $6ed6: $38 $d0

	ldh a, [$fd]                                     ; $6ed8: $f0 $fd
	db $dd                                           ; $6eda: $dd
	ld a, a                                          ; $6edb: $7f
	sbc d                                            ; $6edc: $9a
	scf                                              ; $6edd: $37
	ld h, e                                          ; $6ede: $63
	pop bc                                           ; $6edf: $c1
	adc h                                            ; $6ee0: $8c
	ld hl, sp-$22                                    ; $6ee1: $f8 $de
	ldh a, [$7e]                                     ; $6ee3: $f0 $7e
	ld l, $9b                                        ; $6ee5: $2e $9b
	adc $9f                                          ; $6ee7: $ce $9f
	ld a, [$77fd]                                    ; $6ee9: $fa $fd $77
	ld a, d                                          ; $6eec: $7a
	sbc l                                            ; $6eed: $9d
	cp $f0                                           ; $6eee: $fe $f0
	ei                                               ; $6ef0: $fb
	sbc l                                            ; $6ef1: $9d
	ld bc, $7a0f                                     ; $6ef2: $01 $0f $7a
	or b                                             ; $6ef5: $b0
	sbc e                                            ; $6ef6: $9b
	ld d, h                                          ; $6ef7: $54
	and b                                            ; $6ef8: $a0
	rst JumpTable                                          ; $6ef9: $c7
	rra                                              ; $6efa: $1f
	ld [hl], h                                       ; $6efb: $74
	or b                                             ; $6efc: $b0
	ld a, a                                          ; $6efd: $7f
	di                                               ; $6efe: $f3
	ld a, d                                          ; $6eff: $7a
	sbc $9c                                          ; $6f00: $de $9c
	inc d                                            ; $6f02: $14
	jr nz, @-$77                                     ; $6f03: $20 $87

	ld [hl], c                                       ; $6f05: $71
	add a                                            ; $6f06: $87
	ld a, a                                          ; $6f07: $7f
	di                                               ; $6f08: $f3
	ld l, l                                          ; $6f09: $6d
	db $ed                                           ; $6f0a: $ed
	ld [hl], e                                       ; $6f0b: $73
	di                                               ; $6f0c: $f3
	ld a, [hl]                                       ; $6f0d: $7e
	inc h                                            ; $6f0e: $24
	sbc [hl]                                         ; $6f0f: $9e
	ret nc                                           ; $6f10: $d0

	ld l, e                                          ; $6f11: $6b
	jr nz, jr_055_6eb2                               ; $6f12: $20 $9e

	ldh [$7b], a                                     ; $6f14: $e0 $7b
	di                                               ; $6f16: $f3
	sbc e                                            ; $6f17: $9b
	db $f4                                           ; $6f18: $f4
	pop bc                                           ; $6f19: $c1
	add l                                            ; $6f1a: $85
	cpl                                              ; $6f1b: $2f
	ld [hl], a                                       ; $6f1c: $77
	db $e3                                           ; $6f1d: $e3
	sub [hl]                                         ; $6f1e: $96
	ld hl, sp-$20                                    ; $6f1f: $f8 $e0
	inc bc                                           ; $6f21: $03
	rra                                              ; $6f22: $1f
	rst $38                                          ; $6f23: $ff
	pop bc                                           ; $6f24: $c1
	sub c                                            ; $6f25: $91
	adc b                                            ; $6f26: $88
	ld e, $77                                        ; $6f27: $1e $77
	di                                               ; $6f29: $f3
	sbc e                                            ; $6f2a: $9b
	db $e3                                           ; $6f2b: $e3
	ret nz                                           ; $6f2c: $c0

	inc b                                            ; $6f2d: $04
	ld a, $dd                                        ; $6f2e: $3e $dd
	rst $38                                          ; $6f30: $ff
	ld a, a                                          ; $6f31: $7f
	and c                                            ; $6f32: $a1
	ld a, d                                          ; $6f33: $7a
	cp d                                             ; $6f34: $ba
	ld a, l                                          ; $6f35: $7d
	ld c, l                                          ; $6f36: $4d
	ld a, c                                          ; $6f37: $79
	ld d, [hl]                                       ; $6f38: $56
	ld a, d                                          ; $6f39: $7a
	adc e                                            ; $6f3a: $8b
	ld a, [hl]                                       ; $6f3b: $7e
	sbc h                                            ; $6f3c: $9c
	sbc [hl]                                         ; $6f3d: $9e
	pop af                                           ; $6f3e: $f1
	sbc $ff                                          ; $6f3f: $de $ff
	sbc d                                            ; $6f41: $9a
	cp b                                             ; $6f42: $b8
	and c                                            ; $6f43: $a1
	jp $4f4f                                         ; $6f44: $c3 $4f $4f


	sbc $20                                          ; $6f47: $de $20
	sbc d                                            ; $6f49: $9a
	ld h, a                                          ; $6f4a: $67
	ld a, [hl]                                       ; $6f4b: $7e
	ld a, h                                          ; $6f4c: $7c
	ldh a, [$f0]                                     ; $6f4d: $f0 $f0
	call c, $dfe3                                    ; $6f4f: $dc $e3 $df
	rst SubAFromBC                                          ; $6f52: $e7
	ld a, a                                          ; $6f53: $7f
	adc [hl]                                         ; $6f54: $8e
	db $db                                           ; $6f55: $db
	rra                                              ; $6f56: $1f
	sub a                                            ; $6f57: $97
	ccf                                              ; $6f58: $3f
	ret nz                                           ; $6f59: $c0

	add a                                            ; $6f5a: $87
	sbc [hl]                                         ; $6f5b: $9e
	ld a, b                                          ; $6f5c: $78
	pop af                                           ; $6f5d: $f1
	db $ed                                           ; $6f5e: $ed
	db $fd                                           ; $6f5f: $fd
	halt                                             ; $6f60: $76
	dec b                                            ; $6f61: $05
	ld a, d                                          ; $6f62: $7a
	rst SubAFromDE                                          ; $6f63: $df
	ld a, a                                          ; $6f64: $7f
	ld h, h                                          ; $6f65: $64
	sub e                                            ; $6f66: $93
	inc hl                                           ; $6f67: $23
	ld hl, sp-$09                                    ; $6f68: $f8 $f7
	db $fd                                           ; $6f6a: $fd
	sbc a                                            ; $6f6b: $9f
	cp a                                             ; $6f6c: $bf
	sbc a                                            ; $6f6d: $9f
	rst SubAFromDE                                          ; $6f6e: $df
	rst JumpTable                                          ; $6f6f: $c7
	rst $38                                          ; $6f70: $ff
	rrca                                             ; $6f71: $0f
	inc bc                                           ; $6f72: $03
	sbc $7f                                          ; $6f73: $de $7f
	ld a, l                                          ; $6f75: $7d
	ld de, $ffde                                     ; $6f76: $11 $de $ff
	sbc e                                            ; $6f79: $9b
	ld a, [hl]                                       ; $6f7a: $7e
	cp [hl]                                          ; $6f7b: $be
	rst SubAFromDE                                          ; $6f7c: $df
	ld l, a                                          ; $6f7d: $6f
	call c, Call_055_7bff                            ; $6f7e: $dc $ff $7b
	xor l                                            ; $6f81: $ad
	ld a, h                                          ; $6f82: $7c
	di                                               ; $6f83: $f3
	ld a, a                                          ; $6f84: $7f
	daa                                              ; $6f85: $27
	sbc e                                            ; $6f86: $9b
	ld a, b                                          ; $6f87: $78
	ld sp, $e61b                                     ; $6f88: $31 $1b $e6
	ld [hl], a                                       ; $6f8b: $77
	pop de                                           ; $6f8c: $d1
	ld a, [hl]                                       ; $6f8d: $7e
	sub d                                            ; $6f8e: $92
	rst SubAFromDE                                          ; $6f8f: $df
	ldh a, [hDisp0_SCY]                                     ; $6f90: $f0 $83
	push af                                          ; $6f92: $f5
	jp Jump_055_5f17                                 ; $6f93: $c3 $17 $5f


	add sp, -$7e                                     ; $6f96: $e8 $82
	rrca                                             ; $6f98: $0f
	ld l, $f9                                        ; $6f99: $2e $f9
	add c                                            ; $6f9b: $81
	rrca                                             ; $6f9c: $0f
	ccf                                              ; $6f9d: $3f
	ld [hl], b                                       ; $6f9e: $70
	add c                                            ; $6f9f: $81
	rra                                              ; $6fa0: $1f
	ld [hl], c                                       ; $6fa1: $71
	ld [hl], c                                       ; $6fa2: $71
	db $fd                                           ; $6fa3: $fd
	sbc a                                            ; $6fa4: $9f

Jump_055_6fa5:
	db $e3                                           ; $6fa5: $e3
	ld e, h                                          ; $6fa6: $5c
	rst SubAFromBC                                          ; $6fa7: $e7
	sbc a                                            ; $6fa8: $9f
	rst $38                                          ; $6fa9: $ff
	adc a                                            ; $6faa: $8f
	inc bc                                           ; $6fab: $03
	ld a, a                                          ; $6fac: $7f
	rst $38                                          ; $6fad: $ff
	ld a, e                                          ; $6fae: $7b
	ld l, b                                          ; $6faf: $68
	halt                                             ; $6fb0: $76
	adc b                                            ; $6fb1: $88
	ld a, d                                          ; $6fb2: $7a
	ld b, e                                          ; $6fb3: $43
	ld a, h                                          ; $6fb4: $7c
	ld d, d                                          ; $6fb5: $52
	ld [hl], e                                       ; $6fb6: $73
	ld [hl-], a                                      ; $6fb7: $32
	ld a, e                                          ; $6fb8: $7b
	ld [hl], d                                       ; $6fb9: $72
	adc l                                            ; $6fba: $8d
	ld e, a                                          ; $6fbb: $5f
	ld l, a                                          ; $6fbc: $6f
	ld [hl], a                                       ; $6fbd: $77
	dec sp                                           ; $6fbe: $3b
	ld a, l                                          ; $6fbf: $7d
	cp l                                             ; $6fc0: $bd
	db $ec                                           ; $6fc1: $ec
	sbc h                                            ; $6fc2: $9c
	sbc a                                            ; $6fc3: $9f
	xor a                                            ; $6fc4: $af
	rst SubAFromHL                                          ; $6fc5: $d7
	db $eb                                           ; $6fc6: $eb
	sub l                                            ; $6fc7: $95
	add sp, -$07                                     ; $6fc8: $e8 $f9
	push af                                          ; $6fca: $f5
	rst SubAFromDE                                          ; $6fcb: $df
	rst SubAFromBC                                          ; $6fcc: $e7
	ld a, d                                          ; $6fcd: $7a
	jp hl                                            ; $6fce: $e9


	ld a, d                                          ; $6fcf: $7a
	db $ed                                           ; $6fd0: $ed
	sbc c                                            ; $6fd1: $99
	ld l, a                                          ; $6fd2: $6f
	or a                                             ; $6fd3: $b7
	jp c, $f6ec                                      ; $6fd4: $da $ec $f6

	ei                                               ; $6fd7: $fb
	halt                                             ; $6fd8: $76
	db $e3                                           ; $6fd9: $e3
	ld l, h                                          ; $6fda: $6c
	add b                                            ; $6fdb: $80
	ld a, e                                          ; $6fdc: $7b
	ld b, $7b                                        ; $6fdd: $06 $7b
	cp a                                             ; $6fdf: $bf
	ld a, [hl]                                       ; $6fe0: $7e
	or b                                             ; $6fe1: $b0
	sbc [hl]                                         ; $6fe2: $9e
	ld a, [hl]                                       ; $6fe3: $7e
	jp nc, Jump_055_6cff                             ; $6fe4: $d2 $ff $6c

	ld l, c                                          ; $6fe7: $69
	ld a, a                                          ; $6fe8: $7f
	add hl, de                                       ; $6fe9: $19
	jp c, $76ff                                      ; $6fea: $da $ff $76

	or e                                             ; $6fed: $b3
	ld a, a                                          ; $6fee: $7f
	ei                                               ; $6fef: $fb
	sbc h                                            ; $6ff0: $9c
	add sp, $42                                      ; $6ff1: $e8 $42
	rla                                              ; $6ff3: $17
	ld [hl], d                                       ; $6ff4: $72
	ldh [c], a                                       ; $6ff5: $e2
	sub a                                            ; $6ff6: $97
	ldh a, [hLCDCIntHandlerIdx]                                     ; $6ff7: $f0 $81
	rrca                                             ; $6ff9: $0f
	rst $38                                          ; $6ffa: $ff
	ld a, [$c5e0]                                    ; $6ffb: $fa $e0 $c5
	rla                                              ; $6ffe: $17
	ld a, d                                          ; $6fff: $7a
	ld [hl], d                                       ; $7000: $72
	ld a, e                                          ; $7001: $7b
	di                                               ; $7002: $f3
	sbc [hl]                                         ; $7003: $9e
	add e                                            ; $7004: $83
	halt                                             ; $7005: $76
	cp l                                             ; $7006: $bd
	sbc [hl]                                         ; $7007: $9e
	ld b, a                                          ; $7008: $47
	ld [hl], e                                       ; $7009: $73
	di                                               ; $700a: $f3
	rst SubAFromDE                                          ; $700b: $df
	rst $38                                          ; $700c: $ff
	ld [hl], e                                       ; $700d: $73
	di                                               ; $700e: $f3
	inc bc                                           ; $700f: $03
	rst $38                                          ; $7010: $ff
	ld a, d                                          ; $7011: $7a
	xor e                                            ; $7012: $ab
	ld [hl], e                                       ; $7013: $73
	xor [hl]                                         ; $7014: $ae
	ld [hl], d                                       ; $7015: $72
	ld [hl-], a                                      ; $7016: $32
	call c, Call_055_4cff                            ; $7017: $dc $ff $4c
	nop                                              ; $701a: $00
	rst SubAFromDE                                          ; $701b: $df
	ld h, [hl]                                       ; $701c: $66
	sbc [hl]                                         ; $701d: $9e
	ld h, a                                          ; $701e: $67
	sbc $22                                          ; $701f: $de $22
	db $dd                                           ; $7021: $dd
	ld b, h                                          ; $7022: $44
	ld [hl], a                                       ; $7023: $77
	or $9d                                           ; $7024: $f6 $9d
	inc hl                                           ; $7026: $23
	ld [hl-], a                                      ; $7027: $32
	ld h, e                                          ; $7028: $63
	or $9e                                           ; $7029: $f6 $9e
	inc sp                                           ; $702b: $33
	ld l, e                                          ; $702c: $6b
	or $7f                                           ; $702d: $f6 $7f
	rst FarCall                                          ; $702f: $f7
	sbc [hl]                                         ; $7030: $9e
	inc [hl]                                         ; $7031: $34
	ld c, e                                          ; $7032: $4b
	or $9c                                           ; $7033: $f6 $9c
	ld h, h                                          ; $7035: $64
	ld b, h                                          ; $7036: $44

jr_055_7037:
	ld b, e                                          ; $7037: $43
	ld a, e                                          ; $7038: $7b
	or $9c                                           ; $7039: $f6 $9c
	ld [hl], a                                       ; $703b: $77
	ld d, l                                          ; $703c: $55
	ld d, l                                          ; $703d: $55
	ld a, e                                          ; $703e: $7b
	or $9a                                           ; $703f: $f6 $9a
	ld b, d                                          ; $7041: $42
	ld [hl+], a                                      ; $7042: $22
	dec h                                            ; $7043: $25
	ld d, l                                          ; $7044: $55
	ld d, h                                          ; $7045: $54
	ld l, a                                          ; $7046: $6f
	or $9a                                           ; $7047: $f6 $9a
	inc h                                            ; $7049: $24
	ld b, l                                          ; $704a: $45
	ld d, l                                          ; $704b: $55
	ld d, l                                          ; $704c: $55
	ld b, l                                          ; $704d: $45
	ld l, a                                          ; $704e: $6f
	or $9d                                           ; $704f: $f6 $9d
	ld b, h                                          ; $7051: $44
	ld d, l                                          ; $7052: $55
	ld a, e                                          ; $7053: $7b
	db $eb                                           ; $7054: $eb
	sbc d                                            ; $7055: $9a
	ld h, [hl]                                       ; $7056: $66
	ld b, h                                          ; $7057: $44
	ld b, h                                          ; $7058: $44
	ld b, d                                          ; $7059: $42
	inc [hl]                                         ; $705a: $34
	ld [hl], a                                       ; $705b: $77
	or $7f                                           ; $705c: $f6 $7f
	adc $7b                                          ; $705e: $ce $7b
	or $7f                                           ; $7060: $f6 $7f
	db $ec                                           ; $7062: $ec

jr_055_7063:
	ld [hl], a                                       ; $7063: $77
	ei                                               ; $7064: $fb
	add b                                            ; $7065: $80
	adc d                                            ; $7066: $8a
	set 7, a                                         ; $7067: $cb $ff
	sbc l                                            ; $7069: $9d
	cp $f9                                           ; $706a: $fe $f9
	ld d, a                                          ; $706c: $57
	di                                               ; $706d: $f3
	sbc e                                            ; $706e: $9b
	ldh a, [$80]                                     ; $706f: $f0 $80
	jr nc, jr_055_7063                               ; $7071: $30 $f0

	reti                                             ; $7073: $d9


	rst $38                                          ; $7074: $ff
	adc a                                            ; $7075: $8f
	di                                               ; $7076: $f3
	db $f4                                           ; $7077: $f4
	ld a, [$060e]                                    ; $7078: $fa $0e $06
	ld [bc], a                                       ; $707b: $02
	ld bc, $f000                                     ; $707c: $01 $00 $f0
	di                                               ; $707f: $f3
	push af                                          ; $7080: $f5
	ld sp, hl                                        ; $7081: $f9
	db $fd                                           ; $7082: $fd
	rst FarCall                                          ; $7083: $f7
	ei                                               ; $7084: $fb
	db $fd                                           ; $7085: $fd
	db $dd                                           ; $7086: $dd
	rst $38                                          ; $7087: $ff
	sub e                                            ; $7088: $93
	ld [$9fa7], a                                    ; $7089: $ea $a7 $9f
	cp a                                             ; $708c: $bf
	jp z, $352d                                      ; $708d: $ca $2d $35

	ld d, l                                          ; $7090: $55
	ld c, d                                          ; $7091: $4a
	and a                                            ; $7092: $a7
	sbc a                                            ; $7093: $9f
	cp l                                             ; $7094: $bd
	sbc $ff                                          ; $7095: $de $ff
	sbc [hl]                                         ; $7097: $9e
	cp a                                             ; $7098: $bf
	db $dd                                           ; $7099: $dd
	rst $38                                          ; $709a: $ff
	sub a                                            ; $709b: $97
	or h                                             ; $709c: $b4
	ld d, [hl]                                       ; $709d: $56
	ld d, [hl]                                       ; $709e: $56
	or a                                             ; $709f: $b7
	rst $38                                          ; $70a0: $ff
	pop af                                           ; $70a1: $f1
	and $8f                                          ; $70a2: $e6 $8f
	reti                                             ; $70a4: $d9


	rst $38                                          ; $70a5: $ff
	sub l                                            ; $70a6: $95
	ld h, [hl]                                       ; $70a7: $66
	pop af                                           ; $70a8: $f1
	db $fd                                           ; $70a9: $fd
	rst $38                                          ; $70aa: $ff
	db $fd                                           ; $70ab: $fd
	rst $38                                          ; $70ac: $ff
	ld a, a                                          ; $70ad: $7f
	cp $7d                                           ; $70ae: $fe $7d
	cp $dc                                           ; $70b0: $fe $dc
	rst $38                                          ; $70b2: $ff
	adc [hl]                                         ; $70b3: $8e
	db $fd                                           ; $70b4: $fd
	jr nc, jr_055_7037                               ; $70b5: $30 $80

	xor d                                            ; $70b7: $aa
	xor e                                            ; $70b8: $ab
	db $eb                                           ; $70b9: $eb
	ei                                               ; $70ba: $fb
	db $fd                                           ; $70bb: $fd
	push af                                          ; $70bc: $f5
	add h                                            ; $70bd: $84
	nop                                              ; $70be: $00
	ret nz                                           ; $70bf: $c0

	ldh a, [$fc]                                     ; $70c0: $f0 $fc
	cp $7e                                           ; $70c2: $fe $7e
	ld d, a                                          ; $70c4: $57
	cp $9a                                           ; $70c5: $fe $9a
	add b                                            ; $70c7: $80
	ldh [$58], a                                     ; $70c8: $e0 $58
	ld d, h                                          ; $70ca: $54
	ld d, $fe                                        ; $70cb: $16 $fe
	sbc d                                            ; $70cd: $9a
	inc bc                                           ; $70ce: $03
	nop                                              ; $70cf: $00
	ld a, a                                          ; $70d0: $7f
	rst SubAFromDE                                          ; $70d1: $df
	jr c, jr_055_7143                                ; $70d2: $38 $6f

	ld hl, sp-$68                                    ; $70d4: $f8 $98
	ldh [$3f], a                                     ; $70d6: $e0 $3f
	dec d                                            ; $70d8: $15
	dec d                                            ; $70d9: $15
	db $f4                                           ; $70da: $f4
	ei                                               ; $70db: $fb
	ld a, [bc]                                       ; $70dc: $0a
	ld a, e                                          ; $70dd: $7b
	ld a, h                                          ; $70de: $7c
	rst SubAFromDE                                          ; $70df: $df
	rra                                              ; $70e0: $1f
	rst SubAFromDE                                          ; $70e1: $df
	rst $38                                          ; $70e2: $ff
	sub e                                            ; $70e3: $93

jr_055_70e4:
	rrca                                             ; $70e4: $0f
	rst $38                                          ; $70e5: $ff
	rlca                                             ; $70e6: $07
	inc bc                                           ; $70e7: $03
	rra                                              ; $70e8: $1f
	ld l, c                                          ; $70e9: $69
	or a                                             ; $70ea: $b7
	ld c, l                                          ; $70eb: $4d
	cp e                                             ; $70ec: $bb
	pop de                                           ; $70ed: $d1
	sub e                                            ; $70ee: $93
	or l                                             ; $70ef: $b5
	ld [hl], e                                       ; $70f0: $73
	cp e                                             ; $70f1: $bb
	rst SubAFromDE                                          ; $70f2: $df
	rst $38                                          ; $70f3: $ff
	add b                                            ; $70f4: $80
	sbc $3f                                          ; $70f5: $de $3f
	reti                                             ; $70f7: $d9


	dec [hl]                                         ; $70f8: $35
	ld l, b                                          ; $70f9: $68
	rra                                              ; $70fa: $1f
	xor $6f                                          ; $70fb: $ee $6f
	ld l, a                                          ; $70fd: $6f
	rst $38                                          ; $70fe: $ff
	or $da                                           ; $70ff: $f6 $da
	sbc a                                            ; $7101: $9f
	rst $38                                          ; $7102: $ff
	pop af                                           ; $7103: $f1
	sbc a                                            ; $7104: $9f
	ldh a, [$c2]                                     ; $7105: $f0 $c2
	ld a, h                                          ; $7107: $7c
	xor a                                            ; $7108: $af
	xor [hl]                                         ; $7109: $ae
	sub [hl]                                         ; $710a: $96
	ld a, b                                          ; $710b: $78
	or a                                             ; $710c: $b7
	sub c                                            ; $710d: $91
	rst $38                                          ; $710e: $ff
	rst $38                                          ; $710f: $ff
	ld [hl], a                                       ; $7110: $77
	ld [hl], e                                       ; $7111: $73
	ei                                               ; $7112: $fb
	rst $38                                          ; $7113: $ff
	add b                                            ; $7114: $80
	rst GetHLinHL                                          ; $7115: $cf
	ld a, a                                          ; $7116: $7f
	sub $94                                          ; $7117: $d6 $94
	and h                                            ; $7119: $a4
	ld [hl], b                                       ; $711a: $70
	xor b                                            ; $711b: $a8
	call nc, $af7b                                   ; $711c: $d4 $7b $af
	or $f4                                           ; $711f: $f6 $f4
	db $e4                                           ; $7121: $e4
	ldh a, [$78]                                     ; $7122: $f0 $78
	inc a                                            ; $7124: $3c
	sub [hl]                                         ; $7125: $96
	db $d3                                           ; $7126: $d3
	ld [hl], d                                       ; $7127: $72
	cp b                                             ; $7128: $b8
	jr c, jr_055_70e4                                ; $7129: $38 $b9

	inc e                                            ; $712b: $1c
	xor h                                            ; $712c: $ac
	cp $fe                                           ; $712d: $fe $fe
	ld a, h                                          ; $712f: $7c
	inc a                                            ; $7130: $3c
	ld a, $1e                                        ; $7131: $3e $1e
	ld e, $df                                        ; $7133: $1e $df
	rrca                                             ; $7135: $0f
	sub [hl]                                         ; $7136: $96
	rlca                                             ; $7137: $07
	xor d                                            ; $7138: $aa
	nop                                              ; $7139: $00
	xor d                                            ; $713a: $aa
	ld b, b                                          ; $713b: $40
	xor d                                            ; $713c: $aa
	ld d, b                                          ; $713d: $50
	ld [$fa7f], a                                    ; $713e: $ea $7f $fa
	ld a, a                                          ; $7141: $7f
	ld l, d                                          ; $7142: $6a

jr_055_7143:
	sbc b                                            ; $7143: $98
	ld bc, $05aa                                     ; $7144: $01 $aa $05
	xor d                                            ; $7147: $aa
	dec d                                            ; $7148: $15
	xor a                                            ; $7149: $af
	ld d, l                                          ; $714a: $55
	ld sp, hl                                        ; $714b: $f9
	sbc l                                            ; $714c: $9d
	xor d                                            ; $714d: $aa
	ld d, l                                          ; $714e: $55
	ld [hl], a                                       ; $714f: $77
	cp $9e                                           ; $7150: $fe $9e
	ei                                               ; $7152: $fb
	ld h, a                                          ; $7153: $67
	ldh [$73], a                                     ; $7154: $e0 $73
	ldh a, [$9b]                                     ; $7156: $f0 $9b
	xor a                                            ; $7158: $af
	rst FarCall                                          ; $7159: $f7
	rst AddAOntoHL                                          ; $715a: $ef
	rst $38                                          ; $715b: $ff
	ld sp, hl                                        ; $715c: $f9
	halt                                             ; $715d: $76
	call nc, $f79b                                   ; $715e: $d4 $9b $f7
	rst GetHLinHL                                          ; $7161: $cf
	inc a                                            ; $7162: $3c
	ld [hl], e                                       ; $7163: $73
	reti                                             ; $7164: $d9


	rst $38                                          ; $7165: $ff
	sub a                                            ; $7166: $97
	rst SubAFromBC                                          ; $7167: $e7
	sbc a                                            ; $7168: $9f
	ld a, h                                          ; $7169: $7c
	di                                               ; $716a: $f3
	rst GetHLinHL                                          ; $716b: $cf
	ld a, $f1                                        ; $716c: $3e $f1
	adc $d9                                          ; $716e: $ce $d9
	rst $38                                          ; $7170: $ff
	sub a                                            ; $7171: $97
	ret z                                            ; $7172: $c8

	jr c, @-$06                                      ; $7173: $38 $f8

	ldh a, [hDisp0_WY]                                     ; $7175: $f0 $88
	ld [hl], b                                       ; $7177: $70
	add b                                            ; $7178: $80
	ld [hl], b                                       ; $7179: $70
	reti                                             ; $717a: $d9


	rst $38                                          ; $717b: $ff
	ld a, [$019d]                                    ; $717c: $fa $9d $01
	db $fc                                           ; $717f: $fc
	ld l, [hl]                                       ; $7180: $6e
	ld hl, sp-$71                                    ; $7181: $f8 $8f
	rst $38                                          ; $7183: $ff
	ld l, l                                          ; $7184: $6d
	ld [hl], $35                                     ; $7185: $36 $35
	dec l                                            ; $7187: $2d
	dec de                                           ; $7188: $1b
	ld [hl], a                                       ; $7189: $77
	db $f4                                           ; $718a: $f4
	dec de                                           ; $718b: $1b
	jp nc, $2269                                     ; $718c: $d2 $69 $22

	ldh [$f0], a                                     ; $718f: $e0 $f0
	ldh a, [$f1]                                     ; $7191: $f0 $f1
	ld h, d                                          ; $7193: $62
	sbc b                                            ; $7194: $98
	sub a                                            ; $7195: $97
	ld l, l                                          ; $7196: $6d
	adc h                                            ; $7197: $8c
	ld l, [hl]                                       ; $7198: $6e
	xor c                                            ; $7199: $a9
	ld l, h                                          ; $719a: $6c
	xor d                                            ; $719b: $aa
	ld l, l                                          ; $719c: $6d
	xor [hl]                                         ; $719d: $ae
	db $dd                                           ; $719e: $dd
	rst $38                                          ; $719f: $ff
	sub e                                            ; $71a0: $93
	cp a                                             ; $71a1: $bf
	sbc a                                            ; $71a2: $9f
	rst GetHLinHL                                          ; $71a3: $cf
	add a                                            ; $71a4: $87
	jp c, Jump_055_7cea                              ; $71a5: $da $ea $7c

	ld a, [hl]                                       ; $71a8: $7e
	sbc a                                            ; $71a9: $9f
	rrca                                             ; $71aa: $0f
	rlca                                             ; $71ab: $07
	add a                                            ; $71ac: $87
	db $dd                                           ; $71ad: $dd
	rst $38                                          ; $71ae: $ff
	adc [hl]                                         ; $71af: $8e
	xor a                                            ; $71b0: $af
	xor e                                            ; $71b1: $ab
	jp $b8e2                                         ; $71b2: $c3 $e2 $b8


	cp [hl]                                          ; $71b5: $be
	xor [hl]                                         ; $71b6: $ae
	xor a                                            ; $71b7: $af
	dec hl                                           ; $71b8: $2b
	adc e                                            ; $71b9: $8b
	jp nz, Jump_055_57c2                             ; $71ba: $c2 $c2 $57

	dec d                                            ; $71bd: $15
	dec b                                            ; $71be: $05
	add b                                            ; $71bf: $80
	and b                                            ; $71c0: $a0
	sbc $c0                                          ; $71c1: $de $c0
	sbc l                                            ; $71c3: $9d
	dec b                                            ; $71c4: $05
	ld bc, $437b                                     ; $71c5: $01 $7b $43
	sub e                                            ; $71c8: $93
	add b                                            ; $71c9: $80
	ret nz                                           ; $71ca: $c0

	ret nz                                           ; $71cb: $c0

	rlca                                             ; $71cc: $07
	nop                                              ; $71cd: $00
	ld bc, $0301                                     ; $71ce: $01 $01 $03

Jump_055_71d1:
	inc b                                            ; $71d1: $04
	dec bc                                           ; $71d2: $0b
	inc d                                            ; $71d3: $14
	rlca                                             ; $71d4: $07
	ld a, e                                          ; $71d5: $7b
	ld sp, hl                                        ; $71d6: $f9
	sub d                                            ; $71d7: $92
	rlca                                             ; $71d8: $07
	rrca                                             ; $71d9: $0f
	rrca                                             ; $71da: $0f
	rra                                              ; $71db: $1f
	rrca                                             ; $71dc: $0f
	ret nz                                           ; $71dd: $c0

	jr c, @-$38                                      ; $71de: $38 $c6

	ccf                                              ; $71e0: $3f
	rst GetHLinHL                                          ; $71e1: $cf
	scf                                              ; $71e2: $37
	ld c, c                                          ; $71e3: $49
	pop af                                           ; $71e4: $f1
	jp c, $95ff                                      ; $71e5: $da $ff $95

	cp c                                             ; $71e8: $b9
	sbc d                                            ; $71e9: $9a
	ld d, l                                          ; $71ea: $55
	inc [hl]                                         ; $71eb: $34
	add hl, de                                       ; $71ec: $19
	jp z, $bbf4                                      ; $71ed: $ca $f4 $bb

	rst SubAFromDE                                          ; $71f0: $df
	rst $38                                          ; $71f1: $ff
	ld [hl], e                                       ; $71f2: $73
	ld a, a                                          ; $71f3: $7f
	add b                                            ; $71f4: $80
	ld a, a                                          ; $71f5: $7f
	cp b                                             ; $71f6: $b8
	jp $dfbf                                         ; $71f7: $c3 $bf $df


	ld a, a                                          ; $71fa: $7f
	ldh [$ef], a                                     ; $71fb: $e0 $ef
	ld a, $c7                                        ; $71fd: $3e $c7
	inc a                                            ; $71ff: $3c
	ld a, a                                          ; $7200: $7f
	ldh [$9f], a                                     ; $7201: $e0 $9f
	ld a, a                                          ; $7203: $7f
	ldh a, [$df]                                     ; $7204: $f0 $df
	halt                                             ; $7206: $76
	sbc l                                            ; $7207: $9d
	ld h, [hl]                                       ; $7208: $66
	rst $38                                          ; $7209: $ff
	scf                                              ; $720a: $37
	ld l, l                                          ; $720b: $6d
	sbc e                                            ; $720c: $9b
	ld h, a                                          ; $720d: $67
	adc a                                            ; $720e: $8f
	ld h, e                                          ; $720f: $63
	sbc c                                            ; $7210: $99
	ldh [$f8], a                                     ; $7211: $e0 $f8
	sbc [hl]                                         ; $7213: $9e
	add b                                            ; $7214: $80
	ld h, a                                          ; $7215: $67
	sbc b                                            ; $7216: $98
	ld c, [hl]                                       ; $7217: $4e
	xor l                                            ; $7218: $ad
	ld e, a                                          ; $7219: $5f
	xor e                                            ; $721a: $ab
	ld e, d                                          ; $721b: $5a
	or h                                             ; $721c: $b4
	jp z, $fb65                                      ; $721d: $ca $65 $fb

	ei                                               ; $7220: $fb
	ld sp, hl                                        ; $7221: $f9
	ld a, l                                          ; $7222: $7d
	cp l                                             ; $7223: $bd
	ld c, a                                          ; $7224: $4f
	scf                                              ; $7225: $37
	sbc e                                            ; $7226: $9b
	ld hl, sp+$7c                                    ; $7227: $f8 $7c
	ld a, h                                          ; $7229: $7c
	inc a                                            ; $722a: $3c
	cp [hl]                                          ; $722b: $be
	sbc [hl]                                         ; $722c: $9e
	sbc a                                            ; $722d: $9f
	sbc a                                            ; $722e: $9f
	add a                                            ; $722f: $87
	jp $e3c3                                         ; $7230: $c3 $c3 $e3


	pop hl                                           ; $7233: $e1
	ld a, a                                          ; $7234: $7f
	ld d, c                                          ; $7235: $51
	sub [hl]                                         ; $7236: $96
	ldh a, [$7f]                                     ; $7237: $f0 $7f
	dec [hl]                                         ; $7239: $35
	ld a, [hl-]                                      ; $723a: $3a
	sbc a                                            ; $723b: $9f
	sbc a                                            ; $723c: $9f
	adc a                                            ; $723d: $8f
	rst GetHLinHL                                          ; $723e: $cf
	rst JumpTable                                          ; $723f: $c7
	ld a, e                                          ; $7240: $7b
	add l                                            ; $7241: $85
	rst SubAFromDE                                          ; $7242: $df
	ldh [$df], a                                     ; $7243: $e0 $df
	ldh a, [hDisp1_WX]                                     ; $7245: $f0 $96
	ld hl, sp-$01                                    ; $7247: $f8 $ff
	cp $f8                                           ; $7249: $fe $f8
	or b                                             ; $724b: $b0
	ret nz                                           ; $724c: $c0

	add l                                            ; $724d: $85
	ld d, a                                          ; $724e: $57
	xor a                                            ; $724f: $af
	ld h, d                                          ; $7250: $62
	ldh [$98], a                                     ; $7251: $e0 $98
	sbc h                                            ; $7253: $9c
	jr nc, jr_055_7296                               ; $7254: $30 $40

	add l                                            ; $7256: $85
	xor e                                            ; $7257: $ab
	rst SubAFromHL                                          ; $7258: $d7
	cp a                                             ; $7259: $bf
	ld sp, hl                                        ; $725a: $f9
	sub a                                            ; $725b: $97
	xor b                                            ; $725c: $a8
	ld d, h                                          ; $725d: $54
	xor c                                            ; $725e: $a9
	ld e, a                                          ; $725f: $5f
	cp a                                             ; $7260: $bf
	ld a, a                                          ; $7261: $7f
	rst $38                                          ; $7262: $ff
	cp $f9                                           ; $7263: $fe $f9
	sbc b                                            ; $7265: $98
	rst AddAOntoHL                                          ; $7266: $ef
	sbc [hl]                                         ; $7267: $9e
	ld a, c                                          ; $7268: $79
	and $d9                                          ; $7269: $e6 $d9
	ld [hl], a                                       ; $726b: $77
	rst AddAOntoHL                                          ; $726c: $ef
	ret c                                            ; $726d: $d8

	rst $38                                          ; $726e: $ff
	sbc h                                            ; $726f: $9c
	ld sp, $3fcf                                     ; $7270: $31 $cf $3f
	ld d, c                                          ; $7273: $51
	add b                                            ; $7274: $80
	rst SubAFromDE                                          ; $7275: $df
	ldh [$de], a                                     ; $7276: $e0 $de
	ret nz                                           ; $7278: $c0

	sbc h                                            ; $7279: $9c
	add b                                            ; $727a: $80
	ld b, b                                          ; $727b: $40

Call_055_727c:
	add b                                            ; $727c: $80
	ld c, d                                          ; $727d: $4a
	ret nz                                           ; $727e: $c0

	ld a, d                                          ; $727f: $7a
	adc b                                            ; $7280: $88
	db $db                                           ; $7281: $db
	rst $38                                          ; $7282: $ff
	adc a                                            ; $7283: $8f
	ld d, $1d                                        ; $7284: $16 $1d
	rrca                                             ; $7286: $0f
	inc c                                            ; $7287: $0c
	dec b                                            ; $7288: $05
	inc bc                                           ; $7289: $03
	nop                                              ; $728a: $00
	nop                                              ; $728b: $00
	pop af                                           ; $728c: $f1
	ld a, [$f9f8]                                    ; $728d: $fa $f8 $f9
	db $f4                                           ; $7290: $f4
	rst SubAFromBC                                          ; $7291: $e7
	db $e3                                           ; $7292: $e3
	ld hl, sp-$25                                    ; $7293: $f8 $db
	rst $38                                          ; $7295: $ff

jr_055_7296:
	adc c                                            ; $7296: $89
	rst AddAOntoHL                                          ; $7297: $ef
	ld l, a                                          ; $7298: $6f
	dec hl                                           ; $7299: $2b
	ld l, l                                          ; $729a: $6d
	xor d                                            ; $729b: $aa
	dec l                                            ; $729c: $2d

Jump_055_729d:
	ld l, d                                          ; $729d: $6a
	push de                                          ; $729e: $d5
	sub [hl]                                         ; $729f: $96
	push de                                          ; $72a0: $d5
	jp $c1a1                                         ; $72a1: $c3 $a1 $c1


	ldh [$a0], a                                     ; $72a4: $e0 $a0
	ret nz                                           ; $72a6: $c0

	and b                                            ; $72a7: $a0
	ret nz                                           ; $72a8: $c0

	inc bc                                           ; $72a9: $03
	add c                                            ; $72aa: $81
	add b                                            ; $72ab: $80
	nop                                              ; $72ac: $00
	ld [hl], a                                       ; $72ad: $77
	cp $93                                           ; $72ae: $fe $93
	ldh a, [c]                                       ; $72b0: $f2
	ret nc                                           ; $72b1: $d0

	add sp, -$2c                                     ; $72b2: $e8 $d4
	ld l, h                                          ; $72b4: $6c
	halt                                             ; $72b5: $76
	dec sp                                           ; $72b6: $3b
	inc [hl]                                         ; $72b7: $34
	ldh [$f0], a                                     ; $72b8: $e0 $f0
	ld hl, sp-$08                                    ; $72ba: $f8 $f8
	ld a, c                                          ; $72bc: $79
	db $fc                                           ; $72bd: $fc
	sub [hl]                                         ; $72be: $96
	rra                                              ; $72bf: $1f
	ldh [$a0], a                                     ; $72c0: $e0 $a0
	jr nz, jr_055_72e4                               ; $72c2: $20 $20

	nop                                              ; $72c4: $00
	xor d                                            ; $72c5: $aa
	ld e, a                                          ; $72c6: $5f
	ld a, [$f977]                                    ; $72c7: $fa $77 $f9
	db $fd                                           ; $72ca: $fd
	add b                                            ; $72cb: $80
	add hl, de                                       ; $72cc: $19
	inc de                                           ; $72cd: $13
	dec d                                            ; $72ce: $15
	ld a, [hl+]                                      ; $72cf: $2a
	ld a, [hl+]                                      ; $72d0: $2a
	or l                                             ; $72d1: $b5
	ld d, h                                          ; $72d2: $54
	rr [hl]                                          ; $72d3: $cb $1e
	dec e                                            ; $72d5: $1d
	ld a, [hl-]                                      ; $72d6: $3a
	dec [hl]                                         ; $72d7: $35
	dec [hl]                                         ; $72d8: $35
	ld l, e                                          ; $72d9: $6b
	ld l, e                                          ; $72da: $6b
	halt                                             ; $72db: $76
	sub e                                            ; $72dc: $93
	add [hl]                                         ; $72dd: $86
	ld l, h                                          ; $72de: $6c
	reti                                             ; $72df: $d9


	cp e                                             ; $72e0: $bb
	push af                                          ; $72e1: $f5
	push hl                                          ; $72e2: $e5
	jp hl                                            ; $72e3: $e9


jr_055_72e4:
	cp $7d                                           ; $72e4: $fe $7d
	db $db                                           ; $72e6: $db
	or a                                             ; $72e7: $b7
	ld h, a                                          ; $72e8: $67
	ld c, a                                          ; $72e9: $4f
	ld e, a                                          ; $72ea: $5f
	sbc e                                            ; $72eb: $9b
	ld e, a                                          ; $72ec: $5f
	ld e, h                                          ; $72ed: $5c
	sub [hl]                                         ; $72ee: $96
	or l                                             ; $72ef: $b5
	sbc $24                                          ; $72f0: $de $24
	sbc l                                            ; $72f2: $9d
	ld [hl], h                                       ; $72f3: $74
	halt                                             ; $72f4: $76
	ld [hl], l                                       ; $72f5: $75
	add c                                            ; $72f6: $81
	rst SubAFromDE                                          ; $72f7: $df
	db $fc                                           ; $72f8: $fc
	rst SubAFromDE                                          ; $72f9: $df
	call c, $c797                                    ; $72fa: $dc $97 $c7
	ld [hl], d                                       ; $72fd: $72
	add hl, hl                                       ; $72fe: $29
	sbc h                                            ; $72ff: $9c
	ld d, [hl]                                       ; $7300: $56
	xor e                                            ; $7301: $ab
	ld e, b                                          ; $7302: $58
	add hl, sp                                       ; $7303: $39
	sbc $ff                                          ; $7304: $de $ff
	sub b                                            ; $7306: $90
	rst FarCall                                          ; $7307: $f7
	di                                               ; $7308: $f3
	ld a, c                                          ; $7309: $79
	jr c, jr_055_7324                                ; $730a: $38 $18

	sbc c                                            ; $730c: $99
	and $79                                          ; $730d: $e6 $79
	sub [hl]                                         ; $730f: $96
	ret                                              ; $7310: $c9


	and h                                            ; $7311: $a4
	jp nc, $e6f9                                     ; $7312: $d2 $f9 $e6

	ld sp, hl                                        ; $7315: $f9
	ld l, [hl]                                       ; $7316: $6e
	and b                                            ; $7317: $a0
	add a                                            ; $7318: $87
	sub d                                            ; $7319: $92
	ld c, b                                          ; $731a: $48
	and h                                            ; $731b: $a4
	ldh a, [c]                                       ; $731c: $f2
	ld l, b                                          ; $731d: $68
	and h                                            ; $731e: $a4
	ld d, d                                          ; $731f: $52
	add hl, hl                                       ; $7320: $29
	ld l, l                                          ; $7321: $6d
	or a                                             ; $7322: $b7
	ld e, e                                          ; $7323: $5b

jr_055_7324:
	dec c                                            ; $7324: $0d
	sub a                                            ; $7325: $97
	db $db                                           ; $7326: $db
	db $ed                                           ; $7327: $ed
	or $9f                                           ; $7328: $f6 $9f
	ld c, a                                          ; $732a: $4f
	cpl                                              ; $732b: $2f
	xor a                                            ; $732c: $af
	ld e, a                                          ; $732d: $5f
	cpl                                              ; $732e: $2f
	rra                                              ; $732f: $1f
	rrca                                             ; $7330: $0f
	ld a, e                                          ; $7331: $7b
	add c                                            ; $7332: $81
	call c, $9af8                                    ; $7333: $dc $f8 $9a
	rst JumpTable                                          ; $7336: $c7
	db $e3                                           ; $7337: $e3
	db $e3                                           ; $7338: $e3
	pop af                                           ; $7339: $f1
	pop af                                           ; $733a: $f1
	db $dd                                           ; $733b: $dd
	ld hl, sp-$21                                    ; $733c: $f8 $df
	ld a, h                                          ; $733e: $7c
	rst SubAFromDE                                          ; $733f: $df
	ld a, $9e                                        ; $7340: $3e $9e
	ccf                                              ; $7342: $3f
	ld [hl], l                                       ; $7343: $75
	ld a, [de]                                       ; $7344: $1a
	call c, $9eff                                    ; $7345: $dc $ff $9e
	ld a, h                                          ; $7348: $7c
	ld h, l                                          ; $7349: $65
	ld [hl], b                                       ; $734a: $70
	ld [hl], d                                       ; $734b: $72
	di                                               ; $734c: $f3
	ld a, l                                          ; $734d: $7d
	xor e                                            ; $734e: $ab
	ld [hl], c                                       ; $734f: $71
	add b                                            ; $7350: $80
	sbc e                                            ; $7351: $9b
	ld bc, $1806                                     ; $7352: $01 $06 $18
	ld h, b                                          ; $7355: $60
	ld [hl], a                                       ; $7356: $77
	db $f4                                           ; $7357: $f4
	db $dd                                           ; $7358: $dd
	rst $38                                          ; $7359: $ff
	ld a, e                                          ; $735a: $7b
	db $f4                                           ; $735b: $f4
	adc a                                            ; $735c: $8f
	ld h, c                                          ; $735d: $61
	xor d                                            ; $735e: $aa
	rla                                              ; $735f: $17
	xor e                                            ; $7360: $ab
	push de                                          ; $7361: $d5
	cp a                                             ; $7362: $bf
	ld hl, sp+$70                                    ; $7363: $f8 $70
	ldh a, [$e3]                                     ; $7365: $f0 $e3
	db $e4                                           ; $7367: $e4
	push hl                                          ; $7368: $e5
	db $f4                                           ; $7369: $f4
	rst $38                                          ; $736a: $ff
	db $fc                                           ; $736b: $fc
	ei                                               ; $736c: $fb
	ld [hl], b                                       ; $736d: $70
	ld d, h                                          ; $736e: $54
	sub a                                            ; $736f: $97
	and $59                                          ; $7370: $e6 $59
	ld h, $19                                        ; $7372: $26 $19
	add [hl]                                         ; $7374: $86
	ret                                              ; $7375: $c9


	add $e0                                          ; $7376: $c6 $e0
	ld a, e                                          ; $7378: $7b
	add l                                            ; $7379: $85
	ld [hl], b                                       ; $737a: $70
	ld a, b                                          ; $737b: $78
	ld a, [hl]                                       ; $737c: $7e
	add $73                                          ; $737d: $c6 $73
	add hl, bc                                       ; $737f: $09
	ld h, d                                          ; $7380: $62
	ret nc                                           ; $7381: $d0

	ld b, [hl]                                       ; $7382: $46
	ret nz                                           ; $7383: $c0

	ld sp, hl                                        ; $7384: $f9
	ld l, c                                          ; $7385: $69
	ld [hl], c                                       ; $7386: $71
	sbc c                                            ; $7387: $99
	rst $38                                          ; $7388: $ff
	cpl                                              ; $7389: $2f
	ccf                                              ; $738a: $3f
	dec [hl]                                         ; $738b: $35
	dec [hl]                                         ; $738c: $35
	dec a                                            ; $738d: $3d
	sbc $3f                                          ; $738e: $de $3f
	sbc [hl]                                         ; $7390: $9e
	ld [hl], b                                       ; $7391: $70
	jp c, $9be0                                      ; $7392: $da $e0 $9b

	and c                                            ; $7395: $a1
	jp nz, Jump_055_6fa5                             ; $7396: $c2 $a5 $6f

	db $dd                                           ; $7399: $dd
	rst $38                                          ; $739a: $ff
	ld a, e                                          ; $739b: $7b
	cp l                                             ; $739c: $bd
	db $fc                                           ; $739d: $fc
	sub [hl]                                         ; $739e: $96
	ld e, d                                          ; $739f: $5a
	cp h                                             ; $73a0: $bc
	cp $fd                                           ; $73a1: $fe $fd
	cp $ff                                           ; $73a3: $fe $ff
	ld a, [$1f57]                                    ; $73a5: $fa $57 $1f
	ld a, b                                          ; $73a8: $78
	call nz, Call_055_727c                           ; $73a9: $c4 $7c $72
	rst SubAFromDE                                          ; $73ac: $df
	inc bc                                           ; $73ad: $03
	sub a                                            ; $73ae: $97
	push af                                          ; $73af: $f5
	ld a, [hl+]                                      ; $73b0: $2a
	ld d, a                                          ; $73b1: $57
	ld a, $9d                                        ; $73b2: $3e $9d
	ld c, e                                          ; $73b4: $4b
	sub a                                            ; $73b5: $97
	ld c, a                                          ; $73b6: $4f
	ld [hl], c                                       ; $73b7: $71
	add e                                            ; $73b8: $83
	ld a, c                                          ; $73b9: $79
	cp $97                                           ; $73ba: $fe $97
	ld b, d                                          ; $73bc: $42
	jp nc, $d450                                     ; $73bd: $d2 $50 $d4

	ld d, h                                          ; $73c0: $54
	push de                                          ; $73c1: $d5
	pop de                                           ; $73c2: $d1
	ld d, l                                          ; $73c3: $55
	reti                                             ; $73c4: $d9


	ld a, a                                          ; $73c5: $7f
	sub e                                            ; $73c6: $93
	ld l, l                                          ; $73c7: $6d
	db $dd                                           ; $73c8: $dd
	rst SubAFromHL                                          ; $73c9: $d7
	or a                                             ; $73ca: $b7
	xor a                                            ; $73cb: $af
	xor e                                            ; $73cc: $ab
	ld l, e                                          ; $73cd: $6b
	ld l, e                                          ; $73ce: $6b
	rst SubAFromDE                                          ; $73cf: $df
	cp a                                             ; $73d0: $bf
	cp l                                             ; $73d1: $bd
	db $fd                                           ; $73d2: $fd
	sbc $f5                                          ; $73d3: $de $f5
	add c                                            ; $73d5: $81
	push de                                          ; $73d6: $d5
	ldh a, [c]                                       ; $73d7: $f2
	ld a, [$edfb]                                    ; $73d8: $fa $fb $ed
	or a                                             ; $73db: $b7
	sub e                                            ; $73dc: $93
	call nz, $de7f                                   ; $73dd: $c4 $7f $de
	ld c, [hl]                                       ; $73e0: $4e
	ld l, [hl]                                       ; $73e1: $6e
	daa                                              ; $73e2: $27
	inc hl                                           ; $73e3: $23
	ld bc, $fc38                                     ; $73e4: $01 $38 $fc
	ld a, [hl+]                                      ; $73e7: $2a
	dec d                                            ; $73e8: $15
	ld d, $07                                        ; $73e9: $16 $07
	add c                                            ; $73eb: $81
	add e                                            ; $73ec: $83
	inc bc                                           ; $73ed: $03
	ld bc, $0b19                                     ; $73ee: $01 $19 $0b
	inc bc                                           ; $73f1: $03
	ld [bc], a                                       ; $73f2: $02
	ld [bc], a                                       ; $73f3: $02

jr_055_73f4:
	ld a, e                                          ; $73f4: $7b
	sbc e                                            ; $73f5: $9b
	add a                                            ; $73f6: $87
	or h                                             ; $73f7: $b4
	ld a, [$fff9]                                    ; $73f8: $fa $f9 $ff
	ld h, d                                          ; $73fb: $62
	jp nz, $afb3                                     ; $73fc: $c2 $b3 $af

	rst GetHLinHL                                          ; $73ff: $cf
	rlca                                             ; $7400: $07
	ccf                                              ; $7401: $3f
	ld a, a                                          ; $7402: $7f
	or $e3                                           ; $7403: $f6 $e3
	di                                               ; $7405: $f3
	ccf                                              ; $7406: $3f
	sub b                                            ; $7407: $90
	ld c, b                                          ; $7408: $48
	inc h                                            ; $7409: $24
	sub d                                            ; $740a: $92
	ret z                                            ; $740b: $c8

	dec h                                            ; $740c: $25
	ld d, h                                          ; $740d: $54
	ld [hl], d                                       ; $740e: $72
	call c, $9cff                                    ; $740f: $dc $ff $9c
	ld a, a                                          ; $7412: $7f
	ccf                                              ; $7413: $3f
	rra                                              ; $7414: $1f
	ld [hl], a                                       ; $7415: $77
	adc e                                            ; $7416: $8b
	sbc b                                            ; $7417: $98

Call_055_7418:
	ld hl, $8811                                     ; $7418: $21 $11 $88
	ld c, b                                          ; $741b: $48
	db $fc                                           ; $741c: $fc
	db $fc                                           ; $741d: $fc
	cp $73                                           ; $741e: $fe $73
	ld c, l                                          ; $7420: $4d
	sbc [hl]                                         ; $7421: $9e
	db $fc                                           ; $7422: $fc
	ld a, c                                          ; $7423: $79
	jr c, jr_055_74a2                                ; $7424: $38 $7c

	add b                                            ; $7426: $80
	ld a, a                                          ; $7427: $7f
	dec d                                            ; $7428: $15
	ld [hl], e                                       ; $7429: $73
	ld [hl], b                                       ; $742a: $70
	adc l                                            ; $742b: $8d
	rrca                                             ; $742c: $0f
	or e                                             ; $742d: $b3
	pop bc                                           ; $742e: $c1
	ld [hl], e                                       ; $742f: $73
	rrca                                             ; $7430: $0f
	ccf                                              ; $7431: $3f
	ccf                                              ; $7432: $3f
	rra                                              ; $7433: $1f
	reti                                             ; $7434: $d9


Jump_055_7435:
	ret z                                            ; $7435: $c8

	ld hl, sp-$7d                                    ; $7436: $f8 $83
	call z, $e5f2                                    ; $7438: $cc $f2 $e5
	ldh a, [c]                                       ; $743b: $f2
	cp $fd                                           ; $743c: $fe $fd
	ret c                                            ; $743e: $d8

	rst $38                                          ; $743f: $ff
	sub a                                            ; $7440: $97
	add c                                            ; $7441: $81
	jr jr_055_73f4                                   ; $7442: $18 $b0

	ld a, b                                          ; $7444: $78
	ldh [$cc], a                                     ; $7445: $e0 $cc
	or b                                             ; $7447: $b0
	ld h, b                                          ; $7448: $60
	ld c, a                                          ; $7449: $4f
	ld [$0298], sp                                   ; $744a: $08 $98 $02
	ld bc, $58f2                                     ; $744d: $01 $f2 $58
	xor h                                            ; $7450: $ac
	ld d, [hl]                                       ; $7451: $56
	xor e                                            ; $7452: $ab
	ld a, b                                          ; $7453: $78
	inc l                                            ; $7454: $2c
	ld h, a                                          ; $7455: $67
	nop                                              ; $7456: $00
	sub a                                            ; $7457: $97
	jr nz, jr_055_748a                               ; $7458: $20 $30

	ld a, h                                          ; $745a: $7c
	inc a                                            ; $745b: $3c
	ld bc, $e682                                     ; $745c: $01 $82 $e6
	ld a, [hl]                                       ; $745f: $7e
	ld [hl], d                                       ; $7460: $72
	sbc e                                            ; $7461: $9b
	ld a, [de]                                       ; $7462: $1a
	ret nc                                           ; $7463: $d0

	daa                                              ; $7464: $27
	ldh a, [$9d]                                     ; $7465: $f0 $9d
	ld a, $3d                                        ; $7467: $3e $3d
	ld [hl], a                                       ; $7469: $77
	ld a, b                                          ; $746a: $78
	sbc b                                            ; $746b: $98
	dec c                                            ; $746c: $0d
	jr @-$1e                                         ; $746d: $18 $e0

	ldh a, [$e8]                                     ; $746f: $f0 $e8
	db $fc                                           ; $7471: $fc
	db $fc                                           ; $7472: $fc
	sbc $f8                                          ; $7473: $de $f8
	sub a                                            ; $7475: $97
	xor [hl]                                         ; $7476: $ae
	ld e, a                                          ; $7477: $5f
	rst $38                                          ; $7478: $ff
	rst $38                                          ; $7479: $ff
	push af                                          ; $747a: $f5
	xor d                                            ; $747b: $aa
	ld d, l                                          ; $747c: $55
	dec bc                                           ; $747d: $0b
	db $fd                                           ; $747e: $fd
	sbc e                                            ; $747f: $9b
	ld a, [bc]                                       ; $7480: $0a
	ld d, l                                          ; $7481: $55
	ld a, [hl+]                                      ; $7482: $2a
	nop                                              ; $7483: $00
	ld [hl], d                                       ; $7484: $72
	ld l, e                                          ; $7485: $6b
	ld a, a                                          ; $7486: $7f
	ldh a, [$9d]                                     ; $7487: $f0 $9d
	xor a                                            ; $7489: $af

jr_055_748a:
	ld bc, $5078                                     ; $748a: $01 $78 $50
	adc e                                            ; $748d: $8b
	nop                                              ; $748e: $00
	ld d, l                                          ; $748f: $55
	xor d                                            ; $7490: $aa
	ld d, b                                          ; $7491: $50
	xor a                                            ; $7492: $af
	rst JumpTable                                          ; $7493: $c7
	and e                                            ; $7494: $a3
	jp nc, $d1e1                                     ; $7495: $d2 $e1 $d1

	ld [hl], b                                       ; $7498: $70
	ld hl, sp-$10                                    ; $7499: $f8 $f0
	ld hl, sp-$04                                    ; $749b: $f8 $fc
	db $fd                                           ; $749d: $fd
	cp $7e                                           ; $749e: $fe $7e
	rst $38                                          ; $74a0: $ff
	ccf                                              ; $74a1: $3f

jr_055_74a2:
	sbc $f5                                          ; $74a2: $de $f5
	sbc d                                            ; $74a4: $9a
	cp e                                             ; $74a5: $bb
	ld e, e                                          ; $74a6: $5b
	cp e                                             ; $74a7: $bb
	cp $fe                                           ; $74a8: $fe $fe
	ld a, e                                          ; $74aa: $7b
	ld a, [hl-]                                      ; $74ab: $3a
	sub d                                            ; $74ac: $92
	ld e, a                                          ; $74ad: $5f
	xor a                                            ; $74ae: $af
	ld c, a                                          ; $74af: $4f
	rlca                                             ; $74b0: $07
	rlca                                             ; $74b1: $07
	db $eb                                           ; $74b2: $eb
	db $eb                                           ; $74b3: $eb
	xor e                                            ; $74b4: $ab
	xor e                                            ; $74b5: $ab
	jp z, $ca4a                                      ; $74b6: $ca $4a $ca

	jp c, Jump_055_55dd                              ; $74b9: $da $dd $55

	sbc [hl]                                         ; $74bc: $9e
	dec [hl]                                         ; $74bd: $35
	sbc $b5                                          ; $74be: $de $b5
	adc a                                            ; $74c0: $8f
	cp a                                             ; $74c1: $bf
	ld a, l                                          ; $74c2: $7d
	ld a, [hl]                                       ; $74c3: $7e
	ld e, c                                          ; $74c4: $59
	ldh a, [$bc]                                     ; $74c5: $f0 $bc
	db $eb                                           ; $74c7: $eb
	ld c, e                                          ; $74c8: $4b
	ret nz                                           ; $74c9: $c0

	adc [hl]                                         ; $74ca: $8e
	sbc a                                            ; $74cb: $9f
	cp a                                             ; $74cc: $bf
	cp c                                             ; $74cd: $b9
	db $fc                                           ; $74ce: $fc
	rst $38                                          ; $74cf: $ff
	rst AddAOntoHL                                          ; $74d0: $ef
	ld a, d                                          ; $74d1: $7a
	adc d                                            ; $74d2: $8a
	sbc d                                            ; $74d3: $9a
	nop                                              ; $74d4: $00
	sub b                                            ; $74d5: $90
	ret z                                            ; $74d6: $c8

	call z, $754c                                    ; $74d7: $cc $4c $75
	call nc, Call_055_7d76                           ; $74da: $d4 $76 $7d
	sbc e                                            ; $74dd: $9b
	dec l                                            ; $74de: $2d
	ld de, $060d                                     ; $74df: $11 $0d $06
	db $fd                                           ; $74e2: $fd
	sbc h                                            ; $74e3: $9c
	ccf                                              ; $74e4: $3f
	dec de                                           ; $74e5: $1b
	ld c, $fc                                        ; $74e6: $0e $fc
	sub a                                            ; $74e8: $97
	ld a, c                                          ; $74e9: $79
	push af                                          ; $74ea: $f5
	sbc h                                            ; $74eb: $9c
	ld a, [bc]                                       ; $74ec: $0a
	dec b                                            ; $74ed: $05
	inc bc                                           ; $74ee: $03
	inc bc                                           ; $74ef: $03
	ld bc, $5172                                     ; $74f0: $01 $72 $51
	sbc $01                                          ; $74f3: $de $01
	sub d                                            ; $74f5: $92
	ld c, h                                          ; $74f6: $4c
	ld h, $a6                                        ; $74f7: $26 $a6
	sub e                                            ; $74f9: $93
	ld d, e                                          ; $74fa: $53
	dec hl                                           ; $74fb: $2b
	xor c                                            ; $74fc: $a9
	sub l                                            ; $74fd: $95
	rst FarCall                                          ; $74fe: $f7
	ei                                               ; $74ff: $fb
	ei                                               ; $7500: $fb
	db $fd                                           ; $7501: $fd
	db $fd                                           ; $7502: $fd
	ld a, d                                          ; $7503: $7a
	cp h                                             ; $7504: $bc
	add [hl]                                         ; $7505: $86
	ld hl, sp+$77                                    ; $7506: $f8 $77
	ld l, b                                          ; $7508: $68
	ld h, l                                          ; $7509: $65
	ld a, [hl+]                                      ; $750a: $2a
	and l                                            ; $750b: $a5
	xor e                                            ; $750c: $ab
	ld h, a                                          ; $750d: $67
	add a                                            ; $750e: $87
	ret z                                            ; $750f: $c8

	rst SubAFromHL                                          ; $7510: $d7
	jp c, $faf5                                      ; $7511: $da $f5 $fa

	db $f4                                           ; $7514: $f4
	ld hl, sp-$61                                    ; $7515: $f8 $9f
	rra                                              ; $7517: $1f
	ld e, $fe                                        ; $7518: $1e $fe
	rst $38                                          ; $751a: $ff
	db $e3                                           ; $751b: $e3
	db $e3                                           ; $751c: $e3
	rst SubAFromBC                                          ; $751d: $e7
	rst $38                                          ; $751e: $ff
	ld a, e                                          ; $751f: $7b
	ld d, a                                          ; $7520: $57
	sbc l                                            ; $7521: $9d
	adc a                                            ; $7522: $8f
	scf                                              ; $7523: $37
	ld a, d                                          ; $7524: $7a
	ld a, [$6c79]                                    ; $7525: $fa $79 $6c
	ld [hl], h                                       ; $7528: $74
	ld l, [hl]                                       ; $7529: $6e
	sub a                                            ; $752a: $97
	ld b, d                                          ; $752b: $42
	db $e4                                           ; $752c: $e4
	cp b                                             ; $752d: $b8
	push af                                          ; $752e: $f5
	ld a, [$dfef]                                    ; $752f: $fa $ef $df
	db $eb                                           ; $7532: $eb
	jp c, $9aff                                      ; $7533: $da $ff $9a

	ld sp, hl                                        ; $7536: $f9
	adc d                                            ; $7537: $8a
	dec b                                            ; $7538: $05
	ld a, [hl+]                                      ; $7539: $2a
	ld e, a                                          ; $753a: $5f
	ld a, e                                          ; $753b: $7b
	db $dd                                           ; $753c: $dd
	sbc l                                            ; $753d: $9d
	cp $aa                                           ; $753e: $fe $aa
	ld a, d                                          ; $7540: $7a
	call nz, $fe7f                                   ; $7541: $c4 $7f $fe
	sbc l                                            ; $7544: $9d
	xor e                                            ; $7545: $ab
	ld d, h                                          ; $7546: $54
	reti                                             ; $7547: $d9


	rst $38                                          ; $7548: $ff
	sbc b                                            ; $7549: $98
	adc [hl]                                         ; $754a: $8e
	ld b, $02                                        ; $754b: $06 $02
	nop                                              ; $754d: $00
	add b                                            ; $754e: $80
	ld b, b                                          ; $754f: $40
	ret nz                                           ; $7550: $c0

	ld a, c                                          ; $7551: $79
	add b                                            ; $7552: $80
	ld [bc], a                                       ; $7553: $02
	ret nc                                           ; $7554: $d0

	ld e, a                                          ; $7555: $5f
	ldh a, [$9c]                                     ; $7556: $f0 $9c
	ld [bc], a                                       ; $7558: $02
	dec b                                            ; $7559: $05
	ld a, [hl+]                                      ; $755a: $2a
	reti                                             ; $755b: $d9


	rst $38                                          ; $755c: $ff
	sub a                                            ; $755d: $97
	ld c, $1e                                        ; $755e: $0e $1e
	rra                                              ; $7560: $1f
	ccf                                              ; $7561: $3f
	ld e, a                                          ; $7562: $5f
	xor a                                            ; $7563: $af
	ld e, a                                          ; $7564: $5f
	xor a                                            ; $7565: $af
	ld a, d                                          ; $7566: $7a
	jr nz, jr_055_75de                               ; $7567: $20 $75

	ld sp, $fe96                                     ; $7569: $31 $96 $fe
	nop                                              ; $756c: $00
	nop                                              ; $756d: $00

jr_055_756e:
	ld hl, $ffea                                     ; $756e: $21 $ea $ff
	dec d                                            ; $7571: $15
	nop                                              ; $7572: $00
	jr z, jr_055_756e                                ; $7573: $28 $f9

	sub a                                            ; $7575: $97
	or l                                             ; $7576: $b5
	ld a, [bc]                                       ; $7577: $0a
	dec b                                            ; $7578: $05
	xor a                                            ; $7579: $af
	rst $38                                          ; $757a: $ff
	rst $38                                          ; $757b: $ff
	rst GetHLinHL                                          ; $757c: $cf
	rlca                                             ; $757d: $07
	ld sp, hl                                        ; $757e: $f9
	sbc e                                            ; $757f: $9b
	ld hl, sp+$78                                    ; $7580: $f8 $78
	db $fc                                           ; $7582: $fc
	db $fc                                           ; $7583: $fc
	ld [hl], a                                       ; $7584: $77
	rst SubAFromHL                                          ; $7585: $d7
	ld a, d                                          ; $7586: $7a
	ret nc                                           ; $7587: $d0

	ld [hl], c                                       ; $7588: $71
	db $fd                                           ; $7589: $fd

Jump_055_758a:
	ld a, l                                          ; $758a: $7d
	db $dd                                           ; $758b: $dd
	ld a, e                                          ; $758c: $7b
	rst FarCall                                          ; $758d: $f7
	sbc c                                            ; $758e: $99
	adc a                                            ; $758f: $8f
	rrca                                             ; $7590: $0f
	rlca                                             ; $7591: $07
	add e                                            ; $7592: $83
	pop bc                                           ; $7593: $c1
	pop bc                                           ; $7594: $c1
	ld a, c                                          ; $7595: $79
	ld [hl], d                                       ; $7596: $72
	ld a, [hl]                                       ; $7597: $7e
	xor d                                            ; $7598: $aa
	rst SubAFromDE                                          ; $7599: $df
	sub b                                            ; $759a: $90
	sbc c                                            ; $759b: $99
	add d                                            ; $759c: $82
	jp nc, $c9d2                                     ; $759d: $d2 $d2 $c9

	jp hl                                            ; $75a0: $e9


	jp hl                                            ; $75a1: $e9


	ld l, c                                          ; $75a2: $69
	ret nz                                           ; $75a3: $c0

	sbc d                                            ; $75a4: $9a
	ccf                                              ; $75a5: $3f
	ld [hl], h                                       ; $75a6: $74
	ld a, e                                          ; $75a7: $7b
	ld a, a                                          ; $75a8: $7f
	ld a, $77                                        ; $75a9: $3e $77
	db $dd                                           ; $75ab: $dd
	sbc h                                            ; $75ac: $9c
	add $c3                                          ; $75ad: $c6 $c3
	ldh [$7a], a                                     ; $75af: $e0 $7a
	adc l                                            ; $75b1: $8d
	ld a, a                                          ; $75b2: $7f
	sbc e                                            ; $75b3: $9b
	sub e                                            ; $75b4: $93
	ret c                                            ; $75b5: $d8

	sbc e                                            ; $75b6: $9b
	ld e, $0c                                        ; $75b7: $1e $0c
	nop                                              ; $75b9: $00
	add e                                            ; $75ba: $83
	add c                                            ; $75bb: $81
	ret nz                                           ; $75bc: $c0

	add h                                            ; $75bd: $84
	inc b                                            ; $75be: $04
	ld b, $00                                        ; $75bf: $06 $00
	ld [hl], d                                       ; $75c1: $72
	ld l, h                                          ; $75c2: $6c
	adc b                                            ; $75c3: $88
	nop                                              ; $75c4: $00
	inc l                                            ; $75c5: $2c
	ret nc                                           ; $75c6: $d0

	jr nz, jr_055_763d                               ; $75c7: $20 $74

	jr nc, jr_055_7613                               ; $75c9: $30 $48

	nop                                              ; $75cb: $00
	nop                                              ; $75cc: $00
	inc e                                            ; $75cd: $1c
	inc c                                            ; $75ce: $0c
	inc e                                            ; $75cf: $1c
	adc b                                            ; $75d0: $88
	ret z                                            ; $75d1: $c8

	jr nc, jr_055_75d4                               ; $75d2: $30 $00

jr_055_75d4:
	ld [bc], a                                       ; $75d4: $02
	ld [bc], a                                       ; $75d5: $02
	ld bc, $0705                                     ; $75d6: $01 $05 $07
	rrca                                             ; $75d9: $0f
	rrca                                             ; $75da: $0f
	sbc $01                                          ; $75db: $de $01
	rst SubAFromDE                                          ; $75dd: $df

jr_055_75de:
	ld [bc], a                                       ; $75de: $02
	sbc b                                            ; $75df: $98
	nop                                              ; $75e0: $00
	inc b                                            ; $75e1: $04
	inc b                                            ; $75e2: $04
	ld d, h                                          ; $75e3: $54
	ld c, d                                          ; $75e4: $4a
	ld [$79e5], a                                    ; $75e5: $ea $e5 $79
	dec sp                                           ; $75e8: $3b
	sbc [hl]                                         ; $75e9: $9e
	rst FarCall                                          ; $75ea: $f7
	ld [hl], e                                       ; $75eb: $73
	or e                                             ; $75ec: $b3
	ld a, e                                          ; $75ed: $7b
	adc [hl]                                         ; $75ee: $8e
	sub h                                            ; $75ef: $94
	ld h, h                                          ; $75f0: $64
	dec [hl]                                         ; $75f1: $35
	ld a, [hl+]                                      ; $75f2: $2a
	db $10                                           ; $75f3: $10
	db $10                                           ; $75f4: $10
	sub b                                            ; $75f5: $90
	sub b                                            ; $75f6: $90
	sbc h                                            ; $75f7: $9c
	ei                                               ; $75f8: $fb
	ld [$67f5], a                                    ; $75f9: $ea $f5 $67
	jr nc, @+$81                                     ; $75fc: $30 $7f

	rst SubAFromHL                                          ; $75fe: $d7
	sbc h                                            ; $75ff: $9c
	ld b, $3c                                        ; $7600: $06 $3c
	ld hl, sp+$70                                    ; $7602: $f8 $70
	ld [hl], e                                       ; $7604: $73
	adc e                                            ; $7605: $8b
	ld a, [$08c4]                                    ; $7606: $fa $c4 $08
	nop                                              ; $7609: $00
	ld h, b                                          ; $760a: $60
	or c                                             ; $760b: $b1
	ccf                                              ; $760c: $3f
	ccf                                              ; $760d: $3f
	ld a, a                                          ; $760e: $7f
	db $fc                                           ; $760f: $fc
	ld sp, hl                                        ; $7610: $f9
	rst $38                                          ; $7611: $ff
	rst $38                                          ; $7612: $ff

jr_055_7613:
	sbc [hl]                                         ; $7613: $9e
	db $10                                           ; $7614: $10
	ld hl, $4c22                                     ; $7615: $21 $22 $4c
	sub b                                            ; $7618: $90
	rlca                                             ; $7619: $07
	ld a, d                                          ; $761a: $7a
	or e                                             ; $761b: $b3
	adc e                                            ; $761c: $8b
	call z, $262a                                    ; $761d: $cc $2a $26
	inc c                                            ; $7620: $0c
	ld hl, sp-$40                                    ; $7621: $f8 $c0
	nop                                              ; $7623: $00
	ld [hl], e                                       ; $7624: $73
	adc h                                            ; $7625: $8c
	ld [de], a                                       ; $7626: $12
	ld b, d                                          ; $7627: $42
	add h                                            ; $7628: $84
	xor b                                            ; $7629: $a8
	ld e, b                                          ; $762a: $58
	xor b                                            ; $762b: $a8
	ld e, b                                          ; $762c: $58
	xor h                                            ; $762d: $ac
	ld e, h                                          ; $762e: $5c
	xor h                                            ; $762f: $ac
	ld e, h                                          ; $7630: $5c
	reti                                             ; $7631: $d9


	rst $38                                          ; $7632: $ff
	sbc b                                            ; $7633: $98
	ld [hl], b                                       ; $7634: $70
	jr c, jr_055_7653                                ; $7635: $38 $1c

	ld c, $06                                        ; $7637: $0e $06
	inc bc                                           ; $7639: $03
	ld bc, $d04a                                     ; $763a: $01 $4a $d0

jr_055_763d:
	ld a, [hl]                                       ; $763d: $7e
	daa                                              ; $763e: $27
	jp c, $9aff                                      ; $763f: $da $ff $9a

	rst AddAOntoHL                                          ; $7642: $ef
	ld bc, $050a                                     ; $7643: $01 $0a $05
	ld [bc], a                                       ; $7646: $02
	ld [hl], a                                       ; $7647: $77
	ld e, c                                          ; $7648: $59
	reti                                             ; $7649: $d9


	rst $38                                          ; $764a: $ff
	ld a, [hl]                                       ; $764b: $7e
	add e                                            ; $764c: $83
	sbc c                                            ; $764d: $99
	ld d, a                                          ; $764e: $57
	cp a                                             ; $764f: $bf
	ld e, [hl]                                       ; $7650: $5e
	dec l                                            ; $7651: $2d
	rra                                              ; $7652: $1f

jr_055_7653:
	rrca                                             ; $7653: $0f
	sbc $ff                                          ; $7654: $de $ff
	db $dd                                           ; $7656: $dd
	ld hl, sp-$6c                                    ; $7657: $f8 $94
	db $fd                                           ; $7659: $fd
	ld e, a                                          ; $765a: $5f
	rst $38                                          ; $765b: $ff
	cp $f5                                           ; $765c: $fe $f5
	xor e                                            ; $765e: $ab
	ld a, a                                          ; $765f: $7f
	db $fc                                           ; $7660: $fc
	ldh a, [$fc]                                     ; $7661: $f0 $fc
	ldh a, [$78]                                     ; $7663: $f0 $78
	or e                                             ; $7665: $b3
	sub l                                            ; $7666: $95
	inc bc                                           ; $7667: $03
	rra                                              ; $7668: $1f
	cp $d4                                           ; $7669: $fe $d4
	cp $f0                                           ; $766b: $fe $f0
	ld e, d                                          ; $766d: $5a
	rst $38                                          ; $766e: $ff
	rst $38                                          ; $766f: $ff
	inc bc                                           ; $7670: $03
	ei                                               ; $7671: $fb
	sub h                                            ; $7672: $94
	db $fc                                           ; $7673: $fc
	rrca                                             ; $7674: $0f
	ld bc, $152a                                     ; $7675: $01 $2a $15
	ld l, e                                          ; $7678: $6b
	rst $38                                          ; $7679: $ff
	rst $38                                          ; $767a: $ff

jr_055_767b:
	rst SubAFromHL                                          ; $767b: $d7
	cp $fc                                           ; $767c: $fe $fc
	ld a, [$a86b]                                    ; $767e: $fa $6b $a8
	ld a, [hl]                                       ; $7681: $7e
	jr jr_055_76fc                                   ; $7682: $18 $78

	xor c                                            ; $7684: $a9
	db $dd                                           ; $7685: $dd
	ld bc, $0097                                     ; $7686: $01 $97 $00
	rlca                                             ; $7689: $07
	rst JumpTable                                          ; $768a: $c7
	add e                                            ; $768b: $83
	add e                                            ; $768c: $83
	pop hl                                           ; $768d: $e1
	pop af                                           ; $768e: $f1
	pop bc                                           ; $768f: $c1
	sbc $f8                                          ; $7690: $de $f8
	ld l, [hl]                                       ; $7692: $6e
	ld a, [hl]                                       ; $7693: $7e
	rst SubAFromDE                                          ; $7694: $df
	db $f4                                           ; $7695: $f4
	sbc c                                            ; $7696: $99
	ld a, [$0eca]                                    ; $7697: $fa $ca $0e
	ccf                                              ; $769a: $3f
	rst $38                                          ; $769b: $ff
	db $fd                                           ; $769c: $fd
	halt                                             ; $769d: $76
	and d                                            ; $769e: $a2
	sub e                                            ; $769f: $93
	scf                                              ; $76a0: $37
	rst JumpTable                                          ; $76a1: $c7
	ld bc, $9f02                                     ; $76a2: $01 $02 $9f
	adc a                                            ; $76a5: $8f
	rrca                                             ; $76a6: $0f
	ld c, a                                          ; $76a7: $4f
	ld b, a                                          ; $76a8: $47
	daa                                              ; $76a9: $27
	daa                                              ; $76aa: $27
	sub d                                            ; $76ab: $92
	reti                                             ; $76ac: $d9


	rst $38                                          ; $76ad: $ff
	ld a, [hl]                                       ; $76ae: $7e
	cp d                                             ; $76af: $ba
	ld a, [hl]                                       ; $76b0: $7e
	add c                                            ; $76b1: $81
	sub a                                            ; $76b2: $97
	sbc a                                            ; $76b3: $9f
	sub a                                            ; $76b4: $97
	sub l                                            ; $76b5: $95
	ld c, l                                          ; $76b6: $4d
	nop                                              ; $76b7: $00
	add b                                            ; $76b8: $80
	ldh [$f8], a                                     ; $76b9: $e0 $f8
	ld [hl], a                                       ; $76bb: $77
	ret nc                                           ; $76bc: $d0

	ld a, [hl]                                       ; $76bd: $7e
	db $dd                                           ; $76be: $dd
	ld a, [hl]                                       ; $76bf: $7e
	or c                                             ; $76c0: $b1
	sbc e                                            ; $76c1: $9b
	pop bc                                           ; $76c2: $c1
	ei                                               ; $76c3: $fb
	rst $38                                          ; $76c4: $ff
	ld b, c                                          ; $76c5: $41
	db $fc                                           ; $76c6: $fc
	adc d                                            ; $76c7: $8a

jr_055_76c8:
	pop bc                                           ; $76c8: $c1
	rst $38                                          ; $76c9: $ff
	rst $38                                          ; $76ca: $ff
	inc e                                            ; $76cb: $1c
	inc a                                            ; $76cc: $3c
	ld a, b                                          ; $76cd: $78
	ld hl, sp-$10                                    ; $76ce: $f8 $f0
	ldh a, [$e0]                                     ; $76d0: $f0 $e0
	ldh [$08], a                                     ; $76d2: $e0 $08
	jr jr_055_770e                                   ; $76d4: $18 $38

	ld [hl], b                                       ; $76d6: $70
	ldh a, [$e0]                                     ; $76d7: $f0 $e0
	ret nz                                           ; $76d9: $c0

	ret nz                                           ; $76da: $c0

	rst $38                                          ; $76db: $ff
	ld a, a                                          ; $76dc: $7f
	ld [hl], d                                       ; $76dd: $72
	ld e, [hl]                                       ; $76de: $5e
	ld a, h                                          ; $76df: $7c
	jr c, @+$7f                                      ; $76e0: $38 $7d

	ret c                                            ; $76e2: $d8

	ld [hl], a                                       ; $76e3: $77
	adc a                                            ; $76e4: $8f
	sub [hl]                                         ; $76e5: $96
	nop                                              ; $76e6: $00
	di                                               ; $76e7: $f3
	ld [hl], b                                       ; $76e8: $70
	jr nc, jr_055_767b                               ; $76e9: $30 $90

	sub b                                            ; $76eb: $90
	sbc b                                            ; $76ec: $98
	ret                                              ; $76ed: $c9


	rst GetHLinHL                                          ; $76ee: $cf
	ld [hl], l                                       ; $76ef: $75
	sbc b                                            ; $76f0: $98
	ld a, [hl]                                       ; $76f1: $7e
	ld c, b                                          ; $76f2: $48
	sub b                                            ; $76f3: $90
	adc a                                            ; $76f4: $8f
	add a                                            ; $76f5: $87
	pop af                                           ; $76f6: $f1
	ld de, $6723                                     ; $76f7: $11 $23 $67
	pop bc                                           ; $76fa: $c1
	add b                                            ; $76fb: $80

jr_055_76fc:
	ret nz                                           ; $76fc: $c0

	ld sp, $f1f0                                     ; $76fd: $31 $f0 $f1
	pop hl                                           ; $7700: $e1
	pop bc                                           ; $7701: $c1
	ret nz                                           ; $7702: $c0

	ld a, e                                          ; $7703: $7b
	dec a                                            ; $7704: $3d
	add b                                            ; $7705: $80
	di                                               ; $7706: $f3
	ld h, a                                          ; $7707: $67
	adc h                                            ; $7708: $8c
	jr c, jr_055_777c                                ; $7709: $38 $71

	inc de                                           ; $770b: $13
	ld b, $0f                                        ; $770c: $06 $0f

jr_055_770e:
	pop hl                                           ; $770e: $e1
	jp nz, $0884                                     ; $770f: $c2 $84 $08

	db $10                                           ; $7712: $10
	ld bc, $0703                                     ; $7713: $01 $03 $07
	jr jr_055_76c8                                   ; $7716: $18 $b0

	ld l, b                                          ; $7718: $68
	call nz, $338f                                   ; $7719: $c4 $8f $33
	rst AddAOntoHL                                          ; $771c: $ef
	sbc h                                            ; $771d: $9c
	ld [$3810], sp                                   ; $771e: $08 $10 $38
	ld h, h                                          ; $7721: $64
	rst GetHLinHL                                          ; $7722: $cf
	or c                                             ; $7723: $b1
	jp nz, $0c9e                                     ; $7724: $c2 $9e $0c

	halt                                             ; $7727: $76
	call nz, $bc7a                                   ; $7728: $c4 $7a $bc
	sbc [hl]                                         ; $772b: $9e
	ld d, b                                          ; $772c: $50
	dec h                                            ; $772d: $25
	and b                                            ; $772e: $a0
	sub h                                            ; $772f: $94
	ld h, b                                          ; $7730: $60
	jr nc, jr_055_774b                               ; $7731: $30 $18

	inc c                                            ; $7733: $0c
	ld c, $06                                        ; $7734: $0e $06
	rlca                                             ; $7736: $07
	inc bc                                           ; $7737: $03
	rst FarCall                                          ; $7738: $f7
	ei                                               ; $7739: $fb
	db $fd                                           ; $773a: $fd
	ld [hl], a                                       ; $773b: $77
	ld h, c                                          ; $773c: $61
	ld h, a                                          ; $773d: $67
	ldh [$9e], a                                     ; $773e: $e0 $9e
	add b                                            ; $7740: $80
	ld l, l                                          ; $7741: $6d
	pop af                                           ; $7742: $f1
	sbc h                                            ; $7743: $9c
	cp a                                             ; $7744: $bf
	rst SubAFromDE                                          ; $7745: $df
	ld b, $de                                        ; $7746: $06 $de
	dec b                                            ; $7748: $05
	sbc e                                            ; $7749: $9b
	inc c                                            ; $774a: $0c

jr_055_774b:
	ld a, [bc]                                       ; $774b: $0a
	dec bc                                           ; $774c: $0b
	inc bc                                           ; $774d: $03
	ld a, c                                          ; $774e: $79
	sub l                                            ; $774f: $95
	ld [hl], e                                       ; $7750: $73
	ldh [$7f], a                                     ; $7751: $e0 $7f
	ld [hl-], a                                      ; $7753: $32
	sub h                                            ; $7754: $94
	db $ec                                           ; $7755: $ec
	ret c                                            ; $7756: $d8

	ret c                                            ; $7757: $d8

	sbc c                                            ; $7758: $99
	or c                                             ; $7759: $b1
	inc sp                                           ; $775a: $33
	rrca                                             ; $775b: $0f
	inc bc                                           ; $775c: $03
	db $10                                           ; $775d: $10
	jr nz, jr_055_77c0                               ; $775e: $20 $60

	ld a, e                                          ; $7760: $7b
	ld d, b                                          ; $7761: $50
	ld a, d                                          ; $7762: $7a
	add l                                            ; $7763: $85
	sbc l                                            ; $7764: $9d
	ld h, b                                          ; $7765: $60
	ldh a, [$7a]                                     ; $7766: $f0 $7a
	or $7f                                           ; $7768: $f6 $7f
	add sp, $7f                                      ; $776a: $e8 $7f
	jp nc, $fd7e                                     ; $776c: $d2 $7e $fd

	rst SubAFromDE                                          ; $776f: $df
	rlca                                             ; $7770: $07
	sbc [hl]                                         ; $7771: $9e
	dec sp                                           ; $7772: $3b
	ld a, d                                          ; $7773: $7a
	ld hl, sp+$7f                                    ; $7774: $f8 $7f
	ld b, l                                          ; $7776: $45
	ld a, [hl]                                       ; $7777: $7e
	ld hl, sp+$7f                                    ; $7778: $f8 $7f
	xor b                                            ; $777a: $a8
	ld a, d                                          ; $777b: $7a

jr_055_777c:
	sbc $76                                          ; $777c: $de $76

Call_055_777e:
	inc e                                            ; $777e: $1c
	sub d                                            ; $777f: $92
	ld hl, sp-$1f                                    ; $7780: $f8 $e1
	add a                                            ; $7782: $87
	inc e                                            ; $7783: $1c
	ld a, b                                          ; $7784: $78
	rst $38                                          ; $7785: $ff
	db $d3                                           ; $7786: $d3
	nop                                              ; $7787: $00
	ld bc, $1806                                     ; $7788: $01 $06 $18
	ld h, b                                          ; $778b: $60
	add b                                            ; $778c: $80
	ld a, d                                          ; $778d: $7a
	ld a, [$a975]                                    ; $778e: $fa $75 $a9
	ld a, l                                          ; $7791: $7d
	ld l, h                                          ; $7792: $6c
	ld a, d                                          ; $7793: $7a
	nop                                              ; $7794: $00
	ld [hl], a                                       ; $7795: $77
	rla                                              ; $7796: $17
	rst SubAFromDE                                          ; $7797: $df
	ccf                                              ; $7798: $3f
	ld l, a                                          ; $7799: $6f
	ld hl, sp-$21                                    ; $779a: $f8 $df
	rra                                              ; $779c: $1f
	ld a, b                                          ; $779d: $78
	ld h, l                                          ; $779e: $65
	ld a, h                                          ; $779f: $7c
	db $eb                                           ; $77a0: $eb
	sbc b                                            ; $77a1: $98
	ldh [$f2], a                                     ; $77a2: $e0 $f2
	push af                                          ; $77a4: $f5
	jp nc, $f9e9                                     ; $77a5: $d2 $e9 $f9

	ld hl, sp+$76                                    ; $77a8: $f8 $76
	and a                                            ; $77aa: $a7
	ld [hl], e                                       ; $77ab: $73
	or d                                             ; $77ac: $b2
	ld a, d                                          ; $77ad: $7a
	jr jr_055_782b                                   ; $77ae: $18 $7b

	ldh [c], a                                       ; $77b0: $e2
	sub l                                            ; $77b1: $95
	cp a                                             ; $77b2: $bf
	sbc a                                            ; $77b3: $9f
	ld c, a                                          ; $77b4: $4f
	ld b, [hl]                                       ; $77b5: $46
	and h                                            ; $77b6: $a4
	call $e5c5                                       ; $77b7: $cd $c5 $e5
	ldh [c], a                                       ; $77ba: $e2
	ldh a, [$79]                                     ; $77bb: $f0 $79
	jp c, Jump_055_4797                              ; $77bd: $da $97 $47

jr_055_77c0:
	ret                                              ; $77c0: $c9


	pop af                                           ; $77c1: $f1
	pop de                                           ; $77c2: $d1
	db $e3                                           ; $77c3: $e3
	ld h, e                                          ; $77c4: $63
	inc hl                                           ; $77c5: $23
	inc de                                           ; $77c6: $13
	db $db                                           ; $77c7: $db
	rst $38                                          ; $77c8: $ff
	rst SubAFromDE                                          ; $77c9: $df
	cp $75                                           ; $77ca: $fe $75
	dec sp                                           ; $77cc: $3b
	ld a, a                                          ; $77cd: $7f
	xor [hl]                                         ; $77ce: $ae
	rst SubAFromDE                                          ; $77cf: $df
	ld hl, sp-$22                                    ; $77d0: $f8 $de
	ret nz                                           ; $77d2: $c0

	rst SubAFromDE                                          ; $77d3: $df
	ld b, b                                          ; $77d4: $40
	cp $75                                           ; $77d5: $fe $75
	inc e                                            ; $77d7: $1c
	rst SubAFromDE                                          ; $77d8: $df
	rlca                                             ; $77d9: $07
	sbc l                                            ; $77da: $9d

jr_055_77db:
	rrca                                             ; $77db: $0f
	ld e, $fd                                        ; $77dc: $1e $fd
	sbc $01                                          ; $77de: $de $01
	sbc l                                            ; $77e0: $9d
	rlca                                             ; $77e1: $07
	jp $c0de                                         ; $77e2: $c3 $de $c0


	db $dd                                           ; $77e5: $dd
	ld h, b                                          ; $77e6: $60
	db $dd                                           ; $77e7: $dd
	add b                                            ; $77e8: $80
	db $dd                                           ; $77e9: $dd
	ret nz                                           ; $77ea: $c0

	sbc h                                            ; $77eb: $9c
	adc c                                            ; $77ec: $89
	add h                                            ; $77ed: $84
	ld b, d                                          ; $77ee: $42
	ld a, e                                          ; $77ef: $7b
	reti                                             ; $77f0: $d9


	ld a, a                                          ; $77f1: $7f
	ld [hl], e                                       ; $77f2: $73
	ld sp, hl                                        ; $77f3: $f9
	sub a                                            ; $77f4: $97
	ld e, $84                                        ; $77f5: $1e $84
	ld b, b                                          ; $77f7: $40
	ld hl, $0a13                                     ; $77f8: $21 $13 $0a
	ld b, $04                                        ; $77fb: $06 $04
	ld [hl], e                                       ; $77fd: $73
	ret nc                                           ; $77fe: $d0

	sbc d                                            ; $77ff: $9a
	inc bc                                           ; $7800: $03
	ld [bc], a                                       ; $7801: $02
	ld b, $30                                        ; $7802: $06 $30
	ld h, b                                          ; $7804: $60
	halt                                             ; $7805: $76
	xor d                                            ; $7806: $aa
	rst $38                                          ; $7807: $ff
	sbc [hl]                                         ; $7808: $9e
	jr jr_055_787a                                   ; $7809: $18 $6f

	rst FarCall                                          ; $780b: $f7
	sub a                                            ; $780c: $97
	ld [$50a8], sp                                   ; $780d: $08 $a8 $50
	and b                                            ; $7810: $a0
	ret nz                                           ; $7811: $c0

	ret nz                                           ; $7812: $c0

	jr c, jr_055_77db                                ; $7813: $38 $c6

	ld a, e                                          ; $7815: $7b
	add [hl]                                         ; $7816: $86
	sbc $ff                                          ; $7817: $de $ff
	sbc h                                            ; $7819: $9c
	ccf                                              ; $781a: $3f
	rst JumpTable                                          ; $781b: $c7
	add hl, sp                                       ; $781c: $39
	ld c, l                                          ; $781d: $4d
	add sp, $79                                      ; $781e: $e8 $79
	add $70                                          ; $7820: $c6 $70
	db $ec                                           ; $7822: $ec
	ld e, [hl]                                       ; $7823: $5e
	or b                                             ; $7824: $b0
	ld a, e                                          ; $7825: $7b
	dec sp                                           ; $7826: $3b
	ld a, [hl]                                       ; $7827: $7e
	xor [hl]                                         ; $7828: $ae
	sbc h                                            ; $7829: $9c
	inc b                                            ; $782a: $04

jr_055_782b:
	ld [bc], a                                       ; $782b: $02
	ld bc, $ffd9                                     ; $782c: $01 $d9 $ff
	sub a                                            ; $782f: $97
	ld [bc], a                                       ; $7830: $02
	ld de, $2811                                     ; $7831: $11 $11 $28
	inc [hl]                                         ; $7834: $34
	jr z, jr_055_786b                                ; $7835: $28 $34

	dec de                                           ; $7837: $1b
	ld [hl], d                                       ; $7838: $72
	jp $ffde                                         ; $7839: $c3 $de $ff


	sbc h                                            ; $783c: $9c
	or e                                             ; $783d: $b3
	ld [hl], a                                       ; $783e: $77
	ld [hl], a                                       ; $783f: $77
	db $dd                                           ; $7840: $dd
	cp a                                             ; $7841: $bf
	sbc [hl]                                         ; $7842: $9e
	ld a, a                                          ; $7843: $7f
	ld a, e                                          ; $7844: $7b
	ld d, d                                          ; $7845: $52
	sbc [hl]                                         ; $7846: $9e
	ldh [$de], a                                     ; $7847: $e0 $de
	and b                                            ; $7849: $a0
	sbc e                                            ; $784a: $9b
	ld b, b                                          ; $784b: $40
	db $fc                                           ; $784c: $fc
	db $fd                                           ; $784d: $fd
	db $fd                                           ; $784e: $fd
	sbc $fb                                          ; $784f: $de $fb
	rst SubAFromDE                                          ; $7851: $df
	rst $38                                          ; $7852: $ff
	ld a, [hl]                                       ; $7853: $7e
	db $10                                           ; $7854: $10
	ld a, a                                          ; $7855: $7f
	ld a, h                                          ; $7856: $7c
	rst SubAFromDE                                          ; $7857: $df
	inc b                                            ; $7858: $04
	rst $38                                          ; $7859: $ff
	sub a                                            ; $785a: $97
	sub l                                            ; $785b: $95
	ld [$eaf5], a                                    ; $785c: $ea $f5 $ea
	rst GetHLinHL                                          ; $785f: $cf
	push bc                                          ; $7860: $c5
	add a                                            ; $7861: $87
	adc a                                            ; $7862: $8f
	halt                                             ; $7863: $76
	rst $38                                          ; $7864: $ff
	ld a, a                                          ; $7865: $7f
	nop                                              ; $7866: $00
	rst $38                                          ; $7867: $ff
	sub [hl]                                         ; $7868: $96
	ld l, b                                          ; $7869: $68
	cp l                                             ; $786a: $bd

jr_055_786b:
	ld e, a                                          ; $786b: $5f
	cp a                                             ; $786c: $bf
	ld e, a                                          ; $786d: $5f
	xor [hl]                                         ; $786e: $ae
	cp $bf                                           ; $786f: $fe $bf
	ret nz                                           ; $7871: $c0

	ld [hl], h                                       ; $7872: $74
	ld d, e                                          ; $7873: $53
	sub h                                            ; $7874: $94
	ld sp, hl                                        ; $7875: $f9
	db $fd                                           ; $7876: $fd
	ld a, h                                          ; $7877: $7c
	db $fc                                           ; $7878: $fc
	ld a, [hl]                                       ; $7879: $7e

jr_055_787a:
	rst $38                                          ; $787a: $ff
	rst $38                                          ; $787b: $ff
	dec a                                            ; $787c: $3d
	ld e, $1f                                        ; $787d: $1e $1f
	ld a, $de                                        ; $787f: $3e $de
	rra                                              ; $7881: $1f
	adc a                                            ; $7882: $8f
	rrca                                             ; $7883: $0f
	rst GetHLinHL                                          ; $7884: $cf
	cpl                                              ; $7885: $2f
	rst FarCall                                          ; $7886: $f7
	rst FarCall                                          ; $7887: $f7
	rra                                              ; $7888: $1f
	rrca                                             ; $7889: $0f
	adc a                                            ; $788a: $8f
	rlca                                             ; $788b: $07
	rlca                                             ; $788c: $07
	add e                                            ; $788d: $83
	ld b, e                                          ; $788e: $43
	add l                                            ; $788f: $85
	cp $ff                                           ; $7890: $fe $ff
	cp $7a                                           ; $7892: $fe $7a
	ccf                                              ; $7894: $3f
	ld a, a                                          ; $7895: $7f
	cp $7d                                           ; $7896: $fe $7d
	ld d, [hl]                                       ; $7898: $56
	adc h                                            ; $7899: $8c
	ld a, a                                          ; $789a: $7f
	xor d                                            ; $789b: $aa
	ld d, [hl]                                       ; $789c: $56
	xor d                                            ; $789d: $aa
	sub $fe                                          ; $789e: $d6 $fe
	add b                                            ; $78a0: $80
	nop                                              ; $78a1: $00
	add c                                            ; $78a2: $81
	ld d, [hl]                                       ; $78a3: $56
	xor d                                            ; $78a4: $aa
	ld d, [hl]                                       ; $78a5: $56
	xor [hl]                                         ; $78a6: $ae
	jp c, $b0f8                                      ; $78a7: $da $f8 $b0

	jr @+$0e                                         ; $78aa: $18 $0c

	ld [bc], a                                       ; $78ac: $02
	ld [hl], a                                       ; $78ad: $77
	ld h, b                                          ; $78ae: $60
	ld a, [hl]                                       ; $78af: $7e
	cp d                                             ; $78b0: $ba
	call c, Call_055_7e9f                            ; $78b1: $dc $9f $7e
	ld [hl], $de                                     ; $78b4: $36 $de
	inc bc                                           ; $78b6: $03
	sbc $01                                          ; $78b7: $de $01
	halt                                             ; $78b9: $76
	ld sp, $6c77                                     ; $78ba: $31 $77 $6c
	rst SubAFromDE                                          ; $78bd: $df
	ld hl, sp-$21                                    ; $78be: $f8 $df
	ld sp, hl                                        ; $78c0: $f9
	sbc h                                            ; $78c1: $9c
	ei                                               ; $78c2: $fb
	inc sp                                           ; $78c3: $33
	sub e                                            ; $78c4: $93
	ld [hl], a                                       ; $78c5: $77
	inc c                                            ; $78c6: $0c
	adc a                                            ; $78c7: $8f
	ret nz                                           ; $78c8: $c0

	jr nz, jr_055_78db                               ; $78c9: $20 $10

	nop                                              ; $78cb: $00
	nop                                              ; $78cc: $00
	ld a, $e6                                        ; $78cd: $3e $e6
	add $8c                                          ; $78cf: $c6 $8c
	adc h                                            ; $78d1: $8c
	inc e                                            ; $78d2: $1c
	jr jr_055_78ed                                   ; $78d3: $18 $18

	inc de                                           ; $78d5: $13
	inc hl                                           ; $78d6: $23
	ld b, e                                          ; $78d7: $43
	halt                                             ; $78d8: $76

jr_055_78d9:
	cp b                                             ; $78d9: $b8
	sbc h                                            ; $78da: $9c

jr_055_78db:
	rrca                                             ; $78db: $0f
	ld [hl], b                                       ; $78dc: $70
	ld a, b                                          ; $78dd: $78
	ld [hl], h                                       ; $78de: $74
	add hl, sp                                       ; $78df: $39
	ld a, a                                          ; $78e0: $7f
	halt                                             ; $78e1: $76
	halt                                             ; $78e2: $76
	ld h, d                                          ; $78e3: $62
	halt                                             ; $78e4: $76
	jr jr_055_7965                                   ; $78e5: $18 $7e

	inc [hl]                                         ; $78e7: $34
	ld a, c                                          ; $78e8: $79
	ld d, c                                          ; $78e9: $51
	ld a, d                                          ; $78ea: $7a
	adc a                                            ; $78eb: $8f
	ld sp, hl                                        ; $78ec: $f9

jr_055_78ed:
	sbc e                                            ; $78ed: $9b
	inc c                                            ; $78ee: $0c
	inc e                                            ; $78ef: $1c

Call_055_78f0:
	inc [hl]                                         ; $78f0: $34
	inc h                                            ; $78f1: $24
	sbc $64                                          ; $78f2: $de $64
	sbc e                                            ; $78f4: $9b
	inc h                                            ; $78f5: $24
	ld b, $0e                                        ; $78f6: $06 $0e
	ld e, $dd                                        ; $78f8: $1e $dd
	ld a, $9e                                        ; $78fa: $3e $9e
	ccf                                              ; $78fc: $3f
	ld sp, hl                                        ; $78fd: $f9
	sub a                                            ; $78fe: $97
	inc d                                            ; $78ff: $14
	ld [$a814], sp                                   ; $7900: $08 $14 $a8
	call c, $ddaa                                    ; $7903: $dc $aa $dd
	cp [hl]                                          ; $7906: $be
	ld l, e                                          ; $7907: $6b
	ld [$bf9d], sp                                   ; $7908: $08 $9d $bf
	ld b, $6e                                        ; $790b: $06 $6e
	ret c                                            ; $790d: $d8

	sbc h                                            ; $790e: $9c
	ld e, a                                          ; $790f: $5f
	jr c, jr_055_78d9                                ; $7910: $38 $c7

	ld a, d                                          ; $7912: $7a
	dec b                                            ; $7913: $05
	sub c                                            ; $7914: $91
	pop af                                           ; $7915: $f1
	db $f4                                           ; $7916: $f4
	dec hl                                           ; $7917: $2b
	ccf                                              ; $7918: $3f
	rst JumpTable                                          ; $7919: $c7
	jr c, jr_055_7923                                ; $791a: $38 $07

	nop                                              ; $791c: $00
	ld c, $fb                                        ; $791d: $0e $fb
	call nc, $ca01                                   ; $791f: $d4 $01 $ca
	ccf                                              ; $7922: $3f

jr_055_7923:
	ld a, d                                          ; $7923: $7a
	or h                                             ; $7924: $b4
	ld a, a                                          ; $7925: $7f
	ld c, d                                          ; $7926: $4a
	ld a, d                                          ; $7927: $7a
	and e                                            ; $7928: $a3
	sub a                                            ; $7929: $97
	ret nz                                           ; $792a: $c0

	ccf                                              ; $792b: $3f
	nop                                              ; $792c: $00
	add b                                            ; $792d: $80
	nop                                              ; $792e: $00
	ld d, h                                          ; $792f: $54
	xor d                                            ; $7930: $aa
	rst $38                                          ; $7931: $ff
	ld h, [hl]                                       ; $7932: $66
	or h                                             ; $7933: $b4
	ld a, a                                          ; $7934: $7f
	ld hl, sp-$02                                    ; $7935: $f8 $fe
	sbc h                                            ; $7937: $9c
	sub [hl]                                         ; $7938: $96
	ld a, c                                          ; $7939: $79
	add a                                            ; $793a: $87
	ld [hl], a                                       ; $793b: $77
	db $e3                                           ; $793c: $e3
	rst SubAFromDE                                          ; $793d: $df
	cp $9c                                           ; $793e: $fe $9c
	ld sp, hl                                        ; $7940: $f9
	add [hl]                                         ; $7941: $86
	ld a, b                                          ; $7942: $78
	ld a, e                                          ; $7943: $7b
	ld e, e                                          ; $7944: $5b
	ld l, [hl]                                       ; $7945: $6e
	xor b                                            ; $7946: $a8
	sbc h                                            ; $7947: $9c
	ldh a, [rSB]                                     ; $7948: $f0 $01
	inc bc                                           ; $794a: $03
	ld [hl], d                                       ; $794b: $72
	ld e, e                                          ; $794c: $5b
	sbc l                                            ; $794d: $9d
	rrca                                             ; $794e: $0f
	cp $75                                           ; $794f: $fe $75
	sbc l                                            ; $7951: $9d
	ld a, e                                          ; $7952: $7b
	db $e3                                           ; $7953: $e3
	sbc l                                            ; $7954: $9d
	rst SubAFromBC                                          ; $7955: $e7
	rst GetHLinHL                                          ; $7956: $cf
	ld sp, hl                                        ; $7957: $f9
	sbc e                                            ; $7958: $9b
	adc a                                            ; $7959: $8f
	sbc a                                            ; $795a: $9f
	rra                                              ; $795b: $1f
	ccf                                              ; $795c: $3f
	ld [hl], a                                       ; $795d: $77
	rst GetHLinHL                                          ; $795e: $cf
	ld h, c                                          ; $795f: $61
	jr @-$67                                         ; $7960: $18 $97

	cp $ee                                           ; $7962: $fe $ee
	rst AddAOntoHL                                          ; $7964: $ef

jr_055_7965:
	rst GetHLinHL                                          ; $7965: $cf
	rst GetHLinHL                                          ; $7966: $cf
	add a                                            ; $7967: $87
	rlca                                             ; $7968: $07
	inc e                                            ; $7969: $1c
	ld [hl], l                                       ; $796a: $75
	or d                                             ; $796b: $b2
	ld [hl], h                                       ; $796c: $74
	or b                                             ; $796d: $b0
	sbc h                                            ; $796e: $9c
	ld h, c                                          ; $796f: $61
	ld hl, $7733                                     ; $7970: $21 $33 $77
	ldh [$7e], a                                     ; $7973: $e0 $7e
	ld [hl], a                                       ; $7975: $77
	sub c                                            ; $7976: $91
	ld a, a                                          ; $7977: $7f
	cp $b9                                           ; $7978: $fe $b9
	sbc b                                            ; $797a: $98
	sub a                                            ; $797b: $97
	sbc $f0                                          ; $797c: $de $f0
	ldh [rLCDC], a                                   ; $797e: $e0 $40
	di                                               ; $7980: $f3
	call z, Call_055_639c                            ; $7981: $cc $9c $63
	or [hl]                                          ; $7984: $b6
	sbc $ff                                          ; $7985: $de $ff
	adc d                                            ; $7987: $8a
	inc c                                            ; $7988: $0c
	ldh a, [$60]                                     ; $7989: $f0 $60
	add c                                            ; $798b: $81
	ld b, $f1                                        ; $798c: $06 $f1
	pop af                                           ; $798e: $f1
	and c                                            ; $798f: $a1
	ld de, $7519                                     ; $7990: $11 $19 $75
	sub e                                            ; $7993: $93
	ld de, $3bfb                                     ; $7994: $11 $fb $3b
	inc sp                                           ; $7997: $33
	inc de                                           ; $7998: $13
	dec de                                           ; $7999: $1b
	ld [hl], a                                       ; $799a: $77
	sub e                                            ; $799b: $93
	inc de                                           ; $799c: $13
	ld l, b                                          ; $799d: $68
	pop af                                           ; $799e: $f1
	sbc [hl]                                         ; $799f: $9e
	add b                                            ; $79a0: $80
	db $db                                           ; $79a1: $db
	rst GetHLinHL                                          ; $79a2: $cf
	rst SubAFromDE                                          ; $79a3: $df
	rst SubAFromBC                                          ; $79a4: $e7
	ld b, h                                          ; $79a5: $44
	ret nz                                           ; $79a6: $c0

	ld a, c                                          ; $79a7: $79
	adc c                                            ; $79a8: $89

jr_055_79a9:
	sbc d                                            ; $79a9: $9a
	ld h, b                                          ; $79aa: $60
	jr nz, @+$32                                     ; $79ab: $20 $30

	ld de, $751b                                     ; $79ad: $11 $1b $75
	and d                                            ; $79b0: $a2
	ld [hl], l                                       ; $79b1: $75
	ld [hl], h                                       ; $79b2: $74
	sbc $30                                          ; $79b3: $de $30

jr_055_79b5:
	rst SubAFromDE                                          ; $79b5: $df
	ld h, b                                          ; $79b6: $60
	ld a, b                                          ; $79b7: $78
	add sp, -$22                                     ; $79b8: $e8 $de
	rra                                              ; $79ba: $1f
	sbc $3f                                          ; $79bb: $de $3f
	sbc l                                            ; $79bd: $9d
	ld a, b                                          ; $79be: $78
	ld h, b                                          ; $79bf: $60
	ld l, c                                          ; $79c0: $69
	pop hl                                           ; $79c1: $e1
	ld [hl], e                                       ; $79c2: $73
	ret nc                                           ; $79c3: $d0

	sbc b                                            ; $79c4: $98
	db $fc                                           ; $79c5: $fc
	add b                                            ; $79c6: $80
	inc bc                                           ; $79c7: $03
	ld a, a                                          ; $79c8: $7f
	db $fc                                           ; $79c9: $fc
	db $fc                                           ; $79ca: $fc
	cp $71                                           ; $79cb: $fe $71
	rlca                                             ; $79cd: $07
	ld a, e                                          ; $79ce: $7b
	xor l                                            ; $79cf: $ad
	ld a, a                                          ; $79d0: $7f
	add $94                                          ; $79d1: $c6 $94
	jr nz, jr_055_79b5                               ; $79d3: $20 $e0

	ldh [$34], a                                     ; $79d5: $e0 $34
	inc d                                            ; $79d7: $14
	inc c                                            ; $79d8: $0c
	inc c                                            ; $79d9: $0c
	rlca                                             ; $79da: $07
	add [hl]                                         ; $79db: $86
	jp Jump_055_7ac1                                 ; $79dc: $c3 $c1 $7a


	ld sp, $07df                                     ; $79df: $31 $df $07
	ld a, e                                          ; $79e2: $7b
	ld e, [hl]                                       ; $79e3: $5e
	sbc e                                            ; $79e4: $9b
	nop                                              ; $79e5: $00
	rlca                                             ; $79e6: $07
	jr c, jr_055_79a9                                ; $79e7: $38 $c0

	db $fd                                           ; $79e9: $fd
	sbc l                                            ; $79ea: $9d
	ld a, a                                          ; $79eb: $7f
	cp a                                             ; $79ec: $bf
	ld [hl], e                                       ; $79ed: $73
	ld e, d                                          ; $79ee: $5a
	sbc e                                            ; $79ef: $9b
	rst $38                                          ; $79f0: $ff
	ld d, l                                          ; $79f1: $55
	xor d                                            ; $79f2: $aa
	ld e, a                                          ; $79f3: $5f
	ld [hl], a                                       ; $79f4: $77
	ld e, $9b                                        ; $79f5: $1e $9b
	ldh a, [$aa]                                     ; $79f7: $f0 $aa
	ld d, l                                          ; $79f9: $55
	and b                                            ; $79fa: $a0
	ld [hl], l                                       ; $79fb: $75
	ld e, [hl]                                       ; $79fc: $5e
	sbc [hl]                                         ; $79fd: $9e
	rrca                                             ; $79fe: $0f
	ld a, e                                          ; $79ff: $7b
	ldh a, [c]                                       ; $7a00: $f2
	sbc d                                            ; $7a01: $9a
	db $fc                                           ; $7a02: $fc
	ldh a, [hLCDCIntHandlerIdx]                                     ; $7a03: $f0 $81
	inc b                                            ; $7a05: $04
	db $10                                           ; $7a06: $10
	ld a, e                                          ; $7a07: $7b
	ldh a, [c]                                       ; $7a08: $f2
	adc a                                            ; $7a09: $8f
	inc bc                                           ; $7a0a: $03
	rrca                                             ; $7a0b: $0f
	ld a, [hl]                                       ; $7a0c: $7e
	ld hl, sp-$20                                    ; $7a0d: $f8 $e0
	rst $38                                          ; $7a0f: $ff
	rst $38                                          ; $7a10: $ff
	adc h                                            ; $7a11: $8c
	jr nc, jr_055_7a55                               ; $7a12: $30 $41

	inc bc                                           ; $7a14: $03
	rlca                                             ; $7a15: $07
	rlca                                             ; $7a16: $07
	nop                                              ; $7a17: $00
	nop                                              ; $7a18: $00
	ld [hl], b                                       ; $7a19: $70
	ld [hl], c                                       ; $7a1a: $71
	ld b, a                                          ; $7a1b: $47
	ld l, [hl]                                       ; $7a1c: $6e
	or h                                             ; $7a1d: $b4
	ld e, a                                          ; $7a1e: $5f
	nop                                              ; $7a1f: $00
	rst SubAFromDE                                          ; $7a20: $df
	db $fc                                           ; $7a21: $fc
	ld a, [hl]                                       ; $7a22: $7e
	ld d, b                                          ; $7a23: $50
	adc b                                            ; $7a24: $88
	pop af                                           ; $7a25: $f1
	db $e3                                           ; $7a26: $e3
	rst GetHLinHL                                          ; $7a27: $cf
	rst $38                                          ; $7a28: $ff
	inc bc                                           ; $7a29: $03
	inc bc                                           ; $7a2a: $03
	rlca                                             ; $7a2b: $07
	rrca                                             ; $7a2c: $0f
	ld c, $1c                                        ; $7a2d: $0e $1c
	jr nc, jr_055_7a31                               ; $7a2f: $30 $00

jr_055_7a31:
	rlca                                             ; $7a31: $07
	rrca                                             ; $7a32: $0f
	inc e                                            ; $7a33: $1c
	ld a, b                                          ; $7a34: $78
	ldh a, [$e1]                                     ; $7a35: $f0 $e1
	jp $f807                                         ; $7a37: $c3 $07 $f8


	ldh a, [$e0]                                     ; $7a3a: $f0 $e0
	ld [hl], d                                       ; $7a3c: $72
	cp l                                             ; $7a3d: $bd
	sbc l                                            ; $7a3e: $9d
	sbc a                                            ; $7a3f: $9f
	ccf                                              ; $7a40: $3f
	ld [hl], d                                       ; $7a41: $72
	pop de                                           ; $7a42: $d1
	ld e, [hl]                                       ; $7a43: $5e
	ret nc                                           ; $7a44: $d0

	ld a, a                                          ; $7a45: $7f
	sub h                                            ; $7a46: $94
	ld a, a                                          ; $7a47: $7f
	and b                                            ; $7a48: $a0
	ld a, a                                          ; $7a49: $7f
	rst SubAFromDE                                          ; $7a4a: $df

jr_055_7a4b:
	sbc [hl]                                         ; $7a4b: $9e
	rst JumpTable                                          ; $7a4c: $c7
	ld sp, hl                                        ; $7a4d: $f9
	sbc b                                            ; $7a4e: $98
	rrca                                             ; $7a4f: $0f
	rra                                              ; $7a50: $1f
	rla                                              ; $7a51: $17
	daa                                              ; $7a52: $27
	ld b, a                                          ; $7a53: $47
	add a                                            ; $7a54: $87

jr_055_7a55:
	add a                                            ; $7a55: $87
	ld a, e                                          ; $7a56: $7b
	and b                                            ; $7a57: $a0
	sub h                                            ; $7a58: $94
	ld [$3818], sp                                   ; $7a59: $08 $18 $38
	ld a, b                                          ; $7a5c: $78
	ld a, b                                          ; $7a5d: $78
	ld hl, sp-$02                                    ; $7a5e: $f8 $fe
	ldh a, [$cc]                                     ; $7a60: $f0 $cc
	db $e4                                           ; $7a62: $e4
	ldh [c], a                                       ; $7a63: $e2
	sbc $f0                                          ; $7a64: $de $f0
	sbc d                                            ; $7a66: $9a
	add b                                            ; $7a67: $80
	ld b, b                                          ; $7a68: $40
	ld b, c                                          ; $7a69: $41
	ld [hl+], a                                      ; $7a6a: $22
	jr c, jr_055_7a4b                                ; $7a6b: $38 $de

	db $10                                           ; $7a6d: $10
	ld sp, hl                                        ; $7a6e: $f9
	ld [hl], h                                       ; $7a6f: $74
	inc hl                                           ; $7a70: $23
	db $fd                                           ; $7a71: $fd
	sbc [hl]                                         ; $7a72: $9e
	db $10                                           ; $7a73: $10
	db $dd                                           ; $7a74: $dd
	jr nz, jr_055_7a55                               ; $7a75: $20 $de

	ld b, b                                          ; $7a77: $40
	sub a                                            ; $7a78: $97
	ld de, $2133                                     ; $7a79: $11 $33 $21
	ld [hl+], a                                      ; $7a7c: $22
	ld hl, $4562                                     ; $7a7d: $21 $62 $45
	ld c, d                                          ; $7a80: $4a
	sbc $80                                          ; $7a81: $de $80
	sbc $40                                          ; $7a83: $de $40
	sbc l                                            ; $7a85: $9d
	ld a, a                                          ; $7a86: $7f
	inc hl                                           ; $7a87: $23
	sbc $e7                                          ; $7a88: $de $e7
	rst SubAFromDE                                          ; $7a8a: $df
	ldh a, [$7b]                                     ; $7a8b: $f0 $7b
	and e                                            ; $7a8d: $a3
	ld e, [hl]                                       ; $7a8e: $5e
	ldh a, [c]                                       ; $7a8f: $f2
	ld a, a                                          ; $7a90: $7f
	ret nc                                           ; $7a91: $d0

	ld a, e                                          ; $7a92: $7b
	add a                                            ; $7a93: $87
	ld [hl], b                                       ; $7a94: $70
	ld d, b                                          ; $7a95: $50
	ld a, h                                          ; $7a96: $7c
	adc d                                            ; $7a97: $8a
	ld [hl], l                                       ; $7a98: $75
	ld a, b                                          ; $7a99: $78
	sbc l                                            ; $7a9a: $9d
	inc b                                            ; $7a9b: $04
	dec b                                            ; $7a9c: $05
	sbc $ff                                          ; $7a9d: $de $ff
	add [hl]                                         ; $7a9f: $86
	inc b                                            ; $7aa0: $04
	ret nz                                           ; $7aa1: $c0

	add b                                            ; $7aa2: $80
	add b                                            ; $7aa3: $80
	rrca                                             ; $7aa4: $0f
	ld a, $f1                                        ; $7aa5: $3e $f1
	rst $38                                          ; $7aa7: $ff
	ld a, [$9f47]                                    ; $7aa8: $fa $47 $9f
	cp a                                             ; $7aab: $bf
	rst $38                                          ; $7aac: $ff
	ldh a, [$c0]                                     ; $7aad: $f0 $c0
	sbc a                                            ; $7aaf: $9f
	ldh [rP1], a                                     ; $7ab0: $e0 $00
	rrca                                             ; $7ab2: $0f
	db $fc                                           ; $7ab3: $fc
	ret nz                                           ; $7ab4: $c0

	ld bc, $55ea                                     ; $7ab5: $01 $ea $55
	xor e                                            ; $7ab8: $ab
	ld a, d                                          ; $7ab9: $7a
	dec bc                                           ; $7aba: $0b
	rst $38                                          ; $7abb: $ff
	ld a, a                                          ; $7abc: $7f
	ldh a, [c]                                       ; $7abd: $f2
	ld a, d                                          ; $7abe: $7a
	nop                                              ; $7abf: $00
	sub [hl]                                         ; $7ac0: $96

Jump_055_7ac1:
	ld a, a                                          ; $7ac1: $7f
	rst GetHLinHL                                          ; $7ac2: $cf
	ld c, a                                          ; $7ac3: $4f
	adc a                                            ; $7ac4: $8f
	add a                                            ; $7ac5: $87
	rlca                                             ; $7ac6: $07
	ldh a, [rAUD1SWEEP]                              ; $7ac7: $f0 $10
	jr nc, jr_055_7b46                               ; $7ac9: $30 $7b

	ld [hl], d                                       ; $7acb: $72
	rst SubAFromDE                                          ; $7acc: $df
	db $fc                                           ; $7acd: $fc
	sbc [hl]                                         ; $7ace: $9e
	pop hl                                           ; $7acf: $e1
	ld [hl], c                                       ; $7ad0: $71
	ld [hl], d                                       ; $7ad1: $72
	rst SubAFromDE                                          ; $7ad2: $df
	db $fc                                           ; $7ad3: $fc
	ld sp, hl                                        ; $7ad4: $f9
	ld a, d                                          ; $7ad5: $7a
	xor d                                            ; $7ad6: $aa
	sbc [hl]                                         ; $7ad7: $9e
	ld l, a                                          ; $7ad8: $6f
	ld a, c                                          ; $7ad9: $79
	ld c, [hl]                                       ; $7ada: $4e
	sbc l                                            ; $7adb: $9d
	rra                                              ; $7adc: $1f
	rst $38                                          ; $7add: $ff
	ld a, d                                          ; $7ade: $7a
	sbc d                                            ; $7adf: $9a
	sbc e                                            ; $7ae0: $9b
	jr jr_055_7af3                                   ; $7ae1: $18 $10

	ld [$5104], sp                                   ; $7ae3: $08 $04 $51
	nop                                              ; $7ae6: $00
	rst SubAFromDE                                          ; $7ae7: $df
	ld [hl+], a                                      ; $7ae8: $22
	rst SubAFromDE                                          ; $7ae9: $df
	ld [hl], a                                       ; $7aea: $77
	sub [hl]                                         ; $7aeb: $96
	halt                                             ; $7aec: $76
	ld h, [hl]                                       ; $7aed: $66
	ld h, [hl]                                       ; $7aee: $66
	ld h, a                                          ; $7aef: $67
	ld [hl], a                                       ; $7af0: $77
	ld [hl], a                                       ; $7af1: $77
	ld [hl+], a                                      ; $7af2: $22

jr_055_7af3:
	ld [hl+], a                                      ; $7af3: $22
	daa                                              ; $7af4: $27
	ld [hl], a                                       ; $7af5: $77
	or $9e                                           ; $7af6: $f6 $9e
	ld h, e                                          ; $7af8: $63
	ld l, e                                          ; $7af9: $6b
	or $9d                                           ; $7afa: $f6 $9d
	ld h, l                                          ; $7afc: $65
	ld d, [hl]                                       ; $7afd: $56
	ld [hl], e                                       ; $7afe: $73

Call_055_7aff:
	or $7f                                           ; $7aff: $f6 $7f
	pop hl                                           ; $7b01: $e1
	sbc e                                            ; $7b02: $9b
	ld [hl], e                                       ; $7b03: $73
	ld h, l                                          ; $7b04: $65
	ld d, l                                          ; $7b05: $55
	ld d, e                                          ; $7b06: $53
	ld h, e                                          ; $7b07: $63
	or $9d                                           ; $7b08: $f6 $9d
	ld d, [hl]                                       ; $7b0a: $56
	scf                                              ; $7b0b: $37
	ld [hl], e                                       ; $7b0c: $73
	or $99                                           ; $7b0d: $f6 $99
	ld [hl], a                                       ; $7b0f: $77
	dec [hl]                                         ; $7b10: $35
	ld d, l                                          ; $7b11: $55
	ld d, l                                          ; $7b12: $55
	dec [hl]                                         ; $7b13: $35
	ld d, l                                          ; $7b14: $55
	sbc $22                                          ; $7b15: $de $22
	ld a, a                                          ; $7b17: $7f
	rst SubAFromHL                                          ; $7b18: $d7
	sbc l                                            ; $7b19: $9d
	ld [hl], $55                                     ; $7b1a: $36 $55
	sbc $44                                          ; $7b1c: $de $44
	db $dd                                           ; $7b1e: $dd
	ld [hl+], a                                      ; $7b1f: $22
	sbc h                                            ; $7b20: $9c
	scf                                              ; $7b21: $37
	ld [hl], e                                       ; $7b22: $73
	ld [hl], $6b                                     ; $7b23: $36 $6b
	or $9d                                           ; $7b25: $f6 $9d
	daa                                              ; $7b27: $27
	ld [hl], e                                       ; $7b28: $73
	db $dd                                           ; $7b29: $dd
	ld b, h                                          ; $7b2a: $44
	ld [hl], e                                       ; $7b2b: $73
	or $9e                                           ; $7b2c: $f6 $9e
	ld [hl], h                                       ; $7b2e: $74
	ld h, a                                          ; $7b2f: $67
	or $9d                                           ; $7b30: $f6 $9d
	ld [hl+], a                                      ; $7b32: $22
	inc h                                            ; $7b33: $24
	db $dd                                           ; $7b34: $dd
	ld b, h                                          ; $7b35: $44
	db $fc                                           ; $7b36: $fc
	add a                                            ; $7b37: $87
	db $db                                           ; $7b38: $db
	ld [$289d], sp                                   ; $7b39: $08 $9d $28
	db $eb                                           ; $7b3c: $eb
	db $db                                           ; $7b3d: $db
	rst $38                                          ; $7b3e: $ff
	sbc l                                            ; $7b3f: $9d
	inc e                                            ; $7b40: $1c
	rst $38                                          ; $7b41: $ff
	ei                                               ; $7b42: $fb
	sbc l                                            ; $7b43: $9d
	ld b, b                                          ; $7b44: $40
	ret nz                                           ; $7b45: $c0

jr_055_7b46:
	db $db                                           ; $7b46: $db
	rst $38                                          ; $7b47: $ff
	sbc l                                            ; $7b48: $9d
	ccf                                              ; $7b49: $3f
	rst $38                                          ; $7b4a: $ff
	reti                                             ; $7b4b: $d9


	ld l, b                                          ; $7b4c: $68
	reti                                             ; $7b4d: $d9


	ret nz                                           ; $7b4e: $c0

	sub a                                            ; $7b4f: $97
	nop                                              ; $7b50: $00
	ld bc, $0301                                     ; $7b51: $01 $01 $03
	inc bc                                           ; $7b54: $03
	rlca                                             ; $7b55: $07
	rlca                                             ; $7b56: $07
	rrca                                             ; $7b57: $0f
	ld sp, hl                                        ; $7b58: $f9
	reti                                             ; $7b59: $d9


	rst $38                                          ; $7b5a: $ff
	ld sp, hl                                        ; $7b5b: $f9
	sbc l                                            ; $7b5c: $9d
	db $f4                                           ; $7b5d: $f4
	ld hl, sp+$6f                                    ; $7b5e: $f8 $6f
	cp $d9                                           ; $7b60: $fe $d9
	ld a, a                                          ; $7b62: $7f
	sub a                                            ; $7b63: $97
	inc d                                            ; $7b64: $14
	dec l                                            ; $7b65: $2d
	ld a, [hl+]                                      ; $7b66: $2a
	ld d, d                                          ; $7b67: $52
	ld d, l                                          ; $7b68: $55
	ld d, l                                          ; $7b69: $55
	ld d, a                                          ; $7b6a: $57
	adc d                                            ; $7b6b: $8a
	db $dd                                           ; $7b6c: $dd
	rst $38                                          ; $7b6d: $ff
	rst SubAFromDE                                          ; $7b6e: $df
	cp $80                                           ; $7b6f: $fe $80
	db $fc                                           ; $7b71: $fc
	db $fd                                           ; $7b72: $fd
	sub l                                            ; $7b73: $95
	ld e, e                                          ; $7b74: $5b
	xor d                                            ; $7b75: $aa
	or [hl]                                          ; $7b76: $b6
	push af                                          ; $7b77: $f5
	call $beaf                                       ; $7b78: $cd $af $be
	xor $ac                                          ; $7b7b: $ee $ac
	ld e, l                                          ; $7b7d: $5d
	ld e, c                                          ; $7b7e: $59
	ld a, [de]                                       ; $7b7f: $1a
	ld [hl-], a                                      ; $7b80: $32
	ld [hl], b                                       ; $7b81: $70
	ld h, c                                          ; $7b82: $61
	ld h, a                                          ; $7b83: $67
	ld c, c                                          ; $7b84: $49
	sbc d                                            ; $7b85: $9a
	or l                                             ; $7b86: $b5
	ld h, a                                          ; $7b87: $67
	ld l, a                                          ; $7b88: $6f
	rst GetHLinHL                                          ; $7b89: $cf
	push de                                          ; $7b8a: $d5
	sbc a                                            ; $7b8b: $9f
	cp a                                             ; $7b8c: $bf
	ld [hl], a                                       ; $7b8d: $77
	ld l, [hl]                                       ; $7b8e: $6e
	call c, $dc80                                    ; $7b8f: $dc $80 $dc
	cp h                                             ; $7b92: $bc
	cp [hl]                                          ; $7b93: $be
	rst FarCall                                          ; $7b94: $f7
	res 2, h                                         ; $7b95: $cb $94
	xor e                                            ; $7b97: $ab
	or $fb                                           ; $7b98: $f6 $fb
	db $ed                                           ; $7b9a: $ed
	push hl                                          ; $7b9b: $e5
	ld sp, hl                                        ; $7b9c: $f9
	db $fc                                           ; $7b9d: $fc
	rst AddAOntoHL                                          ; $7b9e: $ef
	rst FarCall                                          ; $7b9f: $f7
	cp e                                             ; $7ba0: $bb
	cp l                                             ; $7ba1: $bd
	cp a                                             ; $7ba2: $bf
	cp [hl]                                          ; $7ba3: $be
	or c                                             ; $7ba4: $b1
	ld c, d                                          ; $7ba5: $4a
	or l                                             ; $7ba6: $b5
	ld e, h                                          ; $7ba7: $5c
	xor [hl]                                         ; $7ba8: $ae
	ld e, e                                          ; $7ba9: $5b
	dec l                                            ; $7baa: $2d
	sub d                                            ; $7bab: $92
	rst $38                                          ; $7bac: $ff
	db $fd                                           ; $7bad: $fd
	ld l, [hl]                                       ; $7bae: $6e
	or e                                             ; $7baf: $b3
	add b                                            ; $7bb0: $80
	reti                                             ; $7bb1: $d9


	db $ec                                           ; $7bb2: $ec
	or $ff                                           ; $7bb3: $f6 $ff
	db $10                                           ; $7bb5: $10
	xor b                                            ; $7bb6: $a8
	ld d, h                                          ; $7bb7: $54
	xor d                                            ; $7bb8: $aa
	ld c, a                                          ; $7bb9: $4f
	ld h, a                                          ; $7bba: $67
	or d                                             ; $7bbb: $b2
	db $d3                                           ; $7bbc: $d3
	rst $38                                          ; $7bbd: $ff
	rst SubAFromDE                                          ; $7bbe: $df
	rst AddAOntoHL                                          ; $7bbf: $ef
	ld [hl], a                                       ; $7bc0: $77
	or e                                             ; $7bc1: $b3
	sbc c                                            ; $7bc2: $99
	ld c, l                                          ; $7bc3: $4d
	inc l                                            ; $7bc4: $2c
	inc de                                           ; $7bc5: $13
	adc e                                            ; $7bc6: $8b
	ld h, [hl]                                       ; $7bc7: $66
	ld d, h                                          ; $7bc8: $54
	ld a, [hl+]                                      ; $7bc9: $2a
	ld a, [bc]                                       ; $7bca: $0a
	cp l                                             ; $7bcb: $bd
	or l                                             ; $7bcc: $b5
	cp $fe                                           ; $7bcd: $fe $fe
	db $dd                                           ; $7bcf: $dd
	ld a, a                                          ; $7bd0: $7f
	rst GetHLinHL                                          ; $7bd1: $cf
	sbc h                                            ; $7bd2: $9c
	rst FarCall                                          ; $7bd3: $f7
	db $d3                                           ; $7bd4: $d3
	db $db                                           ; $7bd5: $db
	db $dd                                           ; $7bd6: $dd
	inc d                                            ; $7bd7: $14
	sbc e                                            ; $7bd8: $9b
	dec [hl]                                         ; $7bd9: $35
	inc [hl]                                         ; $7bda: $34
	dec [hl]                                         ; $7bdb: $35
	inc h                                            ; $7bdc: $24
	ld [hl], e                                       ; $7bdd: $73
	sub b                                            ; $7bde: $90
	ld a, e                                          ; $7bdf: $7b
	cp $81                                           ; $7be0: $fe $81
	xor d                                            ; $7be2: $aa
	ld d, l                                          ; $7be3: $55
	xor e                                            ; $7be4: $ab
	ld d, l                                          ; $7be5: $55
	xor a                                            ; $7be6: $af
	ld d, l                                          ; $7be7: $55
	cp a                                             ; $7be8: $bf
	ld d, l                                          ; $7be9: $55
	ld d, l                                          ; $7bea: $55
	xor d                                            ; $7beb: $aa
	ld d, h                                          ; $7bec: $54
	xor d                                            ; $7bed: $aa
	ld d, b                                          ; $7bee: $50
	xor d                                            ; $7bef: $aa
	ld b, b                                          ; $7bf0: $40
	xor d                                            ; $7bf1: $aa
	xor e                                            ; $7bf2: $ab
	ld d, a                                          ; $7bf3: $57
	rst $38                                          ; $7bf4: $ff
	ld e, a                                          ; $7bf5: $5f
	rst $38                                          ; $7bf6: $ff
	ld a, a                                          ; $7bf7: $7f
	rst $38                                          ; $7bf8: $ff
	rst $38                                          ; $7bf9: $ff
	ld d, h                                          ; $7bfa: $54
	xor b                                            ; $7bfb: $a8
	nop                                              ; $7bfc: $00
	and b                                            ; $7bfd: $a0
	nop                                              ; $7bfe: $00

Call_055_7bff:
	add b                                            ; $7bff: $80
	ccf                                              ; $7c00: $3f
	ld b, b                                          ; $7c01: $40
	sbc l                                            ; $7c02: $9d
	db $ed                                           ; $7c03: $ed
	db $fd                                           ; $7c04: $fd
	ld a, e                                          ; $7c05: $7b
	cp $7b                                           ; $7c06: $fe $7b
	db $fd                                           ; $7c08: $fd
	sbc l                                            ; $7c09: $9d
	inc de                                           ; $7c0a: $13
	inc bc                                           ; $7c0b: $03
	ld a, e                                          ; $7c0c: $7b
	cp $7b                                           ; $7c0d: $fe $7b
	db $fd                                           ; $7c0f: $fd
	adc [hl]                                         ; $7c10: $8e
	ccf                                              ; $7c11: $3f
	cp a                                             ; $7c12: $bf
	ld a, $bd                                        ; $7c13: $3e $bd
	ld a, $bd                                        ; $7c15: $3e $bd
	ld a, [hl-]                                      ; $7c17: $3a
	or h                                             ; $7c18: $b4
	ret nc                                           ; $7c19: $d0

	ret nc                                           ; $7c1a: $d0

	pop de                                           ; $7c1b: $d1
	jp nc, $d2d1                                     ; $7c1c: $d2 $d1 $d2

	push de                                          ; $7c1f: $d5
	db $db                                           ; $7c20: $db
	ld [$bb7b], a                                    ; $7c21: $ea $7b $bb
	ld [hl], a                                       ; $7c24: $77
	push bc                                          ; $7c25: $c5
	sbc [hl]                                         ; $7c26: $9e
	dec d                                            ; $7c27: $15
	ld a, e                                          ; $7c28: $7b
	xor e                                            ; $7c29: $ab
	ld [hl], a                                       ; $7c2a: $77
	or l                                             ; $7c2b: $b5
	reti                                             ; $7c2c: $d9


	ld [$b847], sp                                   ; $7c2d: $08 $47 $b8
	reti                                             ; $7c30: $d9


	rst $38                                          ; $7c31: $ff
	ld b, [hl]                                       ; $7c32: $46
	ret nz                                           ; $7c33: $c0

	sbc b                                            ; $7c34: $98
	rrca                                             ; $7c35: $0f
	rra                                              ; $7c36: $1f
	rra                                              ; $7c37: $1f
	ccf                                              ; $7c38: $3f
	ccf                                              ; $7c39: $3f
	ld a, a                                          ; $7c3a: $7f
	ld a, a                                          ; $7c3b: $7f
	ld b, e                                          ; $7c3c: $43
	ret c                                            ; $7c3d: $d8

	ld sp, hl                                        ; $7c3e: $f9
	add b                                            ; $7c3f: $80
	rst FarCall                                          ; $7c40: $f7
	rst $38                                          ; $7c41: $ff
	ei                                               ; $7c42: $fb
	rst $38                                          ; $7c43: $ff
	rst FarCall                                          ; $7c44: $f7
	rst $38                                          ; $7c45: $ff
	rst AddAOntoHL                                          ; $7c46: $ef
	rst $38                                          ; $7c47: $ff
	ld a, a                                          ; $7c48: $7f
	ld a, h                                          ; $7c49: $7c
	ld a, e                                          ; $7c4a: $7b
	ld a, d                                          ; $7c4b: $7a
	ld [hl], a                                       ; $7c4c: $77
	halt                                             ; $7c4d: $76
	ld l, a                                          ; $7c4e: $6f
	ld l, d                                          ; $7c4f: $6a
	adc d                                            ; $7c50: $8a
	adc [hl]                                         ; $7c51: $8e
	sub l                                            ; $7c52: $95
	sub l                                            ; $7c53: $95
	sbc c                                            ; $7c54: $99
	db $db                                           ; $7c55: $db
	ret c                                            ; $7c56: $d8

	ret nc                                           ; $7c57: $d0

	db $fd                                           ; $7c58: $fd
	ld sp, hl                                        ; $7c59: $f9
	ld hl, sp-$08                                    ; $7c5a: $f8 $f8
	ldh a, [$b0]                                     ; $7c5c: $f0 $b0
	or e                                             ; $7c5e: $b3
	add b                                            ; $7c5f: $80
	or e                                             ; $7c60: $b3
	adc a                                            ; $7c61: $8f
	push bc                                          ; $7c62: $c5
	ld [hl], a                                       ; $7c63: $77
	daa                                              ; $7c64: $27
	dec bc                                           ; $7c65: $0b
	jp z, $0eee                                      ; $7c66: $ca $ee $0e

	ld h, c                                          ; $7c69: $61
	ld l, e                                          ; $7c6a: $6b
	jp z, $d6da                                      ; $7c6b: $ca $da $d6

	sub a                                            ; $7c6e: $97
	sub a                                            ; $7c6f: $97
	or a                                             ; $7c70: $b7
	inc l                                            ; $7c71: $2c
	inc a                                            ; $7c72: $3c
	ld e, [hl]                                       ; $7c73: $5e
	ld a, [hl]                                       ; $7c74: $7e
	cp $be                                           ; $7c75: $fe $be
	cp $f3                                           ; $7c77: $fe $f3
	halt                                             ; $7c79: $76
	ld h, [hl]                                       ; $7c7a: $66

Call_055_7c7b:
	ld h, d                                          ; $7c7b: $62
	jp nz, $c3c3                                     ; $7c7c: $c2 $c3 $c3

	sbc d                                            ; $7c7f: $9a

jr_055_7c80:
	add e                                            ; $7c80: $83
	db $fd                                           ; $7c81: $fd

jr_055_7c82:
	cp d                                             ; $7c82: $ba
	cp l                                             ; $7c83: $bd
	sbc [hl]                                         ; $7c84: $9e
	sbc $df                                          ; $7c85: $de $df
	rst SubAFromDE                                          ; $7c87: $df
	rst AddAOntoHL                                          ; $7c88: $ef
	sbc h                                            ; $7c89: $9c
	rst SubAFromBC                                          ; $7c8a: $e7
	db $e3                                           ; $7c8b: $e3
	pop af                                           ; $7c8c: $f1
	sbc $f0                                          ; $7c8d: $de $f0
	rst SubAFromDE                                          ; $7c8f: $df
	cp b                                             ; $7c90: $b8
	add b                                            ; $7c91: $80
	ld l, d                                          ; $7c92: $6a
	ld [hl], l                                       ; $7c93: $75
	cp e                                             ; $7c94: $bb
	ld a, l                                          ; $7c95: $7d
	cp e                                             ; $7c96: $bb
	sbc $fb                                          ; $7c97: $de $fb
	rst FarCall                                          ; $7c99: $f7
	ld e, a                                          ; $7c9a: $5f
	rst GetHLinHL                                          ; $7c9b: $cf
	rst SubAFromBC                                          ; $7c9c: $e7
	db $e3                                           ; $7c9d: $e3
	ld [hl], a                                       ; $7c9e: $77
	ccf                                              ; $7c9f: $3f
	inc a                                            ; $7ca0: $3c
	inc a                                            ; $7ca1: $3c
	sbc c                                            ; $7ca2: $99
	jr z, jr_055_7ce9                                ; $7ca3: $28 $44

	sub l                                            ; $7ca5: $95
	add e                                            ; $7ca6: $83
	ld c, d                                          ; $7ca7: $4a
	ld c, c                                          ; $7ca8: $49
	ld a, [hl+]                                      ; $7ca9: $2a
	ld h, $97                                        ; $7caa: $26 $97
	sbc e                                            ; $7cac: $9b
	set 5, l                                         ; $7cad: $cb $ed
	push hl                                          ; $7caf: $e5
	or $86                                           ; $7cb0: $f6 $86
	rst FarCall                                          ; $7cb2: $f7
	ld e, l                                          ; $7cb3: $5d
	ret c                                            ; $7cb4: $d8

	or [hl]                                          ; $7cb5: $b6
	ld l, h                                          ; $7cb6: $6c
	ld l, b                                          ; $7cb7: $68
	sbc c                                            ; $7cb8: $99
	sub d                                            ; $7cb9: $92
	ld b, d                                          ; $7cba: $42
	jp hl                                            ; $7cbb: $e9


	ld l, l                                          ; $7cbc: $6d
	ld l, h                                          ; $7cbd: $6c
	or [hl]                                          ; $7cbe: $b6
	or [hl]                                          ; $7cbf: $b6
	or $ff                                           ; $7cc0: $f6 $ff
	rst $38                                          ; $7cc2: $ff
	ld h, l                                          ; $7cc3: $65
	jp hl                                            ; $7cc4: $e9


	db $eb                                           ; $7cc5: $eb
	jp hl                                            ; $7cc6: $e9


	ld l, e                                          ; $7cc7: $6b
	ld a, c                                          ; $7cc8: $79
	ld [hl], e                                       ; $7cc9: $73
	dec [hl]                                         ; $7cca: $35
	ld a, d                                          ; $7ccb: $7a
	ld d, h                                          ; $7ccc: $54
	ld a, a                                          ; $7ccd: $7f
	cp $9b                                           ; $7cce: $fe $9b
	ld a, [hl]                                       ; $7cd0: $7e
	ld a, h                                          ; $7cd1: $7c
	ld a, d                                          ; $7cd2: $7a
	rst $38                                          ; $7cd3: $ff
	ld l, d                                          ; $7cd4: $6a
	ret nc                                           ; $7cd5: $d0

	sbc [hl]                                         ; $7cd6: $9e
	nop                                              ; $7cd7: $00

Call_055_7cd8:
	ld a, [hl+]                                      ; $7cd8: $2a
	ret nc                                           ; $7cd9: $d0

	ld b, a                                          ; $7cda: $47
	ldh a, [$7a]                                     ; $7cdb: $f0 $7a
	jp $c176                                         ; $7cdd: $c3 $76 $c1


	sbc [hl]                                         ; $7ce0: $9e
	db $ed                                           ; $7ce1: $ed
	ld a, d                                          ; $7ce2: $7a
	jp $c176                                         ; $7ce3: $c3 $76 $c1


	add [hl]                                         ; $7ce6: $86
	inc de                                           ; $7ce7: $13
	ld a, [hl-]                                      ; $7ce8: $3a

jr_055_7ce9:
	or h                                             ; $7ce9: $b4

Jump_055_7cea:
	ld a, [hl-]                                      ; $7cea: $3a
	or h                                             ; $7ceb: $b4
	jr nc, jr_055_7c82                               ; $7cec: $30 $94

	jr nc, jr_055_7c80                               ; $7cee: $30 $90

	push de                                          ; $7cf0: $d5
	db $db                                           ; $7cf1: $db
	push de                                          ; $7cf2: $d5
	db $db                                           ; $7cf3: $db
	rst SubAFromDE                                          ; $7cf4: $df
	ei                                               ; $7cf5: $fb
	rst SubAFromDE                                          ; $7cf6: $df
	rst $38                                          ; $7cf7: $ff
	add b                                            ; $7cf8: $80
	nop                                              ; $7cf9: $00
	dec b                                            ; $7cfa: $05
	nop                                              ; $7cfb: $00
	dec d                                            ; $7cfc: $15
	ld [bc], a                                       ; $7cfd: $02
	ld d, l                                          ; $7cfe: $55
	ld a, [bc]                                       ; $7cff: $0a
	ld a, e                                          ; $7d00: $7b
	xor l                                            ; $7d01: $ad
	call c, $02ff                                    ; $7d02: $dc $ff $02
	ret nz                                           ; $7d05: $c0

	rst SubAFromDE                                          ; $7d06: $df
	ld l, c                                          ; $7d07: $69
	rst SubAFromDE                                          ; $7d08: $df
	ld l, e                                          ; $7d09: $6b
	sbc $6f                                          ; $7d0a: $de $6f
	db $db                                           ; $7d0c: $db
	ret nz                                           ; $7d0d: $c0

jr_055_7d0e:
	rst SubAFromDE                                          ; $7d0e: $df
	ret z                                            ; $7d0f: $c8

	cpl                                              ; $7d10: $2f
	ret c                                            ; $7d11: $d8

	ld a, [hl]                                       ; $7d12: $7e
	jr jr_055_7d0e                                   ; $7d13: $18 $f9

	adc d                                            ; $7d15: $8a
	sbc $ff                                          ; $7d16: $de $ff
	cp [hl]                                          ; $7d18: $be
	rst $38                                          ; $7d19: $ff
	ld a, [hl]                                       ; $7d1a: $7e
	rst $38                                          ; $7d1b: $ff
	cp $fd                                           ; $7d1c: $fe $fd
	ld e, h                                          ; $7d1e: $5c
	ld e, d                                          ; $7d1f: $5a
	inc [hl]                                         ; $7d20: $34
	jr z, jr_055_7d77                                ; $7d21: $28 $54

	ld l, b                                          ; $7d23: $68
	call nc, $e1e8                                   ; $7d24: $d4 $e8 $e1
	push hl                                          ; $7d27: $e5
	and l                                            ; $7d28: $a5
	xor l                                            ; $7d29: $ad
	xor l                                            ; $7d2a: $ad
	sbc $a9                                          ; $7d2b: $de $a9
	rst SubAFromDE                                          ; $7d2d: $df
	or e                                             ; $7d2e: $b3
	sbc $f3                                          ; $7d2f: $de $f3
	sbc $f7                                          ; $7d31: $de $f7
	rst SubAFromDE                                          ; $7d33: $df
	dec b                                            ; $7d34: $05
	sbc h                                            ; $7d35: $9c
	rlca                                             ; $7d36: $07
	cpl                                              ; $7d37: $2f
	dec hl                                           ; $7d38: $2b
	sbc $2f                                          ; $7d39: $de $2f
	rst SubAFromDE                                          ; $7d3b: $df
	cp a                                             ; $7d3c: $bf
	rst SubAFromDE                                          ; $7d3d: $df
	cp l                                             ; $7d3e: $bd
	sbc d                                            ; $7d3f: $9a
	cp h                                             ; $7d40: $bc
	cp b                                             ; $7d41: $b8
	ld hl, sp-$08                                    ; $7d42: $f8 $f8
	dec a                                            ; $7d44: $3d
	ld a, e                                          ; $7d45: $7b
	ld [hl], a                                       ; $7d46: $77
	sub b                                            ; $7d47: $90
	db $dd                                           ; $7d48: $dd
	cp [hl]                                          ; $7d49: $be
	ld h, c                                          ; $7d4a: $61
	call c, $86ff                                    ; $7d4b: $dc $ff $86
	nop                                              ; $7d4e: $00
	nop                                              ; $7d4f: $00
	ld a, $7f                                        ; $7d50: $3e $7f
	pop hl                                           ; $7d52: $e1
	sbc $ff                                          ; $7d53: $de $ff
	rst $38                                          ; $7d55: $ff
	cp l                                             ; $7d56: $bd
	call c, $9bff                                    ; $7d57: $dc $ff $9b
	sbc b                                            ; $7d5a: $98
	adc h                                            ; $7d5b: $8c
	add $42                                          ; $7d5c: $c6 $42
	ld [hl], e                                       ; $7d5e: $73
	and b                                            ; $7d5f: $a0
	ld a, [hl]                                       ; $7d60: $7e
	push bc                                          ; $7d61: $c5
	adc d                                            ; $7d62: $8a
	rst AddAOntoHL                                          ; $7d63: $ef
	ld sp, hl                                        ; $7d64: $f9
	ldh a, [c]                                       ; $7d65: $f2
	db $f4                                           ; $7d66: $f4
	db $f4                                           ; $7d67: $f4
	nop                                              ; $7d68: $00
	rlca                                             ; $7d69: $07
	rrca                                             ; $7d6a: $0f
	inc e                                            ; $7d6b: $1c
	dec de                                           ; $7d6c: $1b
	ld b, $04                                        ; $7d6d: $06 $04
	dec b                                            ; $7d6f: $05
	and d                                            ; $7d70: $a2
	sub b                                            ; $7d71: $90
	pop af                                           ; $7d72: $f1
	ld hl, sp-$08                                    ; $7d73: $f8 $f8
	ld e, h                                          ; $7d75: $5c

Call_055_7d76:
	ld l, h                                          ; $7d76: $6c

jr_055_7d77:
	and $7b                                          ; $7d77: $e6 $7b
	ret                                              ; $7d79: $c9


	sub c                                            ; $7d7a: $91
	ld a, a                                          ; $7d7b: $7f
	sbc a                                            ; $7d7c: $9f
	ld c, a                                          ; $7d7d: $4f
	rst SubAFromBC                                          ; $7d7e: $e7
	rst SubAFromBC                                          ; $7d7f: $e7
	ld c, b                                          ; $7d80: $48
	dec bc                                           ; $7d81: $0b
	inc hl                                           ; $7d82: $23
	daa                                              ; $7d83: $27
	add [hl]                                         ; $7d84: $86
	rla                                              ; $7d85: $17
	ld d, l                                          ; $7d86: $55
	ld b, c                                          ; $7d87: $41
	rst $38                                          ; $7d88: $ff
	db $dd                                           ; $7d89: $dd
	db $fd                                           ; $7d8a: $fd
	ld a, [hl]                                       ; $7d8b: $7e
	call Call_055_777e                               ; $7d8c: $cd $7e $77
	sub b                                            ; $7d8f: $90
	ld [hl], a                                       ; $7d90: $77
	ld [hl], e                                       ; $7d91: $73
	ld [hl], a                                       ; $7d92: $77
	ld d, e                                          ; $7d93: $53
	or a                                             ; $7d94: $b7
	or e                                             ; $7d95: $b3
	cp a                                             ; $7d96: $bf
	inc a                                            ; $7d97: $3c
	cp b                                             ; $7d98: $b8
	cp h                                             ; $7d99: $bc
	cp b                                             ; $7d9a: $b8
	cp h                                             ; $7d9b: $bc
	ret c                                            ; $7d9c: $d8

	call c, $06d8                                    ; $7d9d: $dc $d8 $06
	ret nc                                           ; $7da0: $d0

	ld [hl-], a                                      ; $7da1: $32
	ret nz                                           ; $7da2: $c0

	sbc h                                            ; $7da3: $9c
	db $ed                                           ; $7da4: $ed
	db $ec                                           ; $7da5: $ec
	db $ec                                           ; $7da6: $ec
	ld [hl], d                                       ; $7da7: $72
	ret nz                                           ; $7da8: $c0

	sbc $13                                          ; $7da9: $de $13
	sub l                                            ; $7dab: $95
	ld sp, $3592                                     ; $7dac: $31 $92 $35
	sub d                                            ; $7daf: $92
	dec [hl]                                         ; $7db0: $35
	sbc a                                            ; $7db1: $9f
	ld a, [hl+]                                      ; $7db2: $2a
	dec b                                            ; $7db3: $05
	rst SubAFromDE                                          ; $7db4: $df
	rst $38                                          ; $7db5: $ff
	ld [hl], a                                       ; $7db6: $77
	cp $9d                                           ; $7db7: $fe $9d
	push de                                          ; $7db9: $d5
	ld a, [$3379]                                    ; $7dba: $fa $79 $33
	ld a, d                                          ; $7dbd: $7a
	ld l, a                                          ; $7dbe: $6f
	sbc l                                            ; $7dbf: $9d
	rst $38                                          ; $7dc0: $ff
	ld d, l                                          ; $7dc1: $55
	jp c, $9eff                                      ; $7dc2: $da $ff $9e

	xor d                                            ; $7dc5: $aa
	halt                                             ; $7dc6: $76
	push bc                                          ; $7dc7: $c5
	ld h, a                                          ; $7dc8: $67
	cp d                                             ; $7dc9: $ba
	ld h, a                                          ; $7dca: $67
	xor l                                            ; $7dcb: $ad
	ld e, a                                          ; $7dcc: $5f
	ldh a, [$7c]                                     ; $7dcd: $f0 $7c
	ld d, h                                          ; $7dcf: $54
	sbc $7f                                          ; $7dd0: $de $7f
	halt                                             ; $7dd2: $76
	ld b, c                                          ; $7dd3: $41
	sbc [hl]                                         ; $7dd4: $9e
	rst $38                                          ; $7dd5: $ff
	db $dd                                           ; $7dd6: $dd
	ret z                                            ; $7dd7: $c8

	sbc e                                            ; $7dd8: $9b
	ccf                                              ; $7dd9: $3f
	ld a, [hl-]                                      ; $7dda: $3a
	push af                                          ; $7ddb: $f5
	ld a, [$9057]                                    ; $7ddc: $fa $57 $90
	ld a, b                                          ; $7ddf: $78
	db $e3                                           ; $7de0: $e3
	sbc l                                            ; $7de1: $9d
	xor d                                            ; $7de2: $aa
	db $fd                                           ; $7de3: $fd
	ld a, c                                          ; $7de4: $79
	sub b                                            ; $7de5: $90
	ld a, a                                          ; $7de6: $7f
	db $fd                                           ; $7de7: $fd
	add b                                            ; $7de8: $80
	cp $bb                                           ; $7de9: $fe $bb
	ld bc, $0201                                     ; $7deb: $01 $01 $02
	ld [bc], a                                       ; $7dee: $02
	sbc a                                            ; $7def: $9f
	push hl                                          ; $7df0: $e5
	jp $fee5                                         ; $7df1: $c3 $e5 $fe


	db $fd                                           ; $7df4: $fd
	ld a, [$fbfd]                                    ; $7df5: $fa $fd $fb
	cp $ff                                           ; $7df8: $fe $ff
	ld a, a                                          ; $7dfa: $7f
	ld d, h                                          ; $7dfb: $54

Call_055_7dfc:
	ld l, b                                          ; $7dfc: $68
	ld d, b                                          ; $7dfd: $50
	ld l, b                                          ; $7dfe: $68
	ret nc                                           ; $7dff: $d0

	add sp, -$10                                     ; $7e00: $e8 $f0
	ld sp, hl                                        ; $7e02: $f9
	and c                                            ; $7e03: $a1
	and c                                            ; $7e04: $a1
	and b                                            ; $7e05: $a0
	and b                                            ; $7e06: $a0
	and c                                            ; $7e07: $a1
	sbc h                                            ; $7e08: $9c
	and c                                            ; $7e09: $a1
	pop hl                                           ; $7e0a: $e1
	ld h, c                                          ; $7e0b: $61
	reti                                             ; $7e0c: $d9


	rst $38                                          ; $7e0d: $ff
	ld a, [hl]                                       ; $7e0e: $7e
	jp $2d9e                                         ; $7e0f: $c3 $9e $2d


	db $dd                                           ; $7e12: $dd
	cpl                                              ; $7e13: $2f
	add a                                            ; $7e14: $87
	dec l                                            ; $7e15: $2d
	ld sp, hl                                        ; $7e16: $f9
	rst $38                                          ; $7e17: $ff
	ei                                               ; $7e18: $fb
	ld sp, hl                                        ; $7e19: $f9
	ld hl, sp-$04                                    ; $7e1a: $f8 $fc
	db $fc                                           ; $7e1c: $fc
	cp $b2                                           ; $7e1d: $fe $b2
	and a                                            ; $7e1f: $a7
	cpl                                              ; $7e20: $2f
	add hl, sp                                       ; $7e21: $39
	xor l                                            ; $7e22: $ad
	sub d                                            ; $7e23: $92
	call $b3ff                                       ; $7e24: $cd $ff $b3
	and a                                            ; $7e27: $a7
	xor a                                            ; $7e28: $af
	dec a                                            ; $7e29: $3d
	ccf                                              ; $7e2a: $3f
	ld a, $1c                                        ; $7e2b: $3e $1c
	ld [hl], e                                       ; $7e2d: $73
	add [hl]                                         ; $7e2e: $86
	sbc e                                            ; $7e2f: $9b
	ei                                               ; $7e30: $fb
	ldh a, [c]                                       ; $7e31: $f2
	ldh [c], a                                       ; $7e32: $e2
	ldh [$fd], a                                     ; $7e33: $e0 $fd
	sub e                                            ; $7e35: $93
	inc b                                            ; $7e36: $04
	inc c                                            ; $7e37: $0c
	inc e                                            ; $7e38: $1c
	inc e                                            ; $7e39: $1c
	rst FarCall                                          ; $7e3a: $f7
	push af                                          ; $7e3b: $f5
	ld a, [$fcf9]                                    ; $7e3c: $fa $f9 $fc
	rst $38                                          ; $7e3f: $ff
	ld a, [hl]                                       ; $7e40: $7e
	ld a, a                                          ; $7e41: $7f
	sbc $07                                          ; $7e42: $de $07
	sbc [hl]                                         ; $7e44: $9e
	inc bc                                           ; $7e45: $03
	db $fd                                           ; $7e46: $fd
	rst SubAFromDE                                          ; $7e47: $df
	and [hl]                                         ; $7e48: $a6
	sub l                                            ; $7e49: $95
	rst GetHLinHL                                          ; $7e4a: $cf
	adc a                                            ; $7e4b: $8f
	rlca                                             ; $7e4c: $07
	ld d, e                                          ; $7e4d: $53
	and e                                            ; $7e4e: $a3
	ld d, c                                          ; $7e4f: $51
	db $e3                                           ; $7e50: $e3
	and e                                            ; $7e51: $a3
	pop hl                                           ; $7e52: $e1
	pop bc                                           ; $7e53: $c1
	db $fd                                           ; $7e54: $fd
	rst SubAFromDE                                          ; $7e55: $df
	add hl, bc                                       ; $7e56: $09
	sub a                                            ; $7e57: $97
	jr z, jr_055_7e5e                                ; $7e58: $28 $04

	add h                                            ; $7e5a: $84
	sub h                                            ; $7e5b: $94
	ld b, h                                          ; $7e5c: $44
	ld b, d                                          ; $7e5d: $42

jr_055_7e5e:
	cp $fe                                           ; $7e5e: $fe $fe
	db $db                                           ; $7e60: $db
	rst $38                                          ; $7e61: $ff
	adc a                                            ; $7e62: $8f
	cp e                                             ; $7e63: $bb
	cp a                                             ; $7e64: $bf
	sbc e                                            ; $7e65: $9b
	rst SubAFromDE                                          ; $7e66: $df
	db $db                                           ; $7e67: $db
	rst SubAFromDE                                          ; $7e68: $df
	sbc l                                            ; $7e69: $9d
	ld d, a                                          ; $7e6a: $57
	call c, Call_055_7cd8                            ; $7e6b: $dc $d8 $7c
	ld a, b                                          ; $7e6e: $78
	ld a, h                                          ; $7e6f: $7c
	ld a, b                                          ; $7e70: $78
	ld a, [hl]                                       ; $7e71: $7e
	db $fc                                           ; $7e72: $fc
	ld [bc], a                                       ; $7e73: $02
	ret nz                                           ; $7e74: $c0

	ld c, e                                          ; $7e75: $4b
	ldh a, [$de]                                     ; $7e76: $f0 $de
	rst AddAOntoHL                                          ; $7e78: $ef
	sbc d                                            ; $7e79: $9a
	db $fc                                           ; $7e7a: $fc
	ei                                               ; $7e7b: $fb
	db $fd                                           ; $7e7c: $fd
	rst $38                                          ; $7e7d: $ff
	rst $38                                          ; $7e7e: $ff
	sbc $10                                          ; $7e7f: $de $10
	sbc c                                            ; $7e81: $99
	rrca                                             ; $7e82: $0f
	rlca                                             ; $7e83: $07
	ld [bc], a                                       ; $7e84: $02
	nop                                              ; $7e85: $00
	nop                                              ; $7e86: $00
	ldh a, [$7a]                                     ; $7e87: $f0 $7a
	ld e, b                                          ; $7e89: $58
	sub c                                            ; $7e8a: $91
	pop af                                           ; $7e8b: $f1
	ld c, a                                          ; $7e8c: $4f
	ret nc                                           ; $7e8d: $d0

	ld a, [$000f]                                    ; $7e8e: $fa $0f $00
	nop                                              ; $7e91: $00
	add b                                            ; $7e92: $80
	cp $ff                                           ; $7e93: $fe $ff
	ld l, a                                          ; $7e95: $6f
	ld b, l                                          ; $7e96: $45
	nop                                              ; $7e97: $00
	ldh [$de], a                                     ; $7e98: $e0 $de
	rst $38                                          ; $7e9a: $ff
	sbc d                                            ; $7e9b: $9a
	adc a                                            ; $7e9c: $8f
	ld a, [hl]                                       ; $7e9d: $7e
	add c                                            ; $7e9e: $81

Call_055_7e9f:
	rst $38                                          ; $7e9f: $ff
	rra                                              ; $7ea0: $1f
	cp $7f                                           ; $7ea1: $fe $7f
	db $e3                                           ; $7ea3: $e3
	ld [hl], l                                       ; $7ea4: $75
	ld h, $6f                                        ; $7ea5: $26 $6f
	pop bc                                           ; $7ea7: $c1
	ld l, [hl]                                       ; $7ea8: $6e
	xor $7b                                          ; $7ea9: $ee $7b
	di                                               ; $7eab: $f3
	sbc [hl]                                         ; $7eac: $9e
	rlca                                             ; $7ead: $07
	db $dd                                           ; $7eae: $dd
	rst $38                                          ; $7eaf: $ff
	sbc e                                            ; $7eb0: $9b
	rra                                              ; $7eb1: $1f
	inc bc                                           ; $7eb2: $03
	rst $38                                          ; $7eb3: $ff
	nop                                              ; $7eb4: $00
	sbc $0f                                          ; $7eb5: $de $0f
	sbc l                                            ; $7eb7: $9d
	rst $38                                          ; $7eb8: $ff
	rrca                                             ; $7eb9: $0f
	reti                                             ; $7eba: $d9


	rst $38                                          ; $7ebb: $ff
	sbc h                                            ; $7ebc: $9c
	push af                                          ; $7ebd: $f5
	rst $38                                          ; $7ebe: $ff
	push de                                          ; $7ebf: $d5
	ld a, d                                          ; $7ec0: $7a
	jp nc, $fe7f                                     ; $7ec1: $d2 $7f $fe

	reti                                             ; $7ec4: $d9


	rst $38                                          ; $7ec5: $ff
	ld a, [hl]                                       ; $7ec6: $7e
	ld a, a                                          ; $7ec7: $7f
	sub l                                            ; $7ec8: $95
	ld d, l                                          ; $7ec9: $55
	and b                                            ; $7eca: $a0
	ld d, l                                          ; $7ecb: $55
	add b                                            ; $7ecc: $80
	ld d, l                                          ; $7ecd: $55
	add b                                            ; $7ece: $80
	rst AddAOntoHL                                          ; $7ecf: $ef
	cp e                                             ; $7ed0: $bb
	rst AddAOntoHL                                          ; $7ed1: $ef
	rst SubAFromDE                                          ; $7ed2: $df
	db $dd                                           ; $7ed3: $dd
	rst $38                                          ; $7ed4: $ff
	sub h                                            ; $7ed5: $94
	jp nc, $d2e5                                     ; $7ed6: $d2 $e5 $d2

	and a                                            ; $7ed9: $a7
	ret c                                            ; $7eda: $d8

	and b                                            ; $7edb: $a0
	ret nz                                           ; $7edc: $c0

	ret nz                                           ; $7edd: $c0

	rst $38                                          ; $7ede: $ff
	ld a, e                                          ; $7edf: $7b
	cp a                                             ; $7ee0: $bf
	ld [hl], h                                       ; $7ee1: $74
	ld b, c                                          ; $7ee2: $41
	adc [hl]                                         ; $7ee3: $8e
	rst SubAFromDE                                          ; $7ee4: $df
	pop af                                           ; $7ee5: $f1
	ld a, [$f4fa]                                    ; $7ee6: $fa $fa $f4
	inc [hl]                                         ; $7ee9: $34
	ld c, $0e                                        ; $7eea: $0e $0e
	rla                                              ; $7eec: $17
	ld h, c                                          ; $7eed: $61
	pop de                                           ; $7eee: $d1
	ld d, c                                          ; $7eef: $51
	or c                                             ; $7ef0: $b1
	ld [hl], c                                       ; $7ef1: $71
	or c                                             ; $7ef2: $b1
	ld [hl], c                                       ; $7ef3: $71
	or b                                             ; $7ef4: $b0
	ld a, e                                          ; $7ef5: $7b
	sub [hl]                                         ; $7ef6: $96
	sbc b                                            ; $7ef7: $98
	ld a, a                                          ; $7ef8: $7f
	cp a                                             ; $7ef9: $bf
	ld a, a                                          ; $7efa: $7f
	cp a                                             ; $7efb: $bf
	ld e, a                                          ; $7efc: $5f
	dec hl                                           ; $7efd: $2b
	ld a, [hl+]                                      ; $7efe: $2a

Call_055_7eff:
	ld a, d                                          ; $7eff: $7a
	ret nz                                           ; $7f00: $c0

	rst SubAFromDE                                          ; $7f01: $df
	inc [hl]                                         ; $7f02: $34
	sbc h                                            ; $7f03: $9c
	or h                                             ; $7f04: $b4
	cp $ff                                           ; $7f05: $fe $ff
	ld [hl], a                                       ; $7f07: $77
	ld e, d                                          ; $7f08: $5a
	rst SubAFromDE                                          ; $7f09: $df
	rst $38                                          ; $7f0a: $ff
	sbc l                                            ; $7f0b: $9d
	push de                                          ; $7f0c: $d5
	db $eb                                           ; $7f0d: $eb
	ld a, e                                          ; $7f0e: $7b
	ld e, a                                          ; $7f0f: $5f
	sbc d                                            ; $7f10: $9a
	rst $38                                          ; $7f11: $ff
	cp a                                             ; $7f12: $bf
	ld a, a                                          ; $7f13: $7f
	ld a, [hl+]                                      ; $7f14: $2a
	inc d                                            ; $7f15: $14
	ld a, e                                          ; $7f16: $7b
	ld e, a                                          ; $7f17: $5f
	sbc [hl]                                         ; $7f18: $9e
	add b                                            ; $7f19: $80
	sbc $c0                                          ; $7f1a: $de $c0
	sub b                                            ; $7f1c: $90
	jp nz, $f3e6                                     ; $7f1d: $c2 $e6 $f3

	rst $38                                          ; $7f20: $ff
	rst $38                                          ; $7f21: $ff
	ld a, [$3cff]                                    ; $7f22: $fa $ff $3c
	inc a                                            ; $7f25: $3c
	rra                                              ; $7f26: $1f
	ld c, $00                                        ; $7f27: $0e $00
	inc bc                                           ; $7f29: $03
	inc b                                            ; $7f2a: $04
	rlca                                             ; $7f2b: $07
	ld a, d                                          ; $7f2c: $7a
	ld b, c                                          ; $7f2d: $41
	db $dd                                           ; $7f2e: $dd
	rst $38                                          ; $7f2f: $ff
	sbc [hl]                                         ; $7f30: $9e
	rst AddAOntoHL                                          ; $7f31: $ef
	db $fc                                           ; $7f32: $fc
	sub h                                            ; $7f33: $94
	ret nz                                           ; $7f34: $c0

	ld h, b                                          ; $7f35: $60
	ldh a, [$c1]                                     ; $7f36: $f0 $c1
	pop bc                                           ; $7f38: $c1
	add c                                            ; $7f39: $81
	add c                                            ; $7f3a: $81
	add b                                            ; $7f3b: $80
	add e                                            ; $7f3c: $83
	ld bc, $fd07                                     ; $7f3d: $01 $07 $fd
	rst SubAFromDE                                          ; $7f40: $df
	ld bc, $03df                                     ; $7f41: $01 $df $03
	rst SubAFromDE                                          ; $7f44: $df
	ldh [c], a                                       ; $7f45: $e2
	sbc c                                            ; $7f46: $99
	ld h, d                                          ; $7f47: $62
	ldh a, [c]                                       ; $7f48: $f2
	jp nc, Jump_055_71d1                             ; $7f49: $d2 $d1 $71

	ld l, c                                          ; $7f4c: $69
	ld l, e                                          ; $7f4d: $6b
	ret c                                            ; $7f4e: $d8

	ld a, a                                          ; $7f4f: $7f
	ld l, d                                          ; $7f50: $6a
	sbc b                                            ; $7f51: $98
	ld d, a                                          ; $7f52: $57
	ld d, l                                          ; $7f53: $55
	dec de                                           ; $7f54: $1b
	ld e, e                                          ; $7f55: $5b
	dec de                                           ; $7f56: $1b
	dec de                                           ; $7f57: $1b
	ld d, l                                          ; $7f58: $55
	ld a, b                                          ; $7f59: $78
	ld b, c                                          ; $7f5a: $41
	db $dd                                           ; $7f5b: $dd
	cp $d8                                           ; $7f5c: $fe $d8
	rst $38                                          ; $7f5e: $ff
	ld [bc], a                                       ; $7f5f: $02

Call_055_7f60:
	ret nz                                           ; $7f60: $c0

	inc hl                                           ; $7f61: $23
	ldh a, [$db]                                     ; $7f62: $f0 $db
	cp a                                             ; $7f64: $bf
	reti                                             ; $7f65: $d9


	ld b, b                                          ; $7f66: $40
	ld b, a                                          ; $7f67: $47
	ldh [$fc], a                                     ; $7f68: $e0 $fc
	ld a, a                                          ; $7f6a: $7f
	ld a, b                                          ; $7f6b: $78
	ld [hl], e                                       ; $7f6c: $73
	ld [hl], b                                       ; $7f6d: $70
	ld [hl], a                                       ; $7f6e: $77
	rst FarCall                                          ; $7f6f: $f7
	rst SubAFromDE                                          ; $7f70: $df
	ccf                                              ; $7f71: $3f
	ld l, a                                          ; $7f72: $6f
	ld [hl], a                                       ; $7f73: $77
	sbc b                                            ; $7f74: $98
	dec e                                            ; $7f75: $1d
	ld a, $35                                        ; $7f76: $3e $35
	ld a, [hl]                                       ; $7f78: $7e
	push af                                          ; $7f79: $f5
	cp $f5                                           ; $7f7a: $fe $f5
	ld h, e                                          ; $7f7c: $63
	ld a, a                                          ; $7f7d: $7f
	ld a, d                                          ; $7f7e: $7a
	call nz, $a89e                                   ; $7f7f: $c4 $9e $a8
	ld a, e                                          ; $7f82: $7b
	cp $5e                                           ; $7f83: $fe $5e
	ret nz                                           ; $7f85: $c0

	sbc [hl]                                         ; $7f86: $9e
	nop                                              ; $7f87: $00
	ld l, a                                          ; $7f88: $6f
	cp $d9                                           ; $7f89: $fe $d9
	rst $38                                          ; $7f8b: $ff
	rst SubAFromDE                                          ; $7f8c: $df
	add b                                            ; $7f8d: $80
	sbc h                                            ; $7f8e: $9c
	add d                                            ; $7f8f: $82
	add e                                            ; $7f90: $83
	add c                                            ; $7f91: $81
	ld a, e                                          ; $7f92: $7b
	nop                                              ; $7f93: $00
	ld a, a                                          ; $7f94: $7f
	sub c                                            ; $7f95: $91
	ld [hl], c                                       ; $7f96: $71
	ld d, c                                          ; $7f97: $51
	add l                                            ; $7f98: $85
	rst $38                                          ; $7f99: $ff
	rla                                              ; $7f9a: $17
	inc hl                                           ; $7f9b: $23
	inc hl                                           ; $7f9c: $23
	ld b, e                                          ; $7f9d: $43
	ld b, e                                          ; $7f9e: $43
	add e                                            ; $7f9f: $83
	rlca                                             ; $7fa0: $07
	rlca                                             ; $7fa1: $07
	ret nc                                           ; $7fa2: $d0

	ld l, b                                          ; $7fa3: $68
	ld e, b                                          ; $7fa4: $58
	jr z, @+$3a                                      ; $7fa5: $28 $38

	ld e, h                                          ; $7fa7: $5c
	inc d                                            ; $7fa8: $14
	ld c, h                                          ; $7fa9: $4c
	ccf                                              ; $7faa: $3f
	sbc a                                            ; $7fab: $9f
	xor a                                            ; $7fac: $af
	rst SubAFromDE                                          ; $7fad: $df
	rst GetHLinHL                                          ; $7fae: $cf
	and a                                            ; $7faf: $a7
	rst AddAOntoHL                                          ; $7fb0: $ef
	or a                                             ; $7fb1: $b7
	or h                                             ; $7fb2: $b4
	sbc $94                                          ; $7fb3: $de $94
	rst SubAFromDE                                          ; $7fb5: $df
	sbc d                                            ; $7fb6: $9a
	sbc l                                            ; $7fb7: $9d
	ld e, d                                          ; $7fb8: $5a
	ld c, d                                          ; $7fb9: $4a
	reti                                             ; $7fba: $d9


	rst $38                                          ; $7fbb: $ff
	sub h                                            ; $7fbc: $94
	ccf                                              ; $7fbd: $3f
	rra                                              ; $7fbe: $1f
	rrca                                             ; $7fbf: $0f
	rlca                                             ; $7fc0: $07
	ld bc, $0b06                                     ; $7fc1: $01 $06 $0b
	rra                                              ; $7fc4: $1f
	ldh [$f0], a                                     ; $7fc5: $e0 $f0
	ld hl, sp+$7b                                    ; $7fc7: $f8 $7b
	sub h                                            ; $7fc9: $94
	sbc [hl]                                         ; $7fca: $9e
	db $fc                                           ; $7fcb: $fc
	ld a, d                                          ; $7fcc: $7a
	ld de, $3e7d                                     ; $7fcd: $11 $7d $3e
	sbc e                                            ; $7fd0: $9b
	ld a, a                                          ; $7fd1: $7f
	rst SubAFromDE                                          ; $7fd2: $df
	cp a                                             ; $7fd3: $bf
	db $eb                                           ; $7fd4: $eb
	ld a, c                                          ; $7fd5: $79
	sub c                                            ; $7fd6: $91
	add b                                            ; $7fd7: $80
	inc bc                                           ; $7fd8: $03
	add b                                            ; $7fd9: $80
	ldh [rSVBK], a                                   ; $7fda: $e0 $70
	inc e                                            ; $7fdc: $1c
	rst AddAOntoHL                                          ; $7fdd: $ef
	xor $ae                                          ; $7fde: $ee $ae
	call c, $39fc                                    ; $7fe0: $dc $fc $39
	di                                               ; $7fe3: $f3
	cp $f0                                           ; $7fe4: $fe $f0
	ldh a, [rSVBK]                                   ; $7fe6: $f0 $70
	ldh [rP1], a                                     ; $7fe8: $e0 $00
	ret nz                                           ; $7fea: $c0

	ld bc, $0d07                                     ; $7feb: $01 $07 $0d
	add hl, de                                       ; $7fee: $19
	jr nc, @+$62                                     ; $7fef: $30 $60

	ret nc                                           ; $7ff1: $d0

	cp b                                             ; $7ff2: $b8
	ld a, c                                          ; $7ff3: $79
	ei                                               ; $7ff4: $fb
	rlca                                             ; $7ff5: $07
	rrca                                             ; $7ff6: $0f
	sub d                                            ; $7ff7: $92
	rra                                              ; $7ff8: $1f
	ccf                                              ; $7ff9: $3f
	ld l, a                                          ; $7ffa: $6f
	rst JumpTable                                          ; $7ffb: $c7
	add a                                            ; $7ffc: $87
	ld b, $29                                        ; $7ffd: $06 $29

Call_055_7fff:
	add hl, hl                                       ; $7fff: $29
